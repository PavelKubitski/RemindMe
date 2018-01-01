import UIKit


/**
 Reminders list screen
 */
class RemindersViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}

extension RemindersViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return 
    }
}
