.class public Landroid/view/autofill/AutofillFeatureFlags;
.super Ljava/lang/Object;
.source "AutofillFeatureFlags.java"


# static fields
.field private static final blacklist DEFAULT_AFAA_ALLOWLIST:Ljava/lang/String; = ""

.field private static final blacklist DEFAULT_AFAA_DENYLIST:Ljava/lang/String; = ""

.field private static final blacklist DEFAULT_AFAA_NON_AUTOFILLABLE_IME_ACTIONS:Ljava/lang/String; = "3,4"

.field private static final blacklist DEFAULT_AFAA_ON_IMPORTANT_VIEW_ENABLED:Z = true

.field private static final blacklist DEFAULT_AFAA_ON_UNIMPORTANT_VIEW_ENABLED:Z = true

.field private static final blacklist DEFAULT_AFAA_SHOULD_ENABLE_AUTOFILL_ON_ALL_VIEW_TYPES:Z = true

.field private static final blacklist DEFAULT_AFAA_SHOULD_ENABLE_MULTILINE_FILTER:Z = true

.field private static final blacklist DEFAULT_AFAA_SHOULD_INCLUDE_ALL_AUTOFILL_TYPE_NOT_NONE_VIEWS_IN_ASSIST_STRUCTURE:Z = true

.field public static final blacklist DEFAULT_AUTOFILL_PCC_CLASSIFICATION_ENABLED:Z = false

.field private static final blacklist DEFAULT_CREDENTIAL_MANAGER_ENABLED:Z = true

.field private static final blacklist DEFAULT_CREDENTIAL_MANAGER_SUPPRESS_FILL_AND_SAVE_DIALOG:Z = true

.field private static final blacklist DEFAULT_FILL_DIALOG_ENABLED_HINTS:Ljava/lang/String; = ""

.field public static final blacklist DEFAULT_FILL_DIALOG_MIN_WAIT_AFTER_IME_ANIMATION_END_MS:J = 0x0L

.field public static final blacklist DEFAULT_FILL_DIALOG_TIMEOUT_MS:J = 0x190L

.field private static final blacklist DEFAULT_HAS_FILL_DIALOG_UI_FEATURE:Z = false

.field public static final blacklist DEFAULT_IMPROVE_FILL_DIALOG_ENABLED:Z = true

.field public static final blacklist DEFAULT_MAX_INPUT_LENGTH_FOR_AUTOFILL:I = 0x3

.field public static final blacklist DEFAULT_SESSION_FILL_EVENT_HISTORY_ENABLED:Z = true

.field public static final blacklist DEVICE_CONFIG_ALWAYS_INCLUDE_WEBVIEW_IN_ASSIST_STRUCTURE:Ljava/lang/String; = "always_include_webview_in_assist_structure"

.field public static final blacklist DEVICE_CONFIG_AUGMENTED_SERVICE_IDLE_UNBIND_TIMEOUT:Ljava/lang/String; = "augmented_service_idle_unbind_timeout"

.field public static final blacklist DEVICE_CONFIG_AUGMENTED_SERVICE_REQUEST_TIMEOUT:Ljava/lang/String; = "augmented_service_request_timeout"

.field public static final blacklist DEVICE_CONFIG_AUTOFILL_COMPAT_MODE_ALLOWED_PACKAGES:Ljava/lang/String; = "compat_mode_allowed_packages"

.field public static final blacklist DEVICE_CONFIG_AUTOFILL_CREDENTIAL_MANAGER_ENABLED:Ljava/lang/String; = "autofill_credential_manager_enabled"

.field public static final blacklist DEVICE_CONFIG_AUTOFILL_CREDENTIAL_MANAGER_IGNORE_VIEWS:Ljava/lang/String; = "autofill_credential_manager_ignore_views"

.field public static final blacklist DEVICE_CONFIG_AUTOFILL_CREDENTIAL_MANAGER_SUPPRESS_FILL_AND_SAVE_DIALOG:Ljava/lang/String; = "autofill_credential_manager_suppress_fill_and_save_dialog"

.field public static final blacklist DEVICE_CONFIG_AUTOFILL_DIALOG_ENABLED:Ljava/lang/String; = "autofill_dialog_enabled"

.field public static final blacklist DEVICE_CONFIG_AUTOFILL_DIALOG_HINTS:Ljava/lang/String; = "autofill_dialog_hints"

.field public static final blacklist DEVICE_CONFIG_AUTOFILL_PCC_CLASSIFICATION_ENABLED:Ljava/lang/String; = "pcc_classification_enabled"

.field public static final blacklist DEVICE_CONFIG_AUTOFILL_PCC_FEATURE_PROVIDER_HINTS:Ljava/lang/String; = "pcc_classification_hints"

.field public static final blacklist DEVICE_CONFIG_AUTOFILL_SMART_SUGGESTION_SUPPORTED_MODES:Ljava/lang/String; = "smart_suggestion_supported_modes"

.field public static final blacklist DEVICE_CONFIG_AUTOFILL_TOOLTIP_SHOW_UP_DELAY:Ljava/lang/String; = "autofill_inline_tooltip_first_show_delay"

.field public static final blacklist DEVICE_CONFIG_ENABLE_RELATIVE_LOCATION_FOR_RELAYOUT:Ljava/lang/String; = "enable_relative_location_for_relayout"

.field public static final blacklist DEVICE_CONFIG_ENABLE_RELAYOUT:Ljava/lang/String; = "enable_relayout"

.field public static final blacklist DEVICE_CONFIG_FILL_DIALOG_MIN_WAIT_AFTER_IME_ANIMATION_END_MS:Ljava/lang/String; = "fill_dialog_min_wait_after_animation_end_ms"

.field public static final blacklist DEVICE_CONFIG_FILL_DIALOG_TIMEOUT_MS:Ljava/lang/String; = "fill_dialog_timeout_ms"

.field public static final blacklist DEVICE_CONFIG_FILL_FIELDS_FROM_CURRENT_SESSION_ONLY:Ljava/lang/String; = "fill_fields_from_current_session_only"

.field public static final blacklist DEVICE_CONFIG_IGNORE_RELAYOUT_WHEN_AUTH_PENDING:Ljava/lang/String; = "ignore_relayout_auth_pending"

.field public static final blacklist DEVICE_CONFIG_IGNORE_VIEW_STATE_RESET_TO_EMPTY:Ljava/lang/String; = "ignore_view_state_reset_to_empty"

.field public static final blacklist DEVICE_CONFIG_IMPROVE_FILL_DIALOG_ENABLED:Ljava/lang/String; = "improve_fill_dialog"

.field public static final blacklist DEVICE_CONFIG_INCLUDE_ALL_AUTOFILL_TYPE_NOT_NONE_VIEWS_IN_ASSIST_STRUCTURE:Ljava/lang/String; = "include_all_autofill_type_not_none_views_in_assist_structure"

.field public static final blacklist DEVICE_CONFIG_INCLUDE_ALL_VIEWS_IN_ASSIST_STRUCTURE:Ljava/lang/String; = "include_all_views_in_assist_structure"

.field public static final blacklist DEVICE_CONFIG_INCLUDE_INVISIBLE_VIEW_GROUP_IN_ASSIST_STRUCTURE:Ljava/lang/String; = "include_invisible_view_group_in_assist_structure"

.field public static final blacklist DEVICE_CONFIG_MAX_INPUT_LENGTH_FOR_AUTOFILL:Ljava/lang/String; = "max_input_length_for_autofill"

.field public static final blacklist DEVICE_CONFIG_MULTILINE_FILTER_ENABLED:Ljava/lang/String; = "multiline_filter_enabled"

.field public static final blacklist DEVICE_CONFIG_NON_AUTOFILLABLE_IME_ACTION_IDS:Ljava/lang/String; = "non_autofillable_ime_action_ids"

.field public static final blacklist DEVICE_CONFIG_PACKAGE_AND_ACTIVITY_ALLOWLIST_FOR_TRIGGERING_FILL_REQUEST:Ljava/lang/String; = "package_and_activity_allowlist_for_triggering_fill_request"

.field public static final blacklist DEVICE_CONFIG_PACKAGE_DENYLIST_FOR_UNIMPORTANT_VIEW:Ljava/lang/String; = "package_deny_list_for_unimportant_view"

.field public static final blacklist DEVICE_CONFIG_PCC_USE_FALLBACK:Ljava/lang/String; = "pcc_use_fallback"

.field public static final blacklist DEVICE_CONFIG_PREFER_PROVIDER_OVER_PCC:Ljava/lang/String; = "prefer_provider_over_pcc"

.field public static final blacklist DEVICE_CONFIG_SESSION_FILL_EVENT_HISTORY:Ljava/lang/String; = "session_fill_event_history"

.field public static final blacklist DEVICE_CONFIG_SHOULD_ENABLE_AUTOFILL_ON_ALL_VIEW_TYPES:Ljava/lang/String; = "should_enable_autofill_on_all_view_types"

.field public static final blacklist DEVICE_CONFIG_TRIGGER_FILL_REQUEST_ON_FILTERED_IMPORTANT_VIEWS:Ljava/lang/String; = "trigger_fill_request_on_filtered_important_views"

.field public static final blacklist DEVICE_CONFIG_TRIGGER_FILL_REQUEST_ON_UNIMPORTANT_VIEW:Ljava/lang/String; = "trigger_fill_request_on_unimportant_view"

.field private static final blacklist DIALOG_HINTS_DELIMITER:Ljava/lang/String; = ":"

.field private static final blacklist TAG:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 45
    const-class v0, Landroid/view/autofill/AutofillFeatureFlags;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/autofill/AutofillFeatureFlags;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 438
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist enableRelativeLocationForRelayout()Z
    .registers 3

    .line 636
    const-string v0, "enable_relative_location_for_relayout"

    const/4 v1, 0x1

    const-string v2, "autofill"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static blacklist enableRelayoutFixes()Z
    .registers 3

    .line 628
    const-string v0, "enable_relayout"

    const/4 v1, 0x1

    const-string v2, "autofill"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static blacklist getAllowlistStringFromFlag()Ljava/lang/String;
    .registers 3

    .line 567
    const-string/jumbo v0, "package_and_activity_allowlist_for_triggering_fill_request"

    const-string v1, ""

    const-string v2, "autofill"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getDenylistStringFromFlag()Ljava/lang/String;
    .registers 3

    .line 555
    const-string/jumbo v0, "package_deny_list_for_unimportant_view"

    const-string v1, ""

    const-string v2, "autofill"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getFillDialogEnabledHints()[Ljava/lang/String;
    .registers 3

    .line 458
    const-string v0, "autofill_dialog_hints"

    const-string v1, ""

    const-string v2, "autofill"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 462
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 463
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0

    .line 466
    :cond_14
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/view/autofill/AutofillFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/view/autofill/AutofillFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    new-instance v2, Landroid/view/autofill/AutofillFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Landroid/view/autofill/AutofillFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/ArrayUtils;->filter([Ljava/lang/Object;Ljava/util/function/IntFunction;Ljava/util/function/Predicate;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static blacklist getFillDialogMinWaitAfterImeAnimationtEndMs()J
    .registers 4

    .line 735
    const-string v0, "fill_dialog_min_wait_after_animation_end_ms"

    const-wide/16 v1, 0x0

    const-string v3, "autofill"

    invoke-static {v3, v0, v1, v2}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static blacklist getFillDialogTimeoutMs()J
    .registers 4

    .line 721
    const-string v0, "fill_dialog_timeout_ms"

    const-wide/16 v1, 0x190

    const-string v3, "autofill"

    invoke-static {v3, v0, v1, v2}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static blacklist getNonAutofillableImeActionIdSetFromFlag()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 539
    const-string/jumbo v0, "non_autofillable_ime_action_ids"

    const-string v1, "3,4"

    const-string v2, "autofill"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 543
    new-instance v1, Landroid/util/ArraySet;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public static blacklist isAutofillPccClassificationEnabled()Z
    .registers 3

    .line 672
    const-string/jumbo v0, "pcc_classification_enabled"

    const/4 v1, 0x0

    const-string v2, "autofill"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static blacklist isAutomotiveWithMultiWindow()Z
    .registers 4

    .line 704
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const-string v2, "android.software.car.splitscreen_multitasking"

    invoke-interface {v1, v2, v0}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_b} :catch_c

    return v0

    .line 706
    :catch_c
    move-exception v1

    .line 707
    sget-object v2, Landroid/view/autofill/AutofillFeatureFlags;->TAG:Ljava/lang/String;

    const-string v3, "Error retrieving system features to confirm FEATURE_CAR_SPLITSCREEN_MULTITASKING"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 709
    return v0
.end method

.method public static blacklist isCredentialManagerEnabled()Z
    .registers 3

    .line 477
    const-string v0, "autofill_credential_manager_enabled"

    const/4 v1, 0x1

    const-string v2, "autofill"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static blacklist isFillAndSaveDialogDisabledForCredentialManager()Z
    .registers 3

    .line 489
    invoke-static {}, Landroid/view/autofill/AutofillFeatureFlags;->isCredentialManagerEnabled()Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "autofill"

    const-string v1, "autofill_credential_manager_suppress_fill_and_save_dialog"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_13

    :cond_12
    const/4 v2, 0x0

    :goto_13
    return v2
.end method

.method public static blacklist isFillDialogEnabled()Z
    .registers 3

    .line 446
    const-string v0, "autofill_dialog_enabled"

    const/4 v1, 0x0

    const-string v2, "autofill"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static blacklist isImproveFillDialogEnabled()Z
    .registers 4

    .line 690
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/Flags;->disableFillDialogOnAutomotiveMultiWindow()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 691
    invoke-static {}, Landroid/view/autofill/AutofillFeatureFlags;->isAutomotiveWithMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 692
    return v1

    .line 696
    :cond_e
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/Flags;->improveFillDialogAconfig()Z

    move-result v0

    if-eqz v0, :cond_20

    const-string v0, "autofill"

    const-string v2, "improve_fill_dialog"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_20

    move v1, v3

    :cond_20
    return v1
.end method

.method public static blacklist isMultipleFillEventHistoryEnabled()Z
    .registers 3

    .line 747
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/Flags;->multipleFillHistory()Z

    move-result v0

    if-nez v0, :cond_8

    .line 748
    const/4 v0, 0x0

    return v0

    .line 751
    :cond_8
    const-string/jumbo v0, "session_fill_event_history"

    const/4 v1, 0x1

    const-string v2, "autofill"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static blacklist isTriggerFillRequestOnFilteredImportantViewsEnabled()Z
    .registers 3

    .line 514
    const-string/jumbo v0, "trigger_fill_request_on_filtered_important_views"

    const/4 v1, 0x1

    const-string v2, "autofill"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static blacklist isTriggerFillRequestOnUnimportantViewEnabled()Z
    .registers 3

    .line 502
    const-string/jumbo v0, "trigger_fill_request_on_unimportant_view"

    const/4 v1, 0x1

    const-string v2, "autofill"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$getFillDialogEnabledHints$0(I)[Ljava/lang/String;
    .registers 1

    .line 466
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method static synthetic blacklist lambda$getFillDialogEnabledHints$1(Ljava/lang/String;)Z
    .registers 1

    .line 467
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static blacklist shouldAlwaysIncludeWebviewInAssistStructure()Z
    .registers 3

    .line 597
    const-string v0, "always_include_webview_in_assist_structure"

    const/4 v1, 0x1

    const-string v2, "autofill"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static blacklist shouldEnableAutofillOnAllViewTypes()Z
    .registers 3

    .line 526
    const-string/jumbo v0, "should_enable_autofill_on_all_view_types"

    const/4 v1, 0x1

    const-string v2, "autofill"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static blacklist shouldEnableMultilineFilter()Z
    .registers 3

    .line 656
    const-string/jumbo v0, "multiline_filter_enabled"

    const/4 v1, 0x1

    const-string v2, "autofill"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static blacklist shouldFillFieldsFromCurrentSessionOnly()Z
    .registers 3

    .line 644
    const-string v0, "fill_fields_from_current_session_only"

    const/4 v1, 0x1

    const-string v2, "autofill"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static blacklist shouldIgnoreRelayoutWhenAuthPending()Z
    .registers 3

    .line 620
    const-string v0, "ignore_relayout_auth_pending"

    const/4 v1, 0x0

    const-string v2, "autofill"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static blacklist shouldIgnoreViewStateResetToEmpty()Z
    .registers 3

    .line 612
    const-string v0, "ignore_view_state_reset_to_empty"

    const/4 v1, 0x1

    const-string v2, "autofill"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static blacklist shouldIncludeAllChildrenViewInAssistStructure()Z
    .registers 3

    .line 590
    const-string v0, "include_all_views_in_assist_structure"

    const/4 v1, 0x0

    const-string v2, "autofill"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static blacklist shouldIncludeAllViewsAutofillTypeNotNoneInAssistStructrue()Z
    .registers 3

    .line 578
    const-string v0, "include_all_autofill_type_not_none_views_in_assist_structure"

    const/4 v1, 0x1

    const-string v2, "autofill"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static blacklist shouldIncludeInvisibleViewInAssistStructure()Z
    .registers 3

    .line 604
    const-string v0, "include_invisible_view_group_in_assist_structure"

    const/4 v1, 0x1

    const-string v2, "autofill"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
