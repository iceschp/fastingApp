//
//  RegistrationViewModel.swift
//  fastingApp
//
//  Created by Milk Jiraporn on 24/3/2565 BE.
//

import Foundation
import Combine

enum RegistraionState {
    case successfull
    case failed (error: Error)
    case na
}
protocol RegistrationViewModel {
    func register()
    var hasError: Bool {get}
    var service: RegistrationService {get}
    var state: RegistraionState{get}
    var userDetails: RegistrationDetails {get}
    init (service: RegistrationService)
}

final class RegistrationViewModelImpl: ObservableObject,RegistrationViewModel {
    
    @Published var hasError: Bool = false
    @Published var state: RegistraionState = .na
    
    let service: RegistrationService
    var userDetails : RegistrationDetails = RegistrationDetails.new
    private var subscriptions = Set<AnyCancellable>()
    
    init(service: RegistrationService) {
    self.service = service
        setupErrorSubscription()
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
            self?.state = .successfull
        }
         .store(in: &subscriptions)
        }
}

private extension RegistrationViewModelImpl {
    
    func setupErrorSubscription() {
        
        $state
            .map { state -> Bool in
                switch state {
                case .successfull,
                     .na:
                    return false
                case .failed:
                    return true
                }
            }
            .assign(to: &$hasError)
    }
}

