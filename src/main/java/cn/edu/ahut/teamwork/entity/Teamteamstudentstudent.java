package cn.edu.ahut.teamwork.entity;

/**
 * 
 * @author Administrator
 *
 */
public class Teamteamstudentstudent {
	
	private String teamid;//小组id
	
	private String teamcode;//小组编号
	
	private String teamname;//小组名

    private String studentid;//学生id

    public String getTeamcode() {
		return teamcode;
	}

	public void setTeamcode(String teamcode) {
		this.teamcode = teamcode;
	}

	public String getTeamname() {
		return teamname;
	}

	public void setTeamname(String teamname) {
		this.teamname = teamname;
	}

	public Float getTeamscore() {
		return teamscore;
	}

	public void setTeamscore(Float teamscore) {
		this.teamscore = teamscore;
	}

	private String courseid;//课程id

    private String character;//学生角色
    
    private Float teamscore;//小组分数

	private String id;

    private String name;

    private String password;

    private String sfzh;

    private String sex;

    private String grade;

    private String classid;

    private String classname;

	public String getTeamid() {
		return teamid;
	}

	public void setTeamid(String teamid) {
		this.teamid = teamid;
	}

	public String getStudentid() {
		return studentid;
	}

	public void setStudentid(String studentid) {
		this.studentid = studentid;
	}

	public String getCourseid() {
		return courseid;
	}

	public void setCourseid(String courseid) {
		this.courseid = courseid;
	}

	public String getCharacter() {
		return character;
	}

	public void setCharacter(String character) {
		this.character = character;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getSfzh() {
		return sfzh;
	}

	public void setSfzh(String sfzh) {
		this.sfzh = sfzh;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}

	public String getClassid() {
		return classid;
	}

	public void setClassid(String classid) {
		this.classid = classid;
	}

	public String getClassname() {
		return classname;
	}

	public void setClassname(String classname) {
		this.classname = classname;
	}

	@Override
	public String toString() {
		return "Teamteamstudentstudent [teamid=" + teamid + ", teamcode=" + teamcode + ", teamname=" + teamname
				+ ", studentid=" + studentid + ", courseid=" + courseid + ", character=" + character + ", teamscore="
				+ teamscore + ", id=" + id + ", name=" + name + ", password=" + password + ", sfzh=" + sfzh + ", sex="
				+ sex + ", grade=" + grade + ", classid=" + classid + ", classname=" + classname + "]";
	}
}
