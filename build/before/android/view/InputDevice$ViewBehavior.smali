.class public final Landroid/view/InputDevice$ViewBehavior;
.super Ljava/lang/Object;
.source "InputDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/InputDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ViewBehavior"
.end annotation


# static fields
.field private static final blacklist DEFAULT_SHOULD_SMOOTH_SCROLL:Z = false


# instance fields
.field private final blacklist mInputDevice:Landroid/view/InputDevice;

.field private blacklist mShouldSmoothScroll:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmShouldSmoothScroll(Landroid/view/InputDevice$ViewBehavior;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/view/InputDevice$ViewBehavior;->mShouldSmoothScroll:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmShouldSmoothScroll(Landroid/view/InputDevice$ViewBehavior;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/view/InputDevice$ViewBehavior;->mShouldSmoothScroll:Z

    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/InputDevice;)V
    .registers 3

    .line 1572
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1569
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/InputDevice$ViewBehavior;->mShouldSmoothScroll:Z

    .line 1573
    iput-object p1, p0, Landroid/view/InputDevice$ViewBehavior;->mInputDevice:Landroid/view/InputDevice;

    .line 1574
    return-void
.end method


# virtual methods
.method public whitelist shouldSmoothScroll(II)Z
    .registers 4

    .line 1604
    iget-object v0, p0, Landroid/view/InputDevice$ViewBehavior;->mInputDevice:Landroid/view/InputDevice;

    invoke-virtual {v0, p1, p2}, Landroid/view/InputDevice;->getMotionRange(II)Landroid/view/InputDevice$MotionRange;

    move-result-object p1

    if-nez p1, :cond_a

    .line 1605
    const/4 p1, 0x0

    return p1

    .line 1607
    :cond_a
    iget-boolean p1, p0, Landroid/view/InputDevice$ViewBehavior;->mShouldSmoothScroll:Z

    return p1
.end method
