//
//  CollectionViewController.swift
//  PruebaUIKit
//
//  Created by Rafael FERNANDEZ on 27/7/22.
//

import UIKit

extension CollectionViewController {
    enum Element {
        case data(String)
        case ad(String)
    }
}

class CollectionViewController: UIViewController {
    
    @IBOutlet weak var customCollectionView: UICollectionView!
    
    var items: [Element] = {
       var results = [Element]()
        results = (0...100).map { Element.data("Elemento \($0)") }
        
        var inseted = 0
        for i in 0..<(results.count / 4) {
            results.insert(.ad("\(i)"), at: (4 * (i + 1)) + inseted)
            inseted += 1
        }
        return results
    }()
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        
        self.tabBarItem = UITabBarItem(title: "Collection", image: UIImage(systemName: "c.square"), selectedImage: UIImage(systemName: "c.square.fill"))
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        setup()
    }
    
    func setup() {
        registerCell()
        
        customCollectionView.delegate = self
        customCollectionView.dataSource = self
    }

}

extension CollectionViewController: UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(indexPath)
    }
    
}

extension CollectionViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        switch items[indexPath.row] {
        case .data:
            return CGSize(width: (collectionView.frame.size.width - 30) / 2, height: 60)
        case .ad:
            return CGSize(width: collectionView.frame.size.width - 20, height: 100)
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: 200, height: 100)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize {
        return CGSize(width: 200, height: 100)
    }
    
}


extension CollectionViewController: UICollectionViewDataSource {
    func registerCell() {
        customCollectionView.register(DataCollectionViewCell.nib, forCellWithReuseIdentifier: DataCollectionViewCell.identifier)
        customCollectionView.register(AdCollectionViewCell.nib, forCellWithReuseIdentifier: AdCollectionViewCell.identifier)
        customCollectionView.register(HeaderCollectionReusableView.nib, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: HeaderCollectionReusableView.identifier)
        customCollectionView.register(FooterCollectionReusableView.nib, forSupplementaryViewOfKind: UICollectionView.elementKindSectionFooter, withReuseIdentifier: FooterCollectionReusableView.identifier)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch items[indexPath.row] {
        case .data(let text):
            if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: DataCollectionViewCell.identifier, for: indexPath) as? DataCollectionViewCell {
                cell.loadCell(title: text)
                return cell
            }
        case .ad(let text):
            if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: AdCollectionViewCell.identifier, for: indexPath) as? AdCollectionViewCell {
                cell.loadCell(text: text)
                return cell
            }
        }
        
        return UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        switch kind {
        case UICollectionView.elementKindSectionHeader:
            guard let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: HeaderCollectionReusableView.identifier, for: indexPath) as? HeaderCollectionReusableView else { return UICollectionReusableView() }
            headerView.loadHeader()
            return headerView
        case UICollectionView.elementKindSectionFooter:
            guard let footerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: FooterCollectionReusableView.identifier, for: indexPath) as? FooterCollectionReusableView else { return UICollectionReusableView() }
            footerView.loadFooter()
            return footerView
        default:
            return UICollectionReusableView()
        }
    }
    
    
}
