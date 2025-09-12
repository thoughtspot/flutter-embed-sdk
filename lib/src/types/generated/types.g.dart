// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'types.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

customCssInterface _$customCssInterfaceFromJson(Map<String, dynamic> json) =>
    customCssInterface(
      variables: json['variables'] as Map<String, dynamic>?,
      rules_UNSTABLE: json['rules_UNSTABLE'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$customCssInterfaceToJson(customCssInterface instance) =>
    <String, dynamic>{
      if (instance.variables case final value?) 'variables': value,
      if (instance.rules_UNSTABLE case final value?) 'rules_UNSTABLE': value,
    };

CustomStyles _$CustomStylesFromJson(Map<String, dynamic> json) => CustomStyles(
      customCSSUrl: json['customCSSUrl'] as String?,
      customCSS: json['customCSS'] == null
          ? null
          : customCssInterface
              .fromJson(json['customCSS'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CustomStylesToJson(CustomStyles instance) =>
    <String, dynamic>{
      if (instance.customCSSUrl case final value?) 'customCSSUrl': value,
      if (instance.customCSS?.toJson() case final value?) 'customCSS': value,
    };

CustomisationsInterface _$CustomisationsInterfaceFromJson(
        Map<String, dynamic> json) =>
    CustomisationsInterface(
      style: json['style'] == null
          ? null
          : CustomStyles.fromJson(json['style'] as Map<String, dynamic>),
      content: json['content'] == null
          ? null
          : CustomisationsInterfaceContent.fromJson(
              json['content'] as Map<String, dynamic>),
      iconSpriteUrl: json['iconSpriteUrl'] as String?,
    );

Map<String, dynamic> _$CustomisationsInterfaceToJson(
        CustomisationsInterface instance) =>
    <String, dynamic>{
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
      suppressSageEmbedBetaWarning:
          json['suppressSageEmbedBetaWarning'] as bool?,
      customizations: json['customizations'] == null
          ? null
          : CustomisationsInterface.fromJson(
              json['customizations'] as Map<String, dynamic>),
      authTriggerContainer: json['authTriggerContainer'] == null
          ? null
          : EmbedConfigAuthTriggerContainer.fromJson(
              json['authTriggerContainer'] as Map<String, dynamic>),
      useEventForSAMLPopup: json['useEventForSAMLPopup'] as bool?,
      authTriggerText: json['authTriggerText'] as String?,
      blockNonEmbedFullAppAccess: json['blockNonEmbedFullAppAccess'] as bool?,
      hostConfig: json['hostConfig'] == null
          ? null
          : EmbedConfigHostConfig.fromJson(
              json['hostConfig'] as Map<String, dynamic>),
      pendoTrackingKey: json['pendoTrackingKey'] as String?,
      suppressErrorAlerts: json['suppressErrorAlerts'] as bool?,
      logLevel: $enumDecodeNullable(_$LogLevelEnumMap, json['logLevel']),
      disableSDKTracking: json['disableSDKTracking'] as bool?,
      dateFormatLocale: json['dateFormatLocale'] as String?,
      numberFormatLocale: json['numberFormatLocale'] as String?,
      currencyFormat: json['currencyFormat'] as String?,
      disableTokenVerification: json['disableTokenVerification'] as bool?,
      disableLoginFailurePage: json['disableLoginFailurePage'] as bool?,
      additionalFlags: json['additionalFlags'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$EmbedConfigToJson(EmbedConfig instance) =>
    <String, dynamic>{
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
      if (instance.queueMultiRenders case final value?)
        'queueMultiRenders': value,
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
      if (instance.pendoTrackingKey case final value?)
        'pendoTrackingKey': value,
      if (instance.suppressErrorAlerts case final value?)
        'suppressErrorAlerts': value,
      if (_$LogLevelEnumMap[instance.logLevel] case final value?)
        'logLevel': value,
      if (instance.disableSDKTracking case final value?)
        'disableSDKTracking': value,
      if (instance.dateFormatLocale case final value?)
        'dateFormatLocale': value,
      if (instance.numberFormatLocale case final value?)
        'numberFormatLocale': value,
      if (instance.currencyFormat case final value?) 'currencyFormat': value,
      if (instance.disableTokenVerification case final value?)
        'disableTokenVerification': value,
      if (instance.disableLoginFailurePage case final value?)
        'disableLoginFailurePage': value,
      if (instance.additionalFlags case final value?) 'additionalFlags': value,
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
      width: json['width'] == null
          ? null
          : FrameParamsWidth.fromJson(json['width'] as Map<String, dynamic>),
      height: json['height'] == null
          ? null
          : FrameParamsHeight.fromJson(json['height'] as Map<String, dynamic>),
      loading: json['loading'] == null
          ? null
          : FrameParamsLoading.fromJson(
              json['loading'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FrameParamsToJson(FrameParams instance) =>
    <String, dynamic>{
      if (instance.width?.toJson() case final value?) 'width': value,
      if (instance.height?.toJson() case final value?) 'height': value,
      if (instance.loading?.toJson() case final value?) 'loading': value,
    };

ViewConfig _$ViewConfigFromJson(Map<String, dynamic> json) => ViewConfig(
      layoutConfig: json['layoutConfig'] == null
          ? null
          : LayoutConfig.fromJson(json['layoutConfig'] as Map<String, dynamic>),
      frameParams: json['frameParams'] == null
          ? null
          : FrameParams.fromJson(json['frameParams'] as Map<String, dynamic>),
      theme: json['theme'] as String?,
      styleSheet__unstable: json['styleSheet__unstable'] as String?,
      disabledActions: (json['disabledActions'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$ActionEnumMap, e))
          .toList(),
      disabledActionReason: json['disabledActionReason'] as String?,
      hiddenActions: (json['hiddenActions'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$ActionEnumMap, e))
          .toList(),
      visibleActions: (json['visibleActions'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$ActionEnumMap, e))
          .toList(),
      showAlerts: json['showAlerts'] as bool?,
      runtimeFilters: (json['runtimeFilters'] as List<dynamic>?)
          ?.map((e) => RuntimeFilter.fromJson(e as Map<String, dynamic>))
          .toList(),
      runtimeParameters: (json['runtimeParameters'] as List<dynamic>?)
          ?.map((e) => RuntimeParameter.fromJson(e as Map<String, dynamic>))
          .toList(),
      locale: json['locale'] as String?,
      additionalFlags: json['additionalFlags'] as Map<String, dynamic>?,
      customizations: json['customizations'] == null
          ? null
          : CustomisationsInterface.fromJson(
              json['customizations'] as Map<String, dynamic>),
      insertAsSibling: json['insertAsSibling'] as bool?,
      contextMenuTrigger: $enumDecodeNullable(
          _$ContextMenuTriggerOptionsEnumMap, json['contextMenuTrigger']),
      linkOverride: json['linkOverride'] as bool?,
      insertInToSlide: json['insertInToSlide'] as bool?,
      usePrerenderedIfAvailable: json['usePrerenderedIfAvailable'] as bool?,
      excludeRuntimeFiltersfromURL:
          json['excludeRuntimeFiltersfromURL'] as bool?,
      hiddenTabs: (json['hiddenTabs'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      hiddenHomepageModules: (json['hiddenHomepageModules'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$HomepageModuleEnumMap, e))
          .toList(),
      reorderedHomepageModules:
          (json['reorderedHomepageModules'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$HomepageModuleEnumMap, e))
              .toList(),
      visibleTabs: (json['visibleTabs'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      hiddenHomeLeftNavItems: (json['hiddenHomeLeftNavItems'] as List<dynamic>?)
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
      enableFlipTooltipToContextMenu:
          json['enableFlipTooltipToContextMenu'] as bool?,
    );

Map<String, dynamic> _$ViewConfigToJson(ViewConfig instance) =>
    <String, dynamic>{
      if (instance.layoutConfig?.toJson() case final value?)
        'layoutConfig': value,
      if (instance.frameParams?.toJson() case final value?)
        'frameParams': value,
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
      if (instance.additionalFlags case final value?) 'additionalFlags': value,
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
      if (instance.collapseSearchBar case final value?)
        'collapseSearchBar': value,
      if (instance.disableRedirectionLinksInNewTab case final value?)
        'disableRedirectionLinksInNewTab': value,
      if (instance.dataPanelV2 case final value?) 'dataPanelV2': value,
      if (instance.enableCustomColumnGroups case final value?)
        'enableCustomColumnGroups': value,
      if (instance.overrideOrgId case final value?) 'overrideOrgId': value,
      if (instance.enableFlipTooltipToContextMenu case final value?)
        'enableFlipTooltipToContextMenu': value,
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
      values: (json['values'] as List<dynamic>)
          .map((e) => RuntimeFilterValues.fromJson(e as Map<String, dynamic>))
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
      value:
          RuntimeParameterValue.fromJson(json['value'] as Map<String, dynamic>),
      name: json['name'] as String,
    );

Map<String, dynamic> _$RuntimeParameterToJson(RuntimeParameter instance) =>
    <String, dynamic>{
      'value': instance.value.toJson(),
      'name': instance.name,
    };

AnswerServiceType _$AnswerServiceTypeFromJson(Map<String, dynamic> json) =>
    AnswerServiceType();

Map<String, dynamic> _$AnswerServiceTypeToJson(AnswerServiceType instance) =>
    <String, dynamic>{};

ColumnValue _$ColumnValueFromJson(Map<String, dynamic> json) => ColumnValue(
      value: ColumnValueValue.fromJson(json['value'] as Map<String, dynamic>),
      column:
          ColumnValueColumn.fromJson(json['column'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ColumnValueToJson(ColumnValue instance) =>
    <String, dynamic>{
      'value': instance.value.toJson(),
      'column': instance.column.toJson(),
    };

VizPoint _$VizPointFromJson(Map<String, dynamic> json) => VizPoint(
      selectedMeasures: (json['selectedMeasures'] as List<dynamic>)
          .map((e) => ColumnValue.fromJson(e as Map<String, dynamic>))
          .toList(),
      selectedAttributes: (json['selectedAttributes'] as List<dynamic>)
          .map((e) => ColumnValue.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$VizPointToJson(VizPoint instance) => <String, dynamic>{
      'selectedMeasures':
          instance.selectedMeasures.map((e) => e.toJson()).toList(),
      'selectedAttributes':
          instance.selectedAttributes.map((e) => e.toJson()).toList(),
    };

CustomActionPayload _$CustomActionPayloadFromJson(Map<String, dynamic> json) =>
    CustomActionPayload(
      session:
          SessionInterface.fromJson(json['session'] as Map<String, dynamic>),
      embedAnswerData: CustomActionPayloadEmbedAnswerData.fromJson(
          json['embedAnswerData'] as Map<String, dynamic>),
      contextMenuPoints: json['contextMenuPoints'] == null
          ? null
          : CustomActionPayloadContextMenuPoints.fromJson(
              json['contextMenuPoints'] as Map<String, dynamic>),
      vizId: json['vizId'] as String?,
    );

Map<String, dynamic> _$CustomActionPayloadToJson(
        CustomActionPayload instance) =>
    <String, dynamic>{
      'session': instance.session.toJson(),
      'embedAnswerData': instance.embedAnswerData.toJson(),
      if (instance.contextMenuPoints?.toJson() case final value?)
        'contextMenuPoints': value,
      if (instance.vizId case final value?) 'vizId': value,
    };

LiveboardViewConfig _$LiveboardViewConfigFromJson(Map<String, dynamic> json) =>
    LiveboardViewConfig(
      fullHeight: json['fullHeight'] as bool?,
      defaultHeight: (json['defaultHeight'] as num?)?.toInt(),
      enableVizTransformations: json['enableVizTransformations'] as bool?,
      liveboardId: json['liveboardId'] as String?,
      pinboardId: json['pinboardId'] as String?,
      vizId: json['vizId'] as String?,
      preventLiveboardFilterRemoval:
          json['preventLiveboardFilterRemoval'] as bool?,
      visibleVizs: (json['visibleVizs'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      preventPinboardFilterRemoval:
          json['preventPinboardFilterRemoval'] as bool?,
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
      layoutConfig: json['layoutConfig'] == null
          ? null
          : LayoutConfig.fromJson(json['layoutConfig'] as Map<String, dynamic>),
      frameParams: json['frameParams'] == null
          ? null
          : FrameParams.fromJson(json['frameParams'] as Map<String, dynamic>),
      theme: json['theme'] as String?,
      styleSheet__unstable: json['styleSheet__unstable'] as String?,
      disabledActions: (json['disabledActions'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$ActionEnumMap, e))
          .toList(),
      disabledActionReason: json['disabledActionReason'] as String?,
      hiddenActions: (json['hiddenActions'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$ActionEnumMap, e))
          .toList(),
      visibleActions: (json['visibleActions'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$ActionEnumMap, e))
          .toList(),
      showAlerts: json['showAlerts'] as bool?,
      runtimeFilters: (json['runtimeFilters'] as List<dynamic>?)
          ?.map((e) => RuntimeFilter.fromJson(e as Map<String, dynamic>))
          .toList(),
      runtimeParameters: (json['runtimeParameters'] as List<dynamic>?)
          ?.map((e) => RuntimeParameter.fromJson(e as Map<String, dynamic>))
          .toList(),
      locale: json['locale'] as String?,
      additionalFlags: json['additionalFlags'] as Map<String, dynamic>?,
      customizations: json['customizations'] == null
          ? null
          : CustomisationsInterface.fromJson(
              json['customizations'] as Map<String, dynamic>),
      insertAsSibling: json['insertAsSibling'] as bool?,
      contextMenuTrigger: $enumDecodeNullable(
          _$ContextMenuTriggerOptionsEnumMap, json['contextMenuTrigger']),
      linkOverride: json['linkOverride'] as bool?,
      insertInToSlide: json['insertInToSlide'] as bool?,
      usePrerenderedIfAvailable: json['usePrerenderedIfAvailable'] as bool?,
      excludeRuntimeFiltersfromURL:
          json['excludeRuntimeFiltersfromURL'] as bool?,
      hiddenTabs: (json['hiddenTabs'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      visibleTabs: (json['visibleTabs'] as List<dynamic>?)
          ?.map((e) => e as String)
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
      enableFlipTooltipToContextMenu:
          json['enableFlipTooltipToContextMenu'] as bool?,
    );

Map<String, dynamic> _$LiveboardViewConfigToJson(
        LiveboardViewConfig instance) =>
    <String, dynamic>{
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
      if (instance.showPreviewLoader case final value?)
        'showPreviewLoader': value,
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
      if (instance.layoutConfig?.toJson() case final value?)
        'layoutConfig': value,
      if (instance.frameParams?.toJson() case final value?)
        'frameParams': value,
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
      if (instance.additionalFlags case final value?) 'additionalFlags': value,
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
      if (instance.collapseSearchBar case final value?)
        'collapseSearchBar': value,
      if (instance.disableRedirectionLinksInNewTab case final value?)
        'disableRedirectionLinksInNewTab': value,
      if (instance.dataPanelV2 case final value?) 'dataPanelV2': value,
      if (instance.enableCustomColumnGroups case final value?)
        'enableCustomColumnGroups': value,
      if (instance.overrideOrgId case final value?) 'overrideOrgId': value,
      if (instance.enableFlipTooltipToContextMenu case final value?)
        'enableFlipTooltipToContextMenu': value,
    };

SessionInterface _$SessionInterfaceFromJson(Map<String, dynamic> json) =>
    SessionInterface(
      acSession: SessionInterfaceAcSession.fromJson(
          json['acSession'] as Map<String, dynamic>),
      genNo: (json['genNo'] as num).toInt(),
      sessionId: json['sessionId'] as String,
    );

Map<String, dynamic> _$SessionInterfaceToJson(SessionInterface instance) =>
    <String, dynamic>{
      'acSession': instance.acSession.toJson(),
      'genNo': instance.genNo,
      'sessionId': instance.sessionId,
    };

UnderlyingDataPoint _$UnderlyingDataPointFromJson(Map<String, dynamic> json) =>
    UnderlyingDataPoint(
      dataValue: json['dataValue'],
      columnId: json['columnId'] as String,
    );

Map<String, dynamic> _$UnderlyingDataPointToJson(
        UnderlyingDataPoint instance) =>
    <String, dynamic>{
      if (instance.dataValue case final value?) 'dataValue': value,
      'columnId': instance.columnId,
    };

CustomisationsInterfaceContentStrings
    _$CustomisationsInterfaceContentStringsFromJson(
            Map<String, dynamic> json) =>
        CustomisationsInterfaceContentStrings();

Map<String, dynamic> _$CustomisationsInterfaceContentStringsToJson(
        CustomisationsInterfaceContentStrings instance) =>
    <String, dynamic>{};

CustomisationsInterfaceContent _$CustomisationsInterfaceContentFromJson(
        Map<String, dynamic> json) =>
    CustomisationsInterfaceContent(
      strings: json['strings'] == null
          ? null
          : CustomisationsInterfaceContentStrings.fromJson(
              json['strings'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CustomisationsInterfaceContentToJson(
        CustomisationsInterfaceContent instance) =>
    <String, dynamic>{
      if (instance.strings?.toJson() case final value?) 'strings': value,
    };

EmbedConfigHostConfig _$EmbedConfigHostConfigFromJson(
        Map<String, dynamic> json) =>
    EmbedConfigHostConfig(
      hostClusterName: json['hostClusterName'] as String,
      hostClusterId: json['hostClusterId'] as String,
      hostUserGuid: json['hostUserGuid'] as String,
    );

Map<String, dynamic> _$EmbedConfigHostConfigToJson(
        EmbedConfigHostConfig instance) =>
    <String, dynamic>{
      'hostClusterName': instance.hostClusterName,
      'hostClusterId': instance.hostClusterId,
      'hostUserGuid': instance.hostUserGuid,
    };

ColumnValueValueType4V _$ColumnValueValueType4VFromJson(
        Map<String, dynamic> json) =>
    ColumnValueValueType4V(
      e: (json['e'] as num).toInt(),
      s: (json['s'] as num).toInt(),
    );

Map<String, dynamic> _$ColumnValueValueType4VToJson(
        ColumnValueValueType4V instance) =>
    <String, dynamic>{
      'e': instance.e,
      's': instance.s,
    };

ColumnValueValueType4 _$ColumnValueValueType4FromJson(
        Map<String, dynamic> json) =>
    ColumnValueValueType4(
      v: ColumnValueValueType4V.fromJson(json['v'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ColumnValueValueType4ToJson(
        ColumnValueValueType4 instance) =>
    <String, dynamic>{
      'v': instance.v.toJson(),
    };

ColumnValueColumn _$ColumnValueColumnFromJson(Map<String, dynamic> json) =>
    ColumnValueColumn(
      dataType: json['dataType'] as String,
      name: json['name'] as String,
      id: json['id'] as String,
    );

Map<String, dynamic> _$ColumnValueColumnToJson(ColumnValueColumn instance) =>
    <String, dynamic>{
      'dataType': instance.dataType,
      'name': instance.name,
      'id': instance.id,
    };

CustomActionPayloadEmbedAnswerDataSourcesHeader
    _$CustomActionPayloadEmbedAnswerDataSourcesHeaderFromJson(
            Map<String, dynamic> json) =>
        CustomActionPayloadEmbedAnswerDataSourcesHeader(
          guid: json['guid'] as String,
        );

Map<String, dynamic> _$CustomActionPayloadEmbedAnswerDataSourcesHeaderToJson(
        CustomActionPayloadEmbedAnswerDataSourcesHeader instance) =>
    <String, dynamic>{
      'guid': instance.guid,
    };

CustomActionPayloadEmbedAnswerDataSources
    _$CustomActionPayloadEmbedAnswerDataSourcesFromJson(
            Map<String, dynamic> json) =>
        CustomActionPayloadEmbedAnswerDataSources(
          header: CustomActionPayloadEmbedAnswerDataSourcesHeader.fromJson(
              json['header'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$CustomActionPayloadEmbedAnswerDataSourcesToJson(
        CustomActionPayloadEmbedAnswerDataSources instance) =>
    <String, dynamic>{
      'header': instance.header.toJson(),
    };

CustomActionPayloadEmbedAnswerData _$CustomActionPayloadEmbedAnswerDataFromJson(
        Map<String, dynamic> json) =>
    CustomActionPayloadEmbedAnswerData(
      data: json['data'] as List<dynamic>,
      columns: json['columns'] as List<dynamic>,
      sources: CustomActionPayloadEmbedAnswerDataSources.fromJson(
          json['sources'] as Map<String, dynamic>),
      id: json['id'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$CustomActionPayloadEmbedAnswerDataToJson(
        CustomActionPayloadEmbedAnswerData instance) =>
    <String, dynamic>{
      'data': instance.data,
      'columns': instance.columns,
      'sources': instance.sources.toJson(),
      'id': instance.id,
      'name': instance.name,
    };

CustomActionPayloadContextMenuPoints
    _$CustomActionPayloadContextMenuPointsFromJson(Map<String, dynamic> json) =>
        CustomActionPayloadContextMenuPoints(
          selectedPoints: (json['selectedPoints'] as List<dynamic>)
              .map((e) => VizPoint.fromJson(e as Map<String, dynamic>))
              .toList(),
          clickedPoint:
              VizPoint.fromJson(json['clickedPoint'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$CustomActionPayloadContextMenuPointsToJson(
        CustomActionPayloadContextMenuPoints instance) =>
    <String, dynamic>{
      'selectedPoints': instance.selectedPoints.map((e) => e.toJson()).toList(),
      'clickedPoint': instance.clickedPoint.toJson(),
    };

SessionInterfaceAcSession _$SessionInterfaceAcSessionFromJson(
        Map<String, dynamic> json) =>
    SessionInterfaceAcSession(
      genNo: (json['genNo'] as num).toInt(),
      sessionId: json['sessionId'] as String,
    );

Map<String, dynamic> _$SessionInterfaceAcSessionToJson(
        SessionInterfaceAcSession instance) =>
    <String, dynamic>{
      'genNo': instance.genNo,
      'sessionId': instance.sessionId,
    };

EmbedConfigAuthTriggerContainer _$EmbedConfigAuthTriggerContainerFromJson(
        Map<String, dynamic> json) =>
    EmbedConfigAuthTriggerContainer(
      json['value'] as String,
    );

Map<String, dynamic> _$EmbedConfigAuthTriggerContainerToJson(
        EmbedConfigAuthTriggerContainer instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

FrameParamsWidth _$FrameParamsWidthFromJson(Map<String, dynamic> json) =>
    FrameParamsWidth(
      json['value'] as String,
    );

Map<String, dynamic> _$FrameParamsWidthToJson(FrameParamsWidth instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

FrameParamsHeight _$FrameParamsHeightFromJson(Map<String, dynamic> json) =>
    FrameParamsHeight(
      json['value'] as String,
    );

Map<String, dynamic> _$FrameParamsHeightToJson(FrameParamsHeight instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

FrameParamsLoading _$FrameParamsLoadingFromJson(Map<String, dynamic> json) =>
    FrameParamsLoading(
      json['value'] as String,
    );

Map<String, dynamic> _$FrameParamsLoadingToJson(FrameParamsLoading instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

RuntimeFilterValues _$RuntimeFilterValuesFromJson(Map<String, dynamic> json) =>
    RuntimeFilterValues(
      json['value'] as String,
    );

Map<String, dynamic> _$RuntimeFilterValuesToJson(
        RuntimeFilterValues instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

RuntimeParameterValue _$RuntimeParameterValueFromJson(
        Map<String, dynamic> json) =>
    RuntimeParameterValue(
      json['value'] as String,
    );

Map<String, dynamic> _$RuntimeParameterValueToJson(
        RuntimeParameterValue instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

ColumnValueValue _$ColumnValueValueFromJson(Map<String, dynamic> json) =>
    ColumnValueValue(
      json['value'] as String,
    );

Map<String, dynamic> _$ColumnValueValueToJson(ColumnValueValue instance) =>
    <String, dynamic>{
      'value': instance.value,
    };
