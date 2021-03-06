package com.pms.dao;

import java.util.ArrayList;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.pms.model.Drugs;
import com.pms.model.PresDrugs;

@Repository
public interface DrugRepository extends CrudRepository<Drugs, Integer> {

	ArrayList<Drugs> findByNameLike(String string);

	ArrayList<Drugs> findByPrice(String string);

	ArrayList<Drugs> findAllById(int id);

}
