package com.withstars.domain;

public class Trash {
    private  int id;
    private  int type;
    private String trashName;
    private String imagesrc;
    private String desc;
    @Override
    public String toString() {
        return "Trash{" +
                "id=" + id +
                ", type=" + type +
                ", trashName='" + trashName + '\'' +
                ", imagesrc='" + imagesrc + '\'' +
                ", desc='" + desc + '\'' +
                '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }

    public String getTrashName() {
        return trashName;
    }

    public void setTrashName(String trashName) {
        this.trashName = trashName;
    }

    public String getImagesrc() {
        return imagesrc;
    }

    public void setImagesrc(String imagesrc) {
        this.imagesrc = imagesrc;
    }

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }


}
