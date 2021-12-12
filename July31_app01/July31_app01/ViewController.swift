//
//  ViewController.swift
//  July31_app01
//
//  Created by BYUNAM on 7/31/21.
//

import UIKit

//3.
var list = ["유비","관우","장비", "조조", "여포", "동탁", "초선", "손견", "장양", "손책"]

class ViewController: UIViewController {

    //1.
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //11.
        collectionView.delegate = self
        collectionView.dataSource = self
    }

    //12. addViewController에서 추가하고 화면이 사라졌을때 extension이 다시 실행되게 해주는게 reloadData
    override func viewWillAppear(_ animated: Bool) {
        collectionView.reloadData()
    }
    
    //13.
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "sgDetail"{
            //몇번재 cell을 찾는건지
            let cell = sender as! CollectionViewCell //cell번지수 가져올 수 있음
            let indexPath = self.collectionView.indexPath(for: cell)
            //해당 데이터 넘겨주기
            let detailView = segue.destination as! DetailViewController
            detailView.receiveItem = list[indexPath!.row]
        }
    }
    
}//ViewController

extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate{
    //4. cell의 갯수
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return list.count
    }
    
    //5. Configure the cell...
    //reusable cell
    //cell 구성
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "myCell", for: indexPath) as! CollectionViewCell
        
        cell.backgroundColor = .lightGray
        cell.lblHuman.text = list[indexPath.row]
        cell.lblHuman.backgroundColor = .yellow
        return cell
    }
    
    //6. click event
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(list[indexPath.row])
    }
}

//7.
extension ViewController: UICollectionViewDelegateFlowLayout{
    //8.위아래 간격을 세팅
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 1 //1줄 띄우겠다.
    }
    
    //9. 옆 간격
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
    
    //10.cell 배치
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = collectionView.frame.width / 3 - 1 //옆에 한칸씩 띄웠으니까
        let size = CGSize(width: width, height: width)
        return size
    }
}
