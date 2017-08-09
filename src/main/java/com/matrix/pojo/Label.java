package com.matrix.pojo;

public class Label {
    private Integer id;

    private String name;

    public Label(Integer id, String name) {
        this.id = id;
        this.name = name;
    }

    public Label() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }
}