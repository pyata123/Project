package com.sairam.niit1.dao;

import com.sairam.niit1.model.Register;

public interface RegisterDao
{
void registerUser(Register reg);
Register getUser(String userName);
}
