//
//  UserTests.swift
//  Tarea04.U3.Cesar.Soto
//
//  Created by Cesar Soto Alarcon on 19-01-16.
//  Copyright © 2016 Cesar Soto Alarcon. All rights reserved.
//

import UIKit
import Tarea04_U3_Cesar_Soto
import XCTest


class UserTest: XCTestCase {
    
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            var users=[User]()
            var j=0
            var i=1
            let totReg=12
            //Cargamos la lista de Usuarios en forma desordenada
            users+=[User(us:"Juan",psw:"34"),User(us:"Pedro",psw:"11"),User(us:"Ana",psw:"12"),User(us:"Matias",psw:"09"),
                User(us:"Barbara",psw:"99"),User(us:"Carlos",psw:"77"),User(us:"Francisca",psw:"44"),User(us:"Dario",psw:"19"),
                User(us:"Luisa",psw:"22"),User(us:"Ulises",psw:"11"),User(us:"Ximena",psw:"88"),User(us:"Andres",psw:"77")]
            //Aplicamos el Algoritmo de Ordenamiento de Inserción.
            
            while(i<=totReg){
                var aux=users[i]
                aux=users[i]
                j=i-1
                while(j>0 && users[j].getUser()>aux.getUser()){
                    users[j+1]=users[j]
                    j--
                }
                users[j+1]=aux
                i++
            }
            //Recorremos el Arreglo para mostrar los datos Ordenados
            for u in users{
                print(u.getUser() + "\n")
            }
            
            // Put the code you want to measure the time of here.
        }
    }
    
}
