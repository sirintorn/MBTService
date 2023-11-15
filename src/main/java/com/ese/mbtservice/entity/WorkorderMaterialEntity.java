package com.ese.mbtservice.entity;

import jakarta.persistence.*;

import java.sql.Timestamp;
import java.util.Objects;

@Entity
@Table(name = "workorder_material", schema = "public", catalog = "uikjzbfs")
public class WorkorderMaterialEntity {
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    @Column(name = "id", nullable = false)
    private int id;
    @Basic
    @Column(name = "workorder_id", nullable = false)
    private int workorderId;
    @Basic
    @Column(name = "specoil_barcode", nullable = true, length = -1)
    private String specoilBarcode;
    @Basic
    @Column(name = "specoil_code", nullable = false, length = -1)
    private String specoilCode;
    @Basic
    @Column(name = "specoil_description", nullable = true, length = -1)
    private String specoilDescription;
    @Basic
    @Column(name = "lot", nullable = true, length = -1)
    private String lot;
    @Basic
    @Column(name = "coil_no", nullable = false, length = -1)
    private String coilNo;
    @Basic
    @Column(name = "coil_weight_start", nullable = true, precision = 0)
    private Double coilWeightStart;
    @Basic
    @Column(name = "coil_weight_start_actual", nullable = true, precision = 0)
    private Double coilWeightStartActual;
    @Basic
    @Column(name = "coil_weight_estimate", nullable = true, precision = 0)
    private Double coilWeightEstimate;
    @Basic
    @Column(name = "coil_weight_actual", nullable = true, precision = 0)
    private Double coilWeightActual;
    @Basic
    @Column(name = "coil_weight_remaining", nullable = true, precision = 0)
    private Double coilWeightRemaining;
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

    public String getSpecoilBarcode() {
        return specoilBarcode;
    }

    public void setSpecoilBarcode(String specoilBarcode) {
        this.specoilBarcode = specoilBarcode;
    }

    public String getSpecoilCode() {
        return specoilCode;
    }

    public void setSpecoilCode(String specoilCode) {
        this.specoilCode = specoilCode;
    }

    public String getSpecoilDescription() {
        return specoilDescription;
    }

    public void setSpecoilDescription(String specoilDescription) {
        this.specoilDescription = specoilDescription;
    }

    public String getLot() {
        return lot;
    }

    public void setLot(String lot) {
        this.lot = lot;
    }

    public String getCoilNo() {
        return coilNo;
    }

    public void setCoilNo(String coilNo) {
        this.coilNo = coilNo;
    }

    public Double getCoilWeightStart() {
        return coilWeightStart;
    }

    public void setCoilWeightStart(Double coilWeightStart) {
        this.coilWeightStart = coilWeightStart;
    }

    public Double getCoilWeightStartActual() {
        return coilWeightStartActual;
    }

    public void setCoilWeightStartActual(Double coilWeightStartActual) {
        this.coilWeightStartActual = coilWeightStartActual;
    }

    public Double getCoilWeightEstimate() {
        return coilWeightEstimate;
    }

    public void setCoilWeightEstimate(Double coilWeightEstimate) {
        this.coilWeightEstimate = coilWeightEstimate;
    }

    public Double getCoilWeightActual() {
        return coilWeightActual;
    }

    public void setCoilWeightActual(Double coilWeightActual) {
        this.coilWeightActual = coilWeightActual;
    }

    public Double getCoilWeightRemaining() {
        return coilWeightRemaining;
    }

    public void setCoilWeightRemaining(Double coilWeightRemaining) {
        this.coilWeightRemaining = coilWeightRemaining;
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
        WorkorderMaterialEntity that = (WorkorderMaterialEntity) o;
        return id == that.id && workorderId == that.workorderId && Objects.equals(specoilBarcode, that.specoilBarcode) && Objects.equals(specoilCode, that.specoilCode) && Objects.equals(specoilDescription, that.specoilDescription) && Objects.equals(lot, that.lot) && Objects.equals(coilNo, that.coilNo) && Objects.equals(coilWeightStart, that.coilWeightStart) && Objects.equals(coilWeightStartActual, that.coilWeightStartActual) && Objects.equals(coilWeightEstimate, that.coilWeightEstimate) && Objects.equals(coilWeightActual, that.coilWeightActual) && Objects.equals(coilWeightRemaining, that.coilWeightRemaining) && Objects.equals(status, that.status) && Objects.equals(isValid, that.isValid) && Objects.equals(createBy, that.createBy) && Objects.equals(createDatetime, that.createDatetime) && Objects.equals(modifyBy, that.modifyBy) && Objects.equals(modifyDatetime, that.modifyDatetime);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, workorderId, specoilBarcode, specoilCode, specoilDescription, lot, coilNo, coilWeightStart, coilWeightStartActual, coilWeightEstimate, coilWeightActual, coilWeightRemaining, status, isValid, createBy, createDatetime, modifyBy, modifyDatetime);
    }
}
