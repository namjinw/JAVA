package codingtest;

public class Movie {
	String title;
	String director;
	double rating;
	
	public Movie() {
		title = "제목 없음";
		director = "감독 없음";
		rating = 0.0;
	}
	
	public Movie(String title, String director, double rating) {
		this.title = title;
		this.director = director; // <= 매개변수에 넣어서 자기자신의 생성자에 매개변수 값을 넣는다
		this.rating = rating;
	}
	
	public void showInfo() {
		System.out.println("영화 이름은 " + title + " 감독은 " + director + " 평점은 " + rating + "점"); // <= 기본 생성자
	}
	
	public static void main(String[] args) {
		Movie M1 = new Movie();
		M1.showInfo();
		
		Movie M2 = new Movie("기생충", "봉준호", 9.9); // <= 객채 생성 후 생성자 사용 this O
		M2.showInfo();
		
		Movie M3 = new Movie();
		M3.title = ("라이온 킹");
		M3.director = ("디즈니"); // <= 객체 생성 후 대입 this X
		M3.rating = 8.9;
		M3.showInfo();
	}

}
