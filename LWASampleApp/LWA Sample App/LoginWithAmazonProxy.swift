//
//  LoginWithAmazon.swift
//  Alexa iOS App
//
//  Created by Sheng Bi on 2/11/17.
//  Copyright © 2017 Sheng Bi. All rights reserved.
//

import Foundation
import LoginWithAmazon

class LoginWithAmazonProxy {

    static let sharedInstance = LoginWithAmazonProxy()

    func login(delegate: AIAuthenticationDelegate) {
        AIMobileLib.authorizeUser(forScopes: Settings.Credentials.SCOPES, delegate: delegate, options: nil)
    }
    
    func logout(delegate: AIAuthenticationDelegate) {
        AIMobileLib.clearAuthorizationState(delegate)
    }
    
    func getAccessToken(delegate: AIAuthenticationDelegate) {
        AIMobileLib.getAccessToken(forScopes: Settings.Credentials.SCOPES, withOverrideParams: nil, delegate: delegate)
    }
}
