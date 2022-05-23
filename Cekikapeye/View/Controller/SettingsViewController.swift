//
//  SettingsViewController.swift
//  Cekikapeye
//
//  Created by Bertrand BLOC'H on 03/11/2021.
//  Copyright © 2021 OpenClassrooms. All rights reserved.
//

import UIKit

final class SettingsViewController: UIViewController {

    // MARK: - Outlets

    @IBOutlet private weak var currencyLabel: UILabel!

    // MARK: - View life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let currency = UserDefaults.standard.value(forKey: "currency") as? String
        currencyLabel.text = currency
    }
    
    // MARK: - Actions

    @IBAction private func dismiss() {
        dismiss(animated: true, completion: nil)
    }

    @IBAction private func changeCurrency(_ sender: UIButton) {
        guard let currency = sender.titleLabel?.text else { return }
        currencyLabel.text = currency

        // TODO: - Save currency
        UserDefaults.standard.set(currency, forKey: "currency")
    }
}
