// Generated using SwiftGen, by O.Halligon — https://github.com/AliSoftware/SwiftGen

import Foundation

// swiftlint:disable file_length
// swiftlint:disable line_length

// swiftlint:disable type_body_length
enum Localization {
    /// Sobre o Satyanatha
    case aboutSatyanatha
    /// Satyanatha, Davi Murbach, aprendeu técnicas de alcançar a paz e serenar a mente em um dos centros de meditação mais remotos e respeitados do mundo. Viveu por sete anos recluso em um monastério aos pés de um vulcão extinto em uma ilha distante. Chamado de Kauai Aadheenam, o monastério tem sedes no Ceilão, na Índia e no Havaí. Ele aprendeu segredos profundos do oriente, meditou com mestres, estudou escrituras antigas e descobriu o divino dentro de si e dos outros. Tornou-se editor da revista Hinduism Today, a maior do mundo em seu assunto.
    case aboutText
    /// Equilíbrio
    case balance
    /// Equilíbrio é uma das chaves para a felicidade. Esta harmonia começa em você. Uma vez encontrada sua paz, você se torna capaz de melhorar o mundo.
    case balanceLongDescription
    /// Começar
    case begin
    /// Cancelar
    case cancel
    /// Tem certeza que deseja cancelar o donwload da meditação?
    case cancelDownloadMessage
    /// Cancelar Download
    case cancelDownloadTitle
    /// Alterar Tempo
    case changeTime
    /// Confirmar
    case confirm
    /// Tem certeza que quer apagar TODAS as meditações?
    case confirmDeleteAllMeditationsMessage
    /// Aviso
    case confirmDeleteAllMeditationsTitle
    /// Tem certeza que quer apagar essa meditação?
    case confirmDeleteOneMeditationMessage
    /// Aviso
    case confirmDeleteOneMeditationTitle
    /// Erro de conexão.
    case connectionError
    /// Continuar
    case `continue`
    /// APAGAR
    case delete
    /// APAGAR TODAS
    case deleteAll
    /// Descobertas
    case discoveries
    /// Baixar Todas
    case downloadAll
    /// Após baixar uma meditação, você poderá apagá-la do seu aparelho aqui.
    case downloadManagerEmptyStateMessage
    /// Parece que não há nada aqui...
    case downloadManagerEmptyStateTitle
    /// Downloads
    case downloadManagerScreenTitle
    /// Acabei de fazer a meditação "%@". Baixe o aplicativo e medite também:
    case downloadVivoMeditacao(String)
    /// Você configurou seu Vivo Meditação para fazer downloads apenas em conexões WiFi.
    case downloadWifiOnly
    /// Sobre o Satyanatha
    case embeddedVideoAbout
    /// A Jornada até a Paz Interna
    case embeddedVideoJourney
    /// Conectando você com sua paz
    case embeddedVideoOnboarding
    /// Erro
    case error
    /// Essenciais
    case essentials
    /// Atenção Plena, ou mindfulness, é a arte de concentrar a mente no presente. Ali o ego se dissolve, deixando brilhar a paz interior e a concentração serena.
    case essentialsLongDescription
    /// Meditações neutras para qualquer hora.
    case essentialsShortDescription
    /// Evolução
    case evolution
    /// Criar, para o ser humano, é quase inevitável: você cria seu futuro com cada pensamento ou ação. Aprenda a fazer isto ordenadamente e com a melhor energia.
    case evolutionLongDescription
    /// Exclusivo para assinante Vivo
    case exclusiveSubscriber
    /// Conectar ao Facebook
    case facebookConnectButton
    /// Não foi possível se conectar ao Facebook. Tente novamente.
    case facebookConnectionError
    /// Fundamentos
    case fundamentals
    /// JÁ SOU ASSINANTE
    case iAmAlreadySubscriber
    /// INSERIR CÓDIGO
    case insertPincode
    /// O numero de telefone inserido é invalido. Favor, tentar novamente
    case invalidPhoneMessage
    /// Telefone inválido
    case invalidPhoneTitle
    /// Jornada
    case journey
    /// CONTINUAR JORNADA
    case journeyContinueButton
    /// O ciclo %@ é uma fase mais avançada da jornada para se tornar um meditador experiente. Recomendamos que faça o ciclo %@ antes. O que deseja fazer?
    case journeyPopup(String, String)
    /// COMEÇAR CICLO %@
    case journeyPopupButton(String)
    /// Torne-se um expert.
    case journeyShortDescription
    /// INICIAR JORNADA
    case journeyStartButton
    /// A Jornada até a Paz Interna
    case journeyTitle
    /// Parece que você não está conectado na internet. O Vivo Meditação precisa da internet na sua primeira inicialização :(
    case launchErrorNoInternet
    /// Tentar Novamente
    case launchErrorPopupButton
    /// Ops!
    case launchErrorPopupTitle
    /// Erro ao atualizar banco de dados.
    case launchErrorToUpdateDatabase
    /// Erro ao atualizar meditações do usuário.
    case launchErrorToUpdateMeditations
    /// LOGIN
    case login
    /// Meditação %@ de %@
    case meditateSeriesProgress(String, String)
    /// Brown Noise
    case meditateSoundBrown
    /// Música
    case meditateSoundMusic
    /// Sem Trilha
    case meditateSoundMute
    /// Natureza
    case meditateSoundNature
    /// Omm
    case meditateSoundOmn
    /// Meditações
    case meditations
    /// Momentos
    case moments
    /// Meditações para cada momento da sua rotina.
    case momentsShortDescription
    /// Minhas meditações
    case myMeditations
    /// Não
    case no
    /// OK
    case ok
    /// Conectando você\ncom sua paz
    case onboardingTitle
    /// Código Reenviado
    case pincodeSent
    /// Preparando...
    case preparing
    /// Relacionamento
    case relationship
    /// Amar mais, amar melhor, amar de peito aberto e encontrar a espiritualidade através de amar a si mesmo e os outros.
    case relationshipLongDescription
    /// Lembrete
    case reminder
    /// Horário do lembrete
    case reminderTime
    /// RESTAURAR
    case restore
    /// Se você já é assinante do Vivo Meditação, insira seu celular Vivo abaixo
    case restoreHint
    /// Seu celular Vivo com DDD
    case restorePlaceholder
    /// REENVIAR SMS
    case sendSms
    /// Reenviando código PIN
    case sendingPincode
    /// Configurações
    case settings
    /// Conheça a história
    case settingsAbout
    /// CANCELAR ASSINATURA
    case settingsCancelSubscription
    /// Lembrete diário
    case settingsDailyReminder
    /// Fazer downloads somente em WiFi
    case settingsDownloadWifi
    /// Meus downloads
    case settingsDownloads
    /// Perguntas frequentes
    case settingsFaq
    /// Próxima renovação
    case settingsNextSubscriptionRenovation
    /// Política de privacidade
    case settingsPrivacyPolicy
    /// Ajustes
    case settingsSectionAdjustments
    /// Lembretes
    case settingsSectionReminders
    /// Termos e condições
    case settingsTerms
    /// CONVIDAR AMIGOS
    case shareButton
    /// Gostou? Chame seus amigos.
    case shareTitle
    /// Pular
    case skip
    /// Você ainda não tem nenhum amigo no Vivo Meditação.\n\nChame seus amigos apertando o botão abaixo.
    case socialHasNoFriends
    /// Descubra seus amigos que\nestão no Vivo Meditação
    case socialHeader
    /// Conecte-se ao Facebook para interagir com seus amigos que usam o Vivo Meditação
    case socialNotLogged
    /// Reforçar
    case strengthen
    /// Assine já e medite mais!
    case subscribeNow
    /// Assinatura
    case subscription
    /// PIN não encontrado.
    case subscriptionErrorCodeNotFound
    /// PIN inválido.
    case subscriptionErrorInvalidCode
    /// Sua assinatura é inválida.
    case subscriptionErrorInvalidSubscription
    /// Erro desconhecido.
    case subscriptionErrorUnknow
    /// Insira abaixo o código de 4 dígitos que você recebeu via SMS
    case subscriptionHint
    /// Resultado
    case subscriptionPopupTitle
    /// Assinatura restaurada com sucesso.
    case subscriptionSuccess
    /// Meditações
    case tabMeditations
    /// Social
    case tabSocial
    /// Cantinho Zen
    case tabZen
    /// %@ minutos
    case timeSelectionButton(String)
    /// Antes de começar, defina a duração de cada meditação.
    case timeSelectionText
    /// Hora de meditar!
    case timeToMeditate
    /// Validando código PIN
    case validatingPincode
    /// Vivo Meditação
    case vivoMeditacao
    /// Falha na conexão
    case webviewConnectionError
    /// Não foi possível carregar o conteúdo
    case webviewContentError
    /// Página inválida.
    case webviewInvalidPage
    /// Carregando...
    case webviewLoading
    /// Meditação da semana
    case weeklyMeditations
    /// Sim
    case yes
}
// swiftlint:enable type_body_length

extension Localization: CustomStringConvertible {
    var description: String { return self.string }
    
    var string: String {
        switch self {
        case .aboutSatyanatha:
            return Localization.tr(key: "ABOUT_SATYANATHA")
        case .aboutText:
            return Localization.tr(key: "ABOUT_TEXT")
        case .balance:
            return Localization.tr(key: "BALANCE")
        case .balanceLongDescription:
            return Localization.tr(key: "BALANCE_LONG_DESCRIPTION")
        case .begin:
            return Localization.tr(key: "BEGIN")
        case .cancel:
            return Localization.tr(key: "CANCEL")
        case .cancelDownloadMessage:
            return Localization.tr(key: "CANCEL_DOWNLOAD_MESSAGE")
        case .cancelDownloadTitle:
            return Localization.tr(key: "CANCEL_DOWNLOAD_TITLE")
        case .changeTime:
            return Localization.tr(key: "CHANGE_TIME")
        case .confirm:
            return Localization.tr(key: "CONFIRM")
        case .confirmDeleteAllMeditationsMessage:
            return Localization.tr(key: "CONFIRM_DELETE_ALL_MEDITATIONS_MESSAGE")
        case .confirmDeleteAllMeditationsTitle:
            return Localization.tr(key: "CONFIRM_DELETE_ALL_MEDITATIONS_TITLE")
        case .confirmDeleteOneMeditationMessage:
            return Localization.tr(key: "CONFIRM_DELETE_ONE_MEDITATION_MESSAGE")
        case .confirmDeleteOneMeditationTitle:
            return Localization.tr(key: "CONFIRM_DELETE_ONE_MEDITATION_TITLE")
        case .connectionError:
            return Localization.tr(key: "CONNECTION_ERROR")
        case .`continue`:
            return Localization.tr(key: "CONTINUE")
        case .delete:
            return Localization.tr(key: "DELETE")
        case .deleteAll:
            return Localization.tr(key: "DELETE_ALL")
        case .discoveries:
            return Localization.tr(key: "DISCOVERIES")
        case .downloadAll:
            return Localization.tr(key: "DOWNLOAD_ALL")
        case .downloadManagerEmptyStateMessage:
            return Localization.tr(key: "DOWNLOAD_MANAGER_EMPTY_STATE_MESSAGE")
        case .downloadManagerEmptyStateTitle:
            return Localization.tr(key: "DOWNLOAD_MANAGER_EMPTY_STATE_TITLE")
        case .downloadManagerScreenTitle:
            return Localization.tr(key: "DOWNLOAD_MANAGER_SCREEN_TITLE")
        case .downloadVivoMeditacao(let p1):
            return Localization.tr(key: "DOWNLOAD_VIVO_MEDITACAO", p1)
        case .downloadWifiOnly:
            return Localization.tr(key: "DOWNLOAD_WIFI_ONLY")
        case .embeddedVideoAbout:
            return Localization.tr(key: "EMBEDDED_VIDEO_ABOUT")
        case .embeddedVideoJourney:
            return Localization.tr(key: "EMBEDDED_VIDEO_JOURNEY")
        case .embeddedVideoOnboarding:
            return Localization.tr(key: "EMBEDDED_VIDEO_ONBOARDING")
        case .error:
            return Localization.tr(key: "ERROR")
        case .essentials:
            return Localization.tr(key: "ESSENTIALS")
        case .essentialsLongDescription:
            return Localization.tr(key: "ESSENTIALS_LONG_DESCRIPTION")
        case .essentialsShortDescription:
            return Localization.tr(key: "ESSENTIALS_SHORT_DESCRIPTION")
        case .evolution:
            return Localization.tr(key: "EVOLUTION")
        case .evolutionLongDescription:
            return Localization.tr(key: "EVOLUTION_LONG_DESCRIPTION")
        case .exclusiveSubscriber:
            return Localization.tr(key: "EXCLUSIVE_SUBSCRIBER")
        case .facebookConnectButton:
            return Localization.tr(key: "FACEBOOK_CONNECT_BUTTON")
        case .facebookConnectionError:
            return Localization.tr(key: "FACEBOOK_CONNECTION_ERROR")
        case .fundamentals:
            return Localization.tr(key: "FUNDAMENTALS")
        case .iAmAlreadySubscriber:
            return Localization.tr(key: "I_AM_ALREADY_SUBSCRIBER")
        case .insertPincode:
            return Localization.tr(key: "INSERT_PINCODE")
        case .invalidPhoneMessage:
            return Localization.tr(key: "INVALID_PHONE_MESSAGE")
        case .invalidPhoneTitle:
            return Localization.tr(key: "INVALID_PHONE_TITLE")
        case .journey:
            return Localization.tr(key: "JOURNEY")
        case .journeyContinueButton:
            return Localization.tr(key: "JOURNEY_CONTINUE_BUTTON")
        case .journeyPopup(let p1, let p2):
            return Localization.tr(key: "JOURNEY_POPUP", p1, p2)
        case .journeyPopupButton(let p1):
            return Localization.tr(key: "JOURNEY_POPUP_BUTTON", p1)
        case .journeyShortDescription:
            return Localization.tr(key: "JOURNEY_SHORT_DESCRIPTION")
        case .journeyStartButton:
            return Localization.tr(key: "JOURNEY_START_BUTTON")
        case .journeyTitle:
            return Localization.tr(key: "JOURNEY_TITLE")
        case .launchErrorNoInternet:
            return Localization.tr(key: "LAUNCH_ERROR_NO_INTERNET")
        case .launchErrorPopupButton:
            return Localization.tr(key: "LAUNCH_ERROR_POPUP_BUTTON")
        case .launchErrorPopupTitle:
            return Localization.tr(key: "LAUNCH_ERROR_POPUP_TITLE")
        case .launchErrorToUpdateDatabase:
            return Localization.tr(key: "LAUNCH_ERROR_TO_UPDATE_DATABASE")
        case .launchErrorToUpdateMeditations:
            return Localization.tr(key: "LAUNCH_ERROR_TO_UPDATE_MEDITATIONS")
        case .login:
            return Localization.tr(key: "LOGIN")
        case .meditateSeriesProgress(let p1, let p2):
            return Localization.tr(key: "MEDITATE_SERIES_PROGRESS", p1, p2)
        case .meditateSoundBrown:
            return Localization.tr(key: "MEDITATE_SOUND_BROWN")
        case .meditateSoundMusic:
            return Localization.tr(key: "MEDITATE_SOUND_MUSIC")
        case .meditateSoundMute:
            return Localization.tr(key: "MEDITATE_SOUND_MUTE")
        case .meditateSoundNature:
            return Localization.tr(key: "MEDITATE_SOUND_NATURE")
        case .meditateSoundOmn:
            return Localization.tr(key: "MEDITATE_SOUND_OMN")
        case .meditations:
            return Localization.tr(key: "MEDITATIONS")
        case .moments:
            return Localization.tr(key: "MOMENTS")
        case .momentsShortDescription:
            return Localization.tr(key: "MOMENTS_SHORT_DESCRIPTION")
        case .myMeditations:
            return Localization.tr(key: "MY_MEDITATIONS")
        case .no:
            return Localization.tr(key: "NO")
        case .ok:
            return Localization.tr(key: "OK")
        case .onboardingTitle:
            return Localization.tr(key: "ONBOARDING_TITLE")
        case .pincodeSent:
            return Localization.tr(key: "PINCODE_SENT")
        case .preparing:
            return Localization.tr(key: "PREPARING")
        case .relationship:
            return Localization.tr(key: "RELATIONSHIP")
        case .relationshipLongDescription:
            return Localization.tr(key: "RELATIONSHIP_LONG_DESCRIPTION")
        case .reminder:
            return Localization.tr(key: "REMINDER")
        case .reminderTime:
            return Localization.tr(key: "REMINDER_TIME")
        case .restore:
            return Localization.tr(key: "RESTORE")
        case .restoreHint:
            return Localization.tr(key: "RESTORE_HINT")
        case .restorePlaceholder:
            return Localization.tr(key: "RESTORE_PLACEHOLDER")
        case .sendSms:
            return Localization.tr(key: "SEND_SMS")
        case .sendingPincode:
            return Localization.tr(key: "SENDING_PINCODE")
        case .settings:
            return Localization.tr(key: "SETTINGS")
        case .settingsAbout:
            return Localization.tr(key: "SETTINGS_ABOUT")
        case .settingsCancelSubscription:
            return Localization.tr(key: "SETTINGS_CANCEL_SUBSCRIPTION")
        case .settingsDailyReminder:
            return Localization.tr(key: "SETTINGS_DAILY_REMINDER")
        case .settingsDownloadWifi:
            return Localization.tr(key: "SETTINGS_DOWNLOAD_WIFI")
        case .settingsDownloads:
            return Localization.tr(key: "SETTINGS_DOWNLOADS")
        case .settingsFaq:
            return Localization.tr(key: "SETTINGS_FAQ")
        case .settingsNextSubscriptionRenovation:
            return Localization.tr(key: "SETTINGS_NEXT_SUBSCRIPTION_RENOVATION")
        case .settingsPrivacyPolicy:
            return Localization.tr(key: "SETTINGS_PRIVACY_POLICY")
        case .settingsSectionAdjustments:
            return Localization.tr(key: "SETTINGS_SECTION_ADJUSTMENTS")
        case .settingsSectionReminders:
            return Localization.tr(key: "SETTINGS_SECTION_REMINDERS")
        case .settingsTerms:
            return Localization.tr(key: "SETTINGS_TERMS")
        case .shareButton:
            return Localization.tr(key: "SHARE_BUTTON")
        case .shareTitle:
            return Localization.tr(key: "SHARE_TITLE")
        case .skip:
            return Localization.tr(key: "SKIP")
        case .socialHasNoFriends:
            return Localization.tr(key: "SOCIAL_HAS_NO_FRIENDS")
        case .socialHeader:
            return Localization.tr(key: "SOCIAL_HEADER")
        case .socialNotLogged:
            return Localization.tr(key: "SOCIAL_NOT_LOGGED")
        case .strengthen:
            return Localization.tr(key: "STRENGTHEN")
        case .subscribeNow:
            return Localization.tr(key: "SUBSCRIBE_NOW")
        case .subscription:
            return Localization.tr(key: "SUBSCRIPTION")
        case .subscriptionErrorCodeNotFound:
            return Localization.tr(key: "SUBSCRIPTION_ERROR_CODE_NOT_FOUND")
        case .subscriptionErrorInvalidCode:
            return Localization.tr(key: "SUBSCRIPTION_ERROR_INVALID_CODE")
        case .subscriptionErrorInvalidSubscription:
            return Localization.tr(key: "SUBSCRIPTION_ERROR_INVALID_SUBSCRIPTION")
        case .subscriptionErrorUnknow:
            return Localization.tr(key: "SUBSCRIPTION_ERROR_UNKNOW")
        case .subscriptionHint:
            return Localization.tr(key: "SUBSCRIPTION_HINT")
        case .subscriptionPopupTitle:
            return Localization.tr(key: "SUBSCRIPTION_POPUP_TITLE")
        case .subscriptionSuccess:
            return Localization.tr(key: "SUBSCRIPTION_SUCCESS")
        case .tabMeditations:
            return Localization.tr(key: "TAB_MEDITATIONS")
        case .tabSocial:
            return Localization.tr(key: "TAB_SOCIAL")
        case .tabZen:
            return Localization.tr(key: "TAB_ZEN")
        case .timeSelectionButton(let p1):
            return Localization.tr(key: "TIME_SELECTION_BUTTON", p1)
        case .timeSelectionText:
            return Localization.tr(key: "TIME_SELECTION_TEXT")
        case .timeToMeditate:
            return Localization.tr(key: "TIME_TO_MEDITATE")
        case .validatingPincode:
            return Localization.tr(key: "VALIDATING_PINCODE")
        case .vivoMeditacao:
            return Localization.tr(key: "VIVO_MEDITACAO")
        case .webviewConnectionError:
            return Localization.tr(key: "WEBVIEW_CONNECTION_ERROR")
        case .webviewContentError:
            return Localization.tr(key: "WEBVIEW_CONTENT_ERROR")
        case .webviewInvalidPage:
            return Localization.tr(key: "WEBVIEW_INVALID_PAGE")
        case .webviewLoading:
            return Localization.tr(key: "WEBVIEW_LOADING")
        case .weeklyMeditations:
            return Localization.tr(key: "WEEKLY_MEDITATIONS")
        case .yes:
            return Localization.tr(key: "YES")
        }
    }
    
    private static func tr(key: String, _ args: CVarArg...) -> String {
        let format = NSLocalizedString(key, bundle: Bundle(for: BundleToken.self), comment: "")
        return String(format: format, locale: Locale.current, arguments: args)
    }
}

func tr(_ key: Localization) -> String {
    return key.string
}

private final class BundleToken {}
