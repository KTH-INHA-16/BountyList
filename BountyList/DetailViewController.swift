//
//  DetailViewController.swift
//  BountyList
//
//  Created by 김태훈 on 2020/11/11.
//

import UIKit

class DetailViewController: UIViewController {

    var bountyInfo: BountyInfo?
    
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var BountyLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()

    }
    
    func updateUI() {
        guard let info = bountyInfo else { return }
        imgView.image = info.image
        nameLabel.text = info.name
        BountyLabel.text = "\(info.bounty)"
    }
    
    @IBAction func close(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }

}
