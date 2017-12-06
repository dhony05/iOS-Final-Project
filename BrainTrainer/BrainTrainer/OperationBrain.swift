//
//  OperationBrain.swift
//  BrainTrainer
//
//  Created by User on 12/4/17.
//  Copyright © 2017 Donelys.familia. All rights reserved.
//

import UIKit

class OperationBrain{
    // idea :
    //when the user select the type of game , take the info from this class
    //show the time
    //show  the score 
    //after finish a game-operation another will come up to 5
    //if user the score will determine with the user win or lose , every game will have 20 points  if user got 60 or more points he won.
    
    
    
    
    
    
//    var number_1 = arc4random_uniform(100)
//    var number_2 = arc4random_uniform(100)
    
    
    let possibleAnswerArr = [arc4random_uniform(100),arc4random_uniform(100),arc4random_uniform(100), /*result*/ ]

    
    private var accomulator = 0.0
    
    
    private var trankingString = ""
    
    
    
    var description: String{
        get {
            return trankingString
        }
    }
    
    
    
    
    
    
    
    private enum Operation{
        case BinaryOperation((UInt32,UInt32)->UInt32)
    }
    
    private var OperationDictionary: Dictionary<String, Operation> =
    [  "addition": Operation.BinaryOperation({ $0 + $1}),
        "substraction": Operation.BinaryOperation({ $0 - $1}),
        "multiplication": Operation.BinaryOperation({ $0 * $1}),
        "division": Operation.BinaryOperation({ $0 / $1}),
    
    
    ]

    
    private var userOperarationProcess: ProcessingOperation?

    private struct ProcessingOperation{
    let function:(UInt32,UInt32) ->UInt32
        let operand1:UInt32
    func performing(with operand2:UInt32)-> UInt32{
        return function (operand1,operand2)
        }
    }



    public func OperationInPerform(_ operationName:String){
        if let insideOperation = OperationDictionary [operationName]{
        switch insideOperation{
            
        case .BinaryOperation(let function):
          userOperarationProcess =  ProcessingOperation(function: function,operand1:UInt32(accomulator))
             trankingString += operationName
            
     
        }
        
    }

    }
    public func settingOperand(_ operand: UInt32){
        accomulator = Double(operand)
    }

    var result: Double!{
        get{
            return accomulator
        }
    }



}
