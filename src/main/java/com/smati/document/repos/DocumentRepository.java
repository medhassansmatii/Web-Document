package com.smati.document.repos;

import org.springframework.data.jpa.repository.JpaRepository;

import com.smati.document.entities.Document;

public interface DocumentRepository extends JpaRepository<Document, Long>{

}
