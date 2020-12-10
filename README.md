# OpenDotaHero
This is an app that shows list of DOTA heroes using [OpenDota API](https://docs.opendota.com/#tag/hero-stats). It is built using MVVM-C pattern

<div style="float: left">
<img src="https://user-images.githubusercontent.com/9075060/101693321-081b8180-3aa4-11eb-88f0-c82311515b16.png" width="200" alt="Hero List">
<img src="https://user-images.githubusercontent.com/9075060/101694004-0a321000-3aa5-11eb-8103-bdac7f75b81e.png" width="200" alt="Hero Detail">
<img src="https://user-images.githubusercontent.com/9075060/101694013-0ef6c400-3aa5-11eb-8480-9399c9b65781.png" width="200" alt="Error View Alert">
<img src="https://user-images.githubusercontent.com/9075060/101694019-1027f100-3aa5-11eb-9ee9-fbc66dabbb88.png" width="200" alt="Error View">
</div>


## Realm Object
```
id: Int <PK>
localizedName: String
primaryAttribute: String
attackType: String
roles: List<String>
image: String
baseHealth: RealmOptional<Double>
baseMana: RealmOptional<Double>
baseArmor: RealmOptional<Double>
baseAttackMin: RealmOptional<Double>
baseAttackMax: RealmOptional<Double>
moveSpeed: RealmOptional<Double>
```


## External Library
- [SwifterSwift](https://github.com/SwifterSwift/SwifterSwift)
- [Moya](https://github.com/Moya/Moya)
- [RxSwift](https://github.com/ReactiveX/RxSwift)
- [RxDataSources](https://github.com/RxSwiftCommunity/RxDataSources)
- [RealmSwift](https://github.com/realm/realm-cocoa)
- [Kingfisher](https://github.com/onevcat/Kingfisher)
- [KRProgressHUD](https://github.com/krimpedance/KRProgressHUD)
- [PinterestSegment](https://github.com/TBXark/PinterestSegment)


## Asset Resources
- Icons made by [Freepik](https://www.flaticon.com/authors/freepik) from www.flaticon.com
- Icons made by [Vaadin](http://vaadin.com/font-icons) from www.flaticon.com
- Icons made by [pongsakornRed](https://www.flaticon.com/authors/pongsakornred) from www.flaticon.com
