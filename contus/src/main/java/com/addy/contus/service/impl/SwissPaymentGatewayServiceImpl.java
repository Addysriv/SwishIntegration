package com.addy.contus.service.impl;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URL;
import java.util.List;
import java.util.Map;
import java.util.Set;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocketFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMethod;
import com.addy.contus.dto.CreatePaymentRequestDTO;
import com.addy.contus.dto.Currency;
import com.addy.contus.service.SwissPaymentGatewayService;
import com.fasterxml.jackson.databind.ObjectMapper;

@Service
public class SwissPaymentGatewayServiceImpl implements SwissPaymentGatewayService {
  
  @Value("${testKeyStore}")
  private String keystoreFileLocation;
  
  @Value("${testKeyStorePassword}")
  private String keyStorePassword;
  
  @Value("${keyStoreType}")
  private String keystoreType;
  
  @Value("${trustStore}")
  private String trustStoreFileLocation;
  
  @Value("${trustStorePassword}")
  private String trustStorePassword;
  
  @Value("${trustStoreType}")
  private String trustStoreType;
  
  @Value("${swishClientId}")
  private String swishClientId;
  
  @Value("${testSwishPaymentRequesturl}")
  private String testSwishPaymentRequesturl;
  
  @Value("${prodSwishPaymentRequestUrl}")
  private String prodSwishPaymentRequestUrl;
  
  @Value("${swishPaymentDescription}")
  private String swishPaymentDescription;
  
  @Override
  public String createSwissPaymentGateway(CreatePaymentRequestDTO requestParameters) {
    System.setProperty("javax.net.ssl.keyStore",keystoreFileLocation);
    System.setProperty("javax.net.ssl.keyStorePassword", keyStorePassword);
    System.setProperty("javax.net.ssl.keyStoreType", keystoreType);

    System.setProperty("javax.net.ssl.trustStore", trustStoreFileLocation);
    System.setProperty("javax.net.ssl.trustStorePassword", trustStorePassword);
    System.setProperty("javax.net.ssl.trustStoreType", trustStoreType);

    HttpsURLConnection connection = null;

    try {
        URL url = new URL(testSwishPaymentRequesturl);

        connection = (HttpsURLConnection) url.openConnection();
        SSLSocketFactory sslsocketfactory = (SSLSocketFactory) SSLSocketFactory.getDefault();
        connection.setSSLSocketFactory(sslsocketfactory);
        connection.setRequestMethod(RequestMethod.POST.toString());

        requestParameters.setAmount("100");
        requestParameters.setCallbackUrl("https://google.com");
        requestParameters.setCurrency(Currency.SEK);
        requestParameters.setMessage(swishPaymentDescription);
        requestParameters.setPayeeAlias(swishClientId);
        requestParameters.setPayeePaymentReference("76587733432-4213");
        
        /*
         * The registered cellphone number of the person that makes the payment. It can only contain
         * numbers and has to be at least 8 and at most 15 numbers. It also needs to match the
         * following format in order to be found in Swish: country code + cellphone number (without
         * leading zero). E.g.: 46712345678
         *
         */
        ObjectMapper Obj = new ObjectMapper();
        requestParameters.setPayerAlias("46712345678");
        connection.setRequestProperty("Content-Type", MediaType.APPLICATION_JSON_VALUE);
        connection.setRequestProperty("Content-Length", Integer.toString(requestParameters.toString().length()));

        connection.setUseCaches(false);
        connection.setDoOutput(true);

        DataOutputStream wr = new DataOutputStream (connection.getOutputStream());
        System.out.println(Obj.writeValueAsString(requestParameters));
        wr.writeBytes(Obj.writeValueAsString(requestParameters));
        wr.close();

        InputStream is = connection.getInputStream();
        BufferedReader rd = new BufferedReader(new InputStreamReader(is));
        StringBuilder response = new StringBuilder();
        String line;
        while ((line = rd.readLine()) != null) {
            response.append(line);
            response.append('\r');
        }
        rd.close();

        // Print response headers
        Map<String, List<String>> headers = connection.getHeaderFields();
        Set<Map.Entry<String, List<String>>> entrySet = headers.entrySet();
        for (Map.Entry<String, List<String>> entry : entrySet) {
            String headerName = entry.getKey();
            List<String> headerValues = entry.getValue();
            System.out.println("[" + headerName + "] => " + headerValues.get(0));
        }
        System.out.println(response);

        return response.toString();
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
