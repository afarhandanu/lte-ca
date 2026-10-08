.class public Landroid/window/ScreenCaptureInternal$DisplayCaptureArgs$Builder;
.super Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;
.source "ScreenCaptureInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/ScreenCaptureInternal$DisplayCaptureArgs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder<",
        "Landroid/window/ScreenCaptureInternal$DisplayCaptureArgs$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist mDisplayToken:Landroid/os/IBinder;

.field private blacklist mHeight:I

.field private blacklist mWidth:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDisplayToken(Landroid/window/ScreenCaptureInternal$DisplayCaptureArgs$Builder;)Landroid/os/IBinder;
    .registers 1

    iget-object p0, p0, Landroid/window/ScreenCaptureInternal$DisplayCaptureArgs$Builder;->mDisplayToken:Landroid/os/IBinder;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHeight(Landroid/window/ScreenCaptureInternal$DisplayCaptureArgs$Builder;)I
    .registers 1

    iget p0, p0, Landroid/window/ScreenCaptureInternal$DisplayCaptureArgs$Builder;->mHeight:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWidth(Landroid/window/ScreenCaptureInternal$DisplayCaptureArgs$Builder;)I
    .registers 1

    iget p0, p0, Landroid/window/ScreenCaptureInternal$DisplayCaptureArgs$Builder;->mWidth:I

    return p0
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 666
    invoke-direct {p0}, Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;-><init>()V

    .line 667
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 669
    invoke-direct {p0}, Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;-><init>()V

    .line 670
    invoke-virtual {p0, p1}, Landroid/window/ScreenCaptureInternal$DisplayCaptureArgs$Builder;->setDisplayToken(Landroid/os/IBinder;)Landroid/window/ScreenCaptureInternal$DisplayCaptureArgs$Builder;

    .line 671
    return-void
.end method


# virtual methods
.method public bridge synthetic blacklist build()Landroid/window/ScreenCaptureInternal$CaptureArgs;
    .registers 2

    .line 649
    invoke-virtual {p0}, Landroid/window/ScreenCaptureInternal$DisplayCaptureArgs$Builder;->build()Landroid/window/ScreenCaptureInternal$DisplayCaptureArgs;

    move-result-object v0

    return-object v0
.end method

.method public blacklist build()Landroid/window/ScreenCaptureInternal$DisplayCaptureArgs;
    .registers 3

    .line 659
    iget-object v0, p0, Landroid/window/ScreenCaptureInternal$DisplayCaptureArgs$Builder;->mDisplayToken:Landroid/os/IBinder;

    if-eqz v0, :cond_b

    .line 663
    new-instance v0, Landroid/window/ScreenCaptureInternal$DisplayCaptureArgs;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/window/ScreenCaptureInternal$DisplayCaptureArgs;-><init>(Landroid/window/ScreenCaptureInternal$DisplayCaptureArgs$Builder;Landroid/window/ScreenCaptureInternal-IA;)V

    return-object v0

    .line 660
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t take screenshot with null display token"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method bridge synthetic blacklist getThis()Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;
    .registers 2

    .line 649
    invoke-virtual {p0}, Landroid/window/ScreenCaptureInternal$DisplayCaptureArgs$Builder;->getThis()Landroid/window/ScreenCaptureInternal$DisplayCaptureArgs$Builder;

    move-result-object v0

    return-object v0
.end method

.method blacklist getThis()Landroid/window/ScreenCaptureInternal$DisplayCaptureArgs$Builder;
    .registers 1

    .line 698
    return-object p0
.end method

.method public blacklist setDisplayToken(Landroid/os/IBinder;)Landroid/window/ScreenCaptureInternal$DisplayCaptureArgs$Builder;
    .registers 2

    .line 677
    iput-object p1, p0, Landroid/window/ScreenCaptureInternal$DisplayCaptureArgs$Builder;->mDisplayToken:Landroid/os/IBinder;

    .line 678
    return-object p0
.end method

.method public blacklist setSize(II)Landroid/window/ScreenCaptureInternal$DisplayCaptureArgs$Builder;
    .registers 3

    .line 691
    iput p1, p0, Landroid/window/ScreenCaptureInternal$DisplayCaptureArgs$Builder;->mWidth:I

    .line 692
    iput p2, p0, Landroid/window/ScreenCaptureInternal$DisplayCaptureArgs$Builder;->mHeight:I

    .line 693
    return-object p0
.end method
