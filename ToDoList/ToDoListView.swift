

import SwiftUI

struct ToDoListView: View {
    
    var todos = [
        "Learn SwiftUI",
        "Build an App",
        "Go to the gym",
        "Watch a movie",
        "Go for a walk"
    ]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(todos, id: \.self) { todo in
                    NavigationLink {
                        DetailView(passedValue: todo)
                    } label: {
                        Text(todo)
                    }
                }
            }
            .navigationTitle("School Year")
            .navigationBarTitleDisplayMode(.automatic)
            .listStyle(.plain)
   
            
            
        }
    }
}

#Preview {
    ToDoListView()
}
