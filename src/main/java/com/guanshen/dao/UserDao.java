package com.guanshen.dao;

import com.guanshen.entity.User;

import java.util.List;

public interface UserDao {
    void save(User user);

    List<User> findAll();
}
