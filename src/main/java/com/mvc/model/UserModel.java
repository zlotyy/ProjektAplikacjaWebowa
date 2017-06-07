package com.mvc.model;


import com.google.gson.annotations.SerializedName;
import org.hibernate.validator.constraints.NotEmpty;

import javax.persistence.*;
import java.io.Serializable;
import java.util.List;

/**
 * Created by Złoty on 2017-04-08.
 */
@Entity
@Table(name="User")
public class UserModel implements Serializable{
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @SerializedName("userId")
    public long userId;

    @NotEmpty(message = "Login nie moze byc pusty")
    @Column(unique = true)
    @SerializedName("login")
    private String login;

    @NotEmpty(message = "Haslo nie moze byc puste")
    @SerializedName("password")
    private String password;

    @NotEmpty
    @SerializedName("accountType")
    private String accountType = "Klient";



    @Transient
    @OneToMany(mappedBy = "idSender")
    private List<MessageModel> messageSender;

    @Transient
    @OneToMany(mappedBy = "idReceiver")
    private List<MessageModel> messageReceiver;

    @Transient
    @OneToOne(mappedBy = "user")
    private CustomerModel customer;

    @Transient
    @OneToOne(mappedBy = "idUser")
    private EmployeeModel employee;





    public long getUserId() {
        return userId;
    }

    public void setUserId(long userId) {
        this.userId = userId;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getAccountType() {
        return accountType;
    }

    public void setAccountType(String accountType) {
        this.accountType = accountType;
    }

    public List<MessageModel> getMessageSender() {
        return messageSender;
    }

    public void setMessageSender(List<MessageModel> messageSender) {
        this.messageSender = messageSender;
    }

    public List<MessageModel> getMessageReceiver() {
        return messageReceiver;
    }

    public void setMessageReceiver(List<MessageModel> messageReceiver) {
        this.messageReceiver = messageReceiver;
    }

    public CustomerModel getCustomer() {
        return customer;
    }

    public void setCustomer(CustomerModel customer) {
        this.customer = customer;
    }

    public EmployeeModel getEmployee() {
        return employee;
    }

    public void setEmployee(EmployeeModel employee) {
        this.employee = employee;
    }

    @Override
    public String toString() {
        return "UserModel{" +
                "userId=" + userId +
                ", login='" + login + '\'' +
                ", password='" + password + '\'' +
                ", accountType='" + accountType + '\'' +/*
                ", messageSender=" + messageSender +
                ", messageReceiver=" + messageReceiver +
                ", customer=" + customer +
                ", employee=" + employee +*/
                '}';
    }
}
