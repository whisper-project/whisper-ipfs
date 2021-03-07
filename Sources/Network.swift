import Foundation

public protocol NetworkIo {    
    func receiveFrom(_ source: String, completionHandler: @escaping (Data) throws -> Void) throws
    func streamFrom(_ source: String, updateHandler: @escaping (Data, URLSessionDataTask) throws -> Bool, completionHandler: @escaping (AnyObject) throws -> Void) throws
    func sendTo(_ target: String, content: Data, completionHandler: @escaping (Data) -> Void) throws
    func sendTo(_ target: String, content: [String], completionHandler: @escaping (Data) -> Void) throws
}
