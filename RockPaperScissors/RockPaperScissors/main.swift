//
//  RockPaperScissors - main.swift
//  Created by Baem, Dragon
//  Copyright © yagom academy. All rights reserved.
// 

func gameStart() -> Int? {
    print("가위(1), 바위(2), 보(3)! <종료 : 0> : ", terminator: "")
    let userInput = readLine()
    guard let userInput = userInput else { return nil }
    
    return Int(userInput)
}

func isCorrectUserInput(_ userInput:Int) -> Bool {
    if userInput < 0, userInput >= 4 {
        print("잘못된 입력입니다. 다시 시도해주세요.")
        return false
    }
    return true
}

func createComputerInput() -> Int {
    let computerInput = Int.random(in: 1...3)
    
    return computerInput
}
