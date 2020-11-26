package com.addy.contus.service.impl;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.MalformedURLException;
import java.net.ProtocolException;
import java.net.URL;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocketFactory;
import org.apache.commons.lang3.RandomStringUtils;
import org.apache.commons.lang3.Range;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMethod;
import com.addy.contus.dto.CreatePaymentRequestDTO;
import com.addy.contus.dto.Currency;
import com.addy.contus.dto.GetSwishPaymentResponseDTO;
import com.addy.contus.dto.SwishPaymentErrorCodeDTOArray;
import com.addy.contus.dto.SwissPaymentErrorCodeDTO;
import com.addy.contus.service.SwissPaymentGatewayService;
import com.addy.contus.service.exception.SwishPaymentCreationException;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

@Service
public class SwissPaymentGatewayServiceImpl implements SwissPaymentGatewayService {


  @Value("${swishClientId}")
  private String swishClientId;

  @Value("${swishPaymentDescription}")
  private String swishPaymentDescription;


  @Override
  public String createSwissPaymentGateway(String amount,String payerAlias) throws JsonProcessingException, IOException, SwishPaymentCreationException {

    HttpsURLConnection connection = null;


      URL url = new URL(System.getProperty("contus.system.swishpaymenturl"));

      connection = (HttpsURLConnection) url.openConnection();
      SSLSocketFactory sslsocketfactory = (SSLSocketFactory) SSLSocketFactory.getDefault();
      connection.setSSLSocketFactory(sslsocketfactory);
      connection.setRequestMethod(RequestMethod.POST.toString());
      CreatePaymentRequestDTO createPaymentrequestDTO  =  new CreatePaymentRequestDTO();
      createPaymentrequestDTO.setAmount(amount);
      createPaymentrequestDTO.setCallbackUrl("https://google.com");
      createPaymentrequestDTO.setCurrency(Currency.SEK);
      createPaymentrequestDTO.setMessage(swishPaymentDescription);
      createPaymentrequestDTO.setPayeeAlias(swishClientId);
      createPaymentrequestDTO.setPayeePaymentReference(RandomStringUtils.randomAlphanumeric(32).toUpperCase(Locale.ENGLISH));

      /*
       * The registered cellphone number of the person that makes the payment. It can only contain
       * numbers and has to be at least 8 and at most 15 numbers. It also needs to match the
       * following format in order to be found in Swish: country code + cellphone number (without
       * leading zero). E.g.: 46712345678
       *
       */
      ObjectMapper Obj = new ObjectMapper();
      createPaymentrequestDTO.setPayerAlias(payerAlias);
      connection.setRequestProperty("Content-Type", MediaType.APPLICATION_JSON_VALUE);
      connection.setRequestProperty("Content-Length",
          Integer.toString(createPaymentrequestDTO.toString().length()));
      
      connection.setUseCaches(false);
      connection.setDoOutput(true);

      DataOutputStream wr = new DataOutputStream(connection.getOutputStream());
      System.out.println(Obj.writeValueAsString(createPaymentrequestDTO));
      wr.writeBytes(Obj.writeValueAsString(createPaymentrequestDTO));
      wr.close();
      BufferedReader rd;
      InputStream is;
      Range<Integer> myRange = Range.between(200, 399);
      if (myRange.contains(connection.getResponseCode())) {
        is = connection.getInputStream();
        rd = new BufferedReader(new InputStreamReader(is));
      }else {
        rd = new BufferedReader(new InputStreamReader(connection.getErrorStream()));

        String error="";
        ObjectMapper mapper = new ObjectMapper();
        
        while((error = rd.readLine())!= null) {
          System.out.println(error);
          SwissPaymentErrorCodeDTO[] swishError = mapper.readValue(error, SwissPaymentErrorCodeDTO[].class);

          throw new SwishPaymentCreationException(swishError[0].errorMessage);
        }
        
        
      }
      StringBuilder response = new StringBuilder();
      String line;
      while ((line = rd.readLine()) != null) {
        response.append(line);
        response.append('\r');
      
      rd.close();
      
      // Print response headers
      Map<String, List<String>> headers = connection.getHeaderFields();
      Set<Map.Entry<String, List<String>>> entrySet = headers.entrySet();
      for (Map.Entry<String, List<String>> entry : entrySet) {
        String headerName = entry.getKey();
        List<String> headerValues = entry.getValue();
        if (StringUtils.equalsIgnoreCase(headerName, "Location")) {
          System.out.println(headerValues.get(0));
          return headerValues.get(0);
        }
      }
      }
     
    return null;
  }

  @Override
  public String getPaymentRequest(String checkSwishPaymenturl) {


    HttpsURLConnection connection = null;

    try {
      URL url = new URL(checkSwishPaymenturl);

      connection = (HttpsURLConnection) url.openConnection();
      SSLSocketFactory sslsocketfactory = (SSLSocketFactory) SSLSocketFactory.getDefault();
      connection.setSSLSocketFactory(sslsocketfactory);
      connection.setRequestMethod("GET");

      connection.setUseCaches(false);
      connection.setDoOutput(true);

      InputStream is = connection.getInputStream();
      BufferedReader rd = new BufferedReader(new InputStreamReader(is));
      StringBuilder response = new StringBuilder();
      String line;
      while ((line = rd.readLine()) != null) {
        response.append(line);
        response.append('\r');
      }
      rd.close();
      ObjectMapper mapper = new ObjectMapper();
      GetSwishPaymentResponseDTO getSwishPaymentRequestObject=mapper.readValue(response.toString(), GetSwishPaymentResponseDTO.class);
      System.out.println(getSwishPaymentRequestObject.getStatus());

      return getSwishPaymentRequestObject.getStatus();
    } catch (Exception e) {
      e.printStackTrace();
      return null;
    } finally {
      if (connection != null) {
        connection.disconnect();
      }
    }
  }



}
