/*
 Copyright 2018 New Vector Ltd
 
 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at
 
 http://www.apache.org/licenses/LICENSE-2.0
 
 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
 */

import Foundation

protocol SplitViewCoordinatorDelegate: class {
    // TODO: Remove this method, authentication should not be handled by SplitViewCoordinator
    func splitViewCoordinatorDidCompleteAuthentication(_ coordinator: SplitViewCoordinatorType)
}

/// `SplitViewCoordinatorType` is a protocol describing a Coordinator that handles split view navigation flow.
protocol SplitViewCoordinatorType: Coordinator, Presentable {
    
    var delegate: SplitViewCoordinatorDelegate? { get }
    
    func popToHome(animated: Bool, completion: (() -> Void)?)
    
    // TODO: Do not expose publicly this method
    func restorePlaceholderDetails()
}
