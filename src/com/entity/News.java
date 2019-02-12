package com.entity;

public class News {
    private Integer ggid;

    private String ggpic;

    private String name;

    private String isdel;

    private String note;

    public Integer getGgid() {
        return ggid;
    }

    public void setGgid(Integer ggid) {
        this.ggid = ggid;
    }

    public String getGgpic() {
        return ggpic;
    }

    public void setGgpic(String ggpic) {
        this.ggpic = ggpic == null ? null : ggpic.trim();
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getIsdel() {
        return isdel;
    }

    public void setIsdel(String isdel) {
        this.isdel = isdel == null ? null : isdel.trim();
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note == null ? null : note.trim();
    }
}