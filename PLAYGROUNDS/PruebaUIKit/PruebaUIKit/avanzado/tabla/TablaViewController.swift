//
//  TablaViewController.swift
//  PruebaUIKit
//
//  Created by Rafael FERNANDEZ on 26/7/22.
//

import UIKit

extension TablaViewController {
    enum Element {//creamos enumerador para darle los dos tipos de elementos
        case data(String)
        case ad(String)
    }
}

class TablaViewController: UIViewController {
    
    @IBOutlet weak var tableViewCustom: UITableView!
    
    var items: [Element] = {
       var results = [Element]()
        results = (0...100).map { Element.data("Elemento \($0)") }
        
        var inseted = 0
        for i in 0..<(results.count / 4) {
            results.insert(.ad("\(i)"), at: (4 * (i + 1)) + inseted)
            inseted += 1
        }
        return results
    }()
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        
        self.tabBarItem = UITabBarItem(title: "Tabla", image: UIImage(systemName: "t.square"), selectedImage: UIImage(systemName: "t.square.fill"))
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        setup()
    }

    func setup() {
        registerCell()//primero tenemos que registrar la celda. Decirle a la tabla las celdas que puede pintar
        
        tableViewCustom.delegate = self
        tableViewCustom.dataSource = self
        
//        tableViewCustom.reloadData()
//        tableViewCustom.insertRows(at: <#T##[IndexPath]#>, with: <#T##UITableView.RowAnimation#>)
//        tableViewCustom.deleteRows(at: <#T##[IndexPath]#>, with: <#T##UITableView.RowAnimation#>)
//        tableViewCustom.moveRow(at: <#T##IndexPath#>, to: <#T##IndexPath#>)
    }

}

extension TablaViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        switch items[indexPath.row] {
        case .data:
            return 40//tamaño altura datos
        case .ad:
            return 100//tamaño altura anuncios
        }
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForFooterInSection section: Int) -> CGFloat {
        return 20
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        print(indexPath)
    }
    
}

extension TablaViewController: UITableViewDataSource {
    func registerCell() {
        self.tableViewCustom.register(UITableViewCell.self, forCellReuseIdentifier: "UITableViewCellIdentifier")
        self.tableViewCustom.register(DataTableViewCell.nib, forCellReuseIdentifier: DataTableViewCell.identifier)
        self.tableViewCustom.register(AdTableViewCell.nib, forCellReuseIdentifier: AdTableViewCell.identifier)
        self.tableViewCustom.register(CabeceraViewHeaderFooterView.nib, forHeaderFooterViewReuseIdentifier: CabeceraViewHeaderFooterView.identifier)
        self.tableViewCustom.register(FooterViewHeaderFooterView.nib, forHeaderFooterViewReuseIdentifier: FooterViewHeaderFooterView.identifier)
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        items.count
    }
    
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "UITableViewCellIdentifier", for: indexPath)
//        cell.textLabel?.text = (cell.textLabel?.text ?? "") + "-" + items[indexPath.row]
//        return cell
//    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch items[indexPath.row] {
        case .data(let text):
            if let cell = tableView.dequeueReusableCell(withIdentifier: DataTableViewCell.identifier, for: indexPath) as? DataTableViewCell {
                cell.loadCell(title: text)
                return cell
            }
        case .ad(let text):
            if let cell = tableView.dequeueReusableCell(withIdentifier: AdTableViewCell.identifier, for: indexPath) as? AdTableViewCell {
                cell.loadCell(text: text)
                return cell
            }
        }
        
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        guard let header = tableView.dequeueReusableHeaderFooterView(withIdentifier: CabeceraViewHeaderFooterView.identifier) as? CabeceraViewHeaderFooterView else { return nil }
        header.loadHeader()
        return header
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        guard let footer = tableView.dequeueReusableHeaderFooterView(withIdentifier: FooterViewHeaderFooterView.identifier) as? FooterViewHeaderFooterView else { return nil }
        footer.loadFooter()
        return footer
    }
    
}
