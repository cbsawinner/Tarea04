//
//  Tarea04_U3_Cesar_SotoTests.swift
//  Tarea04.U3.Cesar.SotoTests
//
//  Created by Cesar Soto Alarcon on 19-01-16.
//  Copyright © 2016 Cesar Soto Alarcon. All rights reserved.
//

import XCTest
import UIKit
import Tarea04_U3_Cesar_Soto

@testable import Tarea04_U3_Cesar_Soto

class Tarea04_U3_Cesar_SotoTests: XCTestCase {
   
    
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
        //1era Prueba enviando usuario correcto.
        XCTAssertEqual(User(us:"Juan",psw:"1234").getUser(),"Juan","Prueba de Usuario")
        //2era Prueba enviando usuario incorrecto.
       //XCTAssertEqual(User(us:"Juan",psw:"1234").getUser(),"Pedro","Prueba de Usuario")
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            var users=[User]()
            var aux=[User]()
            var j=0
            var i=1
            let totReg=12
            //Cargamos la lista de Usuarios en forma desordenada
            users+=[User(us:"Juan",psw:"34"),User(us:"Pedro",psw:"11"),User(us:"Ana",psw:"12"),User(us:"Matias",psw:"09"),
                User(us:"Barbara",psw:"99"),User(us:"Carlos",psw:"77"),User(us:"Francisca",psw:"44"),User(us:"Dario",psw:"19"),
                User(us:"Luisa",psw:"22"),User(us:"Ulises",psw:"11"),User(us:"Ximena",psw:"88"),User(us:"Andres",psw:"77")]
            //Inicializamos el Arreglo auxiliar
            aux+=[User(us:"",psw:"")]
            //Aplicamos el Algoritmo de Ordenamiento de Inserción.
            
            while(i<totReg){
                aux[0]=users[i]
                
                j=i-1
                while(j>=0 && users[j].getUser()>aux[0].getUser()){
                    users[j+1]=users[j]
                    j--
                }
                users[j+1]=aux[0]
                i++
            }
            //Recorremos el Arreglo para mostrar los datos Ordenados
            print("Lista Ordenada \n")
            print("--------------- \n")
            for u in users{
                print(u.getUser() + "\n")
            }
            
            // Put the code you want to measure the time of here.
        }
    }

    
}
