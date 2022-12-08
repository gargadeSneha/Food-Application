//
//  HomeVC.swift
//  Food application
//
//  Created by TryCatch Classes on 11/07/1944 Saka.
//

import UIKit

class HomeVC: UIViewController {

   // var likes: [String]!
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var array = ["Veg Salad","Sandwhich","Rice & Stew","Chilli Paneer","Chineese Bhel"]
    var nameLabel = ["Veg Salad","Sandwhich","Rice & Stew","Chilli Paneer","Chineese Bhel"]
    var priceLabel = ["$ 20.00","$ 40.00","$ 80.00","$ 75.00","$ 15.00"]
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.setHidesBackButton(true, animated: true)
        collectionView.delegate = self
        collectionView.dataSource = self
        
      //  likes = [String](repeating: "like", count: array.count)
      
    }
}//[String](count: array.count, repeatedValue: "like")
 
extension HomeVC: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return array.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! FoodCVC
        cell.imgview.image = UIImage(named: array[indexPath.row])
        cell.label1.text = nameLabel[indexPath.row]
        cell.label2.text = priceLabel[indexPath.row]
        
       // cell.likebutn.tag = indexPath.row
      //  cell.likebutn.addTarget(self, action: "handleLikes:", for: .touchUpInside)
      //  cell.likebutn.setTitle(likes[indexPath.row], for: .normal)
        
        
        
        
        
        cell.imgview.layer.cornerRadius = 10
        cell.layer.cornerRadius = 10
        return cell
    }
  /*  func handleLikes(sender: AnyObject){
        print(sender.tag) // This works, every cell returns a different number and in order.
        if likes[sender.tag] == "like" {
            likes[sender.tag] = "unlike"
        }
        else {
            likes[sender.tag] = "like"
        }
        sender.setTitle(likes[sender.tag], for: .normal)
    }*/
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = ((collectionView.frame.width - 20 ) / 2 )
        let heigth = ((collectionView.frame.width - 20 ) / 1 )
        
         return CGSize(width: width, height: heigth)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 10, left: 5, bottom: 10, right: 5)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let f = storyboard?.instantiateViewController(withIdentifier: "InfoVC") as! InfoVC
        
        f.img = UIImage(named: array[indexPath.row])!
        f.label_name = nameLabel[indexPath.row]
        f.label_pri = priceLabel[indexPath.row]
        self.navigationController?.pushViewController(f, animated: true)
    }
    
}
