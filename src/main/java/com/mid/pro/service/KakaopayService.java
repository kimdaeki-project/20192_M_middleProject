package com.mid.pro.service;

import java.net.URI;
import java.net.URISyntaxException;

import org.apache.commons.logging.Log;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Service;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.client.RestClientException;
import org.springframework.web.client.RestTemplate;
 
import com.mid.pro.model.PayVO;

@Service
public class KakaopayService {
	
private static final String HOST = "https://kapi.kakao.com";
    
    public String kakaopayReady(PayVO kakaopayVO ) {
 
        RestTemplate restTemplate = new RestTemplate();
        
        // 서버로 요청할 Header
        HttpHeaders headers = new HttpHeaders();
        headers.add("Authorization", "KakaoAK " + "795cb29491196839568fb95b332f0be9");
        headers.add("Accept", MediaType.APPLICATION_JSON_UTF8_VALUE);
        headers.add("Content-Type", MediaType.APPLICATION_FORM_URLENCODED_VALUE + ";charset=UTF-8");
        
        // 서버로 요청할 Body
        MultiValueMap<String, String> params = new LinkedMultiValueMap<String, String>();
        params.add("cid", "TC0ONETIME");
        params.add("partner_order_id", "1001");
        params.add("partner_user_id", "gorany");
        params.add("item_name", "식당 예약");
        params.add("quantity", "1");
        params.add("total_amount", "1000");
        params.add("tax_free_amount", "0");
        //성공
        params.add("approval_url", "./kakaoPaySuccess");
        //취소
        params.add("cancel_url", "./kakaoPayCancel");
        //실패
        params.add("fail_url", "./kakaoPaySuccessFail");
 
         HttpEntity<MultiValueMap<String, String>> body = new HttpEntity<MultiValueMap<String, String>>(params, headers);
 
        try {
            kakaopayVO = restTemplate.postForObject(new URI(HOST + "/v1/payment/ready"), body, PayVO.class);
            
         
            
            return "redirect:../restaurant/restList";
 
        } catch (RestClientException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (URISyntaxException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        
        return "/pay";
        
    }
    
	
}
