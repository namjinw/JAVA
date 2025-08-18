package javaproject;

import java.util.Iterator;
import java.util.Scanner;

public class javaTest {
	public static void main(String[] args) {
		int num = 12;
		String str = "최정원";
		
		System.out.println(str + "은 " + num + "살을 좋아한다");
		
		if(num < 0) {
			System.out.println("양수입니다.");
		}
		else {
			System.out.println("음수입니다.");
		}
		
		Scanner sc = new Scanner(System.in);
		System.out.println("숫자를 입력하시오: ");
		int N = sc.nextInt();
		System.out.println(N);
		if (N > 5) {
			System.out.println("5보다 크다.");
		}
		else if (N == 5) {
			System.out.println("5와 같다.");
		}
		else {
			System.out.println("5보다 작다.");
		}
		
		Scanner m = new Scanner(System.in);
		System.out.println("주문수량은?");
		int x = m.nextInt();
		if (x >= 10 ) {
			System.out.println(x * 2500);
		}
		else {
			System.out.println((10 * 2500) + (x - 10) * 2400);
		}
	}
	
	public static void sub(String[] args) {
		for(int x = 20; x > 0; x--) {
			if (x > 12) {
				System.out.println("12살이 안좋아합니다.");
			}
			else {
				System.out.println("12살이 좋아합니다.");
			}
		}
	}
	
	public static void problem(String[] args) {
		Scanner num = new Scanner(System.in);
		System.out.println("점수는: ");
		int x = num.nextInt();
		if (x >= 90) {
			System.out.println("A학점");
		}
		else if (x >= 80 ) {
			System.out.println("B학점");
		}
		else if (x >= 70 ) {
			System.out.println("C학점");
		}
		else if (x >= 60 ) {
			System.out.println("D학점");
		}
		else {
			System.out.println("F학점");
		}
	}
}
