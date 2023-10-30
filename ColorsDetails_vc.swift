//
//  ColorsDetails_vc.swift
//  temp_project_2
//
//  Created by anshul on 31/10/23.
//

import UIKit

class ColorsDetails_vc: UIViewController {

    var color: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = color ?? UIColor.blue
    }
    


}
