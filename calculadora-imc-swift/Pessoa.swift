//
//  Pessoa.swift
//  calculadora-imc-swift
//
//  Created by Usuário Convidado on 01/07/17.
//  Copyright © 2017 Heider Lopes. All rights reserved.
//

import Foundation

class Pessoa {
    var nome: String!
    var peso:Float!
    var altura:Float!
    var imc:Float!
    
    func calcularIMC() {
        imc = peso / (altura * altura)
    }
    
    func calcularIMC_2() -> Float {
        return peso / (altura * altura)
    }
    
    func avaliarIMC() -> String {
        var avaliacao:String! = ""
        
        if(imc < 15) {
            avaliacao = "extremamente abaixo do peso"
        } else if(imc < 16) {
            avaliacao = "gravemente abaixo do peso"
        } else if(imc < 18.5) {
            avaliacao = "abaixo o peso ideal"
        } else if(imc < 25) {
            avaliacao = "peso ideal"
        } else if(imc < 30) {
            avaliacao = "sobrepeso"
        } else if(imc < 35) {
            avaliacao = "obesidade grau I"
        } else if(imc < 40) {
            avaliacao = "obesidade grau II (grave)"
        } else {
            avaliacao = "obesidade grau III (mórbida)"
        }
        return avaliacao
    }
    
    init() {
        
    }
    
    init(nome:String, peso: Float, altura: Float) {
        self.nome = nome
        self.peso = peso
        self.altura = altura
        self.imc = calcularIMC_2()
    }
    
}
