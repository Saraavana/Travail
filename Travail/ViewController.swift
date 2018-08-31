//
//  ViewController.swift
//  Travail
//
//  Created by Saravana on 30/08/18.
//

import UIKit

//MARK: -MAIN
class ViewController: UIViewController {

    //MARK: -Outlets
    @IBOutlet weak var topBar: UIView!
    @IBOutlet weak var tableView: UITableView!
    
    //MARK: -Life cycle methods
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
}

//MARK: -UITableViewDataSource
extension ViewController : UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
           let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
            return cell
        }else {
           let cell = tableView.dequeueReusableCell(withIdentifier: "FlowTableViewCell", for: indexPath) as! FlowTableViewCell
            return cell
        }
    }
}

//MARK: -UITableViewDelegate
extension ViewController : UITableViewDelegate {
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView(frame: CGRect(x: 0, y: 0, width: tableView.frame.size.width, height: 50))
        headerView.backgroundColor = UIColor.lightGray.withAlphaComponent(0.7)
        let label = UILabel(frame: CGRect(x: 10, y: 15, width: tableView.frame.size.width, height: 30))
        label.text = section == 1 ? "Featured" : "Because you read: 'Love Story 2050'"
        label.sizeToFit()
        headerView.addSubview(label)
        return headerView
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if section == 0 {
            return 0
        }else{
            return 50
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section {
        case 0:
            return 50
        case 1:
            return 320
        case 2:
            return 320
        default:
            return 50
        }
    }
}


