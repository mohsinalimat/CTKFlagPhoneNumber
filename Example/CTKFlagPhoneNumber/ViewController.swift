//
//  ViewController.swift
//  CTKFlagPhoneNumber
//
//  Created by grifas on 06/08/2017.
//  Copyright (c) 2017 grifas. All rights reserved.
//

import UIKit
import CTKFlagPhoneNumber

class ViewController: UIViewController {
	
	var phoneNumberTextField: CTKFlagPhoneNumberTextField!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		
		title = "CTKFlagPhoneNumber"

		//		Bundle.FlagIcons = Bundle(for: ViewController.self)

		phoneNumberTextField = CTKFlagPhoneNumberTextField(frame: CGRect(x: 0, y: 0, width: view.bounds.width - 16, height: 50))
		phoneNumberTextField.parentViewController = self
		phoneNumberTextField.center = view.center
		phoneNumberTextField.setFlag(with: "FR")
		phoneNumberTextField.set(phoneNumber: "0600000001")
		phoneNumberTextField.flagSize = CGSize(width: 44, height: 44)

		view.addSubview(phoneNumberTextField)

		let button = UIButton(type: .system)
		
		button.frame = CGRect(x: 0, y: 0, width: 50, height: 44)
		button.center = CGPoint(x: view.center.x, y: view.center.y + 60)
		button.setTitle("Ok", for: .normal)
		button.addTarget(self, action: #selector(validate), for: .touchUpInside)

		view.addSubview(button)
	}
	
	override func viewDidAppear(_ animated: Bool) {
		super.viewDidAppear(animated)
	}
	
	@objc func validate() {
		let phoneNumber: String? = phoneNumberTextField.getPhoneNumber()
		
		print(phoneNumber ?? "No phone number")
	}
}

