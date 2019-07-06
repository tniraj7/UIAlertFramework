import UIKit

public class ModalView: UIView {

    @IBOutlet private weak var statusImage: UIImageView!
    @IBOutlet private weak var headingLabel: UILabel!
    @IBOutlet private weak var subheadingLabel: UILabel!

    // MARK: Setup View

    let nibName = "ModalView"
    var contentView: UIView!
    var timer: Timer?

    public override init(frame: CGRect) {
        super.init(frame: frame)
        setUpView()
    }

    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setUpView()
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
    
    public override func layoutSubviews() {
        self.layoutIfNeeded()
        self.contentView.layer.masksToBounds = true
        self.contentView.clipsToBounds = true
        self.contentView.layer.cornerRadius = 10
    }
    
    public override func didMoveToSuperview() {
        self.timer = Timer.scheduledTimer(
            timeInterval: TimeInterval(3.0),
            target: self,
            selector: #selector(self.dismiss),
            userInfo: nil,
            repeats: false
        )
    }
    
    @objc private func dismiss() {
        self.removeFromSuperview()
    }
}
