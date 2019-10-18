//
//  Menu04ViewController.swift
//  MyCafe
//
//  Created by maro on 29/09/2019.
//  Copyright © 2019 마현아. All rights reserved.
//

import UIKit
import Toast_Swift
import SDWebImage

class Menu04ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var tableView: UITableView!
    
    let names: Array<String> = [
        "완전딸기바나나",
        "완전초코바나나",
        "피스타치오빽스치노",
        "카라멜빽스치노",
        "베리크런치빽스치노",
        "녹차빽스치노",
        "원조빽스치노",
        "민트초코빽스치노"
    ]
    let prices: Array<NSString> = [
        "BASIC : 3,000\nSOFT : 3,500",
        "BASIC : 2,800\nSOFT : 3,300",
        "BASIC : 4,500\nSOFT : 5,000",
        "BASIC : 4,500\nSOFT : 5,000",
        "BASIC : 4,000\nSOFT : 4,500",
        "BASIC : 3,000\nSOFT : 3,500",
        "BASIC : 3,000\nSOFT : 3,500",
        "BASIC : 3,500\nSOFT : 4,000"
    ]
    let images: Array<String> = [
        "http://paikdabang.com/wp-content/uploads/2018/05/%EC%99%84%EC%A0%84%EB%94%B8%EB%B0%94.jpg",
        "http://paikdabang.com/wp-content/uploads/2018/05/%EC%99%84%EC%A0%84%EC%B4%88%EB%B0%94.jpg",
        "http://paikdabang.com/wp-content/uploads/2018/05/%ED%94%BC%EC%8A%A4%ED%83%80%EC%B9%98%EC%98%A4%EB%B9%BD%EC%8A%A4%EC%B9%98%EB%85%B8.jpg",
        "http://paikdabang.com/wp-content/uploads/2019/05/%EC%B9%B4%EB%9D%BC%EB%A9%9C%EB%B9%BD%EC%8A%A4%EC%B9%98%EB%85%B8.png",
        "http://paikdabang.com/wp-content/uploads/2019/05/%EB%B2%A0%EB%A6%AC%ED%81%AC%EB%9F%B0%EC%B9%98%EB%B9%BD%EC%8A%A4%EC%B9%98%EB%85%B8.png",
        "http://paikdabang.com/wp-content/uploads/2018/05/%EB%85%B9%EC%B0%A8%EB%B9%BD%EC%8A%A4%EC%B9%98%EB%85%B8.jpg",
        "http://paikdabang.com/wp-content/uploads/2018/05/%EC%9B%90%EC%A1%B0%EB%B9%BD%EC%8A%A4%EC%B9%98%EB%85%B8-1.jpg",
        "http://paikdabang.com/wp-content/uploads/2019/02/%EB%AF%BC%ED%8A%B8%EC%B4%88%EC%BD%94-%EB%B9%BD%EC%8A%A4%EC%B9%98%EB%85%B8.png"
    ]
    let messages: Array<String> = [
        "상큼한 딸기와 달달한 바나나의 완전 시원한 만남!",
        "달콤한 초코와 달달한 바나나의 완전 시원한 만남",
        "고소한 피스타치오와 진한 카카오닙스의 만남 !",
        "카라멜의 진한 달콤함과 바삭한 토핑으로 더욱 풍부한 카라멜 맛을 즐길 수 있는 빽스치노",
        "상큼 달콤한 딸기 밀크 베이스에 바삭한 비스켓크런치로 맛에 재미를 더한 뺵스치노",
        "100% 국내산 녹차를 사용하여 부드럽고 진한 맛의 빽스치노!",
        "원조커피의 시원한 변신~! 매력만점 커피 빽스치노",
        "초코칩으로 더한 깊은 초콜릿의 맛과 민트의 상쾌함이 어우러진 진한 민트초코 빽스치노"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func onBtnBack(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyTableviewCell", for: indexPath) as! MyTableViewCell
        
        cell.labelName.text = self.names[indexPath.row]
        cell.labelPrice.text = self.prices[indexPath.row] as String
        cell.imageViewMenu.sd_setImage(with: URL(string: self.images[indexPath.row]), completed: nil)
        cell.selectionStyle = .none
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("\(indexPath.row)줄이 선택됨")
        return self.view.makeToast(self.messages[indexPath.row], duration: 2.0, position: .bottom)
    }
}
