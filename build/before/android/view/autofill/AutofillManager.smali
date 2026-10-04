.class public final Landroid/view/autofill/AutofillManager;
.super Ljava/lang/Object;
.source "AutofillManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/autofill/AutofillManager$AutofillClient;,
        Landroid/view/autofill/AutofillManager$CompatibilityBridge;,
        Landroid/view/autofill/AutofillManager$TrackedViews;,
        Landroid/view/autofill/AutofillManager$AutofillCallback;,
        Landroid/view/autofill/AutofillManager$AutofillManagerClient;,
        Landroid/view/autofill/AutofillManager$AugmentedAutofillManagerClient;,
        Landroid/view/autofill/AutofillManager$AutofillCommitReason;,
        Landroid/view/autofill/AutofillManager$SmartSuggestionMode;
    }
.end annotation


# static fields
.field public static final blacklist ACTION_RESPONSE_EXPIRED:I = 0x5

.field public static final greylist-max-o ACTION_START_SESSION:I = 0x1

.field public static final greylist-max-o ACTION_VALUE_CHANGED:I = 0x4

.field public static final greylist-max-o ACTION_VIEW_ENTERED:I = 0x2

.field public static final greylist-max-o ACTION_VIEW_EXITED:I = 0x3

.field public static final blacklist ANY_HINT:Ljava/lang/String; = "any"

.field private static final greylist-max-o AUTHENTICATION_ID_DATASET_ID_MASK:I = 0xffff

.field private static final greylist-max-o AUTHENTICATION_ID_DATASET_ID_SHIFT:I = 0x10

.field public static final greylist-max-o AUTHENTICATION_ID_DATASET_ID_UNDEFINED:I = 0xffff

.field public static final blacklist COMMIT_REASON_ACTIVITY_FINISHED:I = 0x1

.field public static final blacklist COMMIT_REASON_SESSION_DESTROYED:I = 0x5

.field public static final blacklist COMMIT_REASON_UNKNOWN:I = 0x0

.field public static final blacklist COMMIT_REASON_VIEW_CHANGED:I = 0x4

.field public static final blacklist COMMIT_REASON_VIEW_CLICKED:I = 0x3

.field public static final blacklist COMMIT_REASON_VIEW_COMMITTED:I = 0x2

.field private static final blacklist DBG:Z = false

.field public static final blacklist DEFAULT_LOGGING_LEVEL:I

.field public static final blacklist DEFAULT_MAX_PARTITIONS_SIZE:I = 0xa

.field public static final blacklist DIRECT_ACTION_ID_REMOTE_AUTOFILL:Ljava/lang/String; = "android.REMOTE_AUTOFILL"

.field public static final whitelist EXTRA_ASSIST_STRUCTURE:Ljava/lang/String; = "android.view.autofill.extra.ASSIST_STRUCTURE"

.field public static final blacklist EXTRA_AUGMENTED_AUTOFILL_CLIENT:Ljava/lang/String; = "android.view.autofill.extra.AUGMENTED_AUTOFILL_CLIENT"

.field public static final whitelist EXTRA_AUTHENTICATION_RESULT:Ljava/lang/String; = "android.view.autofill.extra.AUTHENTICATION_RESULT"

.field public static final whitelist EXTRA_AUTHENTICATION_RESULT_EPHEMERAL_DATASET:Ljava/lang/String; = "android.view.autofill.extra.AUTHENTICATION_RESULT_EPHEMERAL_DATASET"

.field public static final blacklist EXTRA_AUTH_STATE:Ljava/lang/String; = "android.view.autofill.extra.AUTH_STATE"

.field public static final blacklist EXTRA_AUTOFILL_REQUEST_ID:Ljava/lang/String; = "android.view.autofill.extra.AUTOFILL_REQUEST_ID"

.field public static final whitelist EXTRA_CLIENT_STATE:Ljava/lang/String; = "android.view.autofill.extra.CLIENT_STATE"

.field public static final whitelist EXTRA_INLINE_SUGGESTIONS_REQUEST:Ljava/lang/String; = "android.view.autofill.extra.INLINE_SUGGESTIONS_REQUEST"

.field public static final blacklist EXTRA_REMOTE_AUTOFILL_ID:Ljava/lang/String; = "android.view.autofill.extra.REMOTE_AUTOFILL_ID"

.field public static final blacklist EXTRA_REMOTE_AUTOFILL_VALUE:Ljava/lang/String; = "android.view.autofill.extra.REMOTE_AUTOFILL_VALUE"

.field public static final blacklist EXTRA_RESTORE_CROSS_ACTIVITY:Ljava/lang/String; = "android.view.autofill.extra.RESTORE_CROSS_ACTIVITY"

.field public static final greylist-max-o EXTRA_RESTORE_SESSION_TOKEN:Ljava/lang/String; = "android.view.autofill.extra.RESTORE_SESSION_TOKEN"

.field public static final greylist-max-o FC_SERVICE_TIMEOUT:I = 0x1388

.field public static final greylist-max-o FLAG_ADD_CLIENT_DEBUG:I = 0x2

.field public static final greylist-max-o FLAG_ADD_CLIENT_ENABLED:I = 0x1

.field public static final blacklist FLAG_ADD_CLIENT_ENABLED_FOR_AUGMENTED_AUTOFILL_ONLY:I = 0x8

.field public static final greylist-max-o FLAG_ADD_CLIENT_VERBOSE:I = 0x4

.field public static final blacklist FLAG_SMART_SUGGESTION_OFF:I = 0x0

.field public static final blacklist FLAG_SMART_SUGGESTION_SYSTEM:I = 0x1

.field private static final greylist-max-o LAST_AUTOFILLED_DATA_TAG:Ljava/lang/String; = "android:lastAutoFilledData"

.field public static final blacklist MAX_TEMP_AUGMENTED_SERVICE_DURATION_MS:I = 0x1d4c0

.field public static final blacklist NO_LOGGING:I = 0x0

.field public static final greylist-max-o NO_SESSION:I = 0x7fffffff

.field public static final greylist-max-o PENDING_UI_OPERATION_CANCEL:I = 0x1

.field public static final greylist-max-o PENDING_UI_OPERATION_RESTORE:I = 0x2

.field public static final blacklist PINNED_DATASET_ID:Ljava/lang/String; = "PINNED_DATASET_ID"

.field public static final blacklist RECEIVER_FLAG_SESSION_FOR_AUGMENTED_AUTOFILL_ONLY:I = 0x1

.field public static final blacklist RESULT_CODE_NOT_SERVICE:I = -0x1

.field public static final blacklist RESULT_OK:I = 0x0

.field private static final greylist-max-o SESSION_ID_TAG:Ljava/lang/String; = "android:sessionId"

.field public static final greylist-max-o SET_STATE_FLAG_DEBUG:I = 0x8

.field public static final greylist-max-o SET_STATE_FLAG_ENABLED:I = 0x1

.field public static final blacklist SET_STATE_FLAG_FOR_AUTOFILL_ONLY:I = 0x20

.field public static final greylist-max-o SET_STATE_FLAG_RESET_CLIENT:I = 0x4

.field public static final greylist-max-o SET_STATE_FLAG_RESET_SESSION:I = 0x2

.field public static final greylist-max-o SET_STATE_FLAG_VERBOSE:I = 0x10

.field public static final greylist-max-o STATE_ACTIVE:I = 0x1

.field public static final greylist-max-o STATE_DISABLED_BY_SERVICE:I = 0x4

.field public static final greylist-max-o STATE_FINISHED:I = 0x2

.field public static final blacklist STATE_PENDING_AUTHENTICATION:I = 0x7

.field public static final greylist-max-o STATE_SHOWING_SAVE_UI:I = 0x3

.field private static final greylist-max-o STATE_TAG:Ljava/lang/String; = "android:state"

.field public static final greylist-max-o STATE_UNKNOWN:I = 0x0

.field public static final greylist-max-o STATE_UNKNOWN_COMPAT_MODE:I = 0x5

.field public static final blacklist STATE_UNKNOWN_FAILED:I = 0x6

.field private static final blacklist SYNC_CALLS_TIMEOUT_MS:I = 0x1388

.field private static final greylist-max-o TAG:Ljava/lang/String; = "AutofillManager"


# instance fields
.field private final blacklist mAllTrackedViews:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/view/autofill/AutofillId;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mAllowedActivitySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mAugmentedAutofillServiceClient:Landroid/view/autofill/IAugmentedAutofillManagerClient;

.field private blacklist mAutofillStateFingerprint:Landroid/view/autofill/AutofillStateFingerprint;

.field private greylist-max-o mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;

.field private greylist-max-o mCompatibilityBridge:Landroid/view/autofill/AutofillManager$CompatibilityBridge;

.field private final greylist-max-o mContext:Landroid/content/Context;

.field private blacklist mDeniedActivitySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mEnabled:Z

.field private blacklist mEnabledForAugmentedAutofillOnly:Z

.field private blacklist mEnteredForAugmentedAutofillIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/view/autofill/AutofillId;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mEnteredIds:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/view/autofill/AutofillId;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mFillDialogEnabledHints:[Ljava/lang/String;

.field private blacklist mFillDialogTriggerIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/autofill/AutofillId;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mFillReAttemptNeeded:Z

.field private greylist-max-o mFillableIds:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/view/autofill/AutofillId;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mFingerprintToViewMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/view/autofill/AutofillId;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mForAugmentedAutofillOnly:Z

.field private greylist-max-o mIdShownFillUi:Landroid/view/autofill/AutofillId;

.field private blacklist mImproveFillDialogEnabled:Z

.field private final blacklist mIsCredmanIntegrationEnabled:Z

.field private final blacklist mIsFillAndSaveDialogDisabledForCredentialManager:Z

.field private final blacklist mIsFillDialogEnabled:Z

.field private blacklist mIsFillRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private blacklist mIsPackageFullyAllowedForAutofill:Z

.field private blacklist mIsPackageFullyDeniedForAutofill:Z

.field private blacklist mIsPackagePartiallyAllowedForAutofill:Z

.field private blacklist mIsPackagePartiallyDeniedForAutofill:Z

.field private blacklist mIsTriggerFillRequestOnFilteredImportantViewsEnabled:Z

.field private blacklist mIsTriggerFillRequestOnUnimportantViewEnabled:Z

.field private greylist-max-o mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

.field private final greylist-max-o mLock:Ljava/lang/Object;

.field private final greylist-max-o mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private blacklist mNonAutofillableImeActionIdSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mOnInvisibleCalled:Z

.field private final blacklist mOptions:Landroid/content/AutofillOptions;

.field private final blacklist mRelativePositionForRelayout:Z

.field private final blacklist mRelayoutFix:Z

.field private blacklist mRelayoutFixDeprecated:Z

.field private greylist-max-o mSaveOnFinish:Z

.field private greylist-max-o mSaveTriggerId:Landroid/view/autofill/AutofillId;

.field private blacklist mScreenHasCredmanField:Z

.field private final greylist-max-o mService:Landroid/view/autofill/IAutoFillManager;

.field private greylist-max-o mServiceClient:Landroid/view/autofill/IAutoFillManagerClient;

.field private greylist-max-o mServiceClientCleaner:Lsun/misc/Cleaner;

.field private greylist-max-o mSessionId:I

.field private blacklist mShouldAlwaysIncludeWebviewInAssistStructure:Z

.field private blacklist mShouldEnableAutofillOnAllViewTypes:Z

.field private blacklist mShouldEnableMultilineFilter:Z

.field private blacklist mShouldIgnoreCredentialViews:Z

.field private blacklist mShouldIncludeAllChildrenViewInAssistStructure:Z

.field private blacklist mShouldIncludeAllViewsWithAutofillTypeNotNoneInAssistStructure:Z

.field private blacklist mShouldIncludeInvisibleViewInAssistStructure:Z

.field private blacklist mShowAutofillDialogCalled:Z

.field private greylist-max-o mState:I

.field private greylist-max-o mTrackedViews:Landroid/view/autofill/AutofillManager$TrackedViews;


# direct methods
.method public static synthetic blacklist $r8$lambda$6L-gkTsocqFiBrWEAPgS-oeVDx0(Landroid/view/autofill/AutofillManager;)V
    .registers 1

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->lambda$onVisibleForAutofill$0()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$LZn6gmGF-oMJDCxrIIzgsI8Un_A(Landroid/view/autofill/AutofillManager;Ljava/lang/ref/WeakReference;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/autofill/AutofillManager;->lambda$showAutofillDialog$3(Ljava/lang/ref/WeakReference;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$RqegKQ0ttNAT6vJZMD9Tyxd2DXM(Landroid/view/autofill/AutofillManager;Ljava/lang/ref/WeakReference;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/autofill/AutofillManager;->lambda$showAutofillDialog$4(Ljava/lang/ref/WeakReference;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAllTrackedViews(Landroid/view/autofill/AutofillManager;)Landroid/util/ArraySet;
    .registers 1

    iget-object p0, p0, Landroid/view/autofill/AutofillManager;->mAllTrackedViews:Landroid/util/ArraySet;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContext(Landroid/view/autofill/AutofillManager;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsFillRequested(Landroid/view/autofill/AutofillManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    iget-object p0, p0, Landroid/view/autofill/AutofillManager;->mIsFillRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLock(Landroid/view/autofill/AutofillManager;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSessionId(Landroid/view/autofill/AutofillManager;)I
    .registers 1

    iget p0, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTrackedViews(Landroid/view/autofill/AutofillManager;)Landroid/view/autofill/AutofillManager$TrackedViews;
    .registers 1

    iget-object p0, p0, Landroid/view/autofill/AutofillManager;->mTrackedViews:Landroid/view/autofill/AutofillManager$TrackedViews;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmShowAutofillDialogCalled(Landroid/view/autofill/AutofillManager;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/view/autofill/AutofillManager;->mShowAutofillDialogCalled:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mauthenticate(Landroid/view/autofill/AutofillManager;IILandroid/content/IntentSender;Landroid/content/Intent;Z)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Landroid/view/autofill/AutofillManager;->authenticate(IILandroid/content/IntentSender;Landroid/content/Intent;Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mautofill(Landroid/view/autofill/AutofillManager;ILjava/util/List;Ljava/util/List;Z)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/autofill/AutofillManager;->autofill(ILjava/util/List;Ljava/util/List;Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mautofillContent(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;Landroid/content/ClipData;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/view/autofill/AutofillManager;->autofillContent(ILandroid/view/autofill/AutofillId;Landroid/content/ClipData;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdispatchUnhandledKey(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;Landroid/view/KeyEvent;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/view/autofill/AutofillManager;->dispatchUnhandledKey(ILandroid/view/autofill/AutofillId;Landroid/view/KeyEvent;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mfinishSessionLocked(Landroid/view/autofill/AutofillManager;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/autofill/AutofillManager;->finishSessionLocked(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetAugmentedAutofillClient(Landroid/view/autofill/AutofillManager;Lcom/android/internal/os/IResultReceiver;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/autofill/AutofillManager;->getAugmentedAutofillClient(Lcom/android/internal/os/IResultReceiver;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetClient(Landroid/view/autofill/AutofillManager;)Landroid/view/autofill/AutofillManager$AutofillClient;
    .registers 1

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$misClientVisibleForAutofillLocked(Landroid/view/autofill/AutofillManager;)Z
    .registers 1

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isClientVisibleForAutofillLocked()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyCallback(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/view/autofill/AutofillManager;->notifyCallback(ILandroid/view/autofill/AutofillId;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyDisableAutofill(Landroid/view/autofill/AutofillManager;JLandroid/content/ComponentName;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/view/autofill/AutofillManager;->notifyDisableAutofill(JLandroid/content/ComponentName;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyNoFillUi(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/view/autofill/AutofillManager;->notifyNoFillUi(ILandroid/view/autofill/AutofillId;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monGetCredentialException(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/autofill/AutofillManager;->onGetCredentialException(ILandroid/view/autofill/AutofillId;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monGetCredentialResponse(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;Landroid/credentials/GetCredentialResponse;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/view/autofill/AutofillManager;->onGetCredentialResponse(ILandroid/view/autofill/AutofillId;Landroid/credentials/GetCredentialResponse;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mrequestHideFillUi(Landroid/view/autofill/AutofillManager;Landroid/view/autofill/AutofillId;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/autofill/AutofillManager;->requestHideFillUi(Landroid/view/autofill/AutofillId;Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mrequestShowFillUi(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;IILandroid/graphics/Rect;Landroid/view/autofill/IAutofillWindowPresenter;)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Landroid/view/autofill/AutofillManager;->requestShowFillUi(ILandroid/view/autofill/AutofillId;IILandroid/graphics/Rect;Landroid/view/autofill/IAutofillWindowPresenter;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mrequestShowSoftInput(Landroid/view/autofill/AutofillManager;Landroid/view/autofill/AutofillId;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/autofill/AutofillManager;->requestShowSoftInput(Landroid/view/autofill/AutofillId;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetFillDialogTriggerIds(Landroid/view/autofill/AutofillManager;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/autofill/AutofillManager;->setFillDialogTriggerIds(Ljava/util/List;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetSaveUiState(Landroid/view/autofill/AutofillManager;IZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/autofill/AutofillManager;->setSaveUiState(IZ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetSessionFinished(Landroid/view/autofill/AutofillManager;ILjava/util/List;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/autofill/AutofillManager;->setSessionFinished(ILjava/util/List;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetState(Landroid/view/autofill/AutofillManager;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/autofill/AutofillManager;->setState(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetTrackedViews(Landroid/view/autofill/AutofillManager;I[Landroid/view/autofill/AutofillId;ZZ[Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillId;Z)V
    .registers 8

    invoke-direct/range {p0 .. p7}, Landroid/view/autofill/AutofillManager;->setTrackedViews(I[Landroid/view/autofill/AutofillId;ZZ[Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillId;Z)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 375
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_6

    .line 376
    const/4 v0, 0x2

    goto :goto_7

    .line 377
    :cond_6
    const/4 v0, 0x0

    :goto_7
    sput v0, Landroid/view/autofill/AutofillManager;->DEFAULT_LOGGING_LEVEL:I

    .line 375
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/view/autofill/IAutoFillManager;)V
    .registers 7

    .line 967
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 617
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, p0, Landroid/view/autofill/AutofillManager;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 630
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    .line 646
    const v0, 0x7fffffff

    iput v0, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    .line 649
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/autofill/AutofillManager;->mState:I

    .line 734
    iput-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mIsTriggerFillRequestOnUnimportantViewEnabled:Z

    .line 743
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Landroid/view/autofill/AutofillManager;->mNonAutofillableImeActionIdSet:Ljava/util/Set;

    .line 747
    iput-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mIsPackageFullyDeniedForAutofill:Z

    .line 751
    iput-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mIsPackagePartiallyDeniedForAutofill:Z

    .line 754
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Landroid/view/autofill/AutofillManager;->mDeniedActivitySet:Ljava/util/Set;

    .line 757
    iput-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mIsPackageFullyAllowedForAutofill:Z

    .line 762
    iput-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mIsPackagePartiallyAllowedForAutofill:Z

    .line 765
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Landroid/view/autofill/AutofillManager;->mAllowedActivitySet:Ljava/util/Set;

    .line 799
    iput-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mShowAutofillDialogCalled:Z

    .line 802
    iput-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mShouldIgnoreCredentialViews:Z

    .line 808
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Landroid/view/autofill/AutofillManager;->mAllTrackedViews:Landroid/util/ArraySet;

    .line 811
    iput-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mFillReAttemptNeeded:Z

    .line 813
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/view/autofill/AutofillManager;->mFingerprintToViewMap:Ljava/util/Map;

    .line 968
    sget-boolean v1, Landroid/view/autofill/Helper;->sVerbose:Z

    const-string v2, "AutofillManager"

    if-eqz v1, :cond_72

    .line 969
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Constructing AutofillManager instance: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " with context: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    :cond_72
    const-string v1, "context cannot be null"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iput-object v1, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    .line 973
    iput-object p2, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    .line 974
    invoke-virtual {p1}, Landroid/content/Context;->getAutofillOptions()Landroid/content/AutofillOptions;

    move-result-object p1

    iput-object p1, p0, Landroid/view/autofill/AutofillManager;->mOptions:Landroid/content/AutofillOptions;

    .line 975
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Landroid/view/autofill/AutofillManager;->mIsFillRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 976
    invoke-static {}, Landroid/view/autofill/AutofillStateFingerprint;->createInstance()Landroid/view/autofill/AutofillStateFingerprint;

    move-result-object p1

    iput-object p1, p0, Landroid/view/autofill/AutofillManager;->mAutofillStateFingerprint:Landroid/view/autofill/AutofillStateFingerprint;

    .line 978
    invoke-static {}, Landroid/view/autofill/AutofillFeatureFlags;->isFillDialogEnabled()Z

    move-result p1

    iput-boolean p1, p0, Landroid/view/autofill/AutofillManager;->mIsFillDialogEnabled:Z

    .line 979
    invoke-static {}, Landroid/view/autofill/AutofillFeatureFlags;->getFillDialogEnabledHints()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/view/autofill/AutofillManager;->mFillDialogEnabledHints:[Ljava/lang/String;

    .line 981
    nop

    .line 982
    invoke-static {}, Landroid/view/autofill/AutofillFeatureFlags;->isFillAndSaveDialogDisabledForCredentialManager()Z

    move-result p1

    iput-boolean p1, p0, Landroid/view/autofill/AutofillManager;->mIsFillAndSaveDialogDisabledForCredentialManager:Z

    .line 984
    sget-boolean p1, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz p1, :cond_d0

    .line 985
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Fill dialog is enabled:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean p2, p0, Landroid/view/autofill/AutofillManager;->mIsFillDialogEnabled:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", hints="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Landroid/view/autofill/AutofillManager;->mFillDialogEnabledHints:[Ljava/lang/String;

    .line 986
    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 985
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    :cond_d0
    iget-object p1, p0, Landroid/view/autofill/AutofillManager;->mOptions:Landroid/content/AutofillOptions;

    const/4 p2, 0x1

    if-eqz p1, :cond_ef

    .line 990
    iget-object p1, p0, Landroid/view/autofill/AutofillManager;->mOptions:Landroid/content/AutofillOptions;

    iget p1, p1, Landroid/content/AutofillOptions;->loggingLevel:I

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_df

    move p1, p2

    goto :goto_e0

    :cond_df
    move p1, v0

    :goto_e0
    sput-boolean p1, Landroid/view/autofill/Helper;->sDebug:Z

    .line 991
    iget-object p1, p0, Landroid/view/autofill/AutofillManager;->mOptions:Landroid/content/AutofillOptions;

    iget p1, p1, Landroid/content/AutofillOptions;->loggingLevel:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_ec

    move p1, p2

    goto :goto_ed

    :cond_ec
    move p1, v0

    :goto_ed
    sput-boolean p1, Landroid/view/autofill/Helper;->sVerbose:Z

    .line 994
    :cond_ef
    nop

    .line 995
    invoke-static {}, Landroid/view/autofill/AutofillFeatureFlags;->isTriggerFillRequestOnUnimportantViewEnabled()Z

    move-result p1

    iput-boolean p1, p0, Landroid/view/autofill/AutofillManager;->mIsTriggerFillRequestOnUnimportantViewEnabled:Z

    .line 997
    nop

    .line 998
    invoke-static {}, Landroid/view/autofill/AutofillFeatureFlags;->isTriggerFillRequestOnFilteredImportantViewsEnabled()Z

    move-result p1

    iput-boolean p1, p0, Landroid/view/autofill/AutofillManager;->mIsTriggerFillRequestOnFilteredImportantViewsEnabled:Z

    .line 1000
    nop

    .line 1001
    invoke-static {}, Landroid/view/autofill/AutofillFeatureFlags;->shouldEnableAutofillOnAllViewTypes()Z

    move-result p1

    iput-boolean p1, p0, Landroid/view/autofill/AutofillManager;->mShouldEnableAutofillOnAllViewTypes:Z

    .line 1003
    nop

    .line 1004
    invoke-static {}, Landroid/view/autofill/AutofillFeatureFlags;->getNonAutofillableImeActionIdSetFromFlag()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Landroid/view/autofill/AutofillManager;->mNonAutofillableImeActionIdSet:Ljava/util/Set;

    .line 1006
    nop

    .line 1007
    invoke-static {}, Landroid/view/autofill/AutofillFeatureFlags;->shouldEnableMultilineFilter()Z

    move-result p1

    iput-boolean p1, p0, Landroid/view/autofill/AutofillManager;->mShouldEnableMultilineFilter:Z

    .line 1009
    invoke-static {}, Landroid/view/autofill/AutofillFeatureFlags;->getDenylistStringFromFlag()Ljava/lang/String;

    move-result-object p1

    .line 1010
    invoke-static {}, Landroid/view/autofill/AutofillFeatureFlags;->getAllowlistStringFromFlag()Ljava/lang/String;

    move-result-object v1

    .line 1012
    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1014
    nop

    .line 1015
    invoke-direct {p0, p1, v2}, Landroid/view/autofill/AutofillManager;->isPackageFullyAllowedOrDeniedForAutofill(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Landroid/view/autofill/AutofillManager;->mIsPackageFullyDeniedForAutofill:Z

    .line 1017
    nop

    .line 1018
    invoke-direct {p0, v1, v2}, Landroid/view/autofill/AutofillManager;->isPackageFullyAllowedOrDeniedForAutofill(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Landroid/view/autofill/AutofillManager;->mIsPackageFullyAllowedForAutofill:Z

    .line 1020
    iget-boolean v3, p0, Landroid/view/autofill/AutofillManager;->mIsPackageFullyDeniedForAutofill:Z

    if-nez v3, :cond_139

    .line 1021
    nop

    .line 1022
    invoke-direct {p0, p1, v2}, Landroid/view/autofill/AutofillManager;->isPackagePartiallyDeniedOrAllowedForAutofill(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Landroid/view/autofill/AutofillManager;->mIsPackagePartiallyDeniedForAutofill:Z

    .line 1025
    :cond_139
    iget-boolean v3, p0, Landroid/view/autofill/AutofillManager;->mIsPackageFullyAllowedForAutofill:Z

    if-nez v3, :cond_144

    .line 1026
    nop

    .line 1027
    invoke-direct {p0, v1, v2}, Landroid/view/autofill/AutofillManager;->isPackagePartiallyDeniedOrAllowedForAutofill(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Landroid/view/autofill/AutofillManager;->mIsPackagePartiallyAllowedForAutofill:Z

    .line 1030
    :cond_144
    iget-boolean v3, p0, Landroid/view/autofill/AutofillManager;->mIsPackagePartiallyDeniedForAutofill:Z

    if-eqz v3, :cond_14e

    .line 1031
    invoke-direct {p0, p1, v2}, Landroid/view/autofill/AutofillManager;->getDeniedOrAllowedActivitySetFromString(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Landroid/view/autofill/AutofillManager;->mDeniedActivitySet:Ljava/util/Set;

    .line 1035
    :cond_14e
    iget-boolean p1, p0, Landroid/view/autofill/AutofillManager;->mIsPackagePartiallyAllowedForAutofill:Z

    if-eqz p1, :cond_158

    .line 1036
    invoke-direct {p0, v1, v2}, Landroid/view/autofill/AutofillManager;->getDeniedOrAllowedActivitySetFromString(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Landroid/view/autofill/AutofillManager;->mAllowedActivitySet:Ljava/util/Set;

    .line 1040
    :cond_158
    nop

    .line 1041
    invoke-static {}, Landroid/view/autofill/AutofillFeatureFlags;->shouldIncludeAllViewsAutofillTypeNotNoneInAssistStructrue()Z

    move-result p1

    iput-boolean p1, p0, Landroid/view/autofill/AutofillManager;->mShouldIncludeAllViewsWithAutofillTypeNotNoneInAssistStructure:Z

    .line 1043
    nop

    .line 1044
    invoke-static {}, Landroid/view/autofill/AutofillFeatureFlags;->shouldIncludeAllChildrenViewInAssistStructure()Z

    move-result p1

    iput-boolean p1, p0, Landroid/view/autofill/AutofillManager;->mShouldIncludeAllChildrenViewInAssistStructure:Z

    .line 1046
    nop

    .line 1047
    invoke-static {}, Landroid/view/autofill/AutofillFeatureFlags;->shouldAlwaysIncludeWebviewInAssistStructure()Z

    move-result p1

    iput-boolean p1, p0, Landroid/view/autofill/AutofillManager;->mShouldAlwaysIncludeWebviewInAssistStructure:Z

    .line 1049
    nop

    .line 1050
    invoke-static {}, Landroid/view/autofill/AutofillFeatureFlags;->shouldIncludeInvisibleViewInAssistStructure()Z

    move-result p1

    iput-boolean p1, p0, Landroid/view/autofill/AutofillManager;->mShouldIncludeInvisibleViewInAssistStructure:Z

    .line 1052
    invoke-static {}, Landroid/view/autofill/AutofillFeatureFlags;->shouldIgnoreRelayoutWhenAuthPending()Z

    move-result p1

    iput-boolean p1, p0, Landroid/view/autofill/AutofillManager;->mRelayoutFixDeprecated:Z

    .line 1053
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/Flags;->relayoutFix()Z

    move-result p1

    if-eqz p1, :cond_188

    invoke-static {}, Landroid/view/autofill/AutofillFeatureFlags;->enableRelayoutFixes()Z

    move-result p1

    if-eqz p1, :cond_188

    move p1, p2

    goto :goto_189

    :cond_188
    move p1, v0

    :goto_189
    iput-boolean p1, p0, Landroid/view/autofill/AutofillManager;->mRelayoutFix:Z

    .line 1054
    invoke-static {}, Landroid/view/autofill/AutofillFeatureFlags;->enableRelativeLocationForRelayout()Z

    move-result p1

    iput-boolean p1, p0, Landroid/view/autofill/AutofillManager;->mRelativePositionForRelayout:Z

    .line 1055
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/Flags;->autofillCredmanIntegration()Z

    move-result p1

    iput-boolean p1, p0, Landroid/view/autofill/AutofillManager;->mIsCredmanIntegrationEnabled:Z

    .line 1056
    nop

    .line 1057
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/Flags;->improveFillDialogAconfig()Z

    move-result p1

    if-eqz p1, :cond_1a5

    invoke-static {}, Landroid/view/autofill/AutofillFeatureFlags;->isImproveFillDialogEnabled()Z

    move-result p1

    if-eqz p1, :cond_1a5

    move v0, p2

    :cond_1a5
    iput-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mImproveFillDialogEnabled:Z

    .line 1058
    return-void
.end method

.method private greylist-max-o addEnteredIdLocked(Landroid/view/autofill/AutofillId;)V
    .registers 4

    .line 2093
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mEnteredIds:Landroid/util/ArraySet;

    if-nez v0, :cond_c

    .line 2094
    new-instance v0, Landroid/util/ArraySet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v0, p0, Landroid/view/autofill/AutofillManager;->mEnteredIds:Landroid/util/ArraySet;

    .line 2096
    :cond_c
    invoke-virtual {p1}, Landroid/view/autofill/AutofillId;->resetSessionId()V

    .line 2097
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mEnteredIds:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2098
    return-void
.end method

.method private blacklist authenticate(IILandroid/content/IntentSender;Landroid/content/Intent;Z)V
    .registers 9

    .line 3132
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3133
    :try_start_3
    iget v1, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    if-ne p1, v1, :cond_3c

    .line 3134
    iget-boolean p1, p0, Landroid/view/autofill/AutofillManager;->mRelayoutFixDeprecated:Z

    if-nez p1, :cond_f

    iget-boolean p1, p0, Landroid/view/autofill/AutofillManager;->mRelayoutFix:Z

    if-eqz p1, :cond_30

    .line 3135
    :cond_f
    const/4 p1, 0x7

    iput p1, p0, Landroid/view/autofill/AutofillManager;->mState:I

    .line 3136
    sget-boolean p1, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz p1, :cond_30

    .line 3137
    const-string p1, "AutofillManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "entering STATE_PENDING_AUTHENTICATION : mRelayoutFix:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/view/autofill/AutofillManager;->mRelayoutFix:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3141
    :cond_30
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object p1

    .line 3142
    if-eqz p1, :cond_3c

    .line 3145
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/autofill/AutofillManager;->mOnInvisibleCalled:Z

    .line 3146
    invoke-interface {p1, p2, p3, p4, p5}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientAuthenticate(ILandroid/content/IntentSender;Landroid/content/Intent;Z)V

    .line 3150
    :cond_3c
    monitor-exit v0

    .line 3151
    return-void

    .line 3150
    :catchall_3e
    move-exception p1

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3 .. :try_end_40} :catchall_3e

    throw p1
.end method

.method private blacklist autofill(ILjava/util/List;Ljava/util/List;Z)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/view/autofill/AutofillId;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/autofill/AutofillValue;",
            ">;Z)V"
        }
    .end annotation

    .line 3399
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3400
    :try_start_3
    iget v0, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    if-eq p1, v0, :cond_9

    .line 3401
    monitor-exit v1

    return-void

    .line 3404
    :cond_9
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object p1

    .line 3405
    if-nez p1, :cond_11

    .line 3406
    monitor-exit v1

    return-void

    .line 3409
    :cond_11
    nop

    .line 3410
    invoke-static {p2}, Landroid/view/autofill/Helper;->toArray(Ljava/util/Collection;)[Landroid/view/autofill/AutofillId;

    move-result-object v0

    .line 3409
    invoke-interface {p1, v0}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientFindViewsByAutofillIdTraversal([Landroid/view/autofill/AutofillId;)[Landroid/view/View;

    move-result-object v3

    .line 3412
    const/4 v7, 0x0

    move-object v2, p0

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-virtual/range {v2 .. v7}, Landroid/view/autofill/AutofillManager;->autofill([Landroid/view/View;Ljava/util/List;Ljava/util/List;ZZ)V

    .line 3413
    monitor-exit v1

    .line 3414
    return-void

    .line 3413
    :catchall_24
    move-exception v0

    move-object p1, v0

    monitor-exit v1
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_24

    throw p1
.end method

.method private blacklist autofillContent(ILandroid/view/autofill/AutofillId;Landroid/content/ClipData;)V
    .registers 8

    .line 3517
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3518
    :try_start_3
    iget v1, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    if-eq p1, v1, :cond_9

    .line 3519
    monitor-exit v0

    return-void

    .line 3521
    :cond_9
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object p1

    .line 3522
    if-nez p1, :cond_11

    .line 3523
    monitor-exit v0

    return-void

    .line 3525
    :cond_11
    invoke-interface {p1, p2}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientFindViewByAutofillIdTraversal(Landroid/view/autofill/AutofillId;)Landroid/view/View;

    move-result-object p1

    .line 3526
    if-nez p1, :cond_34

    .line 3530
    const-string p1, "AutofillManager"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "autofillContent(): no view with id "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3531
    invoke-direct {p0, p2}, Landroid/view/autofill/AutofillManager;->reportAutofillContentFailure(Landroid/view/autofill/AutofillId;)V

    .line 3532
    monitor-exit v0

    return-void

    .line 3534
    :cond_34
    new-instance v1, Landroid/view/ContentInfo$Builder;

    const/4 v2, 0x4

    invoke-direct {v1, p3, v2}, Landroid/view/ContentInfo$Builder;-><init>(Landroid/content/ClipData;I)V

    invoke-virtual {v1}, Landroid/view/ContentInfo$Builder;->build()Landroid/view/ContentInfo;

    move-result-object v1

    .line 3535
    invoke-virtual {p1, v1}, Landroid/view/View;->performReceiveContent(Landroid/view/ContentInfo;)Landroid/view/ContentInfo;

    move-result-object v1

    .line 3536
    if-eqz v1, :cond_75

    .line 3537
    const-string v1, "AutofillManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "autofillContent(): receiver could not insert content: id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", view="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ", clip="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3539
    invoke-direct {p0, p2}, Landroid/view/autofill/AutofillManager;->reportAutofillContentFailure(Landroid/view/autofill/AutofillId;)V

    .line 3540
    monitor-exit v0

    return-void

    .line 3542
    :cond_75
    iget-object p1, p0, Landroid/view/autofill/AutofillManager;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 p2, 0x391

    invoke-direct {p0, p2}, Landroid/view/autofill/AutofillManager;->newLog(I)Landroid/metrics/LogMaker;

    move-result-object p2

    .line 3543
    const/4 p3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x392

    invoke-virtual {p2, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object p2

    .line 3544
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 v1, 0x393

    invoke-virtual {p2, v1, p3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object p2

    .line 3542
    invoke-virtual {p1, p2}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 3545
    monitor-exit v0

    .line 3546
    return-void

    .line 3545
    :catchall_97
    move-exception p1

    monitor-exit v0
    :try_end_99
    .catchall {:try_start_3 .. :try_end_99} :catchall_97

    throw p1
.end method

.method private greylist-max-o cancelLocked()V
    .registers 2

    .line 2383
    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    if-nez v0, :cond_b

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isActiveLocked()Z

    move-result v0

    if-nez v0, :cond_b

    .line 2384
    return-void

    .line 2386
    :cond_b
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->cancelSessionLocked()V

    .line 2387
    return-void
.end method

.method private greylist-max-o cancelSessionLocked()V
    .registers 4

    .line 2840
    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelSessionLocked(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getStateAsStringLocked()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutofillManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2842
    :cond_20
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isActiveLocked()Z

    move-result v0

    if-nez v0, :cond_27

    return-void

    .line 2845
    :cond_27
    :try_start_27
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    iget v1, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/view/autofill/IAutoFillManager;->cancelSession(II)V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_34} :catch_3a

    .line 2848
    nop

    .line 2850
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/view/autofill/AutofillManager;->resetSessionLocked(Z)V

    .line 2851
    return-void

    .line 2846
    :catch_3a
    move-exception v0

    .line 2847
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private blacklist commitLocked(I)V
    .registers 3

    .line 2354
    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    if-nez v0, :cond_b

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isActiveLocked()Z

    move-result v0

    if-nez v0, :cond_b

    .line 2355
    return-void

    .line 2357
    :cond_b
    invoke-direct {p0, p1}, Landroid/view/autofill/AutofillManager;->finishSessionLocked(I)V

    .line 2358
    return-void
.end method

.method private greylist-max-o dispatchUnhandledKey(ILandroid/view/autofill/AutofillId;Landroid/view/KeyEvent;)V
    .registers 6

    .line 3154
    invoke-direct {p0, p2}, Landroid/view/autofill/AutofillManager;->findView(Landroid/view/autofill/AutofillId;)Landroid/view/View;

    move-result-object p2

    .line 3155
    if-nez p2, :cond_7

    .line 3156
    return-void

    .line 3159
    :cond_7
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3160
    :try_start_a
    iget v1, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    if-ne v1, p1, :cond_17

    .line 3161
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object p1

    .line 3163
    if-eqz p1, :cond_17

    .line 3164
    invoke-interface {p1, p2, p3}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientDispatchUnhandledKey(Landroid/view/View;Landroid/view/KeyEvent;)V

    .line 3167
    :cond_17
    monitor-exit v0

    .line 3168
    return-void

    .line 3167
    :catchall_19
    move-exception p1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_a .. :try_end_1b} :catchall_19

    throw p1
.end method

.method private greylist-max-o findView(Landroid/view/autofill/AutofillId;)Landroid/view/View;
    .registers 3

    .line 3941
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v0

    .line 3942
    if-eqz v0, :cond_b

    .line 3943
    invoke-interface {v0, p1}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientFindViewByAutofillIdTraversal(Landroid/view/autofill/AutofillId;)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 3945
    :cond_b
    const/4 p1, 0x0

    return-object p1
.end method

.method private blacklist finishSessionLocked(I)V
    .registers 5

    .line 2825
    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finishSessionLocked(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getStateAsStringLocked()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutofillManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2827
    :cond_20
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isActiveLocked()Z

    move-result v0

    if-nez v0, :cond_27

    return-void

    .line 2830
    :cond_27
    :try_start_27
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    iget v1, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-interface {v0, v1, v2, p1}, Landroid/view/autofill/IAutoFillManager;->finishSession(III)V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_34} :catch_3a

    .line 2833
    nop

    .line 2835
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Landroid/view/autofill/AutofillManager;->resetSessionLocked(Z)V

    .line 2836
    return-void

    .line 2831
    :catch_3a
    move-exception p1

    .line 2832
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method private blacklist getAugmentedAutofillClient(Lcom/android/internal/os/IResultReceiver;)V
    .registers 6

    .line 3737
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3738
    :try_start_3
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mAugmentedAutofillServiceClient:Landroid/view/autofill/IAugmentedAutofillManagerClient;

    if-nez v1, :cond_f

    .line 3739
    new-instance v1, Landroid/view/autofill/AutofillManager$AugmentedAutofillManagerClient;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/view/autofill/AutofillManager$AugmentedAutofillManagerClient;-><init>(Landroid/view/autofill/AutofillManager;Landroid/view/autofill/AutofillManager-IA;)V

    iput-object v1, p0, Landroid/view/autofill/AutofillManager;->mAugmentedAutofillServiceClient:Landroid/view/autofill/IAugmentedAutofillManagerClient;

    .line 3741
    :cond_f
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3742
    const-string v2, "android.view.autofill.extra.AUGMENTED_AUTOFILL_CLIENT"

    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mAugmentedAutofillServiceClient:Landroid/view/autofill/IAugmentedAutofillManagerClient;

    .line 3743
    invoke-interface {v3}, Landroid/view/autofill/IAugmentedAutofillManagerClient;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 3742
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_2e

    .line 3746
    const/4 v2, 0x0

    :try_start_20
    invoke-interface {p1, v2, v1}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_23} :catch_24
    .catchall {:try_start_20 .. :try_end_23} :catchall_2e

    .line 3749
    goto :goto_2c

    .line 3747
    :catch_24
    move-exception p1

    .line 3748
    :try_start_25
    const-string v1, "AutofillManager"

    const-string v2, "Could not send AugmentedAutofillClient back:"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3750
    :goto_2c
    monitor-exit v0

    .line 3751
    return-void

    .line 3750
    :catchall_2e
    move-exception p1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_25 .. :try_end_30} :catchall_2e

    throw p1
.end method

.method private static greylist-max-o getAutofillId(Landroid/view/View;I)Landroid/view/autofill/AutofillId;
    .registers 3

    .line 2735
    new-instance v0, Landroid/view/autofill/AutofillId;

    invoke-virtual {p0}, Landroid/view/View;->getAutofillViewId()I

    move-result p0

    invoke-direct {v0, p0, p1}, Landroid/view/autofill/AutofillId;-><init>(II)V

    return-object v0
.end method

.method private greylist-max-o getClient()Landroid/view/autofill/AutofillManager$AutofillClient;
    .registers 4

    .line 2610
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAutofillClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v0

    .line 2611
    if-nez v0, :cond_36

    sget-boolean v1, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_36

    .line 2612
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No AutofillClient for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " on context "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AutofillManager"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2615
    :cond_36
    return-object v0
.end method

.method public static greylist-max-o getDatasetIdFromAuthenticationId(I)I
    .registers 2

    .line 614
    const v0, 0xffff

    and-int/2addr p0, v0

    return p0
.end method

.method private blacklist getDeniedOrAllowedActivitySetFromString(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1196
    const-string v1, ";"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 1199
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr v0, p2

    add-int/lit8 v0, v0, 0x1

    .line 1201
    if-lt v0, v1, :cond_33

    .line 1202
    const-string p1, "AutofillManager"

    const-string p2, "Failed to get denied activity names from list because it\'s wrongly formatted"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    return-object p1

    .line 1206
    :cond_33
    nop

    .line 1207
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1210
    const-string p2, ","

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1213
    new-instance p2, Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    return-object p2
.end method

.method private blacklist getImeStateFlag(Landroid/view/View;)I
    .registers 4

    .line 1833
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 1835
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    .line 1836
    if-eqz p1, :cond_17

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/WindowInsets;->isVisible(I)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 1837
    const/16 p1, 0x80

    return p1

    .line 1839
    :cond_17
    return v0
.end method

.method public static greylist-max-o getRequestIdFromAuthenticationId(I)I
    .registers 1

    .line 603
    shr-int/lit8 p0, p0, 0x10

    return p0
.end method

.method public static blacklist getSmartSuggestionModeToString(I)Ljava/lang/String;
    .registers 3

    .line 4069
    packed-switch p0, :pswitch_data_1e

    .line 4075
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INVALID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4073
    :pswitch_17
    const-string p0, "SYSTEM"

    return-object p0

    .line 4071
    :pswitch_1a
    const-string p0, "OFF"

    return-object p0

    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_17
    .end packed-switch
.end method

.method private static greylist-max-o getStateAsString(I)Ljava/lang/String;
    .registers 3

    .line 4045
    packed-switch p0, :pswitch_data_30

    .line 4063
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INVALID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4051
    :pswitch_17
    const-string p0, "PENDING_AUTHENTICATION"

    return-object p0

    .line 4061
    :pswitch_1a
    const-string p0, "UNKNOWN_FAILED"

    return-object p0

    .line 4059
    :pswitch_1d
    const-string p0, "UNKNOWN_COMPAT_MODE"

    return-object p0

    .line 4057
    :pswitch_20
    const-string p0, "DISABLED_BY_SERVICE"

    return-object p0

    .line 4055
    :pswitch_23
    const-string p0, "SHOWING_SAVE_UI"

    return-object p0

    .line 4053
    :pswitch_26
    const-string p0, "FINISHED"

    return-object p0

    .line 4049
    :pswitch_29
    const-string p0, "ACTIVE"

    return-object p0

    .line 4047
    :pswitch_2c
    const-string p0, "UNKNOWN"

    return-object p0

    nop

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
    .end packed-switch
.end method

.method private greylist-max-o getStateAsStringLocked()Ljava/lang/String;
    .registers 2

    .line 4040
    iget v0, p0, Landroid/view/autofill/AutofillManager;->mState:I

    invoke-static {v0}, Landroid/view/autofill/AutofillManager;->getStateAsString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    .line 3256
    if-nez p1, :cond_6

    const-string/jumbo p1, "null"

    goto :goto_a

    :cond_6
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_a
    return-object p1
.end method

.method private blacklist handleFailedIdsLocked(Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/autofill/AutofillId;",
            ">;)V"
        }
    .end annotation

    .line 3345
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Landroid/view/autofill/AutofillManager;->handleFailedIdsLocked(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    .line 3346
    return-void
.end method

.method private blacklist handleFailedIdsLocked(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/autofill/AutofillId;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/autofill/AutofillValue;",
            ">;ZZ)V"
        }
    .end annotation

    .line 3352
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const-string v1, "AutofillManager"

    if-nez v0, :cond_22

    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_22

    .line 3353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "autofill(): total failed views: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3356
    :cond_22
    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mRelayoutFix:Z

    if-eqz v0, :cond_34

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_34

    .line 3363
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mFillReAttemptNeeded:Z

    .line 3364
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mAutofillStateFingerprint:Landroid/view/autofill/AutofillStateFingerprint;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/autofill/AutofillStateFingerprint;->storeFailedIdsAndValues(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    .line 3368
    :cond_34
    :try_start_34
    iget-object p2, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    iget p3, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-interface {p2, p3, p1, p4, v0}, Landroid/view/autofill/IAutoFillManager;->setAutofillFailure(ILjava/util/List;ZI)V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_41} :catch_74

    .line 3374
    nop

    .line 3375
    iget-boolean p2, p0, Landroid/view/autofill/AutofillManager;->mRelayoutFix:Z

    if-eqz p2, :cond_73

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_73

    .line 3376
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/autofill/AutofillManager$AutofillClient;->isActivityResumed()Z

    move-result p1

    if-nez p1, :cond_60

    .line 3377
    sget-boolean p1, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz p1, :cond_73

    .line 3378
    const-string p1, "handleFailedIdsLocked(): failed id\'s exist, but activity not resumed"

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_73

    .line 3382
    :cond_60
    if-eqz p4, :cond_68

    .line 3383
    const-string p1, "handleFailedIdsLocked(): Attempted refill, but failed"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_73

    .line 3389
    :cond_68
    const-string p1, "handleFailedIdsLocked(): Attempting refill"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3390
    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->attemptRefill()Z

    .line 3391
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/view/autofill/AutofillManager;->mFillReAttemptNeeded:Z

    .line 3395
    :cond_73
    :goto_73
    return-void

    .line 3369
    :catch_74
    move-exception p1

    .line 3373
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method private blacklist hasFillDialogUiFeature()Z
    .registers 2

    .line 1829
    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mIsFillDialogEnabled:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mFillDialogEnabledHints:[Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method private greylist-max-o isActiveLocked()Z
    .registers 3

    .line 4081
    iget v0, p0, Landroid/view/autofill/AutofillManager;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_d

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isPendingAuthenticationLocked()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :cond_d
    :goto_d
    return v1
.end method

.method private greylist-max-o isClientDisablingEnterExitEvent()Z
    .registers 2

    .line 1872
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v0

    .line 1873
    if-eqz v0, :cond_e

    invoke-interface {v0}, Landroid/view/autofill/AutofillManager$AutofillClient;->isDisablingEnterExitEventForAutofill()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private greylist-max-o isClientVisibleForAutofillLocked()Z
    .registers 2

    .line 1867
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v0

    .line 1868
    if-eqz v0, :cond_e

    invoke-interface {v0}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientIsVisibleForAutofill()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private blacklist isCredmanRequested(Landroid/view/View;)Z
    .registers 3

    .line 3927
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 3928
    return v0

    .line 3930
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getViewCredentialHandler()Landroid/view/ViewCredentialHandler;

    move-result-object p1

    if-eqz p1, :cond_b

    const/4 v0, 0x1

    :cond_b
    return v0
.end method

.method private greylist-max-o isDisabledByServiceLocked()Z
    .registers 3

    .line 4091
    iget v0, p0, Landroid/view/autofill/AutofillManager;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method private greylist-max-o isFinishedLocked()Z
    .registers 3

    .line 4096
    iget v0, p0, Landroid/view/autofill/AutofillManager;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method private blacklist isPackageFullyAllowedOrDeniedForAutofill(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 1137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ":;"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_1c

    const/4 p1, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p1, 0x0

    :goto_1d
    return p1
.end method

.method private blacklist isPackagePartiallyDeniedOrAllowedForAutofill(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 1145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_1c

    const/4 p1, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p1, 0x0

    :goto_1d
    return p1
.end method

.method private blacklist isPassingImeActionCheck(Landroid/widget/EditText;)Z
    .registers 3

    .line 1110
    invoke-virtual {p1}, Landroid/widget/EditText;->getImeOptions()I

    move-result p1

    .line 1111
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mNonAutofillableImeActionIdSet:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 1112
    const-string p1, "AutofillManager"

    const-string/jumbo v0, "view not autofillable - not passing ime action check"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    const/4 p1, 0x0

    return p1

    .line 1115
    :cond_1a
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist isPassingMultilineCheck(Landroid/widget/EditText;)Z
    .registers 3

    .line 1126
    invoke-virtual {p1}, Landroid/widget/EditText;->getMinLines()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_11

    .line 1127
    const-string p1, "AutofillManager"

    const-string/jumbo v0, "view not autofillable - has multiline input type"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    const/4 p1, 0x0

    return p1

    .line 1130
    :cond_11
    return v0
.end method

.method private blacklist isPendingAuthenticationLocked()Z
    .registers 3

    .line 4086
    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mRelayoutFixDeprecated:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mRelayoutFix:Z

    if-eqz v0, :cond_f

    :cond_8
    iget v0, p0, Landroid/view/autofill/AutofillManager;->mState:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method private synthetic blacklist lambda$onVisibleForAutofill$0()V
    .registers 3

    .line 1404
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1405
    :try_start_3
    iget-boolean v1, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    if-eqz v1, :cond_16

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isActiveLocked()Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mTrackedViews:Landroid/view/autofill/AutofillManager$TrackedViews;

    if-eqz v1, :cond_16

    .line 1406
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mTrackedViews:Landroid/view/autofill/AutofillManager$TrackedViews;

    invoke-virtual {v1}, Landroid/view/autofill/AutofillManager$TrackedViews;->onVisibleForAutofillChangedLocked()V

    .line 1408
    :cond_16
    monitor-exit v0

    .line 1409
    return-void

    .line 1408
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method static synthetic blacklist lambda$requestShowSoftInput$2(Landroid/view/View;)V
    .registers 1

    .line 3773
    invoke-static {p0}, Landroid/view/autofill/AutofillManager;->requestShowSoftInputInViewThread(Landroid/view/View;)V

    return-void
.end method

.method private synthetic blacklist lambda$showAutofillDialog$3(Ljava/lang/ref/WeakReference;)V
    .registers 2

    .line 4150
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 4151
    if-eqz p1, :cond_b

    .line 4152
    invoke-virtual {p0, p1}, Landroid/view/autofill/AutofillManager;->notifyViewEntered(Landroid/view/View;)V

    .line 4154
    :cond_b
    return-void
.end method

.method private synthetic blacklist lambda$showAutofillDialog$4(Ljava/lang/ref/WeakReference;I)V
    .registers 5

    .line 4223
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 4224
    if-eqz p1, :cond_d

    .line 4225
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/view/autofill/AutofillManager;->notifyViewEntered(Landroid/view/View;ILandroid/graphics/Rect;I)V

    .line 4227
    :cond_d
    return-void
.end method

.method static synthetic blacklist lambda$tryAddServiceClientIfNeededLocked$1(Landroid/view/autofill/IAutoFillManager;Landroid/view/autofill/IAutoFillManagerClient;I)V
    .registers 3

    .line 2941
    :try_start_0
    invoke-interface {p0, p1, p2}, Landroid/view/autofill/IAutoFillManager;->removeClient(Landroid/view/autofill/IAutoFillManagerClient;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 2943
    goto :goto_5

    .line 2942
    :catch_4
    move-exception p0

    .line 2944
    :goto_5
    return-void
.end method

.method public static greylist-max-o makeAuthenticationId(II)I
    .registers 3

    .line 591
    shl-int/lit8 p0, p0, 0x10

    const v0, 0xffff

    and-int/2addr p1, v0

    or-int/2addr p0, p1

    return p0
.end method

.method private greylist-max-o newLog(I)Landroid/metrics/LogMaker;
    .registers 5

    .line 3558
    new-instance v0, Landroid/metrics/LogMaker;

    invoke-direct {v0, p1}, Landroid/metrics/LogMaker;-><init>(I)V

    iget p1, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    .line 3559
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v1, 0x5b0

    invoke-virtual {v0, v1, p1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object p1

    .line 3561
    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->isCompatibilityModeEnabledLocked()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 3562
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x586

    invoke-virtual {p1, v1, v0}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 3564
    :cond_21
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v0

    .line 3565
    if-nez v0, :cond_31

    .line 3567
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    goto :goto_43

    .line 3570
    :cond_31
    new-instance v1, Landroid/content/ComponentName;

    .line 3571
    invoke-interface {v0}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientGetComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-direct {v1, v0, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3572
    invoke-virtual {p1, v1}, Landroid/metrics/LogMaker;->setComponentName(Landroid/content/ComponentName;)Landroid/metrics/LogMaker;

    .line 3574
    :goto_43
    return-object p1
.end method

.method private blacklist notifyCallback(ILandroid/view/autofill/AutofillId;I)V
    .registers 7

    .line 3890
    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_31

    .line 3891
    const-string v0, "AutofillManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyCallback(): sessionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", autofillId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3894
    :cond_31
    invoke-direct {p0, p2}, Landroid/view/autofill/AutofillManager;->findView(Landroid/view/autofill/AutofillId;)Landroid/view/View;

    move-result-object v0

    .line 3895
    if-nez v0, :cond_38

    .line 3896
    return-void

    .line 3899
    :cond_38
    nop

    .line 3900
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3901
    :try_start_3c
    iget v2, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    if-ne v2, p1, :cond_49

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object p1

    if-eqz p1, :cond_49

    .line 3902
    iget-object p1, p0, Landroid/view/autofill/AutofillManager;->mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;

    goto :goto_4a

    .line 3904
    :cond_49
    const/4 p1, 0x0

    :goto_4a
    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_3c .. :try_end_4b} :catchall_60

    .line 3906
    if-eqz p1, :cond_5f

    .line 3907
    invoke-virtual {p2}, Landroid/view/autofill/AutofillId;->isVirtualInt()Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 3908
    nop

    .line 3909
    invoke-virtual {p2}, Landroid/view/autofill/AutofillId;->getVirtualChildIntId()I

    move-result p2

    .line 3908
    invoke-virtual {p1, v0, p2, p3}, Landroid/view/autofill/AutofillManager$AutofillCallback;->onAutofillEvent(Landroid/view/View;II)V

    goto :goto_5f

    .line 3911
    :cond_5c
    invoke-virtual {p1, v0, p3}, Landroid/view/autofill/AutofillManager$AutofillCallback;->onAutofillEvent(Landroid/view/View;I)V

    .line 3914
    :cond_5f
    :goto_5f
    return-void

    .line 3904
    :catchall_60
    move-exception p1

    :try_start_61
    monitor-exit v1
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_60

    throw p1
.end method

.method private blacklist notifyDisableAutofill(JLandroid/content/ComponentName;)V
    .registers 7

    .line 3841
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3842
    :try_start_3
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mOptions:Landroid/content/AutofillOptions;

    if-nez v1, :cond_9

    .line 3843
    monitor-exit v0

    return-void

    .line 3845
    :cond_9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    add-long/2addr v1, p1

    .line 3847
    const-wide/16 p1, 0x0

    cmp-long p1, v1, p1

    if-gez p1, :cond_19

    .line 3848
    const-wide v1, 0x7fffffffffffffffL

    .line 3850
    :cond_19
    if-eqz p3, :cond_3a

    .line 3851
    iget-object p1, p0, Landroid/view/autofill/AutofillManager;->mOptions:Landroid/content/AutofillOptions;

    iget-object p1, p1, Landroid/content/AutofillOptions;->disabledActivities:Landroid/util/ArrayMap;

    if-nez p1, :cond_2a

    .line 3852
    iget-object p1, p0, Landroid/view/autofill/AutofillManager;->mOptions:Landroid/content/AutofillOptions;

    new-instance p2, Landroid/util/ArrayMap;

    invoke-direct {p2}, Landroid/util/ArrayMap;-><init>()V

    iput-object p2, p1, Landroid/content/AutofillOptions;->disabledActivities:Landroid/util/ArrayMap;

    .line 3854
    :cond_2a
    iget-object p1, p0, Landroid/view/autofill/AutofillManager;->mOptions:Landroid/content/AutofillOptions;

    iget-object p1, p1, Landroid/content/AutofillOptions;->disabledActivities:Landroid/util/ArrayMap;

    invoke-virtual {p3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3e

    .line 3856
    :cond_3a
    iget-object p1, p0, Landroid/view/autofill/AutofillManager;->mOptions:Landroid/content/AutofillOptions;

    iput-wide v1, p1, Landroid/content/AutofillOptions;->appDisabledExpiration:J

    .line 3858
    :goto_3e
    monitor-exit v0

    .line 3859
    return-void

    .line 3858
    :catchall_40
    move-exception p1

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_3 .. :try_end_42} :catchall_40

    throw p1
.end method

.method private greylist-max-o notifyNoFillUi(ILandroid/view/autofill/AutofillId;I)V
    .registers 6

    .line 3872
    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_1d

    .line 3873
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifyNoFillUi(): sessionFinishedState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutofillManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3875
    :cond_1d
    invoke-direct {p0, p2}, Landroid/view/autofill/AutofillManager;->findView(Landroid/view/autofill/AutofillId;)Landroid/view/View;

    move-result-object v0

    .line 3876
    if-nez v0, :cond_24

    .line 3877
    return-void

    .line 3880
    :cond_24
    const/4 v0, 0x3

    invoke-direct {p0, p1, p2, v0}, Landroid/view/autofill/AutofillManager;->notifyCallback(ILandroid/view/autofill/AutofillId;I)V

    .line 3882
    if-eqz p3, :cond_2e

    .line 3884
    const/4 p1, 0x0

    invoke-direct {p0, p3, p1}, Landroid/view/autofill/AutofillManager;->setSessionFinished(ILjava/util/List;)V

    .line 3886
    :cond_2e
    return-void
.end method

.method private greylist-max-o notifyViewClicked(Landroid/view/autofill/AutofillId;)V
    .registers 6

    .line 2294
    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    if-nez v0, :cond_7

    .line 2295
    return-void

    .line 2297
    :cond_7
    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_30

    const-string v0, "AutofillManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyViewClicked(): id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", trigger="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mSaveTriggerId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2299
    :cond_30
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2300
    :try_start_33
    iget-boolean v1, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    if-eqz v1, :cond_78

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isActiveLocked()Z

    move-result v1

    if-nez v1, :cond_3e

    goto :goto_78

    .line 2303
    :cond_3e
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mSaveTriggerId:Landroid/view/autofill/AutofillId;

    if-eqz v1, :cond_76

    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mSaveTriggerId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v1, p1}, Landroid/view/autofill/AutofillId;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_76

    .line 2304
    sget-boolean v1, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_67

    const-string v1, "AutofillManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "triggering commit by click of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2305
    :cond_67
    const/4 p1, 0x3

    invoke-direct {p0, p1}, Landroid/view/autofill/AutofillManager;->commitLocked(I)V

    .line 2306
    iget-object p1, p0, Landroid/view/autofill/AutofillManager;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v1, 0x4cd

    invoke-direct {p0, v1}, Landroid/view/autofill/AutofillManager;->newLog(I)Landroid/metrics/LogMaker;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 2308
    :cond_76
    monitor-exit v0

    .line 2309
    return-void

    .line 2301
    :cond_78
    :goto_78
    monitor-exit v0

    return-void

    .line 2308
    :catchall_7a
    move-exception p1

    monitor-exit v0
    :try_end_7c
    .catchall {:try_start_33 .. :try_end_7c} :catchall_7a

    throw p1
.end method

.method private greylist-max-o notifyViewEntered(Landroid/view/View;I)V
    .registers 11

    .line 1877
    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1878
    return-void

    .line 1881
    :cond_7
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1882
    nop

    .line 1883
    :try_start_b
    invoke-virtual {p1}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/View;->getAutofillValue()Landroid/view/autofill/AutofillValue;

    move-result-object v6

    .line 1882
    const/4 v5, 0x0

    move-object v2, p0

    move-object v3, p1

    move v7, p2

    invoke-direct/range {v2 .. v7}, Landroid/view/autofill/AutofillManager;->notifyViewEnteredLocked(Landroid/view/View;Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;I)Landroid/view/autofill/AutofillManager$AutofillCallback;

    move-result-object p1

    .line 1884
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_b .. :try_end_1c} :catchall_25

    .line 1886
    if-eqz p1, :cond_24

    .line 1887
    iget-object p1, v2, Landroid/view/autofill/AutofillManager;->mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;

    const/4 p2, 0x3

    invoke-virtual {p1, v3, p2}, Landroid/view/autofill/AutofillManager$AutofillCallback;->onAutofillEvent(Landroid/view/View;I)V

    .line 1889
    :cond_24
    return-void

    .line 1884
    :catchall_25
    move-exception v0

    move-object p1, v0

    :try_start_27
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_25

    throw p1
.end method

.method private greylist-max-o notifyViewEntered(Landroid/view/View;ILandroid/graphics/Rect;I)V
    .registers 13

    .line 2010
    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    if-nez v0, :cond_7

    .line 2011
    return-void

    .line 2015
    :cond_7
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2016
    nop

    .line 2017
    :try_start_b
    invoke-static {p1, p2}, Landroid/view/autofill/AutofillManager;->getAutofillId(Landroid/view/View;I)Landroid/view/autofill/AutofillId;

    move-result-object v4

    .line 2016
    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v5, p3

    move v7, p4

    invoke-direct/range {v2 .. v7}, Landroid/view/autofill/AutofillManager;->notifyViewEnteredLocked(Landroid/view/View;Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;I)Landroid/view/autofill/AutofillManager$AutofillCallback;

    move-result-object p1

    .line 2018
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_b .. :try_end_19} :catchall_20

    .line 2020
    if-eqz p1, :cond_1f

    .line 2021
    const/4 p3, 0x3

    invoke-virtual {p1, v3, p2, p3}, Landroid/view/autofill/AutofillManager$AutofillCallback;->onAutofillEvent(Landroid/view/View;II)V

    .line 2024
    :cond_1f
    return-void

    .line 2018
    :catchall_20
    move-exception v0

    move-object p1, v0

    :try_start_22
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_20

    throw p1
.end method

.method private blacklist notifyViewEnteredLocked(Landroid/view/View;Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;I)Landroid/view/autofill/AutofillManager$AutofillCallback;
    .registers 14

    .line 2030
    invoke-direct {p0, p2, p5}, Landroid/view/autofill/AutofillManager;->shouldIgnoreViewEnteredLocked(Landroid/view/autofill/AutofillId;I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    .line 2032
    :cond_8
    invoke-direct {p0, p1}, Landroid/view/autofill/AutofillManager;->isCredmanRequested(Landroid/view/View;)Z

    move-result v0

    .line 2033
    invoke-direct {p0, v0}, Landroid/view/autofill/AutofillManager;->tryAddServiceClientIfNeededLocked(Z)Z

    move-result v0

    .line 2034
    const-string v2, "ignoring notifyViewEntered("

    const-string v3, "AutofillManager"

    if-nez v0, :cond_35

    .line 2035
    sget-boolean p1, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz p1, :cond_34

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "): no service client"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2036
    :cond_34
    return-object v1

    .line 2039
    :cond_35
    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    if-nez v0, :cond_5e

    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mEnabledForAugmentedAutofillOnly:Z

    if-nez v0, :cond_5e

    .line 2040
    sget-boolean p1, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz p1, :cond_5b

    .line 2041
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "): disabled"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2043
    :cond_5b
    iget-object p1, p0, Landroid/view/autofill/AutofillManager;->mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;

    return-object p1

    .line 2045
    :cond_5e
    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mIsCredmanIntegrationEnabled:Z

    if-eqz v0, :cond_6a

    invoke-direct {p0, p1}, Landroid/view/autofill/AutofillManager;->isCredmanRequested(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 2046
    or-int/lit16 p5, p5, 0x800

    .line 2048
    :cond_6a
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mIsFillRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2051
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isClientDisablingEnterExitEvent()Z

    move-result v0

    if-nez v0, :cond_ec

    .line 2052
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_85

    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isAnyPasswordInputType()Z

    move-result v0

    if-eqz v0, :cond_85

    .line 2053
    or-int/lit8 p5, p5, 0x4

    .line 2057
    :cond_85
    invoke-static {}, Landroid/view/autofill/AutofillFeatureFlags;->isFillAndSaveDialogDisabledForCredentialManager()Z

    move-result v0

    if-eqz v0, :cond_9b

    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mScreenHasCredmanField:Z

    if-eqz v0, :cond_9b

    .line 2059
    or-int/lit16 p5, p5, 0x400

    .line 2060
    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_9b

    .line 2061
    const-string/jumbo v0, "updating session with flag screen has credman view"

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2065
    :cond_9b
    invoke-direct {p0, p1}, Landroid/view/autofill/AutofillManager;->getImeStateFlag(Landroid/view/View;)I

    move-result p1

    or-int/2addr p1, p5

    .line 2067
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isActiveLocked()Z

    move-result p5

    if-nez p5, :cond_ac

    .line 2069
    invoke-direct {p0, p2, p3, p4, p1}, Landroid/view/autofill/AutofillManager;->startSessionLocked(Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;I)V

    move-object v2, p0

    move-object v3, p2

    goto :goto_e9

    .line 2072
    :cond_ac
    iget-boolean p5, p0, Landroid/view/autofill/AutofillManager;->mForAugmentedAutofillOnly:Z

    if-eqz p5, :cond_d8

    and-int/lit8 p5, p1, 0x1

    if-eqz p5, :cond_d8

    .line 2073
    sget-boolean p5, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz p5, :cond_d5

    .line 2074
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "notifyViewEntered("

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p5

    const-string v0, "): resetting mForAugmentedAutofillOnly on manual request"

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {v3, p5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2077
    :cond_d5
    const/4 p5, 0x0

    iput-boolean p5, p0, Landroid/view/autofill/AutofillManager;->mForAugmentedAutofillOnly:Z

    .line 2080
    :cond_d8
    and-int/lit8 p5, p1, 0x40

    if-eqz p5, :cond_e0

    .line 2081
    or-int/lit16 p1, p1, 0x100

    move v7, p1

    goto :goto_e1

    .line 2080
    :cond_e0
    move v7, p1

    .line 2084
    :goto_e1
    const/4 v6, 0x2

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v2 .. v7}, Landroid/view/autofill/AutofillManager;->updateSessionLocked(Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;II)V

    .line 2086
    :goto_e9
    invoke-direct {p0, v3}, Landroid/view/autofill/AutofillManager;->addEnteredIdLocked(Landroid/view/autofill/AutofillId;)V

    .line 2088
    :cond_ec
    return-object v1
.end method

.method private greylist-max-o notifyViewExitedLocked(Landroid/view/View;I)V
    .registers 10

    .line 2146
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->tryAddServiceClientIfNeededLocked()Z

    move-result v0

    .line 2148
    if-eqz v0, :cond_26

    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    if-nez v0, :cond_e

    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mEnabledForAugmentedAutofillOnly:Z

    if-eqz v0, :cond_26

    .line 2149
    :cond_e
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isActiveLocked()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 2151
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isClientDisablingEnterExitEvent()Z

    move-result v0

    if-nez v0, :cond_26

    .line 2152
    invoke-static {p1, p2}, Landroid/view/autofill/AutofillManager;->getAutofillId(Landroid/view/View;I)Landroid/view/autofill/AutofillId;

    move-result-object v2

    .line 2155
    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Landroid/view/autofill/AutofillManager;->updateSessionLocked(Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;II)V

    .line 2158
    :cond_26
    return-void
.end method

.method private blacklist notifyViewReadyInner(Landroid/view/autofill/AutofillId;[Ljava/lang/String;Z)V
    .registers 13

    .line 1729
    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->isImproveFillDialogEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    if-nez p3, :cond_9

    .line 1732
    return-void

    .line 1734
    :cond_9
    sget-boolean v0, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_26

    .line 1735
    const-string v0, "AutofillManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyViewReadyInner:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1738
    :cond_26
    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 1739
    return-void

    .line 1741
    :cond_2d
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1742
    :try_start_30
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mAllTrackedViews:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 1744
    monitor-exit v1

    return-void

    .line 1748
    :cond_3a
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mAllTrackedViews:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1749
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mTrackedViews:Landroid/view/autofill/AutofillManager$TrackedViews;

    if-eqz v0, :cond_48

    .line 1754
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mTrackedViews:Landroid/view/autofill/AutofillManager$TrackedViews;

    invoke-virtual {v0, p1}, Landroid/view/autofill/AutofillManager$TrackedViews;->checkViewState(Landroid/view/autofill/AutofillId;)V

    .line 1756
    :cond_48
    monitor-exit v1
    :try_end_49
    .catchall {:try_start_30 .. :try_end_49} :catchall_e8

    .line 1759
    iget-object p1, p0, Landroid/view/autofill/AutofillManager;->mIsFillRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_52

    .line 1760
    return-void

    .line 1765
    :cond_52
    invoke-static {}, Landroid/view/autofill/AutofillFeatureFlags;->isAutofillPccClassificationEnabled()Z

    move-result p1

    if-eqz p1, :cond_83

    .line 1766
    iget-object p1, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1772
    :try_start_5b
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isActiveLocked()Z

    move-result v0

    if-nez v0, :cond_7d

    .line 1773
    nop

    .line 1774
    invoke-direct {p0, p3}, Landroid/view/autofill/AutofillManager;->tryAddServiceClientIfNeededLocked(Z)Z

    move-result v0

    .line 1775
    if-eqz v0, :cond_71

    .line 1776
    sget-object v0, Landroid/view/autofill/AutofillId;->NO_AUTOFILL_ID:Landroid/view/autofill/AutofillId;

    const/16 v1, 0x200

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v2, v1}, Landroid/view/autofill/AutofillManager;->startSessionLocked(Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;I)V

    goto :goto_7d

    .line 1779
    :cond_71
    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_7d

    .line 1780
    const-string v0, "AutofillManager"

    const-string/jumbo v1, "not starting session: no service client"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1784
    :cond_7d
    :goto_7d
    monitor-exit p1

    goto :goto_83

    :catchall_7f
    move-exception v0

    move-object p2, v0

    monitor-exit p1
    :try_end_82
    .catchall {:try_start_5b .. :try_end_82} :catchall_7f

    throw p2

    .line 1788
    :cond_83
    :goto_83
    nop

    .line 1789
    iget-boolean p1, p0, Landroid/view/autofill/AutofillManager;->mIsFillDialogEnabled:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_8a

    .line 1790
    goto :goto_b2

    .line 1791
    :cond_8a
    const/4 p1, 0x0

    if-eqz p2, :cond_b1

    .line 1793
    array-length v1, p2

    move v2, p1

    move v3, v2

    :goto_90
    if-ge v2, v1, :cond_af

    aget-object v4, p2, v2

    .line 1794
    iget-object v5, p0, Landroid/view/autofill/AutofillManager;->mFillDialogEnabledHints:[Ljava/lang/String;

    array-length v6, v5

    move v7, p1

    :goto_98
    if-ge v7, v6, :cond_a8

    aget-object v8, v5, v7

    .line 1795
    invoke-virtual {v8, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a5

    .line 1796
    nop

    .line 1797
    move v3, v0

    goto :goto_a8

    .line 1794
    :cond_a5
    add-int/lit8 v7, v7, 0x1

    goto :goto_98

    .line 1800
    :cond_a8
    :goto_a8
    if-eqz v3, :cond_ac

    move v0, v3

    goto :goto_b2

    .line 1793
    :cond_ac
    add-int/lit8 v2, v2, 0x1

    goto :goto_90

    :cond_af
    move v0, v3

    goto :goto_b2

    .line 1791
    :cond_b1
    move v0, p1

    .line 1803
    :goto_b2
    if-eqz v0, :cond_e7

    .line 1804
    sget-boolean p1, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz p1, :cond_bf

    .line 1805
    const-string p1, "AutofillManager"

    const-string p2, "Triggering pre-emptive request for fill dialog."

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1807
    :cond_bf
    nop

    .line 1808
    nop

    .line 1809
    if-eqz p3, :cond_d2

    .line 1810
    sget-boolean p1, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz p1, :cond_ce

    .line 1811
    const-string p1, "AutofillManager"

    const-string p2, "Pre fill request is triggered for credMan"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1813
    :cond_ce
    const/16 p1, 0x850

    move v5, p1

    goto :goto_d5

    .line 1809
    :cond_d2
    const/16 p1, 0x50

    move v5, p1

    .line 1815
    :goto_d5
    iget-object p1, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1821
    :try_start_d8
    sget-object v2, Landroid/view/autofill/AutofillId;->NO_AUTOFILL_ID:Landroid/view/autofill/AutofillId;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/view/autofill/AutofillManager;->notifyViewEnteredLocked(Landroid/view/View;Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;I)Landroid/view/autofill/AutofillManager$AutofillCallback;

    .line 1823
    monitor-exit p1

    goto :goto_e7

    :catchall_e3
    move-exception v0

    move-object p2, v0

    monitor-exit p1
    :try_end_e6
    .catchall {:try_start_d8 .. :try_end_e6} :catchall_e3

    throw p2

    .line 1825
    :cond_e7
    :goto_e7
    return-void

    .line 1756
    :catchall_e8
    move-exception v0

    move-object p1, v0

    :try_start_ea
    monitor-exit v1
    :try_end_eb
    .catchall {:try_start_ea .. :try_end_eb} :catchall_e8

    throw p1
.end method

.method private greylist-max-o notifyViewVisibilityChangedInternal(Landroid/view/View;IZZ)V
    .registers 8

    .line 1952
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1953
    :try_start_3
    iget-boolean v1, p0, Landroid/view/autofill/AutofillManager;->mForAugmentedAutofillOnly:Z

    if-eqz v1, :cond_15

    .line 1954
    sget-boolean p1, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz p1, :cond_13

    .line 1955
    const-string p1, "AutofillManager"

    const-string/jumbo p2, "notifyViewVisibilityChanged(): ignoring on augmented only mode"

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1957
    :cond_13
    monitor-exit v0

    return-void

    .line 1959
    :cond_15
    iget-boolean v1, p0, Landroid/view/autofill/AutofillManager;->mRelayoutFixDeprecated:Z

    if-eqz v1, :cond_2c

    iget v1, p0, Landroid/view/autofill/AutofillManager;->mState:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_2c

    .line 1960
    sget-boolean p1, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz p1, :cond_2a

    .line 1961
    const-string p1, "AutofillManager"

    const-string/jumbo p2, "notifyViewVisibilityChanged(): ignoring in auth pending mode"

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1963
    :cond_2a
    monitor-exit v0

    return-void

    .line 1965
    :cond_2c
    iget-boolean v1, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    if-eqz v1, :cond_c8

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isActiveLocked()Z

    move-result v1

    if-eqz v1, :cond_c8

    .line 1966
    if-eqz p4, :cond_3d

    invoke-static {p1, p2}, Landroid/view/autofill/AutofillManager;->getAutofillId(Landroid/view/View;I)Landroid/view/autofill/AutofillId;

    move-result-object p2

    goto :goto_41

    .line 1967
    :cond_3d
    invoke-virtual {p1}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object p2

    .line 1968
    :goto_41
    sget-boolean p4, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz p4, :cond_68

    const-string p4, "AutofillManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "visibility changed for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1969
    :cond_68
    if-nez p3, :cond_9b

    iget-object p4, p0, Landroid/view/autofill/AutofillManager;->mFillableIds:Landroid/util/ArraySet;

    if-eqz p4, :cond_9b

    .line 1970
    iget-object p4, p0, Landroid/view/autofill/AutofillManager;->mFillableIds:Landroid/util/ArraySet;

    invoke-virtual {p4, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_9b

    .line 1971
    sget-boolean p4, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz p4, :cond_98

    const-string p4, "AutofillManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Hidding UI when view "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " became invisible"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1972
    :cond_98
    invoke-direct {p0, p2, p1}, Landroid/view/autofill/AutofillManager;->requestHideFillUi(Landroid/view/autofill/AutofillId;Landroid/view/View;)V

    .line 1975
    :cond_9b
    iget-object p1, p0, Landroid/view/autofill/AutofillManager;->mTrackedViews:Landroid/view/autofill/AutofillManager$TrackedViews;

    if-eqz p1, :cond_a5

    .line 1976
    iget-object p1, p0, Landroid/view/autofill/AutofillManager;->mTrackedViews:Landroid/view/autofill/AutofillManager$TrackedViews;

    invoke-virtual {p1, p2, p3}, Landroid/view/autofill/AutofillManager$TrackedViews;->notifyViewVisibilityChangedLocked(Landroid/view/autofill/AutofillId;Z)V

    goto :goto_d0

    .line 1977
    :cond_a5
    sget-boolean p1, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz p1, :cond_d0

    .line 1978
    const-string p1, "AutofillManager"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Ignoring visibility change on "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ": no tracked views"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d0

    .line 1980
    :cond_c8
    if-nez p4, :cond_d0

    if-eqz p3, :cond_d0

    .line 1981
    invoke-direct {p0, p1}, Landroid/view/autofill/AutofillManager;->startAutofillIfNeededLocked(Landroid/view/View;)Z

    goto :goto_d1

    .line 1980
    :cond_d0
    :goto_d0
    nop

    .line 1983
    :goto_d1
    monitor-exit v0

    .line 1984
    return-void

    .line 1983
    :catchall_d3
    move-exception p1

    monitor-exit v0
    :try_end_d5
    .catchall {:try_start_3 .. :try_end_d5} :catchall_d3

    throw p1
.end method

.method private blacklist onGetCredentialException(ILandroid/view/autofill/AutofillId;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    .line 3261
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3262
    :try_start_3
    iget v1, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    if-eq p1, v1, :cond_11

    .line 3263
    const-string p1, "AutofillManager"

    const-string/jumbo p2, "onGetCredentialException afm sessionIds don\'t match"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3264
    monitor-exit v0

    return-void

    .line 3267
    :cond_11
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object p1

    .line 3268
    if-nez p1, :cond_21

    .line 3269
    const-string p1, "AutofillManager"

    const-string/jumbo p2, "onGetCredentialException afm client id null"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3270
    monitor-exit v0

    return-void

    .line 3272
    :cond_21
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3273
    new-instance v2, Ljava/util/ArrayList;

    .line 3274
    invoke-static {p2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v2}, Landroid/view/autofill/Helper;->toArray(Ljava/util/Collection;)[Landroid/view/autofill/AutofillId;

    move-result-object v2

    .line 3273
    invoke-interface {p1, v2}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientFindViewsByAutofillIdTraversal([Landroid/view/autofill/AutofillId;)[Landroid/view/View;

    move-result-object p1

    .line 3275
    if-eqz p1, :cond_85

    array-length v2, p1

    if-nez v2, :cond_3d

    goto :goto_85

    .line 3280
    :cond_3d
    const/4 v2, 0x0

    aget-object p1, p1, v2

    .line 3281
    if-nez p1, :cond_66

    .line 3282
    const-string v2, "AutofillManager"

    const-string/jumbo v3, "onGetCredentialException View is null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3287
    const-string v2, "AutofillManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onGetCredentialException(): no View with id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3288
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3290
    :cond_66
    invoke-virtual {p2}, Landroid/view/autofill/AutofillId;->isVirtualInt()Z

    move-result p2

    if-eqz p2, :cond_75

    .line 3291
    const-string p1, "AutofillManager"

    const-string/jumbo p2, "onGetCredentialException afm client id is virtual"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_80

    .line 3294
    :cond_75
    const-string p2, "AutofillManager"

    const-string/jumbo v2, "onGetCredentialException afm client id is NOT virtual"

    invoke-static {p2, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3295
    invoke-virtual {p1, p3, p4}, Landroid/view/View;->onGetCredentialException(Ljava/lang/String;Ljava/lang/String;)V

    .line 3297
    :goto_80
    invoke-direct {p0, v1}, Landroid/view/autofill/AutofillManager;->handleFailedIdsLocked(Ljava/util/ArrayList;)V

    .line 3298
    monitor-exit v0

    .line 3299
    return-void

    .line 3276
    :cond_85
    :goto_85
    const-string p1, "AutofillManager"

    const-string/jumbo p2, "onGetCredentialException afm client view not found"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3277
    monitor-exit v0

    return-void

    .line 3298
    :catchall_8f
    move-exception p1

    monitor-exit v0
    :try_end_91
    .catchall {:try_start_3 .. :try_end_91} :catchall_8f

    throw p1
.end method

.method private blacklist onGetCredentialResponse(ILandroid/view/autofill/AutofillId;Landroid/credentials/GetCredentialResponse;)V
    .registers 9

    .line 3303
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3304
    :try_start_3
    iget v1, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    if-eq p1, v1, :cond_11

    .line 3305
    const-string p1, "AutofillManager"

    const-string/jumbo p2, "onGetCredentialResponse afm sessionIds don\'t match"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3306
    monitor-exit v0

    return-void

    .line 3309
    :cond_11
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object p1

    .line 3310
    if-nez p1, :cond_21

    .line 3311
    const-string p1, "AutofillManager"

    const-string/jumbo p2, "onGetCredentialResponse afm client id null"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3312
    monitor-exit v0

    return-void

    .line 3314
    :cond_21
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3315
    new-instance v2, Ljava/util/ArrayList;

    .line 3316
    invoke-static {p2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v2}, Landroid/view/autofill/Helper;->toArray(Ljava/util/Collection;)[Landroid/view/autofill/AutofillId;

    move-result-object v2

    .line 3315
    invoke-interface {p1, v2}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientFindViewsByAutofillIdTraversal([Landroid/view/autofill/AutofillId;)[Landroid/view/View;

    move-result-object p1

    .line 3317
    if-eqz p1, :cond_85

    array-length v2, p1

    if-nez v2, :cond_3d

    goto :goto_85

    .line 3322
    :cond_3d
    const/4 v2, 0x0

    aget-object p1, p1, v2

    .line 3323
    if-nez p1, :cond_66

    .line 3324
    const-string v2, "AutofillManager"

    const-string/jumbo v3, "onGetCredentialResponse View is null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3329
    const-string v2, "AutofillManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onGetCredentialResponse(): no View with id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3330
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3332
    :cond_66
    invoke-virtual {p2}, Landroid/view/autofill/AutofillId;->isVirtualInt()Z

    move-result p2

    if-eqz p2, :cond_75

    .line 3333
    const-string p1, "AutofillManager"

    const-string/jumbo p2, "onGetCredentialResponse afm client id is virtual"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_80

    .line 3336
    :cond_75
    const-string p2, "AutofillManager"

    const-string/jumbo v2, "onGetCredentialResponse afm client id is NOT virtual"

    invoke-static {p2, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3337
    invoke-virtual {p1, p3}, Landroid/view/View;->onGetCredentialResponse(Landroid/credentials/GetCredentialResponse;)V

    .line 3339
    :goto_80
    invoke-direct {p0, v1}, Landroid/view/autofill/AutofillManager;->handleFailedIdsLocked(Ljava/util/ArrayList;)V

    .line 3340
    monitor-exit v0

    .line 3341
    return-void

    .line 3318
    :cond_85
    :goto_85
    const-string p1, "AutofillManager"

    const-string/jumbo p2, "onGetCredentialResponse afm client view not found"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3319
    monitor-exit v0

    return-void

    .line 3340
    :catchall_8f
    move-exception p1

    monitor-exit v0
    :try_end_91
    .catchall {:try_start_3 .. :try_end_91} :catchall_8f

    throw p1
.end method

.method private blacklist reportAutofillContentFailure(Landroid/view/autofill/AutofillId;)V
    .registers 6

    .line 3550
    :try_start_0
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    iget v1, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    .line 3551
    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    .line 3550
    const/4 v3, 0x0

    invoke-interface {v0, v1, p1, v3, v2}, Landroid/view/autofill/IAutoFillManager;->setAutofillFailure(ILjava/util/List;ZI)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_14

    .line 3554
    nop

    .line 3555
    return-void

    .line 3552
    :catch_14
    move-exception p1

    .line 3553
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method private greylist-max-o requestHideFillUi(Landroid/view/autofill/AutofillId;Landroid/view/View;)V
    .registers 6

    .line 3815
    nop

    .line 3816
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3821
    :try_start_4
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v1

    .line 3822
    const/4 v2, 0x0

    if-eqz v1, :cond_15

    .line 3823
    invoke-interface {v1}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientRequestHideFillUi()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 3824
    iput-object v2, p0, Landroid/view/autofill/AutofillManager;->mIdShownFillUi:Landroid/view/autofill/AutofillId;

    .line 3825
    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;

    .line 3828
    :cond_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_2b

    .line 3830
    if-eqz v2, :cond_2a

    .line 3831
    invoke-virtual {p1}, Landroid/view/autofill/AutofillId;->isVirtualInt()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_27

    .line 3832
    invoke-virtual {p1}, Landroid/view/autofill/AutofillId;->getVirtualChildIntId()I

    move-result p1

    invoke-virtual {v2, p2, p1, v1}, Landroid/view/autofill/AutofillManager$AutofillCallback;->onAutofillEvent(Landroid/view/View;II)V

    goto :goto_2a

    .line 3835
    :cond_27
    invoke-virtual {v2, p2, v1}, Landroid/view/autofill/AutofillManager$AutofillCallback;->onAutofillEvent(Landroid/view/View;I)V

    .line 3838
    :cond_2a
    :goto_2a
    return-void

    .line 3828
    :catchall_2b
    move-exception p1

    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw p1
.end method

.method private greylist-max-o requestHideFillUi(Landroid/view/autofill/AutofillId;Z)V
    .registers 6

    .line 3797
    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_8

    :cond_4
    invoke-direct {p0, p1}, Landroid/view/autofill/AutofillManager;->findView(Landroid/view/autofill/AutofillId;)Landroid/view/View;

    move-result-object v0

    .line 3798
    :goto_8
    sget-boolean v1, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_2f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestHideFillUi("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): anchor = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AutofillManager"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3799
    :cond_2f
    if-nez v0, :cond_3d

    .line 3800
    if-eqz p2, :cond_3c

    .line 3803
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object p1

    .line 3804
    if-eqz p1, :cond_3c

    .line 3805
    invoke-interface {p1}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientRequestHideFillUi()Z

    .line 3808
    :cond_3c
    return-void

    .line 3810
    :cond_3d
    invoke-direct {p0, p1, v0}, Landroid/view/autofill/AutofillManager;->requestHideFillUi(Landroid/view/autofill/AutofillId;Landroid/view/View;)V

    .line 3811
    return-void
.end method

.method private greylist-max-o requestShowFillUi(ILandroid/view/autofill/AutofillId;IILandroid/graphics/Rect;Landroid/view/autofill/IAutofillWindowPresenter;)V
    .registers 14

    .line 3100
    invoke-direct {p0, p2}, Landroid/view/autofill/AutofillManager;->findView(Landroid/view/autofill/AutofillId;)Landroid/view/View;

    move-result-object v1

    .line 3101
    if-nez v1, :cond_7

    .line 3102
    return-void

    .line 3105
    :cond_7
    nop

    .line 3106
    iget-object v6, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 3107
    :try_start_b
    iget v0, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    if-ne v0, p1, :cond_24

    .line 3108
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v0

    .line 3110
    if-eqz v0, :cond_24

    .line 3111
    move v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-interface/range {v0 .. v5}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientRequestShowFillUi(Landroid/view/View;IILandroid/graphics/Rect;Landroid/view/autofill/IAutofillWindowPresenter;)Z

    move-result p1

    if-eqz p1, :cond_24

    .line 3113
    iget-object p1, p0, Landroid/view/autofill/AutofillManager;->mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;

    .line 3114
    iput-object p2, p0, Landroid/view/autofill/AutofillManager;->mIdShownFillUi:Landroid/view/autofill/AutofillId;

    goto :goto_25

    .line 3118
    :cond_24
    const/4 p1, 0x0

    :goto_25
    monitor-exit v6
    :try_end_26
    .catchall {:try_start_b .. :try_end_26} :catchall_3b

    .line 3120
    if-eqz p1, :cond_3a

    .line 3121
    invoke-virtual {p2}, Landroid/view/autofill/AutofillId;->isVirtualInt()Z

    move-result p3

    const/4 p4, 0x1

    if-eqz p3, :cond_37

    .line 3122
    invoke-virtual {p2}, Landroid/view/autofill/AutofillId;->getVirtualChildIntId()I

    move-result p2

    invoke-virtual {p1, v1, p2, p4}, Landroid/view/autofill/AutofillManager$AutofillCallback;->onAutofillEvent(Landroid/view/View;II)V

    goto :goto_3a

    .line 3125
    :cond_37
    invoke-virtual {p1, v1, p4}, Landroid/view/autofill/AutofillManager$AutofillCallback;->onAutofillEvent(Landroid/view/View;I)V

    .line 3128
    :cond_3a
    :goto_3a
    return-void

    .line 3118
    :catchall_3b
    move-exception v0

    move-object p1, v0

    :try_start_3d
    monitor-exit v6
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3b

    throw p1
.end method

.method private blacklist requestShowSoftInput(Landroid/view/autofill/AutofillId;)V
    .registers 6

    .line 3754
    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    const-string v1, "AutofillManager"

    if-eqz v0, :cond_23

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestShowSoftInput("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3755
    :cond_23
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v0

    .line 3756
    if-nez v0, :cond_2a

    .line 3757
    return-void

    .line 3759
    :cond_2a
    invoke-interface {v0, p1}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientFindViewByAutofillIdTraversal(Landroid/view/autofill/AutofillId;)Landroid/view/View;

    move-result-object p1

    .line 3760
    if-nez p1, :cond_3a

    .line 3761
    sget-boolean p1, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz p1, :cond_39

    const-string p1, "View is not found"

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3762
    :cond_39
    return-void

    .line 3764
    :cond_3a
    invoke-virtual {p1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 3765
    if-nez v0, :cond_4a

    .line 3766
    sget-boolean p1, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz p1, :cond_49

    const-string p1, "Ignoring requestShowSoftInput due to no handler in view"

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3767
    :cond_49
    return-void

    .line 3769
    :cond_4a
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v2, v3, :cond_66

    .line 3772
    sget-boolean v2, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_5d

    const-string v2, "Scheduling showSoftInput() on the view UI thread"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3773
    :cond_5d
    new-instance v1, Landroid/view/autofill/AutofillManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Landroid/view/autofill/AutofillManager$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_69

    .line 3775
    :cond_66
    invoke-static {p1}, Landroid/view/autofill/AutofillManager;->requestShowSoftInputInViewThread(Landroid/view/View;)V

    .line 3777
    :goto_69
    return-void
.end method

.method private static blacklist requestShowSoftInputInViewThread(Landroid/view/View;)V
    .registers 4

    .line 3781
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v0

    const-string v1, "AutofillManager"

    if-nez v0, :cond_e

    .line 3782
    const-string p0, "Ignoring requestShowSoftInput() due to non-focused view"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3783
    return-void

    .line 3785
    :cond_e
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 3787
    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result p0

    .line 3788
    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_39

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " InputMethodManager.showSoftInput returns "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3789
    :cond_39
    return-void
.end method

.method private greylist-max-o resetSessionLocked(Z)V
    .registers 5

    .line 2855
    const v0, 0x7fffffff

    iput v0, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    .line 2856
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/autofill/AutofillManager;->mState:I

    .line 2857
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/autofill/AutofillManager;->mTrackedViews:Landroid/view/autofill/AutofillManager$TrackedViews;

    .line 2858
    iput-object v1, p0, Landroid/view/autofill/AutofillManager;->mFillableIds:Landroid/util/ArraySet;

    .line 2859
    iput-object v1, p0, Landroid/view/autofill/AutofillManager;->mSaveTriggerId:Landroid/view/autofill/AutofillId;

    .line 2860
    iput-object v1, p0, Landroid/view/autofill/AutofillManager;->mIdShownFillUi:Landroid/view/autofill/AutofillId;

    .line 2861
    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mIsFillRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2862
    iput-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mShowAutofillDialogCalled:Z

    .line 2863
    iput-object v1, p0, Landroid/view/autofill/AutofillManager;->mFillDialogTriggerIds:Ljava/util/List;

    .line 2864
    iput-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mScreenHasCredmanField:Z

    .line 2865
    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mAllTrackedViews:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    .line 2866
    if-eqz p1, :cond_25

    .line 2867
    iput-object v1, p0, Landroid/view/autofill/AutofillManager;->mEnteredIds:Landroid/util/ArraySet;

    .line 2869
    :cond_25
    iput-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mFillReAttemptNeeded:Z

    .line 2870
    iget-object p1, p0, Landroid/view/autofill/AutofillManager;->mFingerprintToViewMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 2871
    invoke-static {}, Landroid/view/autofill/AutofillStateFingerprint;->createInstance()Landroid/view/autofill/AutofillStateFingerprint;

    move-result-object p1

    iput-object p1, p0, Landroid/view/autofill/AutofillManager;->mAutofillStateFingerprint:Landroid/view/autofill/AutofillStateFingerprint;

    .line 2872
    return-void
.end method

.method private blacklist setAutofilledIfValuesIs(Landroid/view/View;Landroid/view/autofill/AutofillValue;Z)V
    .registers 8

    .line 3222
    invoke-virtual {p1}, Landroid/view/View;->getAutofillValue()Landroid/view/autofill/AutofillValue;

    move-result-object v0

    .line 3223
    invoke-static {v0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 3224
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3225
    :try_start_d
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

    const/4 v2, 0x1

    if-nez v1, :cond_19

    .line 3226
    new-instance v1, Landroid/view/autofill/ParcelableMap;

    invoke-direct {v1, v2}, Landroid/view/autofill/ParcelableMap;-><init>(I)V

    iput-object v1, p0, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

    .line 3228
    :cond_19
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

    invoke-virtual {p1}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v3

    invoke-virtual {v1, v3, p2}, Landroid/view/autofill/ParcelableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3229
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_d .. :try_end_23} :catchall_67

    .line 3230
    invoke-virtual {p1, v2, p3}, Landroid/view/View;->setAutofilled(ZZ)V

    .line 3231
    sget-boolean p2, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz p2, :cond_4c

    .line 3232
    const-string p2, "AutofillManager"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "View "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p1}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, " autofilled synchronously."

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3235
    :cond_4c
    :try_start_4c
    iget-object p2, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    iget p3, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    invoke-virtual {p1}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object p1

    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-interface {p2, p3, p1, v0}, Landroid/view/autofill/IAutoFillManager;->setViewAutofilled(ILandroid/view/autofill/AutofillId;I)V
    :try_end_5d
    .catch Landroid/os/RemoteException; {:try_start_4c .. :try_end_5d} :catch_5e

    goto :goto_66

    .line 3236
    :catch_5e
    move-exception p1

    .line 3240
    const-string p2, "AutofillManager"

    const-string p3, "Unable to log due to"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3241
    :goto_66
    goto :goto_b4

    .line 3229
    :catchall_67
    move-exception p1

    :try_start_68
    monitor-exit v0
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_67

    throw p1

    .line 3243
    :cond_6a
    sget-boolean p2, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz p2, :cond_b4

    .line 3244
    const-string p2, "AutofillManager"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "View "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p1}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, " "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, " from "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 3245
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " : didn\'t fill in synchronously. It may fill asynchronously."

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3244
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3249
    :cond_b4
    :goto_b4
    return-void
.end method

.method private blacklist setFillDialogTriggerIds(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/autofill/AutofillId;",
            ">;)V"
        }
    .end annotation

    .line 4109
    iput-object p1, p0, Landroid/view/autofill/AutofillManager;->mFillDialogTriggerIds:Ljava/util/List;

    .line 4110
    return-void
.end method

.method private greylist-max-o setNotifyOnClickLocked(Landroid/view/autofill/AutofillId;Z)V
    .registers 4

    .line 3665
    invoke-direct {p0, p1}, Landroid/view/autofill/AutofillManager;->findView(Landroid/view/autofill/AutofillId;)Landroid/view/View;

    move-result-object v0

    .line 3666
    if-nez v0, :cond_20

    .line 3667
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setNotifyOnClick(): invalid id: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AutofillManager"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3668
    return-void

    .line 3670
    :cond_20
    invoke-virtual {v0, p2}, Landroid/view/View;->setNotifyAutofillManagerOnClick(Z)V

    .line 3671
    return-void
.end method

.method private greylist-max-o setSaveUiState(IZ)V
    .registers 8

    .line 3674
    sget-boolean v0, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_27

    const-string v0, "AutofillManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSaveUiState("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3675
    :cond_27
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3676
    :try_start_2a
    iget v1, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_69

    .line 3680
    const-string v1, "AutofillManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setSaveUiState("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") called on existing session "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; cancelling it"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3682
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->cancelSessionLocked()V

    .line 3684
    :cond_69
    if-eqz p2, :cond_71

    .line 3685
    iput p1, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    .line 3686
    const/4 p1, 0x3

    iput p1, p0, Landroid/view/autofill/AutofillManager;->mState:I

    goto :goto_76

    .line 3688
    :cond_71
    iput v2, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    .line 3689
    const/4 p1, 0x0

    iput p1, p0, Landroid/view/autofill/AutofillManager;->mState:I

    .line 3691
    :goto_76
    monitor-exit v0

    .line 3692
    return-void

    .line 3691
    :catchall_78
    move-exception p1

    monitor-exit v0
    :try_end_7a
    .catchall {:try_start_2a .. :try_end_7a} :catchall_78

    throw p1
.end method

.method private blacklist setSessionFinished(ILjava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/view/autofill/AutofillId;",
            ">;)V"
        }
    .end annotation

    .line 3707
    const/4 v0, 0x0

    if-eqz p2, :cond_16

    .line 3708
    move v1, v0

    :goto_4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_16

    .line 3709
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/autofill/AutofillId;

    invoke-virtual {v2}, Landroid/view/autofill/AutofillId;->resetSessionId()V

    .line 3708
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 3712
    :cond_16
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3713
    :try_start_19
    sget-boolean v2, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_52

    .line 3714
    const-string v2, "AutofillManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setSessionFinished(): from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getStateAsStringLocked()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3715
    invoke-static {p1}, Landroid/view/autofill/AutofillManager;->getStateAsString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; autofillableIds="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3714
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3717
    :cond_52
    if-eqz p2, :cond_5b

    .line 3718
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2, p2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Landroid/view/autofill/AutofillManager;->mEnteredIds:Landroid/util/ArraySet;

    .line 3720
    :cond_5b
    const/4 p2, 0x5

    if-eq p1, p2, :cond_68

    const/4 p2, 0x6

    if-ne p1, p2, :cond_62

    goto :goto_68

    .line 3724
    :cond_62
    invoke-direct {p0, v0}, Landroid/view/autofill/AutofillManager;->resetSessionLocked(Z)V

    .line 3725
    iput p1, p0, Landroid/view/autofill/AutofillManager;->mState:I

    goto :goto_6e

    .line 3721
    :cond_68
    :goto_68
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Landroid/view/autofill/AutofillManager;->resetSessionLocked(Z)V

    .line 3722
    iput v0, p0, Landroid/view/autofill/AutofillManager;->mState:I

    .line 3727
    :goto_6e
    monitor-exit v1

    .line 3728
    return-void

    .line 3727
    :catchall_70
    move-exception p1

    monitor-exit v1
    :try_end_72
    .catchall {:try_start_19 .. :try_end_72} :catchall_70

    throw p1
.end method

.method private greylist-max-o setState(I)V
    .registers 8

    .line 3184
    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_36

    .line 3185
    const-string v0, "AutofillManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setState("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Landroid/view/autofill/AutofillManager;

    const-string v3, "SET_STATE_FLAG_"

    int-to-long v4, p1

    invoke-static {v2, v3, v4, v5}, Landroid/util/DebugUtils;->flagsToString(Ljava/lang/Class;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3188
    :cond_36
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3189
    and-int/lit8 v1, p1, 0x20

    const/4 v2, 0x1

    if-eqz v1, :cond_44

    .line 3190
    :try_start_3e
    iput-boolean v2, p0, Landroid/view/autofill/AutofillManager;->mForAugmentedAutofillOnly:Z

    .line 3192
    monitor-exit v0

    return-void

    .line 3209
    :catchall_42
    move-exception p1

    goto :goto_83

    .line 3194
    :cond_44
    and-int/lit8 v1, p1, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_4b

    move v1, v2

    goto :goto_4c

    :cond_4b
    move v1, v3

    :goto_4c
    iput-boolean v1, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    .line 3195
    iget-boolean v1, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    if-eqz v1, :cond_56

    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_59

    .line 3197
    :cond_56
    invoke-direct {p0, v2}, Landroid/view/autofill/AutofillManager;->resetSessionLocked(Z)V

    .line 3199
    :cond_59
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_70

    .line 3201
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/autofill/AutofillManager;->mServiceClient:Landroid/view/autofill/IAutoFillManagerClient;

    .line 3202
    iput-object v1, p0, Landroid/view/autofill/AutofillManager;->mAugmentedAutofillServiceClient:Landroid/view/autofill/IAugmentedAutofillManagerClient;

    .line 3203
    iget-object v4, p0, Landroid/view/autofill/AutofillManager;->mServiceClientCleaner:Lsun/misc/Cleaner;

    if-eqz v4, :cond_6d

    .line 3204
    iget-object v4, p0, Landroid/view/autofill/AutofillManager;->mServiceClientCleaner:Lsun/misc/Cleaner;

    invoke-virtual {v4}, Lsun/misc/Cleaner;->clean()V

    .line 3205
    iput-object v1, p0, Landroid/view/autofill/AutofillManager;->mServiceClientCleaner:Lsun/misc/Cleaner;

    .line 3207
    :cond_6d
    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->notifyReenableAutofill()V

    .line 3209
    :cond_70
    monitor-exit v0
    :try_end_71
    .catchall {:try_start_3e .. :try_end_71} :catchall_42

    .line 3210
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_77

    move v0, v2

    goto :goto_78

    :cond_77
    move v0, v3

    :goto_78
    sput-boolean v0, Landroid/view/autofill/Helper;->sDebug:Z

    .line 3211
    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_7f

    goto :goto_80

    :cond_7f
    move v2, v3

    :goto_80
    sput-boolean v2, Landroid/view/autofill/Helper;->sVerbose:Z

    .line 3212
    return-void

    .line 3209
    :goto_83
    :try_start_83
    monitor-exit v0
    :try_end_84
    .catchall {:try_start_83 .. :try_end_84} :catchall_42

    throw p1
.end method

.method private blacklist setTrackedViews(I[Landroid/view/autofill/AutofillId;ZZ[Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillId;Z)V
    .registers 13

    .line 3590
    if-eqz p6, :cond_5

    .line 3591
    invoke-virtual {p6}, Landroid/view/autofill/AutofillId;->resetSessionId()V

    .line 3593
    :cond_5
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 3594
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3595
    :try_start_d
    sget-boolean v2, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_92

    .line 3596
    const-string v2, "AutofillManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setTrackedViews(): sessionId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", trackedIds="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3597
    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", saveOnAllViewsInvisible="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", saveOnFinish="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", fillableIds="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3600
    invoke-static {p5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", saveTrigerId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mFillableIds="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/autofill/AutofillManager;->mFillableIds:Landroid/util/ArraySet;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", shouldGrabViewFingerprints="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mEnabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mSessionId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3596
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3608
    :cond_92
    iget-boolean v2, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    if-eqz v2, :cond_114

    iget v2, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    if-ne v2, p1, :cond_114

    .line 3609
    iput-boolean p4, p0, Landroid/view/autofill/AutofillManager;->mSaveOnFinish:Z

    .line 3610
    const/4 p1, 0x0

    if-eqz p5, :cond_be

    .line 3611
    iget-object p4, p0, Landroid/view/autofill/AutofillManager;->mFillableIds:Landroid/util/ArraySet;

    if-nez p4, :cond_ab

    .line 3612
    new-instance p4, Landroid/util/ArraySet;

    array-length v2, p5

    invoke-direct {p4, v2}, Landroid/util/ArraySet;-><init>(I)V

    iput-object p4, p0, Landroid/view/autofill/AutofillManager;->mFillableIds:Landroid/util/ArraySet;

    .line 3614
    :cond_ab
    array-length p4, p5

    move v2, p1

    :goto_ad
    if-ge v2, p4, :cond_be

    aget-object v3, p5, v2

    .line 3615
    if-eqz v3, :cond_bb

    .line 3616
    invoke-virtual {v3}, Landroid/view/autofill/AutofillId;->resetSessionId()V

    .line 3617
    iget-object v4, p0, Landroid/view/autofill/AutofillManager;->mFillableIds:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3614
    :cond_bb
    add-int/lit8 v2, v2, 0x1

    goto :goto_ad

    .line 3622
    :cond_be
    iget-object p4, p0, Landroid/view/autofill/AutofillManager;->mSaveTriggerId:Landroid/view/autofill/AutofillId;

    if-eqz p4, :cond_cf

    iget-object p4, p0, Landroid/view/autofill/AutofillManager;->mSaveTriggerId:Landroid/view/autofill/AutofillId;

    invoke-virtual {p4, p6}, Landroid/view/autofill/AutofillId;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_cf

    .line 3624
    iget-object p4, p0, Landroid/view/autofill/AutofillManager;->mSaveTriggerId:Landroid/view/autofill/AutofillId;

    invoke-direct {p0, p4, p1}, Landroid/view/autofill/AutofillManager;->setNotifyOnClickLocked(Landroid/view/autofill/AutofillId;Z)V

    .line 3627
    :cond_cf
    if-eqz p6, :cond_e1

    iget-object p4, p0, Landroid/view/autofill/AutofillManager;->mSaveTriggerId:Landroid/view/autofill/AutofillId;

    invoke-virtual {p6, p4}, Landroid/view/autofill/AutofillId;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_e1

    .line 3629
    iput-object p6, p0, Landroid/view/autofill/AutofillManager;->mSaveTriggerId:Landroid/view/autofill/AutofillId;

    .line 3630
    iget-object p4, p0, Landroid/view/autofill/AutofillManager;->mSaveTriggerId:Landroid/view/autofill/AutofillId;

    const/4 p5, 0x1

    invoke-direct {p0, p4, p5}, Landroid/view/autofill/AutofillManager;->setNotifyOnClickLocked(Landroid/view/autofill/AutofillId;Z)V

    .line 3633
    :cond_e1
    const/4 p4, 0x0

    if-nez p3, :cond_e5

    .line 3634
    move-object p2, p4

    .line 3637
    :cond_e5
    iget-object p3, p0, Landroid/view/autofill/AutofillManager;->mFillableIds:Landroid/util/ArraySet;

    if-eqz p3, :cond_ee

    .line 3638
    iget-object p3, p0, Landroid/view/autofill/AutofillManager;->mFillableIds:Landroid/util/ArraySet;

    invoke-virtual {v0, p3}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 3640
    :cond_ee
    if-eqz p2, :cond_100

    .line 3641
    array-length p3, p2

    :goto_f1
    if-ge p1, p3, :cond_100

    aget-object p5, p2, p1

    .line 3642
    if-eqz p5, :cond_fd

    .line 3643
    invoke-virtual {p5}, Landroid/view/autofill/AutofillId;->resetSessionId()V

    .line 3644
    invoke-virtual {v0, p5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3641
    :cond_fd
    add-int/lit8 p1, p1, 0x1

    goto :goto_f1

    .line 3649
    :cond_100
    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_112

    .line 3650
    new-instance p1, Landroid/view/autofill/AutofillManager$TrackedViews;

    invoke-static {v0}, Landroid/view/autofill/Helper;->toArray(Ljava/util/Collection;)[Landroid/view/autofill/AutofillId;

    move-result-object p3

    invoke-direct {p1, p0, p2, p3}, Landroid/view/autofill/AutofillManager$TrackedViews;-><init>(Landroid/view/autofill/AutofillManager;[Landroid/view/autofill/AutofillId;[Landroid/view/autofill/AutofillId;)V

    iput-object p1, p0, Landroid/view/autofill/AutofillManager;->mTrackedViews:Landroid/view/autofill/AutofillManager$TrackedViews;

    goto :goto_114

    .line 3652
    :cond_112
    iput-object p4, p0, Landroid/view/autofill/AutofillManager;->mTrackedViews:Landroid/view/autofill/AutofillManager$TrackedViews;

    .line 3655
    :cond_114
    :goto_114
    iget-boolean p1, p0, Landroid/view/autofill/AutofillManager;->mRelayoutFix:Z

    if-eqz p1, :cond_12a

    if-eqz p7, :cond_12a

    .line 3657
    iget-object p1, p0, Landroid/view/autofill/AutofillManager;->mAutofillStateFingerprint:Landroid/view/autofill/AutofillStateFingerprint;

    iget-boolean p2, p0, Landroid/view/autofill/AutofillManager;->mRelativePositionForRelayout:Z

    invoke-virtual {p1, p2}, Landroid/view/autofill/AutofillStateFingerprint;->setUseRelativePosition(Z)V

    .line 3658
    iget-object p1, p0, Landroid/view/autofill/AutofillManager;->mAutofillStateFingerprint:Landroid/view/autofill/AutofillStateFingerprint;

    .line 3659
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object p2

    .line 3658
    invoke-virtual {p1, p2, v0}, Landroid/view/autofill/AutofillStateFingerprint;->storeStatePriorToAuthentication(Landroid/view/autofill/AutofillManager$AutofillClient;Ljava/util/Set;)V

    .line 3661
    :cond_12a
    monitor-exit v1

    .line 3662
    return-void

    .line 3661
    :catchall_12c
    move-exception p1

    monitor-exit v1
    :try_end_12e
    .catchall {:try_start_d .. :try_end_12e} :catchall_12c

    throw p1
.end method

.method private greylist-max-o shouldIgnoreViewEnteredLocked(Landroid/view/autofill/AutofillId;I)Z
    .registers 9

    .line 1844
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isDisabledByServiceLocked()Z

    move-result v0

    const-string v1, ") on state "

    const-string v2, ", view="

    const-string v3, "ignoring notifyViewEntered(flags="

    const-string v4, "AutofillManager"

    const/4 v5, 0x1

    if-eqz v0, :cond_42

    .line 1845
    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_41

    .line 1846
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 1847
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getStateAsStringLocked()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " because disabled by svc"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1846
    invoke-static {v4, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1849
    :cond_41
    return v5

    .line 1851
    :cond_42
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isFinishedLocked()Z

    move-result v0

    if-eqz v0, :cond_91

    .line 1853
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_91

    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mEnteredIds:Landroid/util/ArraySet;

    if-eqz v0, :cond_91

    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mEnteredIds:Landroid/util/ArraySet;

    .line 1854
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_91

    .line 1855
    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_90

    .line 1856
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 1857
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getStateAsStringLocked()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " because view was already entered: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Landroid/view/autofill/AutofillManager;->mEnteredIds:Landroid/util/ArraySet;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1856
    invoke-static {v4, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1860
    :cond_90
    return v5

    .line 1863
    :cond_91
    const/4 p1, 0x0

    return p1
.end method

.method private blacklist shouldShowAutofillDialog(Landroid/view/View;Landroid/view/autofill/AutofillId;)Z
    .registers 6

    .line 4234
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->hasFillDialogUiFeature()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_40

    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mShowAutofillDialogCalled:Z

    if-nez v0, :cond_40

    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mFillDialogTriggerIds:Ljava/util/List;

    if-eqz v0, :cond_40

    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mScreenHasCredmanField:Z

    if-eqz v0, :cond_14

    goto :goto_40

    .line 4241
    :cond_14
    invoke-direct {p0, p1}, Landroid/view/autofill/AutofillManager;->getImeStateFlag(Landroid/view/View;)I

    move-result p1

    const/16 v0, 0x80

    if-ne p1, v0, :cond_23

    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->isImproveFillDialogEnabled()Z

    move-result p1

    if-nez p1, :cond_23

    .line 4243
    return v1

    .line 4246
    :cond_23
    iget-object p1, p0, Landroid/view/autofill/AutofillManager;->mFillDialogTriggerIds:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 4247
    move v0, v1

    :goto_2a
    if-ge v0, p1, :cond_3f

    .line 4248
    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mFillDialogTriggerIds:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/autofill/AutofillId;

    .line 4249
    invoke-virtual {v2, p2}, Landroid/view/autofill/AutofillId;->equalsIgnoreSession(Landroid/view/autofill/AutofillId;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 4250
    const/4 p1, 0x1

    return p1

    .line 4247
    :cond_3c
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    .line 4253
    :cond_3f
    return v1

    .line 4238
    :cond_40
    :goto_40
    return v1
.end method

.method private blacklist shouldSuppressDialogsForCredman(Landroid/view/View;)Z
    .registers 4

    .line 3917
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 3918
    return v0

    .line 3923
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->isCredential()Z

    move-result v1

    if-nez v1, :cond_10

    invoke-direct {p0, p1}, Landroid/view/autofill/AutofillManager;->isCredmanRequested(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_11

    :cond_10
    const/4 v0, 0x1

    :cond_11
    return v0
.end method

.method private blacklist startAutofillIfNeededLocked(Landroid/view/View;)Z
    .registers 10

    .line 2954
    iget v0, p0, Landroid/view/autofill/AutofillManager;->mState:I

    const/4 v1, 0x0

    if-nez v0, :cond_88

    iget v0, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    const v2, 0x7fffffff

    if-ne v0, v2, :cond_88

    instance-of v0, p1, Landroid/widget/EditText;

    if-eqz v0, :cond_88

    move-object v0, p1

    check-cast v0, Landroid/widget/EditText;

    .line 2957
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_88

    .line 2958
    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-nez v0, :cond_88

    .line 2959
    invoke-virtual {p1}, Landroid/view/View;->isImportantForAutofill()Z

    move-result v0

    if-eqz v0, :cond_88

    .line 2960
    invoke-virtual {p1}, Landroid/view/View;->isLaidOut()Z

    move-result v0

    if-eqz v0, :cond_88

    .line 2961
    invoke-virtual {p1}, Landroid/view/View;->isVisibleToUser()Z

    move-result v0

    if-eqz v0, :cond_88

    .line 2963
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->tryAddServiceClientIfNeededLocked()Z

    move-result v0

    .line 2965
    sget-boolean v2, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_64

    .line 2966
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startAutofillIfNeededLocked(): enabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mServiceClient="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mServiceClient:Landroid/view/autofill/IAutoFillManagerClient;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AutofillManager"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2969
    :cond_64
    if-eqz v0, :cond_88

    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    if-eqz v0, :cond_88

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isClientDisablingEnterExitEvent()Z

    move-result v0

    if-nez v0, :cond_88

    .line 2970
    invoke-virtual {p1}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v3

    .line 2971
    invoke-virtual {p1}, Landroid/view/View;->getAutofillValue()Landroid/view/autofill/AutofillValue;

    move-result-object v5

    .line 2973
    const/4 p1, 0x0

    invoke-direct {p0, v3, p1, p1, v1}, Landroid/view/autofill/AutofillManager;->startSessionLocked(Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;I)V

    .line 2975
    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Landroid/view/autofill/AutofillManager;->updateSessionLocked(Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;II)V

    .line 2977
    invoke-direct {p0, v3}, Landroid/view/autofill/AutofillManager;->addEnteredIdLocked(Landroid/view/autofill/AutofillId;)V

    .line 2978
    const/4 p1, 0x1

    return p1

    .line 2981
    :cond_88
    return v1
.end method

.method private greylist-max-o startSessionLocked(Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;I)V
    .registers 23

    .line 2741
    move-object/from16 v0, p0

    move-object/from16 v4, p1

    iget-object v1, v0, Landroid/view/autofill/AutofillManager;->mEnteredForAugmentedAutofillIds:Ljava/util/Set;

    const-string v13, "AutofillManager"

    if-eqz v1, :cond_12

    iget-object v1, v0, Landroid/view/autofill/AutofillManager;->mEnteredForAugmentedAutofillIds:Ljava/util/Set;

    .line 2742
    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    :cond_12
    iget-boolean v1, v0, Landroid/view/autofill/AutofillManager;->mEnabledForAugmentedAutofillOnly:Z

    if-eqz v1, :cond_33

    .line 2744
    :cond_16
    sget-boolean v1, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_30

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting session for augmented autofill on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2745
    :cond_30
    or-int/lit8 v1, p4, 0x8

    goto :goto_35

    .line 2742
    :cond_33
    move/from16 v1, p4

    .line 2747
    :goto_35
    sget-boolean v2, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_c9

    .line 2748
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startSessionLocked(): id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", bounds="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v5, p2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v6, p3

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", flags="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2749
    invoke-direct {v0}, Landroid/view/autofill/AutofillManager;->getStateAsStringLocked()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", compatMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2750
    invoke-virtual {v0}, Landroid/view/autofill/AutofillManager;->isCompatibilityModeEnabledLocked()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", augmentedOnly="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, v0, Landroid/view/autofill/AutofillManager;->mForAugmentedAutofillOnly:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", enabledAugmentedOnly="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, v0, Landroid/view/autofill/AutofillManager;->mEnabledForAugmentedAutofillOnly:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", enteredIds="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/view/autofill/AutofillManager;->mEnteredIds:Landroid/util/ArraySet;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", autofill manager instance="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", context="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2748
    invoke-static {v13, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_cd

    .line 2747
    :cond_c9
    move-object/from16 v5, p2

    move-object/from16 v6, p3

    .line 2760
    :goto_cd
    iget-boolean v2, v0, Landroid/view/autofill/AutofillManager;->mForAugmentedAutofillOnly:Z

    const/4 v14, 0x0

    if-eqz v2, :cond_e6

    iget-boolean v2, v0, Landroid/view/autofill/AutofillManager;->mEnabledForAugmentedAutofillOnly:Z

    if-nez v2, :cond_e6

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_e6

    .line 2762
    sget-boolean v2, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_e4

    .line 2763
    const-string/jumbo v2, "resetting mForAugmentedAutofillOnly on manual autofill request"

    invoke-static {v13, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2765
    :cond_e4
    iput-boolean v14, v0, Landroid/view/autofill/AutofillManager;->mForAugmentedAutofillOnly:Z

    .line 2767
    :cond_e6
    iget v2, v0, Landroid/view/autofill/AutofillManager;->mState:I

    if-eqz v2, :cond_128

    invoke-direct {v0}, Landroid/view/autofill/AutofillManager;->isFinishedLocked()Z

    move-result v2

    if-nez v2, :cond_128

    and-int/lit8 v2, v1, 0x1

    if-nez v2, :cond_128

    .line 2768
    sget-boolean v2, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_127

    .line 2769
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "not automatically starting session for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " on state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2770
    invoke-direct {v0}, Landroid/view/autofill/AutofillManager;->getStateAsStringLocked()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " and flags "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2769
    invoke-static {v13, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2772
    :cond_127
    return-void

    .line 2775
    :cond_128
    :try_start_128
    invoke-direct {v0}, Landroid/view/autofill/AutofillManager;->getClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v15

    .line 2776
    if-nez v15, :cond_12f

    return-void

    .line 2778
    :cond_12f
    new-instance v12, Lcom/android/internal/util/SyncResultReceiver;

    const/16 v2, 0x1388

    invoke-direct {v12, v2}, Lcom/android/internal/util/SyncResultReceiver;-><init>(I)V

    .line 2779
    invoke-interface {v15}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientGetComponentName()Landroid/content/ComponentName;

    move-result-object v10

    .line 2781
    iget-boolean v2, v0, Landroid/view/autofill/AutofillManager;->mEnabledForAugmentedAutofillOnly:Z
    :try_end_13c
    .catch Landroid/os/RemoteException; {:try_start_128 .. :try_end_13c} :catch_217
    .catch Lcom/android/internal/util/SyncResultReceiver$TimeoutException; {:try_start_128 .. :try_end_13c} :catch_210

    const-string/jumbo v3, "startSession("

    if-nez v2, :cond_1a0

    :try_start_141
    iget-object v2, v0, Landroid/view/autofill/AutofillManager;->mOptions:Landroid/content/AutofillOptions;

    if-eqz v2, :cond_1a0

    iget-object v2, v0, Landroid/view/autofill/AutofillManager;->mOptions:Landroid/content/AutofillOptions;

    .line 2782
    invoke-virtual {v2, v10}, Landroid/content/AutofillOptions;->isAutofillDisabledLocked(Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_1a0

    .line 2783
    iget-object v2, v0, Landroid/view/autofill/AutofillManager;->mOptions:Landroid/content/AutofillOptions;

    iget-object v7, v0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v7}, Landroid/content/AutofillOptions;->isAugmentedAutofillEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_179

    .line 2784
    sget-boolean v2, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_1a0

    .line 2785
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "): disabled by service but allowlisted for augmented autofill"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2787
    or-int/lit8 v1, v1, 0x8

    move v9, v1

    goto :goto_1a1

    .line 2790
    :cond_179
    sget-boolean v1, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_197

    .line 2791
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): ignored because disabled by service and not allowlisted for augmented autofill"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2794
    :cond_197
    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/autofill/AutofillManager;->setSessionFinished(ILjava/util/List;)V

    .line 2795
    invoke-interface {v15}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientResetableStateAvailable()V

    .line 2796
    return-void

    .line 2800
    :cond_1a0
    move v9, v1

    :goto_1a1
    iget-object v1, v0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    invoke-interface {v15}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientGetActivityToken()Landroid/os/IBinder;

    move-result-object v2

    iget-object v7, v0, Landroid/view/autofill/AutofillManager;->mServiceClient:Landroid/view/autofill/IAutoFillManagerClient;

    .line 2801
    invoke-interface {v7}, Landroid/view/autofill/IAutoFillManagerClient;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    iget-object v8, v0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getUserId()I

    move-result v8

    iget-object v11, v0, Landroid/view/autofill/AutofillManager;->mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;

    const/4 v14, 0x1

    if-eqz v11, :cond_1bd

    move-object v11, v3

    move-object v3, v7

    move v7, v8

    move v8, v14

    goto :goto_1c1

    :cond_1bd
    move-object v11, v3

    move-object v3, v7

    move v7, v8

    const/4 v8, 0x0

    .line 2803
    :goto_1c1
    move-object/from16 v16, v11

    invoke-virtual {v0}, Landroid/view/autofill/AutofillManager;->isCompatibilityModeEnabledLocked()Z

    move-result v11

    .line 2800
    move-object/from16 v17, v16

    invoke-interface/range {v1 .. v12}, Landroid/view/autofill/IAutoFillManager;->startSession(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;IZILandroid/content/ComponentName;ZLcom/android/internal/os/IResultReceiver;)V

    .line 2804
    invoke-virtual {v12}, Lcom/android/internal/util/SyncResultReceiver;->getIntResult()I

    move-result v1

    iput v1, v0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    .line 2805
    iget v1, v0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_1e2

    .line 2806
    iput v14, v0, Landroid/view/autofill/AutofillManager;->mState:I

    .line 2807
    iget-object v1, v0, Landroid/view/autofill/AutofillManager;->mAutofillStateFingerprint:Landroid/view/autofill/AutofillStateFingerprint;

    iget v2, v0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    invoke-virtual {v1, v2}, Landroid/view/autofill/AutofillStateFingerprint;->setSessionId(I)V

    .line 2809
    :cond_1e2
    const/4 v1, 0x0

    invoke-virtual {v12, v1}, Lcom/android/internal/util/SyncResultReceiver;->getOptionalExtraIntResult(I)I

    move-result v1

    .line 2810
    and-int/2addr v1, v14

    if-eqz v1, :cond_20c

    .line 2811
    sget-boolean v1, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_20a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v11, v17

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): for augmented only"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2812
    :cond_20a
    iput-boolean v14, v0, Landroid/view/autofill/AutofillManager;->mForAugmentedAutofillOnly:Z

    .line 2814
    :cond_20c
    invoke-interface {v15}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientResetableStateAvailable()V
    :try_end_20f
    .catch Landroid/os/RemoteException; {:try_start_141 .. :try_end_20f} :catch_217
    .catch Lcom/android/internal/util/SyncResultReceiver$TimeoutException; {:try_start_141 .. :try_end_20f} :catch_210

    .line 2820
    goto :goto_216

    .line 2817
    :catch_210
    move-exception v0

    .line 2819
    const-string v1, "Exception getting result from SyncResultReceiver:"

    invoke-static {v13, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2821
    :goto_216
    return-void

    .line 2815
    :catch_217
    move-exception v0

    .line 2816
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private blacklist tryAddServiceClientIfNeededLocked()Z
    .registers 2

    .line 2896
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/autofill/AutofillManager;->tryAddServiceClientIfNeededLocked(Z)Z

    move-result v0

    return v0
.end method

.method private blacklist tryAddServiceClientIfNeededLocked(Z)Z
    .registers 14

    .line 2901
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v0

    .line 2902
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 2903
    return v1

    .line 2905
    :cond_8
    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    const-string v3, "AutofillManager"

    if-nez v2, :cond_14

    .line 2906
    const-string p1, "Autofill service is null!"

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2907
    return v1

    .line 2909
    :cond_14
    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mServiceClient:Landroid/view/autofill/IAutoFillManagerClient;

    const/4 v4, 0x1

    if-nez v2, :cond_bd

    .line 2910
    new-instance v2, Landroid/view/autofill/AutofillManager$AutofillManagerClient;

    const/4 v5, 0x0

    invoke-direct {v2, p0, v5}, Landroid/view/autofill/AutofillManager$AutofillManagerClient;-><init>(Landroid/view/autofill/AutofillManager;Landroid/view/autofill/AutofillManager-IA;)V

    iput-object v2, p0, Landroid/view/autofill/AutofillManager;->mServiceClient:Landroid/view/autofill/IAutoFillManagerClient;

    .line 2912
    :try_start_21
    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v9

    .line 2913
    new-instance v10, Lcom/android/internal/util/SyncResultReceiver;

    const/16 v2, 0x1388

    invoke-direct {v10, v2}, Lcom/android/internal/util/SyncResultReceiver;-><init>(I)V

    .line 2914
    iget-object v6, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    iget-object v7, p0, Landroid/view/autofill/AutofillManager;->mServiceClient:Landroid/view/autofill/IAutoFillManagerClient;

    invoke-interface {v0}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientGetComponentName()Landroid/content/ComponentName;

    move-result-object v8

    move v11, p1

    invoke-interface/range {v6 .. v11}, Landroid/view/autofill/IAutoFillManager;->addClient(Landroid/view/autofill/IAutoFillManagerClient;Landroid/content/ComponentName;ILcom/android/internal/os/IResultReceiver;Z)V
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_3a} :catch_b6

    .line 2916
    nop

    .line 2918
    :try_start_3b
    invoke-virtual {v10}, Lcom/android/internal/util/SyncResultReceiver;->getIntResult()I

    move-result p1
    :try_end_3f
    .catch Lcom/android/internal/util/SyncResultReceiver$TimeoutException; {:try_start_3b .. :try_end_3f} :catch_a5
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_3f} :catch_b6

    .line 2925
    nop

    .line 2926
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_46

    move v0, v4

    goto :goto_47

    :cond_46
    move v0, v1

    :goto_47
    :try_start_47
    iput-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    .line 2927
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_4f

    move v0, v4

    goto :goto_50

    :cond_4f
    move v0, v1

    :goto_50
    sput-boolean v0, Landroid/view/autofill/Helper;->sDebug:Z

    .line 2928
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_58

    move v0, v4

    goto :goto_59

    :cond_58
    move v0, v1

    :goto_59
    sput-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    .line 2929
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_60

    move v1, v4

    :cond_60
    iput-boolean v1, p0, Landroid/view/autofill/AutofillManager;->mEnabledForAugmentedAutofillOnly:Z

    .line 2931
    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_95

    .line 2932
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "receiver results: flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " enabled="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", enabledForAugmentedOnly: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mEnabledForAugmentedAutofillOnly:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2935
    :cond_95
    iget-object p1, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    .line 2936
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mServiceClient:Landroid/view/autofill/IAutoFillManagerClient;

    .line 2937
    new-instance v1, Landroid/view/autofill/AutofillManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1, v0, v9}, Landroid/view/autofill/AutofillManager$$ExternalSyntheticLambda1;-><init>(Landroid/view/autofill/IAutoFillManager;Landroid/view/autofill/IAutoFillManagerClient;I)V

    invoke-static {p0, v1}, Lsun/misc/Cleaner;->create(Ljava/lang/Object;Ljava/lang/Runnable;)Lsun/misc/Cleaner;

    move-result-object p1

    iput-object p1, p0, Landroid/view/autofill/AutofillManager;->mServiceClientCleaner:Lsun/misc/Cleaner;

    .line 2947
    goto :goto_bd

    .line 2919
    :catch_a5
    move-exception v0

    move-object p1, v0

    .line 2920
    const-string v0, "Failed to initialize autofill:"

    invoke-static {v3, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2922
    iget-object p1, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mServiceClient:Landroid/view/autofill/IAutoFillManagerClient;

    invoke-interface {p1, v0, v9}, Landroid/view/autofill/IAutoFillManager;->removeClient(Landroid/view/autofill/IAutoFillManagerClient;I)V

    .line 2923
    iput-object v5, p0, Landroid/view/autofill/AutofillManager;->mServiceClient:Landroid/view/autofill/IAutoFillManagerClient;
    :try_end_b5
    .catch Landroid/os/RemoteException; {:try_start_47 .. :try_end_b5} :catch_b6

    .line 2924
    return v1

    .line 2945
    :catch_b6
    move-exception v0

    move-object p1, v0

    .line 2946
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 2949
    :cond_bd
    :goto_bd
    return v4
.end method

.method private greylist-max-o updateSessionLocked(Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;II)V
    .registers 16

    .line 2877
    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_45

    .line 2878
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateSessionLocked(): id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutofillManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2882
    :cond_45
    :try_start_45
    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    iget v3, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    .line 2883
    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v9

    .line 2882
    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move v8, p5

    invoke-interface/range {v2 .. v9}, Landroid/view/autofill/IAutoFillManager;->updateSession(ILandroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;III)V
    :try_end_57
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_57} :catch_59

    .line 2886
    nop

    .line 2887
    return-void

    .line 2884
    :catch_59
    move-exception v0

    move-object p1, v0

    .line 2885
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public blacklist attemptRefill()Z
    .registers 5

    .line 1628
    const-string v0, "Attempting refill"

    const-string v1, "AutofillManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1630
    nop

    .line 1631
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientFindAutofillableViewsByTraversal()Ljava/util/List;

    move-result-object v0

    .line 1632
    sget-boolean v2, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_2e

    .line 1633
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Autofillable views count:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1635
    :cond_2e
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mAutofillStateFingerprint:Landroid/view/autofill/AutofillStateFingerprint;

    invoke-virtual {v1, v0, p0}, Landroid/view/autofill/AutofillStateFingerprint;->attemptRefill(Ljava/util/List;Landroid/view/autofill/AutofillManager;)Z

    move-result v0

    return v0
.end method

.method blacklist autofill([Landroid/view/View;Ljava/util/List;Ljava/util/List;ZZ)V
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Landroid/view/autofill/AutofillId;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/autofill/AutofillValue;",
            ">;ZZ)V"
        }
    .end annotation

    .line 3418
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v3, p4

    move/from16 v4, p5

    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_2e

    .line 3419
    const-string v0, "AutofillManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "autofill() ids:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " isRefill:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3421
    :cond_2e
    iget-object v5, v1, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 3422
    :try_start_31
    invoke-direct {v1}, Landroid/view/autofill/AutofillManager;->getClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v0

    .line 3423
    if-nez v0, :cond_39

    .line 3424
    monitor-exit v5

    return-void

    .line 3427
    :cond_39
    if-nez v2, :cond_44

    .line 3428
    const-string v0, "AutofillManager"

    const-string v1, "autofill(): No id\'s to fill"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3429
    monitor-exit v5

    return-void

    .line 3432
    :cond_44
    iget-boolean v0, v1, Landroid/view/autofill/AutofillManager;->mRelayoutFix:Z
    :try_end_46
    .catchall {:try_start_31 .. :try_end_46} :catchall_12d

    if-eqz v0, :cond_59

    if-eqz v4, :cond_59

    .line 3434
    :try_start_4a
    iget-object v0, v1, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    iget v6, v1, Landroid/view/autofill/AutofillManager;->mSessionId:I

    iget-object v7, v1, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    .line 3435
    invoke-virtual {v7}, Landroid/content/Context;->getUserId()I

    move-result v7

    .line 3434
    invoke-interface {v0, v6, v2, v7}, Landroid/view/autofill/IAutoFillManager;->setAutofillIdsAttemptedForRefill(ILjava/util/List;I)V
    :try_end_57
    .catch Landroid/os/RemoteException; {:try_start_4a .. :try_end_57} :catch_58
    .catchall {:try_start_4a .. :try_end_57} :catchall_12d

    .line 3440
    goto :goto_59

    .line 3436
    :catch_58
    move-exception v0

    .line 3443
    :cond_59
    :goto_59
    :try_start_59
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 3444
    nop

    .line 3445
    nop

    .line 3447
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 3448
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 3450
    iget-object v8, v1, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

    if-nez v8, :cond_74

    .line 3451
    new-instance v8, Landroid/view/autofill/ParcelableMap;

    invoke-direct {v8, v0}, Landroid/view/autofill/ParcelableMap;-><init>(I)V

    iput-object v8, v1, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

    .line 3454
    :cond_74
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_77
    if-ge v10, v0, :cond_e7

    .line 3455
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/autofill/AutofillId;

    .line 3456
    move-object/from16 v13, p3

    invoke-interface {v13, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/autofill/AutofillValue;

    .line 3457
    aget-object v15, p1, v10

    .line 3458
    if-nez v15, :cond_ac

    .line 3462
    const-string v15, "AutofillManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v16, v0

    const-string v0, "autofill(): no View with id "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3464
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3465
    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3466
    goto :goto_e2

    .line 3469
    :cond_ac
    move/from16 v16, v0

    iget-object v0, v1, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

    invoke-virtual {v0, v12, v14}, Landroid/view/autofill/ParcelableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3471
    invoke-virtual {v12}, Landroid/view/autofill/AutofillId;->isVirtualInt()Z

    move-result v0

    if-eqz v0, :cond_da

    .line 3472
    if-nez v9, :cond_c1

    .line 3474
    new-instance v9, Landroid/util/ArrayMap;

    const/4 v0, 0x1

    invoke-direct {v9, v0}, Landroid/util/ArrayMap;-><init>(I)V

    .line 3476
    :cond_c1
    invoke-virtual {v9, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 3477
    if-nez v0, :cond_d2

    .line 3479
    new-instance v0, Landroid/util/SparseArray;

    const/4 v8, 0x5

    invoke-direct {v0, v8}, Landroid/util/SparseArray;-><init>(I)V

    .line 3480
    invoke-virtual {v9, v15, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3482
    :cond_d2
    invoke-virtual {v12}, Landroid/view/autofill/AutofillId;->getVirtualChildIntId()I

    move-result v8

    invoke-virtual {v0, v8, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3483
    goto :goto_e2

    .line 3484
    :cond_da
    invoke-virtual {v15, v14}, Landroid/view/View;->autofill(Landroid/view/autofill/AutofillValue;)V

    .line 3490
    invoke-direct {v1, v15, v14, v3}, Landroid/view/autofill/AutofillManager;->setAutofilledIfValuesIs(Landroid/view/View;Landroid/view/autofill/AutofillValue;Z)V

    .line 3492
    add-int/lit8 v11, v11, 0x1

    .line 3454
    :goto_e2
    add-int/lit8 v10, v10, 0x1

    move/from16 v0, v16

    goto :goto_77

    .line 3496
    :cond_e7
    move/from16 v16, v0

    invoke-direct {v1, v6, v7, v3, v4}, Landroid/view/autofill/AutofillManager;->handleFailedIdsLocked(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    .line 3499
    if-eqz v9, :cond_10c

    .line 3500
    const/4 v8, 0x0

    :goto_ef
    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-ge v8, v0, :cond_10c

    .line 3501
    invoke-virtual {v9, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 3502
    invoke-virtual {v9, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 3503
    invoke-virtual {v0, v2}, Landroid/view/View;->autofill(Landroid/util/SparseArray;)V

    .line 3504
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/2addr v11, v0

    .line 3500
    add-int/lit8 v8, v8, 0x1

    goto :goto_ef

    .line 3510
    :cond_10c
    iget-object v0, v1, Landroid/view/autofill/AutofillManager;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v2, 0x391

    invoke-direct {v1, v2}, Landroid/view/autofill/AutofillManager;->newLog(I)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 3511
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x392

    invoke-virtual {v1, v3, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 3512
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x393

    invoke-virtual {v1, v3, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 3510
    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 3513
    monitor-exit v5

    .line 3514
    return-void

    .line 3513
    :catchall_12d
    move-exception v0

    monitor-exit v5
    :try_end_12f
    .catchall {:try_start_59 .. :try_end_12f} :catchall_12d

    throw v0
.end method

.method public blacklist autofillRemoteApp(Landroid/view/autofill/AutofillId;Ljava/lang/String;Landroid/os/IBinder;I)V
    .registers 12

    .line 4170
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/view/contentcapture/flags/Flags;->enableSystemUiUnderlay()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    if-eqz v0, :cond_26

    .line 4171
    invoke-static {p2}, Landroid/view/autofill/AutofillValue;->forText(Ljava/lang/CharSequence;)Landroid/view/autofill/AutofillValue;

    move-result-object v5

    .line 4174
    :try_start_e
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    iget-object p2, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    .line 4179
    invoke-virtual {p2}, Landroid/content/Context;->getUserId()I

    move-result v6

    .line 4174
    move-object v4, p1

    move-object v2, p3

    move v3, p4

    invoke-interface/range {v1 .. v6}, Landroid/view/autofill/IAutoFillManager;->autofillRemoteApp(Landroid/os/IBinder;ILandroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;I)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1c} :catch_1d

    .line 4182
    goto :goto_26

    .line 4180
    :catch_1d
    move-exception v0

    move-object p1, v0

    .line 4181
    const-string p2, "AutofillManager"

    const-string p3, "autofillRemoteApp() - cannot autofill remote app"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4184
    :cond_26
    :goto_26
    return-void
.end method

.method public whitelist cancel()V
    .registers 3

    .line 2372
    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_b

    const-string v0, "AutofillManager"

    const-string v1, "cancel() called by app or augmented autofill service"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2373
    :cond_b
    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    if-nez v0, :cond_12

    .line 2374
    return-void

    .line 2376
    :cond_12
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2377
    :try_start_15
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->cancelLocked()V

    .line 2378
    monitor-exit v0

    .line 2379
    return-void

    .line 2378
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public whitelist commit()V
    .registers 3

    .line 2343
    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    if-nez v0, :cond_7

    .line 2344
    return-void

    .line 2346
    :cond_7
    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_12

    const-string v0, "AutofillManager"

    const-string v1, "commit() called by app"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2347
    :cond_12
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2348
    const/4 v1, 0x2

    :try_start_16
    invoke-direct {p0, v1}, Landroid/view/autofill/AutofillManager;->commitLocked(I)V

    .line 2349
    monitor-exit v0

    .line 2350
    return-void

    .line 2349
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public whitelist disableAutofillServices()V
    .registers 3

    .line 2399
    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    if-nez v0, :cond_7

    .line 2400
    return-void

    .line 2403
    :cond_7
    :try_start_7
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/autofill/IAutoFillManager;->disableOwnedAutofillServices(I)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_12} :catch_14

    .line 2406
    nop

    .line 2407
    return-void

    .line 2404
    :catch_14
    move-exception v0

    .line 2405
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public greylist-max-o disableOwnedAutofillServices()V
    .registers 1

    .line 2391
    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->disableAutofillServices()V

    .line 2392
    return-void
.end method

.method public greylist-max-o dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 7

    .line 3968
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3969
    :try_start_3
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "AutofillManager:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3970
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "  "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3971
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "sessionId: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 3972
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "state: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getStateAsStringLocked()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3973
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "context: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3974
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "service client: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mServiceClient:Landroid/view/autofill/IAutoFillManagerClient;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3975
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v1

    .line 3976
    if-eqz v1, :cond_79

    .line 3977
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "client: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 3978
    const-string v2, " ("

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v1}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientGetActivityToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const/16 v1, 0x29

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(C)V

    .line 3980
    :cond_79
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "enabled: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 3981
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3982
    const-string v1, "enabledAugmentedOnly: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3983
    iget-boolean v1, p0, Landroid/view/autofill/AutofillManager;->mForAugmentedAutofillOnly:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 3984
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "hasService: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_a3

    move v1, v2

    goto :goto_a4

    :cond_a3
    move v1, v3

    :goto_a4
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 3985
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "hasCallback: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;

    if-eqz v1, :cond_b4

    goto :goto_b5

    :cond_b4
    move v2, v3

    :goto_b5
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 3986
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "onInvisibleCalled "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/view/autofill/AutofillManager;->mOnInvisibleCalled:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 3987
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "last autofilled data: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3988
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "id of last fill UI shown: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mIdShownFillUi:Landroid/view/autofill/AutofillId;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3989
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "tracked views: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3990
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mTrackedViews:Landroid/view/autofill/AutofillManager$TrackedViews;

    if-nez v1, :cond_f4

    .line 3991
    const-string/jumbo v1, "null"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_12d

    .line 3993
    :cond_f4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3994
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 3995
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "visible:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mTrackedViews:Landroid/view/autofill/AutofillManager$TrackedViews;

    invoke-static {v2}, Landroid/view/autofill/AutofillManager$TrackedViews;->-$$Nest$fgetmVisibleTrackedIds(Landroid/view/autofill/AutofillManager$TrackedViews;)Landroid/util/ArraySet;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3996
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3997
    const-string v1, "invisible:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3998
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mTrackedViews:Landroid/view/autofill/AutofillManager$TrackedViews;

    invoke-static {v1}, Landroid/view/autofill/AutofillManager$TrackedViews;->-$$Nest$fgetmInvisibleTrackedIds(Landroid/view/autofill/AutofillManager$TrackedViews;)Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4000
    :goto_12d
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "fillable ids: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mFillableIds:Landroid/util/ArraySet;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4001
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "entered ids: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mEnteredIds:Landroid/util/ArraySet;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4002
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mEnteredForAugmentedAutofillIds:Ljava/util/Set;

    if-eqz v1, :cond_158

    .line 4003
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "entered ids for augmented autofill: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4004
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mEnteredForAugmentedAutofillIds:Ljava/util/Set;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4006
    :cond_158
    iget-boolean v1, p0, Landroid/view/autofill/AutofillManager;->mForAugmentedAutofillOnly:Z

    if-eqz v1, :cond_164

    .line 4007
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "For Augmented Autofill Only"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4009
    :cond_164
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "save trigger id: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mSaveTriggerId:Landroid/view/autofill/AutofillId;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4010
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "save on finish(): "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/view/autofill/AutofillManager;->mSaveOnFinish:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 4011
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mOptions:Landroid/content/AutofillOptions;

    if-eqz v1, :cond_195

    .line 4012
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "options: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mOptions:Landroid/content/AutofillOptions;

    invoke-virtual {v1, p2}, Landroid/content/AutofillOptions;->dumpShort(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 4014
    :cond_195
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "fill dialog enabled: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/view/autofill/AutofillManager;->mIsFillDialogEnabled:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 4015
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "fill dialog enabled hints: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4016
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mFillDialogEnabledHints:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4017
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "compat mode enabled: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4018
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mCompatibilityBridge:Landroid/view/autofill/AutofillManager$CompatibilityBridge;

    if-eqz v1, :cond_224

    .line 4019
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4020
    const-string/jumbo v2, "true"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4021
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "windowId: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4022
    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mCompatibilityBridge:Landroid/view/autofill/AutofillManager$CompatibilityBridge;

    invoke-static {v2}, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->-$$Nest$fgetmFocusedWindowId(Landroid/view/autofill/AutofillManager$CompatibilityBridge;)I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 4023
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "nodeId: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4024
    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mCompatibilityBridge:Landroid/view/autofill/AutofillManager$CompatibilityBridge;

    invoke-static {v2}, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->-$$Nest$fgetmFocusedNodeId(Landroid/view/autofill/AutofillManager$CompatibilityBridge;)J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 4025
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "virtualId: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4026
    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mCompatibilityBridge:Landroid/view/autofill/AutofillManager$CompatibilityBridge;

    invoke-static {v2}, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->-$$Nest$fgetmFocusedNodeId(Landroid/view/autofill/AutofillManager$CompatibilityBridge;)J

    move-result-wide v2

    .line 4027
    invoke-static {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v2

    .line 4026
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 4028
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "focusedBounds: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4029
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mCompatibilityBridge:Landroid/view/autofill/AutofillManager$CompatibilityBridge;

    invoke-static {v1}, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->-$$Nest$fgetmFocusedBounds(Landroid/view/autofill/AutofillManager$CompatibilityBridge;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4030
    goto :goto_229

    .line 4031
    :cond_224
    const-string v1, "false"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4033
    :goto_229
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "debug: "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean p1, Landroid/view/autofill/Helper;->sDebug:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Z)V

    .line 4034
    const-string p1, " verbose: "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean p1, Landroid/view/autofill/Helper;->sVerbose:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    .line 4035
    monitor-exit v0

    .line 4036
    return-void

    .line 4035
    :catchall_242
    move-exception p1

    monitor-exit v0
    :try_end_244
    .catchall {:try_start_3 .. :try_end_244} :catchall_242

    throw p1
.end method

.method public greylist-max-o enableCompatibilityMode()V
    .registers 5

    .line 1317
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1322
    :try_start_3
    sget-boolean v1, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_21

    .line 1323
    const-string v1, "AutofillManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "creating CompatibilityBridge for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    :cond_21
    new-instance v1, Landroid/view/autofill/AutofillManager$CompatibilityBridge;

    invoke-direct {v1, p0}, Landroid/view/autofill/AutofillManager$CompatibilityBridge;-><init>(Landroid/view/autofill/AutofillManager;)V

    iput-object v1, p0, Landroid/view/autofill/AutofillManager;->mCompatibilityBridge:Landroid/view/autofill/AutofillManager$CompatibilityBridge;

    .line 1326
    monitor-exit v0

    .line 1327
    return-void

    .line 1326
    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method public whitelist getAutofillServiceComponentName()Landroid/content/ComponentName;
    .registers 4

    .line 2434
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 2436
    :cond_6
    new-instance v0, Lcom/android/internal/util/SyncResultReceiver;

    const/16 v1, 0x1388

    invoke-direct {v0, v1}, Lcom/android/internal/util/SyncResultReceiver;-><init>(I)V

    .line 2438
    :try_start_d
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    invoke-interface {v1, v0}, Landroid/view/autofill/IAutoFillManager;->getAutofillServiceComponentName(Lcom/android/internal/os/IResultReceiver;)V

    .line 2439
    invoke-virtual {v0}, Lcom/android/internal/util/SyncResultReceiver;->getParcelableResult()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_18} :catch_22
    .catch Lcom/android/internal/util/SyncResultReceiver$TimeoutException; {:try_start_d .. :try_end_18} :catch_19

    return-object v0

    .line 2442
    :catch_19
    move-exception v0

    .line 2443
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Fail to get autofill services component name."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 2440
    :catch_22
    move-exception v0

    .line 2441
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist getAvailableFieldClassificationAlgorithms()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2571
    new-instance v0, Lcom/android/internal/util/SyncResultReceiver;

    const/16 v1, 0x1388

    invoke-direct {v0, v1}, Lcom/android/internal/util/SyncResultReceiver;-><init>(I)V

    .line 2573
    :try_start_7
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    invoke-interface {v1, v0}, Landroid/view/autofill/IAutoFillManager;->getAvailableFieldClassificationAlgorithms(Lcom/android/internal/os/IResultReceiver;)V

    .line 2574
    invoke-virtual {v0}, Lcom/android/internal/util/SyncResultReceiver;->getStringArrayResult()[Ljava/lang/String;

    move-result-object v0

    .line 2575
    if-eqz v0, :cond_17

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_1b

    :cond_17
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_1b} :catch_25
    .catch Lcom/android/internal/util/SyncResultReceiver$TimeoutException; {:try_start_7 .. :try_end_1b} :catch_1c

    :goto_1b
    return-object v0

    .line 2578
    :catch_1c
    move-exception v0

    .line 2579
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Fail to get available field classification algorithms."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 2576
    :catch_25
    move-exception v0

    .line 2577
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist getDefaultFieldClassificationAlgorithm()Ljava/lang/String;
    .registers 4

    .line 2550
    new-instance v0, Lcom/android/internal/util/SyncResultReceiver;

    const/16 v1, 0x1388

    invoke-direct {v0, v1}, Lcom/android/internal/util/SyncResultReceiver;-><init>(I)V

    .line 2552
    :try_start_7
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    invoke-interface {v1, v0}, Landroid/view/autofill/IAutoFillManager;->getDefaultFieldClassificationAlgorithm(Lcom/android/internal/os/IResultReceiver;)V

    .line 2553
    invoke-virtual {v0}, Lcom/android/internal/util/SyncResultReceiver;->getStringResult()Ljava/lang/String;

    move-result-object v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_10} :catch_1a
    .catch Lcom/android/internal/util/SyncResultReceiver$TimeoutException; {:try_start_7 .. :try_end_10} :catch_11

    return-object v0

    .line 2556
    :catch_11
    move-exception v0

    .line 2557
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Fail to get default field classification algorithm."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 2554
    :catch_1a
    move-exception v0

    .line 2555
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public greylist-max-o getFillEventHistory()Landroid/service/autofill/FillEventHistory;
    .registers 4

    .line 1507
    :try_start_0
    new-instance v0, Lcom/android/internal/util/SyncResultReceiver;

    const/16 v1, 0x1388

    invoke-direct {v0, v1}, Lcom/android/internal/util/SyncResultReceiver;-><init>(I)V

    .line 1508
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    invoke-interface {v1, v0}, Landroid/view/autofill/IAutoFillManager;->getFillEventHistory(Lcom/android/internal/os/IResultReceiver;)V

    .line 1509
    invoke-virtual {v0}, Lcom/android/internal/util/SyncResultReceiver;->getParcelableResult()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/service/autofill/FillEventHistory;
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_1d
    .catch Lcom/android/internal/util/SyncResultReceiver$TimeoutException; {:try_start_0 .. :try_end_12} :catch_13

    return-object v0

    .line 1512
    :catch_13
    move-exception v0

    .line 1513
    const-string v1, "AutofillManager"

    const-string v2, "Fail to get fill event history"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1514
    const/4 v0, 0x0

    return-object v0

    .line 1510
    :catch_1d
    move-exception v0

    .line 1511
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist getNextAutofillId()Landroid/view/autofill/AutofillId;
    .registers 5

    .line 2722
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v0

    .line 2723
    if-nez v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    .line 2725
    :cond_8
    invoke-interface {v0}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientGetNextAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v1

    .line 2727
    if-nez v1, :cond_30

    sget-boolean v2, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_30

    .line 2728
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNextAutofillId(): client "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " returned null"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AutofillManager"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2731
    :cond_30
    return-object v1
.end method

.method public whitelist getUserData()Landroid/service/autofill/UserData;
    .registers 4

    .line 2487
    :try_start_0
    new-instance v0, Lcom/android/internal/util/SyncResultReceiver;

    const/16 v1, 0x1388

    invoke-direct {v0, v1}, Lcom/android/internal/util/SyncResultReceiver;-><init>(I)V

    .line 2488
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    invoke-interface {v1, v0}, Landroid/view/autofill/IAutoFillManager;->getUserData(Lcom/android/internal/os/IResultReceiver;)V

    .line 2489
    invoke-virtual {v0}, Lcom/android/internal/util/SyncResultReceiver;->getParcelableResult()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/service/autofill/UserData;
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_1c
    .catch Lcom/android/internal/util/SyncResultReceiver$TimeoutException; {:try_start_0 .. :try_end_12} :catch_13

    return-object v0

    .line 2492
    :catch_13
    move-exception v0

    .line 2493
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Fail to get user data for field classification."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 2490
    :catch_1c
    move-exception v0

    .line 2491
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist getUserDataId()Ljava/lang/String;
    .registers 4

    .line 2464
    :try_start_0
    new-instance v0, Lcom/android/internal/util/SyncResultReceiver;

    const/16 v1, 0x1388

    invoke-direct {v0, v1}, Lcom/android/internal/util/SyncResultReceiver;-><init>(I)V

    .line 2465
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    invoke-interface {v1, v0}, Landroid/view/autofill/IAutoFillManager;->getUserDataId(Lcom/android/internal/os/IResultReceiver;)V

    .line 2466
    invoke-virtual {v0}, Lcom/android/internal/util/SyncResultReceiver;->getStringResult()Ljava/lang/String;

    move-result-object v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_1a
    .catch Lcom/android/internal/util/SyncResultReceiver$TimeoutException; {:try_start_0 .. :try_end_10} :catch_11

    return-object v0

    .line 2469
    :catch_11
    move-exception v0

    .line 2470
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Fail to get user data id for field classification."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 2467
    :catch_1a
    move-exception v0

    .line 2468
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public greylist-max-o hasAutofillFeature()Z
    .registers 2

    .line 3950
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist hasEnabledAutofillServices()Z
    .registers 6

    .line 2414
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 2416
    :cond_6
    new-instance v0, Lcom/android/internal/util/SyncResultReceiver;

    const/16 v2, 0x1388

    invoke-direct {v0, v2}, Lcom/android/internal/util/SyncResultReceiver;-><init>(I)V

    .line 2418
    :try_start_d
    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    iget-object v4, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4, v0}, Landroid/view/autofill/IAutoFillManager;->isServiceEnabled(ILjava/lang/String;Lcom/android/internal/os/IResultReceiver;)V

    .line 2420
    invoke-virtual {v0}, Lcom/android/internal/util/SyncResultReceiver;->getIntResult()I

    move-result v0
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_22} :catch_30
    .catch Lcom/android/internal/util/SyncResultReceiver$TimeoutException; {:try_start_d .. :try_end_22} :catch_27

    const/4 v2, 0x1

    if-ne v0, v2, :cond_26

    move v1, v2

    :cond_26
    return v1

    .line 2423
    :catch_27
    move-exception v0

    .line 2424
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Fail to get enabled autofill services status."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 2421
    :catch_30
    move-exception v0

    .line 2422
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist isActivityAllowedForAutofill()Z
    .registers 5

    .line 1248
    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mIsPackageFullyAllowedForAutofill:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 1249
    return v1

    .line 1251
    :cond_6
    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mIsPackagePartiallyAllowedForAutofill:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_23

    .line 1252
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v0

    .line 1253
    if-nez v0, :cond_12

    .line 1254
    return v2

    .line 1256
    :cond_12
    invoke-interface {v0}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientGetComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 1257
    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mAllowedActivitySet:Ljava/util/Set;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1258
    return v1

    .line 1261
    :cond_23
    return v2
.end method

.method public blacklist isActivityDeniedForAutofill()Z
    .registers 5

    .line 1223
    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mIsPackageFullyDeniedForAutofill:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 1224
    return v1

    .line 1226
    :cond_6
    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mIsPackagePartiallyDeniedForAutofill:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_23

    .line 1227
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v0

    .line 1228
    if-nez v0, :cond_12

    .line 1229
    return v2

    .line 1231
    :cond_12
    invoke-interface {v0}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientGetComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 1232
    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mDeniedActivitySet:Ljava/util/Set;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1233
    return v1

    .line 1236
    :cond_23
    return v2
.end method

.method public blacklist isAuthenticationPending()Z
    .registers 3

    .line 1592
    iget v0, p0, Landroid/view/autofill/AutofillManager;->mState:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public whitelist isAutofillSupported()Z
    .registers 5

    .line 2595
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 2597
    :cond_6
    new-instance v0, Lcom/android/internal/util/SyncResultReceiver;

    const/16 v2, 0x1388

    invoke-direct {v0, v2}, Lcom/android/internal/util/SyncResultReceiver;-><init>(I)V

    .line 2599
    :try_start_d
    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-interface {v2, v3, v0}, Landroid/view/autofill/IAutoFillManager;->isServiceSupported(ILcom/android/internal/os/IResultReceiver;)V

    .line 2600
    invoke-virtual {v0}, Lcom/android/internal/util/SyncResultReceiver;->getIntResult()I

    move-result v0
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_1c} :catch_2a
    .catch Lcom/android/internal/util/SyncResultReceiver$TimeoutException; {:try_start_d .. :try_end_1c} :catch_21

    const/4 v2, 0x1

    if-ne v0, v2, :cond_20

    move v1, v2

    :cond_20
    return v1

    .line 2603
    :catch_21
    move-exception v0

    .line 2604
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Fail to get autofill supported status."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 2601
    :catch_2a
    move-exception v0

    .line 2602
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public greylist-max-o isAutofillUiShowing()Z
    .registers 2

    .line 2623
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAutofillClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v0

    .line 2624
    if-eqz v0, :cond_10

    invoke-interface {v0}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientIsFillUiShowing()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public blacklist isAutofillable(Landroid/view/View;)Z
    .registers 5

    .line 1278
    invoke-virtual {p1}, Landroid/view/View;->getAutofillType()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 1281
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->isImportantForAutofill()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->isActivityDeniedForAutofill()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1282
    return v1

    .line 1285
    :cond_15
    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->isActivityAllowedForAutofill()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1d

    .line 1286
    return v2

    .line 1289
    :cond_1d
    instance-of v0, p1, Landroid/widget/EditText;

    if-eqz v0, :cond_36

    .line 1290
    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mShouldEnableMultilineFilter:Z

    if-eqz v0, :cond_2f

    move-object v0, p1

    check-cast v0, Landroid/widget/EditText;

    invoke-direct {p0, v0}, Landroid/view/autofill/AutofillManager;->isPassingMultilineCheck(Landroid/widget/EditText;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 1291
    return v1

    .line 1293
    :cond_2f
    check-cast p1, Landroid/widget/EditText;

    invoke-direct {p0, p1}, Landroid/view/autofill/AutofillManager;->isPassingImeActionCheck(Landroid/widget/EditText;)Z

    move-result p1

    return p1

    .line 1298
    :cond_36
    invoke-virtual {p1}, Landroid/view/View;->isImportantForAutofill()Z

    move-result v0

    if-nez v0, :cond_60

    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mShouldEnableAutofillOnAllViewTypes:Z

    if-eqz v0, :cond_41

    goto :goto_60

    .line 1302
    :cond_41
    instance-of v0, p1, Landroid/widget/CheckBox;

    if-nez v0, :cond_5f

    instance-of v0, p1, Landroid/widget/Spinner;

    if-nez v0, :cond_5f

    instance-of v0, p1, Landroid/widget/DatePicker;

    if-nez v0, :cond_5f

    instance-of v0, p1, Landroid/widget/TimePicker;

    if-nez v0, :cond_5f

    instance-of p1, p1, Landroid/widget/RadioGroup;

    if-eqz p1, :cond_56

    goto :goto_5f

    .line 1309
    :cond_56
    const-string p1, "AutofillManager"

    const-string/jumbo v0, "view is not autofillable - not important and filtered by view type check"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1310
    return v1

    .line 1307
    :cond_5f
    :goto_5f
    return v2

    .line 1299
    :cond_60
    :goto_60
    return v2
.end method

.method public greylist-max-o isCompatibilityModeEnabledLocked()Z
    .registers 2

    .line 1476
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mCompatibilityBridge:Landroid/view/autofill/AutofillManager$CompatibilityBridge;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist isEnabled()Z
    .registers 4

    .line 1488
    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1489
    return v1

    .line 1491
    :cond_8
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1492
    :try_start_b
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isDisabledByServiceLocked()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1493
    monitor-exit v0

    return v1

    .line 1495
    :cond_13
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->tryAddServiceClientIfNeededLocked()Z

    move-result v2

    .line 1496
    if-eqz v2, :cond_1b

    iget-boolean v1, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    :cond_1b
    monitor-exit v0

    return v1

    .line 1497
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_b .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public whitelist isFieldClassificationEnabled()Z
    .registers 4

    .line 2526
    new-instance v0, Lcom/android/internal/util/SyncResultReceiver;

    const/16 v1, 0x1388

    invoke-direct {v0, v1}, Lcom/android/internal/util/SyncResultReceiver;-><init>(I)V

    .line 2528
    :try_start_7
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    invoke-interface {v1, v0}, Landroid/view/autofill/IAutoFillManager;->isFieldClassificationEnabled(Lcom/android/internal/os/IResultReceiver;)V

    .line 2529
    invoke-virtual {v0}, Lcom/android/internal/util/SyncResultReceiver;->getIntResult()I

    move-result v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_10} :catch_1f
    .catch Lcom/android/internal/util/SyncResultReceiver$TimeoutException; {:try_start_7 .. :try_end_10} :catch_16

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    return v1

    .line 2532
    :catch_16
    move-exception v0

    .line 2533
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Fail to get field classification enabled status."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 2530
    :catch_1f
    move-exception v0

    .line 2531
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist isImproveFillDialogEnabled()Z
    .registers 2

    .line 1066
    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mImproveFillDialogEnabled:Z

    return v0
.end method

.method public blacklist isRelativePositionForRelayoutEnabled()Z
    .registers 2

    .line 1084
    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mRelativePositionForRelayout:Z

    return v0
.end method

.method public blacklist isRelayoutFixEnabled()Z
    .registers 2

    .line 1075
    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mRelayoutFix:Z

    return v0
.end method

.method public blacklist isTriggerFillRequestOnFilteredImportantViewsEnabled()Z
    .registers 2

    .line 1093
    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mIsTriggerFillRequestOnFilteredImportantViewsEnabled:Z

    return v0
.end method

.method public blacklist isTriggerFillRequestOnUnimportantViewEnabled()Z
    .registers 2

    .line 1102
    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mIsTriggerFillRequestOnUnimportantViewEnabled:Z

    return v0
.end method

.method blacklist notifyImeAnimationEnd(J)V
    .registers 6

    .line 2120
    :try_start_0
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    iget v1, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-interface {v0, v1, p1, p2, v2}, Landroid/view/autofill/IAutoFillManager;->notifyImeAnimationEnd(IJI)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    .line 2125
    goto :goto_17

    .line 2121
    :catch_e
    move-exception p1

    .line 2124
    const-string p2, "AutofillManager"

    const-string/jumbo v0, "notifyImeAnimationStart(): RemoteException caught but ignored"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2126
    :goto_17
    return-void
.end method

.method blacklist notifyImeAnimationStart(J)V
    .registers 6

    .line 2106
    :try_start_0
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    iget v1, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-interface {v0, v1, p1, p2, v2}, Landroid/view/autofill/IAutoFillManager;->notifyImeAnimationStart(IJI)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    .line 2111
    goto :goto_17

    .line 2107
    :catch_e
    move-exception p1

    .line 2110
    const-string p2, "AutofillManager"

    const-string/jumbo v0, "notifyImeAnimationStart(): RemoteException caught but ignored"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2112
    :goto_17
    return-void
.end method

.method blacklist notifyReenableAutofill()V
    .registers 5

    .line 3862
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3863
    :try_start_3
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mOptions:Landroid/content/AutofillOptions;

    if-nez v1, :cond_9

    .line 3864
    monitor-exit v0

    return-void

    .line 3866
    :cond_9
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mOptions:Landroid/content/AutofillOptions;

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Landroid/content/AutofillOptions;->appDisabledExpiration:J

    .line 3867
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mOptions:Landroid/content/AutofillOptions;

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/content/AutofillOptions;->disabledActivities:Landroid/util/ArrayMap;

    .line 3868
    monitor-exit v0

    .line 3869
    return-void

    .line 3868
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public whitelist notifyValueChanged(Landroid/view/View;)V
    .registers 10

    .line 2166
    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    if-nez v0, :cond_7

    .line 2167
    return-void

    .line 2169
    :cond_7
    nop

    .line 2170
    nop

    .line 2171
    nop

    .line 2173
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2176
    :try_start_d
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v0, :cond_18

    .line 2177
    invoke-virtual {p1, v3, v3}, Landroid/view/View;->setAutofilled(ZZ)V

    move-object v0, v2

    goto :goto_69

    .line 2179
    :cond_18
    invoke-virtual {p1}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v4

    .line 2180
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

    invoke-virtual {v0, v4}, Landroid/view/autofill/ParcelableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 2181
    invoke-virtual {p1}, Landroid/view/View;->getAutofillValue()Landroid/view/autofill/AutofillValue;

    move-result-object v2

    .line 2182
    nop

    .line 2183
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

    invoke-virtual {v0}, Landroid/view/autofill/ParcelableMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v5, 0x1

    if-ne v0, v5, :cond_38

    move v0, v5

    goto :goto_39

    :cond_38
    move v0, v3

    .line 2185
    :goto_39
    iget-object v6, p0, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

    invoke-virtual {v6, v4}, Landroid/view/autofill/ParcelableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_58

    .line 2186
    invoke-virtual {p1, v5, v0}, Landroid/view/View;->setAutofilled(ZZ)V
    :try_end_48
    .catchall {:try_start_d .. :try_end_48} :catchall_c7

    .line 2188
    :try_start_48
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    iget v3, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    iget-object v6, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getUserId()I

    move-result v6

    invoke-interface {v0, v3, v4, v6}, Landroid/view/autofill/IAutoFillManager;->setViewAutofilled(ILandroid/view/autofill/AutofillId;I)V
    :try_end_55
    .catch Landroid/os/RemoteException; {:try_start_48 .. :try_end_55} :catch_56
    .catchall {:try_start_48 .. :try_end_55} :catchall_c7

    goto :goto_57

    .line 2189
    :catch_56
    move-exception v0

    .line 2193
    :goto_57
    goto :goto_60

    .line 2195
    :cond_58
    :try_start_58
    invoke-virtual {p1, v3, v3}, Landroid/view/View;->setAutofilled(ZZ)V

    .line 2196
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

    invoke-virtual {v0, v4}, Landroid/view/autofill/ParcelableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2198
    :goto_60
    move-object v0, v2

    move-object v2, v4

    move v3, v5

    goto :goto_69

    .line 2199
    :cond_64
    invoke-virtual {p1, v3, v3}, Landroid/view/View;->setAutofilled(ZZ)V

    move-object v0, v2

    move-object v2, v4

    .line 2203
    :goto_69
    iget-boolean v4, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    if-eqz v4, :cond_90

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isActiveLocked()Z

    move-result v4

    if-nez v4, :cond_74

    goto :goto_90

    .line 2213
    :cond_74
    if-nez v2, :cond_7a

    .line 2214
    invoke-virtual {p1}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v2

    .line 2217
    :cond_7a
    if-nez v3, :cond_82

    .line 2218
    invoke-virtual {p1}, Landroid/view/View;->getAutofillValue()Landroid/view/autofill/AutofillValue;

    move-result-object v0

    move-object v5, v0

    goto :goto_83

    .line 2217
    :cond_82
    move-object v5, v0

    .line 2221
    :goto_83
    invoke-direct {p0, p1}, Landroid/view/autofill/AutofillManager;->getImeStateFlag(Landroid/view/View;)I

    move-result v7

    const/4 v4, 0x0

    const/4 v6, 0x4

    move-object v3, v2

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Landroid/view/autofill/AutofillManager;->updateSessionLocked(Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;II)V

    .line 2222
    monitor-exit v1

    .line 2223
    return-void

    .line 2204
    :cond_90
    :goto_90
    invoke-direct {p0, p1}, Landroid/view/autofill/AutofillManager;->startAutofillIfNeededLocked(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_c5

    .line 2205
    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_c5

    .line 2206
    const-string v0, "AutofillManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyValueChanged("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "): ignoring on state "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 2207
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getStateAsStringLocked()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2206
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2210
    :cond_c5
    monitor-exit v1

    return-void

    .line 2222
    :catchall_c7
    move-exception v0

    move-object p1, v0

    monitor-exit v1
    :try_end_ca
    .catchall {:try_start_58 .. :try_end_ca} :catchall_c7

    throw p1
.end method

.method public whitelist notifyValueChanged(Landroid/view/View;ILandroid/view/autofill/AutofillValue;)V
    .registers 12

    .line 2233
    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    if-nez v0, :cond_7

    .line 2234
    return-void

    .line 2240
    :cond_7
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2241
    :try_start_a
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

    if-eqz v0, :cond_6a

    .line 2242
    new-instance v0, Landroid/view/autofill/AutofillId;

    invoke-virtual {p1}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v2

    iget v3, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    invoke-direct {v0, v2, p2, v3}, Landroid/view/autofill/AutofillId;-><init>(Landroid/view/autofill/AutofillId;II)V

    .line 2243
    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

    invoke-virtual {v2, v0}, Landroid/view/autofill/ParcelableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6a

    .line 2244
    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

    invoke-virtual {v2, v0}, Landroid/view/autofill/ParcelableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6a

    .line 2246
    sget-boolean v2, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_54

    .line 2247
    const-string v2, "AutofillManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifyValueChanged() virtual view autofilled successfully:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_54
    .catchall {:try_start_a .. :try_end_54} :catchall_c1

    .line 2251
    :cond_54
    :try_start_54
    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    iget v3, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    iget-object v4, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-interface {v2, v3, v0, v4}, Landroid/view/autofill/IAutoFillManager;->setViewAutofilled(ILandroid/view/autofill/AutofillId;I)V
    :try_end_61
    .catch Landroid/os/RemoteException; {:try_start_54 .. :try_end_61} :catch_62
    .catchall {:try_start_54 .. :try_end_61} :catchall_c1

    .line 2257
    goto :goto_6a

    .line 2252
    :catch_62
    move-exception v0

    .line 2256
    :try_start_63
    const-string v2, "AutofillManager"

    const-string v3, "RemoteException caught but ignored"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2261
    :cond_6a
    :goto_6a
    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    if-eqz v0, :cond_86

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isActiveLocked()Z

    move-result v0

    if-nez v0, :cond_75

    goto :goto_86

    .line 2269
    :cond_75
    invoke-static {p1, p2}, Landroid/view/autofill/AutofillManager;->getAutofillId(Landroid/view/View;I)Landroid/view/autofill/AutofillId;

    move-result-object v3

    .line 2270
    invoke-direct {p0, p1}, Landroid/view/autofill/AutofillManager;->getImeStateFlag(Landroid/view/View;)I

    move-result v7

    const/4 v4, 0x0

    const/4 v6, 0x4

    move-object v2, p0

    move-object v5, p3

    invoke-direct/range {v2 .. v7}, Landroid/view/autofill/AutofillManager;->updateSessionLocked(Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;II)V

    .line 2271
    monitor-exit v1

    .line 2272
    return-void

    .line 2262
    :cond_86
    :goto_86
    sget-boolean p3, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz p3, :cond_bf

    .line 2263
    const-string p3, "AutofillManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyValueChanged("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "): ignoring on state "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 2264
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getStateAsStringLocked()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2263
    invoke-static {p3, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2266
    :cond_bf
    monitor-exit v1

    return-void

    .line 2271
    :catchall_c1
    move-exception v0

    move-object p1, v0

    monitor-exit v1
    :try_end_c4
    .catchall {:try_start_63 .. :try_end_c4} :catchall_c1

    throw p1
.end method

.method public whitelist notifyViewClicked(Landroid/view/View;)V
    .registers 2

    .line 2280
    invoke-virtual {p1}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/view/autofill/AutofillManager;->notifyViewClicked(Landroid/view/autofill/AutofillId;)V

    .line 2281
    return-void
.end method

.method public whitelist notifyViewClicked(Landroid/view/View;I)V
    .registers 3

    .line 2290
    invoke-static {p1, p2}, Landroid/view/autofill/AutofillManager;->getAutofillId(Landroid/view/View;I)Landroid/view/autofill/AutofillId;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/view/autofill/AutofillManager;->notifyViewClicked(Landroid/view/autofill/AutofillId;)V

    .line 2291
    return-void
.end method

.method public whitelist notifyViewEntered(Landroid/view/View;)V
    .registers 3

    .line 1644
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/autofill/AutofillManager;->notifyViewEntered(Landroid/view/View;I)V

    .line 1645
    return-void
.end method

.method public whitelist notifyViewEntered(Landroid/view/View;ILandroid/graphics/Rect;)V
    .registers 5

    .line 2006
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/autofill/AutofillManager;->notifyViewEntered(Landroid/view/View;ILandroid/graphics/Rect;I)V

    .line 2007
    return-void
.end method

.method public blacklist notifyViewEnteredForAugmentedAutofill(Landroid/view/View;)V
    .registers 5

    .line 3089
    invoke-virtual {p1}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object p1

    .line 3090
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3091
    :try_start_7
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mEnteredForAugmentedAutofillIds:Ljava/util/Set;

    if-nez v1, :cond_13

    .line 3092
    new-instance v1, Landroid/util/ArraySet;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v1, p0, Landroid/view/autofill/AutofillManager;->mEnteredForAugmentedAutofillIds:Ljava/util/Set;

    .line 3094
    :cond_13
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mEnteredForAugmentedAutofillIds:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3095
    monitor-exit v0

    .line 3096
    return-void

    .line 3095
    :catchall_1a
    move-exception p1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_1a

    throw p1
.end method

.method public blacklist notifyViewEnteredForFillDialog(Landroid/view/View;)V
    .registers 6

    .line 1706
    nop

    .line 1707
    invoke-direct {p0, p1}, Landroid/view/autofill/AutofillManager;->shouldSuppressDialogsForCredman(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_5c

    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mIsFillAndSaveDialogDisabledForCredentialManager:Z

    if-eqz v0, :cond_5c

    .line 1709
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mScreenHasCredmanField:Z

    .line 1710
    invoke-direct {p0, p1}, Landroid/view/autofill/AutofillManager;->isCredmanRequested(Landroid/view/View;)Z

    move-result v1

    const-string v2, "AutofillManager"

    if-eqz v1, :cond_39

    .line 1711
    sget-boolean v1, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_38

    .line 1712
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Prefetching fill response for credMan: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1713
    invoke-virtual {p1}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/autofill/AutofillId;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1712
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1715
    :cond_38
    goto :goto_5d

    .line 1717
    :cond_39
    sget-boolean v0, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_5b

    .line 1718
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring Fill Dialog request since important for credMan:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1719
    invoke-virtual {p1}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/autofill/AutofillId;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1718
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1721
    :cond_5b
    return-void

    .line 1724
    :cond_5c
    const/4 v0, 0x0

    :goto_5d
    invoke-virtual {p1}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getAutofillHints()[Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1, v0}, Landroid/view/autofill/AutofillManager;->notifyViewReadyInner(Landroid/view/autofill/AutofillId;[Ljava/lang/String;Z)V

    .line 1725
    return-void
.end method

.method public blacklist notifyViewEnteredIgnoredDuringAuthCount()V
    .registers 4

    .line 1601
    :try_start_0
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    iget v1, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/view/autofill/IAutoFillManager;->notifyViewEnteredIgnoredDuringAuthCount(II)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    .line 1606
    goto :goto_f

    .line 1602
    :catch_e
    move-exception v0

    .line 1607
    :goto_f
    return-void
.end method

.method public whitelist notifyViewExited(Landroid/view/View;)V
    .registers 3

    .line 1897
    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1898
    return-void

    .line 1900
    :cond_7
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1901
    :try_start_a
    invoke-virtual {p0, p1}, Landroid/view/autofill/AutofillManager;->notifyViewExitedLocked(Landroid/view/View;)V

    .line 1902
    monitor-exit v0

    .line 1903
    return-void

    .line 1902
    :catchall_f
    move-exception p1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_f

    throw p1
.end method

.method public whitelist notifyViewExited(Landroid/view/View;I)V
    .registers 6

    .line 2135
    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_2b

    const-string v0, "AutofillManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyViewExited("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2136
    :cond_2b
    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    if-nez v0, :cond_32

    .line 2137
    return-void

    .line 2139
    :cond_32
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2140
    :try_start_35
    invoke-direct {p0, p1, p2}, Landroid/view/autofill/AutofillManager;->notifyViewExitedLocked(Landroid/view/View;I)V

    .line 2141
    monitor-exit v0

    .line 2142
    return-void

    .line 2141
    :catchall_3a
    move-exception p1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_35 .. :try_end_3c} :catchall_3a

    throw p1
.end method

.method greylist-max-o notifyViewExitedLocked(Landroid/view/View;)V
    .registers 9

    .line 1907
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->tryAddServiceClientIfNeededLocked()Z

    move-result v0

    .line 1909
    if-eqz v0, :cond_26

    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    if-nez v0, :cond_e

    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mEnabledForAugmentedAutofillOnly:Z

    if-eqz v0, :cond_26

    .line 1910
    :cond_e
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isActiveLocked()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1912
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isClientDisablingEnterExitEvent()Z

    move-result v0

    if-nez v0, :cond_26

    .line 1913
    invoke-virtual {p1}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v2

    .line 1916
    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Landroid/view/autofill/AutofillManager;->updateSessionLocked(Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;II)V

    .line 1919
    :cond_26
    return-void
.end method

.method public whitelist notifyViewVisibilityChanged(Landroid/view/View;IZ)V
    .registers 5

    .line 1939
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/autofill/AutofillManager;->notifyViewVisibilityChangedInternal(Landroid/view/View;IZZ)V

    .line 1940
    return-void
.end method

.method public whitelist notifyViewVisibilityChanged(Landroid/view/View;Z)V
    .registers 4

    .line 1928
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, v0}, Landroid/view/autofill/AutofillManager;->notifyViewVisibilityChangedInternal(Landroid/view/View;IZZ)V

    .line 1929
    return-void
.end method

.method public whitelist notifyVirtualViewsReady(Landroid/view/View;Landroid/util/SparseArray;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/util/SparseArray<",
            "Landroid/view/autofill/VirtualViewFillInfo;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1668
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1669
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_8b

    .line 1672
    nop

    .line 1673
    invoke-direct {p0, p1}, Landroid/view/autofill/AutofillManager;->shouldSuppressDialogsForCredman(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_66

    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mIsFillAndSaveDialogDisabledForCredentialManager:Z

    if-eqz v0, :cond_66

    .line 1675
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mScreenHasCredmanField:Z

    .line 1676
    invoke-direct {p0, p1}, Landroid/view/autofill/AutofillManager;->isCredmanRequested(Landroid/view/View;)Z

    move-result v2

    const-string v3, "AutofillManager"

    if-eqz v2, :cond_43

    .line 1677
    sget-boolean v2, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_42

    .line 1678
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Prefetching fill response for credMan: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1679
    invoke-virtual {p1}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/autofill/AutofillId;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1678
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1681
    :cond_42
    goto :goto_67

    .line 1683
    :cond_43
    sget-boolean p2, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz p2, :cond_65

    .line 1684
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ignoring Fill Dialog request since important for credMan:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 1685
    invoke-virtual {p1}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/autofill/AutofillId;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1684
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1687
    :cond_65
    return-void

    .line 1690
    :cond_66
    move v0, v1

    :goto_67
    nop

    :goto_68
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_8a

    .line 1691
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/autofill/VirtualViewFillInfo;

    .line 1692
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 1693
    invoke-static {p1, v3}, Landroid/view/autofill/AutofillManager;->getAutofillId(Landroid/view/View;I)Landroid/view/autofill/AutofillId;

    move-result-object v3

    .line 1694
    if-nez v2, :cond_80

    const/4 v2, 0x0

    goto :goto_84

    :cond_80
    invoke-virtual {v2}, Landroid/view/autofill/VirtualViewFillInfo;->getAutofillHints()[Ljava/lang/String;

    move-result-object v2

    .line 1693
    :goto_84
    invoke-direct {p0, v3, v2, v0}, Landroid/view/autofill/AutofillManager;->notifyViewReadyInner(Landroid/view/autofill/AutofillId;[Ljava/lang/String;Z)V

    .line 1690
    add-int/lit8 v1, v1, 0x1

    goto :goto_68

    .line 1696
    :cond_8a
    return-void

    .line 1670
    :cond_8b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No VirtualViewInfo found"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public greylist-max-o onActivityFinishing()V
    .registers 4

    .line 2317
    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    if-nez v0, :cond_7

    .line 2318
    return-void

    .line 2320
    :cond_7
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2321
    :try_start_a
    iget-boolean v1, p0, Landroid/view/autofill/AutofillManager;->mSaveOnFinish:Z

    if-eqz v1, :cond_1f

    .line 2322
    sget-boolean v1, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_1a

    const-string v1, "AutofillManager"

    const-string/jumbo v2, "onActivityFinishing(): calling commitLocked()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2323
    :cond_1a
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/view/autofill/AutofillManager;->commitLocked(I)V

    goto :goto_2e

    .line 2325
    :cond_1f
    sget-boolean v1, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_2b

    const-string v1, "AutofillManager"

    const-string/jumbo v2, "onActivityFinishing(): calling cancelLocked()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2326
    :cond_2b
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->cancelLocked()V

    .line 2328
    :goto_2e
    monitor-exit v0

    .line 2329
    return-void

    .line 2328
    :catchall_30
    move-exception v1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_a .. :try_end_32} :catchall_30

    throw v1
.end method

.method public greylist-max-o onAuthenticationResult(ILandroid/content/Intent;Landroid/view/View;)V
    .registers 12

    .line 2634
    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_3d

    .line 2635
    const-string v0, "AutofillManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAuthenticationResult(): authId= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", autofill manager instance="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", context="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2638
    :cond_3d
    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    if-nez v0, :cond_50

    .line 2639
    sget-boolean p1, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz p1, :cond_4f

    .line 2640
    const-string p1, "AutofillManager"

    const-string/jumbo p2, "onAuthenticationResult(): autofill not enabled"

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2642
    :cond_4f
    return-void

    .line 2649
    :cond_50
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2650
    :try_start_53
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isActiveLocked()Z

    move-result v0

    if-nez v0, :cond_7c

    .line 2651
    const-string p1, "AutofillManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "onAuthenticationResult(): sessionId="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p3, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " not active"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2652
    monitor-exit v1

    return-void

    .line 2654
    :cond_7c
    const/4 v0, 0x1

    iput v0, p0, Landroid/view/autofill/AutofillManager;->mState:I

    .line 2660
    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mOnInvisibleCalled:Z

    if-nez v0, :cond_a0

    if-eqz p3, :cond_a0

    .line 2661
    invoke-virtual {p3}, Landroid/view/View;->canNotifyAutofillEnterExitEvent()Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 2662
    invoke-virtual {p0, p3}, Landroid/view/autofill/AutofillManager;->notifyViewExitedLocked(Landroid/view/View;)V

    .line 2663
    invoke-virtual {p3}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v4

    .line 2664
    invoke-virtual {p3}, Landroid/view/View;->getAutofillValue()Landroid/view/autofill/AutofillValue;

    move-result-object v6

    .line 2663
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p3

    invoke-direct/range {v2 .. v7}, Landroid/view/autofill/AutofillManager;->notifyViewEnteredLocked(Landroid/view/View;Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;I)Landroid/view/autofill/AutofillManager$AutofillCallback;

    goto :goto_a1

    .line 2661
    :cond_9e
    move-object v2, p0

    goto :goto_a1

    .line 2660
    :cond_a0
    move-object v2, p0

    .line 2666
    :goto_a1
    if-nez p2, :cond_ad

    .line 2668
    const-string p1, "AutofillManager"

    const-string/jumbo p2, "onAuthenticationResult(): empty intent"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2669
    monitor-exit v1

    return-void

    .line 2673
    :cond_ad
    const-string p3, "android.view.autofill.extra.AUTHENTICATION_RESULT"

    invoke-virtual {p2, p3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p3

    if-eqz p3, :cond_bc

    .line 2674
    const-string p3, "android.view.autofill.extra.AUTHENTICATION_RESULT"

    invoke-virtual {p2, p3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p3

    goto :goto_d2

    .line 2675
    :cond_bc
    const-string p3, "android.service.credentials.extra.GET_CREDENTIAL_RESPONSE"

    invoke-virtual {p2, p3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p3

    if-eqz p3, :cond_d1

    .line 2677
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/Flags;->autofillCredmanIntegration()Z

    move-result p3

    if-eqz p3, :cond_d1

    .line 2678
    const-string p3, "android.service.credentials.extra.GET_CREDENTIAL_RESPONSE"

    invoke-virtual {p2, p3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p3

    goto :goto_d2

    .line 2681
    :cond_d1
    const/4 p3, 0x0

    .line 2684
    :goto_d2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2685
    const-string v3, "android.view.autofill.extra.AUTHENTICATION_RESULT"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2686
    const-string p3, "android.service.credentials.extra.GET_CREDENTIAL_EXCEPTION"

    const-class v3, Landroid/credentials/GetCredentialException;

    invoke-virtual {p2, p3, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object p3

    .line 2689
    if-eqz p3, :cond_f1

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/Flags;->autofillCredmanIntegration()Z

    move-result v3

    if-eqz v3, :cond_f1

    .line 2690
    const-string v3, "android.service.credentials.extra.GET_CREDENTIAL_EXCEPTION"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 2693
    :cond_f1
    const-string p3, "android.view.autofill.extra.CLIENT_STATE"

    invoke-virtual {p2, p3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p3

    .line 2694
    if-eqz p3, :cond_fe

    .line 2695
    const-string v3, "android.view.autofill.extra.CLIENT_STATE"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2697
    :cond_fe
    const-string p3, "android.view.autofill.extra.AUTHENTICATION_RESULT_EPHEMERAL_DATASET"

    invoke-virtual {p2, p3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_112

    .line 2698
    const-string p3, "android.view.autofill.extra.AUTHENTICATION_RESULT_EPHEMERAL_DATASET"

    const-string v3, "android.view.autofill.extra.AUTHENTICATION_RESULT_EPHEMERAL_DATASET"

    .line 2699
    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    .line 2698
    invoke-virtual {v0, p3, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_112
    .catchall {:try_start_53 .. :try_end_112} :catchall_12b

    .line 2703
    :cond_112
    :try_start_112
    iget-object p2, v2, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    iget p3, v2, Landroid/view/autofill/AutofillManager;->mSessionId:I

    iget-object v2, v2, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    .line 2704
    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    .line 2703
    invoke-interface {p2, v0, p3, p1, v2}, Landroid/view/autofill/IAutoFillManager;->setAuthenticationResult(Landroid/os/Bundle;III)V
    :try_end_11f
    .catch Landroid/os/RemoteException; {:try_start_112 .. :try_end_11f} :catch_120
    .catchall {:try_start_112 .. :try_end_11f} :catchall_12b

    .line 2707
    goto :goto_129

    .line 2705
    :catch_120
    move-exception v0

    move-object p1, v0

    .line 2706
    :try_start_122
    const-string p2, "AutofillManager"

    const-string p3, "Error delivering authentication result"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2708
    :goto_129
    monitor-exit v1

    .line 2709
    return-void

    .line 2708
    :catchall_12b
    move-exception v0

    move-object p1, v0

    monitor-exit v1
    :try_end_12e
    .catchall {:try_start_122 .. :try_end_12e} :catchall_12b

    throw p1
.end method

.method public greylist-max-o onCreate(Landroid/os/Bundle;)V
    .registers 10

    .line 1337
    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1338
    return-void

    .line 1340
    :cond_7
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1341
    :try_start_a
    const-string v1, "android:lastAutoFilledData"

    const-class v2, Landroid/view/autofill/ParcelableMap;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/autofill/ParcelableMap;

    iput-object v1, p0, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

    .line 1343
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isActiveLocked()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 1344
    const-string p1, "AutofillManager"

    const-string v1, "New session was started before onCreate()"

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1345
    monitor-exit v0

    return-void

    .line 1348
    :cond_25
    const-string v1, "android:sessionId"

    const v2, 0x7fffffff

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    .line 1349
    const-string v1, "android:state"

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Landroid/view/autofill/AutofillManager;->mState:I

    .line 1351
    iget p1, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    if-eq p1, v2, :cond_e9

    .line 1352
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->tryAddServiceClientIfNeededLocked()Z

    move-result p1

    .line 1354
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v1

    .line 1355
    if-eqz v1, :cond_e9

    .line 1356
    new-instance v4, Lcom/android/internal/util/SyncResultReceiver;

    const/16 v5, 0x1388

    invoke-direct {v4, v5}, Lcom/android/internal/util/SyncResultReceiver;-><init>(I)V
    :try_end_4e
    .catchall {:try_start_a .. :try_end_4e} :catchall_eb

    .line 1359
    nop

    .line 1360
    if-eqz p1, :cond_6c

    .line 1361
    :try_start_51
    iget-object p1, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    iget v5, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    .line 1362
    invoke-interface {v1}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientGetActivityToken()Landroid/os/IBinder;

    move-result-object v6

    iget-object v7, p0, Landroid/view/autofill/AutofillManager;->mServiceClient:Landroid/view/autofill/IAutoFillManagerClient;

    .line 1363
    invoke-interface {v7}, Landroid/view/autofill/IAutoFillManagerClient;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 1361
    invoke-interface {p1, v5, v6, v7, v4}, Landroid/view/autofill/IAutoFillManager;->restoreSession(ILandroid/os/IBinder;Landroid/os/IBinder;Lcom/android/internal/os/IResultReceiver;)V

    .line 1364
    invoke-virtual {v4}, Lcom/android/internal/util/SyncResultReceiver;->getIntResult()I

    move-result p1

    const/4 v4, 0x1

    if-ne p1, v4, :cond_6a

    goto :goto_87

    :cond_6a
    move v4, v3

    goto :goto_87

    .line 1366
    :cond_6c
    const-string p1, "AutofillManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No service client for session "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v3

    .line 1369
    :goto_87
    if-nez v4, :cond_ae

    .line 1370
    const-string p1, "AutofillManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Session "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " could not be restored"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1371
    iput v2, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    .line 1372
    iput v3, p0, Landroid/view/autofill/AutofillManager;->mState:I

    goto :goto_e8

    .line 1374
    :cond_ae
    sget-boolean p1, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz p1, :cond_d3

    .line 1375
    const-string p1, "AutofillManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " was restored"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    :cond_d3
    invoke-interface {v1}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientResetableStateAvailable()V
    :try_end_d6
    .catch Landroid/os/RemoteException; {:try_start_51 .. :try_end_d6} :catch_e0
    .catch Lcom/android/internal/util/SyncResultReceiver$TimeoutException; {:try_start_51 .. :try_end_d6} :catch_d7
    .catchall {:try_start_51 .. :try_end_d6} :catchall_eb

    goto :goto_e8

    .line 1382
    :catch_d7
    move-exception p1

    .line 1383
    :try_start_d8
    const-string v1, "AutofillManager"

    const-string v2, "Fail to get session restore status"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e9

    .line 1380
    :catch_e0
    move-exception p1

    .line 1381
    const-string v1, "AutofillManager"

    const-string v2, "Could not figure out if there was an autofill session"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1384
    :goto_e8
    nop

    .line 1387
    :cond_e9
    :goto_e9
    monitor-exit v0

    .line 1388
    return-void

    .line 1387
    :catchall_eb
    move-exception p1

    monitor-exit v0
    :try_end_ed
    .catchall {:try_start_d8 .. :try_end_ed} :catchall_eb

    throw p1
.end method

.method public blacklist onInvisibleForAutofill(Z)V
    .registers 10

    .line 1422
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1423
    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mOnInvisibleCalled:Z

    .line 1425
    if-eqz p1, :cond_3c

    .line 1426
    iget-boolean p1, p0, Landroid/view/autofill/AutofillManager;->mRelayoutFix:Z

    if-eqz p1, :cond_2b

    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->isAuthenticationPending()Z

    move-result p1

    if-eqz p1, :cond_2b

    .line 1427
    const-string p1, "AutofillManager"

    const-string/jumbo v0, "onInvisibleForAutofill(): Ignoring expiringResponse due to pending authentication"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catchall {:try_start_4 .. :try_end_1a} :catchall_3e

    .line 1430
    :try_start_1a
    iget-object p1, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    iget v0, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    .line 1431
    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    .line 1430
    invoke-interface {p1, v0, v2}, Landroid/view/autofill/IAutoFillManager;->notifyNotExpiringResponseDuringAuth(II)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_27} :catch_28
    .catchall {:try_start_1a .. :try_end_27} :catchall_3e

    .line 1436
    goto :goto_29

    .line 1432
    :catch_28
    move-exception v0

    .line 1437
    :goto_29
    :try_start_29
    monitor-exit v1

    return-void

    .line 1439
    :cond_2b
    const-string p1, "AutofillManager"

    const-string/jumbo v0, "onInvisibleForAutofill(): expiringResponse"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1441
    const/4 v6, 0x5

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Landroid/view/autofill/AutofillManager;->updateSessionLocked(Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;II)V

    .line 1444
    :cond_3c
    monitor-exit v1

    .line 1445
    return-void

    .line 1444
    :catchall_3e
    move-exception v0

    move-object p1, v0

    monitor-exit v1
    :try_end_41
    .catchall {:try_start_29 .. :try_end_41} :catchall_3e

    throw p1
.end method

.method public greylist-max-o onPendingSaveUi(ILandroid/os/IBinder;)V
    .registers 6

    .line 3955
    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_27

    const-string v0, "AutofillManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPendingSaveUi("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3957
    :cond_27
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3959
    :try_start_2a
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    invoke-interface {v1, p1, p2}, Landroid/view/autofill/IAutoFillManager;->onPendingSaveUi(ILandroid/os/IBinder;)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_2f} :catch_32
    .catchall {:try_start_2a .. :try_end_2f} :catchall_30

    .line 3962
    goto :goto_3a

    .line 3963
    :catchall_30
    move-exception p1

    goto :goto_3c

    .line 3960
    :catch_32
    move-exception p1

    .line 3961
    :try_start_33
    const-string p2, "AutofillManager"

    const-string v1, "Error in onPendingSaveUi: "

    invoke-static {p2, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3963
    :goto_3a
    monitor-exit v0

    .line 3964
    return-void

    .line 3963
    :goto_3c
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_33 .. :try_end_3d} :catchall_30

    throw p1
.end method

.method public greylist-max-o onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5

    .line 1455
    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1456
    return-void

    .line 1458
    :cond_7
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1459
    :try_start_a
    iget v1, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_18

    .line 1460
    const-string v1, "android:sessionId"

    iget v2, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1462
    :cond_18
    iget v1, p0, Landroid/view/autofill/AutofillManager;->mState:I

    if-eqz v1, :cond_23

    .line 1463
    const-string v1, "android:state"

    iget v2, p0, Landroid/view/autofill/AutofillManager;->mState:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1465
    :cond_23
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

    if-eqz v1, :cond_2e

    .line 1466
    const-string v1, "android:lastAutoFilledData"

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1468
    :cond_2e
    monitor-exit v0

    .line 1469
    return-void

    .line 1468
    :catchall_30
    move-exception p1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_a .. :try_end_32} :catchall_30

    throw p1
.end method

.method public greylist-max-o onVisibleForAutofill()V
    .registers 5

    .line 1403
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    new-instance v1, Landroid/view/autofill/AutofillManager$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Landroid/view/autofill/AutofillManager$$ExternalSyntheticLambda4;-><init>(Landroid/view/autofill/AutofillManager;)V

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-virtual {v0, v3, v1, v2}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 1410
    return-void
.end method

.method greylist-max-o post(Ljava/lang/Runnable;)V
    .registers 3

    .line 4100
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v0

    .line 4101
    if-nez v0, :cond_12

    .line 4102
    sget-boolean p1, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz p1, :cond_11

    const-string p1, "AutofillManager"

    const-string v0, "ignoring post() because client is null"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4103
    :cond_11
    return-void

    .line 4105
    :cond_12
    invoke-interface {v0, p1}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientRunOnUiThread(Ljava/lang/Runnable;)V

    .line 4106
    return-void
.end method

.method public whitelist registerCallback(Landroid/view/autofill/AutofillManager$AutofillCallback;)V
    .registers 6

    .line 2990
    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    if-nez v0, :cond_7

    .line 2991
    return-void

    .line 2993
    :cond_7
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2994
    if-nez p1, :cond_e

    :try_start_c
    monitor-exit v0

    return-void

    .line 2996
    :cond_e
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;

    const/4 v2, 0x1

    if-eqz v1, :cond_15

    move v1, v2

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    .line 2997
    :goto_16
    iput-object p1, p0, Landroid/view/autofill/AutofillManager;->mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;
    :try_end_18
    .catchall {:try_start_c .. :try_end_18} :catchall_30

    .line 2999
    if-nez v1, :cond_2e

    .line 3001
    :try_start_1a
    iget-object p1, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    iget v1, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-interface {p1, v1, v3, v2}, Landroid/view/autofill/IAutoFillManager;->setHasCallback(IIZ)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_27} :catch_28
    .catchall {:try_start_1a .. :try_end_27} :catchall_30

    .line 3004
    goto :goto_2e

    .line 3002
    :catch_28
    move-exception p1

    .line 3003
    :try_start_29
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 3006
    :cond_2e
    :goto_2e
    monitor-exit v0

    .line 3007
    return-void

    .line 3006
    :catchall_30
    move-exception p1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_29 .. :try_end_32} :catchall_30

    throw p1
.end method

.method public whitelist requestAutofill(Landroid/view/View;)V
    .registers 3

    .line 1529
    nop

    .line 1530
    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1531
    const/16 v0, 0x11

    goto :goto_b

    .line 1530
    :cond_a
    const/4 v0, 0x1

    .line 1533
    :goto_b
    invoke-direct {p0, p1, v0}, Landroid/view/autofill/AutofillManager;->notifyViewEntered(Landroid/view/View;I)V

    .line 1534
    return-void
.end method

.method public whitelist requestAutofill(Landroid/view/View;ILandroid/graphics/Rect;)V
    .registers 5

    .line 1580
    nop

    .line 1581
    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1582
    const/16 v0, 0x11

    goto :goto_b

    .line 1581
    :cond_a
    const/4 v0, 0x1

    .line 1584
    :goto_b
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/autofill/AutofillManager;->notifyViewEntered(Landroid/view/View;ILandroid/graphics/Rect;I)V

    .line 1585
    return-void
.end method

.method blacklist requestAutofillFromNewSession(Landroid/view/View;)V
    .registers 2

    .line 1551
    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->cancel()V

    .line 1552
    invoke-virtual {p0, p1}, Landroid/view/autofill/AutofillManager;->notifyViewEntered(Landroid/view/View;)V

    .line 1553
    return-void
.end method

.method public greylist-max-o requestHideFillUi()V
    .registers 3

    .line 3793
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mIdShownFillUi:Landroid/view/autofill/AutofillId;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/view/autofill/AutofillManager;->requestHideFillUi(Landroid/view/autofill/AutofillId;Z)V

    .line 3794
    return-void
.end method

.method public whitelist setAugmentedAutofillWhitelist(Ljava/util/Set;Ljava/util/Set;)V
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .line 3052
    const-string v0, "AutofillManager"

    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v1

    if-nez v1, :cond_9

    .line 3053
    return-void

    .line 3056
    :cond_9
    new-instance v1, Lcom/android/internal/util/SyncResultReceiver;

    const/16 v2, 0x1388

    invoke-direct {v1, v2}, Lcom/android/internal/util/SyncResultReceiver;-><init>(I)V

    .line 3059
    :try_start_10
    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    invoke-static {p1}, Landroid/view/autofill/Helper;->toList(Ljava/util/Set;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p2}, Landroid/view/autofill/Helper;->toList(Ljava/util/Set;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-interface {v2, p1, p2, v1}, Landroid/view/autofill/IAutoFillManager;->setAugmentedAutofillWhitelist(Ljava/util/List;Ljava/util/List;Lcom/android/internal/os/IResultReceiver;)V

    .line 3061
    invoke-virtual {v1}, Lcom/android/internal/util/SyncResultReceiver;->getIntResult()I

    move-result p1
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_21} :catch_4d
    .catch Lcom/android/internal/util/SyncResultReceiver$TimeoutException; {:try_start_10 .. :try_end_21} :catch_46

    .line 3067
    nop

    .line 3068
    packed-switch p1, :pswitch_data_54

    .line 3074
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAugmentedAutofillWhitelist(): received invalid result: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3077
    return-void

    .line 3070
    :pswitch_3d
    return-void

    .line 3072
    :pswitch_3e
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "caller is not user\'s Augmented Autofill Service"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3064
    :catch_46
    move-exception p1

    .line 3065
    const-string p2, "Fail to get the result of set AugmentedAutofill whitelist."

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3066
    return-void

    .line 3062
    :catch_4d
    move-exception p1

    .line 3063
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    nop

    :pswitch_data_54
    .packed-switch -0x1
        :pswitch_3e
        :pswitch_3d
    .end packed-switch
.end method

.method public whitelist setUserData(Landroid/service/autofill/UserData;)V
    .registers 3

    .line 2507
    :try_start_0
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    invoke-interface {v0, p1}, Landroid/view/autofill/IAutoFillManager;->setUserData(Landroid/service/autofill/UserData;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 2510
    nop

    .line 2511
    return-void

    .line 2508
    :catch_7
    move-exception p1

    .line 2509
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist shouldAlwaysIncludeWebviewInAssistStructure()Z
    .registers 2

    .line 1166
    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mShouldAlwaysIncludeWebviewInAssistStructure:Z

    return v0
.end method

.method public blacklist shouldIgnoreCredentialViews()Z
    .registers 2

    .line 2629
    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mShouldIgnoreCredentialViews:Z

    return v0
.end method

.method public blacklist shouldIncludeAllChildrenViewInAssistStructure()Z
    .registers 2

    .line 1159
    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mShouldIncludeAllChildrenViewInAssistStructure:Z

    return v0
.end method

.method public blacklist shouldIncludeAllChildrenViewsWithAutofillTypeNotNoneInAssistStructure()Z
    .registers 2

    .line 1152
    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mShouldIncludeAllViewsWithAutofillTypeNotNoneInAssistStructure:Z

    return v0
.end method

.method public blacklist shouldIncludeInvisibleViewInAssistStructure()Z
    .registers 2

    .line 1173
    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mShouldIncludeInvisibleViewInAssistStructure:Z

    return v0
.end method

.method public blacklist shouldRetryFill()Z
    .registers 3

    .line 1616
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1617
    :try_start_3
    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->isAuthenticationPending()Z

    move-result v1

    if-eqz v1, :cond_f

    iget-boolean v1, p0, Landroid/view/autofill/AutofillManager;->mFillReAttemptNeeded:Z

    if-eqz v1, :cond_f

    const/4 v1, 0x1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    monitor-exit v0

    return v1

    .line 1618
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public whitelist showAutofillDialog(Landroid/view/View;)Z
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4140
    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->isImproveFillDialogEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 4141
    const-string p1, "AutofillManager"

    const-string/jumbo v0, "showAutofillDialog() return false due to improve fill dialog"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4142
    return v1

    .line 4144
    :cond_10
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4145
    invoke-virtual {p1}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/view/autofill/AutofillManager;->shouldShowAutofillDialog(Landroid/view/View;Landroid/view/autofill/AutofillId;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 4146
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mShowAutofillDialogCalled:Z

    .line 4147
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 4149
    new-instance p1, Landroid/view/autofill/AutofillManager$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0, v1}, Landroid/view/autofill/AutofillManager$$ExternalSyntheticLambda2;-><init>(Landroid/view/autofill/AutofillManager;Ljava/lang/ref/WeakReference;)V

    invoke-virtual {p0, p1}, Landroid/view/autofill/AutofillManager;->post(Ljava/lang/Runnable;)V

    .line 4155
    return v0

    .line 4157
    :cond_2e
    return v1
.end method

.method public whitelist showAutofillDialog(Landroid/view/View;I)Z
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4213
    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->isImproveFillDialogEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 4214
    const-string p1, "AutofillManager"

    const-string/jumbo p2, "showAutofillDialog() return false due to improve fill dialog"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4215
    return v1

    .line 4217
    :cond_10
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4218
    invoke-static {p1, p2}, Landroid/view/autofill/AutofillManager;->getAutofillId(Landroid/view/View;I)Landroid/view/autofill/AutofillId;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/view/autofill/AutofillManager;->shouldShowAutofillDialog(Landroid/view/View;Landroid/view/autofill/AutofillId;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 4219
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mShowAutofillDialogCalled:Z

    .line 4220
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 4222
    new-instance p1, Landroid/view/autofill/AutofillManager$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0, v1, p2}, Landroid/view/autofill/AutofillManager$$ExternalSyntheticLambda3;-><init>(Landroid/view/autofill/AutofillManager;Ljava/lang/ref/WeakReference;I)V

    invoke-virtual {p0, p1}, Landroid/view/autofill/AutofillManager;->post(Ljava/lang/Runnable;)V

    .line 4228
    return v0

    .line 4230
    :cond_2e
    return v1
.end method

.method public whitelist unregisterCallback(Landroid/view/autofill/AutofillManager$AutofillCallback;)V
    .registers 6

    .line 3015
    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    if-nez v0, :cond_7

    .line 3016
    return-void

    .line 3018
    :cond_7
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3019
    if-eqz p1, :cond_2f

    :try_start_c
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;

    if-eqz v1, :cond_2f

    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;

    if-eq p1, v1, :cond_15

    goto :goto_2f

    .line 3021
    :cond_15
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/view/autofill/AutofillManager;->mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;
    :try_end_18
    .catchall {:try_start_c .. :try_end_18} :catchall_31

    .line 3024
    :try_start_18
    iget-object p1, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    iget v1, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {p1, v1, v2, v3}, Landroid/view/autofill/IAutoFillManager;->setHasCallback(IIZ)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_26} :catch_29
    .catchall {:try_start_18 .. :try_end_26} :catchall_31

    .line 3027
    nop

    .line 3028
    :try_start_27
    monitor-exit v0

    .line 3029
    return-void

    .line 3025
    :catch_29
    move-exception p1

    .line 3026
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 3019
    :cond_2f
    :goto_2f
    monitor-exit v0

    return-void

    .line 3028
    :catchall_31
    move-exception p1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_27 .. :try_end_33} :catchall_31

    throw p1
.end method
