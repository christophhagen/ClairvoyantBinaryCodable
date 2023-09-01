import Foundation
import BinaryCodable
import Clairvoyant

extension BinaryCodable.BinaryDecoder: Clairvoyant.BinaryDecoder {

    public var encodedTimestampLength: Int { 8 }
}
