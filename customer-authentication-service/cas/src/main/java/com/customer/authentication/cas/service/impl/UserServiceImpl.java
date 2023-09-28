package com.customer.authentication.cas.service.impl;

import com.customer.authentication.cas.domain.User;
import com.customer.authentication.cas.service.UserService;

import org.springframework.stereotype.Service;
// import org.springframework.transaction.annotation.Propagation;
// import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

@Service("userService")
// @Transactional(propagation = Propagation.REQUIRED, timeout = 10)
public class UserServiceImpl implements UserService {

    /* // Deprecated Usage - Field injection is not recommended.
     * @Autowired
     * private UserMapper userMapper;
     * */

    @Override
    public List<User> findAll() {
        return new ArrayList<>();
    }
}