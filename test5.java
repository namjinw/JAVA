package codingtest;

public class test5 {
	public int solution(double num1, double num2) {
		return (int)Math.round((num1 / num2) * 1000);
	}
	
	public static void main(String[] args) {
		test5 t = new test5();
		System.out.println(t.solution(3, 2));
		System.out.println(t.solution(7, 3));
		System.out.println(t.solution(1, 16));
	}
}
