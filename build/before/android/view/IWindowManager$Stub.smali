.class public abstract Landroid/view/IWindowManager$Stub;
.super Landroid/os/Binder;
.source "IWindowManager.java"

# interfaces
.implements Landroid/view/IWindowManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IWindowManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.view.IWindowManager"

.field static final blacklist TRANSACTION_addKeyguardLockedStateListener:I = 0x21

.field static final blacklist TRANSACTION_addShellRoot:I = 0x16

.field static final blacklist TRANSACTION_addToSurfaceSyncGroup:I = 0x93

.field static final greylist-max-o TRANSACTION_addWindowToken:I = 0x13

.field static final blacklist TRANSACTION_attachWindowContextToDisplayArea:I = 0x80

.field static final blacklist TRANSACTION_attachWindowContextToDisplayContent:I = 0x82

.field static final blacklist TRANSACTION_attachWindowContextToWindowToken:I = 0x81

.field static final blacklist TRANSACTION_captureDisplay:I = 0x90

.field static final greylist-max-o TRANSACTION_clearForcedDisplayDensityForUser:I = 0xd

.field static final greylist-max-o TRANSACTION_clearForcedDisplaySize:I = 0x8

.field static final greylist-max-o TRANSACTION_clearWindowContentFrameStats:I = 0x4e

.field static final greylist-max-o TRANSACTION_closeSystemDialogs:I = 0x24

.field static final greylist-max-o TRANSACTION_createInputConsumer:I = 0x56

.field static final greylist-max-o TRANSACTION_destroyInputConsumer:I = 0x57

.field static final blacklist TRANSACTION_detachWindowContext:I = 0x83

.field static final greylist-max-o TRANSACTION_disableKeyguard:I = 0x1b

.field static final greylist-max-o TRANSACTION_dismissKeyguard:I = 0x20

.field static final greylist-max-o TRANSACTION_endProlongedAnimations:I = 0x1a

.field static final greylist-max-o TRANSACTION_exitKeyguardSecurely:I = 0x1d

.field static final blacklist TRANSACTION_freezeDisplayRotation:I = 0x3b

.field static final greylist-max-o TRANSACTION_freezeRotation:I = 0x37

.field static final greylist-max-o TRANSACTION_getAnimationScale:I = 0x25

.field static final greylist-max-o TRANSACTION_getAnimationScales:I = 0x26

.field static final blacklist TRANSACTION_getApplicationLaunchKeyboardShortcuts:I = 0x9f

.field static final greylist-max-o TRANSACTION_getBaseDisplayDensity:I = 0xa

.field static final greylist-max-o TRANSACTION_getBaseDisplaySize:I = 0x6

.field static final greylist-max-o TRANSACTION_getCurrentAnimatorScale:I = 0x29

.field static final greylist-max-o TRANSACTION_getCurrentImeTouchRegion:I = 0x58

.field static final greylist-max-o TRANSACTION_getDefaultDisplayRotation:I = 0x30

.field static final blacklist TRANSACTION_getDisplayIdByUniqueId:I = 0xb

.field static final blacklist TRANSACTION_getDisplayImePolicy:I = 0x6c

.field static final blacklist TRANSACTION_getDisplayUserRotation:I = 0x31

.field static final greylist-max-o TRANSACTION_getDockedStackSide:I = 0x50

.field static final blacklist TRANSACTION_getIgnoreOrientationRequest:I = 0xa0

.field static final blacklist TRANSACTION_getImeDisplayId:I = 0x88

.field static final greylist-max-o TRANSACTION_getInitialDisplayDensity:I = 0x9

.field static final greylist-max-o TRANSACTION_getInitialDisplaySize:I = 0x5

.field static final blacklist TRANSACTION_getLetterboxBackgroundColorInArgb:I = 0x8e

.field static final blacklist TRANSACTION_getPossibleDisplayInfo:I = 0x77

.field static final greylist-max-o TRANSACTION_getPreferredOptionsPanelGravity:I = 0x35

.field static final blacklist TRANSACTION_getRemoveContentMode:I = 0x66

.field static final greylist-max-o TRANSACTION_getStableInsets:I = 0x54

.field static final blacklist TRANSACTION_getSupportedDisplayHashAlgorithms:I = 0x7d

.field static final greylist-max-o TRANSACTION_getWindowContentFrameStats:I = 0x4f

.field static final blacklist TRANSACTION_getWindowInsets:I = 0x76

.field static final blacklist TRANSACTION_getWindowingMode:I = 0x64

.field static final greylist-max-o TRANSACTION_hasNavigationBar:I = 0x4b

.field static final blacklist TRANSACTION_hideTransientBars:I = 0x47

.field static final blacklist TRANSACTION_holdLock:I = 0x7c

.field static final blacklist TRANSACTION_isDisplayRotationFrozen:I = 0x3d

.field static final blacklist TRANSACTION_isEligibleForDesktopMode:I = 0x6b

.field static final blacklist TRANSACTION_isGlobalKey:I = 0x92

.field static final blacklist TRANSACTION_isInTouchMode:I = 0x2c

.field static final greylist-max-o TRANSACTION_isKeyguardLocked:I = 0x1e

.field static final greylist-max-o TRANSACTION_isKeyguardSecure:I = 0x1f

.field static final blacklist TRANSACTION_isLayerTracing:I = 0x70

.field static final blacklist TRANSACTION_isLetterboxBackgroundMultiColored:I = 0x8f

.field static final greylist-max-o TRANSACTION_isRotationFrozen:I = 0x39

.field static final greylist-max-o TRANSACTION_isSafeModeEnabled:I = 0x4d

.field static final blacklist TRANSACTION_isTaskSnapshotSupported:I = 0x87

.field static final blacklist TRANSACTION_isTransitionTraceEnabled:I = 0x63

.field static final greylist-max-o TRANSACTION_isViewServerRunning:I = 0x3

.field static final blacklist TRANSACTION_isWindowToken:I = 0x12

.field static final greylist-max-o TRANSACTION_isWindowTraceEnabled:I = 0x60

.field static final greylist-max-o TRANSACTION_lockNow:I = 0x4c

.field static final blacklist TRANSACTION_markSurfaceSyncGroupReady:I = 0x94

.field static final blacklist TRANSACTION_mirrorDisplay:I = 0x72

.field static final blacklist TRANSACTION_mirrorWallpaperSurface:I = 0x41

.field static final blacklist TRANSACTION_notifyScreenshotListeners:I = 0x95

.field static final blacklist TRANSACTION_onNotificationShadeExpanded:I = 0x6e

.field static final greylist-max-o TRANSACTION_openSession:I = 0x4

.field static final greylist-max-o TRANSACTION_overridePendingAppTransitionMultiThumbFuture:I = 0x18

.field static final greylist-max-o TRANSACTION_overridePendingAppTransitionRemote:I = 0x19

.field static final greylist-max-o TRANSACTION_reenableKeyguard:I = 0x1c

.field static final greylist-max-o TRANSACTION_refreshScreenCaptureDisabled:I = 0x2f

.field static final blacklist TRANSACTION_registerCrossWindowBlurEnabledListener:I = 0x85

.field static final blacklist TRANSACTION_registerDecorViewGestureListener:I = 0x97

.field static final blacklist TRANSACTION_registerDisplayFoldListener:I = 0x59

.field static final blacklist TRANSACTION_registerDisplayWindowListener:I = 0x5b

.field static final blacklist TRANSACTION_registerPinnedTaskListener:I = 0x51

.field static final blacklist TRANSACTION_registerProposedRotationListener:I = 0x34

.field static final blacklist TRANSACTION_registerScreenRecordingCallback:I = 0x9b

.field static final greylist-max-o TRANSACTION_registerShortcutKey:I = 0x55

.field static final blacklist TRANSACTION_registerSystemGestureExclusionListener:I = 0x44

.field static final blacklist TRANSACTION_registerTaskFpsCallback:I = 0x8a

.field static final blacklist TRANSACTION_registerTrustedPresentationListener:I = 0x99

.field static final greylist-max-o TRANSACTION_registerWallpaperVisibilityListener:I = 0x42

.field static final blacklist TRANSACTION_removeKeyguardLockedStateListener:I = 0x22

.field static final greylist-max-o TRANSACTION_removeRotationWatcher:I = 0x33

.field static final greylist-max-o TRANSACTION_removeWindowToken:I = 0x14

.field static final blacklist TRANSACTION_reparentWindowContextToDisplayArea:I = 0x84

.field static final blacklist TRANSACTION_replaceContentOnDisplay:I = 0x96

.field static final greylist-max-o TRANSACTION_requestAppKeyboardShortcuts:I = 0x52

.field static final greylist-max-o TRANSACTION_requestAssistScreenshot:I = 0x46

.field static final blacklist TRANSACTION_requestImeKeyboardShortcuts:I = 0x53

.field static final blacklist TRANSACTION_requestScrollCapture:I = 0x7b

.field static final blacklist TRANSACTION_saveWindowTraceToFile:I = 0x5f

.field static final blacklist TRANSACTION_screenCapture:I = 0x91

.field static final greylist-max-o TRANSACTION_screenshotWallpaper:I = 0x40

.field static final blacklist TRANSACTION_setActiveTransactionTracing:I = 0x7a

.field static final greylist-max-o TRANSACTION_setAnimationScale:I = 0x27

.field static final greylist-max-o TRANSACTION_setAnimationScales:I = 0x28

.field static final blacklist TRANSACTION_setConfigurationChangeSettingsForUser:I = 0xf

.field static final blacklist TRANSACTION_setDeviceStateAutoRotateSetting:I = 0x36

.field static final blacklist TRANSACTION_setDisplayChangeWindowController:I = 0x15

.field static final blacklist TRANSACTION_setDisplayHashThrottlingEnabled:I = 0x7f

.field static final blacklist TRANSACTION_setDisplayImePolicy:I = 0x6d

.field static final blacklist TRANSACTION_setDisplayWindowInsetsController:I = 0x73

.field static final greylist-max-o TRANSACTION_setEventDispatching:I = 0x11

.field static final blacklist TRANSACTION_setFixedToUserRotation:I = 0x3e

.field static final greylist-max-o TRANSACTION_setForcedDisplayDensityForUser:I = 0xc

.field static final blacklist TRANSACTION_setForcedDisplayDensityRatio:I = 0xe

.field static final greylist-max-o TRANSACTION_setForcedDisplayScalingMode:I = 0x10

.field static final greylist-max-o TRANSACTION_setForcedDisplaySize:I = 0x7

.field static final blacklist TRANSACTION_setGlobalDragListener:I = 0x9d

.field static final blacklist TRANSACTION_setIgnoreOrientationRequest:I = 0x3f

.field static final greylist-max-o TRANSACTION_setInTouchMode:I = 0x2a

.field static final blacklist TRANSACTION_setInTouchModeOnAllDisplays:I = 0x2b

.field static final blacklist TRANSACTION_setLayerTracing:I = 0x71

.field static final blacklist TRANSACTION_setLayerTracingFlags:I = 0x79

.field static final greylist-max-o TRANSACTION_setNavBarVirtualKeyHapticFeedbackEnabled:I = 0x4a

.field static final blacklist TRANSACTION_setRecentsAppBehindSystemBars:I = 0x8d

.field static final greylist-max-o TRANSACTION_setRecentsVisibility:I = 0x48

.field static final blacklist TRANSACTION_setRemoveContentMode:I = 0x67

.field static final blacklist TRANSACTION_setRotationAtAngleIfAllowed:I = 0x3a

.field static final blacklist TRANSACTION_setShellRootAccessibilityWindow:I = 0x17

.field static final blacklist TRANSACTION_setShouldShowWithInsecureKeyguard:I = 0x69

.field static final greylist-max-o TRANSACTION_setStrictModeVisualIndicatorPreference:I = 0x2e

.field static final greylist-max-o TRANSACTION_setSwitchingUser:I = 0x23

.field static final blacklist TRANSACTION_setTaskSnapshotEnabled:I = 0x89

.field static final blacklist TRANSACTION_setWindowingMode:I = 0x65

.field static final blacklist TRANSACTION_shouldShowSystemDecors:I = 0x6a

.field static final blacklist TRANSACTION_shouldShowWithInsecureKeyguard:I = 0x68

.field static final blacklist TRANSACTION_showGlobalActions:I = 0x78

.field static final greylist-max-o TRANSACTION_showStrictModeViolation:I = 0x2d

.field static final blacklist TRANSACTION_snapshotTaskForRecents:I = 0x8c

.field static final blacklist TRANSACTION_startTransitionTrace:I = 0x61

.field static final greylist-max-o TRANSACTION_startViewServer:I = 0x1

.field static final greylist-max-o TRANSACTION_startWindowTrace:I = 0x5d

.field static final blacklist TRANSACTION_stopTransitionTrace:I = 0x62

.field static final greylist-max-o TRANSACTION_stopViewServer:I = 0x2

.field static final greylist-max-o TRANSACTION_stopWindowTrace:I = 0x5e

.field static final blacklist TRANSACTION_syncInputTransactions:I = 0x6f

.field static final blacklist TRANSACTION_thawDisplayRotation:I = 0x3c

.field static final greylist-max-o TRANSACTION_thawRotation:I = 0x38

.field static final blacklist TRANSACTION_transferTouchGesture:I = 0x9e

.field static final blacklist TRANSACTION_unregisterCrossWindowBlurEnabledListener:I = 0x86

.field static final blacklist TRANSACTION_unregisterDecorViewGestureListener:I = 0x98

.field static final blacklist TRANSACTION_unregisterDisplayFoldListener:I = 0x5a

.field static final blacklist TRANSACTION_unregisterDisplayWindowListener:I = 0x5c

.field static final blacklist TRANSACTION_unregisterScreenRecordingCallback:I = 0x9c

.field static final blacklist TRANSACTION_unregisterSystemGestureExclusionListener:I = 0x45

.field static final blacklist TRANSACTION_unregisterTaskFpsCallback:I = 0x8b

.field static final blacklist TRANSACTION_unregisterTrustedPresentationListener:I = 0x9a

.field static final greylist-max-o TRANSACTION_unregisterWallpaperVisibilityListener:I = 0x43

.field static final blacklist TRANSACTION_updateDisplayWindowAnimatingTypes:I = 0x75

.field static final blacklist TRANSACTION_updateDisplayWindowRequestedVisibleTypes:I = 0x74

.field static final blacklist TRANSACTION_updateStaticPrivacyIndicatorBounds:I = 0x49

.field static final blacklist TRANSACTION_verifyDisplayHash:I = 0x7e

.field static final greylist-max-o TRANSACTION_watchRotation:I = 0x32


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method public constructor greylist <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1228
    nop

    .line 1229
    invoke-static {}, Landroid/app/ActivityThread;->currentSystemContext()Landroid/content/Context;

    move-result-object v0

    .line 1228
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/IWindowManager$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 1230
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .registers 3

    .line 1218
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 1219
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p0, p0, v0}, Landroid/view/IWindowManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 1220
    if-eqz p1, :cond_d

    .line 1223
    iput-object p1, p0, Landroid/view/IWindowManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 1224
    return-void

    .line 1221
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "enforcer cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;
    .registers 3

    .line 1237
    if-nez p0, :cond_4

    .line 1238
    const/4 p0, 0x0

    return-object p0

    .line 1240
    :cond_4
    const-string v0, "android.view.IWindowManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 1241
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/view/IWindowManager;

    if-eqz v1, :cond_13

    .line 1242
    check-cast v0, Landroid/view/IWindowManager;

    return-object v0

    .line 1244
    :cond_13
    new-instance v0, Landroid/view/IWindowManager$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/view/IWindowManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 1253
    packed-switch p0, :pswitch_data_244

    .line 1897
    const/4 p0, 0x0

    return-object p0

    .line 1893
    :pswitch_5
    const-string p0, "getIgnoreOrientationRequest"

    return-object p0

    .line 1889
    :pswitch_8
    const-string p0, "getApplicationLaunchKeyboardShortcuts"

    return-object p0

    .line 1885
    :pswitch_b
    const-string/jumbo p0, "transferTouchGesture"

    return-object p0

    .line 1881
    :pswitch_f
    const-string/jumbo p0, "setGlobalDragListener"

    return-object p0

    .line 1877
    :pswitch_13
    const-string/jumbo p0, "unregisterScreenRecordingCallback"

    return-object p0

    .line 1873
    :pswitch_17
    const-string/jumbo p0, "registerScreenRecordingCallback"

    return-object p0

    .line 1869
    :pswitch_1b
    const-string/jumbo p0, "unregisterTrustedPresentationListener"

    return-object p0

    .line 1865
    :pswitch_1f
    const-string/jumbo p0, "registerTrustedPresentationListener"

    return-object p0

    .line 1861
    :pswitch_23
    const-string/jumbo p0, "unregisterDecorViewGestureListener"

    return-object p0

    .line 1857
    :pswitch_27
    const-string/jumbo p0, "registerDecorViewGestureListener"

    return-object p0

    .line 1853
    :pswitch_2b
    const-string/jumbo p0, "replaceContentOnDisplay"

    return-object p0

    .line 1849
    :pswitch_2f
    const-string/jumbo p0, "notifyScreenshotListeners"

    return-object p0

    .line 1845
    :pswitch_33
    const-string/jumbo p0, "markSurfaceSyncGroupReady"

    return-object p0

    .line 1841
    :pswitch_37
    const-string p0, "addToSurfaceSyncGroup"

    return-object p0

    .line 1837
    :pswitch_3a
    const-string p0, "isGlobalKey"

    return-object p0

    .line 1833
    :pswitch_3d
    const-string/jumbo p0, "screenCapture"

    return-object p0

    .line 1829
    :pswitch_41
    const-string p0, "captureDisplay"

    return-object p0

    .line 1825
    :pswitch_44
    const-string p0, "isLetterboxBackgroundMultiColored"

    return-object p0

    .line 1821
    :pswitch_47
    const-string p0, "getLetterboxBackgroundColorInArgb"

    return-object p0

    .line 1817
    :pswitch_4a
    const-string/jumbo p0, "setRecentsAppBehindSystemBars"

    return-object p0

    .line 1813
    :pswitch_4e
    const-string/jumbo p0, "snapshotTaskForRecents"

    return-object p0

    .line 1809
    :pswitch_52
    const-string/jumbo p0, "unregisterTaskFpsCallback"

    return-object p0

    .line 1805
    :pswitch_56
    const-string/jumbo p0, "registerTaskFpsCallback"

    return-object p0

    .line 1801
    :pswitch_5a
    const-string/jumbo p0, "setTaskSnapshotEnabled"

    return-object p0

    .line 1797
    :pswitch_5e
    const-string p0, "getImeDisplayId"

    return-object p0

    .line 1793
    :pswitch_61
    const-string p0, "isTaskSnapshotSupported"

    return-object p0

    .line 1789
    :pswitch_64
    const-string/jumbo p0, "unregisterCrossWindowBlurEnabledListener"

    return-object p0

    .line 1785
    :pswitch_68
    const-string/jumbo p0, "registerCrossWindowBlurEnabledListener"

    return-object p0

    .line 1781
    :pswitch_6c
    const-string/jumbo p0, "reparentWindowContextToDisplayArea"

    return-object p0

    .line 1777
    :pswitch_70
    const-string p0, "detachWindowContext"

    return-object p0

    .line 1773
    :pswitch_73
    const-string p0, "attachWindowContextToDisplayContent"

    return-object p0

    .line 1769
    :pswitch_76
    const-string p0, "attachWindowContextToWindowToken"

    return-object p0

    .line 1765
    :pswitch_79
    const-string p0, "attachWindowContextToDisplayArea"

    return-object p0

    .line 1761
    :pswitch_7c
    const-string/jumbo p0, "setDisplayHashThrottlingEnabled"

    return-object p0

    .line 1757
    :pswitch_80
    const-string/jumbo p0, "verifyDisplayHash"

    return-object p0

    .line 1753
    :pswitch_84
    const-string p0, "getSupportedDisplayHashAlgorithms"

    return-object p0

    .line 1749
    :pswitch_87
    const-string p0, "holdLock"

    return-object p0

    .line 1745
    :pswitch_8a
    const-string/jumbo p0, "requestScrollCapture"

    return-object p0

    .line 1741
    :pswitch_8e
    const-string/jumbo p0, "setActiveTransactionTracing"

    return-object p0

    .line 1737
    :pswitch_92
    const-string/jumbo p0, "setLayerTracingFlags"

    return-object p0

    .line 1733
    :pswitch_96
    const-string/jumbo p0, "showGlobalActions"

    return-object p0

    .line 1729
    :pswitch_9a
    const-string p0, "getPossibleDisplayInfo"

    return-object p0

    .line 1725
    :pswitch_9d
    const-string p0, "getWindowInsets"

    return-object p0

    .line 1721
    :pswitch_a0
    const-string/jumbo p0, "updateDisplayWindowAnimatingTypes"

    return-object p0

    .line 1717
    :pswitch_a4
    const-string/jumbo p0, "updateDisplayWindowRequestedVisibleTypes"

    return-object p0

    .line 1713
    :pswitch_a8
    const-string/jumbo p0, "setDisplayWindowInsetsController"

    return-object p0

    .line 1709
    :pswitch_ac
    const-string/jumbo p0, "mirrorDisplay"

    return-object p0

    .line 1705
    :pswitch_b0
    const-string/jumbo p0, "setLayerTracing"

    return-object p0

    .line 1701
    :pswitch_b4
    const-string p0, "isLayerTracing"

    return-object p0

    .line 1697
    :pswitch_b7
    const-string/jumbo p0, "syncInputTransactions"

    return-object p0

    .line 1693
    :pswitch_bb
    const-string/jumbo p0, "onNotificationShadeExpanded"

    return-object p0

    .line 1689
    :pswitch_bf
    const-string/jumbo p0, "setDisplayImePolicy"

    return-object p0

    .line 1685
    :pswitch_c3
    const-string p0, "getDisplayImePolicy"

    return-object p0

    .line 1681
    :pswitch_c6
    const-string p0, "isEligibleForDesktopMode"

    return-object p0

    .line 1677
    :pswitch_c9
    const-string/jumbo p0, "shouldShowSystemDecors"

    return-object p0

    .line 1673
    :pswitch_cd
    const-string/jumbo p0, "setShouldShowWithInsecureKeyguard"

    return-object p0

    .line 1669
    :pswitch_d1
    const-string/jumbo p0, "shouldShowWithInsecureKeyguard"

    return-object p0

    .line 1665
    :pswitch_d5
    const-string/jumbo p0, "setRemoveContentMode"

    return-object p0

    .line 1661
    :pswitch_d9
    const-string p0, "getRemoveContentMode"

    return-object p0

    .line 1657
    :pswitch_dc
    const-string/jumbo p0, "setWindowingMode"

    return-object p0

    .line 1653
    :pswitch_e0
    const-string p0, "getWindowingMode"

    return-object p0

    .line 1649
    :pswitch_e3
    const-string p0, "isTransitionTraceEnabled"

    return-object p0

    .line 1645
    :pswitch_e6
    const-string/jumbo p0, "stopTransitionTrace"

    return-object p0

    .line 1641
    :pswitch_ea
    const-string/jumbo p0, "startTransitionTrace"

    return-object p0

    .line 1637
    :pswitch_ee
    const-string p0, "isWindowTraceEnabled"

    return-object p0

    .line 1633
    :pswitch_f1
    const-string/jumbo p0, "saveWindowTraceToFile"

    return-object p0

    .line 1629
    :pswitch_f5
    const-string/jumbo p0, "stopWindowTrace"

    return-object p0

    .line 1625
    :pswitch_f9
    const-string/jumbo p0, "startWindowTrace"

    return-object p0

    .line 1621
    :pswitch_fd
    const-string/jumbo p0, "unregisterDisplayWindowListener"

    return-object p0

    .line 1617
    :pswitch_101
    const-string/jumbo p0, "registerDisplayWindowListener"

    return-object p0

    .line 1613
    :pswitch_105
    const-string/jumbo p0, "unregisterDisplayFoldListener"

    return-object p0

    .line 1609
    :pswitch_109
    const-string/jumbo p0, "registerDisplayFoldListener"

    return-object p0

    .line 1605
    :pswitch_10d
    const-string p0, "getCurrentImeTouchRegion"

    return-object p0

    .line 1601
    :pswitch_110
    const-string p0, "destroyInputConsumer"

    return-object p0

    .line 1597
    :pswitch_113
    const-string p0, "createInputConsumer"

    return-object p0

    .line 1593
    :pswitch_116
    const-string/jumbo p0, "registerShortcutKey"

    return-object p0

    .line 1589
    :pswitch_11a
    const-string p0, "getStableInsets"

    return-object p0

    .line 1585
    :pswitch_11d
    const-string/jumbo p0, "requestImeKeyboardShortcuts"

    return-object p0

    .line 1581
    :pswitch_121
    const-string/jumbo p0, "requestAppKeyboardShortcuts"

    return-object p0

    .line 1577
    :pswitch_125
    const-string/jumbo p0, "registerPinnedTaskListener"

    return-object p0

    .line 1573
    :pswitch_129
    const-string p0, "getDockedStackSide"

    return-object p0

    .line 1569
    :pswitch_12c
    const-string p0, "getWindowContentFrameStats"

    return-object p0

    .line 1565
    :pswitch_12f
    const-string p0, "clearWindowContentFrameStats"

    return-object p0

    .line 1561
    :pswitch_132
    const-string p0, "isSafeModeEnabled"

    return-object p0

    .line 1557
    :pswitch_135
    const-string p0, "lockNow"

    return-object p0

    .line 1553
    :pswitch_138
    const-string p0, "hasNavigationBar"

    return-object p0

    .line 1549
    :pswitch_13b
    const-string/jumbo p0, "setNavBarVirtualKeyHapticFeedbackEnabled"

    return-object p0

    .line 1545
    :pswitch_13f
    const-string/jumbo p0, "updateStaticPrivacyIndicatorBounds"

    return-object p0

    .line 1541
    :pswitch_143
    const-string/jumbo p0, "setRecentsVisibility"

    return-object p0

    .line 1537
    :pswitch_147
    const-string p0, "hideTransientBars"

    return-object p0

    .line 1533
    :pswitch_14a
    const-string/jumbo p0, "requestAssistScreenshot"

    return-object p0

    .line 1529
    :pswitch_14e
    const-string/jumbo p0, "unregisterSystemGestureExclusionListener"

    return-object p0

    .line 1525
    :pswitch_152
    const-string/jumbo p0, "registerSystemGestureExclusionListener"

    return-object p0

    .line 1521
    :pswitch_156
    const-string/jumbo p0, "unregisterWallpaperVisibilityListener"

    return-object p0

    .line 1517
    :pswitch_15a
    const-string/jumbo p0, "registerWallpaperVisibilityListener"

    return-object p0

    .line 1513
    :pswitch_15e
    const-string/jumbo p0, "mirrorWallpaperSurface"

    return-object p0

    .line 1509
    :pswitch_162
    const-string/jumbo p0, "screenshotWallpaper"

    return-object p0

    .line 1505
    :pswitch_166
    const-string/jumbo p0, "setIgnoreOrientationRequest"

    return-object p0

    .line 1501
    :pswitch_16a
    const-string/jumbo p0, "setFixedToUserRotation"

    return-object p0

    .line 1497
    :pswitch_16e
    const-string p0, "isDisplayRotationFrozen"

    return-object p0

    .line 1493
    :pswitch_171
    const-string/jumbo p0, "thawDisplayRotation"

    return-object p0

    .line 1489
    :pswitch_175
    const-string p0, "freezeDisplayRotation"

    return-object p0

    .line 1485
    :pswitch_178
    const-string/jumbo p0, "setRotationAtAngleIfAllowed"

    return-object p0

    .line 1481
    :pswitch_17c
    const-string p0, "isRotationFrozen"

    return-object p0

    .line 1477
    :pswitch_17f
    const-string/jumbo p0, "thawRotation"

    return-object p0

    .line 1473
    :pswitch_183
    const-string p0, "freezeRotation"

    return-object p0

    .line 1469
    :pswitch_186
    const-string/jumbo p0, "setDeviceStateAutoRotateSetting"

    return-object p0

    .line 1465
    :pswitch_18a
    const-string p0, "getPreferredOptionsPanelGravity"

    return-object p0

    .line 1461
    :pswitch_18d
    const-string/jumbo p0, "registerProposedRotationListener"

    return-object p0

    .line 1457
    :pswitch_191
    const-string/jumbo p0, "removeRotationWatcher"

    return-object p0

    .line 1453
    :pswitch_195
    const-string/jumbo p0, "watchRotation"

    return-object p0

    .line 1449
    :pswitch_199
    const-string p0, "getDisplayUserRotation"

    return-object p0

    .line 1445
    :pswitch_19c
    const-string p0, "getDefaultDisplayRotation"

    return-object p0

    .line 1441
    :pswitch_19f
    const-string/jumbo p0, "refreshScreenCaptureDisabled"

    return-object p0

    .line 1437
    :pswitch_1a3
    const-string/jumbo p0, "setStrictModeVisualIndicatorPreference"

    return-object p0

    .line 1433
    :pswitch_1a7
    const-string/jumbo p0, "showStrictModeViolation"

    return-object p0

    .line 1429
    :pswitch_1ab
    const-string p0, "isInTouchMode"

    return-object p0

    .line 1425
    :pswitch_1ae
    const-string/jumbo p0, "setInTouchModeOnAllDisplays"

    return-object p0

    .line 1421
    :pswitch_1b2
    const-string/jumbo p0, "setInTouchMode"

    return-object p0

    .line 1417
    :pswitch_1b6
    const-string p0, "getCurrentAnimatorScale"

    return-object p0

    .line 1413
    :pswitch_1b9
    const-string/jumbo p0, "setAnimationScales"

    return-object p0

    .line 1409
    :pswitch_1bd
    const-string/jumbo p0, "setAnimationScale"

    return-object p0

    .line 1405
    :pswitch_1c1
    const-string p0, "getAnimationScales"

    return-object p0

    .line 1401
    :pswitch_1c4
    const-string p0, "getAnimationScale"

    return-object p0

    .line 1397
    :pswitch_1c7
    const-string p0, "closeSystemDialogs"

    return-object p0

    .line 1393
    :pswitch_1ca
    const-string/jumbo p0, "setSwitchingUser"

    return-object p0

    .line 1389
    :pswitch_1ce
    const-string/jumbo p0, "removeKeyguardLockedStateListener"

    return-object p0

    .line 1385
    :pswitch_1d2
    const-string p0, "addKeyguardLockedStateListener"

    return-object p0

    .line 1381
    :pswitch_1d5
    const-string p0, "dismissKeyguard"

    return-object p0

    .line 1377
    :pswitch_1d8
    const-string p0, "isKeyguardSecure"

    return-object p0

    .line 1373
    :pswitch_1db
    const-string p0, "isKeyguardLocked"

    return-object p0

    .line 1369
    :pswitch_1de
    const-string p0, "exitKeyguardSecurely"

    return-object p0

    .line 1365
    :pswitch_1e1
    const-string/jumbo p0, "reenableKeyguard"

    return-object p0

    .line 1361
    :pswitch_1e5
    const-string p0, "disableKeyguard"

    return-object p0

    .line 1357
    :pswitch_1e8
    const-string p0, "endProlongedAnimations"

    return-object p0

    .line 1353
    :pswitch_1eb
    const-string/jumbo p0, "overridePendingAppTransitionRemote"

    return-object p0

    .line 1349
    :pswitch_1ef
    const-string/jumbo p0, "overridePendingAppTransitionMultiThumbFuture"

    return-object p0

    .line 1345
    :pswitch_1f3
    const-string/jumbo p0, "setShellRootAccessibilityWindow"

    return-object p0

    .line 1341
    :pswitch_1f7
    const-string p0, "addShellRoot"

    return-object p0

    .line 1337
    :pswitch_1fa
    const-string/jumbo p0, "setDisplayChangeWindowController"

    return-object p0

    .line 1333
    :pswitch_1fe
    const-string/jumbo p0, "removeWindowToken"

    return-object p0

    .line 1329
    :pswitch_202
    const-string p0, "addWindowToken"

    return-object p0

    .line 1325
    :pswitch_205
    const-string p0, "isWindowToken"

    return-object p0

    .line 1321
    :pswitch_208
    const-string/jumbo p0, "setEventDispatching"

    return-object p0

    .line 1317
    :pswitch_20c
    const-string/jumbo p0, "setForcedDisplayScalingMode"

    return-object p0

    .line 1313
    :pswitch_210
    const-string/jumbo p0, "setConfigurationChangeSettingsForUser"

    return-object p0

    .line 1309
    :pswitch_214
    const-string/jumbo p0, "setForcedDisplayDensityRatio"

    return-object p0

    .line 1305
    :pswitch_218
    const-string p0, "clearForcedDisplayDensityForUser"

    return-object p0

    .line 1301
    :pswitch_21b
    const-string/jumbo p0, "setForcedDisplayDensityForUser"

    return-object p0

    .line 1297
    :pswitch_21f
    const-string p0, "getDisplayIdByUniqueId"

    return-object p0

    .line 1293
    :pswitch_222
    const-string p0, "getBaseDisplayDensity"

    return-object p0

    .line 1289
    :pswitch_225
    const-string p0, "getInitialDisplayDensity"

    return-object p0

    .line 1285
    :pswitch_228
    const-string p0, "clearForcedDisplaySize"

    return-object p0

    .line 1281
    :pswitch_22b
    const-string/jumbo p0, "setForcedDisplaySize"

    return-object p0

    .line 1277
    :pswitch_22f
    const-string p0, "getBaseDisplaySize"

    return-object p0

    .line 1273
    :pswitch_232
    const-string p0, "getInitialDisplaySize"

    return-object p0

    .line 1269
    :pswitch_235
    const-string/jumbo p0, "openSession"

    return-object p0

    .line 1265
    :pswitch_239
    const-string p0, "isViewServerRunning"

    return-object p0

    .line 1261
    :pswitch_23c
    const-string/jumbo p0, "stopViewServer"

    return-object p0

    .line 1257
    :pswitch_240
    const-string/jumbo p0, "startViewServer"

    return-object p0

    :pswitch_data_244
    .packed-switch 0x1
        :pswitch_240
        :pswitch_23c
        :pswitch_239
        :pswitch_235
        :pswitch_232
        :pswitch_22f
        :pswitch_22b
        :pswitch_228
        :pswitch_225
        :pswitch_222
        :pswitch_21f
        :pswitch_21b
        :pswitch_218
        :pswitch_214
        :pswitch_210
        :pswitch_20c
        :pswitch_208
        :pswitch_205
        :pswitch_202
        :pswitch_1fe
        :pswitch_1fa
        :pswitch_1f7
        :pswitch_1f3
        :pswitch_1ef
        :pswitch_1eb
        :pswitch_1e8
        :pswitch_1e5
        :pswitch_1e1
        :pswitch_1de
        :pswitch_1db
        :pswitch_1d8
        :pswitch_1d5
        :pswitch_1d2
        :pswitch_1ce
        :pswitch_1ca
        :pswitch_1c7
        :pswitch_1c4
        :pswitch_1c1
        :pswitch_1bd
        :pswitch_1b9
        :pswitch_1b6
        :pswitch_1b2
        :pswitch_1ae
        :pswitch_1ab
        :pswitch_1a7
        :pswitch_1a3
        :pswitch_19f
        :pswitch_19c
        :pswitch_199
        :pswitch_195
        :pswitch_191
        :pswitch_18d
        :pswitch_18a
        :pswitch_186
        :pswitch_183
        :pswitch_17f
        :pswitch_17c
        :pswitch_178
        :pswitch_175
        :pswitch_171
        :pswitch_16e
        :pswitch_16a
        :pswitch_166
        :pswitch_162
        :pswitch_15e
        :pswitch_15a
        :pswitch_156
        :pswitch_152
        :pswitch_14e
        :pswitch_14a
        :pswitch_147
        :pswitch_143
        :pswitch_13f
        :pswitch_13b
        :pswitch_138
        :pswitch_135
        :pswitch_132
        :pswitch_12f
        :pswitch_12c
        :pswitch_129
        :pswitch_125
        :pswitch_121
        :pswitch_11d
        :pswitch_11a
        :pswitch_116
        :pswitch_113
        :pswitch_110
        :pswitch_10d
        :pswitch_109
        :pswitch_105
        :pswitch_101
        :pswitch_fd
        :pswitch_f9
        :pswitch_f5
        :pswitch_f1
        :pswitch_ee
        :pswitch_ea
        :pswitch_e6
        :pswitch_e3
        :pswitch_e0
        :pswitch_dc
        :pswitch_d9
        :pswitch_d5
        :pswitch_d1
        :pswitch_cd
        :pswitch_c9
        :pswitch_c6
        :pswitch_c3
        :pswitch_bf
        :pswitch_bb
        :pswitch_b7
        :pswitch_b4
        :pswitch_b0
        :pswitch_ac
        :pswitch_a8
        :pswitch_a4
        :pswitch_a0
        :pswitch_9d
        :pswitch_9a
        :pswitch_96
        :pswitch_92
        :pswitch_8e
        :pswitch_8a
        :pswitch_87
        :pswitch_84
        :pswitch_80
        :pswitch_7c
        :pswitch_79
        :pswitch_76
        :pswitch_73
        :pswitch_70
        :pswitch_6c
        :pswitch_68
        :pswitch_64
        :pswitch_61
        :pswitch_5e
        :pswitch_5a
        :pswitch_56
        :pswitch_52
        :pswitch_4e
        :pswitch_4a
        :pswitch_47
        :pswitch_44
        :pswitch_41
        :pswitch_3d
        :pswitch_3a
        :pswitch_37
        :pswitch_33
        :pswitch_2f
        :pswitch_2b
        :pswitch_27
        :pswitch_23
        :pswitch_1f
        :pswitch_1b
        :pswitch_17
        :pswitch_13
        :pswitch_f
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method protected blacklist addShellRoot_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 6909
    iget-object v0, p0, Landroid/view/IWindowManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/view/IWindowManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/view/IWindowManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_APP_TOKENS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 6910
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 1248
    return-object p0
.end method

.method protected blacklist clearForcedDisplayDensityForUser_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 6884
    iget-object v0, p0, Landroid/view/IWindowManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/view/IWindowManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/view/IWindowManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 6885
    return-void
.end method

.method protected blacklist clearForcedDisplaySize_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 6871
    iget-object v0, p0, Landroid/view/IWindowManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/view/IWindowManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/view/IWindowManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 6872
    return-void
.end method

.method protected blacklist exitKeyguardSecurely_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 6924
    iget-object v0, p0, Landroid/view/IWindowManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/view/IWindowManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/view/IWindowManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.DISABLE_KEYGUARD"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 6925
    return-void
.end method

.method protected blacklist getCurrentImeTouchRegion_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 6991
    iget-object v0, p0, Landroid/view/IWindowManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/view/IWindowManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/view/IWindowManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.RESTRICTED_VR_ACCESS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 6992
    return-void
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 7088
    const/16 v0, 0x9f

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 1904
    invoke-static {p1}, Landroid/view/IWindowManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1908
    nop

    .line 1909
    const-string v0, "android.view.IWindowManager"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 1910
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1912
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 1913
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1914
    return v1

    .line 1916
    :cond_17
    packed-switch p1, :pswitch_data_cba

    .line 3534
    move-object v2, p0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 3525
    :pswitch_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 3526
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3527
    invoke-virtual {p0, p1}, Landroid/view/IWindowManager$Stub;->getIgnoreOrientationRequest(I)Z

    move-result p1

    .line 3528
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3529
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3530
    goto/16 :goto_cb8

    .line 3515
    :pswitch_33
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 3516
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3517
    invoke-virtual {p0, p1}, Landroid/view/IWindowManager$Stub;->getApplicationLaunchKeyboardShortcuts(I)Landroid/view/KeyboardShortcutGroup;

    move-result-object p1

    .line 3518
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3519
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3520
    goto/16 :goto_cb8

    .line 3503
    :pswitch_46
    sget-object p1, Landroid/window/InputTransferToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/window/InputTransferToken;

    .line 3505
    sget-object p4, Landroid/window/InputTransferToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/window/InputTransferToken;

    .line 3506
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3507
    invoke-virtual {p0, p1, p4}, Landroid/view/IWindowManager$Stub;->transferTouchGesture(Landroid/window/InputTransferToken;Landroid/window/InputTransferToken;)Z

    move-result p1

    .line 3508
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3509
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3510
    goto/16 :goto_cb8

    .line 3494
    :pswitch_65
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/window/IGlobalDragListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/IGlobalDragListener;

    move-result-object p1

    .line 3495
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3496
    invoke-virtual {p0, p1}, Landroid/view/IWindowManager$Stub;->setGlobalDragListener(Landroid/window/IGlobalDragListener;)V

    .line 3497
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3498
    goto/16 :goto_cb8

    .line 3485
    :pswitch_78
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/window/IScreenRecordingCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/IScreenRecordingCallback;

    move-result-object p1

    .line 3486
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3487
    invoke-virtual {p0, p1}, Landroid/view/IWindowManager$Stub;->unregisterScreenRecordingCallback(Landroid/window/IScreenRecordingCallback;)V

    .line 3488
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3489
    goto/16 :goto_cb8

    .line 3475
    :pswitch_8b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/window/IScreenRecordingCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/IScreenRecordingCallback;

    move-result-object p1

    .line 3476
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3477
    invoke-virtual {p0, p1}, Landroid/view/IWindowManager$Stub;->registerScreenRecordingCallback(Landroid/window/IScreenRecordingCallback;)Z

    move-result p1

    .line 3478
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3479
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3480
    goto/16 :goto_cb8

    .line 3464
    :pswitch_a2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/window/ITrustedPresentationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/ITrustedPresentationListener;

    move-result-object p1

    .line 3466
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 3467
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3468
    invoke-virtual {p0, p1, p4}, Landroid/view/IWindowManager$Stub;->unregisterTrustedPresentationListener(Landroid/window/ITrustedPresentationListener;I)V

    .line 3469
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3470
    goto/16 :goto_cb8

    .line 3449
    :pswitch_b9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 3451
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/window/ITrustedPresentationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/ITrustedPresentationListener;

    move-result-object p4

    .line 3453
    sget-object v0, Landroid/window/TrustedPresentationThresholds;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/TrustedPresentationThresholds;

    .line 3455
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3456
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3457
    invoke-virtual {p0, p1, p4, v0, v2}, Landroid/view/IWindowManager$Stub;->registerTrustedPresentationListener(Landroid/os/IBinder;Landroid/window/ITrustedPresentationListener;Landroid/window/TrustedPresentationThresholds;I)V

    .line 3458
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3459
    goto/16 :goto_cb8

    .line 3438
    :pswitch_dc
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/view/IDecorViewGestureListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IDecorViewGestureListener;

    move-result-object p1

    .line 3440
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 3441
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3442
    invoke-virtual {p0, p1, p4}, Landroid/view/IWindowManager$Stub;->unregisterDecorViewGestureListener(Landroid/view/IDecorViewGestureListener;I)V

    .line 3443
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3444
    goto/16 :goto_cb8

    .line 3427
    :pswitch_f3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/view/IDecorViewGestureListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IDecorViewGestureListener;

    move-result-object p1

    .line 3429
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 3430
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3431
    invoke-virtual {p0, p1, p4}, Landroid/view/IWindowManager$Stub;->registerDecorViewGestureListener(Landroid/view/IDecorViewGestureListener;I)V

    .line 3432
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3433
    goto/16 :goto_cb8

    .line 3415
    :pswitch_10a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 3417
    sget-object p4, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/view/SurfaceControl;

    .line 3418
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3419
    invoke-virtual {p0, p1, p4}, Landroid/view/IWindowManager$Stub;->replaceContentOnDisplay(ILandroid/view/SurfaceControl;)Z

    move-result p1

    .line 3420
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3421
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3422
    goto/16 :goto_cb8

    .line 3405
    :pswitch_125
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 3406
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3407
    invoke-virtual {p0, p1}, Landroid/view/IWindowManager$Stub;->notifyScreenshotListeners(I)Ljava/util/List;

    move-result-object p1

    .line 3408
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3409
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 3410
    goto/16 :goto_cb8

    .line 3397
    :pswitch_138
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 3398
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3399
    invoke-virtual {p0, p1}, Landroid/view/IWindowManager$Stub;->markSurfaceSyncGroupReady(Landroid/os/IBinder;)V

    .line 3400
    goto/16 :goto_cb8

    .line 3380
    :pswitch_144
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 3382
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 3384
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/window/ISurfaceSyncGroupCompletedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/ISurfaceSyncGroupCompletedListener;

    move-result-object v0

    .line 3386
    new-instance v2, Landroid/window/AddToSurfaceSyncGroupResult;

    invoke-direct {v2}, Landroid/window/AddToSurfaceSyncGroupResult;-><init>()V

    .line 3387
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3388
    invoke-virtual {p0, p1, p4, v0, v2}, Landroid/view/IWindowManager$Stub;->addToSurfaceSyncGroup(Landroid/os/IBinder;ZLandroid/window/ISurfaceSyncGroupCompletedListener;Landroid/window/AddToSurfaceSyncGroupResult;)Z

    move-result p1

    .line 3389
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3390
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3391
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3392
    goto/16 :goto_cb8

    .line 3370
    :pswitch_16b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 3371
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3372
    invoke-virtual {p0, p1}, Landroid/view/IWindowManager$Stub;->isGlobalKey(I)Z

    move-result p1

    .line 3373
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3374
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3375
    goto/16 :goto_cb8

    .line 3360
    :pswitch_17e
    sget-object p1, Landroid/window/ScreenCapture$ScreenCaptureParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/window/ScreenCapture$ScreenCaptureParams;

    .line 3362
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-static {p3}, Landroid/window/IScreenCaptureCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/IScreenCaptureCallback;

    move-result-object p3

    .line 3363
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3364
    invoke-virtual {p0, p1, p3}, Landroid/view/IWindowManager$Stub;->screenCapture(Landroid/window/ScreenCapture$ScreenCaptureParams;Landroid/window/IScreenCaptureCallback;)V

    .line 3365
    goto/16 :goto_cb8

    .line 3348
    :pswitch_196
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 3350
    sget-object p3, Landroid/window/ScreenCaptureInternal$CaptureArgs;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/window/ScreenCaptureInternal$CaptureArgs;

    .line 3352
    sget-object p4, Landroid/window/ScreenCaptureInternal$ScreenCaptureListener;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/window/ScreenCaptureInternal$ScreenCaptureListener;

    .line 3353
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3354
    invoke-virtual {p0, p1, p3, p4}, Landroid/view/IWindowManager$Stub;->captureDisplay(ILandroid/window/ScreenCaptureInternal$CaptureArgs;Landroid/window/ScreenCaptureInternal$ScreenCaptureListener;)V

    .line 3355
    goto/16 :goto_cb8

    .line 3340
    :pswitch_1b2
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->isLetterboxBackgroundMultiColored()Z

    move-result p1

    .line 3341
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3342
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3343
    goto/16 :goto_cb8

    .line 3333
    :pswitch_1be
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->getLetterboxBackgroundColorInArgb()I

    move-result p1

    .line 3334
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3335
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3336
    goto/16 :goto_cb8

    .line 3325
    :pswitch_1ca
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 3326
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3327
    invoke-virtual {p0, p1}, Landroid/view/IWindowManager$Stub;->setRecentsAppBehindSystemBars(Z)V

    .line 3328
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3329
    goto/16 :goto_cb8

    .line 3315
    :pswitch_1d9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 3316
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3317
    invoke-virtual {p0, p1}, Landroid/view/IWindowManager$Stub;->snapshotTaskForRecents(I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 3318
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3319
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3320
    goto/16 :goto_cb8

    .line 3306
    :pswitch_1ec
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/window/ITaskFpsCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/ITaskFpsCallback;

    move-result-object p1

    .line 3307
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3308
    invoke-virtual {p0, p1}, Landroid/view/IWindowManager$Stub;->unregisterTaskFpsCallback(Landroid/window/ITaskFpsCallback;)V

    .line 3309
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3310
    goto/16 :goto_cb8

    .line 3295
    :pswitch_1ff
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 3297
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/window/ITaskFpsCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/ITaskFpsCallback;

    move-result-object p4

    .line 3298
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3299
    invoke-virtual {p0, p1, p4}, Landroid/view/IWindowManager$Stub;->registerTaskFpsCallback(ILandroid/window/ITaskFpsCallback;)V

    .line 3300
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3301
    goto/16 :goto_cb8

    .line 3286
    :pswitch_216
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 3287
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3288
    invoke-virtual {p0, p1}, Landroid/view/IWindowManager$Stub;->setTaskSnapshotEnabled(Z)V

    .line 3289
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3290
    goto/16 :goto_cb8

    .line 3278
    :pswitch_225
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->getImeDisplayId()I

    move-result p1

    .line 3279
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3280
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3281
    goto/16 :goto_cb8

    .line 3271
    :pswitch_231
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->isTaskSnapshotSupported()Z

    move-result p1

    .line 3272
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3273
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3274
    goto/16 :goto_cb8

    .line 3263
    :pswitch_23d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ICrossWindowBlurEnabledListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/ICrossWindowBlurEnabledListener;

    move-result-object p1

    .line 3264
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3265
    invoke-virtual {p0, p1}, Landroid/view/IWindowManager$Stub;->unregisterCrossWindowBlurEnabledListener(Landroid/view/ICrossWindowBlurEnabledListener;)V

    .line 3266
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3267
    goto/16 :goto_cb8

    .line 3253
    :pswitch_250
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ICrossWindowBlurEnabledListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/ICrossWindowBlurEnabledListener;

    move-result-object p1

    .line 3254
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3255
    invoke-virtual {p0, p1}, Landroid/view/IWindowManager$Stub;->registerCrossWindowBlurEnabledListener(Landroid/view/ICrossWindowBlurEnabledListener;)Z

    move-result p1

    .line 3256
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3257
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3258
    goto/16 :goto_cb8

    .line 3239
    :pswitch_267
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object p1

    .line 3241
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    .line 3243
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3244
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3245
    invoke-virtual {p0, p1, p4, v0}, Landroid/view/IWindowManager$Stub;->reparentWindowContextToDisplayArea(Landroid/app/IApplicationThread;Landroid/os/IBinder;I)Z

    move-result p1

    .line 3246
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3247
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3248
    goto/16 :goto_cb8

    .line 3231
    :pswitch_286
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 3232
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3233
    invoke-virtual {p0, p1}, Landroid/view/IWindowManager$Stub;->detachWindowContext(Landroid/os/IBinder;)V

    .line 3234
    goto/16 :goto_cb8

    .line 3217
    :pswitch_292
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object p1

    .line 3219
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    .line 3221
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3222
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3223
    invoke-virtual {p0, p1, p4, v0}, Landroid/view/IWindowManager$Stub;->attachWindowContextToDisplayContent(Landroid/app/IApplicationThread;Landroid/os/IBinder;I)Landroid/window/WindowContextInfo;

    move-result-object p1

    .line 3224
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3225
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3226
    goto/16 :goto_cb8

    .line 3203
    :pswitch_2b1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object p1

    .line 3205
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    .line 3207
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 3208
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3209
    invoke-virtual {p0, p1, p4, v0}, Landroid/view/IWindowManager$Stub;->attachWindowContextToWindowToken(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/os/IBinder;)Landroid/window/WindowContextInfo;

    move-result-object p1

    .line 3210
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3211
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3212
    goto/16 :goto_cb8

    .line 3185
    :pswitch_2d0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v3

    .line 3187
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 3189
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 3191
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 3193
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v7, p1

    check-cast v7, Landroid/os/Bundle;

    .line 3194
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3195
    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/view/IWindowManager$Stub;->attachWindowContextToDisplayArea(Landroid/app/IApplicationThread;Landroid/os/IBinder;IILandroid/os/Bundle;)Landroid/window/WindowContextInfo;

    move-result-object p1

    .line 3196
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3197
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3198
    goto/16 :goto_cb8

    .line 3176
    :pswitch_2fd
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 3177
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3178
    invoke-virtual {p0, p1}, Landroid/view/IWindowManager$Stub;->setDisplayHashThrottlingEnabled(Z)V

    .line 3179
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3180
    goto/16 :goto_cb8

    .line 3166
    :pswitch_30d
    move-object v2, p0

    sget-object p1, Landroid/view/displayhash/DisplayHash;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/displayhash/DisplayHash;

    .line 3167
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3168
    invoke-virtual {p0, p1}, Landroid/view/IWindowManager$Stub;->verifyDisplayHash(Landroid/view/displayhash/DisplayHash;)Landroid/view/displayhash/VerifiedDisplayHash;

    move-result-object p1

    .line 3169
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3170
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3171
    goto/16 :goto_cb8

    .line 3158
    :pswitch_325
    move-object v2, p0

    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->getSupportedDisplayHashAlgorithms()[Ljava/lang/String;

    move-result-object p1

    .line 3159
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3160
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 3161
    goto/16 :goto_cb8

    .line 3148
    :pswitch_332
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 3150
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 3151
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3152
    invoke-virtual {p0, p1, p4}, Landroid/view/IWindowManager$Stub;->holdLock(Landroid/os/IBinder;I)V

    .line 3153
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3154
    goto/16 :goto_cb8

    .line 3133
    :pswitch_346
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 3135
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    .line 3137
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3139
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IScrollCaptureResponseListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IScrollCaptureResponseListener;

    move-result-object v3

    .line 3140
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3141
    invoke-virtual {p0, p1, p4, v0, v3}, Landroid/view/IWindowManager$Stub;->requestScrollCapture(ILandroid/os/IBinder;ILandroid/view/IScrollCaptureResponseListener;)V

    .line 3142
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3143
    goto/16 :goto_cb8

    .line 3124
    :pswitch_366
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 3125
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3126
    invoke-virtual {p0, p1}, Landroid/view/IWindowManager$Stub;->setActiveTransactionTracing(Z)V

    .line 3127
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3128
    goto/16 :goto_cb8

    .line 3115
    :pswitch_376
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 3116
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3117
    invoke-virtual {p0, p1}, Landroid/view/IWindowManager$Stub;->setLayerTracingFlags(I)V

    .line 3118
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3119
    goto/16 :goto_cb8

    .line 3108
    :pswitch_386
    move-object v2, p0

    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->showGlobalActions()V

    .line 3109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3110
    goto/16 :goto_cb8

    .line 3099
    :pswitch_38f
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 3100
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3101
    invoke-virtual {p0, p1}, Landroid/view/IWindowManager$Stub;->getPossibleDisplayInfo(I)Ljava/util/List;

    move-result-object p1

    .line 3102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3103
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 3104
    goto/16 :goto_cb8

    .line 3085
    :pswitch_3a3
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 3087
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    .line 3089
    new-instance v0, Landroid/view/InsetsState;

    invoke-direct {v0}, Landroid/view/InsetsState;-><init>()V

    .line 3090
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3091
    invoke-virtual {p0, p1, p4, v0}, Landroid/view/IWindowManager$Stub;->getWindowInsets(ILandroid/os/IBinder;Landroid/view/InsetsState;)V

    .line 3092
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3093
    invoke-virtual {p3, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3094
    goto/16 :goto_cb8

    .line 3072
    :pswitch_3bf
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 3074
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 3076
    sget-object v0, Landroid/view/inputmethod/ImeTracker$Token;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/ImeTracker$Token;

    .line 3077
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3078
    invoke-virtual {p0, p1, p4, v0}, Landroid/view/IWindowManager$Stub;->updateDisplayWindowAnimatingTypes(IILandroid/view/inputmethod/ImeTracker$Token;)V

    .line 3079
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3080
    goto/16 :goto_cb8

    .line 3057
    :pswitch_3db
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 3059
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 3061
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3063
    sget-object v3, Landroid/view/inputmethod/ImeTracker$Token;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/ImeTracker$Token;

    .line 3064
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3065
    invoke-virtual {p0, p1, p4, v0, v3}, Landroid/view/IWindowManager$Stub;->updateDisplayWindowRequestedVisibleTypes(IIILandroid/view/inputmethod/ImeTracker$Token;)V

    .line 3066
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3067
    goto/16 :goto_cb8

    .line 3046
    :pswitch_3fb
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 3048
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/view/IDisplayWindowInsetsController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IDisplayWindowInsetsController;

    move-result-object p4

    .line 3049
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3050
    invoke-virtual {p0, p1, p4}, Landroid/view/IWindowManager$Stub;->setDisplayWindowInsetsController(ILandroid/view/IDisplayWindowInsetsController;)V

    .line 3051
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3052
    goto/16 :goto_cb8

    .line 3033
    :pswitch_413
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 3035
    new-instance p4, Landroid/view/SurfaceControl;

    invoke-direct {p4}, Landroid/view/SurfaceControl;-><init>()V

    .line 3036
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3037
    invoke-virtual {p0, p1, p4}, Landroid/view/IWindowManager$Stub;->mirrorDisplay(ILandroid/view/SurfaceControl;)Z

    move-result p1

    .line 3038
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3039
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3040
    invoke-virtual {p3, p4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3041
    goto/16 :goto_cb8

    .line 3024
    :pswitch_42f
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 3025
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3026
    invoke-virtual {p0, p1}, Landroid/view/IWindowManager$Stub;->setLayerTracing(Z)V

    .line 3027
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3028
    goto/16 :goto_cb8

    .line 3016
    :pswitch_43f
    move-object v2, p0

    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->isLayerTracing()Z

    move-result p1

    .line 3017
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3018
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3019
    goto/16 :goto_cb8

    .line 3008
    :pswitch_44c
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 3009
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3010
    invoke-virtual {p0, p1}, Landroid/view/IWindowManager$Stub;->syncInputTransactions(Z)V

    .line 3011
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3012
    goto/16 :goto_cb8

    .line 2997
    :pswitch_45c
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 2999
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 3000
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3001
    invoke-virtual {p0, p1, p4}, Landroid/view/IWindowManager$Stub;->onNotificationShadeExpanded(Landroid/os/IBinder;Z)V

    .line 3002
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3003
    goto/16 :goto_cb8

    .line 2986
    :pswitch_470
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 2988
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 2989
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2990
    invoke-virtual {p0, p1, p4}, Landroid/view/IWindowManager$Stub;->setDisplayImePolicy(II)V

    .line 2991
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2992
    goto/16 :goto_cb8

    .line 2976
    :pswitch_484
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 2977
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2978
    invoke-virtual {p0, p1}, Landroid/view/IWindowManager$Stub;->getDisplayImePolicy(I)I

    move-result p1

    .line 2979
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2980
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2981
    goto/16 :goto_cb8

    .line 2966
    :pswitch_498
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 2967
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2968
    invoke-virtual {p0, p1}, Landroid/view/IWindowManager$Stub;->isEligibleForDesktopMode(I)Z

    move-result p1

    .line 2969
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2970
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2971
    goto/16 :goto_cb8

    .line 2956
    :pswitch_4ac
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 2957
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2958
    invoke-virtual {p0, p1}, Landroid/view/IWindowManager$Stub;->shouldShowSystemDecors(I)Z

    move-result p1

    .line 2959
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2960
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2961
    goto/16 :goto_cb8

    .line 2945
    :pswitch_4c0
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 2947
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 2948
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2949
    invoke-virtual {p0, p1, p4}, Landroid/view/IWindowManager$Stub;->setShouldShowWithInsecureKeyguard(IZ)V

    .line 2950
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2951
    goto/16 :goto_cb8

    .line 2935
    :pswitch_4d4
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 2936
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2937
    invoke-virtual {p0, p1}, Landroid/view/IWindowManager$Stub;->shouldShowWithInsecureKeyguard(I)Z

    move-result p1

    .line 2938
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2939
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2940
    goto/16 :goto_cb8

    .line 2924
    :pswitch_4e8
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 2926
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 2927
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2928
    invoke-virtual {p0, p1, p4}, Landroid/view/IWindowManager$Stub;->setRemoveContentMode(II)V

    .line 2929
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2930
    goto/16 :goto_cb8

    .line 2914
    :pswitch_4fc
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 2915
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2916
    invoke-virtual {p0, p1}, Landroid/view/IWindowManager$Stub;->getRemoveContentMode(I)I

    move-result p1

    .line 2917
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2918
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2919
    goto/16 :goto_cb8

    .line 2903
    :pswitch_510
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 2905
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 2906
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2907
    invoke-virtual {p0, p1, p4}, Landroid/view/IWindowManager$Stub;->setWindowingMode(II)V

    .line 2908
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2909
    goto/16 :goto_cb8

    .line 2893
    :pswitch_524
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 2894
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2895
    invoke-virtual {p0, p1}, Landroid/view/IWindowManager$Stub;->getWindowingMode(I)I

    move-result p1

    .line 2896
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2897
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2898
    goto/16 :goto_cb8

    .line 2885
    :pswitch_538
    move-object v2, p0

    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->isTransitionTraceEnabled()Z

    move-result p1

    .line 2886
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2887
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2888
    goto/16 :goto_cb8

    .line 2879
    :pswitch_545
    move-object v2, p0

    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->stopTransitionTrace()V

    .line 2880
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2881
    goto/16 :goto_cb8

    .line 2873
    :pswitch_54e
    move-object v2, p0

    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->startTransitionTrace()V

    .line 2874
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2875
    goto/16 :goto_cb8

    .line 2866
    :pswitch_557
    move-object v2, p0

    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->isWindowTraceEnabled()Z

    move-result p1

    .line 2867
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2868
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2869
    goto/16 :goto_cb8

    .line 2860
    :pswitch_564
    move-object v2, p0

    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->saveWindowTraceToFile()V

    .line 2861
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2862
    goto/16 :goto_cb8

    .line 2854
    :pswitch_56d
    move-object v2, p0

    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->stopWindowTrace()V

    .line 2855
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2856
    goto/16 :goto_cb8

    .line 2848
    :pswitch_576
    move-object v2, p0

    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->startWindowTrace()V

    .line 2849
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2850
    goto/16 :goto_cb8

    .line 2840
    :pswitch_57f
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/view/IDisplayWindowListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IDisplayWindowListener;

    move-result-object p1

    .line 2841
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2842
    invoke-virtual {p0, p1}, Landroid/view/IWindowManager$Stub;->unregisterDisplayWindowListener(Landroid/view/IDisplayWindowListener;)V

    .line 2843
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2844
    goto/16 :goto_cb8

    .line 2830
    :pswitch_593
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/view/IDisplayWindowListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IDisplayWindowListener;

    move-result-object p1

    .line 2831
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2832
    invoke-virtual {p0, p1}, Landroid/view/IWindowManager$Stub;->registerDisplayWindowListener(Landroid/view/IDisplayWindowListener;)[I

    move-result-object p1

    .line 2833
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2834
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 2835
    goto/16 :goto_cb8

    .line 2821
    :pswitch_5ab
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/view/IDisplayFoldListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IDisplayFoldListener;

    move-result-object p1

    .line 2822
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2823
    invoke-virtual {p0, p1}, Landroid/view/IWindowManager$Stub;->unregisterDisplayFoldListener(Landroid/view/IDisplayFoldListener;)V

    .line 2824
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2825
    goto/16 :goto_cb8

    .line 2812
    :pswitch_5bf
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/view/IDisplayFoldListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IDisplayFoldListener;

    move-result-object p1

    .line 2813
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2814
    invoke-virtual {p0, p1}, Landroid/view/IWindowManager$Stub;->registerDisplayFoldListener(Landroid/view/IDisplayFoldListener;)V

    .line 2815
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2816
    goto/16 :goto_cb8

    .line 2804
    :pswitch_5d3
    move-object v2, p0

    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->getCurrentImeTouchRegion()Landroid/graphics/Region;

    move-result-object p1

    .line 2805
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2806
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2807
    goto/16 :goto_cb8

    .line 2793
    :pswitch_5e0
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 2795
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 2796
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2797
    invoke-virtual {p0, p1, p4}, Landroid/view/IWindowManager$Stub;->destroyInputConsumer(Landroid/os/IBinder;I)Z

    move-result p1

    .line 2798
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2799
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2800
    goto/16 :goto_cb8

    .line 2777
    :pswitch_5f8
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 2779
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 2781
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2783
    new-instance v3, Landroid/view/InputChannel;

    invoke-direct {v3}, Landroid/view/InputChannel;-><init>()V

    .line 2784
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2785
    invoke-virtual {p0, p1, p4, v0, v3}, Landroid/view/IWindowManager$Stub;->createInputConsumer(Landroid/os/IBinder;Ljava/lang/String;ILandroid/view/InputChannel;)V

    .line 2786
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2787
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2788
    goto/16 :goto_cb8

    .line 2766
    :pswitch_618
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 2768
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/policy/IShortcutService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IShortcutService;

    move-result-object p1

    .line 2769
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2770
    invoke-virtual {p0, v3, v4, p1}, Landroid/view/IWindowManager$Stub;->registerShortcutKey(JLcom/android/internal/policy/IShortcutService;)V

    .line 2771
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2772
    goto/16 :goto_cb8

    .line 2754
    :pswitch_630
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 2756
    new-instance p4, Landroid/graphics/Rect;

    invoke-direct {p4}, Landroid/graphics/Rect;-><init>()V

    .line 2757
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2758
    invoke-virtual {p0, p1, p4}, Landroid/view/IWindowManager$Stub;->getStableInsets(ILandroid/graphics/Rect;)V

    .line 2759
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2760
    invoke-virtual {p3, p4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2761
    goto/16 :goto_cb8

    .line 2743
    :pswitch_648
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object p1

    .line 2745
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 2746
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2747
    invoke-virtual {p0, p1, p4}, Landroid/view/IWindowManager$Stub;->requestImeKeyboardShortcuts(Lcom/android/internal/os/IResultReceiver;I)V

    .line 2748
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2749
    goto/16 :goto_cb8

    .line 2732
    :pswitch_660
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object p1

    .line 2734
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 2735
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2736
    invoke-virtual {p0, p1, p4}, Landroid/view/IWindowManager$Stub;->requestAppKeyboardShortcuts(Lcom/android/internal/os/IResultReceiver;I)V

    .line 2737
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2738
    goto/16 :goto_cb8

    .line 2721
    :pswitch_678
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 2723
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/view/IPinnedTaskListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IPinnedTaskListener;

    move-result-object p4

    .line 2724
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2725
    invoke-virtual {p0, p1, p4}, Landroid/view/IWindowManager$Stub;->registerPinnedTaskListener(ILandroid/view/IPinnedTaskListener;)V

    .line 2726
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2727
    goto/16 :goto_cb8

    .line 2713
    :pswitch_690
    move-object v2, p0

    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->getDockedStackSide()I

    move-result p1

    .line 2714
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2715
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2716
    goto/16 :goto_cb8

    .line 2704
    :pswitch_69d
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 2705
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2706
    invoke-virtual {p0, p1}, Landroid/view/IWindowManager$Stub;->getWindowContentFrameStats(Landroid/os/IBinder;)Landroid/view/WindowContentFrameStats;

    move-result-object p1

    .line 2707
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2708
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2709
    goto/16 :goto_cb8

    .line 2694
    :pswitch_6b1
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 2695
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2696
    invoke-virtual {p0, p1}, Landroid/view/IWindowManager$Stub;->clearWindowContentFrameStats(Landroid/os/IBinder;)Z

    move-result p1

    .line 2697
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2698
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2699
    goto/16 :goto_cb8

    .line 2686
    :pswitch_6c5
    move-object v2, p0

    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->isSafeModeEnabled()Z

    move-result p1

    .line 2687
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2688
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2689
    goto/16 :goto_cb8

    .line 2678
    :pswitch_6d2
    move-object v2, p0

    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 2679
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2680
    invoke-virtual {p0, p1}, Landroid/view/IWindowManager$Stub;->lockNow(Landroid/os/Bundle;)V

    .line 2681
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2682
    goto/16 :goto_cb8

    .line 2668
    :pswitch_6e6
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 2669
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2670
    invoke-virtual {p0, p1}, Landroid/view/IWindowManager$Stub;->hasNavigationBar(I)Z

    move-result p1

    .line 2671
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2672
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2673
    goto/16 :goto_cb8

    .line 2659
    :pswitch_6fa
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 2660
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2661
    invoke-virtual {p0, p1}, Landroid/view/IWindowManager$Stub;->setNavBarVirtualKeyHapticFeedbackEnabled(Z)V

    .line 2662
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2663
    goto/16 :goto_cb8

    .line 2649
    :pswitch_70a
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 2651
    sget-object p3, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Landroid/graphics/Rect;

    .line 2652
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2653
    invoke-virtual {p0, p1, p3}, Landroid/view/IWindowManager$Stub;->updateStaticPrivacyIndicatorBounds(I[Landroid/graphics/Rect;)V

    .line 2654
    goto/16 :goto_cb8

    .line 2641
    :pswitch_71f
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 2642
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2643
    invoke-virtual {p0, p1}, Landroid/view/IWindowManager$Stub;->setRecentsVisibility(Z)V

    .line 2644
    goto/16 :goto_cb8

    .line 2633
    :pswitch_72c
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 2634
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2635
    invoke-virtual {p0, p1}, Landroid/view/IWindowManager$Stub;->hideTransientBars(I)V

    .line 2636
    goto/16 :goto_cb8

    .line 2624
    :pswitch_739
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/app/IAssistDataReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAssistDataReceiver;

    move-result-object p1

    .line 2625
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2626
    invoke-virtual {p0, p1}, Landroid/view/IWindowManager$Stub;->requestAssistScreenshot(Landroid/app/IAssistDataReceiver;)V

    .line 2627
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2628
    goto/16 :goto_cb8

    .line 2613
    :pswitch_74d
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ISystemGestureExclusionListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/ISystemGestureExclusionListener;

    move-result-object p1

    .line 2615
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 2616
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2617
    invoke-virtual {p0, p1, p4}, Landroid/view/IWindowManager$Stub;->unregisterSystemGestureExclusionListener(Landroid/view/ISystemGestureExclusionListener;I)V

    .line 2618
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2619
    goto/16 :goto_cb8

    .line 2602
    :pswitch_765
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ISystemGestureExclusionListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/ISystemGestureExclusionListener;

    move-result-object p1

    .line 2604
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 2605
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2606
    invoke-virtual {p0, p1, p4}, Landroid/view/IWindowManager$Stub;->registerSystemGestureExclusionListener(Landroid/view/ISystemGestureExclusionListener;I)V

    .line 2607
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2608
    goto/16 :goto_cb8

    .line 2591
    :pswitch_77d
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/view/IWallpaperVisibilityListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWallpaperVisibilityListener;

    move-result-object p1

    .line 2593
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 2594
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2595
    invoke-virtual {p0, p1, p4}, Landroid/view/IWindowManager$Stub;->unregisterWallpaperVisibilityListener(Landroid/view/IWallpaperVisibilityListener;I)V

    .line 2596
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2597
    goto/16 :goto_cb8

    .line 2579
    :pswitch_795
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/view/IWallpaperVisibilityListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWallpaperVisibilityListener;

    move-result-object p1

    .line 2581
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 2582
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2583
    invoke-virtual {p0, p1, p4}, Landroid/view/IWindowManager$Stub;->registerWallpaperVisibilityListener(Landroid/view/IWallpaperVisibilityListener;I)Z

    move-result p1

    .line 2584
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2585
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2586
    goto/16 :goto_cb8

    .line 2569
    :pswitch_7b1
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 2570
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2571
    invoke-virtual {p0, p1}, Landroid/view/IWindowManager$Stub;->mirrorWallpaperSurface(I)Landroid/view/SurfaceControl;

    move-result-object p1

    .line 2572
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2573
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2574
    goto/16 :goto_cb8

    .line 2561
    :pswitch_7c5
    move-object v2, p0

    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->screenshotWallpaper()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 2562
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2563
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2564
    goto/16 :goto_cb8

    .line 2551
    :pswitch_7d2
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 2553
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 2554
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2555
    invoke-virtual {p0, p1, p4}, Landroid/view/IWindowManager$Stub;->setIgnoreOrientationRequest(IZ)V

    .line 2556
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2557
    goto/16 :goto_cb8

    .line 2540
    :pswitch_7e6
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 2542
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 2543
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2544
    invoke-virtual {p0, p1, p4}, Landroid/view/IWindowManager$Stub;->setFixedToUserRotation(II)V

    .line 2545
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2546
    goto/16 :goto_cb8

    .line 2530
    :pswitch_7fa
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 2531
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2532
    invoke-virtual {p0, p1}, Landroid/view/IWindowManager$Stub;->isDisplayRotationFrozen(I)Z

    move-result p1

    .line 2533
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2534
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2535
    goto/16 :goto_cb8

    .line 2519
    :pswitch_80e
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 2521
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 2522
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2523
    invoke-virtual {p0, p1, p4}, Landroid/view/IWindowManager$Stub;->thawDisplayRotation(ILjava/lang/String;)V

    .line 2524
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2525
    goto/16 :goto_cb8

    .line 2506
    :pswitch_822
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 2508
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 2510
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2511
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2512
    invoke-virtual {p0, p1, p4, v0}, Landroid/view/IWindowManager$Stub;->freezeDisplayRotation(IILjava/lang/String;)V

    .line 2513
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2514
    goto/16 :goto_cb8

    .line 2495
    :pswitch_83a
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 2497
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 2498
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2499
    invoke-virtual {p0, p1, p4}, Landroid/view/IWindowManager$Stub;->setRotationAtAngleIfAllowed(ILjava/lang/String;)V

    .line 2500
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2501
    goto/16 :goto_cb8

    .line 2487
    :pswitch_84e
    move-object v2, p0

    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->isRotationFrozen()Z

    move-result p1

    .line 2488
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2489
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2490
    goto/16 :goto_cb8

    .line 2479
    :pswitch_85b
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2480
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2481
    invoke-virtual {p0, p1}, Landroid/view/IWindowManager$Stub;->thawRotation(Ljava/lang/String;)V

    .line 2482
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2483
    goto/16 :goto_cb8

    .line 2468
    :pswitch_86b
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 2470
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 2471
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2472
    invoke-virtual {p0, p1, p4}, Landroid/view/IWindowManager$Stub;->freezeRotation(ILjava/lang/String;)V

    .line 2473
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2474
    goto/16 :goto_cb8

    .line 2458
    :pswitch_87f
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 2460
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p3

    .line 2461
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2462
    invoke-virtual {p0, p1, p3}, Landroid/view/IWindowManager$Stub;->setDeviceStateAutoRotateSetting(IZ)V

    .line 2463
    goto/16 :goto_cb8

    .line 2448
    :pswitch_890
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 2449
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2450
    invoke-virtual {p0, p1}, Landroid/view/IWindowManager$Stub;->getPreferredOptionsPanelGravity(I)I

    move-result p1

    .line 2451
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2452
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2453
    goto/16 :goto_cb8

    .line 2436
    :pswitch_8a4
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 2438
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/view/IRotationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IRotationWatcher;

    move-result-object p4

    .line 2439
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2440
    invoke-virtual {p0, p1, p4}, Landroid/view/IWindowManager$Stub;->registerProposedRotationListener(Landroid/os/IBinder;Landroid/view/IRotationWatcher;)I

    move-result p1

    .line 2441
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2442
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2443
    goto/16 :goto_cb8

    .line 2427
    :pswitch_8c0
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/view/IRotationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IRotationWatcher;

    move-result-object p1

    .line 2428
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2429
    invoke-virtual {p0, p1}, Landroid/view/IWindowManager$Stub;->removeRotationWatcher(Landroid/view/IRotationWatcher;)V

    .line 2430
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2431
    goto/16 :goto_cb8

    .line 2415
    :pswitch_8d4
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/view/IRotationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IRotationWatcher;

    move-result-object p1

    .line 2417
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 2418
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2419
    invoke-virtual {p0, p1, p4}, Landroid/view/IWindowManager$Stub;->watchRotation(Landroid/view/IRotationWatcher;I)I

    move-result p1

    .line 2420
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2421
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2422
    goto/16 :goto_cb8

    .line 2405
    :pswitch_8f0
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 2406
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2407
    invoke-virtual {p0, p1}, Landroid/view/IWindowManager$Stub;->getDisplayUserRotation(I)I

    move-result p1

    .line 2408
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2409
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2410
    goto/16 :goto_cb8

    .line 2397
    :pswitch_904
    move-object v2, p0

    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->getDefaultDisplayRotation()I

    move-result p1

    .line 2398
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2399
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2400
    goto/16 :goto_cb8

    .line 2391
    :pswitch_911
    move-object v2, p0

    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->refreshScreenCaptureDisabled()V

    .line 2392
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2393
    goto/16 :goto_cb8

    .line 2383
    :pswitch_91a
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2384
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2385
    invoke-virtual {p0, p1}, Landroid/view/IWindowManager$Stub;->setStrictModeVisualIndicatorPreference(Ljava/lang/String;)V

    .line 2386
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2387
    goto/16 :goto_cb8

    .line 2374
    :pswitch_92a
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 2375
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2376
    invoke-virtual {p0, p1}, Landroid/view/IWindowManager$Stub;->showStrictModeViolation(Z)V

    .line 2377
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2378
    goto/16 :goto_cb8

    .line 2364
    :pswitch_93a
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 2365
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2366
    invoke-virtual {p0, p1}, Landroid/view/IWindowManager$Stub;->isInTouchMode(I)Z

    move-result p1

    .line 2367
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2368
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2369
    goto/16 :goto_cb8

    .line 2355
    :pswitch_94e
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 2356
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2357
    invoke-virtual {p0, p1}, Landroid/view/IWindowManager$Stub;->setInTouchModeOnAllDisplays(Z)V

    .line 2358
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2359
    goto/16 :goto_cb8

    .line 2344
    :pswitch_95e
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 2346
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 2347
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2348
    invoke-virtual {p0, p1, p4}, Landroid/view/IWindowManager$Stub;->setInTouchMode(ZI)V

    .line 2349
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2350
    goto/16 :goto_cb8

    .line 2336
    :pswitch_972
    move-object v2, p0

    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->getCurrentAnimatorScale()F

    move-result p1

    .line 2337
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2338
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2339
    goto/16 :goto_cb8

    .line 2328
    :pswitch_97f
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object p1

    .line 2329
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2330
    invoke-virtual {p0, p1}, Landroid/view/IWindowManager$Stub;->setAnimationScales([F)V

    .line 2331
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2332
    goto/16 :goto_cb8

    .line 2317
    :pswitch_98f
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 2319
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p4

    .line 2320
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2321
    invoke-virtual {p0, p1, p4}, Landroid/view/IWindowManager$Stub;->setAnimationScale(IF)V

    .line 2322
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2323
    goto/16 :goto_cb8

    .line 2309
    :pswitch_9a3
    move-object v2, p0

    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->getAnimationScales()[F

    move-result-object p1

    .line 2310
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2311
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 2312
    goto/16 :goto_cb8

    .line 2300
    :pswitch_9b0
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 2301
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2302
    invoke-virtual {p0, p1}, Landroid/view/IWindowManager$Stub;->getAnimationScale(I)F

    move-result p1

    .line 2303
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2304
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2305
    goto/16 :goto_cb8

    .line 2291
    :pswitch_9c4
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2292
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2293
    invoke-virtual {p0, p1}, Landroid/view/IWindowManager$Stub;->closeSystemDialogs(Ljava/lang/String;)V

    .line 2294
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2295
    goto/16 :goto_cb8

    .line 2282
    :pswitch_9d4
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 2283
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2284
    invoke-virtual {p0, p1}, Landroid/view/IWindowManager$Stub;->setSwitchingUser(Z)V

    .line 2285
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2286
    goto/16 :goto_cb8

    .line 2273
    :pswitch_9e4
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/policy/IKeyguardLockedStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardLockedStateListener;

    move-result-object p1

    .line 2274
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2275
    invoke-virtual {p0, p1}, Landroid/view/IWindowManager$Stub;->removeKeyguardLockedStateListener(Lcom/android/internal/policy/IKeyguardLockedStateListener;)V

    .line 2276
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2277
    goto/16 :goto_cb8

    .line 2264
    :pswitch_9f8
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/policy/IKeyguardLockedStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardLockedStateListener;

    move-result-object p1

    .line 2265
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2266
    invoke-virtual {p0, p1}, Landroid/view/IWindowManager$Stub;->addKeyguardLockedStateListener(Lcom/android/internal/policy/IKeyguardLockedStateListener;)V

    .line 2267
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2268
    goto/16 :goto_cb8

    .line 2253
    :pswitch_a0c
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/policy/IKeyguardDismissCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardDismissCallback;

    move-result-object p1

    .line 2255
    sget-object p4, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/CharSequence;

    .line 2256
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2257
    invoke-virtual {p0, p1, p4}, Landroid/view/IWindowManager$Stub;->dismissKeyguard(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    .line 2258
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2259
    goto/16 :goto_cb8

    .line 2243
    :pswitch_a28
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 2244
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2245
    invoke-virtual {p0, p1}, Landroid/view/IWindowManager$Stub;->isKeyguardSecure(I)Z

    move-result p1

    .line 2246
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2247
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2248
    goto/16 :goto_cb8

    .line 2235
    :pswitch_a3c
    move-object v2, p0

    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->isKeyguardLocked()Z

    move-result p1

    .line 2236
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2237
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2238
    goto/16 :goto_cb8

    .line 2227
    :pswitch_a49
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/view/IOnKeyguardExitResult$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IOnKeyguardExitResult;

    move-result-object p1

    .line 2228
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2229
    invoke-virtual {p0, p1}, Landroid/view/IWindowManager$Stub;->exitKeyguardSecurely(Landroid/view/IOnKeyguardExitResult;)V

    .line 2230
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2231
    goto/16 :goto_cb8

    .line 2216
    :pswitch_a5d
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 2218
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 2219
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2220
    invoke-virtual {p0, p1, p4}, Landroid/view/IWindowManager$Stub;->reenableKeyguard(Landroid/os/IBinder;I)V

    .line 2221
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2222
    goto/16 :goto_cb8

    .line 2203
    :pswitch_a71
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 2205
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 2207
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2208
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2209
    invoke-virtual {p0, p1, p4, v0}, Landroid/view/IWindowManager$Stub;->disableKeyguard(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 2210
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2211
    goto/16 :goto_cb8

    .line 2196
    :pswitch_a89
    move-object v2, p0

    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->endProlongedAnimations()V

    .line 2197
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2198
    goto/16 :goto_cb8

    .line 2186
    :pswitch_a92
    move-object v2, p0

    sget-object p1, Landroid/view/RemoteAnimationAdapter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/RemoteAnimationAdapter;

    .line 2188
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 2189
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2190
    invoke-virtual {p0, p1, p4}, Landroid/view/IWindowManager$Stub;->overridePendingAppTransitionRemote(Landroid/view/RemoteAnimationAdapter;I)V

    .line 2191
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2192
    goto/16 :goto_cb8

    .line 2171
    :pswitch_aaa
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/view/IAppTransitionAnimationSpecsFuture$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IAppTransitionAnimationSpecsFuture;

    move-result-object p1

    .line 2173
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object p4

    .line 2175
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 2177
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2178
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2179
    invoke-virtual {p0, p1, p4, v0, v3}, Landroid/view/IWindowManager$Stub;->overridePendingAppTransitionMultiThumbFuture(Landroid/view/IAppTransitionAnimationSpecsFuture;Landroid/os/IRemoteCallback;ZI)V

    .line 2180
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2181
    goto/16 :goto_cb8

    .line 2158
    :pswitch_ace
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 2160
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 2162
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    .line 2163
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2164
    invoke-virtual {p0, p1, p4, v0}, Landroid/view/IWindowManager$Stub;->setShellRootAccessibilityWindow(IILandroid/view/IWindow;)V

    .line 2165
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2166
    goto/16 :goto_cb8

    .line 2144
    :pswitch_aea
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 2146
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object p4

    .line 2148
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2149
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2150
    invoke-virtual {p0, p1, p4, v0}, Landroid/view/IWindowManager$Stub;->addShellRoot(ILandroid/view/IWindow;I)Landroid/view/SurfaceControl;

    move-result-object p1

    .line 2151
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2152
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2153
    goto/16 :goto_cb8

    .line 2135
    :pswitch_b0a
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/view/IDisplayChangeWindowController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IDisplayChangeWindowController;

    move-result-object p1

    .line 2136
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2137
    invoke-virtual {p0, p1}, Landroid/view/IWindowManager$Stub;->setDisplayChangeWindowController(Landroid/view/IDisplayChangeWindowController;)V

    .line 2138
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2139
    goto/16 :goto_cb8

    .line 2124
    :pswitch_b1e
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 2126
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 2127
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2128
    invoke-virtual {p0, p1, p4}, Landroid/view/IWindowManager$Stub;->removeWindowToken(Landroid/os/IBinder;I)V

    .line 2129
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2130
    goto/16 :goto_cb8

    .line 2109
    :pswitch_b32
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 2111
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 2113
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2115
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 2116
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2117
    invoke-virtual {p0, p1, p4, v0, v3}, Landroid/view/IWindowManager$Stub;->addWindowToken(Landroid/os/IBinder;IILandroid/os/Bundle;)V

    .line 2118
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2119
    goto/16 :goto_cb8

    .line 2099
    :pswitch_b52
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 2100
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2101
    invoke-virtual {p0, p1}, Landroid/view/IWindowManager$Stub;->isWindowToken(Landroid/os/IBinder;)Z

    move-result p1

    .line 2102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2103
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2104
    goto/16 :goto_cb8

    .line 2090
    :pswitch_b66
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 2091
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2092
    invoke-virtual {p0, p1}, Landroid/view/IWindowManager$Stub;->setEventDispatching(Z)V

    .line 2093
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2094
    goto/16 :goto_cb8

    .line 2079
    :pswitch_b76
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 2081
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 2082
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2083
    invoke-virtual {p0, p1, p4}, Landroid/view/IWindowManager$Stub;->setForcedDisplayScalingMode(II)V

    .line 2084
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2085
    goto/16 :goto_cb8

    .line 2068
    :pswitch_b8a
    move-object v2, p0

    sget-object p1, Landroid/window/ConfigurationChangeSetting;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    .line 2070
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 2071
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2072
    invoke-virtual {p0, p1, p4}, Landroid/view/IWindowManager$Stub;->setConfigurationChangeSettingsForUser(Ljava/util/List;I)V

    .line 2073
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2074
    goto/16 :goto_cb8

    .line 2055
    :pswitch_ba0
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 2057
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p4

    .line 2059
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2060
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2061
    invoke-virtual {p0, p1, p4, v0}, Landroid/view/IWindowManager$Stub;->setForcedDisplayDensityRatio(IFI)V

    .line 2062
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2063
    goto/16 :goto_cb8

    .line 2044
    :pswitch_bb8
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 2046
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 2047
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2048
    invoke-virtual {p0, p1, p4}, Landroid/view/IWindowManager$Stub;->clearForcedDisplayDensityForUser(II)V

    .line 2049
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2050
    goto/16 :goto_cb8

    .line 2031
    :pswitch_bcc
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 2033
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 2035
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2036
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2037
    invoke-virtual {p0, p1, p4, v0}, Landroid/view/IWindowManager$Stub;->setForcedDisplayDensityForUser(III)V

    .line 2038
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2039
    goto/16 :goto_cb8

    .line 2021
    :pswitch_be4
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2022
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2023
    invoke-virtual {p0, p1}, Landroid/view/IWindowManager$Stub;->getDisplayIdByUniqueId(Ljava/lang/String;)I

    move-result p1

    .line 2024
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2025
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2026
    goto/16 :goto_cb8

    .line 2011
    :pswitch_bf8
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 2012
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2013
    invoke-virtual {p0, p1}, Landroid/view/IWindowManager$Stub;->getBaseDisplayDensity(I)I

    move-result p1

    .line 2014
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2015
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2016
    goto/16 :goto_cb8

    .line 2001
    :pswitch_c0c
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 2002
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2003
    invoke-virtual {p0, p1}, Landroid/view/IWindowManager$Stub;->getInitialDisplayDensity(I)I

    move-result p1

    .line 2004
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2005
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2006
    goto/16 :goto_cb8

    .line 1992
    :pswitch_c20
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1993
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1994
    invoke-virtual {p0, p1}, Landroid/view/IWindowManager$Stub;->clearForcedDisplaySize(I)V

    .line 1995
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1996
    goto/16 :goto_cb8

    .line 1979
    :pswitch_c30
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1981
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1983
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1984
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1985
    invoke-virtual {p0, p1, p4, v0}, Landroid/view/IWindowManager$Stub;->setForcedDisplaySize(III)V

    .line 1986
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1987
    goto/16 :goto_cb8

    .line 1967
    :pswitch_c48
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1969
    new-instance p4, Landroid/graphics/Point;

    invoke-direct {p4}, Landroid/graphics/Point;-><init>()V

    .line 1970
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1971
    invoke-virtual {p0, p1, p4}, Landroid/view/IWindowManager$Stub;->getBaseDisplaySize(ILandroid/graphics/Point;)V

    .line 1972
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1973
    invoke-virtual {p3, p4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1974
    goto :goto_cb8

    .line 1955
    :pswitch_c5f
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1957
    new-instance p4, Landroid/graphics/Point;

    invoke-direct {p4}, Landroid/graphics/Point;-><init>()V

    .line 1958
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1959
    invoke-virtual {p0, p1, p4}, Landroid/view/IWindowManager$Stub;->getInitialDisplaySize(ILandroid/graphics/Point;)V

    .line 1960
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1961
    invoke-virtual {p3, p4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1962
    goto :goto_cb8

    .line 1945
    :pswitch_c76
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/view/IWindowSessionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowSessionCallback;

    move-result-object p1

    .line 1946
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1947
    invoke-virtual {p0, p1}, Landroid/view/IWindowManager$Stub;->openSession(Landroid/view/IWindowSessionCallback;)Landroid/view/IWindowSession;

    move-result-object p1

    .line 1948
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1949
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1950
    goto :goto_cb8

    .line 1937
    :pswitch_c8d
    move-object v2, p0

    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->isViewServerRunning()Z

    move-result p1

    .line 1938
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1939
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1940
    goto :goto_cb8

    .line 1930
    :pswitch_c99
    move-object v2, p0

    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->stopViewServer()Z

    move-result p1

    .line 1931
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1932
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1933
    goto :goto_cb8

    .line 1921
    :pswitch_ca5
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1922
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1923
    invoke-virtual {p0, p1}, Landroid/view/IWindowManager$Stub;->startViewServer(I)Z

    move-result p1

    .line 1924
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1925
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1926
    nop

    .line 3537
    :goto_cb8
    return v1

    nop

    :pswitch_data_cba
    .packed-switch 0x1
        :pswitch_ca5
        :pswitch_c99
        :pswitch_c8d
        :pswitch_c76
        :pswitch_c5f
        :pswitch_c48
        :pswitch_c30
        :pswitch_c20
        :pswitch_c0c
        :pswitch_bf8
        :pswitch_be4
        :pswitch_bcc
        :pswitch_bb8
        :pswitch_ba0
        :pswitch_b8a
        :pswitch_b76
        :pswitch_b66
        :pswitch_b52
        :pswitch_b32
        :pswitch_b1e
        :pswitch_b0a
        :pswitch_aea
        :pswitch_ace
        :pswitch_aaa
        :pswitch_a92
        :pswitch_a89
        :pswitch_a71
        :pswitch_a5d
        :pswitch_a49
        :pswitch_a3c
        :pswitch_a28
        :pswitch_a0c
        :pswitch_9f8
        :pswitch_9e4
        :pswitch_9d4
        :pswitch_9c4
        :pswitch_9b0
        :pswitch_9a3
        :pswitch_98f
        :pswitch_97f
        :pswitch_972
        :pswitch_95e
        :pswitch_94e
        :pswitch_93a
        :pswitch_92a
        :pswitch_91a
        :pswitch_911
        :pswitch_904
        :pswitch_8f0
        :pswitch_8d4
        :pswitch_8c0
        :pswitch_8a4
        :pswitch_890
        :pswitch_87f
        :pswitch_86b
        :pswitch_85b
        :pswitch_84e
        :pswitch_83a
        :pswitch_822
        :pswitch_80e
        :pswitch_7fa
        :pswitch_7e6
        :pswitch_7d2
        :pswitch_7c5
        :pswitch_7b1
        :pswitch_795
        :pswitch_77d
        :pswitch_765
        :pswitch_74d
        :pswitch_739
        :pswitch_72c
        :pswitch_71f
        :pswitch_70a
        :pswitch_6fa
        :pswitch_6e6
        :pswitch_6d2
        :pswitch_6c5
        :pswitch_6b1
        :pswitch_69d
        :pswitch_690
        :pswitch_678
        :pswitch_660
        :pswitch_648
        :pswitch_630
        :pswitch_618
        :pswitch_5f8
        :pswitch_5e0
        :pswitch_5d3
        :pswitch_5bf
        :pswitch_5ab
        :pswitch_593
        :pswitch_57f
        :pswitch_576
        :pswitch_56d
        :pswitch_564
        :pswitch_557
        :pswitch_54e
        :pswitch_545
        :pswitch_538
        :pswitch_524
        :pswitch_510
        :pswitch_4fc
        :pswitch_4e8
        :pswitch_4d4
        :pswitch_4c0
        :pswitch_4ac
        :pswitch_498
        :pswitch_484
        :pswitch_470
        :pswitch_45c
        :pswitch_44c
        :pswitch_43f
        :pswitch_42f
        :pswitch_413
        :pswitch_3fb
        :pswitch_3db
        :pswitch_3bf
        :pswitch_3a3
        :pswitch_38f
        :pswitch_386
        :pswitch_376
        :pswitch_366
        :pswitch_346
        :pswitch_332
        :pswitch_325
        :pswitch_30d
        :pswitch_2fd
        :pswitch_2d0
        :pswitch_2b1
        :pswitch_292
        :pswitch_286
        :pswitch_267
        :pswitch_250
        :pswitch_23d
        :pswitch_231
        :pswitch_225
        :pswitch_216
        :pswitch_1ff
        :pswitch_1ec
        :pswitch_1d9
        :pswitch_1ca
        :pswitch_1be
        :pswitch_1b2
        :pswitch_196
        :pswitch_17e
        :pswitch_16b
        :pswitch_144
        :pswitch_138
        :pswitch_125
        :pswitch_10a
        :pswitch_f3
        :pswitch_dc
        :pswitch_b9
        :pswitch_a2
        :pswitch_8b
        :pswitch_78
        :pswitch_65
        :pswitch_46
        :pswitch_33
        :pswitch_20
    .end packed-switch
.end method

.method protected blacklist registerScreenRecordingCallback_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 7074
    iget-object v0, p0, Landroid/view/IWindowManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/view/IWindowManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/view/IWindowManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.DETECT_SCREEN_RECORDING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 7075
    return-void
.end method

.method protected blacklist setConfigurationChangeSettingsForUser_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 6894
    iget-object v0, p0, Landroid/view/IWindowManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/view/IWindowManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/view/IWindowManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 6895
    return-void
.end method

.method protected blacklist setDisplayWindowInsetsController_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 7022
    iget-object v0, p0, Landroid/view/IWindowManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/view/IWindowManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/view/IWindowManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_APP_TOKENS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 7023
    return-void
.end method

.method protected blacklist setForcedDisplayDensityForUser_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 6879
    iget-object v0, p0, Landroid/view/IWindowManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/view/IWindowManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/view/IWindowManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 6880
    return-void
.end method

.method protected blacklist setForcedDisplayDensityRatio_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 6889
    iget-object v0, p0, Landroid/view/IWindowManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/view/IWindowManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/view/IWindowManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 6890
    return-void
.end method

.method protected blacklist setForcedDisplayScalingMode_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 6899
    iget-object v0, p0, Landroid/view/IWindowManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/view/IWindowManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/view/IWindowManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 6900
    return-void
.end method

.method protected blacklist setForcedDisplaySize_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 6866
    iget-object v0, p0, Landroid/view/IWindowManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/view/IWindowManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/view/IWindowManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 6867
    return-void
.end method

.method protected blacklist setNavBarVirtualKeyHapticFeedbackEnabled_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 6973
    iget-object v0, p0, Landroid/view/IWindowManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/view/IWindowManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/view/IWindowManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.STATUS_BAR"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 6974
    return-void
.end method

.method protected blacklist setShellRootAccessibilityWindow_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 6914
    iget-object v0, p0, Landroid/view/IWindowManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/view/IWindowManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/view/IWindowManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_APP_TOKENS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 6915
    return-void
.end method

.method protected blacklist unregisterScreenRecordingCallback_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 7079
    iget-object v0, p0, Landroid/view/IWindowManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/view/IWindowManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/view/IWindowManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.DETECT_SCREEN_RECORDING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 7080
    return-void
.end method

.method protected blacklist updateDisplayWindowAnimatingTypes_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 7032
    iget-object v0, p0, Landroid/view/IWindowManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/view/IWindowManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/view/IWindowManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_APP_TOKENS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 7033
    return-void
.end method

.method protected blacklist updateDisplayWindowRequestedVisibleTypes_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 7027
    iget-object v0, p0, Landroid/view/IWindowManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/view/IWindowManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/view/IWindowManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_APP_TOKENS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 7028
    return-void
.end method
