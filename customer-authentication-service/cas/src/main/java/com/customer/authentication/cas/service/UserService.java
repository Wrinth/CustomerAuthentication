package com.customer.authentication.cas.service;

import com.customer.authentication.cas.domain.User;

import java.util.List;

public interface UserService {

    List<User> findAll();
}