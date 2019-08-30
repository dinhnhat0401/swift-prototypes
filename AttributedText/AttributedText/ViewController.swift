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

        let aux = """
<dl class=\"referral-terms-list\">





        <dt>各ストアでのお買い物ポイントバック対象条件</dt>


        <dd><strong>対象者：</strong>全Rebatesユーザー(Rebatesのマイアカウントをお持ちの方)<br/>
        ・まだアカウントを作成されていない場合は、楽天会員IDにログインし、Rebatesの利用規約に同意していただくと、Rebatesのマイアカウントが作成されます。</dd>

        <dd><strong>対象ストア：</strong>Rebates内全ストア<br/>
        ・本企画ページに記載されているストアに限らず、全ストア対象になります。 <br/>
        <a href="https://www.rebates.jp/stores/" target="_blank">Rebates提携ストアの一覧はこちら</a></dd>

        <dd><strong>ポイントバック対象外条件 </strong><br />
            ・返品、交換、キャンセルをされたお買い物分  </dd>
        <dd>
        ※提携ストアによってポイント対象外条件が異なります <br/>
        ※提携ストアより成果承認されたご注文が対象となります。<br />
            ※旅行サイト等の予約注文につきましては、予約したサービスのご利用後にストアが成果承認したご注文が対象となります。あらかじめご了承ください。<br />
            ※お買い物券などの金券類はポイント対象外となることがあります。<br />
            <strong>
            ※ 獲得ポイント（各種ボーナス＋ポイントバック）は、対象期間中にお買い物された合計金額の20%を上限とさせていただきます。
        </strong>
        <br/>
        <strong>
        詳しくはRebates内の各提携ストアのストアページの「ポイントバック対象外条件」または<a href="https://www.rebates.jp/help/store-exceptions/" target="_blank">「ストア別ポイント対象外条件」</a>を必ずご確認ください。</strong></dd>

        <dt>【7チャンネル】キャンペーンボーナスについて</dt>

        <dd>
        <strong>ボーナスポイント：</strong> 最大100ポイント
        </dd>
        <dd>
        <strong>対象者：</strong>本キャンペーンにエントリーし、「エントリー済み」の表示が確認できた方 <br/>
        ※キャンペーン期間内であってもエントリー前のお買い物は対象になりません。
        </dd>
        <dd>
        <strong>
        条件：エントリーし、2019年6月4日(月)23:59までに合計で3,000円以上（税抜・送料別・ポイント、クーポン利用別）のお買い物
        </strong>
        <br/>
        ※ 獲得ポイント（各種ボーナス＋ポイントバック）は、対象期間中にお買い物された合計金額の20%を上限とさせていただきます。
        </dd>

        <dd><strong>対象ストア：</strong>Rebates内全ストア<br />
        ・本企画ページに記載されているストアに限らず、全ストア対象になります。
        </dd>
        <dd>
        ※ポイントの進呈日について、こちらをご確認ください。<br/>
        ※本キャンペーンページ上で「エントリー済み」の表示がされているが<a href="https://www.rebates.jp/member/subscriptions?l-id=20181204_supersale_faq" target="_blank">マイアカウントページ</a>で本ボーナスがご確認できない場合、お手数ですが下記よりお問い合わせください。
        </dd>
        <dd>
        本キャンペーン特典ボーナスについての<a href="https://www.rebates.jp/help/contact/other/" target="_blank">お問い合わせはこちら</a><br/>
        お問い合わせの際に、下記文言を本文内に記載お願いいたします。
        </dd>

        <dt>初回購入者限定ボーナスについて</dt>

        <dd><strong>ボーナスポイント数：</strong>最大500ポイント</dd>

        <dd><strong>対象者：</strong>Rebatesアカウントを新規作成してから30日以内の方</dd>

        <dd><strong>条件：</strong>Rebatesアカウントを新規作成してから30日以内に、Rebates経由で合計金額3,000円以上（税抜・送料別・ポイント、クーポン利用別）のお買い物 <br/>
        ※ 獲得ポイント（各種ボーナス＋ポイントバック）は、対象期間中にお買い物された合計金額の20%を上限とさせていただきます。
        </dd>

        <dd><strong>対象ストア：</strong>Rebates内全ストア<br />
        ※本企画ページに記載されているストアに限らず、全ストア対象になります。<br/>
        </dd>
        <dd>
        初回購入者限定ボーナスについての<a href="https://www.rebates.jp/help/contact/other/" target="_blank">お問い合わせはこちら</a><br/>
        お問い合わせの際に、下記文言を本文内に記載お願いいたします。<br/>
        【初回購入者限定ボーナスについて】</dd>


        <dt>ポイント付与について</dt>

        <dd>Rebatesで獲得したポイントは、提携ストアからRebates側にお買い物情報が報告された段階で<a href="https://www.rebates.jp/member/subscriptions" target="_blank">マイアカウントページ</a>内で「獲得予定ポイント」として反映されます。<br/>


        「獲得予定ポイント」は、反映された月の翌々月の第二金曜日にPointClub内で「利用可能ポイント」として反映されます。<br/>
        詳しくは<a href="https://www.rebates.jp/help/faq/" target="_blank">ポイント付与スケジュール</a>をご参照下さい。</dd>






        <dd>※「獲得予定ポイント」への反映が2週間ほど時間を要する場合がございます。あらかじめご了承ください。<br/>
        <strong>※ 獲得ポイント（各種ボーナス＋ポイントバック）は、対象期間中にお買い物された合計金額の20%を上限とさせていただきます。</strong><br/>
        ポイントについての<a href="https://www.rebates.jp/help/contact/other/" target="_blank">お問い合わせはこちら</a></dd>

        <dt>獲得ポイントについて</dt>

        <dd>・獲得したポイントは、最後にポイントを獲得した月を含めて1年間有効です<br/>
        ※Rebatesから付与するポイントは全て通常ポイント、ランクアップ対象として付与されます。<br/>
        詳細は<a href="https://ichiba.faq.rakuten.co.jp/app/answers/detail/a_id/681" target="_blank">こちら</a>をご確認ください。</dd>

        <dt>その他注意事項</dt>

        <dd><strong>・Rebatesでのお買い物はSPUプログラム（スーパーポイントアッププログラム）、楽天スーパーSALEの「ショップ買い回り」およびポイント変倍の対象外となります。</strong><br/>
        ・ストアからのお買い物情報は、一部を除き通常7日～14日でRebatesに届きま す。ストアからお買い物情報がRebatesに届き次第、獲得予定ポイントに反映されます。<br/>
        ・ストアと購入された商品によってポイント反映が遅れる場合があります。お買い物から1ヶ月以上経っても、Rebates獲得ポイントにお買い物が表示されない場合下記よりお問い合わせください。
        <br/>
        <a href="https://www.rebates.jp/help/contact/other/" target="blank">お問い合わせはこちら</a></dd>
        <dd>
        ※キャンペーン内容およびポイントバック率については、予告なく変更する場合がございます。
        <br/>
        ご購入された時点で掲載している対象ポイントバック率が適用となります。あらかじめご了承ください。</dd>


        </dl>
"""

        let options = [NSAttributedString.DocumentReadingOptionKey.documentType : NSAttributedString.DocumentType.html,
        ]

        let linkAttributes: [NSAttributedString.Key : Any] = [
            NSAttributedString.Key.foregroundColor: UIColor.red,
            NSAttributedString.Key.underlineStyle: NSUnderlineStyle.single.rawValue
        ]

        do {
            let attributedString = try NSMutableAttributedString.init(data: aux.data(using: .unicode)!, options: options, documentAttributes: nil)
            let textView = UITextView()
            textView.frame = CGRect.init(x: 10.0, y: 100.0, width: self.view.bounds.size.width - 20.0, height: self.view.bounds.size.height - 100.0)
            textView.attributedText = attributedString
            textView.textColor = .black
            textView.font = UIFont.systemFont(ofSize: 14.0)
            textView.linkTextAttributes = linkAttributes
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

