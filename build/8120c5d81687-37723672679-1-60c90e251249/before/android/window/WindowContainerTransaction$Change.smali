.class public Landroid/window/WindowContainerTransaction$Change;
.super Ljava/lang/Object;
.source "WindowContainerTransaction.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/WindowContainerTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Change"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/WindowContainerTransaction$Change$ChangeMask;
    }
.end annotation


# static fields
.field public static final blacklist CHANGE_BOUNDS_TRANSACTION:I = 0x2

.field public static final blacklist CHANGE_DISABLE_LAUNCH_ADJACENT:I = 0x1000

.field public static final blacklist CHANGE_DISABLE_PIP:I = 0x800

.field public static final blacklist CHANGE_DRAG_RESIZING:I = 0x80

.field public static final blacklist CHANGE_FOCUSABLE:I = 0x1

.field public static final blacklist CHANGE_FORCE_EXCLUDED_FROM_RECENTS:I = 0x200

.field public static final blacklist CHANGE_FORCE_NO_PIP:I = 0x20

.field public static final blacklist CHANGE_FORCE_TRANSLUCENT:I = 0x40

.field public static final blacklist CHANGE_HIDDEN:I = 0x8

.field public static final blacklist CHANGE_IGNORE_ORIENTATION_REQUEST:I = 0x10

.field public static final blacklist CHANGE_INTERCEPT_BACK_PRESSED:I = 0x4000

.field public static final blacklist CHANGE_IS_TASK_MOVE_ALLOWED:I = 0x2000

.field public static final blacklist CHANGE_LAUNCH_NEXT_TO_BUBBLE:I = 0x400

.field public static final blacklist CHANGE_PIP_CALLBACK:I = 0x4

.field public static final blacklist CHANGE_RELATIVE_BOUNDS:I = 0x100

.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/WindowContainerTransaction$Change;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mActivityWindowingMode:I

.field private blacklist mBoundsChangeTransaction:Landroid/view/SurfaceControl$Transaction;

.field private blacklist mChangeMask:I

.field private blacklist mConfigAtTransitionEnd:Z

.field private blacklist mConfigSetMask:I

.field private final blacklist mConfiguration:Landroid/content/res/Configuration;

.field private blacklist mDisableLaunchAdjacent:Z

.field private blacklist mDisablePip:Z

.field private blacklist mDragResizing:Z

.field private blacklist mFocusable:Z

.field private blacklist mForceExcludedFromRecents:Z

.field private blacklist mForceTranslucent:Z

.field private blacklist mHidden:Z

.field private blacklist mIgnoreOrientationRequest:Z

.field private blacklist mInterceptBackPressed:Z

.field private blacklist mIsTaskMoveAllowed:Z

.field private blacklist mLaunchNextToBubble:Z

.field private blacklist mRelativeBounds:Landroid/graphics/Rect;

.field private blacklist mSelfMovable:I

.field private blacklist mWindowSetMask:I

.field private blacklist mWindowingMode:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmChangeMask(Landroid/window/WindowContainerTransaction$Change;)I
    .registers 1

    iget p0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmConfigSetMask(Landroid/window/WindowContainerTransaction$Change;)I
    .registers 1

    iget p0, p0, Landroid/window/WindowContainerTransaction$Change;->mConfigSetMask:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmConfiguration(Landroid/window/WindowContainerTransaction$Change;)Landroid/content/res/Configuration;
    .registers 1

    iget-object p0, p0, Landroid/window/WindowContainerTransaction$Change;->mConfiguration:Landroid/content/res/Configuration;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRelativeBounds(Landroid/window/WindowContainerTransaction$Change;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Landroid/window/WindowContainerTransaction$Change;->mRelativeBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWindowSetMask(Landroid/window/WindowContainerTransaction$Change;)I
    .registers 1

    iget p0, p0, Landroid/window/WindowContainerTransaction$Change;->mWindowSetMask:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmActivityWindowingMode(Landroid/window/WindowContainerTransaction$Change;I)V
    .registers 2

    iput p1, p0, Landroid/window/WindowContainerTransaction$Change;->mActivityWindowingMode:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmBoundsChangeTransaction(Landroid/window/WindowContainerTransaction$Change;Landroid/view/SurfaceControl$Transaction;)V
    .registers 2

    iput-object p1, p0, Landroid/window/WindowContainerTransaction$Change;->mBoundsChangeTransaction:Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmChangeMask(Landroid/window/WindowContainerTransaction$Change;I)V
    .registers 2

    iput p1, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmConfigAtTransitionEnd(Landroid/window/WindowContainerTransaction$Change;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/window/WindowContainerTransaction$Change;->mConfigAtTransitionEnd:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmConfigSetMask(Landroid/window/WindowContainerTransaction$Change;I)V
    .registers 2

    iput p1, p0, Landroid/window/WindowContainerTransaction$Change;->mConfigSetMask:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDisableLaunchAdjacent(Landroid/window/WindowContainerTransaction$Change;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/window/WindowContainerTransaction$Change;->mDisableLaunchAdjacent:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDisablePip(Landroid/window/WindowContainerTransaction$Change;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/window/WindowContainerTransaction$Change;->mDisablePip:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDragResizing(Landroid/window/WindowContainerTransaction$Change;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/window/WindowContainerTransaction$Change;->mDragResizing:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFocusable(Landroid/window/WindowContainerTransaction$Change;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/window/WindowContainerTransaction$Change;->mFocusable:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmForceExcludedFromRecents(Landroid/window/WindowContainerTransaction$Change;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/window/WindowContainerTransaction$Change;->mForceExcludedFromRecents:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmForceTranslucent(Landroid/window/WindowContainerTransaction$Change;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/window/WindowContainerTransaction$Change;->mForceTranslucent:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmHidden(Landroid/window/WindowContainerTransaction$Change;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/window/WindowContainerTransaction$Change;->mHidden:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIgnoreOrientationRequest(Landroid/window/WindowContainerTransaction$Change;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/window/WindowContainerTransaction$Change;->mIgnoreOrientationRequest:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmInterceptBackPressed(Landroid/window/WindowContainerTransaction$Change;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/window/WindowContainerTransaction$Change;->mInterceptBackPressed:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsTaskMoveAllowed(Landroid/window/WindowContainerTransaction$Change;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/window/WindowContainerTransaction$Change;->mIsTaskMoveAllowed:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLaunchNextToBubble(Landroid/window/WindowContainerTransaction$Change;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/window/WindowContainerTransaction$Change;->mLaunchNextToBubble:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRelativeBounds(Landroid/window/WindowContainerTransaction$Change;Landroid/graphics/Rect;)V
    .registers 2

    iput-object p1, p0, Landroid/window/WindowContainerTransaction$Change;->mRelativeBounds:Landroid/graphics/Rect;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSelfMovable(Landroid/window/WindowContainerTransaction$Change;I)V
    .registers 2

    iput p1, p0, Landroid/window/WindowContainerTransaction$Change;->mSelfMovable:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmWindowSetMask(Landroid/window/WindowContainerTransaction$Change;I)V
    .registers 2

    iput p1, p0, Landroid/window/WindowContainerTransaction$Change;->mWindowSetMask:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmWindowingMode(Landroid/window/WindowContainerTransaction$Change;I)V
    .registers 2

    iput p1, p0, Landroid/window/WindowContainerTransaction$Change;->mWindowingMode:I

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1922
    new-instance v0, Landroid/window/WindowContainerTransaction$Change$1;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction$Change$1;-><init>()V

    sput-object v0, Landroid/window/WindowContainerTransaction$Change;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 3

    .line 1567
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1540
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$Change;->mConfiguration:Landroid/content/res/Configuration;

    .line 1541
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mFocusable:Z

    .line 1542
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mHidden:Z

    .line 1543
    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mIgnoreOrientationRequest:Z

    .line 1544
    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mForceTranslucent:Z

    .line 1545
    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mDragResizing:Z

    .line 1546
    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mForceExcludedFromRecents:Z

    .line 1547
    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mDisablePip:Z

    .line 1548
    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mDisableLaunchAdjacent:Z

    .line 1549
    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mIsTaskMoveAllowed:Z

    .line 1550
    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mInterceptBackPressed:Z

    .line 1552
    iput v0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    .line 1553
    iput v0, p0, Landroid/window/WindowContainerTransaction$Change;->mConfigSetMask:I

    .line 1554
    iput v0, p0, Landroid/window/WindowContainerTransaction$Change;->mWindowSetMask:I

    .line 1556
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/window/WindowContainerTransaction$Change;->mBoundsChangeTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 1557
    iput-object v1, p0, Landroid/window/WindowContainerTransaction$Change;->mRelativeBounds:Landroid/graphics/Rect;

    .line 1559
    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mConfigAtTransitionEnd:Z

    .line 1561
    const/4 v1, -0x1

    iput v1, p0, Landroid/window/WindowContainerTransaction$Change;->mActivityWindowingMode:I

    .line 1562
    iput v1, p0, Landroid/window/WindowContainerTransaction$Change;->mWindowingMode:I

    .line 1563
    iput v1, p0, Landroid/window/WindowContainerTransaction$Change;->mSelfMovable:I

    .line 1565
    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mLaunchNextToBubble:Z

    .line 1567
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 1569
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1540
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$Change;->mConfiguration:Landroid/content/res/Configuration;

    .line 1541
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mFocusable:Z

    .line 1542
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mHidden:Z

    .line 1543
    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mIgnoreOrientationRequest:Z

    .line 1544
    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mForceTranslucent:Z

    .line 1545
    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mDragResizing:Z

    .line 1546
    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mForceExcludedFromRecents:Z

    .line 1547
    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mDisablePip:Z

    .line 1548
    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mDisableLaunchAdjacent:Z

    .line 1549
    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mIsTaskMoveAllowed:Z

    .line 1550
    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mInterceptBackPressed:Z

    .line 1552
    iput v0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    .line 1553
    iput v0, p0, Landroid/window/WindowContainerTransaction$Change;->mConfigSetMask:I

    .line 1554
    iput v0, p0, Landroid/window/WindowContainerTransaction$Change;->mWindowSetMask:I

    .line 1556
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/window/WindowContainerTransaction$Change;->mBoundsChangeTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 1557
    iput-object v1, p0, Landroid/window/WindowContainerTransaction$Change;->mRelativeBounds:Landroid/graphics/Rect;

    .line 1559
    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mConfigAtTransitionEnd:Z

    .line 1561
    const/4 v1, -0x1

    iput v1, p0, Landroid/window/WindowContainerTransaction$Change;->mActivityWindowingMode:I

    .line 1562
    iput v1, p0, Landroid/window/WindowContainerTransaction$Change;->mWindowingMode:I

    .line 1563
    iput v1, p0, Landroid/window/WindowContainerTransaction$Change;->mSelfMovable:I

    .line 1565
    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mLaunchNextToBubble:Z

    .line 1570
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$Change;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->readFromParcel(Landroid/os/Parcel;)V

    .line 1571
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mFocusable:Z

    .line 1572
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mHidden:Z

    .line 1573
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mIgnoreOrientationRequest:Z

    .line 1574
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mForceTranslucent:Z

    .line 1575
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mDragResizing:Z

    .line 1576
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mForceExcludedFromRecents:Z

    .line 1577
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mLaunchNextToBubble:Z

    .line 1578
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mDisablePip:Z

    .line 1579
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mDisableLaunchAdjacent:Z

    .line 1580
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mIsTaskMoveAllowed:Z

    .line 1581
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mInterceptBackPressed:Z

    .line 1582
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    .line 1583
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/WindowContainerTransaction$Change;->mConfigSetMask:I

    .line 1584
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/WindowContainerTransaction$Change;->mWindowSetMask:I

    .line 1585
    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_9f

    .line 1586
    sget-object v0, Landroid/view/SurfaceControl$Transaction;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1587
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$Change;->mBoundsChangeTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 1589
    :cond_9f
    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_b1

    .line 1590
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$Change;->mRelativeBounds:Landroid/graphics/Rect;

    .line 1591
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$Change;->mRelativeBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    .line 1593
    :cond_b1
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mConfigAtTransitionEnd:Z

    .line 1595
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/WindowContainerTransaction$Change;->mWindowingMode:I

    .line 1596
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/WindowContainerTransaction$Change;->mActivityWindowingMode:I

    .line 1597
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/window/WindowContainerTransaction$Change;->mSelfMovable:I

    .line 1598
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/window/WindowContainerTransaction-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/window/WindowContainerTransaction$Change;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/window/WindowContainerTransaction-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/window/WindowContainerTransaction$Change;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 1919
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getActivityWindowingMode()I
    .registers 2

    .line 1670
    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mActivityWindowingMode:I

    return v0
.end method

.method public blacklist getBoundsChangeTransaction()Landroid/view/SurfaceControl$Transaction;
    .registers 2

    .line 1796
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$Change;->mBoundsChangeTransaction:Landroid/view/SurfaceControl$Transaction;

    return-object v0
.end method

.method public blacklist getChangeMask()I
    .registers 2

    .line 1781
    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    return v0
.end method

.method public blacklist getConfigAtTransitionEnd()Z
    .registers 2

    .line 1759
    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mConfigAtTransitionEnd:Z

    return v0
.end method

.method public blacklist getConfigSetMask()I
    .registers 2

    .line 1786
    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mConfigSetMask:I

    return v0
.end method

.method public blacklist getConfiguration()Landroid/content/res/Configuration;
    .registers 2

    .line 1675
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$Change;->mConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method public blacklist getDisableLaunchAdjacent()Z
    .registers 2

    .line 1745
    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mDisableLaunchAdjacent:Z

    return v0
.end method

.method public blacklist getDisablePip()Z
    .registers 2

    .line 1737
    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mDisablePip:Z

    return v0
.end method

.method public blacklist getDragResizing()Z
    .registers 3

    .line 1723
    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_9

    .line 1727
    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mDragResizing:Z

    return v0

    .line 1724
    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Drag resizing not set. Check CHANGE_DRAG_RESIZING first"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getFocusable()Z
    .registers 3

    .line 1689
    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_9

    .line 1692
    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mFocusable:Z

    return v0

    .line 1690
    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Focusable not set. check CHANGE_FOCUSABLE first"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getForceExcludedFromRecents()Z
    .registers 2

    .line 1732
    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mForceExcludedFromRecents:Z

    return v0
.end method

.method public blacklist getForceTranslucent()Z
    .registers 3

    .line 1714
    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_9

    .line 1718
    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mForceTranslucent:Z

    return v0

    .line 1715
    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Force translucent not set. Check CHANGE_FORCE_TRANSLUCENT first"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getHidden()Z
    .registers 3

    .line 1697
    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_9

    .line 1700
    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mHidden:Z

    return v0

    .line 1698
    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Hidden not set. check CHANGE_HIDDEN first"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getIgnoreOrientationRequest()Z
    .registers 3

    .line 1705
    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_9

    .line 1709
    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mIgnoreOrientationRequest:Z

    return v0

    .line 1706
    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "IgnoreOrientationRequest not set. Check CHANGE_IGNORE_ORIENTATION_REQUEST first"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getInterceptBackPressed()Z
    .registers 3

    .line 1750
    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_9

    .line 1754
    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mInterceptBackPressed:Z

    return v0

    .line 1751
    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Intercept back pressed not set. Check CHANGE_INTERCEPT_BACK_PRESSED first"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getIsTaskMoveAllowed()Z
    .registers 2

    .line 1776
    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mIsTaskMoveAllowed:Z

    return v0
.end method

.method public blacklist getLaunchNextToBubble()Z
    .registers 3

    .line 1680
    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_9

    .line 1684
    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mLaunchNextToBubble:Z

    return v0

    .line 1681
    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mLaunchNextToBubble not set. check CHANGE_LAUNCH_NEXT_TO_BUBBLE first"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getRelativeBounds()Landroid/graphics/Rect;
    .registers 2

    .line 1801
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$Change;->mRelativeBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public blacklist getSelfMovable()I
    .registers 2

    .line 1767
    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mSelfMovable:I

    return v0
.end method

.method public blacklist getWindowSetMask()I
    .registers 2

    .line 1791
    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mWindowSetMask:I

    return v0
.end method

.method public blacklist getWindowingMode()I
    .registers 2

    .line 1666
    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mWindowingMode:I

    return v0
.end method

.method public blacklist merge(Landroid/window/WindowContainerTransaction$Change;Z)V
    .registers 7

    .line 1606
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$Change;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v1, p1, Landroid/window/WindowContainerTransaction$Change;->mConfiguration:Landroid/content/res/Configuration;

    iget v2, p1, Landroid/window/WindowContainerTransaction$Change;->mConfigSetMask:I

    iget v3, p1, Landroid/window/WindowContainerTransaction$Change;->mWindowSetMask:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;II)V

    .line 1607
    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mConfigSetMask:I

    iget v1, p1, Landroid/window/WindowContainerTransaction$Change;->mConfigSetMask:I

    or-int/2addr v0, v1

    iput v0, p0, Landroid/window/WindowContainerTransaction$Change;->mConfigSetMask:I

    .line 1608
    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mWindowSetMask:I

    iget v1, p1, Landroid/window/WindowContainerTransaction$Change;->mWindowSetMask:I

    or-int/2addr v0, v1

    iput v0, p0, Landroid/window/WindowContainerTransaction$Change;->mWindowSetMask:I

    .line 1609
    iget v0, p1, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_23

    .line 1610
    iget-boolean v0, p1, Landroid/window/WindowContainerTransaction$Change;->mFocusable:Z

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mFocusable:Z

    .line 1612
    :cond_23
    if-eqz p2, :cond_32

    iget v0, p1, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_32

    .line 1613
    iget-object v0, p1, Landroid/window/WindowContainerTransaction$Change;->mBoundsChangeTransaction:Landroid/view/SurfaceControl$Transaction;

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$Change;->mBoundsChangeTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 1614
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/window/WindowContainerTransaction$Change;->mBoundsChangeTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 1616
    :cond_32
    iget v0, p1, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3c

    .line 1617
    iget-boolean v0, p1, Landroid/window/WindowContainerTransaction$Change;->mHidden:Z

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mHidden:Z

    .line 1619
    :cond_3c
    iget v0, p1, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_46

    .line 1620
    iget-boolean v0, p1, Landroid/window/WindowContainerTransaction$Change;->mIgnoreOrientationRequest:Z

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mIgnoreOrientationRequest:Z

    .line 1622
    :cond_46
    iget v0, p1, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_50

    .line 1623
    iget-boolean v0, p1, Landroid/window/WindowContainerTransaction$Change;->mForceTranslucent:Z

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mForceTranslucent:Z

    .line 1625
    :cond_50
    iget v0, p1, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_5a

    .line 1626
    iget-boolean v0, p1, Landroid/window/WindowContainerTransaction$Change;->mDragResizing:Z

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mDragResizing:Z

    .line 1628
    :cond_5a
    iget v0, p1, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_64

    .line 1629
    iget-boolean v0, p1, Landroid/window/WindowContainerTransaction$Change;->mForceExcludedFromRecents:Z

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mForceExcludedFromRecents:Z

    .line 1631
    :cond_64
    iget v0, p1, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_6e

    .line 1632
    iget-boolean v0, p1, Landroid/window/WindowContainerTransaction$Change;->mLaunchNextToBubble:Z

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mLaunchNextToBubble:Z

    .line 1634
    :cond_6e
    iget v0, p1, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_78

    .line 1635
    iget-boolean v0, p1, Landroid/window/WindowContainerTransaction$Change;->mDisablePip:Z

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mDisablePip:Z

    .line 1637
    :cond_78
    iget v0, p1, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_82

    .line 1638
    iget-boolean v0, p1, Landroid/window/WindowContainerTransaction$Change;->mDisableLaunchAdjacent:Z

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mDisableLaunchAdjacent:Z

    .line 1640
    :cond_82
    iget v0, p1, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_8c

    .line 1641
    iget-boolean v0, p1, Landroid/window/WindowContainerTransaction$Change;->mIsTaskMoveAllowed:Z

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mIsTaskMoveAllowed:Z

    .line 1643
    :cond_8c
    iget v0, p1, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_96

    .line 1644
    iget-boolean v0, p1, Landroid/window/WindowContainerTransaction$Change;->mInterceptBackPressed:Z

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mInterceptBackPressed:Z

    .line 1646
    :cond_96
    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    iget v2, p1, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    or-int/2addr v0, v2

    iput v0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    .line 1647
    iget v0, p1, Landroid/window/WindowContainerTransaction$Change;->mActivityWindowingMode:I

    if-ltz v0, :cond_a5

    .line 1648
    iget v0, p1, Landroid/window/WindowContainerTransaction$Change;->mActivityWindowingMode:I

    iput v0, p0, Landroid/window/WindowContainerTransaction$Change;->mActivityWindowingMode:I

    .line 1650
    :cond_a5
    iget v0, p1, Landroid/window/WindowContainerTransaction$Change;->mWindowingMode:I

    if-ltz v0, :cond_ad

    .line 1651
    iget v0, p1, Landroid/window/WindowContainerTransaction$Change;->mWindowingMode:I

    iput v0, p0, Landroid/window/WindowContainerTransaction$Change;->mWindowingMode:I

    .line 1653
    :cond_ad
    iget v0, p1, Landroid/window/WindowContainerTransaction$Change;->mSelfMovable:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_b6

    .line 1654
    iget v0, p1, Landroid/window/WindowContainerTransaction$Change;->mSelfMovable:I

    iput v0, p0, Landroid/window/WindowContainerTransaction$Change;->mSelfMovable:I

    .line 1656
    :cond_b6
    iget-object v0, p1, Landroid/window/WindowContainerTransaction$Change;->mRelativeBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_c8

    .line 1657
    if-eqz p2, :cond_bf

    .line 1658
    iget-object p2, p1, Landroid/window/WindowContainerTransaction$Change;->mRelativeBounds:Landroid/graphics/Rect;

    goto :goto_c6

    .line 1659
    :cond_bf
    new-instance p2, Landroid/graphics/Rect;

    iget-object v0, p1, Landroid/window/WindowContainerTransaction$Change;->mRelativeBounds:Landroid/graphics/Rect;

    invoke-direct {p2, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    :goto_c6
    iput-object p2, p0, Landroid/window/WindowContainerTransaction$Change;->mRelativeBounds:Landroid/graphics/Rect;

    .line 1661
    :cond_c8
    iget-boolean p2, p0, Landroid/window/WindowContainerTransaction$Change;->mConfigAtTransitionEnd:Z

    if-nez p2, :cond_d2

    iget-boolean p1, p1, Landroid/window/WindowContainerTransaction$Change;->mConfigAtTransitionEnd:Z

    if-eqz p1, :cond_d1

    goto :goto_d2

    :cond_d1
    const/4 v1, 0x0

    :cond_d2
    :goto_d2
    iput-boolean v1, p0, Landroid/window/WindowContainerTransaction$Change;->mConfigAtTransitionEnd:Z

    .line 1663
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 9

    .line 1806
    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mConfigSetMask:I

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_10

    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mWindowSetMask:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_10

    move v0, v3

    goto :goto_11

    :cond_10
    move v0, v2

    .line 1810
    :goto_11
    iget v4, p0, Landroid/window/WindowContainerTransaction$Change;->mConfigSetMask:I

    and-int/2addr v1, v4

    if-eqz v1, :cond_1e

    iget v1, p0, Landroid/window/WindowContainerTransaction$Change;->mWindowSetMask:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1e

    move v1, v3

    goto :goto_1f

    :cond_1e
    move v1, v2

    .line 1814
    :goto_1f
    iget v4, p0, Landroid/window/WindowContainerTransaction$Change;->mConfigSetMask:I

    and-int/lit16 v4, v4, 0x400

    if-eqz v4, :cond_27

    move v4, v3

    goto :goto_28

    :cond_27
    move v4, v2

    .line 1815
    :goto_28
    iget v5, p0, Landroid/window/WindowContainerTransaction$Change;->mConfigSetMask:I

    and-int/lit16 v5, v5, 0x800

    if-eqz v5, :cond_2f

    move v2, v3

    .line 1817
    :cond_2f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1818
    const/16 v6, 0x7b

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1819
    const-string v6, ","

    if-eqz v0, :cond_52

    .line 1820
    const-string v0, "bounds:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v7, p0, Landroid/window/WindowContainerTransaction$Change;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v7, v7, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v7}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1821
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1823
    :cond_52
    if-eqz v1, :cond_69

    .line 1824
    const-string v0, "appbounds:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/WindowContainerTransaction$Change;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1825
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1827
    :cond_69
    if-eqz v2, :cond_7d

    .line 1828
    const-string/jumbo v0, "ssw:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/WindowContainerTransaction$Change;->mConfiguration:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1830
    :cond_7d
    if-eqz v4, :cond_a0

    .line 1831
    const-string/jumbo v0, "sw/h:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/WindowContainerTransaction$Change;->mConfiguration:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/WindowContainerTransaction$Change;->mConfiguration:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 1832
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1834
    :cond_a0
    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mWindowingMode:I

    if-ltz v0, :cond_b8

    .line 1835
    const-string/jumbo v0, "windowingMode:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/WindowContainerTransaction$Change;->mWindowingMode:I

    invoke-static {v1}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1836
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1838
    :cond_b8
    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_cc

    .line 1839
    const-string v0, "focusable:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/window/WindowContainerTransaction$Change;->mFocusable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1841
    :cond_cc
    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_e1

    .line 1842
    const-string v0, "forceTranslucent:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/window/WindowContainerTransaction$Change;->mForceTranslucent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1844
    :cond_e1
    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_f6

    .line 1845
    const-string v0, "hidden:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/window/WindowContainerTransaction$Change;->mHidden:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1847
    :cond_f6
    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_10b

    .line 1848
    const-string v0, "dragResizing:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/window/WindowContainerTransaction$Change;->mDragResizing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1850
    :cond_10b
    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_120

    .line 1851
    const-string v0, "forceExcludedFromRecents:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/window/WindowContainerTransaction$Change;->mForceExcludedFromRecents:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1852
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1854
    :cond_120
    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_135

    .line 1855
    const-string v0, "disablePip:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/window/WindowContainerTransaction$Change;->mDisablePip:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1857
    :cond_135
    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_14a

    .line 1858
    const-string v0, "disableLaunchAdjacent:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/window/WindowContainerTransaction$Change;->mDisableLaunchAdjacent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1860
    :cond_14a
    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_15f

    .line 1861
    const-string v0, "isTaskMoveAllowed:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/window/WindowContainerTransaction$Change;->mIsTaskMoveAllowed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1863
    :cond_15f
    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_181

    .line 1864
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "interceptBack:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/window/WindowContainerTransaction$Change;->mInterceptBackPressed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1866
    :cond_181
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$Change;->mBoundsChangeTransaction:Landroid/view/SurfaceControl$Transaction;

    if-eqz v0, :cond_18a

    .line 1867
    const-string v0, "hasBoundsTransaction,"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1869
    :cond_18a
    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_19f

    .line 1870
    const-string v0, "ignoreOrientationRequest:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/window/WindowContainerTransaction$Change;->mIgnoreOrientationRequest:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1871
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1873
    :cond_19f
    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_1b5

    .line 1874
    const-string/jumbo v0, "relativeBounds:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/WindowContainerTransaction$Change;->mRelativeBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1876
    :cond_1b5
    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_1ca

    .line 1877
    const-string v0, "launchNextToBubble:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/window/WindowContainerTransaction$Change;->mLaunchNextToBubble:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1879
    :cond_1ca
    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mConfigAtTransitionEnd:Z

    if-eqz v0, :cond_1d7

    .line 1880
    const-string v0, "configAtTransitionEnd"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1882
    :cond_1d7
    const-string/jumbo v0, "}"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1883
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 1888
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$Change;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1889
    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mFocusable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1890
    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mHidden:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1891
    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mIgnoreOrientationRequest:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1892
    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mForceTranslucent:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1893
    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mDragResizing:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1894
    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mForceExcludedFromRecents:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1895
    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mLaunchNextToBubble:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1896
    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mDisablePip:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1897
    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mDisableLaunchAdjacent:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1898
    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mIsTaskMoveAllowed:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1899
    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mInterceptBackPressed:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1900
    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1901
    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mConfigSetMask:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1902
    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mWindowSetMask:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1904
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$Change;->mBoundsChangeTransaction:Landroid/view/SurfaceControl$Transaction;

    if-eqz v0, :cond_54

    .line 1905
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$Change;->mBoundsChangeTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, p1, p2}, Landroid/view/SurfaceControl$Transaction;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1907
    :cond_54
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$Change;->mRelativeBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_5d

    .line 1908
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$Change;->mRelativeBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1910
    :cond_5d
    iget-boolean p2, p0, Landroid/window/WindowContainerTransaction$Change;->mConfigAtTransitionEnd:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1912
    iget p2, p0, Landroid/window/WindowContainerTransaction$Change;->mWindowingMode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1913
    iget p2, p0, Landroid/window/WindowContainerTransaction$Change;->mActivityWindowingMode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1914
    iget p2, p0, Landroid/window/WindowContainerTransaction$Change;->mSelfMovable:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1915
    return-void
.end method
