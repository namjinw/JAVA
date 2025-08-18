package codingtest;

public class test3 {
	public int solution(int num1, int num2) {
		return (num1 == num2) ? 1 : -1;
	}
	
	public static void main(String[] args) {
		test3 t = new test3();
		System.out.println(t.solution(2, 3));
		System.out.println(t.solution(11, 11));
		System.out.println(t.solution(7, 99));
	}
}
