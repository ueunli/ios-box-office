//
//  DailyBoxOfficeData.swift
//  BoxOfficeTests
//
//  Created by 신동오 on 2023/04/25.
//

import Foundation

let dailyBoxOfficeData = Data(
    """
    {"boxOfficeResult":{"boxofficeType":"일별 박스오피스","showRange":"20220105~20220105","dailyBoxOfficeList":[{"rnum":"1","rank":"1","rankInten":"0","rankOldAndNew":"NEW","movieCd":"20199882","movieNm":"경관의 피","openDt":"2022-01-05","salesAmt":"584559330","salesShare":"34.2","salesInten":"584559330","salesChange":"100","salesAcc":"631402330","audiCnt":"64050","audiInten":"64050","audiChange":"100","audiAcc":"69228","scrnCnt":"1171","showCnt":"4416"},{"rnum":"2","rank":"2","rankInten":"-1","rankOldAndNew":"OLD","movieCd":"20210028","movieNm":"스파이더맨: 노 웨이 홈","openDt":"2021-12-15","salesAmt":"507028380","salesShare":"29.6","salesInten":"-91443730","salesChange":"-15.3","salesAcc":"62772471900","audiCnt":"50399","audiInten":"-9564","audiChange":"-15.9","audiAcc":"6252827","scrnCnt":"1357","showCnt":"4314"},{"rnum":"3","rank":"3","rankInten":"0","rankOldAndNew":"NEW","movieCd":"20218764","movieNm":"씽2게더","openDt":"2022-01-05","salesAmt":"379941010","salesShare":"22.2","salesInten":"379941010","salesChange":"100","salesAcc":"384962010","audiCnt":"44221","audiInten":"44221","audiChange":"100","audiAcc":"44778","scrnCnt":"999","showCnt":"3156"},{"rnum":"4","rank":"4","rankInten":"-2","rankOldAndNew":"OLD","movieCd":"20194403","movieNm":"킹스맨: 퍼스트 에이전트","openDt":"2021-12-22","salesAmt":"140823730","salesShare":"8.2","salesInten":"-65077090","salesChange":"-31.6","salesAcc":"8325835830","audiCnt":"13916","audiInten":"-7219","audiChange":"-34.2","audiAcc":"835601","scrnCnt":"657","showCnt":"1481"},{"rnum":"5","rank":"5","rankInten":"-2","rankOldAndNew":"OLD","movieCd":"20217807","movieNm":"해피 뉴 이어","openDt":"2021-12-29","salesAmt":"38850000","salesShare":"2.3","salesInten":"-62624160","salesChange":"-61.7","salesAcc":"1973695930","audiCnt":"4152","audiInten":"-6835","audiChange":"-62.2","audiAcc":"211533","scrnCnt":"414","showCnt":"643"},{"rnum":"6","rank":"6","rankInten":"6","rankOldAndNew":"OLD","movieCd":"20192354","movieNm":"특송","openDt":"2022-01-12","salesAmt":"13378000","salesShare":"0.8","salesInten":"10760000","salesChange":"411","salesAcc":"30157000","audiCnt":"1213","audiInten":"923","audiChange":"318.3","audiAcc":"2984","scrnCnt":"4","showCnt":"4"},{"rnum":"7","rank":"7","rankInten":"-1","rankOldAndNew":"OLD","movieCd":"20218415","movieNm":"드라이브 마이 카","openDt":"2021-12-23","salesAmt":"9238520","salesShare":"0.5","salesInten":"-1637380","salesChange":"-15.1","salesAcc":"238182180","audiCnt":"1013","audiInten":"-156","audiChange":"-13.3","audiAcc":"25877","scrnCnt":"74","showCnt":"99"},{"rnum":"8","rank":"8","rankInten":"14","rankOldAndNew":"OLD","movieCd":"20210672","movieNm":"피드백","openDt":"2022-01-05","salesAmt":"4896500","salesShare":"0.3","salesInten":"4666500","salesChange":"2028.9","salesAcc":"8078500","audiCnt":"748","audiInten":"637","audiChange":"573.9","audiAcc":"1187","scrnCnt":"32","showCnt":"41"},{"rnum":"9","rank":"9","rankInten":"-1","rankOldAndNew":"OLD","movieCd":"20218390","movieNm":"램","openDt":"2021-12-29","salesAmt":"3244700","salesShare":"0.2","salesInten":"-3955470","salesChange":"-54.9","salesAcc":"109603940","audiCnt":"329","audiInten":"-481","audiChange":"-59.4","audiAcc":"12197","scrnCnt":"44","showCnt":"49"},{"rnum":"10","rank":"10","rankInten":"-3","rankOldAndNew":"OLD","movieCd":"20210864","movieNm":"엔칸토: 마법의 세계","openDt":"2021-11-24","salesAmt":"2290000","salesShare":"0.1","salesInten":"-7180050","salesChange":"-75.8","salesAcc":"5964273080","audiCnt":"291","audiInten":"-765","audiChange":"-72.4","audiAcc":"628878","scrnCnt":"23","showCnt":"24"}]}}
    """.utf8
)
