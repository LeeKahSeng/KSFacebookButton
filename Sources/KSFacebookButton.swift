//
//  KSFacebookButton.swift
//  KSFacebookButtonExample
//
//  Created by Lee Kah Seng on 17/05/2017.
//  Copyright (c) 2017 KSFacebookButton (https://github.com/LeeKahSeng/KSFacebookButton)
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFTWARE.
//

import UIKit

class KSFacebookButton: UIButton {
    
    let buttonNormalBackgroundColor = UIColor(red: 59.0/255.0, green: 89.0/255.0, blue: 152.0/255.0, alpha: 1.0)
    let buttonHighlightBackgroundColor = UIColor(red: 31.0/255.0, green: 44.0/255.0, blue: 82.0/255.0, alpha: 1.0)
    
    @IBInspectable
    public var cornerRadius: CGFloat = 5.0 {
        didSet {
            self.layer.cornerRadius = cornerRadius
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonSetup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonSetup()
    }
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        
        // Set button corner radius
        layer.cornerRadius = cornerRadius
        clipsToBounds = true
        
        // Set Facebook icon
        let bundle = Bundle(for: KSFacebookButton.self)
        let icon = UIImage(named: "icon-facebook", in: bundle, compatibleWith: nil)
        setImage(icon, for: .normal)
    }
    
    override var isHighlighted: Bool {
        willSet {
            backgroundColor = newValue ? buttonHighlightBackgroundColor : buttonNormalBackgroundColor
        }
    }
    
    // MARK: - Private
    private func commonSetup() {
        backgroundColor = buttonNormalBackgroundColor
        setTitleColor(.white, for: .normal)
        setTitleColor(.white, for: .highlighted)
        if #available(iOS 8.2, *) {
            titleLabel?.font = UIFont.systemFont(ofSize: 13, weight: UIFontWeightMedium)
        } else {
            // Fallback on earlier versions
            titleLabel?.font = UIFont.systemFont(ofSize: 13)
        }
    }
    
}
