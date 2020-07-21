package com.foodpla.dao;

import java.util.ArrayList;

import com.foodpla.pojo.Cart;

public interface CartDao 
{
boolean AddCart(Cart ct);
boolean DeleteCart(String email_id);
ArrayList<Cart> ShowAllCart();
}
