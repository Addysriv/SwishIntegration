package com.addy.contus.service;

public interface SwissPaymentGatewayService {
  
  public String createSwissPaymentGateway(String amount,String payerAlias) ;

  String getPaymentRequest(String checkSwishPaymenturl);
}
