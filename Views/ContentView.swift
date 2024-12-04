//import SwiftUI
//
//struct ContentView: View {
//    @State private var scheduleCells: [[ScheduleCell]] = ContentView.createScheduleCells()
//    @State private var selectedCell: ScheduleCell? = nil
//    @State private var isModalPresented: Bool = false
//    
//    let columnHeaders = ["Mo", "Tu", "We", "Th", "Fr"]
//    
//    static func createScheduleCells() -> [[ScheduleCell]] {
//        let singleRow = Array(repeating: ScheduleCell(classInfo: nil, needsClassBookReminder: false), count: 5)
//        return Array(repeating: singleRow, count: 12)
//    }
//    
//    var body: some View {
//        NavigationStack {
//            GeometryReader { proxy in
//                let cellSize = LayoutHelper.calculateCellSize(proxy: proxy, totalRows: 13, totalColumns: 6)
//                
//                ScrollView {
//                    VStack(spacing: 0) {
//                        ScheduleHeaderView(columnHeaders: columnHeaders, cellSize: cellSize)
//                        ScheduleRowsView(
//                            scheduleCells: $scheduleCells,
//                            cellSize: cellSize,
//                            selectedCell: $selectedCell,
//                            isModalPresented: $isModalPresented
//                        )
//                    }
//                    .modifier(LayoutHelper.centeredFrame())
//                }
//            }
//            .navigationTitle("Stundenplan")
//        }
//        .sheet(isPresented: $isModalPresented) {
//            if let selectedCell = selectedCell {
//                VStack {
//                    Text("Debugging Info")
//                    Text("Selected Cell ID: \(selectedCell.id)")
//                    Text("Class Name: \(selectedCell.classInfo?.name ?? "No Class")")
//                    AddClassModalView(scheduleCell: Binding(
//                        get: { selectedCell },
//                        set: { updatedCell in
//                            if let rowIndex = scheduleCells.firstIndex(where: { row in
//                                row.contains(where: { $0.id == selectedCell.id })
//                            }),
//                               let columnIndex = scheduleCells[rowIndex].firstIndex(where: { $0.id == selectedCell.id }) {
//                                scheduleCells[rowIndex][columnIndex] = updatedCell
//                            }
//                        }
//                    ))
//                }
//            }
//        }
//    }
//     
//}
