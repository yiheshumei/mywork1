package com.xhj.mapper;

import com.xhj.pojo.User;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserMapper {
    List<User> selectAll();
    List<User> selectByName(String name);
    int delete(int id);
    int insert(User user);
    int update(User user);
}
