package com.guanshen.service;

import com.guanshen.entity.User;

import java.util.List;

public interface UserService {
    void save(User user);

    List<User> findAll();
}
