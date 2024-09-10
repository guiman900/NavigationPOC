//
//  ViewController1.swift
//  iOSPOCNavigation
//
//  Created by Guillaume Manzano on 10/09/2024.
//

import UIKit

class ViewController1: UIViewController {

    private var navigationButton: UIButton =
    {
        let button = UIButton(type: .system)
        button.setTitle("Navigate to view controller 2", for: .normal)
        button.backgroundColor = .yellow
        button.clipsToBounds = true
        return button
    }()
    
    
    let button = UIButton(type: .system)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .red
        self.view.addSubview(navigationButton)
        navigationButton.translatesAutoresizingMaskIntoConstraints = false
        activateConstraints(
            navigationButton.topAnchor.constraint(equalTo: self.view.topAnchor),
            navigationButton.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
            navigationButton.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            navigationButton.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            navigationButton.heightAnchor.constraint(equalToConstant: 50)
        )
        
        navigationButton.addTarget(self, action: #selector(navigate), for: .touchUpInside)
        // Do any additional setup after loading the view.
    }

    func activateConstraints(_ constraints: NSLayoutConstraint...) {
        NSLayoutConstraint.activate(constraints)
    }
    
    @objc func navigate() {
        self.present(ViewController2(), animated: true)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
