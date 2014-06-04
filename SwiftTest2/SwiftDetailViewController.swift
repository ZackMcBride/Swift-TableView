//  Copyright (c) 2014 Zack McBride. All rights reserved.

import UIKit

class SwiftDetailViewController: UIViewController {

    @IBOutlet var sentenceLabel : UILabel

    let sentence: NSString?

    // Object Lifecycle
    init(tableViewComment: NSString?) {
        super.init(nibName: nil, bundle: nil)

        sentence = tableViewComment
    }

    // UIViewController Overrides
    override func viewDidLoad()  {
        super.viewDidLoad()

        title = "Detail"
        sentenceLabel.text = sentence
    }
}
