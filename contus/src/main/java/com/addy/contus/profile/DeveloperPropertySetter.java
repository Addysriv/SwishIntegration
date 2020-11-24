package com.addy.contus.profile;


import javax.annotation.PostConstruct;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Profile;
import org.springframework.stereotype.Component;

@Profile("dev")
@Component
public class DeveloperPropertySetter {

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


  @PostConstruct
  public void setProperty() {
    System.setProperty("javax.net.ssl.keyStore", keystoreFileLocation);
    System.setProperty("javax.net.ssl.keyStorePassword", keyStorePassword);
    System.setProperty("javax.net.ssl.keyStoreType", keystoreType);

    System.setProperty("javax.net.ssl.trustStore", trustStoreFileLocation);
    System.setProperty("javax.net.ssl.trustStorePassword", trustStorePassword);
    System.setProperty("javax.net.ssl.trustStoreType", trustStoreType);

    System.setProperty("contus.system.swishpaymenturl", testSwishPaymentRequesturl);
  }

}
