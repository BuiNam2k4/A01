package com.kurisu.hello.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.kurisu.hello.domain.User;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {
    User save(User user);

}
