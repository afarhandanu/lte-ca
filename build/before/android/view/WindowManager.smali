.class public interface abstract Landroid/view/WindowManager;
.super Ljava/lang/Object;
.source "WindowManager.java"

# interfaces
.implements Landroid/view/ViewManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/WindowManager$ScreenRecordingState;,
        Landroid/view/WindowManager$InsetsParams;,
        Landroid/view/WindowManager$LayoutParams;,
        Landroid/view/WindowManager$CompatSmallScreenPolicy;,
        Landroid/view/WindowManager$ScreenshotSource;,
        Landroid/view/WindowManager$ScreenshotType;,
        Landroid/view/WindowManager$KeyboardShortcutsReceiver;,
        Landroid/view/WindowManager$InvalidDisplayException;,
        Landroid/view/WindowManager$BadTokenException;,
        Landroid/view/WindowManager$DisplayImePolicy;,
        Landroid/view/WindowManager$RemoveContentMode;,
        Landroid/view/WindowManager$TransitionFlags;,
        Landroid/view/WindowManager$TransitionType;,
        Landroid/view/WindowManager$TransitionOldType;,
        Landroid/view/WindowManager$ShellRootLayer;
    }
.end annotation


# static fields
.field public static final blacklist ACTIVITY_EMBEDDING_GUARD_WITH_ANDROID_15:Z

.field public static final whitelist COMPAT_SMALL_COVER_SCREEN_OPT_IN:I = 0x1

.field public static final whitelist DISPLAY_IME_POLICY_FALLBACK_DISPLAY:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist DISPLAY_IME_POLICY_HIDE:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist DISPLAY_IME_POLICY_LOCAL:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o DOCKED_BOTTOM:I = 0x4

.field public static final greylist-max-o DOCKED_INVALID:I = -0x1

.field public static final greylist-max-o DOCKED_LEFT:I = 0x1

.field public static final greylist-max-o DOCKED_RIGHT:I = 0x3

.field public static final greylist-max-o DOCKED_TOP:I = 0x2

.field public static final blacklist ENABLE_ACTIVITY_EMBEDDING_FOR_ANDROID_15:J = 0x12475a62L

.field public static final blacklist HAS_WINDOW_EXTENSIONS_ON_DEVICE:Z

.field public static final greylist-max-o INPUT_CONSUMER_NAVIGATION:Ljava/lang/String; = "nav_input_consumer"

.field public static final greylist-max-o INPUT_CONSUMER_PIP:Ljava/lang/String; = "pip_input_consumer"

.field public static final greylist-max-o INPUT_CONSUMER_RECENTS_ANIMATION:Ljava/lang/String; = "recents_animation_input_consumer"

.field public static final greylist-max-o INPUT_CONSUMER_WALLPAPER:Ljava/lang/String; = "wallpaper_input_consumer"

.field public static final blacklist KEYGUARD_VISIBILITY_TRANSIT_FLAGS:I = 0xb900

.field public static final blacklist LARGE_SCREEN_SMALLEST_SCREEN_WIDTH_DP:I = 0x258

.field public static final greylist-max-o PARCEL_KEY_SHORTCUTS_ARRAY:Ljava/lang/String; = "shortcuts_array"

.field public static final whitelist PROPERTY_ACTIVITY_EMBEDDING_ALLOW_SYSTEM_OVERRIDE:Ljava/lang/String; = "android.window.PROPERTY_ACTIVITY_EMBEDDING_ALLOW_SYSTEM_OVERRIDE"

.field public static final whitelist PROPERTY_ACTIVITY_EMBEDDING_SPLITS_ENABLED:Ljava/lang/String; = "android.window.PROPERTY_ACTIVITY_EMBEDDING_SPLITS_ENABLED"

.field public static final blacklist PROPERTY_ALLOW_UNTRUSTED_ACTIVITY_EMBEDDING_STATE_SHARING:Ljava/lang/String; = "android.window.PROPERTY_ALLOW_UNTRUSTED_ACTIVITY_EMBEDDING_STATE_SHARING"

.field public static final whitelist PROPERTY_CAMERA_COMPAT_ALLOW_FORCE_ROTATION:Ljava/lang/String; = "android.window.PROPERTY_CAMERA_COMPAT_ALLOW_FORCE_ROTATION"

.field public static final whitelist PROPERTY_CAMERA_COMPAT_ALLOW_REFRESH:Ljava/lang/String; = "android.window.PROPERTY_CAMERA_COMPAT_ALLOW_REFRESH"

.field public static final whitelist PROPERTY_CAMERA_COMPAT_ALLOW_SIMULATE_REQUESTED_ORIENTATION:Ljava/lang/String; = "android.window.PROPERTY_CAMERA_COMPAT_ALLOW_SIMULATE_REQUESTED_ORIENTATION"

.field public static final whitelist PROPERTY_CAMERA_COMPAT_ENABLE_REFRESH_VIA_PAUSE:Ljava/lang/String; = "android.window.PROPERTY_CAMERA_COMPAT_ENABLE_REFRESH_VIA_PAUSE"

.field public static final whitelist PROPERTY_COMPAT_ALLOW_DISPLAY_ORIENTATION_OVERRIDE:Ljava/lang/String; = "android.window.PROPERTY_COMPAT_ALLOW_DISPLAY_ORIENTATION_OVERRIDE"

.field public static final whitelist PROPERTY_COMPAT_ALLOW_IGNORING_ORIENTATION_REQUEST_WHEN_LOOP_DETECTED:Ljava/lang/String; = "android.window.PROPERTY_COMPAT_ALLOW_IGNORING_ORIENTATION_REQUEST_WHEN_LOOP_DETECTED"

.field public static final whitelist PROPERTY_COMPAT_ALLOW_MIN_ASPECT_RATIO_OVERRIDE:Ljava/lang/String; = "android.window.PROPERTY_COMPAT_ALLOW_MIN_ASPECT_RATIO_OVERRIDE"

.field public static final whitelist PROPERTY_COMPAT_ALLOW_ORIENTATION_OVERRIDE:Ljava/lang/String; = "android.window.PROPERTY_COMPAT_ALLOW_ORIENTATION_OVERRIDE"

.field public static final whitelist PROPERTY_COMPAT_ALLOW_RESIZEABLE_ACTIVITY_OVERRIDES:Ljava/lang/String; = "android.window.PROPERTY_COMPAT_ALLOW_RESIZEABLE_ACTIVITY_OVERRIDES"

.field public static final blacklist PROPERTY_COMPAT_ALLOW_RESTRICTED_RESIZABILITY:Ljava/lang/String; = "android.window.PROPERTY_COMPAT_ALLOW_RESTRICTED_RESIZABILITY"

.field public static final blacklist PROPERTY_COMPAT_ALLOW_SAFE_REGION_LETTERBOXING:Ljava/lang/String; = "android.window.PROPERTY_COMPAT_ALLOW_SAFE_REGION_LETTERBOXING"

.field public static final whitelist PROPERTY_COMPAT_ALLOW_SANDBOXING_VIEW_BOUNDS_APIS:Ljava/lang/String; = "android.window.PROPERTY_COMPAT_ALLOW_SANDBOXING_VIEW_BOUNDS_APIS"

.field public static final whitelist PROPERTY_COMPAT_ALLOW_SMALL_COVER_SCREEN:Ljava/lang/String; = "android.window.PROPERTY_COMPAT_ALLOW_SMALL_COVER_SCREEN"

.field public static final whitelist PROPERTY_COMPAT_ALLOW_USER_ASPECT_RATIO_FULLSCREEN_OVERRIDE:Ljava/lang/String; = "android.window.PROPERTY_COMPAT_ALLOW_USER_ASPECT_RATIO_FULLSCREEN_OVERRIDE"

.field public static final whitelist PROPERTY_COMPAT_ALLOW_USER_ASPECT_RATIO_OVERRIDE:Ljava/lang/String; = "android.window.PROPERTY_COMPAT_ALLOW_USER_ASPECT_RATIO_OVERRIDE"

.field public static final whitelist PROPERTY_COMPAT_ENABLE_FAKE_FOCUS:Ljava/lang/String; = "android.window.PROPERTY_COMPAT_ENABLE_FAKE_FOCUS"

.field public static final whitelist PROPERTY_COMPAT_IGNORE_REQUESTED_ORIENTATION:Ljava/lang/String; = "android.window.PROPERTY_COMPAT_IGNORE_REQUESTED_ORIENTATION"

.field public static final whitelist PROPERTY_SUPPORTS_MULTI_INSTANCE_SYSTEM_UI:Ljava/lang/String; = "android.window.PROPERTY_SUPPORTS_MULTI_INSTANCE_SYSTEM_UI"

.field public static final blacklist REMOVE_CONTENT_MODE_DESTROY:I = 0x2

.field public static final blacklist REMOVE_CONTENT_MODE_MOVE_TO_PRIMARY:I = 0x1

.field public static final blacklist REMOVE_CONTENT_MODE_UNDEFINED:I = 0x0

.field public static final whitelist SCREEN_RECORDING_STATE_NOT_VISIBLE:I = 0x0

.field public static final whitelist SCREEN_RECORDING_STATE_VISIBLE:I = 0x1

.field public static final blacklist SHELL_ROOT_LAYER_DIVIDER:I = 0x0

.field public static final blacklist SHELL_ROOT_LAYER_PIP:I = 0x1

.field public static final greylist-max-o TAKE_SCREENSHOT_FULLSCREEN:I = 0x1

.field public static final blacklist TAKE_SCREENSHOT_PROVIDED_IMAGE:I = 0x3

.field public static final greylist-max-o TAKE_SCREENSHOT_SELECTED_REGION:I = 0x2

.field public static final blacklist TRANSIT_CHANGE:I = 0x6

.field public static final blacklist TRANSIT_CLOSE:I = 0x2

.field public static final blacklist TRANSIT_CLOSE_PREPARE_BACK_NAVIGATION:I = 0xe

.field public static final blacklist TRANSIT_FIRST_CUSTOM:I = 0x3e8

.field public static final blacklist TRANSIT_FLAG_AOD_APPEARING:I = 0x8000

.field public static final blacklist TRANSIT_FLAG_APP_CRASHED:I = 0x10

.field public static final blacklist TRANSIT_FLAG_AVOID_MOVE_TO_FRONT:I = 0x10000

.field public static final blacklist TRANSIT_FLAG_DISPLAY_LEVEL_TRANSITION:I = 0x20000

.field public static final blacklist TRANSIT_FLAG_INVISIBLE:I = 0x400

.field public static final blacklist TRANSIT_FLAG_IS_RECENTS:I = 0x80

.field public static final blacklist TRANSIT_FLAG_KEYGUARD_APPEARING:I = 0x800

.field public static final blacklist TRANSIT_FLAG_KEYGUARD_GOING_AWAY:I = 0x100

.field public static final greylist-max-o TRANSIT_FLAG_KEYGUARD_GOING_AWAY_NO_ANIMATION:I = 0x2

.field public static final blacklist TRANSIT_FLAG_KEYGUARD_GOING_AWAY_SUBTLE_ANIMATION:I = 0x8

.field public static final blacklist TRANSIT_FLAG_KEYGUARD_GOING_AWAY_TO_LAUNCHER_CLEAR_SNAPSHOT:I = 0x200

.field public static final greylist-max-o TRANSIT_FLAG_KEYGUARD_GOING_AWAY_TO_SHADE:I = 0x1

.field public static final greylist-max-o TRANSIT_FLAG_KEYGUARD_GOING_AWAY_WITH_WALLPAPER:I = 0x4

.field public static final blacklist TRANSIT_FLAG_KEYGUARD_LOCKED:I = 0x40

.field public static final blacklist TRANSIT_FLAG_KEYGUARD_OCCLUDING:I = 0x1000

.field public static final blacklist TRANSIT_FLAG_KEYGUARD_UNOCCLUDING:I = 0x2000

.field public static final blacklist TRANSIT_FLAG_OPEN_BEHIND:I = 0x20

.field public static final blacklist TRANSIT_FLAG_PHYSICAL_DISPLAY_SWITCH:I = 0x4000

.field public static final greylist-max-o TRANSIT_KEYGUARD_GOING_AWAY:I = 0x7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o TRANSIT_KEYGUARD_OCCLUDE:I = 0x8

.field public static final greylist-max-o TRANSIT_KEYGUARD_UNOCCLUDE:I = 0x9

.field public static final greylist-max-o TRANSIT_NONE:I = 0x0

.field public static final blacklist TRANSIT_OLD_ACTIVITY_CLOSE:I = 0x7

.field public static final blacklist TRANSIT_OLD_ACTIVITY_OPEN:I = 0x6

.field public static final blacklist TRANSIT_OLD_KEYGUARD_GOING_AWAY:I = 0x14

.field public static final blacklist TRANSIT_OLD_KEYGUARD_GOING_AWAY_ON_WALLPAPER:I = 0x15

.field public static final blacklist TRANSIT_OLD_KEYGUARD_OCCLUDE:I = 0x16

.field public static final blacklist TRANSIT_OLD_KEYGUARD_OCCLUDE_BY_DREAM:I = 0x21

.field public static final blacklist TRANSIT_OLD_KEYGUARD_UNOCCLUDE:I = 0x17

.field public static final blacklist TRANSIT_OLD_NONE:I = 0x0

.field public static final blacklist TRANSIT_OLD_TASK_FRAGMENT_CHANGE:I = 0x1e

.field public static final blacklist TRANSIT_OLD_TASK_FRAGMENT_CLOSE:I = 0x1d

.field public static final blacklist TRANSIT_OLD_TASK_FRAGMENT_OPEN:I = 0x1c

.field public static final blacklist TRANSIT_OLD_TASK_OPEN:I = 0x8

.field public static final blacklist TRANSIT_OLD_TASK_TO_BACK:I = 0xb

.field public static final blacklist TRANSIT_OLD_TASK_TO_FRONT:I = 0xa

.field public static final blacklist TRANSIT_OLD_UNSET:I = -0x1

.field public static final blacklist TRANSIT_OLD_WALLPAPER_CLOSE:I = 0xc

.field public static final blacklist TRANSIT_OLD_WALLPAPER_OPEN:I = 0xd

.field public static final blacklist TRANSIT_OPEN:I = 0x1

.field public static final blacklist TRANSIT_PIP:I = 0xa

.field public static final blacklist TRANSIT_PREPARE_BACK_NAVIGATION:I = 0xd

.field public static final blacklist TRANSIT_RELAUNCH:I = 0x5

.field public static final blacklist TRANSIT_SLEEP:I = 0xc

.field public static final blacklist TRANSIT_START_LOCK_TASK_MODE:I = 0xf

.field public static final blacklist TRANSIT_TO_BACK:I = 0x4

.field public static final blacklist TRANSIT_TO_FRONT:I = 0x3

.field public static final blacklist TRANSIT_WAKE:I = 0xb


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 1508
    const-string/jumbo v0, "persist.wm.extensions.activity_embedding_guard_with_android_15"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/view/WindowManager;->ACTIVITY_EMBEDDING_GUARD_WITH_ANDROID_15:Z

    .line 1533
    nop

    .line 1534
    const-string/jumbo v0, "persist.wm.extensions.enabled"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/view/WindowManager;->HAS_WINDOW_EXTENSIONS_ON_DEVICE:Z

    .line 1533
    return-void
.end method

.method public static blacklist fixScale(F)F
    .registers 2

    .line 1993
    const/high16 v0, 0x41a00000    # 20.0f

    invoke-static {p0, v0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method public static blacklist hasWindowExtensionsEnabled()Z
    .registers 4

    .line 1544
    sget-boolean v0, Landroid/view/WindowManager;->HAS_WINDOW_EXTENSIONS_ON_DEVICE:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1545
    return v1

    .line 1549
    :cond_6
    :try_start_6
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 1550
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.hardware.type.watch"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1553
    return v1

    .line 1555
    :cond_17
    invoke-static {v0}, Landroid/app/ActivityTaskManager;->supportsMultiWindow(Landroid/content/Context;)Z

    move-result v0
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1b} :catch_1c

    return v0

    .line 1556
    :catch_1c
    move-exception v0

    .line 1558
    const-string v2, "WindowManager"

    const-string v3, "Unable to read if the device supports multi window"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1559
    return v1
.end method

.method public static blacklist transitTypeToString(I)Ljava/lang/String;
    .registers 4

    .line 1963
    sparse-switch p0, :sswitch_data_66

    .line 1981
    const/16 v0, 0x3e8

    if-le p0, v0, :cond_4c

    .line 1982
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FIRST_CUSTOM+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sub-int/2addr p0, v0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1979
    :sswitch_1c
    const-string p0, "FIRST_CUSTOM"

    return-object p0

    .line 1978
    :sswitch_1f
    const-string p0, "CLOSE_PREDICTIVE_BACK"

    return-object p0

    .line 1977
    :sswitch_22
    const-string p0, "PREDICTIVE_BACK"

    return-object p0

    .line 1976
    :sswitch_25
    const-string p0, "SLEEP"

    return-object p0

    .line 1975
    :sswitch_28
    const-string p0, "WAKE"

    return-object p0

    .line 1974
    :sswitch_2b
    const-string p0, "PIP"

    return-object p0

    .line 1973
    :sswitch_2e
    const-string p0, "KEYGUARD_UNOCCLUDE"

    return-object p0

    .line 1972
    :sswitch_31
    const-string p0, "KEYGUARD_OCCLUDE"

    return-object p0

    .line 1971
    :sswitch_34
    const-string p0, "KEYGUARD_GOING_AWAY"

    return-object p0

    .line 1970
    :sswitch_37
    const-string p0, "CHANGE"

    return-object p0

    .line 1969
    :sswitch_3a
    const-string p0, "RELAUNCH"

    return-object p0

    .line 1968
    :sswitch_3d
    const-string p0, "TO_BACK"

    return-object p0

    .line 1967
    :sswitch_40
    const-string p0, "TO_FRONT"

    return-object p0

    .line 1966
    :sswitch_43
    const-string p0, "CLOSE"

    return-object p0

    .line 1965
    :sswitch_46
    const-string p0, "OPEN"

    return-object p0

    .line 1964
    :sswitch_49
    const-string p0, "NONE"

    return-object p0

    .line 1984
    :cond_4c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :sswitch_data_66
    .sparse-switch
        0x0 -> :sswitch_49
        0x1 -> :sswitch_46
        0x2 -> :sswitch_43
        0x3 -> :sswitch_40
        0x4 -> :sswitch_3d
        0x5 -> :sswitch_3a
        0x6 -> :sswitch_37
        0x7 -> :sswitch_34
        0x8 -> :sswitch_31
        0x9 -> :sswitch_2e
        0xa -> :sswitch_2b
        0xb -> :sswitch_28
        0xc -> :sswitch_25
        0xd -> :sswitch_22
        0xe -> :sswitch_1f
        0x3e8 -> :sswitch_1c
    .end sparse-switch
.end method


# virtual methods
.method public whitelist addCrossWindowBlurEnabledListener(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1915
    return-void
.end method

.method public whitelist addCrossWindowBlurEnabledListener(Ljava/util/function/Consumer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1886
    return-void
.end method

.method public whitelist addProposedRotationListener(Ljava/util/concurrent/Executor;Ljava/util/function/IntConsumer;)V
    .registers 3

    .line 1947
    return-void
.end method

.method public whitelist addScreenRecordingCallback(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 6700
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public blacklist createLocalWindowManager(Landroid/view/Window;)Landroid/view/WindowManager;
    .registers 2

    .line 6740
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public abstract blacklist getApplicationLaunchKeyboardShortcuts(I)Landroid/view/KeyboardShortcutGroup;
.end method

.method public abstract whitelist getCurrentImeTouchRegion()Landroid/graphics/Region;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method

.method public whitelist getCurrentWindowMetrics()Landroid/view/WindowMetrics;
    .registers 2

    .line 754
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract whitelist getDefaultDisplay()Landroid/view/Display;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public blacklist getDefaultToken()Landroid/os/IBinder;
    .registers 3

    .line 6652
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getDefaultToken is not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getDisplayImePolicy(I)I
    .registers 2

    .line 1822
    const/4 p1, 0x1

    return p1
.end method

.method public whitelist getMaximumWindowMetrics()Landroid/view/WindowMetrics;
    .registers 2

    .line 787
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public blacklist getPossibleMaximumWindowMetrics(I)Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Landroid/view/WindowMetrics;",
            ">;"
        }
    .end annotation

    .line 801
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public blacklist getSurfaceControlInputClientToken(Landroid/view/SurfaceControl;)Landroid/os/IBinder;
    .registers 3

    .line 6568
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "getSurfaceControlInputClientToken is not implemented"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist holdLock(Landroid/os/IBinder;I)V
    .registers 3

    .line 6294
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public whitelist isCrossWindowBlurEnabled()Z
    .registers 2

    .line 1856
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isEligibleForDesktopMode(I)Z
    .registers 2

    .line 1799
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist isGlobalKey(I)Z
    .registers 2

    .line 1834
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist isTaskSnapshotSupported()Z
    .registers 2

    .line 6303
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist notifyScreenshotListeners(I)Ljava/util/List;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 6364
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public whitelist registerBatchedSurfaceControlInputReceiver(Landroid/window/InputTransferToken;Landroid/view/SurfaceControl;Landroid/view/Choreographer;Landroid/view/SurfaceControlInputReceiver;)Landroid/window/InputTransferToken;
    .registers 5

    .line 6502
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p2, "registerBatchedSurfaceControlInputReceiver is not implemented"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist registerTaskFpsCallback(ILjava/util/concurrent/Executor;Landroid/window/TaskFpsCallback;)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 6323
    return-void
.end method

.method public whitelist registerTrustedPresentationListener(Landroid/os/IBinder;Landroid/window/TrustedPresentationThresholds;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Landroid/window/TrustedPresentationThresholds;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 6462
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public whitelist registerUnbatchedSurfaceControlInputReceiver(Landroid/window/InputTransferToken;Landroid/view/SurfaceControl;Landroid/os/Looper;Landroid/view/SurfaceControlInputReceiver;)Landroid/window/InputTransferToken;
    .registers 5

    .line 6531
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p2, "registerUnbatchedSurfaceControlInputReceiver is not implemented"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist removeCrossWindowBlurEnabledListener(Ljava/util/function/Consumer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1925
    return-void
.end method

.method public whitelist removeProposedRotationListener(Ljava/util/function/IntConsumer;)V
    .registers 2

    .line 1957
    return-void
.end method

.method public whitelist removeScreenRecordingCallback(Ljava/util/function/Consumer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 6714
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public abstract whitelist removeViewImmediate(Landroid/view/View;)V
.end method

.method public blacklist replaceContentOnDisplayWithMirror(ILandroid/view/Window;)Z
    .registers 3

    .line 6381
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public blacklist replaceContentOnDisplayWithSc(ILandroid/view/SurfaceControl;)Z
    .registers 3

    .line 6397
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public abstract greylist-max-o requestAppKeyboardShortcuts(Landroid/view/WindowManager$KeyboardShortcutsReceiver;I)V
.end method

.method public blacklist requestImeKeyboardShortcuts(Landroid/view/WindowManager$KeyboardShortcutsReceiver;I)V
    .registers 3

    .line 1747
    return-void
.end method

.method public blacklist setDisplayImePolicy(II)V
    .registers 3

    .line 1811
    return-void
.end method

.method public blacklist setParentWindow(Landroid/view/Window;)V
    .registers 2

    .line 6728
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public blacklist setShouldShowWithInsecureKeyguard(IZ)V
    .registers 3

    .line 1773
    return-void
.end method

.method public blacklist shouldShowSystemDecors(I)Z
    .registers 2

    .line 1786
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist snapshotTaskForRecents(I)Landroid/graphics/Bitmap;
    .registers 2

    .line 6350
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist transferTouchGesture(Landroid/window/InputTransferToken;Landroid/window/InputTransferToken;)Z
    .registers 3

    .line 6645
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p2, "transferTouchGesture is not implemented"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist unregisterSurfaceControlInputReceiver(Landroid/view/SurfaceControl;)V
    .registers 3

    .line 6548
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v0, "unregisterSurfaceControlInputReceiver is not implemented"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist unregisterTaskFpsCallback(Landroid/window/TaskFpsCallback;)V
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 6334
    return-void
.end method

.method public whitelist unregisterTrustedPresentationListener(Ljava/util/function/Consumer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 6472
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
