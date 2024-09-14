//
//  ListBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Miguel Mañas Alvarez on 14/9/24.
//

import SwiftUI

struct ListBootcamp: View {
    
    @State var fruits: [String] = [
    "apple", "orange", "banana", "peach"
    ]
    
    @State var veggies: [String] = [
    "tomato", "potato", "carrot"
    ]
    
    var body: some View {
        NavigationView {
            List {
                
                Section(header:
                            HStack {
                    Text("Fruits")
                    Image(systemName: "flame.fill")
                }
                    .font(.headline)
                    .foregroundColor(.orange)
                ) {
                    ForEach(fruits, id: \.self) { fruit in
                        VStack {
                            Text(fruit.capitalized)
                                .font(.caption)
                                .foregroundColor(.white)
                                .padding(.vertical)
//                                .frame(maxWidth: .infinity, maxHeight: .infinity)
//                                .background(Color.pink)
                            
                        }
                    }
                    .onDelete(perform: delete)
                    .onMove(perform: move)
                    .listRowBackground(Color.blue)
                }
                
                Section(header: Text("Veggies")) {
                    ForEach(veggies, id: \.self) { veggie in
                        VStack {
                            Text(veggie.capitalized)
                        }
                    }
                }
            }
            .accentColor(.purple)
//            .listStyle(GroupedListStyle())
//            .listStyle(InsetGroupedListStyle())
//            .listStyle(SidebarListStyle())
            .navigationTitle("Grocery List")
            .navigationBarItems(
                leading: EditButton(),
                trailing: addButton)
        }
        .accentColor(.red)
        
    }//body
    
    var addButton: some View {
        Button("Add") {
            add()
        }
    }
    
    func delete(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    
    func move(indices: IndexSet, newOffset: Int) {
        fruits.move(fromOffsets: indices, toOffset: newOffset)
    }
    
    func add() {
        fruits.append("Coconut")
    }
}

struct ListBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ListBootcamp()
    }
}
