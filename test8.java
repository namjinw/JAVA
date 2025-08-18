package codingtest;

public class test8 {
	String name;
	int age;
	
	void showInfo() {
		System.out.println("이름: " + name + ", 나이: " + age);
	}
	
	public static void main(String[] args) {
		test8 s1 = new test8();
		s1.name = "홍길동";
		s1.age = 17;
		s1.showInfo();
		
		test8 s2 = new test8();
		s2.name = "남진우";
		s2.age = 17;
		s2.showInfo();
	}

}
