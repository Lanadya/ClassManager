import SwiftUI

struct ScheduleCellView: View {
    @Binding var cell: ScheduleCell
    let cellSize: CGSize
    @Binding var selectedCell: ScheduleCell?
    @Binding var isModalPresented: Bool

    var body: some View {
        ZStack {
            // Hintergrund der Zelle
            Rectangle()
                .fill(cell.classInfo == nil ? Color.gray.opacity(0.2) : Color.blue.opacity(0.7))
                .border(Color.gray)
                .onTapGesture {
                    // Öffnet das Modal und übergibt die Zelle
                    selectedCell = cell
                    isModalPresented = true
                }

            // Inhalt der Zelle
            if let classInfo = cell.classInfo {
                VStack {
                    Text(classInfo.name)
                        .font(.headline)
                        .foregroundColor(.white)
                    if let room = classInfo.room {
                        Text("Raum: \(room)")
                            .font(.subheadline)
                            .foregroundColor(.white)
                    }
                    if let subject = classInfo.subject {
                        Text(subject)
                            .font(.caption)
                            .foregroundColor(.white)
                    }
                    if cell.needsClassBookReminder {
                        Text("📚")
                            .font(.largeTitle)
                            .foregroundColor(.yellow)
                    }
                }
            } else {
                Text("Leere Zelle")
                    .font(.caption)
                    .foregroundColor(.black)
            }
        }
        .frame(width: cellSize.width, height: cellSize.height)
    }
}
