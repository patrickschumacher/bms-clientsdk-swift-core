/*
*     Copyright 2016 IBM Corp.
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
    A singleton that serves as an entry point to MobileFirst Platform Foundation client-server communication.
*/
public class MFPClient: BaseClient {
    
    
    // MARK: Properties (public)
    
    /// Specifies the default timeout (in seconds) for all BMS network requests.
    public var defaultRequestTimeout: Double = 20.0
    
}
