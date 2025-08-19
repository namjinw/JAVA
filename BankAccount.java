package codingtest;

import java.util.Scanner;

public class BankAccount {
	String accountNumber;
	String owner;
	int balance;
	
	void deposit(int amount) {
		balance += amount;
		System.out.println(amount + "원 입급완료! 총" + balance +"원 입니다!");
	}
	
	void withdraw(int amount) {
		if (balance >= amount) {
			balance -= amount;
			System.out.println(amount + "원 출금하셨습니다. 남은 잔액은 " + balance + "원 입니다.");
		}
		else {
			System.out.println("잔액이 부족합니다.");
		}
	}
	
	void showBalance() {
		System.out.println(owner + "님의 총 잔액은 " + balance + "원 입니다!");
	}
	
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		BankAccount B1 = new BankAccount();
		B1.accountNumber = "7777-77-7777";
		B1.owner = "남진우";
		B1.balance = 10000;
		
		BankAccount B2 = new BankAccount();
		B2.accountNumber = "8888-8888-888";
		B2.owner = "이건성";
		B2.balance = 7800;
		
		System.out.println(B1.owner + "님 입력하실 돈은? : ");
		int demoney = sc.nextInt();
		B1.deposit(demoney);
		
		System.out.println(B2.owner + "님 출금하실 돈은? : ");
		int wimoney = sc.nextInt();
		B2.withdraw(wimoney);
		
		BankAccount Bank[] = new BankAccount[2];
		Bank[0] = B1;
		Bank[1] = B2;
		for (int i = 0; i < Bank.length; i++) {
			Bank[i].showBalance();
		}
		sc.close();
	}
}
