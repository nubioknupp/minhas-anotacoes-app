//
//  ViewController.swift
//  MinhasAnotacoes
//
//  Created by Nubio Knupp on 14/01/17.
//  Copyright © 2017 Nubio Knupp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var anotacoesTextView: UITextView!;
    
    let minhasAnotacoesChave = "MinhasAnotacoes";

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let myColor = UIColor(red: 65.0/255.0, green: 52.0/255.0, blue: 46.0/255.0, alpha: 1.0);
        self.navigationController?.navigationBar.barTintColor = myColor;
        self.navigationController?.navigationBar.barStyle = UIBarStyle.black;
        
       
        let anotacoes = UserDefaults.standard.object(forKey: minhasAnotacoesChave);
        
        anotacoesTextView.text = anotacoes as! String!;
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func SalvaAnotacoes(_ sender: Any) {
        UserDefaults.standard.set(anotacoesTextView.text, forKey: minhasAnotacoesChave);
    }    
    
    //ocultar a barra de status
    override var prefersStatusBarHidden: Bool {
        return true;
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true);
    }
}

