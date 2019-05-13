// MARK: - Mocks generated from file: PugMe/Networking/DataProtocols.swift at 2019-05-13 07:20:52 +0000

//
//  DataProtocols.swift
//  PugMe
//
//  Created by Roel Spruit on 20/10/2018.
//  Copyright © 2018 DinkyWonder. All rights reserved.
//

import Cuckoo
@testable import PugMe

import Foundation


 class MockDataRequesting: DataRequesting, Cuckoo.ProtocolMock {
     typealias MocksType = DataRequesting
     typealias Stubbing = __StubbingProxy_DataRequesting
     typealias Verification = __VerificationProxy_DataRequesting

    private var __defaultImplStub: DataRequesting?

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

     func enableDefaultImplementation(_ stub: DataRequesting) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }

    

    

    
    
    
     func getData(fromUrl url: URL, handler: @escaping (Data?, Error?) -> Void)  {
        
            return cuckoo_manager.call("getData(fromUrl: URL, handler: @escaping (Data?, Error?) -> Void)",
                parameters: (url, handler),
                escapingParameters: (url, handler),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.getData(fromUrl: url, handler: handler))
        
    }
    
    
    
     func getData(withRequest request: URLRequest, handler: @escaping (Data?, Error?) -> Void)  {
        
            return cuckoo_manager.call("getData(withRequest: URLRequest, handler: @escaping (Data?, Error?) -> Void)",
                parameters: (request, handler),
                escapingParameters: (request, handler),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.getData(withRequest: request, handler: handler))
        
    }
    

	 struct __StubbingProxy_DataRequesting: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func getData<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(fromUrl url: M1, handler: M2) -> Cuckoo.ProtocolStubNoReturnFunction<(URL, (Data?, Error?) -> Void)> where M1.MatchedType == URL, M2.MatchedType == (Data?, Error?) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(URL, (Data?, Error?) -> Void)>] = [wrap(matchable: url) { $0.0 }, wrap(matchable: handler) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockDataRequesting.self, method: "getData(fromUrl: URL, handler: @escaping (Data?, Error?) -> Void)", parameterMatchers: matchers))
	    }
	    
	    func getData<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(withRequest request: M1, handler: M2) -> Cuckoo.ProtocolStubNoReturnFunction<(URLRequest, (Data?, Error?) -> Void)> where M1.MatchedType == URLRequest, M2.MatchedType == (Data?, Error?) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(URLRequest, (Data?, Error?) -> Void)>] = [wrap(matchable: request) { $0.0 }, wrap(matchable: handler) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockDataRequesting.self, method: "getData(withRequest: URLRequest, handler: @escaping (Data?, Error?) -> Void)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_DataRequesting: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func getData<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(fromUrl url: M1, handler: M2) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == URL, M2.MatchedType == (Data?, Error?) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(URL, (Data?, Error?) -> Void)>] = [wrap(matchable: url) { $0.0 }, wrap(matchable: handler) { $0.1 }]
	        return cuckoo_manager.verify("getData(fromUrl: URL, handler: @escaping (Data?, Error?) -> Void)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func getData<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(withRequest request: M1, handler: M2) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == URLRequest, M2.MatchedType == (Data?, Error?) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(URLRequest, (Data?, Error?) -> Void)>] = [wrap(matchable: request) { $0.0 }, wrap(matchable: handler) { $0.1 }]
	        return cuckoo_manager.verify("getData(withRequest: URLRequest, handler: @escaping (Data?, Error?) -> Void)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}

}

 class DataRequestingStub: DataRequesting {
    

    

    
     func getData(fromUrl url: URL, handler: @escaping (Data?, Error?) -> Void)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     func getData(withRequest request: URLRequest, handler: @escaping (Data?, Error?) -> Void)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}


// MARK: - Mocks generated from file: PugMe/RedditClient/RedditClientProtocols.swift at 2019-05-13 07:20:52 +0000

//
//  Protocols.swift
//  RedditClient
//
//  Created by Roel Spruit on 22/10/2018.
//  Copyright © 2018 DinkyWonder. All rights reserved.
//

import Cuckoo
@testable import PugMe

import Foundation


 class MockRedditClient: RedditClient, Cuckoo.ProtocolMock {
     typealias MocksType = RedditClient
     typealias Stubbing = __StubbingProxy_RedditClient
     typealias Verification = __VerificationProxy_RedditClient

    private var __defaultImplStub: RedditClient?

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

     func enableDefaultImplementation(_ stub: RedditClient) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }

    

    

    
    
    
     func getNewListings(subreddit: String, completion: @escaping (RedditListingResponse?) -> Void)  {
        
            return cuckoo_manager.call("getNewListings(subreddit: String, completion: @escaping (RedditListingResponse?) -> Void)",
                parameters: (subreddit, completion),
                escapingParameters: (subreddit, completion),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.getNewListings(subreddit: subreddit, completion: completion))
        
    }
    

	 struct __StubbingProxy_RedditClient: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func getNewListings<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(subreddit: M1, completion: M2) -> Cuckoo.ProtocolStubNoReturnFunction<(String, (RedditListingResponse?) -> Void)> where M1.MatchedType == String, M2.MatchedType == (RedditListingResponse?) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(String, (RedditListingResponse?) -> Void)>] = [wrap(matchable: subreddit) { $0.0 }, wrap(matchable: completion) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockRedditClient.self, method: "getNewListings(subreddit: String, completion: @escaping (RedditListingResponse?) -> Void)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_RedditClient: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func getNewListings<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(subreddit: M1, completion: M2) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == String, M2.MatchedType == (RedditListingResponse?) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(String, (RedditListingResponse?) -> Void)>] = [wrap(matchable: subreddit) { $0.0 }, wrap(matchable: completion) { $0.1 }]
	        return cuckoo_manager.verify("getNewListings(subreddit: String, completion: @escaping (RedditListingResponse?) -> Void)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}

}

 class RedditClientStub: RedditClient {
    

    

    
     func getNewListings(subreddit: String, completion: @escaping (RedditListingResponse?) -> Void)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}

