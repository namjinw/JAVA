package codingtest;

public class text12 {
	String brand;
	String model;
	int year;
	
	void start() {
		System.out.println(brand + " " + model + " 시동을 켭니다.");
	}
	
	void showinfo() {
		System.out.println("이 차는 브랜드가 " + brand + "고 모델은 " + model + ", 년도는 " + year + "년이야");
	}
	
	public static void main(String[] args) {
		text12 car1 = new text12();
		car1.brand = "현대";
		car1.model = "제네시스";
		car1.year = 2008;
		car1.start();
		car1.showinfo();
		
		text12 car2 = new text12();
		car2.brand = "BMW";
		car2.model = "벤츠";
		car2.year = 2014;
		car2.start();
		car2.showinfo();
	}
}
