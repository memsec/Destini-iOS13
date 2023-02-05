
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storybrain = StoryBrain()
    
//    let story0 = "You see a fork in the road."
//    let choice1 = "Take a left."
//    let choice2 = "Take a right."
//    let example = [Story(title: "You see a fork in the road.", choice1: " tale a left.", choice2:"Take a right"),
//                            Story(title: "You see a tiger.", choice1: "Shout for help.", choice2: "Play dead"),
//                            Story(title: "You a tresaure chest.", choice1: "Open it.", choice2: "Check for tramps")]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
//        storyLabel.text = example[0].title
//        choice1Button.setTitle(example[0].choice1, for: .normal)
//        choice2Button.setTitle(example[0].choice2, for: .normal)
    }
    
    @IBAction func choiceMade(_ sender: UIButton){
        storyNo = storybrain.nextStory(userChoice: sender.currentTitle!)
        updateUI()
        
    }

    func updateUI() {
        storyLabel.text = storybrain.stories[storyNo].title
        choice1Button.setTitle(storybrain.stories[storyNo].choice1, for: .normal)
        choice2Button.setTitle(storybrain.stories[storyNo].choice2, for: .normal)
    }

}

