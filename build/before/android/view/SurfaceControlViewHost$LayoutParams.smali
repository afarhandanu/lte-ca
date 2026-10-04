.class public Landroid/view/SurfaceControlViewHost$LayoutParams;
.super Ljava/lang/Object;
.source "SurfaceControlViewHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceControlViewHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field private final blacklist mFocusable:Z

.field private final blacklist mHeight:I

.field private final blacklist mWidth:I


# direct methods
.method public constructor blacklist <init>(IIZ)V
    .registers 4

    .line 690
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 691
    iput p1, p0, Landroid/view/SurfaceControlViewHost$LayoutParams;->mWidth:I

    .line 692
    iput p2, p0, Landroid/view/SurfaceControlViewHost$LayoutParams;->mHeight:I

    .line 693
    iput-boolean p3, p0, Landroid/view/SurfaceControlViewHost$LayoutParams;->mFocusable:Z

    .line 694
    return-void
.end method

.method static blacklist from(Landroid/view/WindowManager$LayoutParams;)Landroid/view/SurfaceControlViewHost$LayoutParams;
    .registers 4

    .line 747
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 749
    :goto_9
    new-instance v1, Landroid/view/SurfaceControlViewHost$LayoutParams;

    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-direct {v1, v2, p0, v0}, Landroid/view/SurfaceControlViewHost$LayoutParams;-><init>(IIZ)V

    .line 751
    return-object v1
.end method


# virtual methods
.method public blacklist getHeight()I
    .registers 2

    .line 717
    iget v0, p0, Landroid/view/SurfaceControlViewHost$LayoutParams;->mHeight:I

    return v0
.end method

.method public blacklist getWidth()I
    .registers 2

    .line 709
    iget v0, p0, Landroid/view/SurfaceControlViewHost$LayoutParams;->mWidth:I

    return v0
.end method

.method public blacklist isFocusable()Z
    .registers 2

    .line 701
    iget-boolean v0, p0, Landroid/view/SurfaceControlViewHost$LayoutParams;->mFocusable:Z

    return v0
.end method

.method blacklist toWindowManagerLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .registers 7

    .line 727
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Landroid/view/SurfaceControlViewHost$LayoutParams;->mWidth:I

    iget v2, p0, Landroid/view/SurfaceControlViewHost$LayoutParams;->mHeight:I

    const/4 v4, 0x0

    const/4 v5, -0x2

    const/4 v3, 0x2

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 734
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 735
    iget-boolean v1, p0, Landroid/view/SurfaceControlViewHost$LayoutParams;->mFocusable:Z

    if-nez v1, :cond_1d

    .line 736
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 738
    :cond_1d
    return-object v0
.end method
