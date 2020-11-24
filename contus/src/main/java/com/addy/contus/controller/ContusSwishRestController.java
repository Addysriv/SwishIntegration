package com.addy.contus.controller;

import java.io.FileNotFoundException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import com.addy.contus.service.SwissPaymentGatewayService;

@RestController
public class ContusSwishRestController {


  
  @Autowired
  SwissPaymentGatewayService swissPaymentGatewayService;
  
  @GetMapping(value = "/swish-get-paymentStatus")
  public String getPaymentStatusForSwish(@RequestParam(value="swishPaymentCheckurl",required=false) String swishPaymentCheckurl) throws FileNotFoundException {
    return swissPaymentGatewayService.getPaymentRequest(swishPaymentCheckurl);
    
  }
  
}
