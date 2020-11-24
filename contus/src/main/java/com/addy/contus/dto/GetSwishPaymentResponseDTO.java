package com.addy.contus.dto;

import java.io.Serializable;
import java.util.Date;

public class GetSwishPaymentResponseDTO implements Serializable {
  /**
  * 
  */
  private static final long serialVersionUID = 5777285357780591726L;


  public String id;
  public String payeePaymentReference;
  public String paymentReference;
  public String callbackUrl;
  public String payerAlias;
  public String payeeAlias;
  public double amount;
  public String currency;
  public String message;
  public String status;
  public Date dateCreated;
  public Date datePaid;
  public String errorCode;
  public String errorMessage;

  public String getId() {
    return id;
  }

  public void setId(String id) {
    this.id = id;
  }

  public String getPayeePaymentReference() {
    return payeePaymentReference;
  }

  public void setPayeePaymentReference(String payeePaymentReference) {
    this.payeePaymentReference = payeePaymentReference;
  }

  public String getPaymentReference() {
    return paymentReference;
  }

  public void setPaymentReference(String paymentReference) {
    this.paymentReference = paymentReference;
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

  public double getAmount() {
    return amount;
  }

  public void setAmount(double amount) {
    this.amount = amount;
  }

  public String getCurrency() {
    return currency;
  }

  public void setCurrency(String currency) {
    this.currency = currency;
  }

  public String getMessage() {
    return message;
  }

  public void setMessage(String message) {
    this.message = message;
  }

  public String getStatus() {
    return status;
  }

  public void setStatus(String status) {
    this.status = status;
  }

  public Date getDateCreated() {
    return dateCreated;
  }

  public void setDateCreated(Date dateCreated) {
    this.dateCreated = dateCreated;
  }

  public Date getDatePaid() {
    return datePaid;
  }

  public void setDatePaid(Date datePaid) {
    this.datePaid = datePaid;
  }

  public String getErrorCode() {
    return errorCode;
  }

  public void setErrorCode(String errorCode) {
    this.errorCode = errorCode;
  }

  public String getErrorMessage() {
    return errorMessage;
  }

  public void setErrorMessage(String errorMessage) {
    this.errorMessage = errorMessage;
  }


}


