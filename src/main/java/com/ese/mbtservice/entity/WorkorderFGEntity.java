package com.ese.mbtservice.entity;

import jakarta.persistence.*;

import java.sql.Timestamp;
import java.util.Objects;

@Entity
@Table(name = "workorder_fg", schema = "public", catalog = "uikjzbfs")
public class WorkorderFgEntity {
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    @Column(name = "id", nullable = false)
    private int id;
    @Basic
    @Column(name = "workorder_id", nullable = false)
    private int workorderId;
    @Basic
    @Column(name = "fg_barcode", nullable = false, length = -1)
    private String fgBarcode;
    @Basic
    @Column(name = "fg_spec", nullable = false, length = -1)
    private String fgSpec;
    @Basic
    @Column(name = "fg_description", nullable = true, length = -1)
    private String fgDescription;
    @Basic
    @Column(name = "fg_lenght", nullable = true, precision = 0)
    private Double fgLenght;
    @Basic
    @Column(name = "fg_qty", nullable = true)
    private Integer fgQty;
    @Basic
    @Column(name = "fg_weight_estimate", nullable = true, precision = 0)
    private Double fgWeightEstimate;
    @Basic
    @Column(name = "fg_area", nullable = true, precision = 0)
    private Double fgArea;
    @Basic
    @Column(name = "fg_qty_actual", nullable = true, precision = 0)
    private Double fgQtyActual;
    @Basic
    @Column(name = "fg_weight_actual", nullable = true, precision = 0)
    private Double fgWeightActual;
    @Basic
    @Column(name = "fg_bundle", nullable = true, precision = 0)
    private Double fgBundle;
    @Basic
    @Column(name = "note", nullable = true, length = -1)
    private String note;
    @Basic
    @Column(name = "status", nullable = true)
    private Integer status;
    @Basic
    @Column(name = "is_valid", nullable = true)
    private Boolean isValid;
    @Basic
    @Column(name = "create_by", nullable = true)
    private Integer createBy;
    @Basic
    @Column(name = "create_datetime", nullable = true)
    private Timestamp createDatetime;
    @Basic
    @Column(name = "modify_by", nullable = true)
    private Integer modifyBy;
    @Basic
    @Column(name = "modify_datetime", nullable = true)
    private Timestamp modifyDatetime;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getWorkorderId() {
        return workorderId;
    }

    public void setWorkorderId(int workorderId) {
        this.workorderId = workorderId;
    }

    public String getFgBarcode() {
        return fgBarcode;
    }

    public void setFgBarcode(String fgBarcode) {
        this.fgBarcode = fgBarcode;
    }

    public String getFgSpec() {
        return fgSpec;
    }

    public void setFgSpec(String fgSpec) {
        this.fgSpec = fgSpec;
    }

    public String getFgDescription() {
        return fgDescription;
    }

    public void setFgDescription(String fgDescription) {
        this.fgDescription = fgDescription;
    }

    public Double getFgLenght() {
        return fgLenght;
    }

    public void setFgLenght(Double fgLenght) {
        this.fgLenght = fgLenght;
    }

    public Integer getFgQty() {
        return fgQty;
    }

    public void setFgQty(Integer fgQty) {
        this.fgQty = fgQty;
    }

    public Double getFgWeightEstimate() {
        return fgWeightEstimate;
    }

    public void setFgWeightEstimate(Double fgWeightEstimate) {
        this.fgWeightEstimate = fgWeightEstimate;
    }

    public Double getFgArea() {
        return fgArea;
    }

    public void setFgArea(Double fgArea) {
        this.fgArea = fgArea;
    }

    public Double getFgQtyActual() {
        return fgQtyActual;
    }

    public void setFgQtyActual(Double fgQtyActual) {
        this.fgQtyActual = fgQtyActual;
    }

    public Double getFgWeightActual() {
        return fgWeightActual;
    }

    public void setFgWeightActual(Double fgWeightActual) {
        this.fgWeightActual = fgWeightActual;
    }

    public Double getFgBundle() {
        return fgBundle;
    }

    public void setFgBundle(Double fgBundle) {
        this.fgBundle = fgBundle;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public Boolean getValid() {
        return isValid;
    }

    public void setValid(Boolean valid) {
        isValid = valid;
    }

    public Integer getCreateBy() {
        return createBy;
    }

    public void setCreateBy(Integer createBy) {
        this.createBy = createBy;
    }

    public Timestamp getCreateDatetime() {
        return createDatetime;
    }

    public void setCreateDatetime(Timestamp createDatetime) {
        this.createDatetime = createDatetime;
    }

    public Integer getModifyBy() {
        return modifyBy;
    }

    public void setModifyBy(Integer modifyBy) {
        this.modifyBy = modifyBy;
    }

    public Timestamp getModifyDatetime() {
        return modifyDatetime;
    }

    public void setModifyDatetime(Timestamp modifyDatetime) {
        this.modifyDatetime = modifyDatetime;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        WorkorderFgEntity that = (WorkorderFgEntity) o;
        return id == that.id && workorderId == that.workorderId && Objects.equals(fgBarcode, that.fgBarcode) && Objects.equals(fgSpec, that.fgSpec) && Objects.equals(fgDescription, that.fgDescription) && Objects.equals(fgLenght, that.fgLenght) && Objects.equals(fgQty, that.fgQty) && Objects.equals(fgWeightEstimate, that.fgWeightEstimate) && Objects.equals(fgArea, that.fgArea) && Objects.equals(fgQtyActual, that.fgQtyActual) && Objects.equals(fgWeightActual, that.fgWeightActual) && Objects.equals(fgBundle, that.fgBundle) && Objects.equals(note, that.note) && Objects.equals(status, that.status) && Objects.equals(isValid, that.isValid) && Objects.equals(createBy, that.createBy) && Objects.equals(createDatetime, that.createDatetime) && Objects.equals(modifyBy, that.modifyBy) && Objects.equals(modifyDatetime, that.modifyDatetime);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, workorderId, fgBarcode, fgSpec, fgDescription, fgLenght, fgQty, fgWeightEstimate, fgArea, fgQtyActual, fgWeightActual, fgBundle, note, status, isValid, createBy, createDatetime, modifyBy, modifyDatetime);
    }
}
