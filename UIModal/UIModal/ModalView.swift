import UIKit

public class ModalView: UIView {

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

    private func setUpView() {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: nibName, bundle: bundle)

        self.contentView = nib.instantiate(withOwner: self, options: nil).first as? UIView
        addSubview(contentView)

        contentView.center = self.center
        contentView.autoresizingMask = []
        contentView.translatesAutoresizingMaskIntoConstraints = true

        headingLabel.text = ""
        subheadingLabel.text = ""
    }
    
    public func set(image: UIImage) {
        self.statusImage.image = image
    }
    
    public func set(heading text: String) {
        self.headingLabel.text = text
    }
    
    public func set(subheading text: String) {
        self.subheadingLabel.text = text
    }
}
