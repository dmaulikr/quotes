//
//  ViewController.swift
//  Motivation Quotes App
//
//  Created by Matin Shoghi on 6/8/17.
//  Copyright © 2017 Matin Shoghi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var quote: quotes = quotes()
    @IBOutlet var quoteLabel: UILabel!
    @IBOutlet var authorLabel: UILabel!
    @IBOutlet var authorImage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        quoteLabel.text = "Click Inspire Me for a motivational quote"
        authorLabel.text = ""
        authorImage.image = UIImage(named: "logo_light")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func button(_ sender: AnyObject) {
        let nextQuote = quote.getNextQuote()
        let quoteImage = quote.getQuoteImageName()
        let image = UIImage(named: quoteImage)
        let authorName = quote.getAuthorName()
        
        authorLabel.text = authorName
        quoteLabel.text = nextQuote
        authorImage.image = image
        
    }

}

