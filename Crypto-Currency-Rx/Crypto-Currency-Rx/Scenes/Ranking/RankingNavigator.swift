//
//  RankingNavigator.swift
//  Crypto-Currency-Rx
//
//  Created by namtrinh on 25/08/2021.
//

import UIKit

protocol RankingNavigatorType {
    func toDetailScreen(uuid: String)
    func toSearchScreen()
}

struct RankingNavigator: RankingNavigatorType {
    let navigationController: UINavigationController
    
    func toDetailScreen(uuid: String) {
        let detailScreen = DetailViewController.instance(navigationController: navigationController,
                                                         uuid: uuid)
        detailScreen.modalPresentationStyle = .pageSheet
        navigationController.present(detailScreen, animated: true, completion: nil)
    }
    
    func toSearchScreen() {
        let searchScreen = SearchViewController.instance(navigationController: navigationController)
        navigationController.pushViewController(searchScreen, animated: true)
    }
}
