import Foundation
import Clairvoyant
import BinaryCodable

#if canImport(FoundationNetworking)
import FoundationNetworking
#endif

#if canImport(ClairvoyantClient)
import ClairvoyantClient

extension MetricConsumer {

    /**
     Create a metric consumer.
     
     - Parameter url: The url to the server where the metrics are exposed
     - Parameter accessProvider: The provider of access tokens to get metrics
     - Parameter session: The url session to use for the request
     - Parameter encoder: The encoder to use for encoding outgoing data
     - Parameter decoder: The decoder to decode received data
     */
    public init(
        from url: URL,
        accessProvider: RequestAccessProvider,
        session: URLSession = .shared,
        encoder: BinaryCodable.BinaryEncoder = .init(),
        decoder: BinaryCodable.BinaryDecoder = .init()) {
            self.init(
                url: url,
                accessProvider: accessProvider,
                session: session,
                encoder: encoder,
                decoder: decoder)
    }
}
#endif
