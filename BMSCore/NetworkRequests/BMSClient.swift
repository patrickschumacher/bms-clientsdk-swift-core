/*
*     Copyright 2015 IBM Corp.
*     Licensed under the Apache License, Version 2.0 (the "License");
*     you may not use this file except in compliance with the License.
*     You may obtain a copy of the License at
*     http://www.apache.org/licenses/LICENSE-2.0
*     Unless required by applicable law or agreed to in writing, software
*     distributed under the License is distributed on an "AS IS" BASIS,
*     WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
*     See the License for the specific language governing permissions and
*     limitations under the License.
*/


/**
    A singleton that serve as an entry point to Bluemix client-server communication.
*/
public class BMSClient: MFPClient {
    
    
    // MARK: Properties (public)
    
    /// This singleton should be used for all `BMSClient` activity
    public static let sharedInstance = BMSClient()
    
    /// Specifies the base back end URL
    public private(set) var bluemixAppRoute: String?
    
    /// Specifies the back end application id.
    public private(set) var bluemixAppGUID: String?
    
    /// Specifies the default timeout (in seconds) for all BMS network requests.
    public var defaultRequestTimeout: Double = 20.0 // seconds
    
    
    
    // MARK: Properties (internal/private)
    
    internal private(set) var rewriteDomain: String?
    
    
    
    // MARK: Initializers
    
    init() {} // Required for sharedInstance to create an empty BMSClient
    
    
    /**
        Sets the base URL for the authorization server.

        - parameter backendRoute: Specifies the base URL for the authorization server
        - parameter backendGUID:  Specifies the GUID of the Bluemix application
     */
    public func initializeForBluemixApp(route bluemixAppRoute: String, GUID bluemixAppGUID: String) {
        self.bluemixAppRoute = bluemixAppRoute
        self.bluemixAppGUID = bluemixAppGUID
        
        rewriteDomain = ""
    }
    
}
