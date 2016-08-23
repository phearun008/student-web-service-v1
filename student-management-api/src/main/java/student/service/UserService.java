package student.service;

import student.entity.User;

public interface UserService {
	public User findUserByEmail(String email);
}
