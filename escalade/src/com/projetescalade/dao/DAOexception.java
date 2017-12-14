package com.projetescalade.dao;

public class DAOexception extends RuntimeException {
	/*
     * Constructeurs
     */
    public DAOexception( String message ) {
        super( message );
    }

    public DAOexception( String message, Throwable cause ) {
        super( message, cause );
    }

    public DAOexception( Throwable cause ) {
        super( cause );
    }

}
