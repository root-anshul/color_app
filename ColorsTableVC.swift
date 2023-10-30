//
//  ColorsTableVC.swift
//  temp_project_2
//
//  Created by anshul on 31/10/23.
//

import UIKit

class ColorsTableVC: UIViewController {
    var colors: [UIColor] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addRandomcolors()
    }

    func addRandomcolors(){
        for _ in 0..<50{
            colors.append(.random())
        }
    }
    
   
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destVC = segue.destination as! ColorsDetails_vc
        destVC.color = sender as? UIColor
        
    }
    
    
}
extension ColorsTableVC :UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "colorCell" ) else{
            return UITableViewCell()
        }
        
        cell.backgroundColor = colors[indexPath.row]
        return cell
        
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let color = colors[indexPath.row]
        performSegue(withIdentifier: "ToColorDetailVC", sender: color)
    }
    
}
