//
//  ViewController.swift
//  inputArrayImage
//
//  Created by Daniel Washington Ignacio on 23/05/21.
//

import UIKit

class ViewController: UIViewController {

    var imageArray: [UIImage?] = [UIImage(named: "broly"),UIImage(named: "goku"),UIImage(named: "vegeta"),UIImage(named: "bulma"),UIImage(named: "garlicjr"), UIImage(named: "cell"),UIImage(named: "babidi"),UIImage(named: "frieza"),UIImage(named: "dabura")]
    var info:[String] = ["Broly", "Goku", "Vegeta", "Bulma", "Garlic Jr", "Cell", "Babidi" , "Frieza", "Dabura"]
    
    @IBOutlet weak var showImage: UIImageView!
    @IBOutlet weak var inputText: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    var valueForImage = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func show(_ sender: Any) {
        self.resultImage()
        }
        
        
        
    func resultImage(){
        let newText = inputText.text
        for value in info{
            if newText == value{
                showImage.image = imageArray[valueForImage]
            }
            valueForImage = valueForImage + 1
            }
        valueForImage = 0
        inputText.text = ""
    }
    
    

}

