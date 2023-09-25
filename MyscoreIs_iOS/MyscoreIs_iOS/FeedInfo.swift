//
//  FeedInfo.swift
//  MyscoreIs_iOS
//
//  Created by 우상현 on 2023/09/25.
//

import Foundation

struct FeedInfo: Hashable {
    let name: String
    let category: String
    let title: String
    let description: String
    let point: Int
}

extension FeedInfo {
    static let list = [
        FeedInfo(name:"first", category:"lecture", title:"first feed",description: "test lecture feed", point:100),
        FeedInfo(name:"second", category:"food", title:"second feed",description: "test lecture food", point:90),
        FeedInfo(name:"third", category:"event", title:"third feed",description: "test lecture event", point:80),
        FeedInfo(name:"fourth", category:"trafic", title:"fourth feed",description: "test lecture trafic", point:70),
        FeedInfo(name:"fiveth", category:"space", title:"fiveth feed",description: "test lecture space", point:60),
    ]
}
