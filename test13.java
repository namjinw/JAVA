package codingtest;

public class test13 {
	String name;
	int studentId;
	int score;
	
	void showInfo() {
		System.out.println("이 학생의 이름은 " + name + "이며 학생번호는 " + studentId + ", 시험 점수는" + score + "점");
	}
	
	void passOrFail() {
		if (score >= 60) {
			System.out.println("합격");
		}
		else {
			System.out.println("불합격");
		}
	}
	
	public static void main(String[] args) {
		test13 s1 = new test13();
		s1.name = "남진우";
		s1.studentId = 4;
		s1.score = 75;
		
		test13 s2 = new test13();
		s2.name = "정유환";
		s2.studentId = 13;
		s2.score = 59;
		
		test13 s3 = new test13();
		s3.name = "최정원";
		s3.studentId = 16;
		s3.score = 65;
		
		test13 st[] = new test13[3];
		st[0] = s1;
		st[1] = s2;
		st[2] = s3;
		
		for (int i = 0; i < st.length; i++) {
			st[i].showInfo();
			st[i].passOrFail();
			System.out.println("-------------------");
		}
		
		int total = 0;
		for (int x = 0; x < st.length; x++) {
			total += st[x].score;
		}
		double avg = (double) total / st.length;
		System.out.printf("전체 평군 점수는: %.1f\n", avg);
		
		test13 top = st[0];
		test13 bottom = st[0];
		
		for (int z = 0; z < st.length; z++) {
			if (st[z].score > top.score) {
				top = st[z];
			}
			if (st[z].score < bottom.score) {
				bottom = st[z];
			}
		}
		
		System.out.println("최고점을 맞은 학생은 " + top.name + "학생입니다! => " + top.score + "점!");
		System.out.println("최저점을 맞은 학생은 " + bottom.name + "학생입니다... => " + bottom.score + "점...");
	}

}
