.class public final Lcom/android/internal/accessibility/common/ShortcutConstants;
.super Ljava/lang/Object;
.source "ShortcutConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/accessibility/common/ShortcutConstants$UserShortcutType;,
        Lcom/android/internal/accessibility/common/ShortcutConstants$FloatingMenuSize;,
        Lcom/android/internal/accessibility/common/ShortcutConstants$ShortcutMenuMode;,
        Lcom/android/internal/accessibility/common/ShortcutConstants$AccessibilityFragmentType;
    }
.end annotation


# static fields
.field public static final blacklist A11Y_FEATURE_TO_FRAMEWORK_TILE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/ComponentName;",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist CHOOSER_PACKAGE_NAME:Ljava/lang/String; = "android"

.field public static final blacklist GENERAL_SHORTCUT_SETTINGS:[Ljava/lang/String;

.field public static final blacklist MAGNIFICATION_SHORTCUT_SETTINGS:[Ljava/lang/String;

.field public static final blacklist SERVICES_SEPARATOR:C = ':'

.field public static final blacklist USER_SHORTCUT_TYPES:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 13

    .line 101
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_40

    sput-object v0, Lcom/android/internal/accessibility/common/ShortcutConstants;->USER_SHORTCUT_TYPES:[I

    .line 116
    const-string v0, "accessibility_button_targets"

    const-string v1, "accessibility_shortcut_target_service"

    const-string v2, "accessibility_qs_targets"

    const-string v3, "accessibility_gesture_targets"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/internal/accessibility/common/ShortcutConstants;->GENERAL_SHORTCUT_SETTINGS:[Ljava/lang/String;

    .line 126
    const-string v2, "accessibility_display_magnification_enabled"

    const-string v4, "accessibility_magnification_two_finger_triple_tap_enabled"

    filled-new-array {v0, v1, v3, v2, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/accessibility/common/ShortcutConstants;->MAGNIFICATION_SHORTCUT_SETTINGS:[Ljava/lang/String;

    .line 192
    sget-object v1, Lcom/android/internal/accessibility/AccessibilityShortcutController;->COLOR_INVERSION_COMPONENT_NAME:Landroid/content/ComponentName;

    sget-object v2, Lcom/android/internal/accessibility/AccessibilityShortcutController;->COLOR_INVERSION_TILE_COMPONENT_NAME:Landroid/content/ComponentName;

    sget-object v3, Lcom/android/internal/accessibility/AccessibilityShortcutController;->DALTONIZER_COMPONENT_NAME:Landroid/content/ComponentName;

    sget-object v4, Lcom/android/internal/accessibility/AccessibilityShortcutController;->DALTONIZER_TILE_COMPONENT_NAME:Landroid/content/ComponentName;

    sget-object v5, Lcom/android/internal/accessibility/AccessibilityShortcutController;->ONE_HANDED_COMPONENT_NAME:Landroid/content/ComponentName;

    sget-object v6, Lcom/android/internal/accessibility/AccessibilityShortcutController;->ONE_HANDED_TILE_COMPONENT_NAME:Landroid/content/ComponentName;

    sget-object v7, Lcom/android/internal/accessibility/AccessibilityShortcutController;->REDUCE_BRIGHT_COLORS_COMPONENT_NAME:Landroid/content/ComponentName;

    sget-object v8, Lcom/android/internal/accessibility/AccessibilityShortcutController;->REDUCE_BRIGHT_COLORS_TILE_SERVICE_COMPONENT_NAME:Landroid/content/ComponentName;

    sget-object v9, Lcom/android/internal/accessibility/AccessibilityShortcutController;->FONT_SIZE_COMPONENT_NAME:Landroid/content/ComponentName;

    sget-object v10, Lcom/android/internal/accessibility/AccessibilityShortcutController;->FONT_SIZE_TILE_COMPONENT_NAME:Landroid/content/ComponentName;

    sget-object v11, Lcom/android/internal/accessibility/AccessibilityShortcutController;->ACCESSIBILITY_HEARING_AIDS_COMPONENT_NAME:Landroid/content/ComponentName;

    sget-object v12, Lcom/android/internal/accessibility/AccessibilityShortcutController;->ACCESSIBILITY_HEARING_AIDS_TILE_COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-static/range {v1 .. v12}, Ljava/util/Map;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/internal/accessibility/common/ShortcutConstants;->A11Y_FEATURE_TO_FRAMEWORK_TILE:Ljava/util/Map;

    return-void

    nop

    :array_40
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
        0x40
    .end array-data
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
