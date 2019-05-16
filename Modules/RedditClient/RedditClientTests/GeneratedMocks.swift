// MARK: - Mocks generated from file: RedditClient/Protocols/RedditDataRequesting.swift at 2019-05-14 15:18:26 +0000

//
//  RedditDataRequesting.swift
//  RedditClient
//
//  Created by Roel Spruit on 13/05/2019.
//  Copyright © 2019 Roel Spruit. All rights reserved.
//

import Cuckoo
@testable import RedditClient

import Foundation


public class MockRedditDataRequesting: RedditDataRequesting, Cuckoo.ProtocolMock {
    public typealias MocksType = RedditDataRequesting
    public typealias Stubbing = __StubbingProxy_RedditDataRequesting
    public typealias Verification = __VerificationProxy_RedditDataRequesting

    private var __defaultImplStub: RedditDataRequesting?

    public let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    public func enableDefaultImplementation(_ stub: RedditDataRequesting) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }

    

    

    
    
    
    public func getData(withRequest request: URLRequest, handler: @escaping (Data?, Error?) -> Void)  {
        
            return cuckoo_manager.call("getData(withRequest: URLRequest, handler: @escaping (Data?, Error?) -> Void)",
                parameters: (request, handler),
                escapingParameters: (request, handler),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.getData(withRequest: request, handler: handler))
        
    }
    

	public struct __StubbingProxy_RedditDataRequesting: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    public init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func getData<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(withRequest request: M1, handler: M2) -> Cuckoo.ProtocolStubNoReturnFunction<(URLRequest, (Data?, Error?) -> Void)> where M1.MatchedType == URLRequest, M2.MatchedType == (Data?, Error?) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(URLRequest, (Data?, Error?) -> Void)>] = [wrap(matchable: request) { $0.0 }, wrap(matchable: handler) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockRedditDataRequesting.self, method: "getData(withRequest: URLRequest, handler: @escaping (Data?, Error?) -> Void)", parameterMatchers: matchers))
	    }
	    
	}

	public struct __VerificationProxy_RedditDataRequesting: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	    public init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func getData<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(withRequest request: M1, handler: M2) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == URLRequest, M2.MatchedType == (Data?, Error?) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(URLRequest, (Data?, Error?) -> Void)>] = [wrap(matchable: request) { $0.0 }, wrap(matchable: handler) { $0.1 }]
	        return cuckoo_manager.verify("getData(withRequest: URLRequest, handler: @escaping (Data?, Error?) -> Void)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}

}

public class RedditDataRequestingStub: RedditDataRequesting {
    

    

    
    public func getData(withRequest request: URLRequest, handler: @escaping (Data?, Error?) -> Void)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}


// MARK: - Mocks generated from file: RedditClient/Protocols/RedditDeviceIDStoring.swift at 2019-05-14 15:18:26 +0000

//
//  RedditDeviceIDStoring.swift
//  RedditClient
//
//  Created by Roel Spruit on 14/05/2019.
//  Copyright © 2019 Roel Spruit. All rights reserved.
//

import Cuckoo
@testable import RedditClient

import Foundation


public class MockRedditDeviceIDStoring: RedditDeviceIDStoring, Cuckoo.ProtocolMock {
    public typealias MocksType = RedditDeviceIDStoring
    public typealias Stubbing = __StubbingProxy_RedditDeviceIDStoring
    public typealias Verification = __VerificationProxy_RedditDeviceIDStoring

    private var __defaultImplStub: RedditDeviceIDStoring?

    public let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    public func enableDefaultImplementation(_ stub: RedditDeviceIDStoring) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }

    
    
    
    public var redditDeviceID: String? {
        get {
            return cuckoo_manager.getter("redditDeviceID",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.redditDeviceID)
        }
        
        set {
            cuckoo_manager.setter("redditDeviceID",
                value: newValue,
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.redditDeviceID = newValue)
        }
        
    }
    

    

    

	public struct __StubbingProxy_RedditDeviceIDStoring: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    public init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    var redditDeviceID: Cuckoo.ProtocolToBeStubbedProperty<MockRedditDeviceIDStoring, String?> {
	        return .init(manager: cuckoo_manager, name: "redditDeviceID")
	    }
	    
	    
	}

	public struct __VerificationProxy_RedditDeviceIDStoring: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	    public init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	    var redditDeviceID: Cuckoo.VerifyProperty<String?> {
	        return .init(manager: cuckoo_manager, name: "redditDeviceID", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	
	    
	}

}

public class RedditDeviceIDStoringStub: RedditDeviceIDStoring {
    
    public var redditDeviceID: String? {
        get {
            return DefaultValueRegistry.defaultValue(for: (String?).self)
        }
        
        set { }
        
    }
    

    

    
}


// MARK: - Mocks generated from file: RedditClient/Protocols/RedditRequestBuilding.swift at 2019-05-14 15:18:26 +0000

//
//  RedditRequestBuilding.swift
//  RedditClient
//
//  Created by Roel Spruit on 13/05/2019.
//  Copyright © 2019 Roel Spruit. All rights reserved.
//

import Cuckoo
@testable import RedditClient

import Foundation


 class MockRedditRequestBuilding: RedditRequestBuilding, Cuckoo.ProtocolMock {
     typealias MocksType = RedditRequestBuilding
     typealias Stubbing = __StubbingProxy_RedditRequestBuilding
     typealias Verification = __VerificationProxy_RedditRequestBuilding

    private var __defaultImplStub: RedditRequestBuilding?

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

     func enableDefaultImplementation(_ stub: RedditRequestBuilding) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }

    

    

    
    
    
     func getOAuthRequest()  -> URLRequest {
        
            return cuckoo_manager.call("getOAuthRequest() -> URLRequest",
                parameters: (),
                escapingParameters: (),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.getOAuthRequest())
        
    }
    
    
    
     func getNewListingRequest(subreddit: String, token: String)  -> URLRequest {
        
            return cuckoo_manager.call("getNewListingRequest(subreddit: String, token: String) -> URLRequest",
                parameters: (subreddit, token),
                escapingParameters: (subreddit, token),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.getNewListingRequest(subreddit: subreddit, token: token))
        
    }
    

	 struct __StubbingProxy_RedditRequestBuilding: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func getOAuthRequest() -> Cuckoo.ProtocolStubFunction<(), URLRequest> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockRedditRequestBuilding.self, method: "getOAuthRequest() -> URLRequest", parameterMatchers: matchers))
	    }
	    
	    func getNewListingRequest<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(subreddit: M1, token: M2) -> Cuckoo.ProtocolStubFunction<(String, String), URLRequest> where M1.MatchedType == String, M2.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String, String)>] = [wrap(matchable: subreddit) { $0.0 }, wrap(matchable: token) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockRedditRequestBuilding.self, method: "getNewListingRequest(subreddit: String, token: String) -> URLRequest", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_RedditRequestBuilding: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func getOAuthRequest() -> Cuckoo.__DoNotUse<URLRequest> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("getOAuthRequest() -> URLRequest", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func getNewListingRequest<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(subreddit: M1, token: M2) -> Cuckoo.__DoNotUse<URLRequest> where M1.MatchedType == String, M2.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String, String)>] = [wrap(matchable: subreddit) { $0.0 }, wrap(matchable: token) { $0.1 }]
	        return cuckoo_manager.verify("getNewListingRequest(subreddit: String, token: String) -> URLRequest", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}

}

 class RedditRequestBuildingStub: RedditRequestBuilding {
    

    

    
     func getOAuthRequest()  -> URLRequest {
        return DefaultValueRegistry.defaultValue(for: URLRequest.self)
    }
    
     func getNewListingRequest(subreddit: String, token: String)  -> URLRequest {
        return DefaultValueRegistry.defaultValue(for: URLRequest.self)
    }
    
}

