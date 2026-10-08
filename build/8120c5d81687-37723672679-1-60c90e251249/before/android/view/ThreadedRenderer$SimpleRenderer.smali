.class public Landroid/view/ThreadedRenderer$SimpleRenderer;
.super Landroid/graphics/HardwareRenderer;
.source "ThreadedRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ThreadedRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleRenderer"
.end annotation


# instance fields
.field private final blacklist mLightRadius:F

.field private final greylist-max-o mLightY:F

.field private final greylist-max-o mLightZ:F


# direct methods
.method public constructor greylist-max-o <init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/Surface;)V
    .registers 5

    .line 877
    invoke-direct {p0}, Landroid/graphics/HardwareRenderer;-><init>()V

    .line 878
    invoke-virtual {p0, p2}, Landroid/view/ThreadedRenderer$SimpleRenderer;->setName(Ljava/lang/String;)V

    .line 879
    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroid/view/ThreadedRenderer$SimpleRenderer;->setOpaque(Z)V

    .line 880
    invoke-virtual {p0, p3}, Landroid/view/ThreadedRenderer$SimpleRenderer;->setSurface(Landroid/view/Surface;)V

    .line 881
    const/4 p3, 0x0

    sget-object v0, Lcom/android/internal/R$styleable;->Lighting:[I

    invoke-virtual {p1, p3, v0, p2, p2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 882
    const/4 p3, 0x3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    iput p3, p0, Landroid/view/ThreadedRenderer$SimpleRenderer;->mLightY:F

    .line 883
    const/4 p3, 0x4

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    iput p3, p0, Landroid/view/ThreadedRenderer$SimpleRenderer;->mLightZ:F

    .line 884
    const/4 p3, 0x2

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    iput p3, p0, Landroid/view/ThreadedRenderer$SimpleRenderer;->mLightRadius:F

    .line 885
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    .line 886
    const/4 p3, 0x1

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    .line 887
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 888
    invoke-virtual {p0, p2, p3}, Landroid/view/ThreadedRenderer$SimpleRenderer;->setLightSourceAlpha(FF)V

    .line 889
    return-void
.end method


# virtual methods
.method public blacklist draw(Landroid/graphics/HardwareRenderer$FrameDrawingCallback;)V
    .registers 6

    .line 919
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    .line 920
    if-eqz p1, :cond_d

    .line 921
    invoke-virtual {p0, p1}, Landroid/view/ThreadedRenderer$SimpleRenderer;->setFrameCallback(Landroid/graphics/HardwareRenderer$FrameDrawingCallback;)V

    .line 923
    :cond_d
    invoke-virtual {p0}, Landroid/view/ThreadedRenderer$SimpleRenderer;->createRenderRequest()Landroid/graphics/HardwareRenderer$FrameRenderRequest;

    move-result-object p1

    .line 924
    invoke-virtual {p1, v0, v1}, Landroid/graphics/HardwareRenderer$FrameRenderRequest;->setVsyncTime(J)Landroid/graphics/HardwareRenderer$FrameRenderRequest;

    move-result-object p1

    .line 925
    invoke-virtual {p1}, Landroid/graphics/HardwareRenderer$FrameRenderRequest;->syncAndDraw()I

    .line 926
    return-void
.end method

.method public blacklist getRootNode()Landroid/graphics/RenderNode;
    .registers 2

    .line 912
    iget-object v0, p0, Landroid/view/ThreadedRenderer$SimpleRenderer;->mRootNode:Landroid/graphics/RenderNode;

    return-object v0
.end method

.method public greylist-max-o setLightCenter(Landroid/view/Display;II)V
    .registers 7

    .line 897
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 898
    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 899
    iget p1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float p1, p1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p1, v1

    int-to-float p2, p2

    sub-float/2addr p1, p2

    .line 900
    iget p2, p0, Landroid/view/ThreadedRenderer$SimpleRenderer;->mLightY:F

    int-to-float p3, p3

    sub-float/2addr p2, p3

    .line 903
    iget p3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result p3

    int-to-float p3, p3

    const/high16 v2, 0x43e10000    # 450.0f

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v2

    div-float/2addr p3, v0

    .line 905
    add-float/2addr p3, v1

    const/high16 v0, 0x40400000    # 3.0f

    div-float/2addr p3, v0

    .line 906
    iget v0, p0, Landroid/view/ThreadedRenderer$SimpleRenderer;->mLightZ:F

    mul-float/2addr v0, p3

    .line 908
    iget p3, p0, Landroid/view/ThreadedRenderer$SimpleRenderer;->mLightRadius:F

    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/view/ThreadedRenderer$SimpleRenderer;->setLightSourceGeometry(FFFF)V

    .line 909
    return-void
.end method
