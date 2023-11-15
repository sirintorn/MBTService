package com.ese.mbtservice.repository;

import com.ese.mbtservice.entity.WorkorderFGEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.web.bind.annotation.CrossOrigin;

import java.util.List;

@CrossOrigin(origins = "http://localhost:4200")

public interface WorkorderFGRepository extends JpaRepository<WorkorderFGEntity, Integer>, JpaSpecificationExecutor<WorkorderFGEntity> {
    List<WorkorderFGEntity> findByWorkorderId(int workorderId);

}
