//
//  User.swift
//  Tarea04.U3.Cesar.Soto
//
//  Created by Cesar Soto Alarcon on 19-01-16.
//  Copyright © 2016 Cesar Soto Alarcon. All rights reserved.
//

import Foundation

public class User{
    private var user:String
    private var pass:String
    
    public init(us:String,psw:String)
    {
        self.user=us
        self.pass=psw
    }
    //Creamos el método de getUser para obtener el usuario
    public func getUser()->String{
        return user
    }
    //Creamos el método de getPass para obtener la contraseña del vendedor
    public func getPass()->String{
        return pass
    }
    public func setUser(us: String)
    {
        self.user=us
    }
    public func setPass(psw:String)
    {
        self.pass=psw
    }

}