//
//  ViewController.swift
//  MVVMSimpleProj
//
//  Created by Ilryc Marokonen on 27.02.2024.
//

import UIKit

class ViewController: UIViewController {
    
    var viewModel = ViewModel()
    
    @IBOutlet weak var loginEnter: UITextField!
    @IBOutlet weak var passwordEnter: UITextField!
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bindViewModel()
        initialState()
    }
    
    func initialState() {
        label.textColor = .clear
    }
    
    func bindViewModel() {
        viewModel.statusText.bind { (statusText) in
            DispatchQueue.main.async {
                self.label.text = statusText
            }
        }
        viewModel.statusColor.bind { (statusColor) in
            DispatchQueue.main.async {
                self.label.textColor = statusColor
            }
        }
    }
    
    @IBAction func loginTapped(_ sender: UIButton) {
        viewModel.userButtonTapped(login: (loginEnter.text ?? ""), password: (passwordEnter.text ?? ""))
    }
    
    
}

