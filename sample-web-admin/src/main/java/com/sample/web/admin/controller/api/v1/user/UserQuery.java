package com.sample.web.admin.controller.api.v1.user;

import lombok.Getter;
import lombok.Setter;

import java.io.Serializable;

@Setter
@Getter
public class UserQuery implements Serializable {

    private static final long serialVersionUID = 7593564324192730932L;

    String email;

    String firstName;

    String lastName;

    String tel;

    String zip;

    String address;
}