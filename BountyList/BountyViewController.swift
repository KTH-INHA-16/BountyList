//
//  BountyViewController.swift
//  BountyList
//
//  Created by 김태훈 on 2020/11/11.
//

import UIKit

class BountyViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    let nameList = ["brook","chopper","franky","luffy","nami","robin","sanji","zoro"]
    let bountyList = ["33000000","50","44000000","300000000","16000000","80000000","77000000","120000000"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    //
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nameList.count
    }
    
    //셀 표현 시에 리스트 셀 사용 
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell",for: indexPath) as? ListCell else{
            return UITableViewCell()
        }
        
        let img = UIImage(named: "\(nameList[indexPath.row]).jpg")
        cell.imgView.image = img
        cell.nameLable.text = nameList[indexPath.row]
        cell.bountyLabel.text = "\(bountyList[indexPath.row])"
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        print("--> \(indexPath.row)")
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

class ListCell: UITableViewCell {
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var nameLable: UILabel!
    @IBOutlet weak var bountyLabel: UILabel!
}
