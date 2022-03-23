//
//  ViewController.swift
//  Calculator_Shvarts
//
//  Created by Student on 23.03.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var holder: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    var firstNumber = 0
        var resultNumber = 0
        var currentOperations: Operation?
            enum Operation {
            case add, subtract, multiply, divide
        }
        
    private var resultLabel: UILabel = {
            let label = UILabel()
            label.text = "0"
            label.textColor = .white
            label.textAlignment = .right
            label.font =  UIFont(name: "Helvetica", size: 100)
            return label
        }()
    
    private func setupNumberPad() {
        let FontSize:CGFloat = 25
        let buttonSize:CGFloat = view.frame.size.width / 4
        let zeroButton = UIButton(frame: CGRect(x: 0, y: holder.frame.size.height-buttonSize, width: buttonSize*3, height: buttonSize))
        zeroButton.setTitleColor(.black, for: .normal)
        zeroButton.backgroundColor = .white
        zeroButton.setTitle("0", for: .normal)
        zeroButton.titleLabel?.font = UIFont(name: "Helvetica", size: FontSize)
        zeroButton.tag = 1
        holder.addSubview(zeroButton)
        zeroButton.addTarget(self, action: #selector(zeroTapped), for: .touchUpInside)
        for x in 0..<3 {
            let button_row_1 = UIButton(frame: CGRect(x: buttonSize * CGFloat(x), y: holder.frame.size.height-(buttonSize*2), width: buttonSize, height: buttonSize))
            button_row_1.setTitleColor(.black, for: .normal)
            button_row_1.backgroundColor = .white
            button_row_1.setTitle("\(x+1)", for: .normal)
            holder.addSubview(button_row_1)
            button_row_1.tag = x+2
            button_row_1.addTarget(self, action: #selector(numberPressed( :)), for: .touchUpInside)
        }
        for x in 0..<3 {
            let button_row_2 = UIButton(frame: CGRect(x: buttonSize * CGFloat(x), y: holder.frame.size.height-(buttonSize*3), width: buttonSize, height: buttonSize))
            button_row_2.setTitleColor(.black, for: .normal)
            button_row_2.backgroundColor = .white
            button_row_2.setTitle("\(x+4)", for: .normal)
            holder.addSubview(button_row_2)
            button_row_2.tag = x+5
            button_row_2.addTarget(self, action: #selector(numberPressed( :)), for: .touchUpInside)
        }
        
          for x in 0..<3{
              let button_row_3 = UIButton(frame: CGRect(x:0, y: holder.frame.size.height-(buttonSize*5), width: view.frame.size.width - buttonSize, height: buttonSize))
              button_row_3.setTitleColor(.black, for: .normal)
              button_row_3.backgroundColor = .white
              button_row_3.setTitle("\(x+7)", for: .normal)
              holder.addSubview(button_row_3)
              button_row_3.tag = x+8
              button_row_3.addTarget(self, action: #selector(numberPressed( :)), for: .touchUpInside)
          }
        let clearButton = UIButton(frame: CGRect(x: 0, y: holder.frame.size.height-(buttonSize*5), width: view.frame.size.width - buttonSize, height: buttonSize))
            clearButton.setTitleColor(.black, for: .normal)
            clearButton.backgroundColor = .init(red: 0, green: 2, blue: 0.8, alpha: 1)
            clearButton.titleLabel?.font = UIFont(name: "Helvetica", size: FontSize-4)
            clearButton.setTitle("CE", for: .normal)
            holder.addSubview(clearButton)
            clearButton.addTarget(self, action: #selector(clearResult), for: .touchUpInside)
        let operations = ["=", "+", "-", "X", "/"]
        

}

