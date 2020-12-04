package com.addy.contus.service.impl;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URL;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Optional;
import java.util.Set;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocketFactory;
import org.apache.commons.lang3.RandomStringUtils;
import org.apache.commons.lang3.Range;
import org.apache.commons.lang3.StringUtils;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMethod;

import com.addy.contus.controller.BaseFunctionController;
import com.addy.contus.dto.CreatePaymentRequestDTO;
import com.addy.contus.dto.Currency;
import com.addy.contus.dto.GetSwishPaymentResponseDTO;
import com.addy.contus.dto.SwissPaymentErrorCodeDTO;
import com.addy.contus.service.SwissPaymentGatewayService;
import com.fasterxml.jackson.databind.ObjectMapper;

@Service
public class SwissPaymentGatewayServiceImpl implements SwissPaymentGatewayService {


	@Value("${swishClientId}")
	private String swishClientId;

	@Value("${swishPaymentDescription}")
	private String swishPaymentDescription;

	@Value("${swishClientCountryCode}")
	private String swishClientCountryCode;

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

	@Value("${testSwishPaymentRequesturl}")
	private String testSwishPaymentRequesturl;

	@Value("${productionKeyStore}")
	private String productionKeyStore;

	@Value("${productionKeyStorePassword}")
	private String productionKeyStorePassword;

	@Value("${prodSwishPaymentRequestUrl}")
	private String prodSwishPaymentRequestUrl;

	private static final Logger logger = Logger.getLogger(SwissPaymentGatewayServiceImpl.class);

	@Override
	public String createSwissPaymentGateway(String amount,Optional<String> payerAlias)  {

		HttpsURLConnection connection = null;
		logger.info("######### In swish oayment gateway service ############");
		try {
			logger.info(" Amount - "+amount +" payerAlias - "+payerAlias);
			
			//setTestSwish();
			setProductionSwish();

			URL url = new URL(System.getProperty("contus.system.swishpaymenturl"));

			connection = (HttpsURLConnection) url.openConnection();
			SSLSocketFactory sslsocketfactory = (SSLSocketFactory) SSLSocketFactory.getDefault();
			connection.setSSLSocketFactory(sslsocketfactory);
			connection.setRequestMethod(RequestMethod.POST.toString());
			CreatePaymentRequestDTO createPaymentrequestDTO  =  new CreatePaymentRequestDTO();
			createPaymentrequestDTO.setAmount(amount);
			createPaymentrequestDTO.setCallbackUrl("https://contus.se/swishPaymentCompleted");
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
			
			/*If Phone number is not provided it is for M-Commerce*/
            if (payerAlias.isPresent()) {
              String mobileNumb = payerAlias.get();
              if (mobileNumb.charAt(0)=='0') {
                mobileNumb = payerAlias.get().substring(1);
                logger.info("--- Swish Mobile - " + mobileNumb);
                createPaymentrequestDTO.setPayerAlias(swishClientCountryCode + mobileNumb);
              }
            }
			
			ObjectMapper Obj = new ObjectMapper();
              
			//createPaymentrequestDTO.setPayerAlias(payerAlias);
			connection.setRequestProperty("Content-Type", MediaType.APPLICATION_JSON_VALUE);
			connection.setRequestProperty("Content-Length",
					Integer.toString(createPaymentrequestDTO.toString().length()));

			connection.setUseCaches(false);
			connection.setDoOutput(true);

			DataOutputStream wr = new DataOutputStream(connection.getOutputStream());
			logger.info(Obj.writeValueAsString(createPaymentrequestDTO));
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
					logger.info("!!!!!!!! Error occured in creating a swish payment. !!!!!");
					logger.info(error);
					SwissPaymentErrorCodeDTO[] swishError = mapper.readValue(error, SwissPaymentErrorCodeDTO[].class);
					logger.info("ErrorCode - "+swishError[0].errorCode);
					logger.info("ErrorCode - "+swishError[0].errorMessage);
					logger.info("ErrorCode - "+swishError[0].additionalInformation);
					logger.info("\n");
					if(swishError[0].errorCode.equals("ACMT03"))
						return ("errorSwish:"+swishError[0].errorCode);
					else
					{
						return ("errorSwish:"+swishError[0].errorMessage); 
					}
				}


			}
			//      StringBuilder response = new StringBuilder();
			//      String line;
			//      while ((line = rd.readLine()) != null) {
			//        response.append(line);
			//        response.append('\r');
			//      
			//      
			//      }
			rd.close();
			StringBuilder response =  new StringBuilder();
			// Print response headers
			Map<String, List<String>> headers = connection.getHeaderFields();
			Set<Map.Entry<String, List<String>>> entrySet = headers.entrySet();
			for (Map.Entry<String, List<String>> entry : entrySet) {
				String headerName = entry.getKey();
				List<String> headerValues = entry.getValue();
				if (StringUtils.equalsIgnoreCase(headerName, "PaymentRequestToken")) {
                  logger.info("###### Location header value - "+headerValues.get(0));
                  response.append(headerValues.get(0)+",");
                  //return headerValues.get(0);
              }else
				if (StringUtils.equalsIgnoreCase(headerName, "Location")) {
					logger.info("###### Location header value - "+headerValues.get(0));
					response.append(headerValues.get(0));
				}
			}
			logger.info(response.toString());
			return response.toString();
		}catch(Exception e) {
			logger.info("!!!!!!!!!!!!! Error occured in swish payment creation !!!!!!! ");
			logger.error("\n");
			logger.error("Error : ",e);
			return ("errorSwish:"+"Server is down or busy!! Please try after Sometime");
		}
	}

	@Override
	public String getPaymentRequest(String checkSwishPaymenturl) {

		logger.info("### Swish checkout payment url - "+checkSwishPaymenturl);
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
			logger.info("##########Swish payment status - "+getSwishPaymentRequestObject.getStatus());

			return getSwishPaymentRequestObject.getStatus();
		} catch (Exception e) {
			logger.info("Error occured in checking the status of swish payment.");
			logger.info("### Swish checkout payment url - "+checkSwishPaymenturl);

			//e.printStackTrace();
			return null;
		} finally {
			if (connection != null) {
				connection.disconnect();
			}
		}
	}

	public void setTestSwish() {
		System.setProperty("javax.net.ssl.keyStore", keystoreFileLocation);
		System.setProperty("javax.net.ssl.keyStorePassword", keyStorePassword);
		System.setProperty("javax.net.ssl.keyStoreType", keystoreType);

		System.setProperty("javax.net.ssl.trustStore", trustStoreFileLocation);
		System.setProperty("javax.net.ssl.trustStorePassword", trustStorePassword);
		System.setProperty("javax.net.ssl.trustStoreType", trustStoreType);

		System.setProperty("contus.system.swishpaymenturl", testSwishPaymentRequesturl);

	}

	public void setProductionSwish() {


		System.setProperty("javax.net.ssl.keyStore", productionKeyStore);
		System.setProperty("javax.net.ssl.keyStorePassword", productionKeyStorePassword);
		System.setProperty("javax.net.ssl.keyStoreType", keystoreType);
		System.setProperty("javax.net.ssl.trustStore", trustStoreFileLocation);
		System.setProperty("javax.net.ssl.trustStorePassword", trustStorePassword);
		System.setProperty("javax.net.ssl.trustStoreType", trustStoreType);

		System.setProperty("contus.system.swishpaymenturl", prodSwishPaymentRequestUrl);


	}

}
