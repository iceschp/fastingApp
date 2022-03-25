//
//  RegistrationViewModel.swift
//  fastingApp
//
//  Created by Milk Jiraporn on 24/3/2565 BE.
//

import Foundation
import Combine

enum RegistraionState {
    case successful
    case failed (error: Error)
    case na
}
protocol RegistrationViewModel {
    func register()
    var service: RegistrationService {get}
    var state: RegistraionState{get}
    var userDetails: RegistrationDetails {get}
    init (service: RegistrationService)
}

final class RegistrationViewModelImpl: ObservableObject,RegistrationViewModel {
    
    let service: RegistrationService
    
    var state: RegistraionState = .na
    private var subscriptions = Set<AnyCancellable>()
    
    var userDetails:RegistrationDetails = RegistrationDetails.new
init(service: RegistrationService) {
    self.service = service
}
func register() {
    service
        .register(with: userDetails)
        .sink{[weak self] res in
            switch res {
            case .failure(let error):
                self?.state = .failed(error:error)
            default: break
            }
        } receiveValue:{[weak self] in
            self?.state = .successful
        }
         .store(in: &subscriptions)
        }
}

