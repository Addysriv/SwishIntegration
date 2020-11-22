package com.addy.contus.service;

import java.io.FileNotFoundException;
import com.addy.contus.dto.CreatePaymentRequestDTO;

public interface SwissPaymentGatewayService {
  
  public String createSwissPaymentGateway(CreatePaymentRequestDTO requestParameters) throws FileNotFoundException;
}
