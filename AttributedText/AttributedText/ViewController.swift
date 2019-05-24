//
//  ViewController.swift
//  AttributedText
//
//  Created by Dinh, Nhat | Nate | MPB on 2019/05/24.
//  Copyright © 2019 Dinh, Nhat | Nate | MPB. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        let aux = "※合計金額が3,000円（税抜、送料別・ポイント、クーポン利用別）以上のお買い物が対象となります。<a href=\"/static/guide#ftbInfo\">その他の詳細条件はこちら</a>"

        let options = [NSAttributedString.DocumentReadingOptionKey.documentType : NSAttributedString.DocumentType.html,
        ]

        do {
            let attributedString = try NSMutableAttributedString.init(data: aux.data(using: .unicode)!, options: options, documentAttributes: nil)
            let textView = UITextView()
            textView.frame = CGRect.init(x: 10.0, y: 100.0, width: 300.0, height: 800.0)
            textView.attributedText = attributedString
            textView.textColor = .black
            textView.delegate = self
            textView.isEditable = false
            self.view.addSubview(textView)
        } catch {

        }
    }

    // MARK: - Text View Delegate

    func textView(_ textView: UITextView,
                  shouldInteractWith URL: URL,
                  in characterRange: NSRange,
                  interaction: UITextItemInteraction) -> Bool {

        UIApplication.shared.open(URL)

        return false
    }
}

