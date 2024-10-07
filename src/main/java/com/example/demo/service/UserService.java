package com.example.demo.service;

import com.example.demo.dto.UserDto;
import org.springframework.stereotype.Service;

@Service
public class UserService {
    public UserDto getUserByIdNumber(String idNumber) {
        return new UserDto(idNumber);
    }
}
