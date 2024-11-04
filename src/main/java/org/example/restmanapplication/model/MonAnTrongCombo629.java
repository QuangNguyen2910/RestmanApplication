package org.example.restmanapplication.model;

public class MonAnTrongCombo629 {
    private int id;
    private MonAn629 monan;
    private Combo629 combo;

    // Constructors, Getters, and Setters

    public MonAnTrongCombo629() {
    }

    public MonAnTrongCombo629(int id, MonAn629 monan, Combo629 combo) {
        this.id = id;
        this.monan = monan;
        this.combo = combo;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public MonAn629 getMonan() {
        return monan;
    }

    public void setMonan(MonAn629 monan) {
        this.monan = monan;
    }

    public Combo629 getCombo() {
        return combo;
    }

    public void setCombo(Combo629 combo) {
        this.combo = combo;
    }
}
