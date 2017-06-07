package com.mvc.dao;

import com.mvc.model.UserModel;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

/**
 * Created by Złoty on 2017-04-08.
 */
public interface UserDAO extends CrudRepository<UserModel, Integer> {
    //UserModel findAllByAccountType(String type);
    List<UserModel> findAllByAccountType(String type);
}
