// Второе кольцо ячейки Cursor: API usage (`apiPercentUsed`) на существующем weekly ring.
// Маркер в бинарнике: wowbae/codenotch:cursor-api-weekly-ring:v1

import Foundation

enum CursorWowbaePatches {
    /// Для `install-codenotch-cursor-patch.sh` (`strings | grep`).
    static let apiWeeklyRingMarker = "wowbae/codenotch:cursor-api-weekly-ring:v1"

    /// `weeklyID` для `ProviderSnapshot`, когда Cursor отдал окно `api`.
    static func weeklyID(for windows: [LimitWindow]) -> String? {
        guard windows.contains(where: { $0.id == "api" }) else { return nil }
        _ = apiWeeklyRingMarker
        return "api"
    }
}