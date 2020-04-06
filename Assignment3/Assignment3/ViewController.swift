//
//  ViewController.swift
//  Assignment3
//
//  Created by Ivan Vasilevich on 04.03.2020.
//  Copyright © 2020 RockSoft. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
	}
	
    func countStringCharacters(name: String) -> Int {
        return name.count
    }
	
	func checkPatronomic(name: String) -> Bool {
        if name.hasSuffix("ich") || name.hasSuffix("na") {
            return true
        }
		return false
	}
	
	func divideCredentials(fullName: String) -> String {
        var dividedFullname: String = ""
        for char in fullName {
            if char != fullName.first && char.isUppercase  {
                dividedFullname += " " + String (char)
            } else {
                dividedFullname += String(char)
            }
        }
        return dividedFullname
	}
	
	func mirrorString(input: String) -> String {
        var reversedString: String = ""
        for char in input {
            reversedString = String(char) + reversedString
        }
        return reversedString
	}
	
	func formatNumber(input: String, separator: String) -> String {
        var newInput: String = input
        var insertOffset: Int = -3
        var insertCount: Int = 0
        let inserts: Double = Double(input.count / 3)
        
        if input.count % 3 > 0 {
          insertCount = Int(inserts)
        } else {
          insertCount = Int(inserts) - 1
        }
         
        if input.count > 3 {
          for _ in 0..<insertCount {
            newInput.insert(Character(separator), at: newInput.index(newInput.endIndex, offsetBy: insertOffset))
            insertOffset = insertOffset - 4
          }
        }
        
        return newInput
	}
	
	func checkPassword(password: String) -> Int {
        var mark: Int = 0
             
        let lowercaseLetterRegEx = ".*[a-z]+.*"
        let lowercaseTest = NSPredicate(format:"SELF MATCHES %@", lowercaseLetterRegEx)
        if lowercaseTest.evaluate(with: password) {
          print("lowercaseTest")
          mark += 1
        }
         
        let uppercaseLetterRegEx = ".*[A-Z]+.*"
        let uppercaseTest = NSPredicate(format:"SELF MATCHES %@", uppercaseLetterRegEx)
        if uppercaseTest.evaluate(with: password) {
          print("uppercaseTest")
          mark += 1
        }
         
        let numberRegEx = ".*[0-9]+.*"
        let numberTest = NSPredicate(format:"SELF MATCHES %@", numberRegEx)
        if numberTest.evaluate(with: password) {
          print("numberTest")
          mark += 1
        }
         
        let specialCharRegEx = ".*[!&^%$#@()/]+.*"
        let specialCharTest = NSPredicate(format:"SELF MATCHES %@", specialCharRegEx)
        if specialCharTest.evaluate(with: password) {
          print("specialCharTest")
          mark += 1
        }
         
        if mark > 3 {
          mark += 1
        }
         
        return mark
	}
	
	func sortArrayAndRemoveDuplicates(input: [Int]) -> [Int] {
        var result: [Int] = input
        result = Array(Set(result))
        return result.sorted()
	}
	
	func translite(input: String) -> String {
        var newInput: String = input
         
        let russianUpperDict: [String] = ["А", "Б", "В", "Г", "Д", "Е", "Ё", "Ж", "З", "И", "Й", "К", "Л", "М", "Н", "О", "П", "Р", "С", "Т", "У", "Ф", "Х", "Ц", "Ч", "Ш", "Щ", "Ъ", "Ы", "Ь", "Э", "Ю", "Я"]
        let englishUpperDict: [String] = ["A", "B", "V", "G", "D", "E", "YO", "ZH", "Z", "I", "Y", "K", "L", "M", "N", "O", "P", "R", "S", "T", "U", "F", "KH", "TS", "CH", "Sh", "SHCH", "", "Y", "", "E", "Y", "YA"]
        let russianLowerDict: [String] = ["а", "б", "в", "г", "д", "е", "ё", "ж", "з", "и", "й", "к", "л", "м", "н", "о", "п", "р", "с", "т", "у", "ф", "х", "ц", "ч", "ш", "щ", "ъ", "ы", "ь", "э", "ю", "я"]
        let englishLowerDict: [String] = ["a", "b", "v", "g", "d", "e", "yo", "zh", "z", "i", "y", "k", "l", "m", "n", "o", "p", "r", "s", "t", "u", "f", "kh", "ts", "ch", "sh", "shch", "", "y", "", "e", "yu", "y"]
         
        for index in russianUpperDict.indices {
          newInput = newInput.replacingOccurrences(of: russianUpperDict[index], with: englishUpperDict[index])
          newInput = newInput.replacingOccurrences(of: russianLowerDict[index], with: englishLowerDict[index])
        }
        
        return newInput
        
    }
	
	func sortArray(input: [String], searchRequest: String) -> [String] {
		return []
	}
	
	func filterText(input: String, bannedWords: [String]) -> String {
		return ""
	}

}

