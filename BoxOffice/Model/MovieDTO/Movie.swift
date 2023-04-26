//
//  Movie.swift
//  BoxOffice
//
//  Created by 신동오 on 2023/04/26.
//

struct Movie: Codable {
    
    let rankNumber, rank, rankInten, rankOldAndNew: String
    let code, name, openDate: String
    let salesAmount, salesShare, salesInten, salesChange, salesAcc: String
    let audienceCount, audienceInten, audienceChange, audienceAcc: String
    let screenCount, showCount: String

    enum CodingKeys: String, CodingKey {
        case rankNumber = "rnum"
        case rank
        case rankInten
        case rankOldAndNew
        
        case code = "movieCd"
        case name = "movieNm"
        case openDate = "openDt"
        
        case salesAmount = "salesAmt"
        case salesShare = "salesShare"
        case salesInten
        case salesChange
        case salesAcc = "salesAcc"
        
        case audienceCount = "audiCnt"
        case audienceInten = "audiInten"
        case audienceChange = "audiChange"
        case audienceAcc = "audiAcc"
        
        case screenCount = "scrnCnt"
        case showCount = "showCnt"
    }
    
}
