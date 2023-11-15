package com.ese.mbtservice.controller;

import com.ese.mbtservice.entity.LocationEntity;
import com.ese.mbtservice.repository.LocationRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(path = "api")
public class LocationController {

    @Autowired
    private LocationRepository locationRepository;

    @GetMapping(path = "getLocation")
    @CrossOrigin(origins = "http://localhost:4200")
    public Page<LocationEntity> all (Pageable pageable){ return locationRepository.findAll(pageable);}
}
