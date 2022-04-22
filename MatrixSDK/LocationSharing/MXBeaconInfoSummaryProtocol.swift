// 
// Copyright 2022 The Matrix.org Foundation C.I.C
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//

import Foundation

/// MXBeaconInfoSummaryProtocol decscribes a summary of live location sharing for a user sharing his location in a room.
/// It aggregates the start live location sharing state event `m.beacon_info` with last live location event `m.beacon`.
@objc
public protocol MXBeaconInfoSummaryProtocol: AnyObject {
    
    /// First beacon info event id that start live location
    var identifier: String { get }
    
    /// User id of the beacon info
    var userId: String { get }
    
    /// Live location start event
    var beaconInfo: MXBeaconInfo { get }
    
    /// Last received location event
    var lastBeacon: MXBeacon? { get }
        
    /// Beacon info expiring date
    var expiringDate: UInt64 { get }
    
    /// Indicate if beacon info has expired
    var hasExpired: Bool { get }
    
    /// Indicate if beacon info has stopped
    var hasStopped: Bool { get }
}
