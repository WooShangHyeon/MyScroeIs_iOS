//
//  MainViewController.swift
//  MyscoreIs_iOS
//
//  Created by 우상현 on 2023/09/25.
//

import UIKit

class MainViewController: UIViewController {
    
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    let feedInfos = FeedInfo.list
    
    enum Section {
        case main
    }
    
    typealias Item = FeedInfo
    
    var datasource: UICollectionViewDiffableDataSource<Section, Item>!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        datasource = UICollectionViewDiffableDataSource<Section, Item>(collectionView: collectionView, cellProvider: { collectionView, indexPath, item in
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FeedCell", for: indexPath) as? FeedCell else {
                return nil
            }
            cell.configure(item)
            return cell
        })
        
        var snapshot = NSDiffableDataSourceSnapshot<Section,Item>()
        snapshot.appendSections([.main])
        snapshot.appendItems(feedInfos, toSection: .main)
        datasource.apply(snapshot)
        
        collectionView.collectionViewLayout = layout()
    }
    
    private func layout() -> UICollectionViewCompositionalLayout {
        
        
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1))
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        
        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .absolute(200))
        let group = NSCollectionLayoutGroup.vertical(layoutSize: groupSize, subitems: [item])
        
        let section = NSCollectionLayoutSection(group: group)
        section.interGroupSpacing = 10
       
        
        
        let layout = UICollectionViewCompositionalLayout(section: section)
        return layout
    }
    

}
