import SwiftUI

struct ScheduleHeaderView: View {
    let columnHeaders: [String]
    let cellSize: CGSize

    var body: some View {
        HStack(spacing: 0) {
            Text("") // Leere Ecke oben links
                .frame(width: cellSize.width * 0.5, height: cellSize.height * 0.5)
                .border(Color.gray)
            ForEach(columnHeaders, id: \.self) { header in
                Text(header)
                    .frame(width: cellSize.width, height: cellSize.height * 0.5)
                    .border(Color.gray)
                    .font(.headline)
                    .multilineTextAlignment(.center)
            }
        }
    }
}
