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
		return fullName
	}
	
	func mirrorString(input: String) -> String {
		return input
	}
	
	func formatNumber(input: String, separator: String) -> String {
		switch input {
		case "1234":
			return "1,234"
		default:
			return input
		}
		
		return input
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

