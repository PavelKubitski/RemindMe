import UIKit


/**
 Reminders list screen
 */
class RemindersViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Напоминания"
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "DefaultCell")
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add,
                                                            target: self,
                                                            action: #selector(onAddButtonDidPressed))
    }

    @objc
    private func onAddButtonDidPressed() {
        guard let navController = navigationController else {
            return
        }
        
        CreateReminderViewController.push(navController)
    }
    
    // MARK: - Table view
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DefaultCell", for: indexPath)
        
        let view: ReminderView = ReminderView.fromNib()
        view.frame = cell.bounds
        cell.addSubview(view)
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }

}
