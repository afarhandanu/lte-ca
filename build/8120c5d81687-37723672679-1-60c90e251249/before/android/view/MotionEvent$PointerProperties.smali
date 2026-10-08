.class public final Landroid/view/MotionEvent$PointerProperties;
.super Ljava/lang/Object;
.source "MotionEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/MotionEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PointerProperties"
.end annotation


# instance fields
.field public whitelist id:I

.field public whitelist toolType:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$mequals(Landroid/view/MotionEvent$PointerProperties;Landroid/view/MotionEvent$PointerProperties;)Z
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/MotionEvent$PointerProperties;->equals(Landroid/view/MotionEvent$PointerProperties;)Z

    move-result p0

    return p0
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 4713
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4714
    invoke-virtual {p0}, Landroid/view/MotionEvent$PointerProperties;->clear()V

    .line 4715
    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/MotionEvent$PointerProperties;)V
    .registers 2

    .line 4722
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4723
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent$PointerProperties;->copyFrom(Landroid/view/MotionEvent$PointerProperties;)V

    .line 4724
    return-void
.end method

.method public static greylist createArray(I)[Landroid/view/MotionEvent$PointerProperties;
    .registers 4

    .line 4729
    new-array v0, p0, [Landroid/view/MotionEvent$PointerProperties;

    .line 4730
    const/4 v1, 0x0

    :goto_3
    if-ge v1, p0, :cond_f

    .line 4731
    new-instance v2, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v2, v0, v1

    .line 4730
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 4733
    :cond_f
    return-object v0
.end method

.method private greylist-max-o equals(Landroid/view/MotionEvent$PointerProperties;)Z
    .registers 4

    .line 4779
    if-eqz p1, :cond_10

    iget v0, p0, Landroid/view/MotionEvent$PointerProperties;->id:I

    iget v1, p1, Landroid/view/MotionEvent$PointerProperties;->id:I

    if-ne v0, v1, :cond_10

    iget v0, p0, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    iget p1, p1, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    if-ne v0, p1, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    return p1
.end method


# virtual methods
.method public whitelist clear()V
    .registers 2

    .line 4756
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 4757
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    .line 4758
    return-void
.end method

.method public whitelist copyFrom(Landroid/view/MotionEvent$PointerProperties;)V
    .registers 3

    .line 4766
    iget v0, p1, Landroid/view/MotionEvent$PointerProperties;->id:I

    iput v0, p0, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 4767
    iget p1, p1, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    iput p1, p0, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    .line 4768
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3

    .line 4772
    instance-of v0, p1, Landroid/view/MotionEvent$PointerProperties;

    if-eqz v0, :cond_b

    .line 4773
    check-cast p1, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {p0, p1}, Landroid/view/MotionEvent$PointerProperties;->equals(Landroid/view/MotionEvent$PointerProperties;)Z

    move-result p1

    return p1

    .line 4775
    :cond_b
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 4784
    iget v0, p0, Landroid/view/MotionEvent$PointerProperties;->id:I

    iget v1, p0, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method
