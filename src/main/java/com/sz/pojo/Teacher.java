package com.sz.pojo;

public class Teacher {

    private Student student;

    private Integer id;

    private Integer age;

    private String name;

    private String  address;

    private String tranningPlan;

    public Student getStudent() {
        return student;
    }

    public void setStudent(Student student) {
        this.student = student;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getTranningPlan() {
        return tranningPlan;
    }

    public void setTranningPlan(String tranningPlan) {
        this.tranningPlan = tranningPlan;
    }

    @Override
    public String toString() {
        return "Teacher{" +
                "id=" + id +
                ", age=" + age +
                ", name='" + name + '\'' +
                ", address='" + address + '\'' +
                ", tranningPlan='" + tranningPlan + '\'' +
                '}';
    }
}
