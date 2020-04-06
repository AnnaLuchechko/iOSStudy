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
		for i in stride(from: 1, to: 10, by: 2).reversed() {
			print(10 - i)
		}
		
		return 0
	}
	
	func sortArrayAndRemoveDuplicates(input: [Int]) -> [Int] {
		return []
	}
	
	func translite(input: String) -> String {
		return ""
	}
	
	func sortArray(input: [String], searchRequest: String) -> [String] {
		return []
	}
	
	func filterText(input: String, bannedWords: [String]) -> String {
		return ""
	}

}

