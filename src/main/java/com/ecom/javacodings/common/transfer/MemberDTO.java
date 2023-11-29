package com.ecom.javacodings.common.transfer;

import lombok.Data;
import lombok.ToString;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.web.context.WebApplicationContext;

import java.util.Date;

@Data
@Scope( value= WebApplicationContext.SCOPE_SESSION,
        proxyMode = ScopedProxyMode.TARGET_CLASS)
@ToString
public class MemberDTO {
    String member_id;
    String password;
    String role;

    // Region Metadata

    String reg_date;
    String name;
    String email;
    String phone;
    String birth;

    // End Region Metadata
    // Region Address

    String zipcode;
    String address;
    String address2;

    // End Region Address
    // Region Payment

    String card_no;
    String card_pw;
    String expire_year;
    String expire_month;

    // End Region Payment
}