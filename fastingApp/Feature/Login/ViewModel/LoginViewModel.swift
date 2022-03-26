//
//  LoginViewModel.swift
//  fastingApp
//
//  Created by Milk Jiraporn on 25/3/2565 BE.
//

import Foundation
import Combine
import SwiftUI
import AVFoundation

enum LoginState {
   case successfull
    case failed(error:Error)
    case na
}
protocol LoginViewModel {
    func login()
    var service: LoginService {get}
    var state: LoginState {get}
    var credentials: LoginCredentials {get}
    init(service: LoginService)
}
final class LoginViewModelImpl: ObservableObject, LoginViewModel {
    @Published var state: LoginState = .na
    @Published var credentials: LoginCredentials = LoginCredentials.new
    private var subscription = Set<AnyCancellable>()
    let service: LoginService
    init(service: LoginService) {
        self.service = service
    }
    func login() {
        service
            .login(with: credentials)
            .sink { res in
                switch res {
                case .failure(let err):
                    self.state = .failed(error: err)
                default:break
                }
                
            }receiveValue: { [weak self] in
                self?.state = .successfull
            }
            .store(in: &subscription)
    }
}
