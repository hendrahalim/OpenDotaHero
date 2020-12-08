//
//  HeroAccessor.swift
//  OpenDota
//
//  Created by Hendra Halim on 04/12/20.
//

import Foundation
import Moya
import RxSwift

protocol HeroAccessorProtocol {
    func getAllHeroStat() -> Observable<[HeroModel]>
}

class HeroAccessor: HeroAccessorProtocol {
    private let provider = MoyaProvider<HeroProvider>()
    
    func getAllHeroStat() -> Observable<[HeroModel]> {
        return provider.rx.request(.getAllHeroStat)
            .asObservable()
            .filterResponse()
            .map([HeroModel].self)
    }
}
