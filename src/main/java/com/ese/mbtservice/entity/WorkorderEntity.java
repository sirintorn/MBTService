package com.ese.mbtservice.entity;

import jakarta.persistence.*;

import java.sql.Date;
import java.sql.Timestamp;
import java.util.Objects;

@Entity
@Table(name = "workorder", schema = "public", catalog = "uikjzbfs")
public class WorkorderEntity {
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    @Column(name = "id", nullable = false)
    private int id;
    @Basic
    @Column(name = "wo_id", nullable = false, length = -1)
    private String woId;
    @Basic
    @Column(name = "wo_barcode", nullable = false, length = -1)
    private String woBarcode;
    @Basic
    @Column(name = "wo_date", nullable = false)
    private Date woDate;
    @Basic
    @Column(name = "ipo", nullable = false, length = -1)
    private String ipo;
    @Basic
    @Column(name = "prq_id", nullable = false, length = -1)
    private String prqId;
    @Basic
    @Column(name = "project", nullable = true, length = -1)
    private String project;
    @Basic
    @Column(name = "prd_completion_deadline", nullable = false)
    private Date prdCompletionDeadline;
    @Basic
    @Column(name = "machine_id", nullable = false)
    private int machineId;
    @Basic
    @Column(name = "labor_qty", nullable = true)
    private Integer laborQty;
    @Basic
    @Column(name = "actual_finish", nullable = true)
    private Timestamp actualFinish;
    @Basic
    @Column(name = "actual_start", nullable = true)
    private Timestamp actualStart;
    @Basic
    @Column(name = "fg_total_weight", nullable = true, precision = 0)
    private Double fgTotalWeight;
    @Basic
    @Column(name = "downgread_15", nullable = true)
    private Short downgread15;
    @Basic
    @Column(name = "downgrade_22", nullable = true)
    private Integer downgrade22;
    @Basic
    @Column(name = "downgrade_3", nullable = true)
    private Integer downgrade3;
    @Basic
    @Column(name = "downgrade_weight", nullable = true, precision = 0)
    private Double downgradeWeight;
    @Basic
    @Column(name = "scrap_weight", nullable = true, precision = 0)
    private Double scrapWeight;
    @Basic
    @Column(name = "downtime", nullable = true)
    private Integer downtime;
    @Basic
    @Column(name = "setuptime", nullable = true)
    private Integer setuptime;
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

    public String getWoId() {
        return woId;
    }

    public void setWoId(String woId) {
        this.woId = woId;
    }

    public String getWoBarcode() {
        return woBarcode;
    }

    public void setWoBarcode(String woBarcode) {
        this.woBarcode = woBarcode;
    }

    public Date getWoDate() {
        return woDate;
    }

    public void setWoDate(Date woDate) {
        this.woDate = woDate;
    }

    public String getIpo() {
        return ipo;
    }

    public void setIpo(String ipo) {
        this.ipo = ipo;
    }

    public String getPrqId() {
        return prqId;
    }

    public void setPrqId(String prqId) {
        this.prqId = prqId;
    }

    public String getProject() {
        return project;
    }

    public void setProject(String project) {
        this.project = project;
    }

    public Date getPrdCompletionDeadline() {
        return prdCompletionDeadline;
    }

    public void setPrdCompletionDeadline(Date prdCompletionDeadline) {
        this.prdCompletionDeadline = prdCompletionDeadline;
    }

    public int getMachineId() {
        return machineId;
    }

    public void setMachineId(int machineId) {
        this.machineId = machineId;
    }

    public Integer getLaborQty() {
        return laborQty;
    }

    public void setLaborQty(Integer laborQty) {
        this.laborQty = laborQty;
    }

    public Timestamp getActualFinish() {
        return actualFinish;
    }

    public void setActualFinish(Timestamp actualFinish) {
        this.actualFinish = actualFinish;
    }

    public Timestamp getActualStart() {
        return actualStart;
    }

    public void setActualStart(Timestamp actualStart) {
        this.actualStart = actualStart;
    }

    public Double getFgTotalWeight() {
        return fgTotalWeight;
    }

    public void setFgTotalWeight(Double fgTotalWeight) {
        this.fgTotalWeight = fgTotalWeight;
    }

    public Short getDowngread15() {
        return downgread15;
    }

    public void setDowngread15(Short downgread15) {
        this.downgread15 = downgread15;
    }

    public Integer getDowngrade22() {
        return downgrade22;
    }

    public void setDowngrade22(Integer downgrade22) {
        this.downgrade22 = downgrade22;
    }

    public Integer getDowngrade3() {
        return downgrade3;
    }

    public void setDowngrade3(Integer downgrade3) {
        this.downgrade3 = downgrade3;
    }

    public Double getDowngradeWeight() {
        return downgradeWeight;
    }

    public void setDowngradeWeight(Double downgradeWeight) {
        this.downgradeWeight = downgradeWeight;
    }

    public Double getScrapWeight() {
        return scrapWeight;
    }

    public void setScrapWeight(Double scrapWeight) {
        this.scrapWeight = scrapWeight;
    }

    public Integer getDowntime() {
        return downtime;
    }

    public void setDowntime(Integer downtime) {
        this.downtime = downtime;
    }

    public Integer getSetuptime() {
        return setuptime;
    }

    public void setSetuptime(Integer setuptime) {
        this.setuptime = setuptime;
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
        WorkorderEntity that = (WorkorderEntity) o;
        return id == that.id && machineId == that.machineId && Objects.equals(woId, that.woId) && Objects.equals(woBarcode, that.woBarcode) && Objects.equals(woDate, that.woDate) && Objects.equals(ipo, that.ipo) && Objects.equals(prqId, that.prqId) && Objects.equals(project, that.project) && Objects.equals(prdCompletionDeadline, that.prdCompletionDeadline) && Objects.equals(laborQty, that.laborQty) && Objects.equals(actualFinish, that.actualFinish) && Objects.equals(actualStart, that.actualStart) && Objects.equals(fgTotalWeight, that.fgTotalWeight) && Objects.equals(downgread15, that.downgread15) && Objects.equals(downgrade22, that.downgrade22) && Objects.equals(downgrade3, that.downgrade3) && Objects.equals(downgradeWeight, that.downgradeWeight) && Objects.equals(scrapWeight, that.scrapWeight) && Objects.equals(downtime, that.downtime) && Objects.equals(setuptime, that.setuptime) && Objects.equals(status, that.status) && Objects.equals(isValid, that.isValid) && Objects.equals(createBy, that.createBy) && Objects.equals(createDatetime, that.createDatetime) && Objects.equals(modifyBy, that.modifyBy) && Objects.equals(modifyDatetime, that.modifyDatetime);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, woId, woBarcode, woDate, ipo, prqId, project, prdCompletionDeadline, machineId, laborQty, actualFinish, actualStart, fgTotalWeight, downgread15, downgrade22, downgrade3, downgradeWeight, scrapWeight, downtime, setuptime, status, isValid, createBy, createDatetime, modifyBy, modifyDatetime);
    }
}
