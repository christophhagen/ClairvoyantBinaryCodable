import Foundation
import BinaryCodable
import Clairvoyant

extension BinaryCodable.BinaryEncoder: Clairvoyant.BinaryEncoder {

    public func encode<T>(_ value: T) throws -> Data where T : Encodable {
        try self.encode(value)
    }
}
