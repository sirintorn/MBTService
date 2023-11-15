package com.ese.mbtservice.controller;

import com.ese.mbtservice.entity.MachineEntity;
import com.ese.mbtservice.exception.ResourceNotFoundException;
import com.ese.mbtservice.repository.MachineRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;



@RestController
@RequestMapping(path = "api")
public class MachineController {

    @Autowired
    private MachineRepository machineRepository;

    @GetMapping(path = "getMachine")
    @CrossOrigin(origins = "http://localhost:4200")
    public Page<MachineEntity> all (Pageable pageable) {return machineRepository.findAll(pageable); }

    @PostMapping(path = "postMachine")
    @CrossOrigin(origins = "http://localhost:4800")
    @ResponseStatus(code = HttpStatus.CREATED)
    public MachineEntity save(@RequestBody MachineEntity machineEntity){
        return machineRepository.save(machineEntity);
    }

    @DeleteMapping(path = "delMachine/{machineId}")
    @CrossOrigin(origins = "http://localhost:4200")
    public ResponseEntity<?> deleteMachine(@PathVariable int machineId){
        return machineRepository.findById(machineId).map(machineEntity -> {
            machineRepository.delete(machineEntity);
            return ResponseEntity.ok().build();
        }
        ).orElseThrow(() -> new ResourceNotFoundException("machine [Machine = "+machineId+" ] can't be found"));
    }

    @PutMapping(path = "putMachine/{machineId}")
    @CrossOrigin(origins = "http://localhost:4800")
    public ResponseEntity<MachineEntity> updateMachine(@PathVariable Integer machineId, @RequestBody MachineEntity newMachineEntity){
        return machineRepository.findById(machineId).map(machineEntity -> {
            machineEntity.setName(newMachineEntity.getName());
            machineEntity.setLocationId(newMachineEntity.getLocationId());
            machineEntity.setDescription(newMachineEntity.getDescription());
            machineEntity.setValid(newMachineEntity.getValid());
            machineEntity.setModifyBy(newMachineEntity.getModifyBy());
            machineEntity.setModifyDatetime(newMachineEntity.getModifyDatetime());
            return ResponseEntity.ok(machineEntity);
        }).orElseThrow(()-> new ResourceNotFoundException("Machine [Machine = "+machineId+" ] can't be found"));
    }
}
