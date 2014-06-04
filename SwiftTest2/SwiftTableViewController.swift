//  Copyright (c) 2014 Zack McBride. All rights reserved.

import UIKit

class SwiftTableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet var tableView : UITableView

    let defaultCells = ["Swift", "Makes Me", "Feel", "Weird inside"];

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Schwifty"
        tableView.delegate = self
        tableView.dataSource = self
    }

    // UITableViewDataSource Functions
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        return defaultCells.count
    }

    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
        let data = defaultCells[indexPath.row]
        let cell = UITableViewCell(style: .Subtitle, reuseIdentifier: nil)
        cell.textLabel.text = data;
        return cell;
    }

    // UITableViewDelegate Functions
    func tableView(tableView: UITableView!, didSelectRowAtIndexPath indexPath: NSIndexPath!) {
        let swiftDetailViewController = SwiftDetailViewController(tableViewComment: defaultCells[indexPath.row])
        self.navigationController.pushViewController(swiftDetailViewController, animated: true)
    }

}
