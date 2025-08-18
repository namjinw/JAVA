package codingtest;

public class tesdt4 {
	public int solution(int age) {
		return 2025 - age + 1;
	}
	
	public static void main(String[] args) {
		tesdt4 t = new tesdt4();
		System.out.println(t.solution(40));
		System.out.println(t.solution(23));
	}
}
