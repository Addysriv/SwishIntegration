package com.addy.contus.service.exception;

public class SwishPaymentCreationException extends Exception {


  private static final long serialVersionUID = 8460243454614402758L;

  public SwishPaymentCreationException(String errorMessage) {
    super(errorMessage);
  }

}
