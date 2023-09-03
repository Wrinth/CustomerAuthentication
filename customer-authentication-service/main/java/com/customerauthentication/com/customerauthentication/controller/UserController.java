package com.customerauthentication.controller;

import com.customerauthentication.domain.User;
import com.customerauthentication.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/user")
public class UserController {

    private final UserService userService;

    @Autowired  // Autowire Service Bean in Controller
    public UserController(UserService userService) {
        this.userService = userService;
    }

    @RequestMapping("/findAll")
    public List<User> findAll() {
        return userService.findAll();
    }
}
