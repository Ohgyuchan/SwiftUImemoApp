import Foundation
import SwiftUI

class Memo: Identifiable, ObservableObject {
    let id: UUID
    @Published var content: String
    let insertedDate: Date
    
    init(content: String, insertedDate: Date = Date.now) {
        id = UUID()
        self.content = content
        self.insertedDate = insertedDate
    }
}
