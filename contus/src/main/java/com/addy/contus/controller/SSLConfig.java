package com.addy.contus.controller;

import javax.annotation.PostConstruct;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.env.Environment;

@Configuration
public class SSLConfig {
  

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


  @Value("${testSwishPaymentRequesturl}")
  private String testSwishPaymentRequesturl;

  @Value("${productionKeyStore}")
  private String productionKeyStore;

  @Value("${productionKeyStorePassword}")
  private String productionKeyStorePassword;

  @Value("${prodSwishPaymentRequestUrl}")
  private String prodSwishPaymentRequestUrl;
  
  @Value("${swishClientCountryCode}")
  private String swishClientCountryCode;
  
  @Value("${swishTrustStoreFileLocation}")
  private String swishTrustStoreFileLocation;
    @Autowired
    private Environment env;

    @PostConstruct
    private void configureSSL() {
      System.setProperty("javax.net.ssl.keyStore", productionKeyStore);
      System.setProperty("javax.net.ssl.keyStorePassword", productionKeyStorePassword);
      System.setProperty("javax.net.ssl.keyStoreType", keystoreType);
      System.setProperty("javax.net.ssl.trustStore", swishTrustStoreFileLocation);
      System.setProperty("javax.net.ssl.trustStorePassword", trustStorePassword);
      

      System.setProperty("contus.system.swishpaymenturl", prodSwishPaymentRequestUrl);
    }
}