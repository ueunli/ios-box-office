//
//  BoxOfficeResult.swift
//  BoxOffice
//
//  Created by 신동오 on 2023/04/26.
//

struct BoxOfficeResult: Decodable {
    
    let boxofficeType, showRange: String
    let movies: [Movie]
    
    init(from decoder: Decoder) throws {
        let keys = try decoder.container(keyedBy: ResultKeys.self)
        let nestedKeys = try keys.nestedContainer(keyedBy: CodingKeys.self, forKey: .boxOfficeResult)
        self.boxofficeType = try nestedKeys.decode(String.self, forKey: .boxofficeType)
        self.showRange = try nestedKeys.decode(String.self, forKey: .showRange)
        self.movies = try nestedKeys.decode([Movie].self, forKey: .movies)
    }
    
    enum ResultKeys: String, CodingKey {
        case boxOfficeResult
    }
    
    enum CodingKeys: String, CodingKey {
        case showRange, boxofficeType
        case movies = "dailyBoxOfficeList"
    }
    
}
