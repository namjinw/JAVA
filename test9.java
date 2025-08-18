package codingtest;

public class test9 {
	String name;
	String breed;
	int age;
	
	void bark() {
		System.out.println("멍멍! 나는 " + name + "야!");
	}
	
	void showInfo() {
        System.out.println("이름: " + name + ", 견종: " + breed + ", 나이: " + age);
    }
	
	public static void main(String[] args) {
		test9 d1 = new test9();
		d1.name = "춘식이";
		d1.breed = "시바견";
		d1.age = 3;
		d1.bark();
		d1.showInfo();
		
		test9 d2 = new test9();
		d2.name = "뽀삐";
		d2.breed = "말티즈";
		d2.age = 4;
		d2.bark();
		d2.showInfo();
	}

}
