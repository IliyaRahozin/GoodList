//
//  AddTaskViewController].swift
//  GoodList
//
//  Created by Illia Rahozin on 15.11.2023.
//

import UIKit
import RxSwift

class AddTaskViewController: UIViewController {
    
    private let taskSubject = PublishSubject<Task>()
    
    var taskSubjectObservable: Observable<Task> {
        return taskSubject.asObserver()
    }
    
    @IBOutlet weak var prioritySegmentControl: UISegmentedControl!
    @IBOutlet weak var textField: UITextField!
    
    @IBAction func save() {
        guard let priority = Priority(rawValue: self.prioritySegmentControl.selectedSegmentIndex),
              let title = textField.text else {
            return
        }
        
        let task = Task(title: title, prority: priority)
        taskSubject.onNext(task)
        
        self.dismiss(animated: true)
    }
}
