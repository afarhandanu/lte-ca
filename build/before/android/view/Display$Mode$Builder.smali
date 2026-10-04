.class public final Landroid/view/Display$Mode$Builder;
.super Ljava/lang/Object;
.source "Display.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/Display$Mode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mHeight:I

.field private blacklist mRefreshRate:F

.field private blacklist mWidth:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 2833
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2834
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/Display$Mode$Builder;->mWidth:I

    .line 2835
    iput v0, p0, Landroid/view/Display$Mode$Builder;->mHeight:I

    .line 2836
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/Display$Mode$Builder;->mRefreshRate:F

    .line 2837
    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/view/Display$Mode;
    .registers 5

    .line 2891
    new-instance v0, Landroid/view/Display$Mode;

    iget v1, p0, Landroid/view/Display$Mode$Builder;->mWidth:I

    iget v2, p0, Landroid/view/Display$Mode$Builder;->mHeight:I

    iget v3, p0, Landroid/view/Display$Mode$Builder;->mRefreshRate:F

    invoke-direct {v0, v1, v2, v3}, Landroid/view/Display$Mode;-><init>(IIF)V

    .line 2892
    return-object v0
.end method

.method public blacklist setRefreshRate(F)Landroid/view/Display$Mode$Builder;
    .registers 3

    .line 2860
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_7

    .line 2861
    iput p1, p0, Landroid/view/Display$Mode$Builder;->mRefreshRate:F

    .line 2863
    :cond_7
    return-object p0
.end method

.method public blacklist setResolution(II)Landroid/view/Display$Mode$Builder;
    .registers 3

    .line 2846
    if-lez p1, :cond_8

    if-lez p2, :cond_8

    .line 2847
    iput p1, p0, Landroid/view/Display$Mode$Builder;->mWidth:I

    .line 2848
    iput p2, p0, Landroid/view/Display$Mode$Builder;->mHeight:I

    .line 2850
    :cond_8
    return-object p0
.end method
