//
//  Styles.swift
//  Styles_Test
//
//  Created by Pyeatt, Ryan on 10/31/18.
//  Copyright © 2018 Ryan Pyeatt. All rights reserved.
//

import Foundation
import UIKit

struct Styles {
    /* Usage
     --------------------------------------------------------
     UILabel
     myLabel.attributedText = NSAttributedString(string: "Read all about it!", attributes: cellHeader)
     --------------------------------------------------------
     UIButton
     let myNormalAttributedTitle = NSAttributedString(string: "Click Here", attributes: attributes)
     Button.setAttributedTitle(myNormalAttributedTitle, for: .normal)
     -------------------------------------------------------- */
    //Colors
    private static let white            = UIColor.hexStringToUIColor("#ffffff")
    private static let black            = UIColor.hexStringToUIColor("#000000")
    private static let red              = UIColor.hexStringToUIColor("#e7322e")
    private static let orange           = UIColor.hexStringToUIColor("#FF5733")
    private static let blue             = UIColor.hexStringToUIColor("#297dc1")
    private static let gray             = UIColor.hexStringToUIColor("#E4DFDA")
    private static let green            = UIColor.hexStringToUIColor("#9CC84B")
    private static let purple           = UIColor.hexStringToUIColor("#8D64AA")
    
    //Font Text Styles - used to tie into relative scaling from iOS
    private static let title1Metrics    = UIFontMetrics(forTextStyle: .title1)
    private static let title3Metrics    = UIFontMetrics(forTextStyle: .title3)
    private static let subheadMetrics   = UIFontMetrics(forTextStyle: .subheadline)
    private static let bodyMetrics      = UIFontMetrics(forTextStyle: .body)
    private static let footnoteMetrics  = UIFontMetrics(forTextStyle: .footnote)
    private static let caption2Metrics  = UIFontMetrics(forTextStyle: .caption2)
    
    //Fonts - set actual sizes, but leveraging above built-in text styles for relative scaling
    private static let font0        = caption2Metrics.scaledFont(for: UIFont(name: "Avenir-Medium", size: 11)!)
    private static let font0Bold    = caption2Metrics.scaledFont(for: UIFont(name: "Avenir-Heavy", size: 11)!)
    private static let font1        = footnoteMetrics.scaledFont(for: UIFont(name: "Avenir-Medium", size: 13)!)
    private static let font1Bold    = footnoteMetrics.scaledFont(for: UIFont(name: "Avenir-Heavy", size: 13)!)
    private static let font2        = subheadMetrics.scaledFont(for: UIFont(name: "Avenir-Medium", size: 15)!)
    private static let font2Bold    = subheadMetrics.scaledFont(for: UIFont(name: "Avenir-Heavy", size: 15)!)
    private static let font3        = bodyMetrics.scaledFont(for: UIFont(name: "Avenir-Medium", size: 17)!)
    private static let font3Bold    = bodyMetrics.scaledFont(for: UIFont(name: "Avenir-Heavy", size: 17)!)
    private static let font4        = title3Metrics.scaledFont(for: UIFont(name: "Avenir-Medium", size: 20)!)
    private static let font4Bold    = title3Metrics.scaledFont(for: UIFont(name: "Avenir-Heavy", size: 20)!)
    private static let font5        = title1Metrics.scaledFont(for: UIFont(name: "Avenir-Medium", size: 28)!)
    private static let font5Bold    = title1Metrics.scaledFont(for: UIFont(name: "Avenir-Heavy", size: 28)!)
    
    //Background Uses
    static let clear                        = UIColor.clear
    static let blank                        = white
    static let viewBackground               = orange
    static let viewBorder                   = black
    static let buttonBorder                 = green
    static let buttonBackground             = gray
    static let profilePhotoOverlay          = gray.withAlphaComponent(0.6)
    static let badgeBackground              = red
    
    //Text Uses
    static let header: [NSAttributedString.Key: Any] = [NSAttributedString.Key.font: font5Bold, NSAttributedString.Key.foregroundColor: red]
    static let subHeader: [NSAttributedString.Key: Any] = [NSAttributedString.Key.font: font2Bold, NSAttributedString.Key.foregroundColor: orange]
    static let bodyText: [NSAttributedString.Key: Any] = [NSAttributedString.Key.font: font2, NSAttributedString.Key.foregroundColor: black]
    static let helperText: [NSAttributedString.Key: Any] = [NSAttributedString.Key.font: font2Bold, NSAttributedString.Key.foregroundColor: purple]
    static let placeholderText: [NSAttributedString.Key: Any] = [NSAttributedString.Key.font: font2, NSAttributedString.Key.foregroundColor: gray]
    static let buttonText: [NSAttributedString.Key: Any] = [NSAttributedString.Key.font: font3Bold, NSAttributedString.Key.foregroundColor: green]
    static let pageHeader: [NSAttributedString.Key: Any] = [NSAttributedString.Key.font: font4Bold, NSAttributedString.Key.foregroundColor: green]
    static let captionText: [NSAttributedString.Key: Any] = [NSAttributedString.Key.font: font1Bold, NSAttributedString.Key.foregroundColor: gray]
}
