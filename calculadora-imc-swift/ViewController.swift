//
//  ViewController.swift
//  calculadora-imc-swift
//
//  Created by Usuário Convidado on 01/07/17.
//  Copyright © 2017 Heider Lopes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtNome: UITextField!
    @IBOutlet weak var txtPeso: UITextField!
    @IBOutlet weak var txtAltura: UITextField!
    @IBOutlet weak var txtIMC: UITextField!
    
    @IBOutlet weak var txtAvaliacao: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func calcular(_ sender: Any) {
        
        let p:Pessoa = Pessoa()
        p.nome = txtNome.text
        p.peso = Float(txtPeso.text!)
        p.altura = Float(txtAltura.text!)
        p.calcularIMC()
        txtIMC.text = String(format: "%.2f",p.imc!)
        
        let avaliacao:String = p.avaliarIMC()
        
        txtAvaliacao.text = "\(p.nome!) seu imc esta na faixa de avaliacao "
        
        switch avaliacao {
        
        case "extremamente abaixo do peso":
            txtAvaliacao.textColor = UIColor.red
            break
            
        case "gravemente abaixo do peso":
            txtAvaliacao.textColor = UIColor.red
            break
            
        case "abaixo o peso ideal":
            txtAvaliacao.textColor = UIColor.orange
            break
            
        case "peso ideal":
            txtAvaliacao.textColor = UIColor.green
            break
            
        case "sobrepeso":
            txtAvaliacao.textColor = UIColor.orange
            break
            
        case "obesidade grau I":
            txtAvaliacao.textColor = UIColor.red
            break
            
        case "obesidade grau II (grave)":
            txtAvaliacao.textColor = UIColor.red
            break
            
        case "obesidade grau III (mórbida)":
            txtAvaliacao.textColor = UIColor.red
            break
            
        default:
            break
        }
    }
}

