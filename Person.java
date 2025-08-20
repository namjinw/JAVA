package codingtest;

public class Person {
	private String name;
	private int age;
	
	public String getName() {
		return name;
	}
	public int getAge() {
		return age;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	public void setAge(int age) {
		if (age > 0 ) {
			this.age = age;
		}
		else {
			System.out.println("아직 태어나지 않았습니다.");
		}
	}
	public static void main(String[] args) {
		Person P1 = new Person();
		P1.setAge(17);
		P1.setName("남진우");
		
		System.out.println("이름은 : " + P1.getName());
		System.out.println("나이는 : " + P1.getAge());
		
		P1.setAge(-5);
		
		System.out.println("나이는 : " + P1.getAge());
	}

}
