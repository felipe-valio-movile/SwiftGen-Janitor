// Generated using SwiftGen, by O.Halligon — https://github.com/SwiftGen/SwiftGen

#if os(OSX)
    import AppKit.NSImage
    typealias AssetColorTypeAlias = NSColor
    typealias Image = NSImage
#elseif os(iOS) || os(tvOS) || os(watchOS)
    import UIKit.UIImage
    typealias AssetColorTypeAlias = UIColor
    typealias Image = UIImage
#endif

// swiftlint:disable superfluous_disable_command
// swiftlint:disable file_length

@available(*, deprecated, renamed: "ImageAsset")
typealias AssetType = ImageAsset

struct ImageAsset {
    fileprivate var name: String
    
    var image: Image {
        let bundle = Bundle(for: BundleToken.self)
        #if os(iOS) || os(tvOS)
            let image = Image(named: name, in: bundle, compatibleWith: nil)
        #elseif os(OSX)
            let image = bundle.image(forResource: NSImage.Name(name))
        #elseif os(watchOS)
            let image = Image(named: name)
        #endif
        guard let result = image else { fatalError("Unable to load image named \(name).") }
        return result
    }
}

struct ColorAsset {
    fileprivate var name: String
    
    @available(iOS 11.0, tvOS 11.0, watchOS 4.0, OSX 10.13, *)
    var color: AssetColorTypeAlias {
        return AssetColorTypeAlias(asset: self)
    }
}

// swiftlint:disable identifier_name line_length nesting type_body_length type_name
enum Asset {
    static let bgMeditation = ImageAsset(name: "bgMeditation")
    static let btnPlayer = ImageAsset(name: "btnPlayer")
    enum Categories {
        static let ilustrCatEssenciais = ImageAsset(name: "ilustrCatEssenciais")
        static let ilustrCatJornada = ImageAsset(name: "ilustrCatJornada")
        static let ilustrCatKids = ImageAsset(name: "ilustrCatKids")
        static let ilustrCatMomentos = ImageAsset(name: "ilustrCatMomentos")
    }
    static let gratis = ImageAsset(name: "gratis")
    enum Icons {
        static let icFacebook = ImageAsset(name: "icFacebook")
        static let icoCantzen = ImageAsset(name: "icoCantzen")
        static let icoCheckTime = ImageAsset(name: "icoCheckTime")
        static let icoChevron = ImageAsset(name: "icoChevron")
        static let icoChevronRight = ImageAsset(name: "icoChevronRight")
        static let icoClose = ImageAsset(name: "icoClose")
        static let icoDone = ImageAsset(name: "icoDone")
        static let icoDownload = ImageAsset(name: "icoDownload")
        static let icoInvite = ImageAsset(name: "icoInvite")
        static let icoLock = ImageAsset(name: "icoLock")
        static let icoMeditarWhite = ImageAsset(name: "icoMeditarWhite")
        static let icoNotification = ImageAsset(name: "icoNotification")
        static let icoPause = ImageAsset(name: "icoPause")
        static let icoPlay = ImageAsset(name: "icoPlay")
        static let icoReinforce = ImageAsset(name: "icoReinforce")
        static let icoSettings = ImageAsset(name: "icoSettings")
        static let icoShare = ImageAsset(name: "icoShare")
        static let icoSocial = ImageAsset(name: "icoSocial")
        static let icoSocialBig = ImageAsset(name: "icoSocialBig")
        static let icoTimelineTime = ImageAsset(name: "icoTimelineTime")
        static let icoTrackBrownnoise = ImageAsset(name: "icoTrackBrownnoise")
        static let icoTrackMusic = ImageAsset(name: "icoTrackMusic")
        static let icoTrackNature = ImageAsset(name: "icoTrackNature")
        static let icoTrackNone = ImageAsset(name: "icoTrackNone")
        static let icoTrackOm = ImageAsset(name: "icoTrackOm")
        static let icoVideos = ImageAsset(name: "icoVideos")
        static let ilustrEquilibrio = ImageAsset(name: "ilustrEquilibrio")
        static let ilustrEssenciais = ImageAsset(name: "ilustrEssenciais")
        static let ilustrEvolucao = ImageAsset(name: "ilustrEvolucao")
        static let ilustrRelacionamento = ImageAsset(name: "ilustrRelacionamento")
        static let tabMeditar = ImageAsset(name: "tabMeditar")
    }
    static let ilustrHome = ImageAsset(name: "ilustrHome")
    static let ilustrJourney = ImageAsset(name: "ilustrJourney")
    static let ilustrSoundwave = ImageAsset(name: "ilustrSoundwave")
    static let ilustrTime = ImageAsset(name: "ilustrTime")
    enum Monk {
        static let monk = ImageAsset(name: "monk")
        static let monkHeadphoneLarge = ImageAsset(name: "monkHeadphoneLarge")
        static let monkHeadphoneSmall = ImageAsset(name: "monkHeadphoneSmall")
        static let monkShadow = ImageAsset(name: "monkShadow")
    }
    enum NewYearMeditation {
        static let gift = ImageAsset(name: "gift")
        static let newYear = ImageAsset(name: "new-year")
    }
    static let nowPlaying = ImageAsset(name: "now_playing")
    static let picSati = ImageAsset(name: "picSati")
    static let share = ImageAsset(name: "share")
    static let splash = ImageAsset(name: "splash")
    static let splashLogo = ImageAsset(name: "splashLogo")
    static let vidGradient = ImageAsset(name: "vidGradient")
    
    // swiftlint:disable trailing_comma
    static let allColors: [ColorAsset] = [
    ]
    static let allImages: [ImageAsset] = [
        bgMeditation,
        btnPlayer,
        Categories.ilustrCatEssenciais,
        Categories.ilustrCatJornada,
        Categories.ilustrCatKids,
        Categories.ilustrCatMomentos,
        gratis,
        Icons.icFacebook,
        Icons.icoCantzen,
        Icons.icoCheckTime,
        Icons.icoChevron,
        Icons.icoChevronRight,
        Icons.icoClose,
        Icons.icoDone,
        Icons.icoDownload,
        Icons.icoInvite,
        Icons.icoLock,
        Icons.icoMeditarWhite,
        Icons.icoNotification,
        Icons.icoPause,
        Icons.icoPlay,
        Icons.icoReinforce,
        Icons.icoSettings,
        Icons.icoShare,
        Icons.icoSocial,
        Icons.icoSocialBig,
        Icons.icoTimelineTime,
        Icons.icoTrackBrownnoise,
        Icons.icoTrackMusic,
        Icons.icoTrackNature,
        Icons.icoTrackNone,
        Icons.icoTrackOm,
        Icons.icoVideos,
        Icons.ilustrEquilibrio,
        Icons.ilustrEssenciais,
        Icons.ilustrEvolucao,
        Icons.ilustrRelacionamento,
        Icons.tabMeditar,
        ilustrHome,
        ilustrJourney,
        ilustrSoundwave,
        ilustrTime,
        Monk.monk,
        Monk.monkHeadphoneLarge,
        Monk.monkHeadphoneSmall,
        Monk.monkShadow,
        NewYearMeditation.gift,
        NewYearMeditation.newYear,
        nowPlaying,
        picSati,
        share,
        splash,
        splashLogo,
        vidGradient,
        ]
    // swiftlint:enable trailing_comma
    @available(*, deprecated, renamed: "allImages")
    static let allValues: [AssetType] = allImages
}
// swiftlint:enable identifier_name line_length nesting type_body_length type_name

extension Image {
    @available(iOS 1.0, tvOS 1.0, watchOS 1.0, *)
    @available(OSX, deprecated,
    message: "This initializer is unsafe on macOS, please use the ImageAsset.image property")
    convenience init!(asset: ImageAsset) {
        #if os(iOS) || os(tvOS)
            let bundle = Bundle(for: BundleToken.self)
            self.init(named: asset.name, in: bundle, compatibleWith: nil)
        #elseif os(OSX)
            self.init(named: NSImage.Name(asset.name))
        #elseif os(watchOS)
            self.init(named: asset.name)
        #endif
    }
}

extension AssetColorTypeAlias {
    @available(iOS 11.0, tvOS 11.0, watchOS 4.0, OSX 10.13, *)
    convenience init!(asset: ColorAsset) {
        let bundle = Bundle(for: BundleToken.self)
        #if os(iOS) || os(tvOS)
            self.init(named: asset.name, in: bundle, compatibleWith: nil)
        #elseif os(OSX)
            self.init(named: NSColor.Name(asset.name), bundle: bundle)
        #elseif os(watchOS)
            self.init(named: asset.name)
        #endif
    }
}

private final class BundleToken {}
