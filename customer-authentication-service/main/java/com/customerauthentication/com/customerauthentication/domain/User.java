package com.customerauthentication.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.AccessLevel;
import io.swagger.annotations.ApiModelProperty;

import java.io.Serializable;

@Getter(value = AccessLevel.PUBLIC)
@Setter(value = AccessLevel.PUBLIC)
public class User implements Serializable {

    private static final long serialVersionUID = 1L;

    @ApiModelProperty(name = "id", required = true, value = "123456", notes = "User ID")
    private Integer id;

    @ApiModelProperty(name = "username", required = true, value = "Karaya_12", notes = "User Name")
    private String username;

    @ApiModelProperty(name = "password", required = true, value = "password!", notes = "Password")
    private String password;

    public User() {
        super();
    }

    public User(Integer id, String username, String password) {
        this.id = id;
        this.username = username;
        this.password = password;
    }
}
