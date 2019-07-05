import UIKit

class ModalView: UIView {

    @IBOutlet private weak var statusImage: UIImageView!
    @IBOutlet private weak var headingLabel: UILabel!
    @IBOutlet private weak var subheadingLabel: UILabel!
    
    // MARK: Setup View
    
    let nibName = "ModalView"
    var contentView: UIView!
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        setUpView()
    }
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setUpView()
    }
    
    func setUpView() {
        
    }
}
