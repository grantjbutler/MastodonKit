import XCTest
@testable import MastodonKit

class NotificationsTests: XCTestCase {
    static var allTests = [
        ("testAll", testAll),
        ("testNotification", testNotification)
    ]

    func testAll() {
        let resource = Notifications.all()

        XCTAssertEqual(resource.path, "/api/v1/notifications")
        XCTAssertEqual(resource.httpMethod, .get)
        XCTAssertNil(resource.parameters)
        XCTAssertNotNil(resource.parse)
    }

    func testNotification() {
        let resource = Notifications.notification(id: 42)

        XCTAssertEqual(resource.path, "/api/v1/notifications/42")
        XCTAssertEqual(resource.httpMethod, .get)
        XCTAssertNil(resource.parameters)
        XCTAssertNotNil(resource.parse)
    }
}
