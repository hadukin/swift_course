//
//  ViewController.swift
//  Tinkoff
//
//  Created by anatoly on 02.03.2021.
//

import UIKit


class ViewController: UIViewController, UIPickerViewDataSource {
    
    private lazy var companies: [String: String] = [
        "Apple": "AAPL",
        "Microsoft": "MSFT",
        "Google": "GOOG",
        "Amazon": "AMZN",
        "Facebook": "FB",
    ]
    
    @IBOutlet weak var companyNameLabel: UILabel!
    @IBOutlet weak var companySymbolLabel: UILabel!
    @IBOutlet weak var companyMarketlabel: UILabel!
    @IBOutlet weak var regularMarketVolumeLabel: UILabel!
    @IBOutlet weak var companyPickerView: UIPickerView!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        companyNameLabel.text = "-"
        companyPickerView.dataSource = self
        companyPickerView.delegate = self
        
        activityIndicator.hidesWhenStopped = true
        activityIndicator.startAnimating()
        
        requestQuoteUpdate()
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return companies.keys.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        requestQuoteUpdate()
    }
    
    func requestQuote(for symbol: String) {
        let headers = [
            "X-Mboum-Secret": "5X9sGuxxiePyZxsdG8uE1g1wd8Mf79c1B1ZnfFg11Q4FRCZBevDK0B8jlXav"
        ]
        
        let request = NSMutableURLRequest(
            url: NSURL(string: "https://mboum.com/api/v1/qu/quote/?symbol=\(symbol),F")! as URL,
            cachePolicy: .useProtocolCachePolicy,
            timeoutInterval: 10.0)
        request.httpMethod = "GET"
        request.allHTTPHeaderFields = headers
        
        let session = URLSession.shared
        let dataTask = session.dataTask(with: request as URLRequest, completionHandler: { (data, response, error) -> Void in
            if let data = data, (response as? HTTPURLResponse)?.statusCode == 200, error == nil {
                self.parseQuote(from: data)
            }
        })
        
        dataTask.resume()
    }
    
    private func parseQuote(from data: Data) {
        do {
            let jsonObject = try JSONSerialization.jsonObject(with: data, options: [])
            
            guard
                let json = jsonObject as? [[String: Any]],
                let companyName = json[0]["shortName"] as? String,
                let symbol = json[0]["symbol"] as? String,
                let market = json[0]["market"] as? String,
                let regularMarketVolume = json[0]["regularMarketVolume"] as? Int
            else {
                print("JSON ERROR")
                return
            }
            DispatchQueue.main.async { [weak self] in self?.displayStockInfo(
                companyName: companyName,
                symbol: symbol,
                market: market,
                regularMarketVolume: regularMarketVolume
            )
            }
        } catch {
            return print("JSON PARSING ERROR")
        }
    }
    
    private func displayStockInfo(companyName: String, symbol: String, market: String, regularMarketVolume: Int) {
        activityIndicator.stopAnimating()
        companyNameLabel.text = companyName
        companySymbolLabel.text = symbol
        companyMarketlabel.text = market
        regularMarketVolumeLabel.text = "\(regularMarketVolume)"
    }
    
    private func requestQuoteUpdate() {
        activityIndicator.startAnimating()
        companyNameLabel.text = "-"
        companySymbolLabel.text = "-"
        companyMarketlabel.text = "-"
        regularMarketVolumeLabel.text = "-"
        
        let selectedRow = companyPickerView.selectedRow(inComponent: 0)
        let selectedSymbol = Array(companies.values)[selectedRow]
        requestQuote(for: selectedSymbol)
    }
    
}

extension ViewController: UIPickerViewDelegate {
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return Array(companies.keys)[row]
    }
}
