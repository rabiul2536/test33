package com.ibcs.primax.javaee.service;

import com.ibcs.primax.javaee.model.User;
import com.ibcs.primax.javaee.utils.Constant;

import javax.servlet.ServletContext;
import java.util.List;

/**
 * Created by instructor on 5/4/2015.
 */
public class UserServiceImpl implements UserService {
    @Override
    public void saveUser(User user, ServletContext servletContext) {
        List<User> userList = getUsers(servletContext);
        userList.add(user);
    }

    private List<User> getUsers(ServletContext servletContext) {
        return (List<User>) servletContext.getAttribute(Constant.USER_LIST);
    }

    @Override
    public User getUser(String email, String password, ServletContext servletContext) {
        List<User> userList = getUsers(servletContext);
        for (User user : userList) {
            if (user.getEmail().equals(email) && user.getPassword().equals(password)) {
                return user;
            }
        }

        return null;
    }

    @Override
    public List<User> getUserList(ServletContext servletContext) {
        return getUsers(servletContext);
    }
}
