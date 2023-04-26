//
//  DailyBoxOffice.swift
//  BoxOffice
//
//  Created by 신동오 on 2023/04/26.
//

struct DailyBoxOffice: Decodable {
    
    let type, range: String
    let movies: [Movie]
    
    init(from decoder: Decoder) throws {
        let keys = try decoder.container(keyedBy: ResultKeys.self)
        let nestedKeys = try keys.nestedContainer(keyedBy: BoxOfficeKeys.self, forKey: .boxOfficeResult)
        self.type = try nestedKeys.decode(String.self, forKey: .type)
        self.range = try nestedKeys.decode(String.self, forKey: .range)
        self.movies = try nestedKeys.decode([Movie].self, forKey: .movies)
    }
    
    enum ResultKeys: String, CodingKey {
        case boxOfficeResult
    }
    
    enum BoxOfficeKeys: String, CodingKey {
        case range = "showRange"
        case type = "boxofficeType"
        case movies = "dailyBoxOfficeList"
    }
    
}
