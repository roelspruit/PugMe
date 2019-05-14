// MARK: - Mocks generated from file: UpdatingImageView/Protocols/ImageDownloading.swift at 2019-05-13 17:38:10 +0000

//
//  ImageDownloading.swift
//  PugMe
//
//  Created by Roel Spruit on 12/04/2019.
//  Copyright © 2019 Roel Spruit. All rights reserved.
//

import Cuckoo
@testable import UpdatingImageView

import Foundation
import UIKit


public class MockImageDownloading: ImageDownloading, Cuckoo.ProtocolMock {
    public typealias MocksType = ImageDownloading
    public typealias Stubbing = __StubbingProxy_ImageDownloading
    public typealias Verification = __VerificationProxy_ImageDownloading

    private var __defaultImplStub: ImageDownloading?

    public let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    public func enableDefaultImplementation(_ stub: ImageDownloading) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }

    

    

    
    
    
    public func getImage(fromUrl url: URL, handler: @escaping (ImageDownloadResult) -> Void)  {
        
            return cuckoo_manager.call("getImage(fromUrl: URL, handler: @escaping (ImageDownloadResult) -> Void)",
                parameters: (url, handler),
                escapingParameters: (url, handler),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.getImage(fromUrl: url, handler: handler))
        
    }
    

	public struct __StubbingProxy_ImageDownloading: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    public init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func getImage<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(fromUrl url: M1, handler: M2) -> Cuckoo.ProtocolStubNoReturnFunction<(URL, (ImageDownloadResult) -> Void)> where M1.MatchedType == URL, M2.MatchedType == (ImageDownloadResult) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(URL, (ImageDownloadResult) -> Void)>] = [wrap(matchable: url) { $0.0 }, wrap(matchable: handler) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockImageDownloading.self, method: "getImage(fromUrl: URL, handler: @escaping (ImageDownloadResult) -> Void)", parameterMatchers: matchers))
	    }
	    
	}

	public struct __VerificationProxy_ImageDownloading: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	    public init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func getImage<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(fromUrl url: M1, handler: M2) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == URL, M2.MatchedType == (ImageDownloadResult) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(URL, (ImageDownloadResult) -> Void)>] = [wrap(matchable: url) { $0.0 }, wrap(matchable: handler) { $0.1 }]
	        return cuckoo_manager.verify("getImage(fromUrl: URL, handler: @escaping (ImageDownloadResult) -> Void)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}

}

public class ImageDownloadingStub: ImageDownloading {
    

    

    
    public func getImage(fromUrl url: URL, handler: @escaping (ImageDownloadResult) -> Void)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}


// MARK: - Mocks generated from file: UpdatingImageView/Protocols/ImageUrlProviding.swift at 2019-05-13 17:38:10 +0000

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


public class MockImageUrlProviding: ImageUrlProviding, Cuckoo.ProtocolMock {
    public typealias MocksType = ImageUrlProviding
    public typealias Stubbing = __StubbingProxy_ImageUrlProviding
    public typealias Verification = __VerificationProxy_ImageUrlProviding

    private var __defaultImplStub: ImageUrlProviding?

    public let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    public func enableDefaultImplementation(_ stub: ImageUrlProviding) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }

    

    

    
    
    
    public func getImageUrls(completion: @escaping ([URL]?) -> Void)  {
        
            return cuckoo_manager.call("getImageUrls(completion: @escaping ([URL]?) -> Void)",
                parameters: (completion),
                escapingParameters: (completion),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.getImageUrls(completion: completion))
        
    }
    

	public struct __StubbingProxy_ImageUrlProviding: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    public init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func getImageUrls<M1: Cuckoo.Matchable>(completion: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(([URL]?) -> Void)> where M1.MatchedType == ([URL]?) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(([URL]?) -> Void)>] = [wrap(matchable: completion) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockImageUrlProviding.self, method: "getImageUrls(completion: @escaping ([URL]?) -> Void)", parameterMatchers: matchers))
	    }
	    
	}

	public struct __VerificationProxy_ImageUrlProviding: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	    public init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
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

public class ImageUrlProvidingStub: ImageUrlProviding {
    

    

    
    public func getImageUrls(completion: @escaping ([URL]?) -> Void)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}


// MARK: - Mocks generated from file: UpdatingImageView/Protocols/ImageViewPresenting.swift at 2019-05-13 17:38:10 +0000

//
//  ImageViewPresenting.swift
//  PugMe
//
//  Created by Roel Spruit on 12/04/2019.
//  Copyright © 2019 Roel Spruit. All rights reserved.
//

import Cuckoo
@testable import UpdatingImageView

import Foundation


 class MockImageViewPresenting: ImageViewPresenting, Cuckoo.ProtocolMock {
     typealias MocksType = ImageViewPresenting
     typealias Stubbing = __StubbingProxy_ImageViewPresenting
     typealias Verification = __VerificationProxy_ImageViewPresenting

    private var __defaultImplStub: ImageViewPresenting?

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

     func enableDefaultImplementation(_ stub: ImageViewPresenting) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }

    

    

    
    
    
     func viewDidLoad()  {
        
            return cuckoo_manager.call("viewDidLoad()",
                parameters: (),
                escapingParameters: (),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.viewDidLoad())
        
    }
    
    
    
     func tappedView()  {
        
            return cuckoo_manager.call("tappedView()",
                parameters: (),
                escapingParameters: (),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.tappedView())
        
    }
    

	 struct __StubbingProxy_ImageViewPresenting: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func viewDidLoad() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockImageViewPresenting.self, method: "viewDidLoad()", parameterMatchers: matchers))
	    }
	    
	    func tappedView() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockImageViewPresenting.self, method: "tappedView()", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_ImageViewPresenting: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func viewDidLoad() -> Cuckoo.__DoNotUse<Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("viewDidLoad()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func tappedView() -> Cuckoo.__DoNotUse<Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("tappedView()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}

}

 class ImageViewPresentingStub: ImageViewPresenting {
    

    

    
     func viewDidLoad()  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     func tappedView()  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}


// MARK: - Mocks generated from file: UpdatingImageView/Protocols/ImageViewing.swift at 2019-05-13 17:38:10 +0000

//
//  ImageViewing.swift
//  PugMe
//
//  Created by Roel Spruit on 12/04/2019.
//  Copyright © 2019 Roel Spruit. All rights reserved.
//

import Cuckoo
@testable import UpdatingImageView

import Foundation
import UIKit


 class MockImageViewing: ImageViewing, Cuckoo.ProtocolMock {
     typealias MocksType = ImageViewing
     typealias Stubbing = __StubbingProxy_ImageViewing
     typealias Verification = __VerificationProxy_ImageViewing

    private var __defaultImplStub: ImageViewing?

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

     func enableDefaultImplementation(_ stub: ImageViewing) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }

    
    
    
     var presenter: ImageViewPresenting? {
        get {
            return cuckoo_manager.getter("presenter",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.presenter)
        }
        
    }
    

    

    
    
    
     func showImage(_ image: UIImage)  {
        
            return cuckoo_manager.call("showImage(_: UIImage)",
                parameters: (image),
                escapingParameters: (image),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.showImage(image))
        
    }
    
    
    
     func showRefreshState()  {
        
            return cuckoo_manager.call("showRefreshState()",
                parameters: (),
                escapingParameters: (),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.showRefreshState())
        
    }
    
    
    
     func showError()  {
        
            return cuckoo_manager.call("showError()",
                parameters: (),
                escapingParameters: (),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.showError())
        
    }
    

	 struct __StubbingProxy_ImageViewing: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    var presenter: Cuckoo.ProtocolToBeStubbedReadOnlyProperty<MockImageViewing, ImageViewPresenting?> {
	        return .init(manager: cuckoo_manager, name: "presenter")
	    }
	    
	    
	    func showImage<M1: Cuckoo.Matchable>(_ image: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(UIImage)> where M1.MatchedType == UIImage {
	        let matchers: [Cuckoo.ParameterMatcher<(UIImage)>] = [wrap(matchable: image) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockImageViewing.self, method: "showImage(_: UIImage)", parameterMatchers: matchers))
	    }
	    
	    func showRefreshState() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockImageViewing.self, method: "showRefreshState()", parameterMatchers: matchers))
	    }
	    
	    func showError() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockImageViewing.self, method: "showError()", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_ImageViewing: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	    var presenter: Cuckoo.VerifyReadOnlyProperty<ImageViewPresenting?> {
	        return .init(manager: cuckoo_manager, name: "presenter", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	
	    
	    @discardableResult
	    func showImage<M1: Cuckoo.Matchable>(_ image: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == UIImage {
	        let matchers: [Cuckoo.ParameterMatcher<(UIImage)>] = [wrap(matchable: image) { $0 }]
	        return cuckoo_manager.verify("showImage(_: UIImage)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func showRefreshState() -> Cuckoo.__DoNotUse<Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("showRefreshState()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func showError() -> Cuckoo.__DoNotUse<Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("showError()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}

}

 class ImageViewingStub: ImageViewing {
    
     var presenter: ImageViewPresenting? {
        get {
            return DefaultValueRegistry.defaultValue(for: (ImageViewPresenting?).self)
        }
        
    }
    

    

    
     func showImage(_ image: UIImage)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     func showRefreshState()  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     func showError()  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}

