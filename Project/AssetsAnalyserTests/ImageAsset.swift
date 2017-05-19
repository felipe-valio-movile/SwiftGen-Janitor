// Generated using SwiftGen, by O.Halligon — https://github.com/AliSoftware/SwiftGen

#if os(iOS) || os(tvOS) || os(watchOS)
    import UIKit.UIImage
    typealias Image = UIImage
#elseif os(OSX)
    import AppKit.NSImage
    typealias Image = NSImage
#endif

// swiftlint:disable file_length
// swiftlint:disable line_length

// swiftlint:disable type_body_length
enum ImageAsset: String {
    case bgFirstrun = "bgFirstrun"
    case bgMeditation = "bgMeditation"
    case btnPlayer = "btnPlayer"
    case gratis = "gratis"
    case icoInvite = "icoInvite"
    case icoCantzen = "icoCantzen"
    case icoCheckTime = "icoCheckTime"
    case icoChevron = "icoChevron"
    case icoClose = "icoClose"
    case icoDone = "icoDone"
    case icoDownload = "icoDownload"
    case icoJornadaWhite = "icoJornadaWhite"
    case icoJourneyCell = "icoJourneyCell"
    case icoJourneyModal = "icoJourneyModal"
    case icoLock = "icoLock"
    case icoLockCopy2 = "icoLockCopy2"
    case icoMeditar = "icoMeditar"
    case icoMeditarWhite = "icoMeditarWhite"
    case icoMomentos = "icoMomentos"
    case icoMomentsAll = "icoMomentsAll"
    case icoMomentsSingle = "icoMomentsSingle"
    case icoPause = "icoPause"
    case icoPlay = "icoPlay"
    case icoReinforce = "icoReinforce"
    case icoSettings = "icoSettings"
    case icoSocial = "icoSocial"
    case icoSocialBig = "icoSocialBig"
    case icoTimelineTime = "icoTimelineTime"
    case icoTrackBrownnoise = "icoTrackBrownnoise"
    case icoTrackMusic = "icoTrackMusic"
    case icoTrackNature = "icoTrackNature"
    case icoTrackNone = "icoTrackNone"
    case icoTrackOm = "icoTrackOm"
    case icoVideos = "icoVideos"
    case ilustrCatEssenciais = "ilustrCatEssenciais"
    case ilustrCatJornada = "ilustrCatJornada"
    case ilustrCatMomentos = "ilustrCatMomentos"
    case ilustrEquilibrio = "ilustrEquilibrio"
    case ilustrEssenciais = "ilustrEssenciais"
    case ilustrEvolucao = "ilustrEvolucao"
    case ilustrRelacionamento = "ilustrRelacionamento"
    case tabMeditar = "tabMeditar"
    case ilustrHome = "ilustrHome"
    case ilustrJourney = "ilustrJourney"
    case ilustrTime = "ilustrTime"
    case ilutrTrees = "ilutrTrees"
    case monk = "monk"
    case monkLight = "monkLight"
    case monkShadow = "monkShadow"
    case nextMeditation = "nextMeditation"
    case picSati = "picSati"
    case separator = "separator"
    case shareIcon = "shareIcon"
    case vidGradient = "vidGradient"
    
    var image: Image {
        let bundle = Bundle(for: BundleToken.self)
        #if os(iOS) || os(tvOS) || os(watchOS)
            let image = Image(named: rawValue, in: bundle, compatibleWith: nil)
        #elseif os(OSX)
            let image = bundle.image(forResource: rawValue)
        #endif
        guard let result = image else { fatalError("Unable to load image \(rawValue).") }
        return result
    }
}
// swiftlint:enable type_body_length

extension Image {
    convenience init!(asset: ImageAsset) {
        #if os(iOS) || os(tvOS) || os(watchOS)
            let bundle = Bundle(for: BundleToken.self)
            self.init(named: asset.rawValue, in: bundle, compatibleWith: nil)
        #elseif os(OSX)
            self.init(named: asset.rawValue)
        #endif
    }
}

private final class BundleToken {}
