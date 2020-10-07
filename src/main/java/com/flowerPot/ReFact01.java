package com.flowerPot;

public class ReFact01 {
	public static void main(String[] args) {
		int a=10, b01=2, b02=0, b03=3,result=0;
	      
		try{
		    result = a / b01;
	      	    System.out.println(result);
	      
	            result = a/ b02;
	            System.out.println(result);
	      
	            result = a/b03;
	            System.out.println(result);
		}catch(Exception ae){
		    ae.printStackTrace();
		}
	}
}
