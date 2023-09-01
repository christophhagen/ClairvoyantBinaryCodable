import XCTest
@testable import ClairvoyantBinaryCodable
@testable import Clairvoyant
import BinaryCodable

final class ClairvoyantBinaryCodableTests: XCTestCase {

    func testAnyTimestamped() throws {

        struct Test: Codable {
            let a: Int
            let b: Double
        }

        try convert(value: 123)
        try convert(value: 3.14)
        try convert(value: Test(a: 123, b: 3.14))
    }

    private func convert<T>(value: T) throws where T: Encodable {
        let timestamped = Timestamped(value: value)
        let encoded = try BinaryEncoder().encode(timestamped)
        print("\(Array(encoded))")
        let decoded: AnyTimestamped = try BinaryDecoder().decode(from: encoded)
        XCTAssertEqual(timestamped.timestamp, decoded.timestamp)
    }
}
