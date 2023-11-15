package com.ese.mbtservice.entity;

import jakarta.persistence.*;

import java.sql.Timestamp;
import java.util.Objects;

@Entity
@Table(name = "stakeholder", schema = "public", catalog = "uikjzbfs")
public class StakeholderEntity {
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    @Column(name = "id", nullable = false)
    private int id;
    @Basic
    @Column(name = "name", nullable = false, length = -1)
    private String name;
    @Basic
    @Column(name = "department", nullable = true, length = -1)
    private String department;
    @Basic
    @Column(name = "username", nullable = false, length = -1)
    private String username;
    @Basic
    @Column(name = "password", nullable = false, length = -1)
    private String password;
    @Basic
    @Column(name = "email", nullable = true, length = -1)
    private String email;
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

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
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
        StakeholderEntity that = (StakeholderEntity) o;
        return id == that.id && Objects.equals(name, that.name) && Objects.equals(department, that.department) && Objects.equals(username, that.username) && Objects.equals(password, that.password) && Objects.equals(email, that.email) && Objects.equals(isValid, that.isValid) && Objects.equals(createBy, that.createBy) && Objects.equals(createDatetime, that.createDatetime) && Objects.equals(modifyBy, that.modifyBy) && Objects.equals(modifyDatetime, that.modifyDatetime);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, name, department, username, password, email, isValid, createBy, createDatetime, modifyBy, modifyDatetime);
    }
}
