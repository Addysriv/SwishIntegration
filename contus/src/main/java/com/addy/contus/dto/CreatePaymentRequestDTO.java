package com.addy.contus.dto;

public class CreatePaymentRequestDTO implements java.io.Serializable{

  private static final long serialVersionUID = 7181128122656057835L;
  
  
  public String payeePaymentReference;
  public String callbackUrl;
  public String payerAlias;
  public String payeeAlias;
  public String amount;
  public Currency currency;
  public String message;

  public String getPayeePaymentReference() {
    return payeePaymentReference;
  }

  public void setPayeePaymentReference(String payeePaymentReference) {
    this.payeePaymentReference = payeePaymentReference;
  }

  public String getCallbackUrl() {
    return callbackUrl;
  }

  public void setCallbackUrl(String callbackUrl) {
    this.callbackUrl = callbackUrl;
  }

  public String getPayerAlias() {
    return payerAlias;
  }

  public void setPayerAlias(String payerAlias) {
    this.payerAlias = payerAlias;
  }

  public String getPayeeAlias() {
    return payeeAlias;
  }

  public void setPayeeAlias(String payeeAlias) {
    this.payeeAlias = payeeAlias;
  }

  public String getAmount() {
    return amount;
  }

  public void setAmount(String amount) {
    this.amount = amount;
  }

  public Currency getCurrency() {
    return currency;
  }

  public void setCurrency(Currency currency) {
    this.currency = currency;
  }

  public String getMessage() {
    return message;
  }

  public void setMessage(String message) {
    this.message = message;
  }

  public CreatePaymentRequestDTO(String payeePaymentReference, String callbackUrl,
      String payerAlias, String payeeAlias, String amount, Currency currency, String message) {
    super();
    this.payeePaymentReference = payeePaymentReference;
    this.callbackUrl = callbackUrl;
    this.payerAlias = payerAlias;
    this.payeeAlias = payeeAlias;
    this.amount = amount;
    this.currency = currency;
    this.message = message;
  }

  public CreatePaymentRequestDTO() {
    super();
  }
  
}
