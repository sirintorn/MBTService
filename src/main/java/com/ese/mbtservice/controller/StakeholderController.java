package com.ese.mbtservice.controller;

import com.ese.mbtservice.entity.StakeholderEntity;
import com.ese.mbtservice.repository.StakeholderRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping(path = "api")
public class StakeholderController {

    @Autowired
    private StakeholderRepository stakeholderRepository;

    @GetMapping(path = "getStakeholder")
    @CrossOrigin(origins = "http://localhost:4200")
    public Page<StakeholderEntity> all (Pageable pageable) { return stakeholderRepository.findAll(pageable); }

    @GetMapping(path = "getStakeholder/{username}/{password}")
    @CrossOrigin(origins = "http://localhost:4200")
    public Boolean findByUsernameAndPassword (@PathVariable String username, @PathVariable String password) {
        StakeholderEntity sthe = stakeholderRepository.findByUsernameAndPassword(username, password);
        boolean op = true;
        if(sthe == null){
            return false;
        }
        return op;
    }
}
