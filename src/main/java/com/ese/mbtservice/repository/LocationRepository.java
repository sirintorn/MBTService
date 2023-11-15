package com.ese.mbtservice.repository;

import com.ese.mbtservice.entity.LocationEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.web.bind.annotation.CrossOrigin;

@CrossOrigin(origins = "http://localhost:4200")

public interface LocationRepository extends JpaRepository<LocationEntity, Integer>, JpaSpecificationExecutor<LocationEntity> {

}
