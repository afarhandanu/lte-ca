.class public final Landroid/window/WindowContainerTransaction$HierarchyOp;
.super Ljava/lang/Object;
.source "WindowContainerTransaction.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/WindowContainerTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HierarchyOp"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;,
        Landroid/window/WindowContainerTransaction$HierarchyOp$HierarchyOpType;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/WindowContainerTransaction$HierarchyOp;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist HIERARCHY_OP_TYPE_ADD_INSETS_FRAME_PROVIDER:I = 0xa

.field public static final blacklist HIERARCHY_OP_TYPE_ADD_TASK_FRAGMENT_OPERATION:I = 0x11

.field public static final blacklist HIERARCHY_OP_TYPE_APP_COMPAT_REACHABILITY:I = 0x18

.field public static final blacklist HIERARCHY_OP_TYPE_CHILDREN_TASKS_REPARENT:I = 0x2

.field public static final blacklist HIERARCHY_OP_TYPE_CLEAR_ADJACENT_ROOTS:I = 0xf

.field public static final blacklist HIERARCHY_OP_TYPE_DISALLOW_OVERRIDE_BOUNDS_FOR_CHILDREN:I = 0x1b

.field public static final blacklist HIERARCHY_OP_TYPE_FINISH_ACTIVITY:I = 0xe

.field public static final blacklist HIERARCHY_OP_TYPE_LAUNCH_TASK:I = 0x5

.field public static final blacklist HIERARCHY_OP_TYPE_MOVE_PIP_ACTIVITY_TO_PINNED_TASK:I = 0x12

.field public static final blacklist HIERARCHY_OP_TYPE_PENDING_INTENT:I = 0x7

.field public static final blacklist HIERARCHY_OP_TYPE_REMOVE_INSETS_FRAME_PROVIDER:I = 0xb

.field public static final blacklist HIERARCHY_OP_TYPE_REMOVE_ROOT_TASK:I = 0x17

.field public static final blacklist HIERARCHY_OP_TYPE_REMOVE_TASK:I = 0xd

.field public static final blacklist HIERARCHY_OP_TYPE_REORDER:I = 0x1

.field public static final blacklist HIERARCHY_OP_TYPE_REPARENT:I = 0x0

.field public static final blacklist HIERARCHY_OP_TYPE_RESTORE_BACK_NAVIGATION:I = 0x14

.field public static final blacklist HIERARCHY_OP_TYPE_RESTORE_TRANSIENT_ORDER:I = 0x9

.field public static final blacklist HIERARCHY_OP_TYPE_SET_ADJACENT_ROOTS:I = 0x4

.field public static final blacklist HIERARCHY_OP_TYPE_SET_ALWAYS_ON_TOP:I = 0xc

.field public static final blacklist HIERARCHY_OP_TYPE_SET_ANIMATION_DELEGATE:I = 0x1c

.field public static final blacklist HIERARCHY_OP_TYPE_SET_EXCLUDE_INSETS_TYPES:I = 0x15

.field public static final blacklist HIERARCHY_OP_TYPE_SET_IS_TRIMMABLE:I = 0x13

.field public static final blacklist HIERARCHY_OP_TYPE_SET_KEYGUARD_STATE:I = 0x16

.field public static final blacklist HIERARCHY_OP_TYPE_SET_LAUNCH_ADJACENT_FLAG_ROOT:I = 0x6

.field public static final blacklist HIERARCHY_OP_TYPE_SET_LAUNCH_ROOT:I = 0x3

.field public static final blacklist HIERARCHY_OP_TYPE_SET_REPARENT_LEAF_TASK_IF_RELAUNCH:I = 0x10

.field public static final blacklist HIERARCHY_OP_TYPE_SET_SAFE_REGION_BOUNDS:I = 0x19

.field public static final blacklist HIERARCHY_OP_TYPE_SET_SYSTEM_BAR_VISIBILITY_OVERRIDE:I = 0x1a

.field public static final blacklist HIERARCHY_OP_TYPE_START_SHORTCUT:I = 0x8

.field public static final blacklist LAUNCH_KEY_SHORTCUT_CALLING_PACKAGE:Ljava/lang/String; = "android:transaction.hop.shortcut_calling_package"

.field public static final blacklist LAUNCH_KEY_TASK_ID:Ljava/lang/String; = "android:transaction.hop.taskId"

.field public static final blacklist REACHABILITY_EVENT_X:Ljava/lang/String; = "android:transaction.reachability_x"

.field public static final blacklist REACHABILITY_EVENT_Y:Ljava/lang/String; = "android:transaction.reachability_y"


# instance fields
.field private blacklist mActivityIntent:Landroid/content/Intent;

.field private blacklist mActivityTypes:[I

.field private blacklist mAlwaysOnTop:Z

.field private blacklist mAppCompatOptions:Landroid/os/Bundle;

.field private blacklist mBounds:Landroid/graphics/Rect;

.field private blacklist mCaller:Landroid/os/IBinder;

.field private blacklist mContainer:Landroid/os/IBinder;

.field private blacklist mContainers:[Landroid/os/IBinder;

.field private blacklist mDisallowOverrideBoundsForChildren:Z

.field private blacklist mExcludeInsetsTypes:I

.field private blacklist mForciblyHidingInsetsTypes:I

.field private blacklist mForciblyShowingInsetsTypes:I

.field private blacklist mIncludingParents:Z

.field private blacklist mInsetsFrameProvider:Landroid/view/InsetsFrameProvider;

.field private blacklist mIsTrimmableFromRecents:Z

.field private blacklist mKeyguardState:Landroid/window/KeyguardState;

.field private blacklist mLaunchOptions:Landroid/os/Bundle;

.field private blacklist mPendingIntent:Landroid/app/PendingIntent;

.field private blacklist mReparent:Landroid/os/IBinder;

.field private blacklist mReparentLeafTaskIfRelaunch:Z

.field private blacklist mReparentTopOnly:Z

.field private blacklist mSafeRegionBounds:Landroid/graphics/Rect;

.field private blacklist mShortcutInfo:Landroid/content/pm/ShortcutInfo;

.field private blacklist mTaskFragmentOperation:Landroid/window/TaskFragmentOperation;

.field private blacklist mToTop:Z

.field private final blacklist mType:I

.field private blacklist mWindowingModes:[I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmActivityIntent(Landroid/window/WindowContainerTransaction$HierarchyOp;Landroid/content/Intent;)V
    .registers 2

    iput-object p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mActivityIntent:Landroid/content/Intent;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmActivityTypes(Landroid/window/WindowContainerTransaction$HierarchyOp;[I)V
    .registers 2

    iput-object p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mActivityTypes:[I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAlwaysOnTop(Landroid/window/WindowContainerTransaction$HierarchyOp;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mAlwaysOnTop:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAppCompatOptions(Landroid/window/WindowContainerTransaction$HierarchyOp;Landroid/os/Bundle;)V
    .registers 2

    iput-object p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mAppCompatOptions:Landroid/os/Bundle;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmBounds(Landroid/window/WindowContainerTransaction$HierarchyOp;Landroid/graphics/Rect;)V
    .registers 2

    iput-object p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mBounds:Landroid/graphics/Rect;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCaller(Landroid/window/WindowContainerTransaction$HierarchyOp;Landroid/os/IBinder;)V
    .registers 2

    iput-object p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mCaller:Landroid/os/IBinder;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmContainer(Landroid/window/WindowContainerTransaction$HierarchyOp;Landroid/os/IBinder;)V
    .registers 2

    iput-object p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mContainer:Landroid/os/IBinder;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmContainers(Landroid/window/WindowContainerTransaction$HierarchyOp;[Landroid/os/IBinder;)V
    .registers 2

    iput-object p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mContainers:[Landroid/os/IBinder;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDisallowOverrideBoundsForChildren(Landroid/window/WindowContainerTransaction$HierarchyOp;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mDisallowOverrideBoundsForChildren:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmExcludeInsetsTypes(Landroid/window/WindowContainerTransaction$HierarchyOp;I)V
    .registers 2

    iput p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mExcludeInsetsTypes:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmForciblyHidingInsetsTypes(Landroid/window/WindowContainerTransaction$HierarchyOp;I)V
    .registers 2

    iput p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mForciblyHidingInsetsTypes:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmForciblyShowingInsetsTypes(Landroid/window/WindowContainerTransaction$HierarchyOp;I)V
    .registers 2

    iput p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mForciblyShowingInsetsTypes:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIncludingParents(Landroid/window/WindowContainerTransaction$HierarchyOp;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mIncludingParents:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmInsetsFrameProvider(Landroid/window/WindowContainerTransaction$HierarchyOp;Landroid/view/InsetsFrameProvider;)V
    .registers 2

    iput-object p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mInsetsFrameProvider:Landroid/view/InsetsFrameProvider;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsTrimmableFromRecents(Landroid/window/WindowContainerTransaction$HierarchyOp;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mIsTrimmableFromRecents:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmKeyguardState(Landroid/window/WindowContainerTransaction$HierarchyOp;Landroid/window/KeyguardState;)V
    .registers 2

    iput-object p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mKeyguardState:Landroid/window/KeyguardState;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLaunchOptions(Landroid/window/WindowContainerTransaction$HierarchyOp;Landroid/os/Bundle;)V
    .registers 2

    iput-object p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mLaunchOptions:Landroid/os/Bundle;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPendingIntent(Landroid/window/WindowContainerTransaction$HierarchyOp;Landroid/app/PendingIntent;)V
    .registers 2

    iput-object p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mPendingIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmReparent(Landroid/window/WindowContainerTransaction$HierarchyOp;Landroid/os/IBinder;)V
    .registers 2

    iput-object p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mReparent:Landroid/os/IBinder;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmReparentLeafTaskIfRelaunch(Landroid/window/WindowContainerTransaction$HierarchyOp;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mReparentLeafTaskIfRelaunch:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmReparentTopOnly(Landroid/window/WindowContainerTransaction$HierarchyOp;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mReparentTopOnly:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSafeRegionBounds(Landroid/window/WindowContainerTransaction$HierarchyOp;Landroid/graphics/Rect;)V
    .registers 2

    iput-object p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mSafeRegionBounds:Landroid/graphics/Rect;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmShortcutInfo(Landroid/window/WindowContainerTransaction$HierarchyOp;Landroid/content/pm/ShortcutInfo;)V
    .registers 2

    iput-object p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTaskFragmentOperation(Landroid/window/WindowContainerTransaction$HierarchyOp;Landroid/window/TaskFragmentOperation;)V
    .registers 2

    iput-object p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mTaskFragmentOperation:Landroid/window/TaskFragmentOperation;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmToTop(Landroid/window/WindowContainerTransaction$HierarchyOp;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mToTop:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmWindowingModes(Landroid/window/WindowContainerTransaction$HierarchyOp;[I)V
    .registers 2

    iput-object p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mWindowingModes:[I

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 2655
    new-instance v0, Landroid/window/WindowContainerTransaction$HierarchyOp$1;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction$HierarchyOp$1;-><init>()V

    sput-object v0, Landroid/window/WindowContainerTransaction$HierarchyOp;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(I)V
    .registers 2

    .line 2258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2259
    iput p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mType:I

    .line 2260
    return-void
.end method

.method synthetic constructor blacklist <init>(ILandroid/window/WindowContainerTransaction-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;-><init>(I)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 2292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2293
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mType:I

    .line 2294
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mContainer:Landroid/os/IBinder;

    .line 2295
    invoke-virtual {p1}, Landroid/os/Parcel;->createBinderArray()[Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mContainers:[Landroid/os/IBinder;

    .line 2296
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mBounds:Landroid/graphics/Rect;

    .line 2297
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mIncludingParents:Z

    .line 2298
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mReparent:Landroid/os/IBinder;

    .line 2299
    sget-object v0, Landroid/view/InsetsFrameProvider;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/InsetsFrameProvider;

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mInsetsFrameProvider:Landroid/view/InsetsFrameProvider;

    .line 2300
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mCaller:Landroid/os/IBinder;

    .line 2301
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mToTop:Z

    .line 2302
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mReparentTopOnly:Z

    .line 2303
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mWindowingModes:[I

    .line 2304
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mActivityTypes:[I

    .line 2305
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mLaunchOptions:Landroid/os/Bundle;

    .line 2306
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mAppCompatOptions:Landroid/os/Bundle;

    .line 2307
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mActivityIntent:Landroid/content/Intent;

    .line 2308
    sget-object v0, Landroid/window/TaskFragmentOperation;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/TaskFragmentOperation;

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mTaskFragmentOperation:Landroid/window/TaskFragmentOperation;

    .line 2309
    sget-object v0, Landroid/window/KeyguardState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/KeyguardState;

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mKeyguardState:Landroid/window/KeyguardState;

    .line 2310
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mPendingIntent:Landroid/app/PendingIntent;

    .line 2311
    sget-object v0, Landroid/content/pm/ShortcutInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutInfo;

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    .line 2312
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mAlwaysOnTop:Z

    .line 2313
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mReparentLeafTaskIfRelaunch:Z

    .line 2314
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mIsTrimmableFromRecents:Z

    .line 2315
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mExcludeInsetsTypes:I

    .line 2316
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mForciblyShowingInsetsTypes:I

    .line 2317
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mForciblyHidingInsetsTypes:I

    .line 2318
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mSafeRegionBounds:Landroid/graphics/Rect;

    .line 2319
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mDisallowOverrideBoundsForChildren:Z

    .line 2320
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/window/WindowContainerTransaction-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/window/WindowContainerTransaction$HierarchyOp;)V
    .registers 3

    .line 2262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2263
    iget v0, p1, Landroid/window/WindowContainerTransaction$HierarchyOp;->mType:I

    iput v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mType:I

    .line 2264
    iget-object v0, p1, Landroid/window/WindowContainerTransaction$HierarchyOp;->mContainer:Landroid/os/IBinder;

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mContainer:Landroid/os/IBinder;

    .line 2265
    iget-object v0, p1, Landroid/window/WindowContainerTransaction$HierarchyOp;->mContainers:[Landroid/os/IBinder;

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mContainers:[Landroid/os/IBinder;

    .line 2266
    iget-object v0, p1, Landroid/window/WindowContainerTransaction$HierarchyOp;->mBounds:Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mBounds:Landroid/graphics/Rect;

    .line 2267
    iget-boolean v0, p1, Landroid/window/WindowContainerTransaction$HierarchyOp;->mIncludingParents:Z

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mIncludingParents:Z

    .line 2268
    iget-object v0, p1, Landroid/window/WindowContainerTransaction$HierarchyOp;->mReparent:Landroid/os/IBinder;

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mReparent:Landroid/os/IBinder;

    .line 2269
    iget-object v0, p1, Landroid/window/WindowContainerTransaction$HierarchyOp;->mInsetsFrameProvider:Landroid/view/InsetsFrameProvider;

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mInsetsFrameProvider:Landroid/view/InsetsFrameProvider;

    .line 2270
    iget-object v0, p1, Landroid/window/WindowContainerTransaction$HierarchyOp;->mCaller:Landroid/os/IBinder;

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mCaller:Landroid/os/IBinder;

    .line 2271
    iget-boolean v0, p1, Landroid/window/WindowContainerTransaction$HierarchyOp;->mToTop:Z

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mToTop:Z

    .line 2272
    iget-boolean v0, p1, Landroid/window/WindowContainerTransaction$HierarchyOp;->mReparentTopOnly:Z

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mReparentTopOnly:Z

    .line 2273
    iget-object v0, p1, Landroid/window/WindowContainerTransaction$HierarchyOp;->mWindowingModes:[I

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mWindowingModes:[I

    .line 2274
    iget-object v0, p1, Landroid/window/WindowContainerTransaction$HierarchyOp;->mActivityTypes:[I

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mActivityTypes:[I

    .line 2275
    iget-object v0, p1, Landroid/window/WindowContainerTransaction$HierarchyOp;->mLaunchOptions:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mLaunchOptions:Landroid/os/Bundle;

    .line 2276
    iget-object v0, p1, Landroid/window/WindowContainerTransaction$HierarchyOp;->mAppCompatOptions:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mAppCompatOptions:Landroid/os/Bundle;

    .line 2277
    iget-object v0, p1, Landroid/window/WindowContainerTransaction$HierarchyOp;->mActivityIntent:Landroid/content/Intent;

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mActivityIntent:Landroid/content/Intent;

    .line 2278
    iget-object v0, p1, Landroid/window/WindowContainerTransaction$HierarchyOp;->mTaskFragmentOperation:Landroid/window/TaskFragmentOperation;

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mTaskFragmentOperation:Landroid/window/TaskFragmentOperation;

    .line 2279
    iget-object v0, p1, Landroid/window/WindowContainerTransaction$HierarchyOp;->mKeyguardState:Landroid/window/KeyguardState;

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mKeyguardState:Landroid/window/KeyguardState;

    .line 2280
    iget-object v0, p1, Landroid/window/WindowContainerTransaction$HierarchyOp;->mPendingIntent:Landroid/app/PendingIntent;

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mPendingIntent:Landroid/app/PendingIntent;

    .line 2281
    iget-object v0, p1, Landroid/window/WindowContainerTransaction$HierarchyOp;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    .line 2282
    iget-boolean v0, p1, Landroid/window/WindowContainerTransaction$HierarchyOp;->mAlwaysOnTop:Z

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mAlwaysOnTop:Z

    .line 2283
    iget-boolean v0, p1, Landroid/window/WindowContainerTransaction$HierarchyOp;->mReparentLeafTaskIfRelaunch:Z

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mReparentLeafTaskIfRelaunch:Z

    .line 2284
    iget-boolean v0, p1, Landroid/window/WindowContainerTransaction$HierarchyOp;->mIsTrimmableFromRecents:Z

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mIsTrimmableFromRecents:Z

    .line 2285
    iget v0, p1, Landroid/window/WindowContainerTransaction$HierarchyOp;->mExcludeInsetsTypes:I

    iput v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mExcludeInsetsTypes:I

    .line 2286
    iget v0, p1, Landroid/window/WindowContainerTransaction$HierarchyOp;->mForciblyShowingInsetsTypes:I

    iput v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mForciblyShowingInsetsTypes:I

    .line 2287
    iget v0, p1, Landroid/window/WindowContainerTransaction$HierarchyOp;->mForciblyHidingInsetsTypes:I

    iput v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mForciblyHidingInsetsTypes:I

    .line 2288
    iget-object v0, p1, Landroid/window/WindowContainerTransaction$HierarchyOp;->mSafeRegionBounds:Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mSafeRegionBounds:Landroid/graphics/Rect;

    .line 2289
    iget-boolean p1, p1, Landroid/window/WindowContainerTransaction$HierarchyOp;->mDisallowOverrideBoundsForChildren:Z

    iput-boolean p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mDisallowOverrideBoundsForChildren:Z

    .line 2290
    return-void
.end method

.method public static blacklist createForAdjacentRoots(Landroid/os/IBinder;Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp;
    .registers 4

    .line 2154
    new-instance v0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;-><init>(I)V

    .line 2155
    invoke-virtual {v0, p0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setContainer(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object p0

    .line 2156
    invoke-virtual {p0, p1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setReparentContainer(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object p0

    .line 2157
    invoke-virtual {p0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->build()Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object p0

    .line 2154
    return-object p0
.end method

.method public static blacklist createForChildrenTasksReparent(Landroid/os/IBinder;Landroid/os/IBinder;[I[IZZ)Landroid/window/WindowContainerTransaction$HierarchyOp;
    .registers 8

    .line 2129
    new-instance v0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;-><init>(I)V

    .line 2130
    invoke-virtual {v0, p0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setContainer(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object p0

    .line 2131
    invoke-virtual {p0, p1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setReparentContainer(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object p0

    .line 2132
    invoke-virtual {p0, p2}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setWindowingModes([I)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object p0

    .line 2133
    invoke-virtual {p0, p3}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setActivityTypes([I)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object p0

    .line 2134
    invoke-virtual {p0, p4}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setToTop(Z)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object p0

    .line 2135
    invoke-virtual {p0, p5}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setReparentTopOnly(Z)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object p0

    .line 2136
    invoke-virtual {p0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->build()Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object p0

    .line 2129
    return-object p0
.end method

.method public static blacklist createForClearAdjacentRoots(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp;
    .registers 3

    .line 2216
    new-instance v0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;-><init>(I)V

    .line 2217
    invoke-virtual {v0, p0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setContainer(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object p0

    .line 2218
    invoke-virtual {p0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->build()Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object p0

    .line 2216
    return-object p0
.end method

.method public static blacklist createForReachability(Landroid/os/IBinder;III)Landroid/window/WindowContainerTransaction$HierarchyOp;
    .registers 6

    .line 2225
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2226
    const-string v1, "android:transaction.hop.taskId"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2227
    const-string p1, "android:transaction.reachability_x"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2228
    const-string p1, "android:transaction.reachability_y"

    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2229
    new-instance p1, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    const/16 p2, 0x18

    invoke-direct {p1, p2}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;-><init>(I)V

    .line 2230
    invoke-virtual {p1, v0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setAppCompatOptions(Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object p1

    .line 2231
    invoke-virtual {p1, p0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setContainer(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object p0

    .line 2232
    invoke-virtual {p0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->build()Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object p0

    .line 2229
    return-object p0
.end method

.method public static blacklist createForRemoveRootTask(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp;
    .registers 3

    .line 2208
    new-instance v0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;-><init>(I)V

    .line 2209
    invoke-virtual {v0, p0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setContainer(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object p0

    .line 2210
    invoke-virtual {p0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->build()Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object p0

    .line 2208
    return-object p0
.end method

.method public static blacklist createForRemoveTask(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp;
    .registers 3

    .line 2196
    new-instance v0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;-><init>(I)V

    .line 2197
    invoke-virtual {v0, p0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setContainer(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object p0

    .line 2198
    invoke-virtual {p0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->build()Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object p0

    .line 2196
    return-object p0
.end method

.method public static blacklist createForReorder(Landroid/os/IBinder;ZZ)Landroid/window/WindowContainerTransaction$HierarchyOp;
    .registers 5

    .line 2116
    new-instance v0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;-><init>(I)V

    .line 2117
    invoke-virtual {v0, p0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setContainer(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    .line 2118
    invoke-virtual {v0, p0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setReparentContainer(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object p0

    .line 2119
    invoke-virtual {p0, p1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setToTop(Z)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object p0

    .line 2120
    invoke-virtual {p0, p2}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setIncludingParents(Z)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object p0

    .line 2121
    invoke-virtual {p0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->build()Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object p0

    .line 2116
    return-object p0
.end method

.method public static blacklist createForReparent(Landroid/os/IBinder;Landroid/os/IBinder;Z)Landroid/window/WindowContainerTransaction$HierarchyOp;
    .registers 5

    .line 2097
    new-instance v0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;-><init>(I)V

    .line 2098
    invoke-virtual {v0, p0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setContainer(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object p0

    .line 2099
    invoke-virtual {p0, p1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setReparentContainer(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object p0

    .line 2100
    invoke-virtual {p0, p2}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setToTop(Z)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object p0

    .line 2101
    invoke-virtual {p0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->build()Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object p0

    .line 2097
    return-object p0
.end method

.method public static blacklist createForSetLaunchAdjacentFlagRoot(Landroid/os/IBinder;Z)Landroid/window/WindowContainerTransaction$HierarchyOp;
    .registers 4

    .line 2187
    new-instance v0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;-><init>(I)V

    .line 2188
    invoke-virtual {v0, p0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setContainer(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object p0

    .line 2189
    invoke-virtual {p0, p1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setToTop(Z)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object p0

    .line 2190
    invoke-virtual {p0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->build()Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object p0

    .line 2187
    return-object p0
.end method

.method public static blacklist createForSetLaunchRoot(Landroid/os/IBinder;[I[I)Landroid/window/WindowContainerTransaction$HierarchyOp;
    .registers 5

    .line 2143
    new-instance v0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;-><init>(I)V

    .line 2144
    invoke-virtual {v0, p0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setContainer(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object p0

    .line 2145
    invoke-virtual {p0, p1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setWindowingModes([I)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object p0

    .line 2146
    invoke-virtual {p0, p2}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setActivityTypes([I)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object p0

    .line 2147
    invoke-virtual {p0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->build()Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object p0

    .line 2143
    return-object p0
.end method

.method public static blacklist createForSetSafeRegionBounds(Landroid/os/IBinder;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction$HierarchyOp;
    .registers 4

    .line 2251
    new-instance v0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;-><init>(I)V

    .line 2252
    invoke-virtual {v0, p0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setContainer(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object p0

    .line 2253
    invoke-virtual {p0, p1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setSafeRegionBounds(Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object p0

    .line 2254
    invoke-virtual {p0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->build()Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object p0

    .line 2251
    return-object p0
.end method

.method public static blacklist createForSetTaskTrimmableFromRecents(Landroid/os/IBinder;Z)Landroid/window/WindowContainerTransaction$HierarchyOp;
    .registers 4

    .line 2240
    new-instance v0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    const/16 v1, 0x13

    invoke-direct {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;-><init>(I)V

    .line 2241
    invoke-virtual {v0, p0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setContainer(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object p0

    .line 2242
    invoke-virtual {p0, p1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setIsTrimmableFromRecents(Z)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object p0

    .line 2243
    invoke-virtual {p0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->build()Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object p0

    .line 2240
    return-object p0
.end method

.method public static blacklist createForStartShortcut(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction$HierarchyOp;
    .registers 4

    .line 2175
    if-nez p2, :cond_7

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 2176
    :cond_7
    const-string v0, "android:transaction.hop.shortcut_calling_package"

    invoke-virtual {p2, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2177
    new-instance p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;-><init>(I)V

    .line 2178
    invoke-virtual {p0, p1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setShortcutInfo(Landroid/content/pm/ShortcutInfo;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object p0

    .line 2179
    invoke-virtual {p0, p2}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setLaunchOptions(Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object p0

    .line 2180
    invoke-virtual {p0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->build()Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object p0

    .line 2177
    return-object p0
.end method

.method public static blacklist createForTaskLaunch(ILandroid/os/Bundle;)Landroid/window/WindowContainerTransaction$HierarchyOp;
    .registers 3

    .line 2163
    if-nez p1, :cond_7

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 2164
    :cond_7
    const-string v0, "android:transaction.hop.taskId"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2165
    new-instance p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;-><init>(I)V

    .line 2166
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setToTop(Z)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object p0

    .line 2167
    invoke-virtual {p0, p1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setLaunchOptions(Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object p0

    .line 2168
    invoke-virtual {p0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->build()Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object p0

    .line 2165
    return-object p0
.end method

.method public static blacklist hopToString(I)Ljava/lang/String;
    .registers 3

    .line 2456
    packed-switch p0, :pswitch_data_86

    .line 2491
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HOP("

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

    .line 2490
    :pswitch_1d
    const-string/jumbo p0, "setAnimationDelegate"

    return-object p0

    .line 2489
    :pswitch_21
    const-string p0, "disallowOverrideBoundsForChildren"

    return-object p0

    .line 2487
    :pswitch_24
    const-string/jumbo p0, "setSystemBarVisibilityOverride"

    return-object p0

    .line 2485
    :pswitch_28
    const-string/jumbo p0, "setSafeRegionBounds"

    return-object p0

    .line 2472
    :pswitch_2c
    const-string/jumbo p0, "removeRootTask"

    return-object p0

    .line 2484
    :pswitch_30
    const-string/jumbo p0, "setKeyguardState"

    return-object p0

    .line 2483
    :pswitch_34
    const-string/jumbo p0, "setExcludeInsetsTypes"

    return-object p0

    .line 2482
    :pswitch_38
    const-string/jumbo p0, "restoreBackNav"

    return-object p0

    .line 2481
    :pswitch_3c
    const-string/jumbo p0, "setIsTrimmable"

    return-object p0

    .line 2480
    :pswitch_40
    const-string/jumbo p0, "movePipActivityToPinnedTask"

    return-object p0

    .line 2478
    :pswitch_44
    const-string p0, "addTaskFragmentOperation"

    return-object p0

    .line 2476
    :pswitch_47
    const-string/jumbo p0, "setReparentLeafTaskIfRelaunch"

    return-object p0

    .line 2474
    :pswitch_4b
    const-string p0, "clearAdjacentRoots"

    return-object p0

    .line 2473
    :pswitch_4e
    const-string p0, "finishActivity"

    return-object p0

    .line 2471
    :pswitch_51
    const-string/jumbo p0, "removeTask"

    return-object p0

    .line 2470
    :pswitch_55
    const-string/jumbo p0, "setAlwaysOnTop"

    return-object p0

    .line 2469
    :pswitch_59
    const-string/jumbo p0, "removeInsetsFrameProvider"

    return-object p0

    .line 2467
    :pswitch_5d
    const-string p0, "addInsetsFrameProvider"

    return-object p0

    .line 2466
    :pswitch_60
    const-string/jumbo p0, "restoreTransientOrder"

    return-object p0

    .line 2465
    :pswitch_64
    const-string/jumbo p0, "startShortcut"

    return-object p0

    .line 2464
    :pswitch_68
    const-string/jumbo p0, "pendingIntent"

    return-object p0

    .line 2463
    :pswitch_6c
    const-string/jumbo p0, "setAdjacentFlagRoot"

    return-object p0

    .line 2462
    :pswitch_70
    const-string p0, "launchTask"

    return-object p0

    .line 2461
    :pswitch_73
    const-string/jumbo p0, "setAdjacentRoots"

    return-object p0

    .line 2460
    :pswitch_77
    const-string/jumbo p0, "setLaunchRoot"

    return-object p0

    .line 2459
    :pswitch_7b
    const-string p0, "childrenTasksReparent"

    return-object p0

    .line 2458
    :pswitch_7e
    const-string/jumbo p0, "reorder"

    return-object p0

    .line 2457
    :pswitch_82
    const-string/jumbo p0, "reparent"

    return-object p0

    :pswitch_data_86
    .packed-switch 0x0
        :pswitch_82
        :pswitch_7e
        :pswitch_7b
        :pswitch_77
        :pswitch_73
        :pswitch_70
        :pswitch_6c
        :pswitch_68
        :pswitch_64
        :pswitch_60
        :pswitch_5d
        :pswitch_59
        :pswitch_55
        :pswitch_51
        :pswitch_4e
        :pswitch_4b
        :pswitch_47
        :pswitch_44
        :pswitch_40
        :pswitch_3c
        :pswitch_38
        :pswitch_34
        :pswitch_30
        :pswitch_2c
        :pswitch_3
        :pswitch_28
        :pswitch_24
        :pswitch_21
        :pswitch_1d
    .end packed-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 2652
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getActivityIntent()Landroid/content/Intent;
    .registers 2

    .line 2386
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mActivityIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public blacklist getActivityTypes()[I
    .registers 2

    .line 2371
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mActivityTypes:[I

    return-object v0
.end method

.method public blacklist getAppCompatOptions()Landroid/os/Bundle;
    .registers 2

    .line 2381
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mAppCompatOptions:Landroid/os/Bundle;

    return-object v0
.end method

.method public blacklist getBounds()Landroid/graphics/Rect;
    .registers 2

    .line 2419
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public blacklist getCaller()Landroid/os/IBinder;
    .registers 2

    .line 2343
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mCaller:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getContainer()Landroid/os/IBinder;
    .registers 2

    .line 2348
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mContainer:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getContainers()[Landroid/os/IBinder;
    .registers 2

    .line 2353
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mContainers:[Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getDisallowOverrideBoundsForChildren()Z
    .registers 2

    .line 2451
    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mDisallowOverrideBoundsForChildren:Z

    return v0
.end method

.method public blacklist getExcludeInsetsTypes()I
    .registers 2

    .line 2433
    iget v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mExcludeInsetsTypes:I

    return v0
.end method

.method public blacklist getForciblyHidingInsetsTypes()I
    .registers 2

    .line 2441
    iget v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mForciblyHidingInsetsTypes:I

    return v0
.end method

.method public blacklist getForciblyShowingInsetsTypes()I
    .registers 2

    .line 2437
    iget v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mForciblyShowingInsetsTypes:I

    return v0
.end method

.method public blacklist getInsetsFrameProvider()Landroid/view/InsetsFrameProvider;
    .registers 2

    .line 2338
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mInsetsFrameProvider:Landroid/view/InsetsFrameProvider;

    return-object v0
.end method

.method public blacklist getKeyguardState()Landroid/window/KeyguardState;
    .registers 2

    .line 2404
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mKeyguardState:Landroid/window/KeyguardState;

    return-object v0
.end method

.method public blacklist getLaunchOptions()Landroid/os/Bundle;
    .registers 2

    .line 2376
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mLaunchOptions:Landroid/os/Bundle;

    return-object v0
.end method

.method public blacklist getNewParent()Landroid/os/IBinder;
    .registers 2

    .line 2333
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mReparent:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getPendingIntent()Landroid/app/PendingIntent;
    .registers 2

    .line 2409
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public blacklist getReparentTopOnly()Z
    .registers 2

    .line 2361
    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mReparentTopOnly:Z

    return v0
.end method

.method public blacklist getSafeRegionBounds()Landroid/graphics/Rect;
    .registers 2

    .line 2447
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mSafeRegionBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public blacklist getShortcutInfo()Landroid/content/pm/ShortcutInfo;
    .registers 2

    .line 2414
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    return-object v0
.end method

.method public blacklist getTaskFragmentOperation()Landroid/window/TaskFragmentOperation;
    .registers 2

    .line 2399
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mTaskFragmentOperation:Landroid/window/TaskFragmentOperation;

    return-object v0
.end method

.method public blacklist getToTop()Z
    .registers 2

    .line 2357
    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mToTop:Z

    return v0
.end method

.method public blacklist getType()I
    .registers 2

    .line 2324
    iget v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mType:I

    return v0
.end method

.method public blacklist getWindowingModes()[I
    .registers 2

    .line 2366
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mWindowingModes:[I

    return-object v0
.end method

.method public blacklist includingParents()Z
    .registers 2

    .line 2424
    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mIncludingParents:Z

    return v0
.end method

.method public blacklist isAlwaysOnTop()Z
    .registers 2

    .line 2390
    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mAlwaysOnTop:Z

    return v0
.end method

.method public blacklist isReparent()Z
    .registers 2

    .line 2328
    iget v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mType:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public blacklist isReparentLeafTaskIfRelaunch()Z
    .registers 2

    .line 2394
    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mReparentLeafTaskIfRelaunch:Z

    return v0
.end method

.method public blacklist isTrimmableFromRecents()Z
    .registers 2

    .line 2429
    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mIsTrimmableFromRecents:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 12

    .line 2497
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2498
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mType:I

    invoke-static {v2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->hopToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2499
    iget v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mType:I

    const-string v2, " container="

    const-string/jumbo v3, "options="

    const-string v4, " mToTop="

    const-string v5, " to "

    const-string v6, " caller="

    const-string v7, " mActivityType="

    const-string v8, " mWindowingMode="

    const-string v9, "container= "

    const-string v10, "container="

    packed-switch v1, :pswitch_data_2da

    .line 2610
    :pswitch_33
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mContainer:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2611
    const-string v2, " reparent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mReparent:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2612
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mToTop:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2613
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mWindowingModes:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2614
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mActivityTypes:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2ce

    .line 2607
    :pswitch_70
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mCaller:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2608
    goto/16 :goto_2ce

    .line 2602
    :pswitch_7b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mContainer:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2603
    const-string v2, " mDisallowOverrideBoundsForChildren="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mDisallowOverrideBoundsForChildren:Z

    .line 2604
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2605
    goto/16 :goto_2ce

    .line 2594
    :pswitch_92
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mContainer:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2595
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mCaller:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2596
    const-string v2, " mForciblyShowingInsetsTypes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mForciblyShowingInsetsTypes:I

    .line 2597
    invoke-static {v2}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2598
    const-string v2, " mForciblyHidingInsetsTypes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mForciblyHidingInsetsTypes:I

    .line 2599
    invoke-static {v2}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2600
    goto/16 :goto_2ce

    .line 2589
    :pswitch_c7
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mContainer:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2590
    const-string v2, " safeRegionBounds= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mSafeRegionBounds:Landroid/graphics/Rect;

    .line 2591
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2592
    goto/16 :goto_2ce

    .line 2532
    :pswitch_de
    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mAppCompatOptions:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2533
    goto/16 :goto_2ce

    .line 2558
    :pswitch_e5
    const-string/jumbo v1, "rootTask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mContainer:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2559
    goto/16 :goto_2ce

    .line 2581
    :pswitch_f3
    const-string v1, "KeyguardState= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mKeyguardState:Landroid/window/KeyguardState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2582
    goto/16 :goto_2ce

    .line 2576
    :pswitch_100
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mContainer:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2577
    const-string v2, " mExcludeInsetsTypes= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mExcludeInsetsTypes:I

    .line 2578
    invoke-static {v2}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2579
    goto/16 :goto_2ce

    .line 2584
    :pswitch_11b
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mContainer:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2585
    const-string v2, " isTrimmable= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mIsTrimmableFromRecents:Z

    .line 2586
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2587
    goto/16 :goto_2ce

    .line 2572
    :pswitch_132
    const-string v1, "fragmentToken= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mContainer:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2573
    const-string v2, " operation= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mTaskFragmentOperation:Landroid/window/TaskFragmentOperation;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2574
    goto/16 :goto_2ce

    .line 2567
    :pswitch_14b
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mContainer:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2568
    const-string v2, " reparentLeafTaskIfRelaunch= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mReparentLeafTaskIfRelaunch:Z

    .line 2569
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2570
    goto/16 :goto_2ce

    .line 2564
    :pswitch_162
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mContainer:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2565
    goto/16 :goto_2ce

    .line 2561
    :pswitch_16d
    const-string v1, "activity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mContainer:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2562
    goto/16 :goto_2ce

    .line 2555
    :pswitch_17a
    const-string/jumbo v1, "task="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mContainer:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2556
    goto/16 :goto_2ce

    .line 2551
    :pswitch_188
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mContainer:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2552
    const-string v2, " alwaysOnTop="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mAlwaysOnTop:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2553
    goto/16 :goto_2ce

    .line 2546
    :pswitch_19f
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mContainer:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2547
    const-string v2, " provider="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mInsetsFrameProvider:Landroid/view/InsetsFrameProvider;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2548
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mCaller:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2549
    goto/16 :goto_2ce

    .line 2538
    :pswitch_1c0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mLaunchOptions:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2539
    const-string v2, " info="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2540
    goto/16 :goto_2ce

    .line 2542
    :pswitch_1d7
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mLaunchOptions:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2543
    goto/16 :goto_2ce

    .line 2535
    :pswitch_1e2
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mContainer:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " clearRoot="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mToTop:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2536
    goto/16 :goto_2ce

    .line 2529
    :pswitch_1f9
    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mLaunchOptions:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2530
    goto/16 :goto_2ce

    .line 2520
    :pswitch_200
    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mContainers:[Landroid/os/IBinder;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_205
    if-ge v4, v2, :cond_225

    aget-object v5, v1, v4

    .line 2521
    iget-object v6, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mContainers:[Landroid/os/IBinder;

    aget-object v6, v6, v3

    if-ne v5, v6, :cond_219

    .line 2522
    const-string v6, "adjacentRoots="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_222

    .line 2524
    :cond_219
    const-string v6, ", "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2520
    :goto_222
    add-int/lit8 v4, v4, 0x1

    goto :goto_205

    .line 2527
    :cond_225
    goto/16 :goto_2ce

    .line 2508
    :pswitch_227
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mContainer:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2509
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mWindowingModes:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2510
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mActivityTypes:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2511
    goto/16 :goto_2ce

    .line 2501
    :pswitch_24e
    const-string v1, "from="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mContainer:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mReparent:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2502
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mToTop:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2503
    const-string v2, " mReparentTopOnly="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mReparentTopOnly:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2504
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mWindowingModes:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2505
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mActivityTypes:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2506
    goto :goto_2ce

    .line 2517
    :pswitch_298
    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mContainer:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mToTop:Z

    if-eqz v2, :cond_2aa

    const-string/jumbo v2, "top"

    goto :goto_2ac

    :cond_2aa
    const-string v2, "bottom"

    :goto_2ac
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2518
    goto :goto_2ce

    .line 2513
    :pswitch_2b0
    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mContainer:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mToTop:Z

    if-eqz v2, :cond_2c2

    const-string/jumbo v2, "top of "

    goto :goto_2c4

    :cond_2c2
    const-string v2, "bottom of "

    :goto_2c4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mReparent:Landroid/os/IBinder;

    .line 2514
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2515
    nop

    .line 2616
    :goto_2ce
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_2da
    .packed-switch 0x0
        :pswitch_2b0
        :pswitch_298
        :pswitch_24e
        :pswitch_227
        :pswitch_200
        :pswitch_1f9
        :pswitch_1e2
        :pswitch_1d7
        :pswitch_1c0
        :pswitch_33
        :pswitch_19f
        :pswitch_19f
        :pswitch_188
        :pswitch_17a
        :pswitch_16d
        :pswitch_162
        :pswitch_14b
        :pswitch_132
        :pswitch_33
        :pswitch_11b
        :pswitch_33
        :pswitch_100
        :pswitch_f3
        :pswitch_e5
        :pswitch_de
        :pswitch_c7
        :pswitch_92
        :pswitch_7b
        :pswitch_70
    .end packed-switch
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 2621
    iget v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2622
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mContainer:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2623
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mContainers:[Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBinderArray([Landroid/os/IBinder;)V

    .line 2624
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2625
    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mIncludingParents:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2626
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mReparent:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2627
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mInsetsFrameProvider:Landroid/view/InsetsFrameProvider;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2628
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mCaller:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2629
    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mToTop:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2630
    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mReparentTopOnly:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2631
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mWindowingModes:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 2632
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mActivityTypes:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 2633
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mLaunchOptions:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 2634
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mAppCompatOptions:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 2635
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mActivityIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2636
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mTaskFragmentOperation:Landroid/window/TaskFragmentOperation;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2637
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mKeyguardState:Landroid/window/KeyguardState;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2638
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2639
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2640
    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mAlwaysOnTop:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2641
    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mReparentLeafTaskIfRelaunch:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2642
    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mIsTrimmableFromRecents:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2643
    iget v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mExcludeInsetsTypes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2644
    iget v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mForciblyShowingInsetsTypes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2645
    iget v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mForciblyHidingInsetsTypes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2646
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mSafeRegionBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2647
    iget-boolean p2, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mDisallowOverrideBoundsForChildren:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2648
    return-void
.end method
