package com.addy.contus.controller;

import java.io.IOException;
import java.net.MalformedURLException;
import java.net.ProtocolException;
import java.util.Enumeration;
import java.util.Locale;
import java.util.Optional;
import java.util.Properties;
import javax.net.ssl.SSLContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.http.client.HttpClient;
import org.apache.http.conn.ssl.SSLConnectionSocketFactory;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.ssl.SSLContextBuilder;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.ClassPathResource;
import org.springframework.http.HttpMethod;
import org.springframework.http.client.HttpComponentsClientHttpRequestFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestClientException;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.NoHandlerFoundException;
import org.springframework.web.servlet.i18n.LocaleChangeInterceptor;
import org.springframework.web.servlet.i18n.SessionLocaleResolver;
import com.addy.contus.dto.ReCaptchaResponse;
import com.addy.contus.service.SwissPaymentGatewayService;
import com.addy.contus.service.exception.SwishPaymentCreationException;
import com.fasterxml.jackson.core.JsonProcessingException;


@Controller
public class BaseFunctionController {


  @Autowired
  SessionLocaleResolver resolver;


  @Autowired
  LocaleChangeInterceptor interceptor;

  @Autowired
  SwissPaymentGatewayService swissPaymentGatewayService;

  @Value("${captchaVerifSecretKey}")
  private String captchaSecretKey;
  
  @Value("${captchaVerifUrl}")
  private String captchaUrl;
  
  @Value("${trustStore}")
  private String  trustStoreFileLocation;

  @Value("${trustStorePassword}")
  private String trustStorePassword;


  private static final Logger logger = Logger.getLogger(BaseFunctionController.class);


  @RequestMapping("/organization")
  public String organizationPageSwitch(HttpServletRequest request, HttpServletResponse response,
      Model model, ModelMap map, HttpSession session) {
    logger.info(Locale.getDefault().getDisplayLanguage());
    logger.info("****** " + session.getAttribute("defaultLang"));
    if ("english".equalsIgnoreCase((String) session.getAttribute("defaultLang"))
        || "en".equalsIgnoreCase((String) session.getAttribute("defaultLang"))) {
      map.put("lang", "en");
    } else {
      map.put("lang", "sv");
    }

    return "organizationPage";
  }
  
  @RequestMapping("/submitContactForm")
  public @ResponseBody String submitContactFormMethod(@RequestParam(value="contactName") String name, @RequestParam(value="contactEmail") String email,
                              @RequestParam("contactCompany") String company, @RequestParam("contactComment")String message,  
                              @RequestParam("gresponse")String captchaResponse,
                              HttpServletRequest request,HttpServletResponse response) throws RestClientException, Exception {
      
          String secretKey="?secret="+captchaSecretKey+"&response="+captchaResponse;
          Properties p=System.getProperties();
          Enumeration keys = p.keys();
          while (keys.hasMoreElements()) {
              String key = (String)keys.nextElement();
              String value = (String)p.get(key);
              System.out.println(key + ": " + value);
          }
          /*Load the Custom CACERTS while contacting Google*/
          SSLContext sslContext = new SSLContextBuilder()
              .loadTrustMaterial( new ClassPathResource(trustStoreFileLocation).getFile(), trustStorePassword.toCharArray())
              .build();
          System.out.println("Is it using this bean");
          SSLConnectionSocketFactory socketFactory = new SSLConnectionSocketFactory(sslContext);
          HttpClient httpClient = HttpClients.custom().setSSLSocketFactory(socketFactory).build();
          HttpComponentsClientHttpRequestFactory factory =
              new HttpComponentsClientHttpRequestFactory(httpClient);
          /*End of SSL Context Changes*/
          final RestTemplate restTemplate = new RestTemplate(factory);
          ReCaptchaResponse captchaResult=restTemplate.exchange(captchaUrl+secretKey,HttpMethod.POST,null,ReCaptchaResponse.class ).getBody();
          
          logger.info("Captcha verification - "+captchaResult.isSuccess());
          
          if(!captchaResult.isSuccess())
          {
              return "captchaError";
              
          }

          logger.info(name);
          logger.info(company);
          logger.info(email);
          logger.info(message);
              return "success";
          
  }

  @RequestMapping("/englishOrg")
  public String organizationPageSwitchEnglish(HttpServletRequest request,
      HttpServletResponse response, Model model, ModelMap map, HttpSession session) {
    logger.info("****** " + session.getAttribute("defaultLang"));
    logger.info(Locale.getDefault().getDisplayLanguage());
    session.setAttribute("defaultLang", "en");
    resolver.setLocale(request, response, new Locale("en", "EN"));
    // Locale.setDefault( new Locale("en", "EN"));
    map.put("lang", "en");

    return "organizationPage";
  }


  @RequestMapping("/svenskaOrg")
  public String organizationPageSwitchSwedish(HttpServletRequest request,
      HttpServletResponse response, Model model, ModelMap map, HttpSession session) {
    logger.info(Locale.getDefault().getDisplayLanguage());
    session.setAttribute("defaultLang", "sv");
    ((SessionLocaleResolver) resolver).setDefaultLocale(new Locale("sv"));

    resolver.setLocale(request, response, new Locale("sv"));
    // Locale.setDefault(new Locale("sv"));
    map.put("lang", "sv");


    return "organizationPage";
  }



  @RequestMapping("/saveUser")
  public @ResponseBody String saveUserData(
      @RequestParam(value = "userName", required = false) String name,
      @RequestParam(value = "userEmail", required = false) String email,
      @RequestParam("userCoupon") String couponCode, @RequestParam("paymentMode") String payment,
      @RequestParam("lang") String language, HttpServletRequest request,
      HttpServletResponse response, ModelMap map) {
    logger.info("Data saved start");
    logger.info(language);
    logger.info(email);
    logger.info(couponCode);
    logger.info(payment);
    logger.info(request.getHeader("accept-language"));
    request.getSession().setAttribute("language", language);
    request.getSession().setAttribute("emailId", email);
    request.getSession().setAttribute("userName", name);
    map.put("lang", language);
    /*
     * Coupon coupon=paymentService.checkValidCoupon(couponCode); if(coupon==null) {
     * request.getSession().setAttribute("couponCode","none");
     * request.getSession().setAttribute("couponAmount","19900"); } else {
     * request.getSession().setAttribute("couponCode",coupon.getCouponCode());
     * request.getSession().setAttribute("couponAmount",coupon.getAmount());
     * request.getSession().setAttribute("couponNumb",String.valueOf(coupon.getRedeemedNumb())); }
     */


    request.getSession().setAttribute("payment", payment);

    if (payment != null && payment.equalsIgnoreCase("klarna")) {
      /*
       * 
       * String paymentResponse=paymentService.createOrderForKlarna(request,language);
       * if(paymentResponse.equals("error")) { return "error"; }
       * 
       * return paymentResponse;
       */}

    else {
      String amount = "100";
      String payerAlias = "90878474773";
      map.put("paymentRequestInfoUrl",
          swissPaymentGatewayService.createSwissPaymentGateway(amount,Optional.of(payerAlias)));
      return "swishClock";
    }
    return "";

  }

  @RequestMapping("/test")
  public String startTest(HttpServletRequest request, HttpServletResponse response, ModelMap map) {
    logger.info(request.getHeader("accept-language"));
    logger.info("just a test info log");
    map.put("orderId", request.getSession().getAttribute("orderId"));
    map.put("emailId", request.getSession().getAttribute("emailId"));
    map.put("userName", request.getSession().getAttribute("userName"));
    map.put("lang", request.getSession().getAttribute("language"));
    if (request.getSession().getAttribute("validRequest") != null
        && request.getSession().getAttribute("validRequest").equals("true"))
      return "paymentChoice";
    else {
      logger.info("session time out********************");
      return "exceptionPage";
    }
  }

  @RequestMapping(value = {"/", "/index", "/home", "default"})
  public String mainPage(HttpServletRequest request, HttpServletResponse response, ModelMap map,
      HttpSession session) {
    logger.info("%%%%%%%%%%%%%%%% I main home method %%%%%%%%%%%%%%%%%%");
    // ((SessionLocaleResolver) resolver).setDefaultLocale(new Locale("sv"));
    // resolver.setCookieName("myLocaleCookie");
    map.put("lang", "sv");
    logger.info("************* " + session.getAttribute("defaulLang"));
    if ("english".equalsIgnoreCase((String) session.getAttribute("defaultLang"))
        || "en".equalsIgnoreCase((String) session.getAttribute("defaultLang"))) {
      map.put("lang", "en");
      session.setAttribute("defaultLang", "en");
      ((SessionLocaleResolver) resolver).setDefaultLocale(new Locale("en"));
      resolver.setLocale(request, response, new Locale("en"));
      // Locale.setDefault( new Locale("en", "EN"));
    } else {
      map.put("lang", "sv");
      ((SessionLocaleResolver) resolver).setDefaultLocale(new Locale("sv"));
      session.setAttribute("defaultLang", "sv");
      resolver.setLocale(request, response, new Locale("sv"));
      // Locale.setDefault(new Locale("sv"));
    }

    logger.info(((SessionLocaleResolver) resolver).getDefaultTimeZone());
    logger.info(request.getLocale().getCountry());
    logger.info(request.getLocale().getDisplayLanguage());
    logger.info(request.getHeader("accept-language"));

    return "mainPage";

  }


  @RequestMapping("/english")
  public String setEnglihLocale(HttpServletRequest request, HttpServletResponse response,
      Locale locale, ModelMap map, HttpSession session) {
    logger.info("%%%%%%%%%%%%%%%% In English Locale   %%%%%%%%%%%%%%%%%%");
    map.put("lang", "en");
    session.setAttribute("defaultLang", "en");
    // resolver.setDefaultLocale(new Locale("en"));
    ((SessionLocaleResolver) resolver).setDefaultLocale(new Locale("en"));
    logger.info(request.getHeader("Content-Language"));
    logger.info(request.getHeader("Accept-Language"));
    // Locale.setDefault( new Locale("en", "EN"));
    resolver.setLocale(request, response, new Locale("en"));

    logger.info(((SessionLocaleResolver) resolver).getDefaultTimeZone());
    logger.info(request.getLocale().getCountry());
    logger.info(request.getLocale().getDisplayLanguage());

    /*
     * Enumeration headerNames = request.getHeaderNames(); while(headerNames.hasMoreElements()) {
     * String headerName = (String)headerNames.nextElement(); logger.info("" + headerName);
     * logger.info("" + request.getHeader(headerName)); }
     */

    // resolver.setCookieName("myLocaleCookie");
    return "mainPage";

  }


  @RequestMapping("/english1")
  public String setEnglihLocale1(HttpServletRequest request, HttpServletResponse response,
      Locale locale, ModelMap map) {
    logger.info("%%%%%%%%%%%%%%%% In English1 Locale   %%%%%%%%%%%%%%%%%%");
    map.put("lang", "en");
    logger.info(request.getHeader("Content-Language"));

    ((SessionLocaleResolver) resolver).setDefaultLocale(new Locale("en"));
    resolver.setLocale(request, response, new Locale("en"));
    logger.info(request.getHeader("Content-Language"));
    logger.info(request.getHeader("Accept-Language"));
    response.setHeader("Content-Language", "en");

    return "mainPage";

  }

  @RequestMapping("/swedish")
  public String setSwedishLocale(HttpServletRequest request, HttpServletResponse response,
      ModelMap map, HttpSession session) {
    logger.info("%%%%%%%%%%%%%%%% In Swedish Locale  %%%%%%%%%%%%%%%%%%");
    session.setAttribute("defaultLang", "sv");
    map.put("lang", "sv");
    ((SessionLocaleResolver) resolver).setDefaultLocale(new Locale("sv"));
    logger.info(request.getHeader("Content-Language"));
    logger.info(request.getHeader("Accept-Language"));
    resolver.setLocale(request, response, new Locale("sv"));

    /*
     * Enumeration headerNames = request.getHeaderNames(); while(headerNames.hasMoreElements()) {
     * String headerName = (String)headerNames.nextElement(); logger.info("" + headerName);
     * logger.info("" + request.getHeader(headerName)); }
     */

    // Locale.setDefault(new Locale("sv"));
    // resolver.setCookieName("myLocaleCookie");
    return "mainPage";

  }

  @RequestMapping("/svenska")
  public String setSvenskaLocale(HttpServletRequest request, HttpServletResponse response,
      ModelMap map, HttpSession session) {
    logger.info("%%%%%%%%%%%%%%%% In Svenska Locale  %%%%%%%%%%%%%%%%%%");
    session.setAttribute("defaultLang", "sv");
    map.put("lang", "sv");
    ((SessionLocaleResolver) resolver).setDefaultLocale(new Locale("sv"));
    logger.info(request.getHeader("Content-Language"));
    logger.info(request.getHeader("Accept-Language"));
    resolver.setLocale(request, response, new Locale("sv"));

    logger.info(((SessionLocaleResolver) resolver).getDefaultTimeZone());
    logger.info(request.getLocale().getCountry());
    logger.info(request.getLocale().getDisplayLanguage());

    /*
     * Enumeration headerNames = request.getHeaderNames(); while(headerNames.hasMoreElements()) {
     * String headerName = (String)headerNames.nextElement(); logger.info("" + headerName);
     * logger.info("" + request.getHeader(headerName)); }
     */

    // Locale.setDefault(new Locale("sv"));
    // resolver.setCookieName("myLocaleCookie");
    return "mainPage";

  }


  @RequestMapping("/testEnglish")
  public String settestEnglishLocale(HttpServletRequest request, HttpServletResponse response) {
    logger.info("%%%%%%%%%%%%%%%% In English test Locale  %%%%%%%%%%%%%%%%%%");
    ((SessionLocaleResolver) resolver).setDefaultLocale(new Locale("en", "EN"));
    // resolver.setCookieName("myLocaleCookie");
    return "mainPage";

  }

  @RequestMapping("/testingPhase")
  public String testingWebsite(HttpServletRequest request, HttpServletResponse response) {
    logger.info("%%%%%%%%%%%%%%%% %%%%%%%%%%%%%%%%%%");
    // ((SessionLocaleResolver) resolver).setDefaultLocale(new Locale("sv"));
    // resolver.setCookieName("myLocaleCookie");
    return "mainPage";

  }

  @RequestMapping("/paymentModal")
  public String openPaymentModal(HttpServletRequest request, HttpServletResponse response) {



    return "paymentModal";

  }

  @RequestMapping("/freeCouponApp")
  public String pushMethod(HttpServletRequest request, HttpServletResponse response) {


    logger.info("********************freeCouponApp");

    return "paymentChoice";

  }

  @RequestMapping("/terms")
  public String termsMethod(HttpServletRequest request, HttpServletResponse response) {

    logger.info("********************terms");


    return "paymentModal";

  }

  @RequestMapping("/checkout")
  public String checkoutMethod(HttpServletRequest request, HttpServletResponse response) {


    logger.info("********************checkout");

    return "paymentModal";

  }

  @RequestMapping("/error")
  public String errorMethod(HttpServletRequest request, HttpServletResponse response) {


    logger.info("********************paymentFailiure");

    return "paymentFailiure";

  }


  @RequestMapping("/termsAndConditions")
  public String termsAndConditionsMethod(HttpServletRequest request, HttpServletResponse response) {

    return "termsAndConditions";
  }

  @RequestMapping("/privacyPolicy")
  public String privacyPolicyMethod(HttpServletRequest request, HttpServletResponse response) {

    return "privacyPolicy";
  }

  @RequestMapping("/testEmailGmail")
  public String testEmailMethod(HttpServletRequest request, HttpServletResponse response) {
    // boolean result=emailUtility.sendReportToCustomerMail("ed15247e-72a1-60fe-838a-a9971abd2a16",
    // "English","","", captchaSecretKey, captchaSecretKey);

    /*
     * boolean
     * result=emailUtility.sendReportToCustomerMail("addyPdf","sv","addysriv25@gmail.com","Addy",
     * "Contus_report@contus.se","R71tlCe46Vc3Bi9s"); logger.info("result   - "+result);
     */return "success";
  }

  @RequestMapping("/testEmailDomain")
  public String testEmailDomainnMethod(HttpServletRequest request, HttpServletResponse response) {
    // boolean result=emailUtility.sendReportToCustomerMail("ed15247e-72a1-60fe-838a-a9971abd2a16",
    // "English","","", captchaSecretKey, captchaSecretKey);

    /*
     * boolean
     * result=emailUtility.sendReportToCustomerMail("addyPdf","sv","developer@contus.se","Addy",
     * "Contus_report@contus.se","R71tlCe46Vc3Bi9s"); logger.info("result   - "+result);
     */
    return "success";
  }


  @RequestMapping("/testEmailWithSupport")
  public String testEmailSupportMethod(HttpServletRequest request, HttpServletResponse response) {
    // boolean result=emailUtility.sendReportToCustomerMail("ed15247e-72a1-60fe-838a-a9971abd2a16",
    // "English","","", captchaSecretKey, captchaSecretKey);
    /*
     * boolean
     * result=emailUtility.sendReportToCustomerMail("addyPdf","sv","addysriv25@gmail.com","Addy",
     * "Customer_contact@contus.se","q9kCe4kspDNBY9s"); logger.info("result   - "+result);
     */
    return "success";
  }

  @RequestMapping("/testTest")
  public String testTestMethod(HttpServletRequest request, HttpServletResponse response) {
    // boolean result=emailUtility.sendReportToCustomerMail("ed15247e-72a1-60fe-838a-a9971abd2a16",
    // "English","","", captchaSecretKey, captchaSecretKey);


    return "paymentChoice";
  }

  @RequestMapping("/testThread")
  public String testThreadMethod(HttpServletRequest request, HttpServletResponse response) {
    /*
     * //boolean
     * result=emailUtility.sendReportToCustomerMail("ed15247e-72a1-60fe-838a-a9971abd2a16",
     * "English","","", captchaSecretKey, captchaSecretKey);
     * 
     * //sboolean
     * result=emailUtility.sendReportToCustomerMail("addyPdf","sv","addysriv25@gmail.com","Addy",
     * "Contus_report@contus.se","R71tlCe46Vc3Bi9s"); TestResult result = new TestResult();
     * result.neuroticism=new BigFiveNeuroticism(); result.neuroticism.n1Anxiety=14;
     * result.neuroticism.n2Anger=7; result.neuroticism.n3Depression=20;
     * result.neuroticism.n4SelfConsciousness=10; result.neuroticism.n5Immoderation=18;
     * result.neuroticism.n6Vulnerability=2; result.neuroticism.totalPercentage=75.0;
     * 
     * result.extraversion=new BigFiveExtraversion(); result.extraversion.e1Friendliness=13;
     * result.extraversion.e2Gregariousness=12; result.extraversion.e3Assertiveness=15;
     * result.extraversion.e4ActivityLevel=19; result.extraversion.e5ExcitementSeeking=5;
     * result.extraversion.e6Cheerfulness=8; result.extraversion.totalPercentage=18.0;
     * 
     * result.openness=new BigFiveOpenness(); result.openness.o1Imagination=5;
     * result.openness.o2ArtisticInterests=8; result.openness.o3Emotionality=14;
     * result.openness.o4Adventurousness=16; result.openness.o5Intellect=17;
     * result.openness.o6Liberalism=12; result.openness.totalPercentage=49.0;
     * 
     * result.agreeableness=new BigFiveAgreeableness(); result.agreeableness.a1Trust=6;
     * result.agreeableness.a2Morality=4; result.agreeableness.a3Altruism=17;
     * result.agreeableness.a4Cooperation=20; result.agreeableness.a5Modesty=11;
     * result.agreeableness.a6Sympathy=9; result.agreeableness.totalPercentage=65.0;
     * 
     * result.conscientiousness=new BigFiveConscientiousness();
     * result.conscientiousness.c1SelfEfficacy=3; result.conscientiousness.c2Orderliness=7;
     * result.conscientiousness.c3Dutifulness=15; result.conscientiousness.c4AchievementStriving=19;
     * result.conscientiousness.c5SelfDiscipline=20; result.conscientiousness.c6Cautiousness=0;
     * result.conscientiousness.totalPercentage=50.0;
     * 
     * ContusThreadUtility utility=new
     * ContusThreadUtility(result,"addyPdf","sv","addysriv25@gmail.com","Addy");
     * 
     * utility.start();
     * 
     */ return "success";
  }



  @RequestMapping("/errorPage")
  public String errorPage(HttpServletRequest request, HttpServletResponse response) {

    logger.info("!!!!!!!!!! Error Occured In website , error page method called !!!!!!!!!!!!!! ");
    return "exceptionPage";
  }

  @RequestMapping("/error404")
  public String error404(HttpServletRequest request, HttpServletResponse response) {

    logger.info("!!!!!!!!!! Error 404 In website , error page method called !!!!!!!!!!!!!! ");
    return "error404";
  }

  @RequestMapping("/throwException")
  public String checkException() {

    throw new NullPointerException();
  }

  @ExceptionHandler(Exception.class)
  public String handleCustomException(Exception ex) {
    logger.info("!!!!!!!!!! Error Occured In website !!!!!!!!!!!!!! ");
    logger.error("Error occured : ", ex);

    logger.info("Error method closed");

    return "exceptionPage";

  }

  @ExceptionHandler(NoHandlerFoundException.class)
  public String handle404Exception(Exception ex) {
    logger.info("!!!!!!!!!! 404 Error Occured In website !!!!!!!!!!!!!! ");
    logger.error("Error occured : ", ex);

    logger.info("Error method closed");

    return "exceptionPage";

  }

  /*
   * @ExceptionHandler(ResourceNotFoundException.class)
   * 
   * @ResponseStatus(HttpStatus.NOT_FOUND) public String handleResourceNotFoundException() { return
   * "meters/notfound"; }
   */

  @RequestMapping("/developer")
  public String developerInfo() {

    return "developer";
  }

  @RequestMapping(value = "/swish-create-payment", method = RequestMethod.GET)
  public String createPaymentLinkForSwishPaymentGateway(ModelMap map) throws MalformedURLException,
      ProtocolException, JsonProcessingException, IOException, SwishPaymentCreationException {
    String amount = "100";
    String payerAlias = "90878474773";
    map.put("paymentRequestInfoUrl",
        swissPaymentGatewayService.createSwissPaymentGateway(amount,Optional.of(payerAlias)));
    return "swishClock";
  }

  @ExceptionHandler(SwishPaymentCreationException.class)
  @ResponseBody
  public String handleSwishPaymentGatewayException(SwishPaymentCreationException ex) {
    return ex.getMessage();
  }



}
