
import UIKit
import Cosmos

class CustomTableViewCell: UITableViewCell {

    @IBOutlet var imageOfPlaces: UIImageView! {
        didSet{
            imageOfPlaces.layer.cornerRadius = imageOfPlaces.frame.size.height / 2
            imageOfPlaces.clipsToBounds = true
        }
    }
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var locationLabel: UILabel!
    @IBOutlet var typeLabel: UILabel!
    @IBOutlet var cosmosView: CosmosView! {
        didSet{
            cosmosView.settings.updateOnTouch = false
        }
    }
    
}
