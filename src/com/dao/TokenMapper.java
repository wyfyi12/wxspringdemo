package com.dao;

import com.entities.TokenEntity;

public interface TokenMapper {
	public TokenEntity getToken(String type);
	public int insertToken(TokenEntity Entity);
	public void updateToken(TokenEntity Entity);
}
