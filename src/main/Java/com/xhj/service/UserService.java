package com.xhj.service;

import com.xhj.mapper.UserMapper;
import com.xhj.pojo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserService {
    @Autowired
    private UserMapper userMapper;

    public List<User> selectAll() {
        return userMapper.selectAll();
    }

    public List<User> selectByName(String name) {
        return userMapper.selectByName(name);
    }

    public int delete(int id) {
        return userMapper.delete(id);
    }

    public int insert(User user) {
        return userMapper.insert(user);
    }

    public int update(User user) {
        return userMapper.update(user);
    }
}
