//
//  MainViewController.swift
//  Film Search
//
//  Created by Nicholas Wilding on 12/09/2016.
//  Copyright © 2016 Nicholas Wilding. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    // MARK: - IB Outlets
    
    @IBOutlet weak var searchTextField: UITextField! {
        didSet {
            searchTextField.font = UIFont.systemFont(ofSize: 28.0)
            searchTextField.borderStyle = .none
            let bottomBorder = UIView(frame: CGRect(x: 0, y: 66.0 - 3.0, width: searchTextField.frame.width, height: 1.0))
            bottomBorder.backgroundColor = .gray
            searchTextField.addSubview(bottomBorder)
            searchTextField.layer.masksToBounds = true
            searchTextField.placeholder = "Search...".uppercased()
            searchTextField.addSubview(bottomBorder)
            searchTextField.delegate = self
            searchTextField.addTarget(self, action: .textFieldValueDidChange, for: .editingChanged)
        }
    }
    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var resultsTableView: UITableView! {
        didSet {
            resultsTableView.isHidden = true
        }
    }
    
    // MARK: - Properties
    
    var filmList = [String]()
    
    // MARK: - View Load

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Public
    
    public func textFieldValueDidChange(sender: UITextField) {
        print(sender.text)
    }
}

// MARK: - Delegate: Textfield

extension MainViewController: UITextFieldDelegate {
    

}

// MARK: - Selector

private extension Selector {
    
    static let textFieldValueDidChange = #selector(MainViewController.textFieldValueDidChange(sender:))
}


