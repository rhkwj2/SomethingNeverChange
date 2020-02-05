//
//  ViewController.swift
//  SomethingNeverChange
//
//  Created by Kim Yeon Jeong on 2019/12/2.
//  Copyright © 2019 Kim Yeon Jeong. All rights reserved.
//

import UIKit



class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var tableView: UITableView!

    let lyrics = [Lyrics(text: "Some things never change Like how I'm holding on tight to you", name: "anna"),
                  Lyrics(text: "Yeah, some things never change. Like the love that I feel for her. Some things stay the same.Like how reindeers are easier. But if I commit and I go for it, I'll know what to say and do. Right?", name: "kristoff"),
                  Lyrics(text: "Some things never change", name: "sven"),
                  Lyrics(text: "These days are precious, can't let them slip away. I can't freeze this moment, but I can still go out and seize this day", name: "elsa"),
                  Lyrics(text: "The wind blows a little bit colder.", name: "all"),
                  Lyrics(text: "And you all look a little bit older.", name: "olaf"),
                  Lyrics(text: "And I promise you the flag of Arendelle will always fly", name: "elsa"),
                  Lyrics(text: "Our flag will always fly. And I'm holding on tight to you.", name: "anna"),
                  Lyrics(text: "I'm holding on tight to.", name: "olaf"),
                  Lyrics(text: "I'm holding on tight to you.", name: "elsa")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.dataSource = self
        tableView.delegate = self
        
        let elsaXib = UINib(nibName: "ElsaTableViewCell", bundle: nil)
        tableView.register(elsaXib, forCellReuseIdentifier: "elsa")
        
        let annaXib = UINib(nibName: "AnnaTableViewCell", bundle: nil)
        tableView.register(annaXib, forCellReuseIdentifier: "anna")
        
        let olafXib = UINib(nibName: "OlafTableViewCell", bundle: nil)
        tableView.register(olafXib, forCellReuseIdentifier: "olaf")
        
        let kristoffXib = UINib(nibName: "KristoffTableViewCell", bundle: nil)
        tableView.register(kristoffXib, forCellReuseIdentifier: "kristoff")
        
        let allXib = UINib(nibName: "AllTableViewCell", bundle: nil)
        tableView.register(allXib, forCellReuseIdentifier: "all")
        
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lyrics.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let showLyrics = lyrics[indexPath.row]
        
        if showLyrics.name == "elsa" {
            
            let elsaCell = tableView.dequeueReusableCell(withIdentifier: "elsa", for: indexPath) as! ElsaTableViewCell
            elsaCell.elsaTextView?.text = showLyrics.text
            
            return elsaCell
            
        } else if showLyrics.name == "anna" {
            
            let annaCell = tableView.dequeueReusableCell(withIdentifier: "anna", for: indexPath) as! AnnaTableViewCell
            annaCell.annaTextView?.text = showLyrics.text
            
            return annaCell
            
        } else if showLyrics.name == "olaf"{
            
            let olafCell = tableView.dequeueReusableCell(withIdentifier: "olaf", for: indexPath) as! OlafTableViewCell
            olafCell.olafTextView?.text = showLyrics.text
            
            return olafCell
            
        } else if showLyrics.name == "olaf"{
            
            let olafCell = tableView.dequeueReusableCell(withIdentifier: "olaf", for: indexPath) as! OlafTableViewCell
            olafCell.olafTextView?.text = showLyrics.text
            
            return olafCell
            
        } else if showLyrics.name == "kristoff"{
        
            let kristoffCell = tableView.dequeueReusableCell(withIdentifier: "kristoff", for: indexPath) as! KristoffTableViewCell
            kristoffCell.kristoffTextView?.text = showLyrics.text
        
            return kristoffCell
        
        } else if showLyrics.name == "sven"{
            let svenCell = tableView.dequeueReusableCell(withIdentifier: "olaf", for: indexPath) as! SvenTableViewCell
            svenCell.svenTextView?.text = showLyrics.text
            return svenCell
            
        } else {
            let allCell = tableView.dequeueReusableCell(withIdentifier: "all", for: indexPath) as! AllTableViewCell
            allCell.allTextView?.text = showLyrics.text
            return allCell
        }
}

    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return UITableView.automaticDimension
        
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        
        if cell is ElsaTableViewCell {
            cell.layoutIfNeeded()
//            elsaCell.elsaChatBubble()
        
        } else if cell is AnnaTableViewCell {
            cell.layoutIfNeeded()
//            annaCell.annaChatBubble()
        
        } else if cell is OlafTableViewCell {
            cell.layoutIfNeeded()
//            olafCell.olafChatBubble()
        
        } else if cell is KristoffTableViewCell {
            cell.layoutIfNeeded()
//            kristoffCell.kristoffChatBubble()
        
        } else if cell is SvenTableViewCell {
            cell.layoutIfNeeded()
//            svenCell.sevenChatBubble()
        
        } else if cell is AllTableViewCell {
              cell.layoutIfNeeded()
//            allCell.allChatBubble()
        }
    }


}
