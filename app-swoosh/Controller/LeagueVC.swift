//
//  LeagueVC.swift
//  app-swoosh
//
//  Created by owner on 04/11/2020.
//  Copyright © 2020 AppCoda. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    
    var player: Player!

    @IBAction func whenNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "SkillVCSegue", sender: self)
    }
    
    @IBOutlet weak var nextButton: CustomButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        player = Player()
    }
    
    @IBAction func whenMensTapped(_ sender: Any) {
        enableNextButton(selectedLeague: "Mens")
    }
    
    @IBAction func whenWomensTapped(_ sender: Any) {
        enableNextButton(selectedLeague: "Womens")
    }
    @IBAction func whenCoedTapped(_ sender: Any) {
        enableNextButton(selectedLeague: "Coed")
    }
    
    func enableNextButton(selectedLeague: String){
        player.selectedLeague = selectedLeague
        nextButton.isEnabled = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC{
            skillVC.player = player
        }
    }
    
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
