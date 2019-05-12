// MARK: - Mocks generated from file: UpdatingImageView/Protocol/ImageUrlProviding.swift at 2019-05-12 15:30:04 +0000

//
//  ImageUrlProviding.swift
//  PugMe
//
//  Created by Roel Spruit on 12/04/2019.
//  Copyright © 2019 Roel Spruit. All rights reserved.
//

import Cuckoo
@testable import UpdatingImageView

import Foundation

class MockImageUrlProviding: ImageUrlProviding, Cuckoo.ProtocolMock {
    typealias MocksType = ImageUrlProviding
    typealias Stubbing = __StubbingProxy_ImageUrlProviding
    typealias Verification = __VerificationProxy_ImageUrlProviding

    private var __defaultImplStub: ImageUrlProviding?

    let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    func enableDefaultImplementation(_ stub: ImageUrlProviding) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }

    

    

    
    // ["name": "getImageUrls", "returnSignature": "", "fullyQualifiedName": "getImageUrls(completion: @escaping ([URL]?) -> Void)", "parameterSignature": "completion: @escaping ([URL]?) -> Void", "parameterSignatureWithoutNames": "completion: @escaping ([URL]?) -> Void", "inputTypes": "([URL]?) -> Void", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": true, "@type": "ProtocolMethod", "accessibility": "public", "parameterNames": "completion", "call": "completion: completion", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("completion"), name: "completion", type: "@escaping ([URL]?) -> Void", range: CountableRange(223..<261), nameRange: CountableRange(223..<233))], "returnType": "Void", "isOptional": false, "escapingParameterNames": "completion", "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
    public func getImageUrls(completion: @escaping ([URL]?) -> Void)  {
        
            return cuckoo_manager.call("getImageUrls(completion: @escaping ([URL]?) -> Void)",
                parameters: (completion),
                escapingParameters: (completion),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.getImageUrls(completion: completion))
        
    }
    

	struct __StubbingProxy_ImageUrlProviding: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func getImageUrls<M1: Cuckoo.Matchable>(completion: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(([URL]?) -> Void)> where M1.MatchedType == ([URL]?) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(([URL]?) -> Void)>] = [wrap(matchable: completion) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockImageUrlProviding.self, method: "getImageUrls(completion: @escaping ([URL]?) -> Void)", parameterMatchers: matchers))
	    }
	    
	}

	struct __VerificationProxy_ImageUrlProviding: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	    init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func getImageUrls<M1: Cuckoo.Matchable>(completion: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == ([URL]?) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(([URL]?) -> Void)>] = [wrap(matchable: completion) { $0 }]
	        return cuckoo_manager.verify("getImageUrls(completion: @escaping ([URL]?) -> Void)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}

}

 class ImageUrlProvidingStub: ImageUrlProviding {
    

    

    
    public func getImageUrls(completion: @escaping ([URL]?) -> Void)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}

