package com.ese.mbtservice.controller;

import com.ese.mbtservice.entity.WorkorderEntity;
import com.ese.mbtservice.exception.ResourceNotFoundException;
import com.ese.mbtservice.repository.WorkOrderRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping(path = "api")
public class WorkorderController {
    @Autowired
    private WorkOrderRepository workOrderRepository;

    @GetMapping(path = "WorkOrder")
    @CrossOrigin(origins = "http://localhost:4200")
    public String getHello(@RequestParam(value = "name") String name){
        return "Hello "+name+" !";

    }

    @GetMapping(path = "getWorkOrder")
    @CrossOrigin(origins = "http://localhost:4200")
    public Page<WorkorderEntity> all (Pageable pageable){
        return workOrderRepository.findAll(pageable);
    }

    @GetMapping(path = "getWorkOrder/{workOrderStatus}")
    @CrossOrigin(origins = "http://localhost:4200")
    public List<WorkorderEntity> findByWorkOrderStatus (@PathVariable Integer workOrderStatus){
        return workOrderRepository.findByStatus(workOrderStatus);
    }

    @GetMapping(path = "getMachineWorkOrder/{machineId}")
    @CrossOrigin(origins = "http://localhost:4200")
    public List<WorkorderEntity> findByMachineWorkOrder (@PathVariable Integer machineId){
        return workOrderRepository.findByMachineId(machineId);
    }

    @PostMapping(path = "postWorkOrder")
    @CrossOrigin(origins = "http://localhost:4200")
    @ResponseStatus(code = HttpStatus.CREATED)
    public WorkorderEntity save(@RequestBody WorkorderEntity workorderEntity){
        return workOrderRepository.save(workorderEntity);
    }

    @DeleteMapping(path = "delWorkOrder/{workOrderId}")
    @CrossOrigin(origins = "http://localhost:4200")
    public ResponseEntity<?> deleteWorkOrder(@PathVariable Integer workOrderId){

        return workOrderRepository.findById(workOrderId).map(workorderEntity -> {
            workOrderRepository.delete(workorderEntity);
                    return ResponseEntity.ok().build();
                }
        ).orElseThrow(() -> new ResourceNotFoundException("workOrder [Work Order="+workOrderId+" ] can't be found"));
    }

    @PutMapping(path = "putWorkOrder/{workOrderId}")
    @CrossOrigin(origins = "http://localhost:4200")
    public ResponseEntity<WorkorderEntity> updateWorkOrder(@PathVariable Integer workOrderId, @RequestBody WorkorderEntity newWorkOrderEntity){
        return workOrderRepository.findById(workOrderId).map(workOrderEntity -> {
//            workOrderEntity.setId(newWorkOrderEntity.getId());
            workOrderEntity.setWoId(newWorkOrderEntity.getWoId());
            workOrderEntity.setWoBarcode(newWorkOrderEntity.getWoBarcode());
            workOrderEntity.setWoDate(newWorkOrderEntity.getWoDate());
            workOrderEntity.setIpo(newWorkOrderEntity.getIpo());
            workOrderEntity.setPrqId(newWorkOrderEntity.getPrqId());
            workOrderEntity.setProject(newWorkOrderEntity.getProject());
            workOrderEntity.setPrdCompletionDeadline(newWorkOrderEntity.getPrdCompletionDeadline());
            workOrderEntity.setMachineId(newWorkOrderEntity.getMachineId());
            workOrderEntity.setLaborQty(newWorkOrderEntity.getLaborQty());
            workOrderEntity.setActualStart(newWorkOrderEntity.getActualStart());
            workOrderEntity.setActualFinish(newWorkOrderEntity.getActualFinish());
            workOrderEntity.setFgTotalWeight(newWorkOrderEntity.getFgTotalWeight());
            workOrderEntity.setDowngread15(newWorkOrderEntity.getDowngread15());
            workOrderEntity.setDowngrade22(newWorkOrderEntity.getDowngrade22());
            workOrderEntity.setDowngrade3(newWorkOrderEntity.getDowngrade3());
            workOrderEntity.setDowngradeWeight(newWorkOrderEntity.getDowngradeWeight());
            workOrderEntity.setScrapWeight(newWorkOrderEntity.getScrapWeight());
            workOrderEntity.setDowntime(newWorkOrderEntity.getDowntime());
            workOrderEntity.setSetuptime(newWorkOrderEntity.getSetuptime());
            workOrderEntity.setStatus(newWorkOrderEntity.getStatus());
            workOrderEntity.setValid(newWorkOrderEntity.getValid());
//            workOrderEntity.setCreateBy(newWorkOrderEntity.getCreateBy());
            workOrderEntity.setModifyBy(newWorkOrderEntity.getModifyBy());
            workOrderEntity.setModifyDatetime(newWorkOrderEntity.getModifyDatetime());
            return ResponseEntity.ok(workOrderEntity);
        }).orElseThrow(() -> new ResourceNotFoundException("workOrder [Work Order="+workOrderId+"] can't be found"));
    }

    @PutMapping(path = "putWorkOrderStart/{workOrderId}")
    @CrossOrigin(origins = "http://localhost:4200")
    public ResponseEntity<WorkorderEntity> updateWorkOrderStatus(@PathVariable Integer workOrderId,@RequestBody WorkorderEntity newWorkOrderEntity){
        return workOrderRepository.findById(workOrderId).map(workOrderEntity -> {
            workOrderEntity.setActualStart(newWorkOrderEntity.getActualStart());
            workOrderEntity.setStatus(newWorkOrderEntity.getStatus());
            workOrderEntity.setValid(newWorkOrderEntity.getValid());
            workOrderEntity.setModifyBy(newWorkOrderEntity.getModifyBy());
            workOrderEntity.setModifyDatetime(newWorkOrderEntity.getModifyDatetime());
            return ResponseEntity.ok(workOrderEntity);
        }).orElseThrow(() -> new ResourceNotFoundException("workOrder [Work Order="+workOrderId+"] can't be found"));

    }

    @PutMapping(path = "putWorkOrderFinish/{workOrderId}")
    @CrossOrigin(origins = "http://localhost:4200")
    public ResponseEntity<WorkorderEntity> updateResult(@PathVariable Integer workOrderId,@RequestBody WorkorderEntity newWorkOrderEntity){
        return workOrderRepository.findById(workOrderId).map(workOrderEntity -> {
            workOrderEntity.setLaborQty(newWorkOrderEntity.getLaborQty());
            workOrderEntity.setActualFinish(newWorkOrderEntity.getActualFinish());
            workOrderEntity.setFgTotalWeight(newWorkOrderEntity.getFgTotalWeight());
            workOrderEntity.setDowngread15(newWorkOrderEntity.getDowngread15());
            workOrderEntity.setDowngrade22(newWorkOrderEntity.getDowngrade22());
            workOrderEntity.setDowngrade3(newWorkOrderEntity.getDowngrade3());
            workOrderEntity.setDowngradeWeight(newWorkOrderEntity.getDowngradeWeight());
            workOrderEntity.setScrapWeight(newWorkOrderEntity.getScrapWeight());
            workOrderEntity.setDowntime(newWorkOrderEntity.getDowntime());
            workOrderEntity.setSetuptime(newWorkOrderEntity.getSetuptime());
            workOrderEntity.setStatus(newWorkOrderEntity.getStatus());
            workOrderEntity.setValid(newWorkOrderEntity.getValid());
            workOrderEntity.setModifyBy(newWorkOrderEntity.getModifyBy());
            workOrderEntity.setModifyDatetime(newWorkOrderEntity.getModifyDatetime());
            return ResponseEntity.ok(workOrderEntity);
        }).orElseThrow(() -> new ResourceNotFoundException("workOrder [Work Order="+workOrderId+"] can't be found"));
    }
}
