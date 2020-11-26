package com.addy.contus.service;

import java.io.IOException;
import java.net.MalformedURLException;
import java.net.ProtocolException;
import com.addy.contus.service.exception.SwishPaymentCreationException;
import com.fasterxml.jackson.core.JsonProcessingException;

public interface SwissPaymentGatewayService {
  
  public String createSwissPaymentGateway(String amount,String payerAlias) throws MalformedURLException, ProtocolException, JsonProcessingException, IOException, SwishPaymentCreationException;

  String getPaymentRequest(String checkSwishPaymenturl);
}
