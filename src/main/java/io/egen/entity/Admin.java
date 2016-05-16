package io.egen.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public  class Admin {
	private String userid;
	private String password;
	private String firstName;
	private String lastName;
}
