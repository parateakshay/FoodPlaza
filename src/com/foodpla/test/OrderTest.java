package com.foodpla.test;
import java.util.*;

import com.foodpla.dao.OrderImpl;
import com.foodpla.pojo.Order21020;
public class OrderTest 
{
public static void main(String args[])
{
	Order21020 o = new Order21020();
	OrderImpl oi = new OrderImpl();
boolean result ;
	Scanner sc = new Scanner(System.in);
while(true)
{
System.out.println("1)add order\n2)cancel order\n3)show all order\n4)show order of particular customer\n");
System.out.println("Enter your choice\n");
int choice = sc.nextInt();
switch(choice)
{
case 1: System.out.println("Enter email id");
String eid = sc.next();
result = oi.AddOrder(eid);
if(result)
{
System.out.println("order placed successfully");	
}
else
{
System.out.println("try again");	
}
break;
case 2:
	System.out.println("Enter order id");
	
}
}

}
}
