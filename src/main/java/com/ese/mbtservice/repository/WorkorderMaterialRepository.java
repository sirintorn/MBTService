package com.ese.mbtservice.repository;

import com.ese.mbtservice.entity.WorkorderMaterialEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.web.bind.annotation.CrossOrigin;

import java.util.List;

@CrossOrigin(origins = "http://localhost:4200")

public interface WorkorderMaterialRepository extends JpaRepository<WorkorderMaterialEntity, Integer>, JpaSpecificationExecutor<WorkorderMaterialEntity> {

     List<WorkorderMaterialEntity> findByWorkorderId(int workorderId);
}
