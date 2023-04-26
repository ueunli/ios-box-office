//
//  Movie.swift
//  BoxOffice
//
//  Created by 신동오 on 2023/04/26.
//

struct Movie: Decodable {
    
    let rank: Rank
    let detail: Detail
    let sales: Sales
    let audience: Audience
    let screen: Screen
    
    //    enum CodingKeys: String, CodingKey {
    //        case rank
    //        case detail
    //        case sales
    //        case audience
    //        case screen
    //    }
    
    enum CodingKeys: String, CodingKey {
        case rank
        case detail
        case sales
        case audience
        case screen
        
        enum RankKeys: String, CodingKey {
            case rankNumber = "rnum"
            case rank
            case rankInten
            case rankOldAndNew
        }
        
        enum DetailKeys: String, CodingKey {
            case code = "movieCd"
            case name = "movieNm"
            case openDate = "openDt"
        }
        
        enum SalesKeys: String, CodingKey {
            case salesAmount = "salesAmt"
            case salesShare = "salesShare"
            case salesInten
            case salesChange
            case salesAcc = "salesAcc"
        }
        
        enum AudienceKeys: String, CodingKey {
            case audienceCount = "audiCnt"
            case audienceInten = "audiInten"
            case audienceChange = "audiChange"
            case audienceAcc = "audiAcc"
        }
        
        enum ScreenKeys: String, CodingKey {
            case screenCount = "scrnCnt"
            case showCount = "showCnt"
        }
    }
    
    init(from decoder: Decoder) throws {
        let rankKeys = try decoder.container(keyedBy: CodingKeys.RankKeys.self)
        self.rank = Rank(
            rankNumber: try rankKeys.decode(String.self, forKey: .rankNumber),
            rank: try rankKeys.decode(String.self, forKey: .rank),
            rankInten: try rankKeys.decode(String.self, forKey: .rankInten),
            rankOldAndNew: try rankKeys.decode(String.self, forKey: .rankOldAndNew)
        )
        
        let detailKeys = try decoder.container(keyedBy: CodingKeys.DetailKeys.self)
        self.detail = Detail(
            code: try detailKeys.decode(String.self, forKey: .code),
            name: try detailKeys.decode(String.self, forKey: .name),
            openDate: try detailKeys.decode(String.self, forKey: .openDate)
        )
        
        let salesKeys = try decoder.container(keyedBy: CodingKeys.SalesKeys.self)
        self.sales = Sales(
            salesAmount: try salesKeys.decode(String.self, forKey: .salesAmount),
            salesShare: try salesKeys.decode(String.self, forKey: .salesShare),
            salesInten: try salesKeys.decode(String.self, forKey: .salesInten),
            salesChange: try salesKeys.decode(String.self, forKey: .salesChange),
            salesAcc: try salesKeys.decode(String.self, forKey: .salesAcc)
        )
        
        let audienceKeys = try decoder.container(keyedBy: CodingKeys.AudienceKeys.self)
        self.audience = Audience(
            audienceCount: try audienceKeys.decode(String.self, forKey: .audienceCount),
            audienceInten: try audienceKeys.decode(String.self, forKey: .audienceInten),
            audienceChange: try audienceKeys.decode(String.self, forKey: .audienceChange),
            audienceAcc: try audienceKeys.decode(String.self, forKey: .audienceAcc)
        )
        
        let screenKeys = try decoder.container(keyedBy: CodingKeys.ScreenKeys.self)
        self.screen = Screen(
            screenCount: try screenKeys.decode(String.self, forKey: .screenCount),
            showCount: try screenKeys.decode(String.self, forKey: .showCount)
        )
        
        //도전
        //self.rank.rank = try keys.decode(String.self, forKey: .rank)
        //self.detail = try keys.decode(Detail.self, forKey: .detail)
        //self.sales = try keys.decode(Sales.self, forKey: .sales)
        //self.audience = try keys.decode(Audience.self, forKey: .audience)
        //self.screen = try keys.decode(Screen.self, forKey: .screen)
    }
    
}





//MARK: Movie Rank

struct Rank: Decodable {
    let rankNumber, rank, rankInten, rankOldAndNew: String
    enum RankKeys: String, CodingKey {
        case rankNumber = "rnum"
        case rank
        case rankInten
        case rankOldAndNew
    }
}



//MARK: Movie Detail

struct Detail: Decodable {
    let code, name, openDate: String
    enum DetailKeys: String, CodingKey {
        case code = "movieCd"
        case name = "movieNm"
        case openDate = "openDt"
    }
}


//MARK: Movie Sales

struct Sales: Decodable {
    let salesAmount, salesShare, salesInten, salesChange, salesAcc: String
    enum SalesKeys: String, CodingKey {
        case salesAmount = "salesAmt"
        case salesShare = "salesShare"
        case salesInten
        case salesChange
        case salesAcc = "salesAcc"
    }
}


//MARK: Movie Audience

struct Audience: Decodable {
    let audienceCount, audienceInten, audienceChange, audienceAcc: String
    enum AudienceKeys: String, CodingKey {
        case audienceCount = "audiCnt"
        case audienceInten = "audiInten"
        case audienceChange = "audiChange"
        case audienceAcc = "audiAcc"
    }
}


//MARK: Movie Screen

struct Screen: Decodable {
    let screenCount, showCount: String
    enum ScreenKeys: String, CodingKey {
        case screenCount = "scrnCnt"
        case showCount = "showCnt"
    }
}







//final class MovieDecoder: Decoder {
//
//    static let shared1 = MovieDecoder()
//
//    var codingPath: [CodingKey]
//    var userInfo: [CodingUserInfoKey : Any]
//    
//    private init() {
//        
//    }
//    
//    func container<Key>(keyedBy type: Key.Type) throws -> KeyedDecodingContainer<Key> where Key : CodingKey {
//        //
//    }
//    
//    func unkeyedContainer() throws -> UnkeyedDecodingContainer {
//        //
//    }
//    
//    func singleValueContainer() throws -> SingleValueDecodingContainer {
//        //
//    }
//    
//}
