package com.addy.contus.service;

import java.util.Optional;

public interface SwissPaymentGatewayService {
  
  public String createSwissPaymentGateway(String amount,Optional<String> payerAlias) ;

  String getPaymentRequest(String checkSwishPaymenturl);
}
