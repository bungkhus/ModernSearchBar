//
//  ModernSearchBarModel.swift
//  SearchBarCompletion
//
//  Created by Philippe on 06/03/2017.
//  Copyright © 2017 CookMinute. All rights reserved.
//

import UIKit

public class ModernSearchBarModel: NSObject {
    
    public var id: Int!
    public var title: String!
    public var link: String!
    public var url: URL!
    public var imgCache: UIImage!
    
    public init(id: Int, title: String, urlImage: String, link: String) {
        super.init()
        self.id = id
        self.title = title
        self.link = link
        if let newUrl = URL(string: urlImage) {
            self.url = newUrl
        } else {
            print("ModernSearchBarModel: Seems url is not valid...")
            self.url = URL(string: "https://ssl.gstatic.com/images/branding/product/1x/avatar_anonymous_square_512dp.png")
        }
    }
}
