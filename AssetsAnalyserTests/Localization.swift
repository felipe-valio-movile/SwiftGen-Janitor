// Generated using SwiftGen, by O.Halligon — https://github.com/SwiftGen/SwiftGen

import Foundation

// swiftlint:disable superfluous_disable_command
// swiftlint:disable file_length

// swiftlint:disable explicit_type_interface identifier_name line_length nesting type_body_length type_name
enum Localization {
    /// Sobre o Satyanatha
    static let aboutSatyanatha = Localization.tr("Localizable", "ABOUT_SATYANATHA")
    /// Satyanātha, Davi Murbach, aprendeu técnicas de alcançar a paz e serenar a mente em um dos centros de meditação mais remotos e respeitados do mundo. Viveu por sete anos recluso em um monastério aos pés de um vulcão extinto em uma ilha distante. Chamado de Kauai Aadheenam, o monastério tem sedes no Ceilão, na Índia e no Havaí.\n\nEle aprendeu segredos profundos do oriente, meditou com mestres, estudou escrituras antigas e descobriu o divino dentro de si e dos outros. Tornou-se editor da revista Hinduism Today, a maior do mundo em seu assunto.
    static let aboutText = Localization.tr("Localizable", "ABOUT_TEXT")
    /// Já sou assinante
    static let alreadyASubscriber = Localization.tr("Localizable", "ALREADY_A_SUBSCRIBER")
    /// Agora o Cantinho Zen mostra as suas 5 meditações mais recentemente feitas. Para ver suas outras meditações toque em "Ver meditações antigas".
    static let archivedMeditationPopupDescription = Localization.tr("Localizable", "ARCHIVED_MEDITATION_POPUP_DESCRIPTION")
    /// Meditações antigas
    static let archivedMeditations = Localization.tr("Localizable", "ARCHIVED_MEDITATIONS")
    /// Não há meditações arquivadas
    static let archivedMeditationsEmptyStateMessage = Localization.tr("Localizable", "ARCHIVED_MEDITATIONS_EMPTY_STATE_MESSAGE")
    /// Equilíbrio
    static let balance = Localization.tr("Localizable", "BALANCE")
    /// Equilíbrio é uma das chaves para a felicidade. Esta harmonia começa em você. Uma vez encontrada sua paz, você se torna capaz de melhorar o mundo.
    static let balanceLongDescription = Localization.tr("Localizable", "BALANCE_LONG_DESCRIPTION")
    /// Começar
    static let begin = Localization.tr("Localizable", "BEGIN")
    /// Cancelar
    static let cancel = Localization.tr("Localizable", "CANCEL")
    /// Cancelar Todas
    static let cancelAll = Localization.tr("Localizable", "CANCEL_ALL")
    /// Tem certeza que deseja cancelar o download da meditação?
    static let cancelDownloadMessage = Localization.tr("Localizable", "CANCEL_DOWNLOAD_MESSAGE")
    /// Cancelar Download
    static let cancelDownloadTitle = Localization.tr("Localizable", "CANCEL_DOWNLOAD_TITLE")
    /// Alterar Tempo
    static let changeTime = Localization.tr("Localizable", "CHANGE_TIME")
    /// Confirmar
    static let confirm = Localization.tr("Localizable", "CONFIRM")
    /// Tem certeza que quer apagar TODAS as meditações?
    static let confirmDeleteAllMeditationsMessage = Localization.tr("Localizable", "CONFIRM_DELETE_ALL_MEDITATIONS_MESSAGE")
    /// Aviso
    static let confirmDeleteAllMeditationsTitle = Localization.tr("Localizable", "CONFIRM_DELETE_ALL_MEDITATIONS_TITLE")
    /// Tem certeza que quer apagar essa meditação?
    static let confirmDeleteOneMeditationMessage = Localization.tr("Localizable", "CONFIRM_DELETE_ONE_MEDITATION_MESSAGE")
    /// Aviso
    static let confirmDeleteOneMeditationTitle = Localization.tr("Localizable", "CONFIRM_DELETE_ONE_MEDITATION_TITLE")
    /// Verifique sua conexão com a Internet e tente novamente.
    static let connectionError = Localization.tr("Localizable", "CONNECTION_ERROR")
    /// Continuar
    static let `continue` = Localization.tr("Localizable", "CONTINUE")
    /// Cupom resgatado com sucesso.
    static let couponRedeemedSucessfully = Localization.tr("Localizable", "COUPON_REDEEMED_SUCESSFULLY")
    /// Agendar lembretes
    static let createRemindersButton = Localization.tr("Localizable", "CREATE_REMINDERS_BUTTON")
    /// Escolha um horário para\nser lembrado todo dia
    static let createRemindersSetTimeDescription = Localization.tr("Localizable", "CREATE_REMINDERS_SET_TIME_DESCRIPTION")
    /// Crie um hábito diário
    static let createRemindersTitle = Localization.tr("Localizable", "CREATE_REMINDERS_TITLE")
    /// APAGAR
    static let delete = Localization.tr("Localizable", "DELETE")
    /// APAGAR TODAS
    static let deleteAll = Localization.tr("Localizable", "DELETE_ALL")
    /// Descobertas
    static let discoveries = Localization.tr("Localizable", "DISCOVERIES")
    /// Ops! Parece que você apagou esse áudio. Volte na timeline e faça o download novamente.
    static let discoveriesAudioNotDownloadedAlert = Localization.tr("Localizable", "DISCOVERIES_AUDIO_NOT_DOWNLOADED_ALERT")
    /// Ops! Parece que você ainda não descobriu este áudio.
    static let discoveriesLockedAudioAlertMessage = Localization.tr("Localizable", "DISCOVERIES_LOCKED_AUDIO_ALERT_MESSAGE")
    /// Ops! Parece que você ainda não descobriu este vídeo.
    static let discoveriesLockedVideoAlertMessage = Localization.tr("Localizable", "DISCOVERIES_LOCKED_VIDEO_ALERT_MESSAGE")
    /// Ops! Parece que você apagou esse vídeo. Volte na timeline e faça o download novamente.
    static let discoveriesVideoNotDownloadedAlert = Localization.tr("Localizable", "DISCOVERIES_VIDEO_NOT_DOWNLOADED_ALERT")
    /// Baixar Todas
    static let downloadAll = Localization.tr("Localizable", "DOWNLOAD_ALL")
    /// Após baixar uma meditação, você poderá apagá-la do seu aparelho aqui.
    static let downloadManagerEmptyStateMessage = Localization.tr("Localizable", "DOWNLOAD_MANAGER_EMPTY_STATE_MESSAGE")
    /// Parece que não há nada aqui...
    static let downloadManagerEmptyStateTitle = Localization.tr("Localizable", "DOWNLOAD_MANAGER_EMPTY_STATE_TITLE")
    /// Downloads
    static let downloadManagerScreenTitle = Localization.tr("Localizable", "DOWNLOAD_MANAGER_SCREEN_TITLE")
    /// Acabei de fazer a meditação "%@".\nBaixe o aplicativo e tenha acesso a mais de 1000 meditações guiadas pelo mestre Satyanatha!
    static func downloadVivoMeditacao(_ p1: String) -> String {
        return Localization.tr("Localizable", "DOWNLOAD_VIVO_MEDITACAO", p1)
    }
    /// Você configurou seu Vivo Meditação para fazer downloads apenas em conexões WiFi.
    static let downloadWifiOnly = Localization.tr("Localizable", "DOWNLOAD_WIFI_ONLY")
    /// Conectando você com sua paz
    static let embeddedVideoOnboarding = Localization.tr("Localizable", "EMBEDDED_VIDEO_ONBOARDING")
    /// :(\nTivemos um pequeno problema
    static let emptyStateMessage = Localization.tr("Localizable", "EMPTY_STATE_MESSAGE")
    /// Erro
    static let error = Localization.tr("Localizable", "ERROR")
    /// Essenciais
    static let essentials = Localization.tr("Localizable", "ESSENTIALS")
    /// Atenção Plena, ou mindfulness, é a arte de concentrar a mente no momento presente. Ali o ego se dissolve, deixando brilhar a paz interior, a concentração serena e a luz do seu intelecto puro e amplo.
    static let essentialsLongDescription = Localization.tr("Localizable", "ESSENTIALS_LONG_DESCRIPTION")
    /// Meditações neutras para qualquer hora.
    static let essentialsShortDescription = Localization.tr("Localizable", "ESSENTIALS_SHORT_DESCRIPTION")
    /// Evolução
    static let evolution = Localization.tr("Localizable", "EVOLUTION")
    /// Criar, para o ser humano, é quase inevitável: você cria seu futuro com cada pensamento ou ação. Aprenda a fazer isto ordenadamente e com a melhor energia.
    static let evolutionLongDescription = Localization.tr("Localizable", "EVOLUTION_LONG_DESCRIPTION")
    /// Exclusivo para assinantes
    static let exclusiveSubscriber = Localization.tr("Localizable", "EXCLUSIVE_SUBSCRIBER")
    /// Conectar ao Facebook
    static let facebookConnectButton = Localization.tr("Localizable", "FACEBOOK_CONNECT_BUTTON")
    /// Não foi possível se conectar ao Facebook. Tente novamente.
    static let facebookConnectionError = Localization.tr("Localizable", "FACEBOOK_CONNECTION_ERROR")
    /// Não foi possível encontrar um plano de assinatura. Verifique sua conexão com a Internet.
    static let failedToFetchProducts = Localization.tr("Localizable", "FAILED_TO_FETCH_PRODUCTS")
    /// Houve uma falha. Tente novamente mais tarde.
    static let failedToPurchaseProduct = Localization.tr("Localizable", "FAILED_TO_PURCHASE_PRODUCT")
    /// Fundamentos
    static let fundamentals = Localization.tr("Localizable", "FUNDAMENTALS")
    /// Esse cupom está expirado.
    static let giftCardErrorAlreadyExpired = Localization.tr("Localizable", "GIFT_CARD_ERROR_ALREADY_EXPIRED")
    /// Cupom já resgatado.
    static let giftCardErrorAlreadyRedeemed = Localization.tr("Localizable", "GIFT_CARD_ERROR_ALREADY_REDEEMED")
    /// Esse cupom está expirado.
    static let giftCardErrorExpired = Localization.tr("Localizable", "GIFT_CARD_ERROR_EXPIRED")
    /// Cupom inválido. Verifique o código e tente novamente.
    static let giftCardErrorInvalidGiftCard = Localization.tr("Localizable", "GIFT_CARD_ERROR_INVALID_GIFT_CARD")
    /// Cupom inválido.
    static let giftCardErrorInvalidParameters = Localization.tr("Localizable", "GIFT_CARD_ERROR_INVALID_PARAMETERS")
    /// Cupom inválido.
    static let giftCardErrorNotReserved = Localization.tr("Localizable", "GIFT_CARD_ERROR_NOT_RESERVED")
    /// Erro ao resgatar seu cupom. Verifique sua conexão com a Internet e tente novamente.
    static let giftCardErrorRedeemRequestFailed = Localization.tr("Localizable", "GIFT_CARD_ERROR_REDEEM_REQUEST_FAILED")
    /// Erro ao resgatar seu cupom. Verifique sua conexão com a Internet e tente novamente.
    static let giftCardErrorRegisteringSubscriptionOnKiwi = Localization.tr("Localizable", "GIFT_CARD_ERROR_REGISTERING_SUBSCRIPTION_ON_KIWI")
    /// Erro ao resgatar seu cupom. Verifique sua conexão com a Internet e tente novamente.
    static let giftCardErrorSyncSubscriptionFailed = Localization.tr("Localizable", "GIFT_CARD_ERROR_SYNC_SUBSCRIPTION_FAILED")
    /// Erro ao resgatar seu cupom. Verifique sua conexão com a Internet e tente novamente.
    static let giftCardErrorUnknown = Localization.tr("Localizable", "GIFT_CARD_ERROR_UNKNOWN")
    /// Já sou assinante
    static let iAmAlreadySubscriber = Localization.tr("Localizable", "I_AM_ALREADY_SUBSCRIBER")
    /// Não quero meditar
    static let iDoNotWantToMeditate = Localization.tr("Localizable", "I_DO_NOT_WANT_TO_MEDITATE")
    /// INSERIR CÓDIGO
    static let insertPincode = Localization.tr("Localizable", "INSERT_PINCODE")
    /// Infelizmente a sua operadora ainda não é suportada
    static let invalidCarrier = Localization.tr("Localizable", "INVALID_CARRIER")
    /// O número de telefone inserido é inválido. Favor tentar novamente
    static let invalidPhoneMessage = Localization.tr("Localizable", "INVALID_PHONE_MESSAGE")
    /// Telefone inválido
    static let invalidPhoneTitle = Localization.tr("Localizable", "INVALID_PHONE_TITLE")
    /// O código parece estar errado. Por favor verifique se digitou corretamente ou tente enviar outro
    static let invalidPincode = Localization.tr("Localizable", "INVALID_PINCODE")
    /// Jornada
    static let journey = Localization.tr("Localizable", "JOURNEY")
    /// CONTINUAR JORNADA
    static let journeyContinueButton = Localization.tr("Localizable", "JOURNEY_CONTINUE_BUTTON")
    /// O ciclo %@ é uma fase mais avançada da jornada para se tornar um meditador experiente. Recomendamos que faça o ciclo %@ antes. O que deseja fazer?
    static func journeyPopup(_ p1: String, _ p2: String) -> String {
        return Localization.tr("Localizable", "JOURNEY_POPUP", p1, p2)
    }
    /// COMEÇAR CICLO %@
    static func journeyPopupButton(_ p1: String) -> String {
        return Localization.tr("Localizable", "JOURNEY_POPUP_BUTTON", p1)
    }
    /// Torne-se um expert.
    static let journeyShortDescription = Localization.tr("Localizable", "JOURNEY_SHORT_DESCRIPTION")
    /// INICIAR JORNADA
    static let journeyStartButton = Localization.tr("Localizable", "JOURNEY_START_BUTTON")
    /// A Jornada até a Paz Interior
    static let journeyTitle = Localization.tr("Localizable", "JOURNEY_TITLE")
    /// Kids
    static let kids = Localization.tr("Localizable", "KIDS")
    /// Até 4 anos
    static let kidsAge0To4 = Localization.tr("Localizable", "KIDS_AGE_0_TO_4")
    /// De 5 a 7 anos
    static let kidsAge5To7 = Localization.tr("Localizable", "KIDS_AGE_5_TO_7")
    /// De 8 a 12 anos
    static let kidsAge8To12 = Localization.tr("Localizable", "KIDS_AGE_8_TO_12")
    /// Meditações na medida\npara as crianças.
    static let kidsShortDescription = Localization.tr("Localizable", "KIDS_SHORT_DESCRIPTION")
    /// LOGIN
    static let login = Localization.tr("Localizable", "LOGIN")
    /// Sair
    static let logout = Localization.tr("Localizable", "LOGOUT")
    /// Tem certeza de que deseja sair?
    static let logoutConfirmation = Localization.tr("Localizable", "LOGOUT_CONFIRMATION")
    /// %@ de %@
    static func meditateSeriesProgress(_ p1: String, _ p2: String) -> String {
        return Localization.tr("Localizable", "MEDITATE_SERIES_PROGRESS", p1, p2)
    }
    /// Música
    static let meditateSoundMusic = Localization.tr("Localizable", "MEDITATE_SOUND_MUSIC")
    /// Sem Trilha
    static let meditateSoundMute = Localization.tr("Localizable", "MEDITATE_SOUND_MUTE")
    /// Natureza
    static let meditateSoundNature = Localization.tr("Localizable", "MEDITATE_SOUND_NATURE")
    /// Om
    static let meditateSoundOmn = Localization.tr("Localizable", "MEDITATE_SOUND_OMN")
    /// Chuva
    static let meditateSoundRain = Localization.tr("Localizable", "MEDITATE_SOUND_RAIN")
    /// Meditações
    static let meditations = Localization.tr("Localizable", "MEDITATIONS")
    /// Momentos
    static let moments = Localization.tr("Localizable", "MOMENTS")
    /// Meditações com propósito.
    static let momentsShortDescription = Localization.tr("Localizable", "MOMENTS_SHORT_DESCRIPTION")
    /// Assinar mensal
    static let monthlySubscription = Localization.tr("Localizable", "MONTHLY_SUBSCRIPTION")
    /// Assinatura mensal de
    static let monthlySubscriptionDescription = Localization.tr("Localizable", "MONTHLY_SUBSCRIPTION_DESCRIPTION")
    /// Assinatura mensal
    static let monthlySubscriptionDescriptionPlaceholder = Localization.tr("Localizable", "MONTHLY_SUBSCRIPTION_DESCRIPTION_PLACEHOLDER")
    /// Minhas meditações
    static let myMeditations = Localization.tr("Localizable", "MY_MEDITATIONS")
    /// Reserve um tempinho para renovar as energias para o próximo ano.
    static let newYearMeditationBannerDescription = Localization.tr("Localizable", "NEW_YEAR_MEDITATION_BANNER_DESCRIPTION")
    /// Ir para Fundamentos da Meditação
    static let newYearMeditationBannerGoToFundamentalsButton = Localization.tr("Localizable", "NEW_YEAR_MEDITATION_BANNER_GO_TO_FUNDAMENTALS_BUTTON")
    /// Meditação do Ano Novo
    static let newYearMeditationBannerHeader = Localization.tr("Localizable", "NEW_YEAR_MEDITATION_BANNER_HEADER")
    /// Comece Agora
    static let newYearMeditationBannerStartNowButton = Localization.tr("Localizable", "NEW_YEAR_MEDITATION_BANNER_START_NOW_BUTTON")
    /// Para começar 2018 com o pé direito, preparamos uma meditação especial para você!
    static let newYearMeditationBannerSubtitle = Localization.tr("Localizable", "NEW_YEAR_MEDITATION_BANNER_SUBTITLE")
    /// Viva Mais Boas Energias
    static let newYearMeditationBannerTitle = Localization.tr("Localizable", "NEW_YEAR_MEDITATION_BANNER_TITLE")
    /// Meditação de ano novo
    static let newYearMeditationHomeSectionTitle = Localization.tr("Localizable", "NEW_YEAR_MEDITATION_HOME_SECTION_TITLE")
    /// Não
    static let no = Localization.tr("Localizable", "NO")
    /// Por segurança você optou por não fazer compras dentro de aplicativos. Habilite esta opção nos Ajustes do seu aparelho.
    static let notAllowedToPurchase = Localization.tr("Localizable", "NOT_ALLOWED_TO_PURCHASE")
    /// Reiniciar
    static let nukeAlertButton = Localization.tr("Localizable", "NUKE_ALERT_BUTTON")
    /// Todas as configurações do seu Vivo Meditação serão reinicidadas. Após isso, o app fechará automaticamente
    static let nukeAlertMessage = Localization.tr("Localizable", "NUKE_ALERT_MESSAGE")
    /// OK
    static let ok = Localization.tr("Localizable", "OK")
    /// Ok, entendido
    static let okUnderstood = Localization.tr("Localizable", "OK_UNDERSTOOD")
    /// Precisamos do seu endereço de email
    static let onboardingEmailEmpty = Localization.tr("Localizable", "ONBOARDING_EMAIL_EMPTY")
    /// Este endereço de email não é válido
    static let onboardingEmailInvalid = Localization.tr("Localizable", "ONBOARDING_EMAIL_INVALID")
    /// Vamos agora completar o seu perfil. Por favor insira seu e-mail.
    static let onboardingEmailSubtitle = Localization.tr("Localizable", "ONBOARDING_EMAIL_SUBTITLE")
    /// E-MAIL
    static let onboardingEmailTextfieldPlaceholder = Localization.tr("Localizable", "ONBOARDING_EMAIL_TEXTFIELD_PLACEHOLDER")
    /// TUDO CERTO!
    static let onboardingEmailTitle = Localization.tr("Localizable", "ONBOARDING_EMAIL_TITLE")
    /// Assim você poderá acessar o Vivo Meditação em qualquer dispositivo e recuperar seu progresso caso troque de telefone.
    static let onboardingOptionsDescription = Localization.tr("Localizable", "ONBOARDING_OPTIONS_DESCRIPTION")
    /// Entrar com Facebook
    static let onboardingOptionsFacebookButtonTitle = Localization.tr("Localizable", "ONBOARDING_OPTIONS_FACEBOOK_BUTTON_TITLE")
    /// Entrar com telefone
    static let onboardingOptionsMsisdnButtonTitle = Localization.tr("Localizable", "ONBOARDING_OPTIONS_MSISDN_BUTTON_TITLE")
    /// Caro meditador, vamos criar uma conta para salvar o seu progresso.
    static let onboardingOptionsTitle = Localization.tr("Localizable", "ONBOARDING_OPTIONS_TITLE")
    /// Começar
    static let onboardingProccedButton = Localization.tr("Localizable", "ONBOARDING_PROCCED_BUTTON")
    /// Entrar
    static let onboardingScreenTitle = Localization.tr("Localizable", "ONBOARDING_SCREEN_TITLE")
    /// Conectando você\ncom sua paz
    static let onboardingTitle = Localization.tr("Localizable", "ONBOARDING_TITLE")
    /// Código Reenviado
    static let pincodeResent = Localization.tr("Localizable", "PINCODE_RESENT")
    /// Código Enviado
    static let pincodeSent = Localization.tr("Localizable", "PINCODE_SENT")
    /// Aceito
    static let pushPermissionConfirm = Localization.tr("Localizable", "PUSH_PERMISSION_CONFIRM")
    /// Gostaríamos de enviar notificações para melhorar a sua experiência
    static let pushPermissionMessage = Localization.tr("Localizable", "PUSH_PERMISSION_MESSAGE")
    /// Resgatar
    static let redeem = Localization.tr("Localizable", "REDEEM")
    /// Resgatar cupom
    static let redeemCoupon = Localization.tr("Localizable", "REDEEM_COUPON")
    /// Relacionamento
    static let relationship = Localization.tr("Localizable", "RELATIONSHIP")
    /// Amar mais, amar melhor, amar de peito aberto e encontrar a espiritualidade através de amar a si mesmo e aos outros.
    static let relationshipLongDescription = Localization.tr("Localizable", "RELATIONSHIP_LONG_DESCRIPTION")
    /// Lembrete
    static let reminder = Localization.tr("Localizable", "REMINDER")
    /// Para ativar o lembrete, é necessário ir nas configurações do seu aparelho e autorizar o recebimento de notificações
    static let reminderAuthorizationMessage = Localization.tr("Localizable", "REMINDER_AUTHORIZATION_MESSAGE")
    /// Permissão necessária
    static let reminderAuthorizationTitle = Localization.tr("Localizable", "REMINDER_AUTHORIZATION_TITLE")
    /// Ir para configurações
    static let reminderSettingsButton = Localization.tr("Localizable", "REMINDER_SETTINGS_BUTTON")
    /// Horário do lembrete
    static let reminderTime = Localization.tr("Localizable", "REMINDER_TIME")
    /// Falha ao enviar o relatório. Favor tentar novamente.
    static let reportUploaderFailure = Localization.tr("Localizable", "REPORT_UPLOADER_FAILURE")
    /// Relatório enviado. Obrigado!
    static let reportUploaderSuccess = Localization.tr("Localizable", "REPORT_UPLOADER_SUCCESS")
    /// Restauração
    static let restoration = Localization.tr("Localizable", "RESTORATION")
    /// RESTAURAR
    static let restore = Localization.tr("Localizable", "RESTORE")
    /// Se você já é assinante do Vivo Meditação, insira seu celular Vivo abaixo
    static let restoreHint = Localization.tr("Localizable", "RESTORE_HINT")
    /// Se você já é assinante do Vivo Meditação,\nrestaure sua assinatura.
    static let restoreOptionsDescription = Localization.tr("Localizable", "RESTORE_OPTIONS_DESCRIPTION")
    /// Seu celular Vivo com DDD
    static let restorePlaceholder = Localization.tr("Localizable", "RESTORE_PLACEHOLDER")
    /// Restaurar via App Store
    static let restoreViaAppstore = Localization.tr("Localizable", "RESTORE_VIA_APPSTORE")
    /// Restaurar via SMS
    static let restoreViaCarrier = Localization.tr("Localizable", "RESTORE_VIA_CARRIER")
    /// Infelizmente sua assinatura está expirada. Por favor, coloque créditos e restaure sua assinatura para continuar acessando as meditações. Caso já tenha créditos, por favor, aguarde 6 horas pois estamos validando seus créditos.
    static let restoredWithExpiredSubscription = Localization.tr("Localizable", "RESTORED_WITH_EXPIRED_SUBSCRIPTION")
    /// Você ainda não possui uma assinatura ativa no Vivo Meditação.
    static let restoredWithInvalidSubscription = Localization.tr("Localizable", "RESTORED_WITH_INVALID_SUBSCRIPTION")
    /// Sua assinatura foi restaurada com sucesso.
    static let restoredWithValidSubscription = Localization.tr("Localizable", "RESTORED_WITH_VALID_SUBSCRIPTION")
    /// Salvar
    static let save = Localization.tr("Localizable", "SAVE")
    /// Informações
    static let secretSettingsInfos = Localization.tr("Localizable", "SECRET_SETTINGS_INFOS")
    /// Enviar relatório de erros
    static let secretSettingsReportUploader = Localization.tr("Localizable", "SECRET_SETTINGS_REPORT_UPLOADER")
    /// Cenário
    static let secretSettingsScenario = Localization.tr("Localizable", "SECRET_SETTINGS_SCENARIO")
    /// Simular não-assinante
    static let secretSettingsSimulateNonSubscriber = Localization.tr("Localizable", "SECRET_SETTINGS_SIMULATE_NON_SUBSCRIBER")
    /// Simular assinante
    static let secretSettingsSimulateSubscriber = Localization.tr("Localizable", "SECRET_SETTINGS_SIMULATE_SUBSCRIBER")
    /// Ver meditações antigas
    static let seeArchivedMeditations = Localization.tr("Localizable", "SEE_ARCHIVED_MEDITATIONS")
    /// REENVIAR SMS
    static let sendSms = Localization.tr("Localizable", "SEND_SMS")
    /// Reenviando código PIN
    static let sendingPincode = Localization.tr("Localizable", "SENDING_PINCODE")
    /// Configurações
    static let settings = Localization.tr("Localizable", "SETTINGS")
    /// Conheça a história
    static let settingsAbout = Localization.tr("Localizable", "SETTINGS_ABOUT")
    /// Para cancelar sua assinatura envie SAIR para 6100
    static let settingsCarrierCancelSubscription = Localization.tr("Localizable", "SETTINGS_CARRIER_CANCEL_SUBSCRIPTION")
    /// Cupom válido até
    static let settingsCouponValidUntil = Localization.tr("Localizable", "SETTINGS_COUPON_VALID_UNTIL")
    /// Lembrete diário
    static let settingsDailyReminder = Localization.tr("Localizable", "SETTINGS_DAILY_REMINDER")
    /// Download somente com Wi-Fi
    static let settingsDownloadWifi = Localization.tr("Localizable", "SETTINGS_DOWNLOAD_WIFI")
    /// Meditações baixadas
    static let settingsDownloads = Localization.tr("Localizable", "SETTINGS_DOWNLOADS")
    /// FAQ
    static let settingsFaq = Localization.tr("Localizable", "SETTINGS_FAQ")
    /// Feedback
    static let settingsFeedback = Localization.tr("Localizable", "SETTINGS_FEEDBACK")
    /// Política de privacidade
    static let settingsPrivacyPolicy = Localization.tr("Localizable", "SETTINGS_PRIVACY_POLICY")
    /// Sobre
    static let settingsSectionAbout = Localization.tr("Localizable", "SETTINGS_SECTION_ABOUT")
    /// Mídia
    static let settingsSectionAdjustments = Localization.tr("Localizable", "SETTINGS_SECTION_ADJUSTMENTS")
    /// Assinante
    static let settingsStatusSubscribed = Localization.tr("Localizable", "SETTINGS_STATUS_SUBSCRIBED")
    /// Em degustação
    static let settingsStatusVivoTrial = Localization.tr("Localizable", "SETTINGS_STATUS_VIVO_TRIAL")
    /// Termos e condições
    static let settingsTerms = Localization.tr("Localizable", "SETTINGS_TERMS")
    /// 7 dias grátis
    static let sevenDaysTrial = Localization.tr("Localizable", "SEVEN_DAYS_TRIAL")
    /// Esta conta perdeu a validade. Você precisará criar outra
    static let signInAccountExpired = Localization.tr("Localizable", "SIGN_IN_ACCOUNT_EXPIRED")
    /// Esta conta ainda não foi validada
    static let signInAccountNotValidated = Localization.tr("Localizable", "SIGN_IN_ACCOUNT_NOT_VALIDATED")
    /// Não tenho conta
    static let signUp = Localization.tr("Localizable", "SIGN_UP")
    /// Em seguida vamos enviar por SMS um código de 4 dígitos que será usado para confirmar o seu número de telefone. Isso é para a sua segurança.
    static let signUpPhoneNumberSubtitle = Localization.tr("Localizable", "SIGN_UP_PHONE_NUMBER_SUBTITLE")
    /// Seu telefone com DDD
    static let signUpPhoneNumberTextfieldPlaceholder = Localization.tr("Localizable", "SIGN_UP_PHONE_NUMBER_TEXTFIELD_PLACEHOLDER")
    /// Por favor insira seu número de telefone com DDD.
    static let signUpPhoneNumberTitle = Localization.tr("Localizable", "SIGN_UP_PHONE_NUMBER_TITLE")
    /// CONFIRMAR CÓDIGO
    static let signUpPincodeConfirmButton = Localization.tr("Localizable", "SIGN_UP_PINCODE_CONFIRM_BUTTON")
    /// REENVIAR CÓDIGO
    static let signUpPincodeResendButton = Localization.tr("Localizable", "SIGN_UP_PINCODE_RESEND_BUTTON")
    /// Código
    static let signUpPincodeTextfieldPlaceholder = Localization.tr("Localizable", "SIGN_UP_PINCODE_TEXTFIELD_PLACEHOLDER")
    /// Por favor insira o código de 4 dígitos que enviamos por SMS.
    static let signUpPincodeTitle = Localization.tr("Localizable", "SIGN_UP_PINCODE_TITLE")
    /// Dar permissão
    static let socialGrantPermissionButtonTitle = Localization.tr("Localizable", "SOCIAL_GRANT_PERMISSION_BUTTON_TITLE")
    /// Você ainda não tem nenhum amigo no Vivo Meditação.\n\nChame seus amigos apertando o botão abaixo.
    static let socialHasNoFriends = Localization.tr("Localizable", "SOCIAL_HAS_NO_FRIENDS")
    /// Ganhe mais motivação meditando com amigos\n\nPrecisamos da sua permissão para ver quais amigos já estão meditando.
    static let socialHasntGrantedFriendsPermissionMessage = Localization.tr("Localizable", "SOCIAL_HASNT_GRANTED_FRIENDS_PERMISSION_MESSAGE")
    /// Descubra seus amigos que\nestão no Vivo Meditação
    static let socialHeader = Localization.tr("Localizable", "SOCIAL_HEADER")
    /// Desconectar
    static let socialLogoutAlertButtonTitle = Localization.tr("Localizable", "SOCIAL_LOGOUT_ALERT_BUTTON_TITLE")
    /// Tem certeza que deseja desconectar do Facebook?
    static let socialLogoutAlertMessage = Localization.tr("Localizable", "SOCIAL_LOGOUT_ALERT_MESSAGE")
    /// Desconectar do Facebook
    static let socialLogoutButton = Localization.tr("Localizable", "SOCIAL_LOGOUT_BUTTON")
    /// Conecte-se ao Facebook para interagir com seus amigos que usam o Vivo Meditação
    static let socialNotLogged = Localization.tr("Localizable", "SOCIAL_NOT_LOGGED")
    /// Status
    static let status = Localization.tr("Localizable", "STATUS")
    /// Reforçar
    static let strengthen = Localization.tr("Localizable", "STRENGTHEN")
    /// Assine agora
    static let subscribeNow = Localization.tr("Localizable", "SUBSCRIBE_NOW")
    /// Assine já e medite mais!
    static let subscribeNowAndMeditate = Localization.tr("Localizable", "SUBSCRIBE_NOW_AND_MEDITATE")
    /// Assinatura
    static let subscription = Localization.tr("Localizable", "SUBSCRIPTION")
    /// PIN inválido.
    static let subscriptionErrorInvalidCode = Localization.tr("Localizable", "SUBSCRIPTION_ERROR_INVALID_CODE")
    /// Você ainda não é assinante.
    static let subscriptionErrorInvalidSubscription = Localization.tr("Localizable", "SUBSCRIPTION_ERROR_INVALID_SUBSCRIPTION")
    /// Erro desconhecido.
    static let subscriptionErrorUnknow = Localization.tr("Localizable", "SUBSCRIPTION_ERROR_UNKNOW")
    /// Insira abaixo o código de 4 dígitos que você recebeu via SMS
    static let subscriptionHint = Localization.tr("Localizable", "SUBSCRIPTION_HINT")
    /// Resultado
    static let subscriptionPopupTitle = Localization.tr("Localizable", "SUBSCRIPTION_POPUP_TITLE")
    /// Assinatura restaurada com sucesso.
    static let subscriptionSuccess = Localization.tr("Localizable", "SUBSCRIPTION_SUCCESS")
    /// Verifique seu acesso à internet e tente novamente
    static let syncFailedMessage = Localization.tr("Localizable", "SYNC_FAILED_MESSAGE")
    /// Não foi possível carregar o Vivo Meditação
    static let syncFailedTitle = Localization.tr("Localizable", "SYNC_FAILED_TITLE")
    /// Meditações
    static let tabMeditations = Localization.tr("Localizable", "TAB_MEDITATIONS")
    /// Social
    static let tabSocial = Localization.tr("Localizable", "TAB_SOCIAL")
    /// Cantinho Zen
    static let tabZen = Localization.tr("Localizable", "TAB_ZEN")
    /// Tenha acesso à todas as meditações a partir de %@ por semana.
    static func timeLinePurchaseDescription(_ p1: String) -> String {
        return Localization.tr("Localizable", "TIME_LINE_PURCHASE_DESCRIPTION", p1)
    }
    /// Tenha acesso à todas as meditações!
    static let timeLinePurchaseShortDescription = Localization.tr("Localizable", "TIME_LINE_PURCHASE_SHORT_DESCRIPTION")
    /// %@ minutos
    static func timeSelectionButton(_ p1: String) -> String {
        return Localization.tr("Localizable", "TIME_SELECTION_BUTTON", p1)
    }
    /// Antes de começar, defina a duração de cada meditação.
    static let timeSelectionText = Localization.tr("Localizable", "TIME_SELECTION_TEXT")
    /// Hora de meditar!
    static let timeToMeditate = Localization.tr("Localizable", "TIME_TO_MEDITATE")
    /// Cancelar
    static let timelineDownloadErrorCancelButton = Localization.tr("Localizable", "TIMELINE_DOWNLOAD_ERROR_CANCEL_BUTTON")
    /// Ocorreu um erro ao fazer o download.
    static let timelineDownloadErrorMessage = Localization.tr("Localizable", "TIMELINE_DOWNLOAD_ERROR_MESSAGE")
    /// Tentar de novo
    static let timelineDownloadErrorRetryButton = Localization.tr("Localizable", "TIMELINE_DOWNLOAD_ERROR_RETRY_BUTTON")
    /// Ops!
    static let timelineDownloadErrorTitle = Localization.tr("Localizable", "TIMELINE_DOWNLOAD_ERROR_TITLE")
    /// Verifique a sua conexão com a Internet e tente novamente.
    static let timelineDownloadTimeoutError = Localization.tr("Localizable", "TIMELINE_DOWNLOAD_TIMEOUT_ERROR")
    /// Meditações de %@, %@ ou %@ min
    static func timelineFooterSubtitleMultipleMeditations(_ p1: String, _ p2: String, _ p3: String) -> String {
        return Localization.tr("Localizable", "TIMELINE_FOOTER_SUBTITLE_MULTIPLE_MEDITATIONS", p1, p2, p3)
    }
    /// 1 meditação de %@, %@ ou %@ min
    static func timelineFooterSubtitleSingleMeditation(_ p1: String, _ p2: String, _ p3: String) -> String {
        return Localization.tr("Localizable", "TIMELINE_FOOTER_SUBTITLE_SINGLE_MEDITATION", p1, p2, p3)
    }
    /// Tentar Novamente
    static let tryAgain = Localization.tr("Localizable", "TRY_AGAIN")
    /// Experimente
    static let tryTrial = Localization.tr("Localizable", "TRY_TRIAL")
    /// Houve uma falha. Tente novamente mais tarde.
    static let unknowError = Localization.tr("Localizable", "UNKNOW_ERROR")
    /// Validando código PIN
    static let validatingPincode = Localization.tr("Localizable", "VALIDATING_PINCODE")
    /// Versão
    static let version = Localization.tr("Localizable", "VERSION")
    /// Não foi possível carregar o vídeo. Verifique a sua conexão com a Internet e tente novamente.
    static let videoPlayerErrorLoadingAsset = Localization.tr("Localizable", "VIDEO_PLAYER_ERROR_LOADING_ASSET")
    /// Vivo Meditação
    static let vivoMeditacao = Localization.tr("Localizable", "VIVO_MEDITACAO")
    /// Falha na conexão
    static let webviewConnectionError = Localization.tr("Localizable", "WEBVIEW_CONNECTION_ERROR")
    /// Não foi possível carregar o conteúdo
    static let webviewContentError = Localization.tr("Localizable", "WEBVIEW_CONTENT_ERROR")
    /// Meditação da semana
    static let weeklyMeditations = Localization.tr("Localizable", "WEEKLY_MEDITATIONS")
    /// Assinar semanal
    static let weeklySubscription = Localization.tr("Localizable", "WEEKLY_SUBSCRIPTION")
    /// Assinatura semanal de
    static let weeklySubscriptionDescription = Localization.tr("Localizable", "WEEKLY_SUBSCRIPTION_DESCRIPTION")
    /// Assinatura semanal
    static let weeklySubscriptionDescriptionPlaceholder = Localization.tr("Localizable", "WEEKLY_SUBSCRIPTION_DESCRIPTION_PLACEHOLDER")
    /// Sim
    static let yes = Localization.tr("Localizable", "YES")
}
// swiftlint:enable explicit_type_interface identifier_name line_length nesting type_body_length type_name

extension Localization {
    fileprivate static func tr(_ table: String, _ key: String, _ args: CVarArg...) -> String {
        let format = NSLocalizedString(key, tableName: table, bundle: Bundle(for: BundleToken.self), comment: "")
        return String(format: format, locale: Locale.current, arguments: args)
    }
}

private final class BundleToken {}

