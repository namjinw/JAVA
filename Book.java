package JSPjava;

public class Book {
	String studentName;
	int classNumber; // <= 멤버 변수: 생성된 값 기본적인
	int score;
	
	public Book(String Student, int classN, int score) {
		this.studentName = Student;
		this.classNumber = classN; // <= 매개변수
		this.score = score;
	}
	
	public String getInfo() {
		return "이름: " + studentName + " 번호: " + classNumber + " 시험성적: " + score + "점";
	}

}
