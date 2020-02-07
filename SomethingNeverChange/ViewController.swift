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
    
   

    let lyrics = [Lyrics(text: "Some things never change Like how I'm holding on tight to you", name: Characters.Anna),
                  Lyrics(text: "Yeah, some things never change. Like the love that I feel for her. I'll know what to say and do Right?", name: Characters.Kristoff),
                  Lyrics(text: "Some things never change", name: Characters.Sven),
                  Lyrics(text: "These days are precious, can't let them slip away. I can't freeze this moment, but I can still go out and seize this day", name:Characters.Elsa),
                  Lyrics(text: "The wind blows a little bit colder.", name: Characters.All),
                  Lyrics(text: "And you all look a little bit older.", name: Characters.Olaf),
                  Lyrics(text: "And I promise you the flag of Arendelle will always fly", name: Characters.Elsa),
                  Lyrics(text: "Our flag will always fly. And I'm holding on tight to you.", name: Characters.Anna),
                  Lyrics(text: "I'm holding on tight to.", name: Characters.Olaf),
                  Lyrics(text: "I'm holding on tight to you.", name: Characters.Elsa)]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.dataSource = self
        tableView.delegate = self
        
        let elsaXib = UINib(nibName: "ElsaTableViewCell", bundle: nil)
        tableView.register(elsaXib, forCellReuseIdentifier: Characters.Elsa)
        
        let annaXib = UINib(nibName: "AnnaTableViewCell", bundle: nil)
        tableView.register(annaXib, forCellReuseIdentifier: Characters.Anna)
        
        let olafXib = UINib(nibName: "OlafTableViewCell", bundle: nil)
        tableView.register(olafXib, forCellReuseIdentifier: Characters.Olaf)
        
        let kristoffXib = UINib(nibName: "KristoffTableViewCell", bundle: nil)
        tableView.register(kristoffXib, forCellReuseIdentifier: Characters.Kristoff)
        
        let svenXib = UINib(nibName: "SvenTableViewCell", bundle: nil)
        tableView.register(svenXib, forCellReuseIdentifier: Characters.Sven)
        
        let allXib = UINib(nibName: "AllTableViewCell", bundle: nil)
        tableView.register(allXib, forCellReuseIdentifier: Characters.All)
        
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lyrics.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let showLyrics = lyrics[indexPath.row]
        
        
        if showLyrics.name == Characters.Elsa {
            
            let elsaCell = tableView.dequeueReusableCell(withIdentifier: Characters.Elsa, for: indexPath) as! ElsaTableViewCell
            elsaCell.elsaTextView?.text = showLyrics.text
            
            return elsaCell
            
        } else if showLyrics.name == Characters.Anna {
            
            let annaCell = tableView.dequeueReusableCell(withIdentifier: Characters.Anna, for: indexPath) as! AnnaTableViewCell
            annaCell.annaTextView?.text = showLyrics.text
            
            return annaCell
            
        } else if showLyrics.name == Characters.Olaf {
            
            let olafCell = tableView.dequeueReusableCell(withIdentifier: Characters.Olaf, for: indexPath) as! OlafTableViewCell
            olafCell.olafTextView?.text = showLyrics.text
            
            return olafCell
            
            
        } else if showLyrics.name == Characters.Kristoff {
        
            let kristoffCell = tableView.dequeueReusableCell(withIdentifier: Characters.Kristoff, for: indexPath) as! KristoffTableViewCell
            kristoffCell.kristoffTextView?.text = showLyrics.text
        
            return kristoffCell
        
        } else if showLyrics.name == Characters.Sven {
            let svenCell = tableView.dequeueReusableCell(withIdentifier: Characters.Sven, for: indexPath) as! SvenTableViewCell
            svenCell.svenTextView?.text = showLyrics.text
            return svenCell
            
        } else {
            let allCell = tableView.dequeueReusableCell(withIdentifier: Characters.All, for: indexPath) as! AllTableViewCell
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
            let elsaCell = cell as! ElsaTableViewCell
            elsaCell.drawChatBubble(textView: elsaCell.elsaTextView, containerView: elsaCell.containerView)
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
