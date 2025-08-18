package javaP;

import java.util.Iterator;

public class switcs {
	public final static int LHS = 12;
	public final static int jinwoo = 17;
	
	public static void main(String[] args) {
		int child1 = LHS;
		switch (child1) {
		case 12: {
			System.out.println("12살입니다.");break;
		}
		default:
			System.out.println("12살이 아닙니다.");break;
		}
		int longjin = jinwoo;
		switch (jinwoo) {
			case 17: {
				System.out.println("고등학생입니다.");break;
		}
		default:
			System.out.println("중학생입니다.");break;
		}
		for (int x = 1; x <= 20; x++) {
			if (x <= 12) {
				System.out.println("12살이 좋아합니다.");
			} else {
				System.out.println("12살이 안좋아합니다.");
			}
		}
	}
}
