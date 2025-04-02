// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'types.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SessionInterface _$SessionInterfaceFromJson(Map<String, dynamic> json) =>
    SessionInterface(
      acSession: SessionInterface__acSession.fromJson(
        json['acSession'] as Map<String, dynamic>,
      ),
      genNo: (json['genNo'] as num).toInt(),
      sessionId: json['sessionId'] as String,
    );

Map<String, dynamic> _$SessionInterfaceToJson(SessionInterface instance) =>
    <String, dynamic>{
      'acSession': instance.acSession.toJson(),
      'genNo': instance.genNo,
      'sessionId': instance.sessionId,
    };

LiveboardViewConfig _$LiveboardViewConfigFromJson(
  Map<String, dynamic> json,
) => LiveboardViewConfig(
  fullHeight: json['fullHeight'] as bool?,
  defaultHeight: (json['defaultHeight'] as num?)?.toInt(),
  enableVizTransformations: json['enableVizTransformations'] as bool?,
  liveboardId: json['liveboardId'] as String?,
  pinboardId: json['pinboardId'] as String?,
  vizId: json['vizId'] as String?,
  preventLiveboardFilterRemoval: json['preventLiveboardFilterRemoval'] as bool?,
  visibleVizs:
      (json['visibleVizs'] as List<dynamic>?)?.map((e) => e as String).toList(),
  preventPinboardFilterRemoval: json['preventPinboardFilterRemoval'] as bool?,
  liveboardV2: json['liveboardV2'] as bool?,
  activeTabId: json['activeTabId'] as String?,
  hideTabPanel: json['hideTabPanel'] as bool?,
  hideLiveboardHeader: json['hideLiveboardHeader'] as bool?,
  showLiveboardTitle: json['showLiveboardTitle'] as bool?,
  showLiveboardDescription: json['showLiveboardDescription'] as bool?,
  isLiveboardHeaderSticky: json['isLiveboardHeaderSticky'] as bool?,
  enableAskSage: json['enableAskSage'] as bool?,
  enable2ColumnLayout: json['enable2ColumnLayout'] as bool?,
  showPreviewLoader: json['showPreviewLoader'] as bool?,
  isLiveboardCompactHeaderEnabled:
      json['isLiveboardCompactHeaderEnabled'] as bool?,
  showLiveboardVerifiedBadge: json['showLiveboardVerifiedBadge'] as bool?,
  showLiveboardReverifyBanner: json['showLiveboardReverifyBanner'] as bool?,
  hideIrrelevantChipsInLiveboardTabs:
      json['hideIrrelevantChipsInLiveboardTabs'] as bool?,
  oAuthPollingInterval: (json['oAuthPollingInterval'] as num?)?.toInt(),
  isForceRedirect: json['isForceRedirect'] as bool?,
  dataSourceId: json['dataSourceId'] as String?,
  layoutConfig:
      json['layoutConfig'] == null
          ? null
          : LayoutConfig.fromJson(json['layoutConfig'] as Map<String, dynamic>),
  frameParams:
      json['frameParams'] == null
          ? null
          : FrameParams.fromJson(json['frameParams'] as Map<String, dynamic>),
  theme: json['theme'] as String?,
  styleSheet__unstable: json['styleSheet__unstable'] as String?,
  disabledActions:
      (json['disabledActions'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$ActionEnumMap, e))
          .toList(),
  disabledActionReason: json['disabledActionReason'] as String?,
  hiddenActions:
      (json['hiddenActions'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$ActionEnumMap, e))
          .toList(),
  visibleActions:
      (json['visibleActions'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$ActionEnumMap, e))
          .toList(),
  showAlerts: json['showAlerts'] as bool?,
  runtimeFilters:
      (json['runtimeFilters'] as List<dynamic>?)
          ?.map((e) => RuntimeFilter.fromJson(e as Map<String, dynamic>))
          .toList(),
  runtimeParameters:
      (json['runtimeParameters'] as List<dynamic>?)
          ?.map((e) => RuntimeParameter.fromJson(e as Map<String, dynamic>))
          .toList(),
  locale: json['locale'] as String?,
  additionalFlags:
      json['additionalFlags'] == null
          ? null
          : LiveboardViewConfig__additionalFlags.fromJson(
            json['additionalFlags'] as Map<String, dynamic>,
          ),
  customizations:
      json['customizations'] == null
          ? null
          : CustomisationsInterface.fromJson(
            json['customizations'] as Map<String, dynamic>,
          ),
  insertAsSibling: json['insertAsSibling'] as bool?,
  contextMenuTrigger: $enumDecodeNullable(
    _$ContextMenuTriggerOptionsEnumMap,
    json['contextMenuTrigger'],
  ),
  linkOverride: json['linkOverride'] as bool?,
  insertInToSlide: json['insertInToSlide'] as bool?,
  usePrerenderedIfAvailable: json['usePrerenderedIfAvailable'] as bool?,
  excludeRuntimeFiltersfromURL: json['excludeRuntimeFiltersfromURL'] as bool?,
  hiddenTabs:
      (json['hiddenTabs'] as List<dynamic>?)?.map((e) => e as String).toList(),
  visibleTabs:
      (json['visibleTabs'] as List<dynamic>?)?.map((e) => e as String).toList(),
  preRenderId: json['preRenderId'] as String?,
  doNotTrackPreRenderSize: json['doNotTrackPreRenderSize'] as bool?,
  embedComponentType: json['embedComponentType'] as String?,
  excludeRuntimeParametersfromURL:
      json['excludeRuntimeParametersfromURL'] as bool?,
  enableV2Shell_experimental: json['enableV2Shell_experimental'] as bool?,
  collapseSearchBar: json['collapseSearchBar'] as bool?,
  disableRedirectionLinksInNewTab:
      json['disableRedirectionLinksInNewTab'] as bool?,
  dataPanelV2: json['dataPanelV2'] as bool?,
  enableCustomColumnGroups: json['enableCustomColumnGroups'] as bool?,
  overrideOrgId: (json['overrideOrgId'] as num?)?.toInt(),
);

Map<String, dynamic> _$LiveboardViewConfigToJson(
  LiveboardViewConfig instance,
) => <String, dynamic>{
  if (instance.fullHeight case final value?) 'fullHeight': value,
  if (instance.defaultHeight case final value?) 'defaultHeight': value,
  if (instance.enableVizTransformations case final value?)
    'enableVizTransformations': value,
  if (instance.liveboardId case final value?) 'liveboardId': value,
  if (instance.pinboardId case final value?) 'pinboardId': value,
  if (instance.vizId case final value?) 'vizId': value,
  if (instance.preventLiveboardFilterRemoval case final value?)
    'preventLiveboardFilterRemoval': value,
  if (instance.visibleVizs case final value?) 'visibleVizs': value,
  if (instance.preventPinboardFilterRemoval case final value?)
    'preventPinboardFilterRemoval': value,
  if (instance.liveboardV2 case final value?) 'liveboardV2': value,
  if (instance.activeTabId case final value?) 'activeTabId': value,
  if (instance.hideTabPanel case final value?) 'hideTabPanel': value,
  if (instance.hideLiveboardHeader case final value?)
    'hideLiveboardHeader': value,
  if (instance.showLiveboardTitle case final value?)
    'showLiveboardTitle': value,
  if (instance.showLiveboardDescription case final value?)
    'showLiveboardDescription': value,
  if (instance.isLiveboardHeaderSticky case final value?)
    'isLiveboardHeaderSticky': value,
  if (instance.enableAskSage case final value?) 'enableAskSage': value,
  if (instance.enable2ColumnLayout case final value?)
    'enable2ColumnLayout': value,
  if (instance.showPreviewLoader case final value?) 'showPreviewLoader': value,
  if (instance.isLiveboardCompactHeaderEnabled case final value?)
    'isLiveboardCompactHeaderEnabled': value,
  if (instance.showLiveboardVerifiedBadge case final value?)
    'showLiveboardVerifiedBadge': value,
  if (instance.showLiveboardReverifyBanner case final value?)
    'showLiveboardReverifyBanner': value,
  if (instance.hideIrrelevantChipsInLiveboardTabs case final value?)
    'hideIrrelevantChipsInLiveboardTabs': value,
  if (instance.oAuthPollingInterval case final value?)
    'oAuthPollingInterval': value,
  if (instance.isForceRedirect case final value?) 'isForceRedirect': value,
  if (instance.dataSourceId case final value?) 'dataSourceId': value,
  if (instance.layoutConfig?.toJson() case final value?) 'layoutConfig': value,
  if (instance.frameParams?.toJson() case final value?) 'frameParams': value,
  if (instance.theme case final value?) 'theme': value,
  if (instance.styleSheet__unstable case final value?)
    'styleSheet__unstable': value,
  if (instance.disabledActions?.map((e) => _$ActionEnumMap[e]!).toList()
      case final value?)
    'disabledActions': value,
  if (instance.disabledActionReason case final value?)
    'disabledActionReason': value,
  if (instance.hiddenActions?.map((e) => _$ActionEnumMap[e]!).toList()
      case final value?)
    'hiddenActions': value,
  if (instance.visibleActions?.map((e) => _$ActionEnumMap[e]!).toList()
      case final value?)
    'visibleActions': value,
  if (instance.showAlerts case final value?) 'showAlerts': value,
  if (instance.runtimeFilters?.map((e) => e.toJson()).toList()
      case final value?)
    'runtimeFilters': value,
  if (instance.runtimeParameters?.map((e) => e.toJson()).toList()
      case final value?)
    'runtimeParameters': value,
  if (instance.locale case final value?) 'locale': value,
  if (instance.additionalFlags?.toJson() case final value?)
    'additionalFlags': value,
  if (instance.customizations?.toJson() case final value?)
    'customizations': value,
  if (instance.insertAsSibling case final value?) 'insertAsSibling': value,
  if (_$ContextMenuTriggerOptionsEnumMap[instance.contextMenuTrigger]
      case final value?)
    'contextMenuTrigger': value,
  if (instance.linkOverride case final value?) 'linkOverride': value,
  if (instance.insertInToSlide case final value?) 'insertInToSlide': value,
  if (instance.usePrerenderedIfAvailable case final value?)
    'usePrerenderedIfAvailable': value,
  if (instance.excludeRuntimeFiltersfromURL case final value?)
    'excludeRuntimeFiltersfromURL': value,
  if (instance.hiddenTabs case final value?) 'hiddenTabs': value,
  if (instance.visibleTabs case final value?) 'visibleTabs': value,
  if (instance.preRenderId case final value?) 'preRenderId': value,
  if (instance.doNotTrackPreRenderSize case final value?)
    'doNotTrackPreRenderSize': value,
  if (instance.embedComponentType case final value?)
    'embedComponentType': value,
  if (instance.excludeRuntimeParametersfromURL case final value?)
    'excludeRuntimeParametersfromURL': value,
  if (instance.enableV2Shell_experimental case final value?)
    'enableV2Shell_experimental': value,
  if (instance.collapseSearchBar case final value?) 'collapseSearchBar': value,
  if (instance.disableRedirectionLinksInNewTab case final value?)
    'disableRedirectionLinksInNewTab': value,
  if (instance.dataPanelV2 case final value?) 'dataPanelV2': value,
  if (instance.enableCustomColumnGroups case final value?)
    'enableCustomColumnGroups': value,
  if (instance.overrideOrgId case final value?) 'overrideOrgId': value,
};

const _$ActionEnumMap = {
  Action.Save: 'save',
  Action.Update: 'update',
  Action.SaveUntitled: 'saveUntitled',
  Action.SaveAsView: 'saveAsView',
  Action.MakeACopy: 'makeACopy',
  Action.EditACopy: 'editACopy',
  Action.CopyLink: 'embedDocument',
  Action.ResetLayout: 'resetLayout',
  Action.Schedule: 'subscription',
  Action.SchedulesList: 'schedule-list',
  Action.Share: 'share',
  Action.AddFilter: 'addFilter',
  Action.AddDataPanelObjects: 'addDataPanelObjects',
  Action.ConfigureFilter: 'configureFilter',
  Action.CollapseDataSources: 'collapseDataSources',
  Action.CollapseDataPanel: 'collapseDataPanel',
  Action.ChooseDataSources: 'chooseDataSources',
  Action.AddFormula: 'addFormula',
  Action.AddParameter: 'addParameter',
  Action.AddColumnSet: 'addSimpleCohort',
  Action.AddQuerySet: 'addAdvancedCohort',
  Action.SearchOnTop: 'searchOnTop',
  Action.SpotIQAnalyze: 'spotIQAnalyze',
  Action.ExplainInsight: 'explainInsight',
  Action.SpotIQFollow: 'spotIQFollow',
  Action.ShareViz: 'shareViz',
  Action.ReplaySearch: 'replaySearch',
  Action.ShowUnderlyingData: 'showUnderlyingData',
  Action.Download: 'download',
  Action.DownloadAsPng: 'downloadAsPng',
  Action.DownloadAsPdf: 'downloadAsPdf',
  Action.DownloadAsCsv: 'downloadAsCSV',
  Action.DownloadAsXlsx: 'downloadAsXLSX',
  Action.DownloadTrace: 'downloadTrace',
  Action.ExportTML: 'exportTSL',
  Action.ImportTML: 'importTSL',
  Action.UpdateTML: 'updateTSL',
  Action.EditTML: 'editTSL',
  Action.Present: 'present',
  Action.ToggleSize: 'toggleSize',
  Action.Edit: 'edit',
  Action.EditTitle: 'editTitle',
  Action.Remove: 'delete',
  Action.Ungroup: 'ungroup',
  Action.Describe: 'describe',
  Action.Relate: 'relate',
  Action.CustomizeHeadlines: 'customizeHeadlines',
  Action.PinboardInfo: 'pinboardInfo',
  Action.LiveboardInfo: 'pinboardInfo',
  Action.SendAnswerFeedback: 'sendFeedback',
  Action.DownloadEmbraceQueries: 'downloadEmbraceQueries',
  Action.Pin: 'pin',
  Action.AnalysisInfo: 'analysisInfo',
  Action.Subscription: 'subscription',
  Action.Explore: 'explore',
  Action.DrillInclude: 'context-menu-item-include',
  Action.DrillExclude: 'context-menu-item-exclude',
  Action.CopyToClipboard: 'context-menu-item-copy-to-clipboard',
  Action.CopyAndEdit: 'context-menu-item-copy-and-edit',
  Action.DrillEdit: 'context-menu-item-edit',
  Action.EditMeasure: 'context-menu-item-edit-measure',
  Action.Separator: 'context-menu-item-separator',
  Action.DrillDown: 'DRILL',
  Action.RequestAccess: 'requestAccess',
  Action.QueryDetailsButtons: 'queryDetailsButtons',
  Action.AnswerDelete: 'onDeleteAnswer',
  Action.AnswerChartSwitcher: 'answerChartSwitcher',
  Action.AddToFavorites: 'addToFavorites',
  Action.EditDetails: 'editDetails',
  Action.CreateMonitor: 'createMonitor',
  Action.ReportError: 'reportError',
  Action.SyncToSheets: 'sync-to-sheets',
  Action.SyncToOtherApps: 'sync-to-other-apps',
  Action.ManagePipelines: 'manage-pipeline',
  Action.CrossFilter: 'context-menu-item-cross-filter',
  Action.SyncToSlack: 'syncToSlack',
  Action.SyncToTeams: 'syncToTeams',
  Action.RemoveCrossFilter: 'context-menu-item-remove-cross-filter',
  Action.AxisMenuAggregate: 'axisMenuAggregate',
  Action.AxisMenuTimeBucket: 'axisMenuTimeBucket',
  Action.AxisMenuFilter: 'axisMenuFilter',
  Action.AxisMenuConditionalFormat: 'axisMenuConditionalFormat',
  Action.AxisMenuSort: 'axisMenuSort',
  Action.AxisMenuGroup: 'axisMenuGroup',
  Action.AxisMenuPosition: 'axisMenuPosition',
  Action.AxisMenuRename: 'axisMenuRename',
  Action.AxisMenuEdit: 'axisMenuEdit',
  Action.AxisMenuNumberFormat: 'axisMenuNumberFormat',
  Action.AxisMenuTextWrapping: 'axisMenuTextWrapping',
  Action.AxisMenuRemove: 'axisMenuRemove',
  Action.InsertInToSlide: 'insertInToSlide',
  Action.RenameModalTitleDescription: 'renameModalTitleDescription',
  Action.RequestVerification: 'requestVerification',
  Action.MarkAsVerified: 'markAsVerified',
  Action.AddTab: 'addTab',
  Action.EnableContextualChangeAnalysis: 'enableContextualChangeAnalysis',
  Action.ShowSageQuery: 'showSageQuery',
  Action.EditSageAnswer: 'editSageAnswer',
  Action.SageAnswerFeedback: 'sageAnswerFeedback',
  Action.ModifySageAnswer: 'modifySageAnswer',
  Action.MoveToTab: 'onContainerMove',
  Action.ManageMonitor: 'manageMonitor',
  Action.PersonalisedViewsDropdown: 'personalisedViewsDropdown',
  Action.LiveboardUsers: 'liveboardUsers',
  Action.TML: 'tml',
  Action.CreateLiveboard: 'createLiveboard',
  Action.VerifiedLiveboard: 'verifiedLiveboard',
  Action.AskAi: 'AskAi',
  Action.AddToWatchlist: 'addToWatchlist',
  Action.RemoveFromWatchlist: 'removeFromWatchlist',
  Action.OrganiseFavourites: 'organiseFavourites',
  Action.AIHighlights: 'AIHighlights',
  Action.EditScheduleHomepage: 'editScheduleHomepage',
  Action.PauseScheduleHomepage: 'pauseScheduleHomepage',
  Action.ViewScheduleRunHomepage: 'viewScheduleRunHomepage',
  Action.UnsubscribeScheduleHomepage: 'unsubscribeScheduleHomepage',
  Action.ManageTags: 'manageTags',
  Action.DeleteScheduleHomepage: 'deleteScheduleHomepage',
  Action.KPIAnalysisCTA: 'kpiAnalysisCTA',
  Action.DisableChipReorder: 'disableChipReorder',
  Action.ChangeFilterVisibilityInTab: 'changeFilterVisibilityInTab',
  Action.PreviewDataSpotter: 'previewDataSpotter',
  Action.ResetSpotterChat: 'resetSpotterChat',
  Action.SpotterFeedback: 'spotterFeedback',
  Action.EditPreviousPrompt: 'editPreviousPrompt',
  Action.DeletePreviousPrompt: 'deletePreviousPrompt',
  Action.EditTokens: 'editTokens',
};

const _$ContextMenuTriggerOptionsEnumMap = {
  ContextMenuTriggerOptions.LEFT_CLICK: 'left-click',
  ContextMenuTriggerOptions.RIGHT_CLICK: 'right-click',
  ContextMenuTriggerOptions.BOTH_CLICKS: 'both-clicks',
};

customCssInterface _$customCssInterfaceFromJson(Map<String, dynamic> json) =>
    customCssInterface(
      variables: (json['variables'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      rules_UNSTABLE:
          json['rules_UNSTABLE'] == null
              ? null
              : customCssInterface__rules_UNSTABLE.fromJson(
                json['rules_UNSTABLE'] as Map<String, dynamic>,
              ),
    );

Map<String, dynamic> _$customCssInterfaceToJson(customCssInterface instance) =>
    <String, dynamic>{
      if (instance.variables case final value?) 'variables': value,
      if (instance.rules_UNSTABLE?.toJson() case final value?)
        'rules_UNSTABLE': value,
    };

CustomStyles _$CustomStylesFromJson(Map<String, dynamic> json) => CustomStyles(
  customCSSUrl: json['customCSSUrl'] as String?,
  customCSS:
      json['customCSS'] == null
          ? null
          : customCssInterface.fromJson(
            json['customCSS'] as Map<String, dynamic>,
          ),
);

Map<String, dynamic> _$CustomStylesToJson(CustomStyles instance) =>
    <String, dynamic>{
      if (instance.customCSSUrl case final value?) 'customCSSUrl': value,
      if (instance.customCSS?.toJson() case final value?) 'customCSS': value,
    };

CustomisationsInterface _$CustomisationsInterfaceFromJson(
  Map<String, dynamic> json,
) => CustomisationsInterface(
  style:
      json['style'] == null
          ? null
          : CustomStyles.fromJson(json['style'] as Map<String, dynamic>),
  content:
      json['content'] == null
          ? null
          : CustomisationsInterface__content.fromJson(
            json['content'] as Map<String, dynamic>,
          ),
  iconSpriteUrl: json['iconSpriteUrl'] as String?,
);

Map<String, dynamic> _$CustomisationsInterfaceToJson(
  CustomisationsInterface instance,
) => <String, dynamic>{
  if (instance.style?.toJson() case final value?) 'style': value,
  if (instance.content?.toJson() case final value?) 'content': value,
  if (instance.iconSpriteUrl case final value?) 'iconSpriteUrl': value,
};

EmbedConfig _$EmbedConfigFromJson(Map<String, dynamic> json) => EmbedConfig(
  authType: $enumDecode(_$AuthTypeEnumMap, json['authType']),
  thoughtSpotHost: json['thoughtSpotHost'] as String,
  authEndpoint: json['authEndpoint'] as String?,
  username: json['username'] as String?,
  password: json['password'] as String?,
  noRedirect: json['noRedirect'] as bool?,
  inPopup: json['inPopup'] as bool?,
  redirectPath: json['redirectPath'] as String?,
  basepath: json['basepath'] as String?,
  shouldEncodeUrlQueryParams: json['shouldEncodeUrlQueryParams'] as bool?,
  suppressNoCookieAccessAlert: json['suppressNoCookieAccessAlert'] as bool?,
  ignoreNoCookieAccess: json['ignoreNoCookieAccess'] as bool?,
  autoLogin: json['autoLogin'] as bool?,
  disableLoginRedirect: json['disableLoginRedirect'] as bool?,
  loginFailedMessage: json['loginFailedMessage'] as String?,
  callPrefetch: json['callPrefetch'] as bool?,
  queueMultiRenders: json['queueMultiRenders'] as bool?,
  detectCookieAccessSlow: json['detectCookieAccessSlow'] as bool?,
  suppressSearchEmbedBetaWarning:
      json['suppressSearchEmbedBetaWarning'] as bool?,
  suppressSageEmbedBetaWarning: json['suppressSageEmbedBetaWarning'] as bool?,
  customizations:
      json['customizations'] == null
          ? null
          : CustomisationsInterface.fromJson(
            json['customizations'] as Map<String, dynamic>,
          ),
  authTriggerContainer:
      json['authTriggerContainer'] == null
          ? null
          : EmbedConfig__authTriggerContainer.fromJson(
            json['authTriggerContainer'] as String,
          ),
  useEventForSAMLPopup: json['useEventForSAMLPopup'] as bool?,
  authTriggerText: json['authTriggerText'] as String?,
  blockNonEmbedFullAppAccess: json['blockNonEmbedFullAppAccess'] as bool?,
  hostConfig:
      json['hostConfig'] == null
          ? null
          : EmbedConfig__hostConfig.fromJson(
            json['hostConfig'] as Map<String, dynamic>,
          ),
  pendoTrackingKey: json['pendoTrackingKey'] as String?,
  suppressErrorAlerts: json['suppressErrorAlerts'] as bool?,
  logLevel: $enumDecodeNullable(_$LogLevelEnumMap, json['logLevel']),
  disableSDKTracking: json['disableSDKTracking'] as bool?,
  dateFormatLocale: json['dateFormatLocale'] as String?,
  numberFormatLocale: json['numberFormatLocale'] as String?,
  currencyFormat: json['currencyFormat'] as String?,
  disableTokenVerification: json['disableTokenVerification'] as bool?,
  disableLoginFailurePage: json['disableLoginFailurePage'] as bool?,
  additionalFlags:
      json['additionalFlags'] == null
          ? null
          : EmbedConfig__additionalFlags.fromJson(
            json['additionalFlags'] as Map<String, dynamic>,
          ),
  customVariablesForThirdPartyTools:
      json['customVariablesForThirdPartyTools'] == null
          ? null
          : EmbedConfig__customVariablesForThirdPartyTools.fromJson(
            json['customVariablesForThirdPartyTools'] as Map<String, dynamic>,
          ),
  disablePreauthCache: json['disablePreauthCache'] as bool?,
);

Map<String, dynamic> _$EmbedConfigToJson(
  EmbedConfig instance,
) => <String, dynamic>{
  'authType': _$AuthTypeEnumMap[instance.authType]!,
  'thoughtSpotHost': instance.thoughtSpotHost,
  if (instance.authEndpoint case final value?) 'authEndpoint': value,
  if (instance.username case final value?) 'username': value,
  if (instance.password case final value?) 'password': value,
  if (instance.noRedirect case final value?) 'noRedirect': value,
  if (instance.inPopup case final value?) 'inPopup': value,
  if (instance.redirectPath case final value?) 'redirectPath': value,
  if (instance.basepath case final value?) 'basepath': value,
  if (instance.shouldEncodeUrlQueryParams case final value?)
    'shouldEncodeUrlQueryParams': value,
  if (instance.suppressNoCookieAccessAlert case final value?)
    'suppressNoCookieAccessAlert': value,
  if (instance.ignoreNoCookieAccess case final value?)
    'ignoreNoCookieAccess': value,
  if (instance.autoLogin case final value?) 'autoLogin': value,
  if (instance.disableLoginRedirect case final value?)
    'disableLoginRedirect': value,
  if (instance.loginFailedMessage case final value?)
    'loginFailedMessage': value,
  if (instance.callPrefetch case final value?) 'callPrefetch': value,
  if (instance.queueMultiRenders case final value?) 'queueMultiRenders': value,
  if (instance.detectCookieAccessSlow case final value?)
    'detectCookieAccessSlow': value,
  if (instance.suppressSearchEmbedBetaWarning case final value?)
    'suppressSearchEmbedBetaWarning': value,
  if (instance.suppressSageEmbedBetaWarning case final value?)
    'suppressSageEmbedBetaWarning': value,
  if (instance.customizations?.toJson() case final value?)
    'customizations': value,
  if (instance.authTriggerContainer?.toJson() case final value?)
    'authTriggerContainer': value,
  if (instance.useEventForSAMLPopup case final value?)
    'useEventForSAMLPopup': value,
  if (instance.authTriggerText case final value?) 'authTriggerText': value,
  if (instance.blockNonEmbedFullAppAccess case final value?)
    'blockNonEmbedFullAppAccess': value,
  if (instance.hostConfig?.toJson() case final value?) 'hostConfig': value,
  if (instance.pendoTrackingKey case final value?) 'pendoTrackingKey': value,
  if (instance.suppressErrorAlerts case final value?)
    'suppressErrorAlerts': value,
  if (_$LogLevelEnumMap[instance.logLevel] case final value?) 'logLevel': value,
  if (instance.disableSDKTracking case final value?)
    'disableSDKTracking': value,
  if (instance.dateFormatLocale case final value?) 'dateFormatLocale': value,
  if (instance.numberFormatLocale case final value?)
    'numberFormatLocale': value,
  if (instance.currencyFormat case final value?) 'currencyFormat': value,
  if (instance.disableTokenVerification case final value?)
    'disableTokenVerification': value,
  if (instance.disableLoginFailurePage case final value?)
    'disableLoginFailurePage': value,
  if (instance.additionalFlags?.toJson() case final value?)
    'additionalFlags': value,
  if (instance.customVariablesForThirdPartyTools?.toJson() case final value?)
    'customVariablesForThirdPartyTools': value,
  if (instance.disablePreauthCache case final value?)
    'disablePreauthCache': value,
};

const _$AuthTypeEnumMap = {
  AuthType.None: 'None',
  AuthType.EmbeddedSSO: 'EmbeddedSSO',
  AuthType.SSO: 'SSO_SAML',
  AuthType.SAML: 'SSO_SAML',
  AuthType.SAMLRedirect: 'SSO_SAML',
  AuthType.OIDC: 'SSO_OIDC',
  AuthType.OIDCRedirect: 'SSO_OIDC',
  AuthType.AuthServer: 'AuthServer',
  AuthType.TrustedAuthToken: 'AuthServer',
  AuthType.TrustedAuthTokenCookieless: 'AuthServerCookieless',
  AuthType.Basic: 'Basic',
};

const _$LogLevelEnumMap = {
  LogLevel.SILENT: 'SILENT',
  LogLevel.ERROR: 'ERROR',
  LogLevel.WARN: 'WARN',
  LogLevel.INFO: 'INFO',
  LogLevel.DEBUG: 'DEBUG',
  LogLevel.TRACE: 'TRACE',
};

LayoutConfig _$LayoutConfigFromJson(Map<String, dynamic> json) =>
    LayoutConfig();

Map<String, dynamic> _$LayoutConfigToJson(LayoutConfig instance) =>
    <String, dynamic>{};

FrameParams _$FrameParamsFromJson(Map<String, dynamic> json) => FrameParams(
  width:
      json['width'] == null
          ? null
          : FrameParams__width.fromJson(json['width'] as String),
  height:
      json['height'] == null
          ? null
          : FrameParams__height.fromJson(json['height'] as String),
  loading:
      json['loading'] == null
          ? null
          : FrameParams__loading.fromJson(json['loading'] as String),
);

Map<String, dynamic> _$FrameParamsToJson(FrameParams instance) =>
    <String, dynamic>{
      if (instance.width?.toJson() case final value?) 'width': value,
      if (instance.height?.toJson() case final value?) 'height': value,
      if (instance.loading?.toJson() case final value?) 'loading': value,
    };

ViewConfig _$ViewConfigFromJson(Map<String, dynamic> json) => ViewConfig(
  layoutConfig:
      json['layoutConfig'] == null
          ? null
          : LayoutConfig.fromJson(json['layoutConfig'] as Map<String, dynamic>),
  frameParams:
      json['frameParams'] == null
          ? null
          : FrameParams.fromJson(json['frameParams'] as Map<String, dynamic>),
  theme: json['theme'] as String?,
  styleSheet__unstable: json['styleSheet__unstable'] as String?,
  disabledActions:
      (json['disabledActions'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$ActionEnumMap, e))
          .toList(),
  disabledActionReason: json['disabledActionReason'] as String?,
  hiddenActions:
      (json['hiddenActions'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$ActionEnumMap, e))
          .toList(),
  visibleActions:
      (json['visibleActions'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$ActionEnumMap, e))
          .toList(),
  showAlerts: json['showAlerts'] as bool?,
  runtimeFilters:
      (json['runtimeFilters'] as List<dynamic>?)
          ?.map((e) => RuntimeFilter.fromJson(e as Map<String, dynamic>))
          .toList(),
  runtimeParameters:
      (json['runtimeParameters'] as List<dynamic>?)
          ?.map((e) => RuntimeParameter.fromJson(e as Map<String, dynamic>))
          .toList(),
  locale: json['locale'] as String?,
  additionalFlags:
      json['additionalFlags'] == null
          ? null
          : ViewConfig__additionalFlags.fromJson(
            json['additionalFlags'] as Map<String, dynamic>,
          ),
  customizations:
      json['customizations'] == null
          ? null
          : CustomisationsInterface.fromJson(
            json['customizations'] as Map<String, dynamic>,
          ),
  insertAsSibling: json['insertAsSibling'] as bool?,
  contextMenuTrigger: $enumDecodeNullable(
    _$ContextMenuTriggerOptionsEnumMap,
    json['contextMenuTrigger'],
  ),
  linkOverride: json['linkOverride'] as bool?,
  insertInToSlide: json['insertInToSlide'] as bool?,
  usePrerenderedIfAvailable: json['usePrerenderedIfAvailable'] as bool?,
  excludeRuntimeFiltersfromURL: json['excludeRuntimeFiltersfromURL'] as bool?,
  hiddenTabs:
      (json['hiddenTabs'] as List<dynamic>?)?.map((e) => e as String).toList(),
  hiddenHomepageModules:
      (json['hiddenHomepageModules'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$HomepageModuleEnumMap, e))
          .toList(),
  reorderedHomepageModules:
      (json['reorderedHomepageModules'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$HomepageModuleEnumMap, e))
          .toList(),
  visibleTabs:
      (json['visibleTabs'] as List<dynamic>?)?.map((e) => e as String).toList(),
  hiddenHomeLeftNavItems:
      (json['hiddenHomeLeftNavItems'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$HomeLeftNavItemEnumMap, e))
          .toList(),
  preRenderId: json['preRenderId'] as String?,
  doNotTrackPreRenderSize: json['doNotTrackPreRenderSize'] as bool?,
  embedComponentType: json['embedComponentType'] as String?,
  excludeRuntimeParametersfromURL:
      json['excludeRuntimeParametersfromURL'] as bool?,
  enableV2Shell_experimental: json['enableV2Shell_experimental'] as bool?,
  collapseSearchBar: json['collapseSearchBar'] as bool?,
  disableRedirectionLinksInNewTab:
      json['disableRedirectionLinksInNewTab'] as bool?,
  dataPanelV2: json['dataPanelV2'] as bool?,
  enableCustomColumnGroups: json['enableCustomColumnGroups'] as bool?,
  overrideOrgId: (json['overrideOrgId'] as num?)?.toInt(),
);

Map<String, dynamic> _$ViewConfigToJson(
  ViewConfig instance,
) => <String, dynamic>{
  if (instance.layoutConfig?.toJson() case final value?) 'layoutConfig': value,
  if (instance.frameParams?.toJson() case final value?) 'frameParams': value,
  if (instance.theme case final value?) 'theme': value,
  if (instance.styleSheet__unstable case final value?)
    'styleSheet__unstable': value,
  if (instance.disabledActions?.map((e) => _$ActionEnumMap[e]!).toList()
      case final value?)
    'disabledActions': value,
  if (instance.disabledActionReason case final value?)
    'disabledActionReason': value,
  if (instance.hiddenActions?.map((e) => _$ActionEnumMap[e]!).toList()
      case final value?)
    'hiddenActions': value,
  if (instance.visibleActions?.map((e) => _$ActionEnumMap[e]!).toList()
      case final value?)
    'visibleActions': value,
  if (instance.showAlerts case final value?) 'showAlerts': value,
  if (instance.runtimeFilters?.map((e) => e.toJson()).toList()
      case final value?)
    'runtimeFilters': value,
  if (instance.runtimeParameters?.map((e) => e.toJson()).toList()
      case final value?)
    'runtimeParameters': value,
  if (instance.locale case final value?) 'locale': value,
  if (instance.additionalFlags?.toJson() case final value?)
    'additionalFlags': value,
  if (instance.customizations?.toJson() case final value?)
    'customizations': value,
  if (instance.insertAsSibling case final value?) 'insertAsSibling': value,
  if (_$ContextMenuTriggerOptionsEnumMap[instance.contextMenuTrigger]
      case final value?)
    'contextMenuTrigger': value,
  if (instance.linkOverride case final value?) 'linkOverride': value,
  if (instance.insertInToSlide case final value?) 'insertInToSlide': value,
  if (instance.usePrerenderedIfAvailable case final value?)
    'usePrerenderedIfAvailable': value,
  if (instance.excludeRuntimeFiltersfromURL case final value?)
    'excludeRuntimeFiltersfromURL': value,
  if (instance.hiddenTabs case final value?) 'hiddenTabs': value,
  if (instance.hiddenHomepageModules
          ?.map((e) => _$HomepageModuleEnumMap[e]!)
          .toList()
      case final value?)
    'hiddenHomepageModules': value,
  if (instance.reorderedHomepageModules
          ?.map((e) => _$HomepageModuleEnumMap[e]!)
          .toList()
      case final value?)
    'reorderedHomepageModules': value,
  if (instance.visibleTabs case final value?) 'visibleTabs': value,
  if (instance.hiddenHomeLeftNavItems
          ?.map((e) => _$HomeLeftNavItemEnumMap[e]!)
          .toList()
      case final value?)
    'hiddenHomeLeftNavItems': value,
  if (instance.preRenderId case final value?) 'preRenderId': value,
  if (instance.doNotTrackPreRenderSize case final value?)
    'doNotTrackPreRenderSize': value,
  if (instance.embedComponentType case final value?)
    'embedComponentType': value,
  if (instance.excludeRuntimeParametersfromURL case final value?)
    'excludeRuntimeParametersfromURL': value,
  if (instance.enableV2Shell_experimental case final value?)
    'enableV2Shell_experimental': value,
  if (instance.collapseSearchBar case final value?) 'collapseSearchBar': value,
  if (instance.disableRedirectionLinksInNewTab case final value?)
    'disableRedirectionLinksInNewTab': value,
  if (instance.dataPanelV2 case final value?) 'dataPanelV2': value,
  if (instance.enableCustomColumnGroups case final value?)
    'enableCustomColumnGroups': value,
  if (instance.overrideOrgId case final value?) 'overrideOrgId': value,
};

const _$HomepageModuleEnumMap = {
  HomepageModule.Search: 'SEARCH',
  HomepageModule.Watchlist: 'WATCHLIST',
  HomepageModule.Favorite: 'FAVORITE',
  HomepageModule.MyLibrary: 'MY_LIBRARY',
  HomepageModule.Trending: 'TRENDING',
  HomepageModule.Learning: 'LEARNING',
};

const _$HomeLeftNavItemEnumMap = {
  HomeLeftNavItem.SearchData: 'search-data',
  HomeLeftNavItem.Home: 'insights-home',
  HomeLeftNavItem.Liveboards: 'liveboards',
  HomeLeftNavItem.Answers: 'answers',
  HomeLeftNavItem.MonitorSubscription: 'monitor-alerts',
  HomeLeftNavItem.SpotIQAnalysis: 'spotiq-analysis',
  HomeLeftNavItem.LiveboardSchedules: 'liveboard-schedules',
};

RuntimeFilter _$RuntimeFilterFromJson(Map<String, dynamic> json) =>
    RuntimeFilter(
      values:
          (json['values'] as List<dynamic>)
              .map((e) => RuntimeFilter__values.fromJson(e as String))
              .toList(),
      operator: $enumDecode(_$RuntimeFilterOpEnumMap, json['operator']),
      columnName: json['columnName'] as String,
    );

Map<String, dynamic> _$RuntimeFilterToJson(RuntimeFilter instance) =>
    <String, dynamic>{
      'values': instance.values.map((e) => e.toJson()).toList(),
      'operator': _$RuntimeFilterOpEnumMap[instance.operator]!,
      'columnName': instance.columnName,
    };

const _$RuntimeFilterOpEnumMap = {
  RuntimeFilterOp.EQ: 'EQ',
  RuntimeFilterOp.NE: 'NE',
  RuntimeFilterOp.LT: 'LT',
  RuntimeFilterOp.LE: 'LE',
  RuntimeFilterOp.GT: 'GT',
  RuntimeFilterOp.GE: 'GE',
  RuntimeFilterOp.CONTAINS: 'CONTAINS',
  RuntimeFilterOp.BEGINS_WITH: 'BEGINS_WITH',
  RuntimeFilterOp.ENDS_WITH: 'ENDS_WITH',
  RuntimeFilterOp.BW_INC_MAX: 'BW_INC_MAX',
  RuntimeFilterOp.BW_INC_MIN: 'BW_INC_MIN',
  RuntimeFilterOp.BW_INC: 'BW_INC',
  RuntimeFilterOp.BW: 'BW',
  RuntimeFilterOp.IN: 'IN',
  RuntimeFilterOp.NOT_IN: 'NOT_IN',
};

RuntimeParameter _$RuntimeParameterFromJson(Map<String, dynamic> json) =>
    RuntimeParameter(
      value: RuntimeParameter__value.fromJson(json['value'] as String),
      name: json['name'] as String,
    );

Map<String, dynamic> _$RuntimeParameterToJson(RuntimeParameter instance) =>
    <String, dynamic>{'value': instance.value.toJson(), 'name': instance.name};

AnswerServiceType _$AnswerServiceTypeFromJson(Map<String, dynamic> json) =>
    AnswerServiceType();

Map<String, dynamic> _$AnswerServiceTypeToJson(AnswerServiceType instance) =>
    <String, dynamic>{};

ColumnValue _$ColumnValueFromJson(Map<String, dynamic> json) => ColumnValue(
  value: ColumnValue__value.fromJson(json['value'] as String),
  column: ColumnValue__column.fromJson(json['column'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ColumnValueToJson(ColumnValue instance) =>
    <String, dynamic>{
      'value': instance.value.toJson(),
      'column': instance.column.toJson(),
    };

VizPoint _$VizPointFromJson(Map<String, dynamic> json) => VizPoint(
  selectedMeasures:
      (json['selectedMeasures'] as List<dynamic>)
          .map((e) => ColumnValue.fromJson(e as Map<String, dynamic>))
          .toList(),
  selectedAttributes:
      (json['selectedAttributes'] as List<dynamic>)
          .map((e) => ColumnValue.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$VizPointToJson(VizPoint instance) => <String, dynamic>{
  'selectedMeasures': instance.selectedMeasures.map((e) => e.toJson()).toList(),
  'selectedAttributes':
      instance.selectedAttributes.map((e) => e.toJson()).toList(),
};

CustomActionPayload _$CustomActionPayloadFromJson(Map<String, dynamic> json) =>
    CustomActionPayload(
      session: SessionInterface.fromJson(
        json['session'] as Map<String, dynamic>,
      ),
      embedAnswerData: CustomActionPayload__embedAnswerData.fromJson(
        json['embedAnswerData'] as Map<String, dynamic>,
      ),
      contextMenuPoints:
          json['contextMenuPoints'] == null
              ? null
              : CustomActionPayload__contextMenuPoints.fromJson(
                json['contextMenuPoints'] as Map<String, dynamic>,
              ),
      vizId: json['vizId'] as String?,
    );

Map<String, dynamic> _$CustomActionPayloadToJson(
  CustomActionPayload instance,
) => <String, dynamic>{
  'session': instance.session.toJson(),
  'embedAnswerData': instance.embedAnswerData.toJson(),
  if (instance.contextMenuPoints?.toJson() case final value?)
    'contextMenuPoints': value,
  if (instance.vizId case final value?) 'vizId': value,
};

DefaultAppInitData _$DefaultAppInitDataFromJson(Map<String, dynamic> json) =>
    DefaultAppInitData(
      customVariablesForThirdPartyTools:
          DefaultAppInitData__customVariablesForThirdPartyTools.fromJson(
            json['customVariablesForThirdPartyTools'] as Map<String, dynamic>,
          ),
      hiddenHomeLeftNavItems:
          (json['hiddenHomeLeftNavItems'] as List<dynamic>)
              .map((e) => e as String)
              .toList(),
      hostConfig: DefaultAppInitData__hostConfig.fromJson(
        json['hostConfig'] as Map<String, dynamic>,
      ),
      reorderedHomepageModules:
          (json['reorderedHomepageModules'] as List<dynamic>)
              .map((e) => e as String)
              .toList(),
      hiddenHomepageModules:
          (json['hiddenHomepageModules'] as List<dynamic>)
              .map((e) => $enumDecode(_$HomepageModuleEnumMap, e))
              .toList(),
      runtimeParameterParams: json['runtimeParameterParams'] as String,
      runtimeFilterParams: json['runtimeFilterParams'] as String,
      authToken: json['authToken'] as String,
      customisations: CustomisationsInterface.fromJson(
        json['customisations'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$DefaultAppInitDataToJson(DefaultAppInitData instance) =>
    <String, dynamic>{
      'customVariablesForThirdPartyTools':
          instance.customVariablesForThirdPartyTools.toJson(),
      'hiddenHomeLeftNavItems': instance.hiddenHomeLeftNavItems,
      'hostConfig': instance.hostConfig.toJson(),
      'reorderedHomepageModules': instance.reorderedHomepageModules,
      'hiddenHomepageModules':
          instance.hiddenHomepageModules
              .map((e) => _$HomepageModuleEnumMap[e]!)
              .toList(),
      'runtimeParameterParams': instance.runtimeParameterParams,
      'runtimeFilterParams': instance.runtimeFilterParams,
      'authToken': instance.authToken,
      'customisations': instance.customisations.toJson(),
    };

SessionInterface__acSession _$SessionInterface__acSessionFromJson(
  Map<String, dynamic> json,
) => SessionInterface__acSession(
  genNo: (json['genNo'] as num).toInt(),
  sessionId: json['sessionId'] as String,
);

Map<String, dynamic> _$SessionInterface__acSessionToJson(
  SessionInterface__acSession instance,
) => <String, dynamic>{
  'genNo': instance.genNo,
  'sessionId': instance.sessionId,
};

LiveboardViewConfig__additionalFlags
_$LiveboardViewConfig__additionalFlagsFromJson(Map<String, dynamic> json) =>
    LiveboardViewConfig__additionalFlags();

Map<String, dynamic> _$LiveboardViewConfig__additionalFlagsToJson(
  LiveboardViewConfig__additionalFlags instance,
) => <String, dynamic>{};

customCssInterface__rules_UNSTABLE _$customCssInterface__rules_UNSTABLEFromJson(
  Map<String, dynamic> json,
) => customCssInterface__rules_UNSTABLE();

Map<String, dynamic> _$customCssInterface__rules_UNSTABLEToJson(
  customCssInterface__rules_UNSTABLE instance,
) => <String, dynamic>{};

CustomisationsInterface__content__strings
_$CustomisationsInterface__content__stringsFromJson(
  Map<String, dynamic> json,
) => CustomisationsInterface__content__strings();

Map<String, dynamic> _$CustomisationsInterface__content__stringsToJson(
  CustomisationsInterface__content__strings instance,
) => <String, dynamic>{};

CustomisationsInterface__content _$CustomisationsInterface__contentFromJson(
  Map<String, dynamic> json,
) => CustomisationsInterface__content(
  strings:
      json['strings'] == null
          ? null
          : CustomisationsInterface__content__strings.fromJson(
            json['strings'] as Map<String, dynamic>,
          ),
);

Map<String, dynamic> _$CustomisationsInterface__contentToJson(
  CustomisationsInterface__content instance,
) => <String, dynamic>{
  if (instance.strings?.toJson() case final value?) 'strings': value,
};

EmbedConfig__hostConfig _$EmbedConfig__hostConfigFromJson(
  Map<String, dynamic> json,
) => EmbedConfig__hostConfig(
  hostClusterName: json['hostClusterName'] as String,
  hostClusterId: json['hostClusterId'] as String,
  hostUserGuid: json['hostUserGuid'] as String,
);

Map<String, dynamic> _$EmbedConfig__hostConfigToJson(
  EmbedConfig__hostConfig instance,
) => <String, dynamic>{
  'hostClusterName': instance.hostClusterName,
  'hostClusterId': instance.hostClusterId,
  'hostUserGuid': instance.hostUserGuid,
};

EmbedConfig__additionalFlags _$EmbedConfig__additionalFlagsFromJson(
  Map<String, dynamic> json,
) => EmbedConfig__additionalFlags();

Map<String, dynamic> _$EmbedConfig__additionalFlagsToJson(
  EmbedConfig__additionalFlags instance,
) => <String, dynamic>{};

EmbedConfig__customVariablesForThirdPartyTools
_$EmbedConfig__customVariablesForThirdPartyToolsFromJson(
  Map<String, dynamic> json,
) => EmbedConfig__customVariablesForThirdPartyTools();

Map<String, dynamic> _$EmbedConfig__customVariablesForThirdPartyToolsToJson(
  EmbedConfig__customVariablesForThirdPartyTools instance,
) => <String, dynamic>{};

ViewConfig__additionalFlags _$ViewConfig__additionalFlagsFromJson(
  Map<String, dynamic> json,
) => ViewConfig__additionalFlags();

Map<String, dynamic> _$ViewConfig__additionalFlagsToJson(
  ViewConfig__additionalFlags instance,
) => <String, dynamic>{};

ColumnValue__value__Type__4__v _$ColumnValue__value__Type__4__vFromJson(
  Map<String, dynamic> json,
) => ColumnValue__value__Type__4__v(
  e: (json['e'] as num).toInt(),
  s: (json['s'] as num).toInt(),
);

Map<String, dynamic> _$ColumnValue__value__Type__4__vToJson(
  ColumnValue__value__Type__4__v instance,
) => <String, dynamic>{'e': instance.e, 's': instance.s};

ColumnValue__value__Type__4 _$ColumnValue__value__Type__4FromJson(
  Map<String, dynamic> json,
) => ColumnValue__value__Type__4(
  v: ColumnValue__value__Type__4__v.fromJson(json['v'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ColumnValue__value__Type__4ToJson(
  ColumnValue__value__Type__4 instance,
) => <String, dynamic>{'v': instance.v.toJson()};

ColumnValue__column _$ColumnValue__columnFromJson(Map<String, dynamic> json) =>
    ColumnValue__column(
      dataType: json['dataType'] as String,
      name: json['name'] as String,
      id: json['id'] as String,
    );

Map<String, dynamic> _$ColumnValue__columnToJson(
  ColumnValue__column instance,
) => <String, dynamic>{
  'dataType': instance.dataType,
  'name': instance.name,
  'id': instance.id,
};

CustomActionPayload__embedAnswerData__sources__header
_$CustomActionPayload__embedAnswerData__sources__headerFromJson(
  Map<String, dynamic> json,
) => CustomActionPayload__embedAnswerData__sources__header(
  guid: json['guid'] as String,
);

Map<String, dynamic>
_$CustomActionPayload__embedAnswerData__sources__headerToJson(
  CustomActionPayload__embedAnswerData__sources__header instance,
) => <String, dynamic>{'guid': instance.guid};

CustomActionPayload__embedAnswerData__sources
_$CustomActionPayload__embedAnswerData__sourcesFromJson(
  Map<String, dynamic> json,
) => CustomActionPayload__embedAnswerData__sources(
  header: CustomActionPayload__embedAnswerData__sources__header.fromJson(
    json['header'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$CustomActionPayload__embedAnswerData__sourcesToJson(
  CustomActionPayload__embedAnswerData__sources instance,
) => <String, dynamic>{'header': instance.header.toJson()};

CustomActionPayload__embedAnswerData
_$CustomActionPayload__embedAnswerDataFromJson(Map<String, dynamic> json) =>
    CustomActionPayload__embedAnswerData(
      data: json['data'] as List<dynamic>,
      columns: json['columns'] as List<dynamic>,
      sources: CustomActionPayload__embedAnswerData__sources.fromJson(
        json['sources'] as Map<String, dynamic>,
      ),
      id: json['id'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$CustomActionPayload__embedAnswerDataToJson(
  CustomActionPayload__embedAnswerData instance,
) => <String, dynamic>{
  'data': instance.data,
  'columns': instance.columns,
  'sources': instance.sources.toJson(),
  'id': instance.id,
  'name': instance.name,
};

CustomActionPayload__contextMenuPoints
_$CustomActionPayload__contextMenuPointsFromJson(Map<String, dynamic> json) =>
    CustomActionPayload__contextMenuPoints(
      selectedPoints:
          (json['selectedPoints'] as List<dynamic>)
              .map((e) => VizPoint.fromJson(e as Map<String, dynamic>))
              .toList(),
      clickedPoint: VizPoint.fromJson(
        json['clickedPoint'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$CustomActionPayload__contextMenuPointsToJson(
  CustomActionPayload__contextMenuPoints instance,
) => <String, dynamic>{
  'selectedPoints': instance.selectedPoints.map((e) => e.toJson()).toList(),
  'clickedPoint': instance.clickedPoint.toJson(),
};

DefaultAppInitData__customVariablesForThirdPartyTools
_$DefaultAppInitData__customVariablesForThirdPartyToolsFromJson(
  Map<String, dynamic> json,
) => DefaultAppInitData__customVariablesForThirdPartyTools();

Map<String, dynamic>
_$DefaultAppInitData__customVariablesForThirdPartyToolsToJson(
  DefaultAppInitData__customVariablesForThirdPartyTools instance,
) => <String, dynamic>{};

DefaultAppInitData__hostConfig _$DefaultAppInitData__hostConfigFromJson(
  Map<String, dynamic> json,
) => DefaultAppInitData__hostConfig();

Map<String, dynamic> _$DefaultAppInitData__hostConfigToJson(
  DefaultAppInitData__hostConfig instance,
) => <String, dynamic>{};

EmbedConfig__authTriggerContainer _$EmbedConfig__authTriggerContainerFromJson(
  Map<String, dynamic> json,
) => EmbedConfig__authTriggerContainer(json['value'] as String);

Map<String, dynamic> _$EmbedConfig__authTriggerContainerToJson(
  EmbedConfig__authTriggerContainer instance,
) => <String, dynamic>{'value': instance.value};

FrameParams__width _$FrameParams__widthFromJson(Map<String, dynamic> json) =>
    FrameParams__width(json['value'] as String);

Map<String, dynamic> _$FrameParams__widthToJson(FrameParams__width instance) =>
    <String, dynamic>{'value': instance.value};

FrameParams__height _$FrameParams__heightFromJson(Map<String, dynamic> json) =>
    FrameParams__height(json['value'] as String);

Map<String, dynamic> _$FrameParams__heightToJson(
  FrameParams__height instance,
) => <String, dynamic>{'value': instance.value};

FrameParams__loading _$FrameParams__loadingFromJson(
  Map<String, dynamic> json,
) => FrameParams__loading(json['value'] as String);

Map<String, dynamic> _$FrameParams__loadingToJson(
  FrameParams__loading instance,
) => <String, dynamic>{'value': instance.value};

RuntimeFilter__values _$RuntimeFilter__valuesFromJson(
  Map<String, dynamic> json,
) => RuntimeFilter__values(json['value'] as String);

Map<String, dynamic> _$RuntimeFilter__valuesToJson(
  RuntimeFilter__values instance,
) => <String, dynamic>{'value': instance.value};

RuntimeParameter__value _$RuntimeParameter__valueFromJson(
  Map<String, dynamic> json,
) => RuntimeParameter__value(json['value'] as String);

Map<String, dynamic> _$RuntimeParameter__valueToJson(
  RuntimeParameter__value instance,
) => <String, dynamic>{'value': instance.value};

ColumnValue__value _$ColumnValue__valueFromJson(Map<String, dynamic> json) =>
    ColumnValue__value(json['value'] as String);

Map<String, dynamic> _$ColumnValue__valueToJson(ColumnValue__value instance) =>
    <String, dynamic>{'value': instance.value};
