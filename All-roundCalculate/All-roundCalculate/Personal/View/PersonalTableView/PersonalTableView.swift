//
//  PersonalTableView.swift
//  All-roundCalculate
//
//  Created by chuangchuang wang on 2018/4/19.
//  Copyright © 2018年 chuangchuang wang. All rights reserved.
//

import SnapKit
import UIKit

//格式: typealias 闭包名称 = (参数名称: 参数类型) -> 返回值类型
typealias PersonalBloack = (_ indexpath: IndexPath) -> Void
class PersonalTableView: UITableView {

    let PersonalHeader_Identifier = "PersonalHeader_Identifier"
    let PersonalCell_Identifier = "PersonalCell_Identifier"
    let tableViewHeaderView = Bundle.main.loadNibNamed("PersonalHeaderView", owner: self, options: nil)?.first as! PersonalHeaderView
    var block: PersonalBloack?

    override func awakeFromNib() {
        super.awakeFromNib()

        defaultSetting()
    }

    func defaultSetting() {
        self.delegate = self
        self.dataSource = self
        self.backgroundColor = AudiBgColor
        self.register(UINib(nibName: "PersonalHeader", bundle: nil), forHeaderFooterViewReuseIdentifier: PersonalHeader_Identifier)
        self.register(UINib(nibName: "PersonalCell", bundle: nil), forCellReuseIdentifier: PersonalCell_Identifier)

        let headerView = UIView()
        headerView.addSubview(tableViewHeaderView)
        tableViewHeaderView.snp.makeConstraints { (make) in
            make.edges.equalTo(headerView)
        }
        headerView.backgroundColor = .green
        headerView.frame = CGRect(x: 0, y: 0, width: kScreenWidth, height: 276)
        headerView.layoutIfNeeded()
        self.tableHeaderView = headerView
    }
}

extension PersonalTableView {
    func callBack(personBlock: PersonalBloack?) {
        self.block = personBlock
    }
}

extension PersonalTableView: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView .deselectRow(at: indexPath, animated: true)
        if let block = self.block {
            block(indexPath)
        }
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return profileSections.count
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return profileSections[section].items.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: PersonalCell = tableView.dequeueReusableCell(withIdentifier: PersonalCell_Identifier, for: indexPath) as! PersonalCell
        cell.titleLabel.text = profileSections[indexPath.section].items[indexPath.row]
        return cell
    }

    func tableView(_ tableView: UITableView, estimatedHeightForFooterInSection section: Int) -> CGFloat {
        return 0.001
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }

    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 44
    }

    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let personalHeaderView = Bundle.main.loadNibNamed("PersonalHeader", owner: self, options: nil)?.first as! PersonalHeader
        personalHeaderView.titleLabel.text = profileSections[section].name
        return personalHeaderView
    }
}
