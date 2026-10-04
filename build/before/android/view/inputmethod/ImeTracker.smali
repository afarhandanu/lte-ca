.class public interface abstract Landroid/view/inputmethod/ImeTracker;
.super Ljava/lang/Object;
.source "ImeTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/inputmethod/ImeTracker$Token;,
        Landroid/view/inputmethod/ImeTracker$ImeJankTracker;,
        Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;,
        Landroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;,
        Landroid/view/inputmethod/ImeTracker$InputMethodJankContext;,
        Landroid/view/inputmethod/ImeTracker$Debug;,
        Landroid/view/inputmethod/ImeTracker$Phase;,
        Landroid/view/inputmethod/ImeTracker$Origin;,
        Landroid/view/inputmethod/ImeTracker$Status;,
        Landroid/view/inputmethod/ImeTracker$Type;
    }
.end annotation


# static fields
.field public static final blacklist DEBUG_IME_VISIBILITY:Z

.field public static final blacklist JANK_TRACKER:Landroid/view/inputmethod/ImeTracker$ImeJankTracker;

.field public static final blacklist LATENCY_TRACKER:Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;

.field public static final blacklist LOGGER:Landroid/view/inputmethod/ImeTracker;

.field public static final blacklist ORIGIN_CLIENT:I = 0x5

.field public static final blacklist ORIGIN_IME:I = 0x7

.field public static final blacklist ORIGIN_NOT_SET:I = 0x0

.field public static final blacklist ORIGIN_SERVER:I = 0x6

.field public static final blacklist ORIGIN_WM_SHELL:I = 0x8

.field public static final blacklist PHASE_CLIENT_ALREADY_HIDDEN:I = 0x41

.field public static final blacklist PHASE_CLIENT_ANIMATION_CANCEL:I = 0x28

.field public static final blacklist PHASE_CLIENT_ANIMATION_FINISHED_SHOW:I = 0x29

.field public static final blacklist PHASE_CLIENT_ANIMATION_RUNNING:I = 0x27

.field public static final blacklist PHASE_CLIENT_APPLY_ANIMATION:I = 0x20

.field public static final blacklist PHASE_CLIENT_CONTROL_ANIMATION:I = 0x21

.field public static final blacklist PHASE_CLIENT_HANDLE_DISPATCH_IME_VISIBILITY_CHANGED:I = 0x33

.field public static final blacklist PHASE_CLIENT_HANDLE_HIDE_INSETS:I = 0x1f

.field public static final blacklist PHASE_CLIENT_HANDLE_SET_IME_VISIBILITY:I = 0x3a

.field public static final blacklist PHASE_CLIENT_HANDLE_SHOW_INSETS:I = 0x1e

.field public static final blacklist PHASE_CLIENT_HIDE_INSETS:I = 0x1d

.field public static final blacklist PHASE_CLIENT_INSETS_CONTROLLER_DISPATCH:I = 0x50

.field public static final blacklist PHASE_CLIENT_NOTIFY_IME_VISIBILITY_CHANGED:I = 0x34

.field public static final blacklist PHASE_CLIENT_NO_ONGOING_USER_ANIMATION:I = 0x3d

.field public static final blacklist PHASE_CLIENT_ON_CONTROLS_CHANGED:I = 0x4c

.field public static final blacklist PHASE_CLIENT_REPORT_REQUESTED_VISIBLE_TYPES:I = 0x30

.field public static final blacklist PHASE_CLIENT_SET_IME_VISIBILITY:I = 0x3b

.field public static final blacklist PHASE_CLIENT_SHOW_INSETS:I = 0x1c

.field public static final blacklist PHASE_CLIENT_UPDATE_ANIMATING_TYPES:I = 0x47

.field public static final blacklist PHASE_CLIENT_UPDATE_REQUESTED_VISIBLE_TYPES:I = 0x35

.field public static final blacklist PHASE_CLIENT_VIEW_HANDLER_AVAILABLE:I = 0x42

.field public static final blacklist PHASE_CLIENT_VIEW_SERVED:I = 0x1

.field public static final blacklist PHASE_IME_HIDE_SOFT_INPUT:I = 0xe

.field public static final blacklist PHASE_IME_HIDE_WINDOW:I = 0x2d

.field public static final blacklist PHASE_IME_ON_SHOW_SOFT_INPUT_TRUE:I = 0xf

.field public static final blacklist PHASE_IME_PRIVILEGED_OPERATIONS:I = 0x2e

.field public static final blacklist PHASE_IME_SHOW_SOFT_INPUT:I = 0xd

.field public static final blacklist PHASE_IME_SHOW_WINDOW:I = 0x2c

.field public static final blacklist PHASE_IME_WRAPPER:I = 0xb

.field public static final blacklist PHASE_IME_WRAPPER_DISPATCH:I = 0xc

.field public static final blacklist PHASE_NOT_SET:I = 0x0

.field public static final blacklist PHASE_SERVER_ACCESSIBILITY:I = 0x4

.field public static final blacklist PHASE_SERVER_ALREADY_VISIBLE:I = 0x4f

.field public static final blacklist PHASE_SERVER_CLIENT_FOCUSED:I = 0x3

.field public static final blacklist PHASE_SERVER_CLIENT_INVOKER:I = 0x4e

.field public static final blacklist PHASE_SERVER_CLIENT_KNOWN:I = 0x2

.field public static final blacklist PHASE_SERVER_CURRENT_ACTIVE_IME:I = 0x2f

.field public static final blacklist PHASE_SERVER_HAS_IME:I = 0x9

.field public static final blacklist PHASE_SERVER_HIDE_IMPLICIT:I = 0x6

.field public static final blacklist PHASE_SERVER_HIDE_NOT_ALWAYS:I = 0x7

.field public static final blacklist PHASE_SERVER_IME_INVOKER:I = 0x4d

.field public static final blacklist PHASE_SERVER_SET_VISIBILITY_ON_FOCUSED_WINDOW:I = 0x39

.field public static final blacklist PHASE_SERVER_SHOULD_HIDE:I = 0xa

.field public static final blacklist PHASE_SERVER_SYSTEM_READY:I = 0x5

.field public static final blacklist PHASE_SERVER_UPDATE_CLIENT_VISIBILITY:I = 0x43

.field public static final blacklist PHASE_SERVER_WAIT_IME:I = 0x8

.field public static final blacklist PHASE_WM_ABORT_SHOW_IME_POST_LAYOUT:I = 0x2b

.field public static final blacklist PHASE_WM_ANIMATION_CREATE:I = 0x1a

.field public static final blacklist PHASE_WM_ANIMATION_RUNNING:I = 0x1b

.field public static final blacklist PHASE_WM_DISPATCH_IME_REQUESTED_CHANGED:I = 0x3c

.field public static final blacklist PHASE_WM_DISPLAY_IME_CONTROLLER_SET_IME_REQUESTED_VISIBLE:I = 0x44

.field public static final blacklist PHASE_WM_GET_CONTROL_WITH_LEASH:I = 0x37

.field public static final blacklist PHASE_WM_INVOKING_IME_REQUESTED_LISTENER:I = 0x40

.field public static final blacklist PHASE_WM_NOTIFY_HIDE_ANIMATION_FINISHED:I = 0x4a

.field public static final blacklist PHASE_WM_NOTIFY_IME_VISIBILITY_CHANGED_FROM_CLIENT:I = 0x3e

.field public static final blacklist PHASE_WM_POSTING_CHANGED_IME_VISIBILITY:I = 0x3f

.field public static final blacklist PHASE_WM_POST_LAYOUT_NOTIFY_CONTROLS_CHANGED:I = 0x32

.field public static final blacklist PHASE_WM_REMOTE_INSETS_CONTROLLER:I = 0x19

.field public static final blacklist PHASE_WM_REMOTE_INSETS_CONTROL_TARGET_HIDE_INSETS:I = 0x18

.field public static final blacklist PHASE_WM_REMOTE_INSETS_CONTROL_TARGET_SET_REQUESTED_VISIBILITY:I = 0x36

.field public static final blacklist PHASE_WM_REMOTE_INSETS_CONTROL_TARGET_SHOW_INSETS:I = 0x17

.field public static final blacklist PHASE_WM_REQUESTED_VISIBLE_TYPES_NOT_CHANGED:I = 0x46

.field public static final blacklist PHASE_WM_SET_REMOTE_TARGET_IME_VISIBILITY:I = 0x31

.field public static final blacklist PHASE_WM_SHOW_IME_READY:I = 0x13

.field public static final blacklist PHASE_WM_UPDATE_ANIMATING_TYPES:I = 0x48

.field public static final blacklist PHASE_WM_UPDATE_DISPLAY_WINDOW_ANIMATING_TYPES:I = 0x4b

.field public static final blacklist PHASE_WM_UPDATE_DISPLAY_WINDOW_REQUESTED_VISIBLE_TYPES:I = 0x45

.field public static final blacklist PHASE_WM_UPDATE_REQUESTED_VISIBLE_TYPES:I = 0x38

.field public static final blacklist PHASE_WM_WINDOW_ANIMATING_TYPES_CHANGED:I = 0x49

.field public static final blacklist PHASE_WM_WINDOW_INSETS_CONTROL_TARGET_HIDE_INSETS:I = 0x16

.field public static final blacklist PHASE_WM_WINDOW_INSETS_CONTROL_TARGET_SHOW_INSETS:I = 0x15

.field public static final blacklist STATUS_CANCEL:I = 0x2

.field public static final blacklist STATUS_FAIL:I = 0x3

.field public static final blacklist STATUS_RUN:I = 0x1

.field public static final blacklist STATUS_SUCCESS:I = 0x4

.field public static final blacklist STATUS_TIMEOUT:I = 0x5

.field public static final blacklist TAG:Ljava/lang/String; = "ImeTracker"

.field public static final blacklist TOKEN_NONE:Ljava/lang/String; = "TOKEN_NONE"

.field public static final blacklist TYPE_HIDE:I = 0x2

.field public static final blacklist TYPE_NOT_SET:I = 0x0

.field public static final blacklist TYPE_SHOW:I = 0x1

.field public static final blacklist TYPE_USER:I = 0x3


# direct methods
.method public static bridge synthetic blacklist -$$Nest$smlog(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/view/inputmethod/ImeTracker;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 68
    const-string/jumbo v0, "persist.debug.imf_event"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/view/inputmethod/ImeTracker;->DEBUG_IME_VISIBILITY:Z

    .line 611
    new-instance v0, Landroid/view/inputmethod/ImeTracker$1;

    invoke-direct {v0}, Landroid/view/inputmethod/ImeTracker$1;-><init>()V

    sput-object v0, Landroid/view/inputmethod/ImeTracker;->LOGGER:Landroid/view/inputmethod/ImeTracker;

    .line 737
    new-instance v0, Landroid/view/inputmethod/ImeTracker$ImeJankTracker;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/inputmethod/ImeTracker$ImeJankTracker;-><init>(Landroid/view/inputmethod/ImeTracker-IA;)V

    sput-object v0, Landroid/view/inputmethod/ImeTracker;->JANK_TRACKER:Landroid/view/inputmethod/ImeTracker$ImeJankTracker;

    .line 740
    new-instance v0, Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;

    invoke-direct {v0, v1}, Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;-><init>(Landroid/view/inputmethod/ImeTracker-IA;)V

    sput-object v0, Landroid/view/inputmethod/ImeTracker;->LATENCY_TRACKER:Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;

    return-void
.end method

.method public static blacklist forJank()Landroid/view/inputmethod/ImeTracker$ImeJankTracker;
    .registers 1

    .line 596
    sget-object v0, Landroid/view/inputmethod/ImeTracker;->JANK_TRACKER:Landroid/view/inputmethod/ImeTracker$ImeJankTracker;

    return-object v0
.end method

.method public static blacklist forLatency()Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;
    .registers 1

    .line 606
    sget-object v0, Landroid/view/inputmethod/ImeTracker;->LATENCY_TRACKER:Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;

    return-object v0
.end method

.method public static blacklist forLogging()Landroid/view/inputmethod/ImeTracker;
    .registers 1

    .line 586
    sget-object v0, Landroid/view/inputmethod/ImeTracker;->LOGGER:Landroid/view/inputmethod/ImeTracker;

    return-object v0
.end method

.method public static blacklist isFromUser(Landroid/view/View;)Z
    .registers 4

    .line 566
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 567
    return v0

    .line 569
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 571
    if-eqz v1, :cond_29

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    if-eqz v2, :cond_29

    .line 572
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v1

    if-nez v1, :cond_1b

    goto :goto_29

    .line 575
    :cond_1b
    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p0

    .line 576
    if-eqz p0, :cond_28

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->isHandlingPointerEvent()Z

    move-result p0

    if-eqz p0, :cond_28

    const/4 v0, 0x1

    :cond_28
    return v0

    .line 573
    :cond_29
    :goto_29
    return v0
.end method

.method private static varargs blacklist log(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3

    .line 930
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/tracing/Flags;->imetrackerProtolog()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 931
    sget-object v0, Landroid/view/ViewProtoLogGroups;->IME_TRACKER:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0, p0, p1}, Lcom/android/internal/protolog/ProtoLog;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_15

    .line 934
    :cond_c
    invoke-static {p0, p1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 935
    const-string p1, "ImeTracker"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    :goto_15
    return-void
.end method


# virtual methods
.method public abstract blacklist onCancelled(Landroid/view/inputmethod/ImeTracker$Token;I)V
.end method

.method public abstract blacklist onDispatched(Landroid/view/inputmethod/ImeTracker$Token;)V
.end method

.method public abstract blacklist onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V
.end method

.method public abstract blacklist onHidden(Landroid/view/inputmethod/ImeTracker$Token;)V
.end method

.method public abstract blacklist onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V
.end method

.method public abstract blacklist onShown(Landroid/view/inputmethod/ImeTracker$Token;)V
.end method

.method public blacklist onStart(IIIZ)Landroid/view/inputmethod/ImeTracker$Token;
    .registers 12

    .line 492
    invoke-static {}, Landroid/os/Process;->myProcessName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-interface/range {v0 .. v6}, Landroid/view/inputmethod/ImeTracker;->onStart(Ljava/lang/String;IIIIZ)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object p1

    return-object p1
.end method

.method public abstract blacklist onStart(Ljava/lang/String;IIIIZ)Landroid/view/inputmethod/ImeTracker$Token;
.end method

.method public abstract blacklist onTodo(Landroid/view/inputmethod/ImeTracker$Token;I)V
.end method

.method public abstract blacklist onUserFinished(Landroid/view/inputmethod/ImeTracker$Token;Z)V
.end method
