package co.grandcircus.grading;

//import java.util.List;
//import java.util.Optional;

import org.springframework.data.mongodb.repository.MongoRepository;

public interface GradesRepository extends MongoRepository<Grade, String> {
	
	
}
