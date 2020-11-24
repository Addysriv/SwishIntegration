package com.addy.contus.profile;


import javax.annotation.PostConstruct;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Profile;
import org.springframework.stereotype.Component;

@Profile("production")
@Component
public class ProductionPropertySetter {

  @Value("${productionKeyStore}")
  private String productionKeyStore;

  @Value("${productionKeyStorePassword}")
  private String productionKeyStorePassword;

  @Value("${keyStoreType}")
  private String keystoreType;

  @Value("${trustStore}")
  private String trustStoreFileLocation;

  @Value("${trustStorePassword}")
  private String trustStorePassword;

  @Value("${trustStoreType}")
  private String trustStoreType;


  @Value("${prodSwishPaymentRequestUrl}")
  private String prodSwishPaymentRequestUrl;
  
   @PostConstruct
   public void setProperty() {
     System.setProperty("javax.net.ssl.keyStore", productionKeyStore);
     System.setProperty("javax.net.ssl.keyStorePassword", productionKeyStorePassword);
     System.setProperty("javax.net.ssl.keyStoreType", keystoreType);

     System.setProperty("javax.net.ssl.trustStore", trustStoreFileLocation);
     System.setProperty("javax.net.ssl.trustStorePassword", trustStorePassword);
     System.setProperty("javax.net.ssl.trustStoreType", trustStoreType);
     
     System.setProperty("contus.system.swishpaymenturl", prodSwishPaymentRequestUrl);
   }

}