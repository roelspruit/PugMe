// MARK: - Mocks generated from file: PugMe/Data/DataProtocols.swift at 2018-10-23 06:56:58 +0000

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

    

    

    
    // ["name": "getData", "returnSignature": "", "fullyQualifiedName": "getData(fromUrl: URL, handler: @escaping (Data?, Error?) -> Void)", "parameterSignature": "fromUrl url: URL, handler: @escaping (Data?, Error?) -> Void", "parameterSignatureWithoutNames": "url: URL, handler: @escaping (Data?, Error?) -> Void", "inputTypes": "URL, (Data?, Error?) -> Void", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": true, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "url, handler", "call": "fromUrl: url, handler: handler", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("fromUrl"), name: "url", type: "URL", range: CountableRange(204..<220), nameRange: CountableRange(204..<211)), CuckooGeneratorFramework.MethodParameter(label: Optional("handler"), name: "handler", type: "@escaping (Data?, Error?) -> Void", range: CountableRange(222..<264), nameRange: CountableRange(222..<229))], "returnType": "Void", "isOptional": false, "escapingParameterNames": "url, handler", "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func getData(fromUrl url: URL, handler: @escaping (Data?, Error?) -> Void)  {
        
            return cuckoo_manager.call("getData(fromUrl: URL, handler: @escaping (Data?, Error?) -> Void)",
                parameters: (url, handler),
                escapingParameters: (url, handler),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.getData(fromUrl: url, handler: handler))
        
    }
    
    // ["name": "getData", "returnSignature": "", "fullyQualifiedName": "getData(withRequest: URLRequest, handler: @escaping (Data?, Error?) -> Void)", "parameterSignature": "withRequest request: URLRequest, handler: @escaping (Data?, Error?) -> Void", "parameterSignatureWithoutNames": "request: URLRequest, handler: @escaping (Data?, Error?) -> Void", "inputTypes": "URLRequest, (Data?, Error?) -> Void", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": true, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "request, handler", "call": "withRequest: request, handler: handler", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("withRequest"), name: "request", type: "URLRequest", range: CountableRange(283..<314), nameRange: CountableRange(283..<294)), CuckooGeneratorFramework.MethodParameter(label: Optional("handler"), name: "handler", type: "@escaping (Data?, Error?) -> Void", range: CountableRange(316..<358), nameRange: CountableRange(316..<323))], "returnType": "Void", "isOptional": false, "escapingParameterNames": "request, handler", "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
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


// MARK: - Mocks generated from file: PugMe/ImageView/ImageViewProtocols.swift at 2018-10-23 06:56:58 +0000

//
//  ImageViewProtocols.swift
//  PugMe
//
//  Created by Roel Spruit on 20/10/2018.
//  Copyright © 2018 DinkyWonder. All rights reserved.
//

import Cuckoo
@testable import PugMe

import Foundation
import UIKit

class MockImageViewBuilding: ImageViewBuilding, Cuckoo.ProtocolMock {
    typealias MocksType = ImageViewBuilding
    typealias Stubbing = __StubbingProxy_ImageViewBuilding
    typealias Verification = __VerificationProxy_ImageViewBuilding

    private var __defaultImplStub: ImageViewBuilding?

    let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    func enableDefaultImplementation(_ stub: ImageViewBuilding) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }

    

    

    
    // ["name": "build", "returnSignature": " -> UIViewController", "fullyQualifiedName": "build() -> UIViewController", "parameterSignature": "", "parameterSignatureWithoutNames": "", "inputTypes": "", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "", "call": "", "parameters": [], "returnType": "UIViewController", "isOptional": false, "escapingParameterNames": "", "stubFunction": "Cuckoo.ProtocolStubFunction"]
     func build()  -> UIViewController {
        
            return cuckoo_manager.call("build() -> UIViewController",
                parameters: (),
                escapingParameters: (),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.build())
        
    }
    

	struct __StubbingProxy_ImageViewBuilding: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func build() -> Cuckoo.ProtocolStubFunction<(), UIViewController> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockImageViewBuilding.self, method: "build() -> UIViewController", parameterMatchers: matchers))
	    }
	    
	}

	struct __VerificationProxy_ImageViewBuilding: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	    init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func build() -> Cuckoo.__DoNotUse<UIViewController> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("build() -> UIViewController", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}

}

 class ImageViewBuildingStub: ImageViewBuilding {
    

    

    
     func build()  -> UIViewController {
        return DefaultValueRegistry.defaultValue(for: UIViewController.self)
    }
    
}


class MockImageDownloading: ImageDownloading, Cuckoo.ProtocolMock {
    typealias MocksType = ImageDownloading
    typealias Stubbing = __StubbingProxy_ImageDownloading
    typealias Verification = __VerificationProxy_ImageDownloading

    private var __defaultImplStub: ImageDownloading?

    let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    func enableDefaultImplementation(_ stub: ImageDownloading) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }

    

    

    
    // ["name": "getImage", "returnSignature": "", "fullyQualifiedName": "getImage(fromUrl: URL, handler: @escaping (ImageDownloadResult) -> Void)", "parameterSignature": "fromUrl url: URL, handler: @escaping (ImageDownloadResult) -> Void", "parameterSignatureWithoutNames": "url: URL, handler: @escaping (ImageDownloadResult) -> Void", "inputTypes": "URL, (ImageDownloadResult) -> Void", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": true, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "url, handler", "call": "fromUrl: url, handler: handler", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("fromUrl"), name: "url", type: "URL", range: CountableRange(294..<310), nameRange: CountableRange(294..<301)), CuckooGeneratorFramework.MethodParameter(label: Optional("handler"), name: "handler", type: "@escaping (ImageDownloadResult) -> Void", range: CountableRange(312..<360), nameRange: CountableRange(312..<319))], "returnType": "Void", "isOptional": false, "escapingParameterNames": "url, handler", "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func getImage(fromUrl url: URL, handler: @escaping (ImageDownloadResult) -> Void)  {
        
            return cuckoo_manager.call("getImage(fromUrl: URL, handler: @escaping (ImageDownloadResult) -> Void)",
                parameters: (url, handler),
                escapingParameters: (url, handler),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.getImage(fromUrl: url, handler: handler))
        
    }
    

	struct __StubbingProxy_ImageDownloading: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func getImage<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(fromUrl url: M1, handler: M2) -> Cuckoo.ProtocolStubNoReturnFunction<(URL, (ImageDownloadResult) -> Void)> where M1.MatchedType == URL, M2.MatchedType == (ImageDownloadResult) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(URL, (ImageDownloadResult) -> Void)>] = [wrap(matchable: url) { $0.0 }, wrap(matchable: handler) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockImageDownloading.self, method: "getImage(fromUrl: URL, handler: @escaping (ImageDownloadResult) -> Void)", parameterMatchers: matchers))
	    }
	    
	}

	struct __VerificationProxy_ImageDownloading: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	    init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
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

 class ImageDownloadingStub: ImageDownloading {
    

    

    
     func getImage(fromUrl url: URL, handler: @escaping (ImageDownloadResult) -> Void)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}


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

    

    

    
    // ["name": "showImage", "returnSignature": "", "fullyQualifiedName": "showImage(_: UIImage)", "parameterSignature": "_ image: UIImage", "parameterSignatureWithoutNames": "image: UIImage", "inputTypes": "UIImage", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "image", "call": "image", "parameters": [CuckooGeneratorFramework.MethodParameter(label: nil, name: "image", type: "UIImage", range: CountableRange(408..<424), nameRange: CountableRange(0..<0))], "returnType": "Void", "isOptional": false, "escapingParameterNames": "image", "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func showImage(_ image: UIImage)  {
        
            return cuckoo_manager.call("showImage(_: UIImage)",
                parameters: (image),
                escapingParameters: (image),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.showImage(image))
        
    }
    
    // ["name": "showRefreshState", "returnSignature": "", "fullyQualifiedName": "showRefreshState()", "parameterSignature": "", "parameterSignatureWithoutNames": "", "inputTypes": "", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "", "call": "", "parameters": [], "returnType": "Void", "isOptional": false, "escapingParameterNames": "", "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func showRefreshState()  {
        
            return cuckoo_manager.call("showRefreshState()",
                parameters: (),
                escapingParameters: (),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.showRefreshState())
        
    }
    
    // ["name": "showError", "returnSignature": "", "fullyQualifiedName": "showError()", "parameterSignature": "", "parameterSignatureWithoutNames": "", "inputTypes": "", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "", "call": "", "parameters": [], "returnType": "Void", "isOptional": false, "escapingParameterNames": "", "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
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

    

    

    
    // ["name": "viewDidLoad", "returnSignature": "", "fullyQualifiedName": "viewDidLoad()", "parameterSignature": "", "parameterSignatureWithoutNames": "", "inputTypes": "", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "", "call": "", "parameters": [], "returnType": "Void", "isOptional": false, "escapingParameterNames": "", "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func viewDidLoad()  {
        
            return cuckoo_manager.call("viewDidLoad()",
                parameters: (),
                escapingParameters: (),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.viewDidLoad())
        
    }
    
    // ["name": "tappedView", "returnSignature": "", "fullyQualifiedName": "tappedView()", "parameterSignature": "", "parameterSignatureWithoutNames": "", "inputTypes": "", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "", "call": "", "parameters": [], "returnType": "Void", "isOptional": false, "escapingParameterNames": "", "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
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

    

    

    
    // ["name": "getImageUrls", "returnSignature": "", "fullyQualifiedName": "getImageUrls(completion: @escaping ([URL]?) -> Void)", "parameterSignature": "completion: @escaping ([URL]?) -> Void", "parameterSignatureWithoutNames": "completion: @escaping ([URL]?) -> Void", "inputTypes": "([URL]?) -> Void", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": true, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "completion", "call": "completion: completion", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("completion"), name: "completion", type: "@escaping ([URL]?) -> Void", range: CountableRange(608..<646), nameRange: CountableRange(608..<618))], "returnType": "Void", "isOptional": false, "escapingParameterNames": "completion", "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func getImageUrls(completion: @escaping ([URL]?) -> Void)  {
        
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
    

    

    
     func getImageUrls(completion: @escaping ([URL]?) -> Void)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}


// MARK: - Mocks generated from file: PugMe/RedditClient/RedditClientProtocols.swift at 2018-10-23 06:56:58 +0000

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

    

    

    
    // ["name": "getNewListings", "returnSignature": "", "fullyQualifiedName": "getNewListings(subreddit: String, completion: @escaping (RedditListingResponse?) -> Void)", "parameterSignature": "subreddit: String, completion: @escaping (RedditListingResponse?) -> Void", "parameterSignatureWithoutNames": "subreddit: String, completion: @escaping (RedditListingResponse?) -> Void", "inputTypes": "String, (RedditListingResponse?) -> Void", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": true, "@type": "ProtocolMethod", "accessibility": "public", "parameterNames": "subreddit, completion", "call": "subreddit: subreddit, completion: completion", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("subreddit"), name: "subreddit", type: "String", range: CountableRange(219..<236), nameRange: CountableRange(219..<228)), CuckooGeneratorFramework.MethodParameter(label: Optional("completion"), name: "completion", type: "@escaping (RedditListingResponse?) -> Void", range: CountableRange(238..<292), nameRange: CountableRange(238..<248))], "returnType": "Void", "isOptional": false, "escapingParameterNames": "subreddit, completion", "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
    public func getNewListings(subreddit: String, completion: @escaping (RedditListingResponse?) -> Void)  {
        
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
    

    

    
    public func getNewListings(subreddit: String, completion: @escaping (RedditListingResponse?) -> Void)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}

