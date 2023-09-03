package com.customerauthentication.service;

import com.customerauthentication.domain.User;

import java.util.List;

public interface UserService {

    List<User> findAll();
}
