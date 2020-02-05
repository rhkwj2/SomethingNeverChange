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

    let lyrics = [Lyrics(text: "So many things to tell her. But how to make her see? The truth about my past, impossible. She'd turn away from me.", name: "simba"),
                  Lyrics(text: "He's holding back, he's hiding. But what, I can't decide. Why won't he be the king I know he is? The king I see inside?", name: "nala"),
                  Lyrics(text: "Can you feel the love tonight? The peace the evening brings.", name: "simba"),
                  Lyrics(text: "The world, for once, in perfect harmony. With all its living things.", name: "nala"),
                  Lyrics(text: "Can you feel the love tonight? You needn't look too far.", name: "nala"),
                  Lyrics(text: "Stealing through the night's uncertainties. Love is where they are.", name: "simba"),
                  Lyrics(text: "And if he feels the love tonight. In the way I do", name: "nala"),
                  Lyrics(text: "It's enough for this restless wanderer.", name: "simba"),
                  Lyrics(text: "Just to be with you.", name: "simba"),
                  Lyrics(text: "Just to be with you.", name: "nala")]
    
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
        
        } else showLyrics.name == "all"{
        
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
