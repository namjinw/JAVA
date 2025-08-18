package codingtest;

public class test1 {
    public int solution(int num1, int num2) {
        return num1 / num2;
    }

    public static void main(String[] args) {
        test1 s = new test1();
        System.out.println(s.solution(10, 5)); // 출력: 2
        System.out.println(s.solution(7, 2));  // 출력: 3
    }
}