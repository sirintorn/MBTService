package com.ese.mbtservice.repository;

import com.ese.mbtservice.entity.WorkorderEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.web.bind.annotation.CrossOrigin;

import java.util.List;

@CrossOrigin(origins = "http://localhost:4200")

public interface WorkOrderRepository extends JpaRepository<WorkorderEntity, Integer>, JpaSpecificationExecutor<WorkorderEntity> {

    List<WorkorderEntity> findByStatus(int workOrderStatus) ;

    List<WorkorderEntity> findByMachineId(int machineId);

}
