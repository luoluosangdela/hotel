package com.qfedu.pojo;

public class PriceType {
    private Integer prId;

    private String prTypename;

    public Integer getPrId() {
        return prId;
    }

    public void setPrId(Integer prId) {
        this.prId = prId;
    }

    public String getPrTypename() {
        return prTypename;
    }

    public void setPrTypename(String prTypename) {
        this.prTypename = prTypename == null ? null : prTypename.trim();
    }
}