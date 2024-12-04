import SwiftUI

struct ScheduleRowsView: View {
    @Binding var scheduleCells: [[ScheduleCell]]
    let cellSize: CGSize
    @Binding var selectedCell: ScheduleCell?
    @Binding var isModalPresented: Bool

    var body: some View {
        ForEach(0..<scheduleCells.count, id: \.self) { rowIndex in
            HStack(spacing: 0) {
                Text("Zeile \(rowIndex + 1)")
                    .frame(width: cellSize.width * 0.5, height: cellSize.height)
                    .border(Color.gray)
                    .font(.subheadline)
                    .multilineTextAlignment(.center)

                ForEach(0..<scheduleCells[rowIndex].count, id: \.self) { columnIndex in
                    ScheduleCellView(
                        cell: $scheduleCells[rowIndex][columnIndex],
                        cellSize: cellSize,
                        selectedCell: $selectedCell,
                        isModalPresented: $isModalPresented
                    )
                }
            }
        }
    }
}
