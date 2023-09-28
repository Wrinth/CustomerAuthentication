package com.customer.authentication.cas.domain;

import lombok.NoArgsConstructor;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import io.swagger.annotations.ApiModelProperty;

import java.io.Serializable;

/**
 * Created by John on 2023-09-08
 */
@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class User implements Serializable {

    private static final long serialVersionUID = 1L;

    @ApiModelProperty(name = "id", required = true, value = "123456", notes = "User ID")
    private Long id;

    @ApiModelProperty(name = "username", required = true, value = "Karaya_12", notes = "User Name")
    private String username;

    @ApiModelProperty(name = "password", required = true, value = "password!", notes = "Password")
    private String password;
}