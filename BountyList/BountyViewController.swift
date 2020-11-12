//
//  BountyViewController.swift
//  BountyList
//
//  Created by 김태훈 on 2020/11/11.
//

import UIKit

class BountyViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let bountyInfoList = [
        BountyInfo(name:"brook",bounty:33000000),
        BountyInfo(name:"chopper",bounty:50),
        BountyInfo(name:"franky",bounty:44000000),
        BountyInfo(name:"luffy",bounty:300000000),
        BountyInfo(name:"nami",bounty:16000000),
        BountyInfo(name:"robin",bounty:80000000),
        BountyInfo(name:"sanji",bounty:77000000),
        BountyInfo(name: "zoro", bounty: 120000000)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetail" {
            let vc = segue.destination as? DetailViewController
            if let index = sender as? Int {
                vc?.bountyInfo = bountyInfoList[index]
                
            }
        }
    }
    
    //
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return bountyInfoList.count
    }
    
    //셀 표현 시에 리스트 셀 사용 
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell",for: indexPath) as? ListCell else{
            return UITableViewCell()
        }
        
        let bountyInfo = bountyInfoList[indexPath.row]
        
        cell.updateUI(bountyInfo)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        print("--> \(indexPath.row)")
        
        performSegue(withIdentifier: "showDetail", sender: indexPath.row)
    }

}

class ListCell: UITableViewCell {
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var nameLable: UILabel!
    @IBOutlet weak var bountyLabel: UILabel!
    
    func updateUI(_ info: BountyInfo) {
        imgView.image = info.image
        nameLable.text = info.name
        bountyLabel.text = "\(info.bounty)"
    }
}
