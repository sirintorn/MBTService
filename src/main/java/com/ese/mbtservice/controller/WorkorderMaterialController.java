package com.ese.mbtservice.controller;

import com.ese.mbtservice.entity.WorkorderMaterialEntity;
import com.ese.mbtservice.repository.WorkorderMaterialRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;


@RestController
@RequestMapping(path = "api")
public class WorkorderMaterialController {
    @Autowired
    private WorkorderMaterialRepository workOrderMaterialRepository;

    @GetMapping(path = "getWorkOrderMaterial")
    @CrossOrigin(origins = "http://localhost:4200")
    public Page<WorkorderMaterialEntity> all (Pageable pageable) {return workOrderMaterialRepository.findAll(pageable);}

    @GetMapping(path = "getWorkOrderMaterial/{workorderId}")
    @CrossOrigin(origins = "http://localhost:4200")
    public List<WorkorderMaterialEntity> findByWorkOrderId(@PathVariable Integer workorderId){
        return workOrderMaterialRepository.findByWorkorderId(workorderId);
    }

    @PostMapping(path = "postWorkOrderMaterial")
    @CrossOrigin(origins = "http://localhost:4200")
    @ResponseStatus(code = HttpStatus.CREATED)
    public WorkorderMaterialEntity save(@RequestBody WorkorderMaterialEntity workorderMaterialEntity){
        return workOrderMaterialRepository.save(workorderMaterialEntity);
    }

    @PutMapping(path = "putWorkOrderMaterial/{workOrderMaterialId}")
    @CrossOrigin(origins = "http://localhost:4200")
    public Optional<ResponseEntity<WorkorderMaterialEntity>> updateWorkOrderMaterial(@PathVariable Integer workOrderMaterialId, @RequestBody WorkorderMaterialEntity newWorkOrderMaterialEntity){
        return workOrderMaterialRepository.findById(workOrderMaterialId).map(workOrderMaterialEntity -> {
            workOrderMaterialEntity.setCoilWeightStartActual(newWorkOrderMaterialEntity.getCoilWeightStartActual());
            workOrderMaterialEntity.setCoilWeightActual(newWorkOrderMaterialEntity.getCoilWeightActual());
            workOrderMaterialEntity.setCoilWeightRemaining(newWorkOrderMaterialEntity.getCoilWeightRemaining());
            workOrderMaterialEntity.setStatus(newWorkOrderMaterialEntity.getStatus());
            workOrderMaterialEntity.setValid(newWorkOrderMaterialEntity.getValid());
            workOrderMaterialEntity.setModifyBy(newWorkOrderMaterialEntity.getModifyBy());
            workOrderMaterialEntity.setModifyDatetime(newWorkOrderMaterialEntity.getModifyDatetime());
            return ResponseEntity.ok(workOrderMaterialEntity);
        });
    }
}
