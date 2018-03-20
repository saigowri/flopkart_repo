package com.iiitb.ooadvoid.pojo;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class FlopkartAccount {
		private int id;
		private int userid;
		private int accountno;
		private int balance;
		private String pin;
		public int getId() {
			return id;
		}
		public void setId(int id) {
			this.id = id;
		}
		public int getUserid() {
			return userid;
		}
		public void setUserid(int userid) {
			this.userid = userid;
		}
		public int getBalance() {
			return balance;
		}
		public void setBalance(int balance) {
			this.balance = balance;
		}
		public String getPin() {
			return pin;
		}
		public void setPin(String pin) {
			this.pin = pin;
		}
		

		public String encodePin(int pin)
		{
			StringBuffer sb = new StringBuffer();
			try
			{
			MessageDigest mDigest = MessageDigest.getInstance("SHA1");
			byte[] result = mDigest.digest(String.valueOf(pin).getBytes());
			for (int i = 0; i < result.length; i++)
			{
				sb.append(Integer.toString((result[i] & 0xff) + 0x100, 16).substring(1));
			}
			}
			catch (NoSuchAlgorithmException e)
			{
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return sb.toString();
		}
		

		public int getAccountno() {
			return accountno;
		}
		public void setAccountno(int accountno) {
			this.accountno = accountno;
		}
		
}
