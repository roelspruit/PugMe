// MARK: - Mocks generated from file: UpdatingImageView/Protocols/ImageDownloading.swift at 2019-04-14 11:06:55 +0000

//
//  ImageDownloading.swift
//  UpdatingImageView
//
//  Created by Roel Spruit on 12/04/2019.
//  Copyright © 2019 Roel Spruit. All rights reserved.
//

import Cuckoo
@testable import UpdatingImageView

import Foundation

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

    

    

    
    // ["name": "getImage", "returnSignature": "", "fullyQualifiedName": "getImage(fromUrl: URL, handler: @escaping (ImageDownloadResult) -> Void)", "parameterSignature": "fromUrl url: URL, handler: @escaping (ImageDownloadResult) -> Void", "parameterSignatureWithoutNames": "url: URL, handler: @escaping (ImageDownloadResult) -> Void", "inputTypes": "URL, (ImageDownloadResult) -> Void", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": true, "@type": "ProtocolMethod", "accessibility": "public", "parameterNames": "url, handler", "call": "fromUrl: url, handler: handler", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("fromUrl"), name: "url", type: "URL", range: CountableRange(229..<245), nameRange: CountableRange(229..<236)), CuckooGeneratorFramework.MethodParameter(label: Optional("handler"), name: "handler", type: "@escaping (ImageDownloadResult) -> Void", range: CountableRange(247..<295), nameRange: CountableRange(247..<254))], "returnType": "Void", "isOptional": false, "escapingParameterNames": "url, handler", "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
    public func getImage(fromUrl url: URL, handler: @escaping (ImageDownloadResult) -> Void)  {
        
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
    

    

    
    public func getImage(fromUrl url: URL, handler: @escaping (ImageDownloadResult) -> Void)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}


// MARK: - Mocks generated from file: UpdatingImageView/Protocols/ImageUrlProviding.swift at 2019-04-14 11:06:55 +0000

//
//  ImageUrlProviding.swift
//  UpdatingImageView
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

    

    

    
    // ["name": "getImageUrls", "returnSignature": "", "fullyQualifiedName": "getImageUrls(completion: @escaping ([URL]?) -> Void)", "parameterSignature": "completion: @escaping ([URL]?) -> Void", "parameterSignatureWithoutNames": "completion: @escaping ([URL]?) -> Void", "inputTypes": "([URL]?) -> Void", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": true, "@type": "ProtocolMethod", "accessibility": "public", "parameterNames": "completion", "call": "completion: completion", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("completion"), name: "completion", type: "@escaping ([URL]?) -> Void", range: CountableRange(235..<273), nameRange: CountableRange(235..<245))], "returnType": "Void", "isOptional": false, "escapingParameterNames": "completion", "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
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


// MARK: - Mocks generated from file: UpdatingImageView/Protocols/ImageViewBuilding.swift at 2019-04-14 11:06:55 +0000

//
//  ImageViewBuilding.swift
//  UpdatingImageView
//
//  Created by Roel Spruit on 12/04/2019.
//  Copyright © 2019 Roel Spruit. All rights reserved.
//

import Cuckoo
@testable import UpdatingImageView

import Foundation

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

    

    

    
    // ["name": "build", "returnSignature": " -> UIViewController", "fullyQualifiedName": "build(imageDownloader: ImageDownloading, imageUrlProvider: ImageUrlProviding) -> UIViewController", "parameterSignature": "imageDownloader: ImageDownloading, imageUrlProvider: ImageUrlProviding", "parameterSignatureWithoutNames": "imageDownloader: ImageDownloading, imageUrlProvider: ImageUrlProviding", "inputTypes": "ImageDownloading, ImageUrlProviding", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "imageDownloader, imageUrlProvider", "call": "imageDownloader: imageDownloader, imageUrlProvider: imageUrlProvider", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("imageDownloader"), name: "imageDownloader", type: "ImageDownloading", range: CountableRange(221..<254), nameRange: CountableRange(221..<236)), CuckooGeneratorFramework.MethodParameter(label: Optional("imageUrlProvider"), name: "imageUrlProvider", type: "ImageUrlProviding", range: CountableRange(271..<306), nameRange: CountableRange(271..<287))], "returnType": "UIViewController", "isOptional": false, "escapingParameterNames": "imageDownloader, imageUrlProvider", "stubFunction": "Cuckoo.ProtocolStubFunction"]
     func build(imageDownloader: ImageDownloading, imageUrlProvider: ImageUrlProviding)  -> UIViewController {
        
            return cuckoo_manager.call("build(imageDownloader: ImageDownloading, imageUrlProvider: ImageUrlProviding) -> UIViewController",
                parameters: (imageDownloader, imageUrlProvider),
                escapingParameters: (imageDownloader, imageUrlProvider),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.build(imageDownloader: imageDownloader, imageUrlProvider: imageUrlProvider))
        
    }
    

	struct __StubbingProxy_ImageViewBuilding: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func build<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(imageDownloader: M1, imageUrlProvider: M2) -> Cuckoo.ProtocolStubFunction<(ImageDownloading, ImageUrlProviding), UIViewController> where M1.MatchedType == ImageDownloading, M2.MatchedType == ImageUrlProviding {
	        let matchers: [Cuckoo.ParameterMatcher<(ImageDownloading, ImageUrlProviding)>] = [wrap(matchable: imageDownloader) { $0.0 }, wrap(matchable: imageUrlProvider) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockImageViewBuilding.self, method: "build(imageDownloader: ImageDownloading, imageUrlProvider: ImageUrlProviding) -> UIViewController", parameterMatchers: matchers))
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
	    func build<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(imageDownloader: M1, imageUrlProvider: M2) -> Cuckoo.__DoNotUse<UIViewController> where M1.MatchedType == ImageDownloading, M2.MatchedType == ImageUrlProviding {
	        let matchers: [Cuckoo.ParameterMatcher<(ImageDownloading, ImageUrlProviding)>] = [wrap(matchable: imageDownloader) { $0.0 }, wrap(matchable: imageUrlProvider) { $0.1 }]
	        return cuckoo_manager.verify("build(imageDownloader: ImageDownloading, imageUrlProvider: ImageUrlProviding) -> UIViewController", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}

}

 class ImageViewBuildingStub: ImageViewBuilding {
    

    

    
     func build(imageDownloader: ImageDownloading, imageUrlProvider: ImageUrlProviding)  -> UIViewController {
        return DefaultValueRegistry.defaultValue(for: UIViewController.self)
    }
    
}


// MARK: - Mocks generated from file: UpdatingImageView/Protocols/ImageViewPresenting.swift at 2019-04-14 11:06:55 +0000

//
//  ImageViewPresenting.swift
//  UpdatingImageView
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


// MARK: - Mocks generated from file: UpdatingImageView/Protocols/ImageViewing.swift at 2019-04-14 11:06:55 +0000

//
//  ImageViewing.swift
//  UpdatingImageView
//
//  Created by Roel Spruit on 12/04/2019.
//  Copyright © 2019 Roel Spruit. All rights reserved.
//

import Cuckoo
@testable import UpdatingImageView

import Foundation

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

    

    

    
    // ["name": "showImage", "returnSignature": "", "fullyQualifiedName": "showImage(_: UIImage)", "parameterSignature": "_ image: UIImage", "parameterSignatureWithoutNames": "image: UIImage", "inputTypes": "UIImage", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "image", "call": "image", "parameters": [CuckooGeneratorFramework.MethodParameter(label: nil, name: "image", type: "UIImage", range: CountableRange(215..<231), nameRange: CountableRange(0..<0))], "returnType": "Void", "isOptional": false, "escapingParameterNames": "image", "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
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

