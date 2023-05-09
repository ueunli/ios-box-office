//
//  BoxOfficeViewController.swift
//  BoxOffice
//
//  Created by kjs on 13/01/23.
//

import UIKit

class BoxOfficeViewController: UIViewController {
    
    // MARK: - Private
    private let networkService = NetworkService()
    private var dailyBoxOffice: DailyBoxOfficeDTO?
    private var movieDetail: MovieDetailDTO?
    
    private var movieCollectionView: UICollectionView! = nil
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let sample = DailyBoxOfficeEndPoint(date: "20220202")
        updateData(from: sample) {
            self.dailyBoxOffice = $0
        }
        
        setup()
    }
    
    // MARK: - Private function
    private func setup() {
        configureCollectionView()
        configureUI()
    }
    
    private func configureUI() {
        view.addSubview(movieCollectionView)
    }
        
    private func configureCollectionView() {
        let config = UICollectionLayoutListConfiguration(appearance: .plain)
        let layout = UICollectionViewCompositionalLayout.list(using: config)
        let collectionView = UICollectionView(frame: view.frame, collectionViewLayout: layout)
        collectionView.backgroundColor = .systemPink
        movieCollectionView = collectionView
    }
    
    private func updateData<T: APIRepresentable, E: EndPointProtocol>(from api: E, completion: @escaping (T?) -> Void) where E.DTO == T {
        networkService.fetchData(endPoint: api) { result in
            switch result {
            case .success(let data):
                completion(data)
            case .failure(let error):
                print(error.localizedDescription)
                completion(nil)
            }
        }
    }
    
}

