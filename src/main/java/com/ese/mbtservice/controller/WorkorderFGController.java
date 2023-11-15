package com.ese.mbtservice.controller;

import com.ese.mbtservice.entity.WorkorderFGEntity;
import com.ese.mbtservice.repository.WorkorderFGRepository;
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
public class WorkorderFGController {
    @Autowired
    private WorkorderFGRepository workOrderFGRepository;


    @GetMapping(path = "getWorkOrderFG")
    @CrossOrigin(origins = "http://localhost:4200")
    public Page<WorkorderFGEntity> all (Pageable pageable){
        return workOrderFGRepository.findAll(pageable);
    }

    @GetMapping(path = "getWorkOrderFG/{workorderId}")
    @CrossOrigin(origins = "http://localhost:4200")
    public List<WorkorderFGEntity> findByWorkOrderId(@PathVariable Integer workorderId){
        return workOrderFGRepository.findByWorkorderId(workorderId);
    }

    @PostMapping(path = "postWorkOrderFG")
    @CrossOrigin(origins = "http://localhost:4200")
    @ResponseStatus(code = HttpStatus.CREATED)
    public WorkorderFGEntity save(@RequestBody WorkorderFGEntity workorderFGEntity){
        return workOrderFGRepository.save(workorderFGEntity);
    }

    @PutMapping(path = "putWorkOrderFG/{workOrderFGId}")
    @CrossOrigin(origins = "http://localhost:4200")
    public Optional<ResponseEntity<WorkorderFGEntity>> updateWorkOrderFG(@PathVariable Integer workOrderFGId, @RequestBody WorkorderFGEntity newWorkOrderFGEntity) {
        return workOrderFGRepository.findById(workOrderFGId).map(workOrderFGEntity -> {
            workOrderFGEntity.setFgQtyActual(newWorkOrderFGEntity.getFgQtyActual());
            workOrderFGEntity.setFgBundle(newWorkOrderFGEntity.getFgBundle());
            workOrderFGEntity.setFgWeightActual(newWorkOrderFGEntity.getFgWeightActual());
            workOrderFGEntity.setStatus(newWorkOrderFGEntity.getStatus());
            workOrderFGEntity.setValid(newWorkOrderFGEntity.getValid());
            workOrderFGEntity.setModifyBy(newWorkOrderFGEntity.getModifyBy());
            workOrderFGEntity.setModifyDatetime(newWorkOrderFGEntity.getModifyDatetime());
            return ResponseEntity.ok(workOrderFGEntity);
        });
    }
}
