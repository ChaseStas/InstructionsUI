import SwiftUI

protocol CoachMarkable: CaseIterable {
    var couchMark: CoachMark { get }
}

enum MySteps: CoachMarkable {
    var couchMark: CoachMark {  .init() }

    case step1
    case step2
}

class CoachMarkController<Value: CoachMarkable>: ObservableObject {

    private var items: [Value]

    init() {
        self.items = Value.allCases as! [Value]
    }
    
}
