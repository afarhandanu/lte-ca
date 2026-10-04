.class public final Landroid/view/ViewProtoLogGroups;
.super Ljava/lang/Object;
.source "ViewProtoLogGroups.java"


# static fields
.field static final blacklist ALL_GROUPS:[Lcom/android/internal/protolog/ProtoLogGroup;

.field static final blacklist IME_INSETS_CONTROLLER:Lcom/android/internal/protolog/ProtoLogGroup;

.field public static final blacklist IME_TRACKER:Lcom/android/internal/protolog/ProtoLogGroup;

.field public static final blacklist INPUT_METHOD_MANAGER_DEBUG:Lcom/android/internal/protolog/ProtoLogGroup;

.field public static final blacklist INPUT_METHOD_MANAGER_WITH_LOGCAT:Lcom/android/internal/protolog/ProtoLogGroup;

.field static final blacklist INSETS_ANIMATION_CONTROLLER:Lcom/android/internal/protolog/ProtoLogGroup;

.field static final blacklist INSETS_CONTROLLER_DEBUG:Lcom/android/internal/protolog/ProtoLogGroup;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 32
    new-instance v0, Lcom/android/internal/protolog/ProtoLogGroup;

    const-string v1, "IME_INSETS_CONTROLLER"

    const-string v2, "InsetsController"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/protolog/ProtoLogGroup;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Landroid/view/ViewProtoLogGroups;->IME_INSETS_CONTROLLER:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 34
    new-instance v0, Lcom/android/internal/protolog/ProtoLogGroup;

    const-string v1, "INSETS_CONTROLLER_DEBUG"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v4}, Lcom/android/internal/protolog/ProtoLogGroup;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Landroid/view/ViewProtoLogGroups;->INSETS_CONTROLLER_DEBUG:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 36
    new-instance v0, Lcom/android/internal/protolog/ProtoLogGroup;

    const-string v1, "INSETS_ANIMATION_CONTROLLER"

    const-string v2, "InsetsAnimationCtrlImpl"

    invoke-direct {v0, v1, v2, v4}, Lcom/android/internal/protolog/ProtoLogGroup;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Landroid/view/ViewProtoLogGroups;->INSETS_ANIMATION_CONTROLLER:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 38
    new-instance v0, Lcom/android/internal/protolog/ProtoLogGroup;

    const-string v1, "IME_TRACKER"

    const-string v2, "ImeTracker"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/protolog/ProtoLogGroup;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Landroid/view/ViewProtoLogGroups;->IME_TRACKER:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 40
    new-instance v0, Lcom/android/internal/protolog/ProtoLogGroup;

    const-string v1, "INPUT_METHOD_MANAGER"

    const-string v2, "InputMethodManager"

    invoke-direct {v0, v1, v2, v4}, Lcom/android/internal/protolog/ProtoLogGroup;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Landroid/view/ViewProtoLogGroups;->INPUT_METHOD_MANAGER_DEBUG:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 42
    new-instance v0, Lcom/android/internal/protolog/ProtoLogGroup;

    const-string v1, "INPUT_METHOD_MANAGER_LOGCAT"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/protolog/ProtoLogGroup;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Landroid/view/ViewProtoLogGroups;->INPUT_METHOD_MANAGER_WITH_LOGCAT:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 45
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/internal/protolog/ProtoLogGroup;

    sget-object v1, Landroid/view/ViewProtoLogGroups;->IME_INSETS_CONTROLLER:Lcom/android/internal/protolog/ProtoLogGroup;

    aput-object v1, v0, v4

    sget-object v1, Landroid/view/ViewProtoLogGroups;->INSETS_CONTROLLER_DEBUG:Lcom/android/internal/protolog/ProtoLogGroup;

    aput-object v1, v0, v3

    const/4 v1, 0x2

    sget-object v2, Landroid/view/ViewProtoLogGroups;->INSETS_ANIMATION_CONTROLLER:Lcom/android/internal/protolog/ProtoLogGroup;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Landroid/view/ViewProtoLogGroups;->IME_TRACKER:Lcom/android/internal/protolog/ProtoLogGroup;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Landroid/view/ViewProtoLogGroups;->INPUT_METHOD_MANAGER_WITH_LOGCAT:Lcom/android/internal/protolog/ProtoLogGroup;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Landroid/view/ViewProtoLogGroups;->INPUT_METHOD_MANAGER_DEBUG:Lcom/android/internal/protolog/ProtoLogGroup;

    aput-object v2, v0, v1

    sput-object v0, Landroid/view/ViewProtoLogGroups;->ALL_GROUPS:[Lcom/android/internal/protolog/ProtoLogGroup;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
