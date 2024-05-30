//
//  MyTableViewController.swift
//  Table view 2
//
//  Created by t2024-m0165 on 5/30/24.
//

import UIKit

class MyTableViewController: UIViewController {
    @IBOutlet weak var myTableView: UITableView!
    
    let friendNames: [String] = ["D.O", "P.O", "Low", "Show"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.backgroundColor = .purple
        myTableView.delegate = self
        myTableView.dataSource = self
        }
    }
        
        extension MyTableViewController: UITableViewDelegate,UITableViewDataSource {
            func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { return friendNames.count
                
            }
            
            func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
                let cell = myTableView.dequeueReusableCell(withIdentifier: "myFirstCell", for: indexPath)
                cell.textLabel?.text = friendNames[indexPath.row]
                return cell
            }
            
        }
