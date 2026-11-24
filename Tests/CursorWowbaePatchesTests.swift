import XCTest
@testable import Codenotch

final class CursorWowbaePatchesTests: XCTestCase {
    func testWeeklyIDIsApiWhenWindowPresent() {
        let windows = [
            LimitWindow(id: "auto", label: "Auto usage", usedFraction: 0.1),
            LimitWindow(id: "api", label: "API usage", usedFraction: 0.19),
        ]
        XCTAssertEqual(CursorWowbaePatches.weeklyID(for: windows), "api")
    }

    func testWeeklyIDNilWithoutApiWindow() {
        let windows = [LimitWindow(id: "auto", label: "Auto usage", usedFraction: 0.1)]
        XCTAssertNil(CursorWowbaePatches.weeklyID(for: windows))
    }
}