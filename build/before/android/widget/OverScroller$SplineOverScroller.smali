.class Landroid/widget/OverScroller$SplineOverScroller;
.super Ljava/lang/Object;
.source "OverScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/OverScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SplineOverScroller"
.end annotation


# static fields
.field private static final greylist-max-o BALLISTIC:I = 0x2

.field private static final greylist-max-o CUBIC:I = 0x1

.field private static greylist-max-o DECELERATION_RATE:F = 0.0f

.field private static final greylist-max-o END_TENSION:F = 1.0f

.field private static final greylist-max-o GRAVITY:F = 2000.0f

.field private static final greylist-max-o INFLEXION:F = 0.35f

.field private static final greylist-max-o NB_SAMPLES:I = 0x64

.field private static final greylist-max-o P1:F = 0.175f

.field private static final greylist-max-o P2:F = 0.35000002f

.field private static final greylist-max-o SPLINE:I = 0x0

.field private static final greylist-max-o SPLINE_POSITION:[F

.field private static final greylist-max-o SPLINE_TIME:[F

.field private static final greylist-max-o START_TENSION:F = 0.5f


# instance fields
.field private greylist mCurrVelocity:F

.field private greylist-max-o mCurrentPosition:I

.field private greylist-max-o mDeceleration:F

.field private greylist-max-o mDuration:I

.field private greylist-max-o mFinal:I

.field private greylist-max-o mFinished:Z

.field private greylist-max-o mFlingFriction:F

.field private greylist-max-o mOver:I

.field private greylist-max-o mPhysicalCoeff:F

.field private greylist-max-o mSplineDistance:I

.field private greylist-max-o mSplineDuration:I

.field private greylist-max-o mStart:I

.field private greylist-max-o mStartTime:J

.field private greylist-max-o mState:I

.field private greylist-max-o mVelocity:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCurrVelocity(Landroid/widget/OverScroller$SplineOverScroller;)F
    .registers 1

    iget p0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCurrentPosition(Landroid/widget/OverScroller$SplineOverScroller;)I
    .registers 1

    iget p0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDuration(Landroid/widget/OverScroller$SplineOverScroller;)I
    .registers 1

    iget p0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFinal(Landroid/widget/OverScroller$SplineOverScroller;)I
    .registers 1

    iget p0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFinished(Landroid/widget/OverScroller$SplineOverScroller;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStart(Landroid/widget/OverScroller$SplineOverScroller;)I
    .registers 1

    iget p0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStartTime(Landroid/widget/OverScroller$SplineOverScroller;)J
    .registers 3

    iget-wide v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmState(Landroid/widget/OverScroller$SplineOverScroller;)I
    .registers 1

    iget p0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFinished(Landroid/widget/OverScroller$SplineOverScroller;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetSplineFlingDistance(Landroid/widget/OverScroller$SplineOverScroller;I)D
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/OverScroller$SplineOverScroller;->getSplineFlingDistance(I)D

    move-result-wide p0

    return-wide p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 20

    .line 587
    const-wide v0, 0x3fe8f5c28f5c28f6L    # 0.78

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Landroid/widget/OverScroller$SplineOverScroller;->DECELERATION_RATE:F

    .line 595
    const/16 v0, 0x65

    new-array v1, v0, [F

    sput-object v1, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    .line 596
    new-array v0, v0, [F

    sput-object v0, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    .line 603
    nop

    .line 604
    nop

    .line 605
    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v1

    move v1, v0

    :goto_26
    const/16 v3, 0x64

    const/high16 v4, 0x3f800000    # 1.0f

    if-ge v2, v3, :cond_af

    .line 606
    int-to-float v3, v2

    const/high16 v5, 0x42c80000    # 100.0f

    div-float v5, v3, v5

    .line 608
    move v3, v4

    .line 611
    :goto_32
    sub-float v6, v3, v0

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v6, v0

    .line 612
    const/high16 v8, 0x40400000    # 3.0f

    mul-float v9, v6, v8

    sub-float v10, v4, v6

    mul-float/2addr v9, v10

    .line 613
    const v11, 0x3e333333    # 0.175f

    mul-float v12, v10, v11

    const v13, 0x3eb33334    # 0.35000002f

    mul-float v14, v6, v13

    add-float/2addr v12, v14

    mul-float/2addr v12, v9

    mul-float v14, v6, v6

    mul-float/2addr v14, v6

    add-float/2addr v12, v14

    .line 614
    sub-float v15, v12, v5

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    move/from16 v16, v4

    move/from16 v17, v5

    float-to-double v4, v15

    const-wide v18, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v4, v4, v18

    if-gez v4, :cond_9f

    .line 618
    sget-object v3, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v10, v4

    add-float/2addr v10, v6

    mul-float/2addr v9, v10

    add-float/2addr v9, v14

    aput v9, v3, v2

    .line 620
    move/from16 v3, v16

    .line 623
    :goto_6f
    sub-float v5, v3, v1

    div-float/2addr v5, v7

    add-float/2addr v5, v1

    .line 624
    mul-float v6, v5, v8

    sub-float v9, v16, v5

    mul-float/2addr v6, v9

    .line 625
    mul-float v10, v9, v4

    add-float/2addr v10, v5

    mul-float/2addr v10, v6

    mul-float v12, v5, v5

    mul-float/2addr v12, v5

    add-float/2addr v10, v12

    .line 626
    sub-float v14, v10, v17

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    float-to-double v14, v14

    cmpg-double v14, v14, v18

    if-gez v14, :cond_97

    .line 630
    sget-object v3, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    mul-float/2addr v9, v11

    mul-float/2addr v5, v13

    add-float/2addr v9, v5

    mul-float/2addr v6, v9

    add-float/2addr v6, v12

    aput v6, v3, v2

    .line 605
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    .line 627
    :cond_97
    cmpl-float v6, v10, v17

    if-lez v6, :cond_9d

    move v3, v5

    goto :goto_6f

    .line 628
    :cond_9d
    move v1, v5

    goto :goto_6f

    .line 615
    :cond_9f
    cmpl-float v4, v12, v17

    if-lez v4, :cond_a9

    move v3, v6

    move/from16 v4, v16

    move/from16 v5, v17

    goto :goto_32

    .line 616
    :cond_a9
    move v0, v6

    move/from16 v4, v16

    move/from16 v5, v17

    goto :goto_32

    .line 632
    :cond_af
    move/from16 v16, v4

    sget-object v0, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    sget-object v1, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    aput v16, v1, v3

    aput v16, v0, v3

    .line 633
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/content/Context;)V
    .registers 4

    .line 639
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 579
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    .line 640
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 641
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x43200000    # 160.0f

    mul-float/2addr v0, v1

    .line 642
    const v1, 0x43c10b3d

    mul-float/2addr v0, v1

    const v1, 0x3f570a3d    # 0.84f

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mPhysicalCoeff:F

    .line 646
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->viewconfigurationApis()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 647
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScrollFrictionAmount()F

    move-result p1

    goto :goto_33

    .line 648
    :cond_2f
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result p1

    :goto_33
    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFlingFriction:F

    .line 649
    return-void
.end method

.method private greylist-max-o adjustDuration(III)V
    .registers 7

    .line 670
    sub-int/2addr p2, p1

    .line 671
    sub-int/2addr p3, p1

    .line 672
    int-to-float p1, p3

    int-to-float p2, p2

    div-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 673
    const/high16 p2, 0x42c80000    # 100.0f

    mul-float p3, p1, p2

    float-to-int p3, p3

    .line 674
    const/16 v0, 0x64

    if-ge p3, v0, :cond_2d

    .line 675
    int-to-float v0, p3

    div-float/2addr v0, p2

    .line 676
    add-int/lit8 v1, p3, 0x1

    int-to-float v2, v1

    div-float/2addr v2, p2

    .line 677
    sget-object p2, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    aget p2, p2, p3

    .line 678
    sget-object p3, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    aget p3, p3, v1

    .line 679
    sub-float/2addr p1, v0

    sub-float/2addr v2, v0

    div-float/2addr p1, v2

    sub-float/2addr p3, p2

    mul-float/2addr p1, p3

    add-float/2addr p2, p1

    .line 680
    iget p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    int-to-float p1, p1

    mul-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 682
    :cond_2d
    return-void
.end method

.method private greylist-max-o fitOnBounceCurve(III)V
    .registers 9

    .line 806
    neg-int v0, p3

    int-to-float v0, v0

    iget v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    div-float/2addr v0, v1

    .line 808
    int-to-float p3, p3

    mul-float/2addr p3, p3

    .line 809
    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p3, v1

    iget v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr p3, v1

    .line 810
    sub-int p1, p2, p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    .line 811
    add-float/2addr p3, p1

    float-to-double v1, p3

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    mul-double/2addr v1, v3

    iget p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 812
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-double v3, p1

    div-double/2addr v1, v3

    .line 811
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float p1, v1

    .line 813
    iget-wide v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    const/high16 p3, 0x447a0000    # 1000.0f

    sub-float v0, p1, v0

    mul-float/2addr v0, p3

    float-to-int p3, v0

    int-to-long v3, p3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 814
    iput p2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iput p2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 815
    iget p2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    neg-float p2, p2

    mul-float/2addr p2, p1

    float-to-int p1, p2

    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    .line 816
    return-void
.end method

.method private static greylist-max-o getDeceleration(I)F
    .registers 1

    .line 662
    if-lez p0, :cond_5

    const/high16 p0, -0x3b060000    # -2000.0f

    goto :goto_7

    :cond_5
    const/high16 p0, 0x44fa0000    # 2000.0f

    :goto_7
    return p0
.end method

.method private greylist-max-o getSplineDeceleration(I)D
    .registers 4

    .line 788
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    const v0, 0x3eb33333    # 0.35f

    mul-float/2addr p1, v0

    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFlingFriction:F

    iget v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mPhysicalCoeff:F

    mul-float/2addr v0, v1

    div-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private greylist-max-o getSplineFlingDistance(I)D
    .registers 10

    .line 792
    invoke-direct {p0, p1}, Landroid/widget/OverScroller$SplineOverScroller;->getSplineDeceleration(I)D

    move-result-wide v0

    .line 793
    sget p1, Landroid/widget/OverScroller$SplineOverScroller;->DECELERATION_RATE:F

    float-to-double v2, p1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    .line 794
    iget p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFlingFriction:F

    iget v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mPhysicalCoeff:F

    mul-float/2addr p1, v4

    float-to-double v4, p1

    sget p1, Landroid/widget/OverScroller$SplineOverScroller;->DECELERATION_RATE:F

    float-to-double v6, p1

    div-double/2addr v6, v2

    mul-double/2addr v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    mul-double/2addr v4, v0

    return-wide v4
.end method

.method private greylist-max-o getSplineFlingDuration(I)I
    .registers 8

    .line 799
    invoke-direct {p0, p1}, Landroid/widget/OverScroller$SplineOverScroller;->getSplineDeceleration(I)D

    move-result-wide v0

    .line 800
    sget p1, Landroid/widget/OverScroller$SplineOverScroller;->DECELERATION_RATE:F

    float-to-double v2, p1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    .line 801
    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    double-to-int p1, v0

    return p1
.end method

.method private greylist-max-o onEdgeReached()V
    .registers 6

    .line 861
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v0, v0

    iget v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    .line 862
    iget v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    div-float v1, v0, v1

    .line 863
    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    .line 865
    iget v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    int-to-float v4, v4

    cmpl-float v4, v1, v4

    if-lez v4, :cond_2c

    .line 867
    neg-float v1, v3

    mul-float/2addr v1, v0

    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    int-to-float v0, v0

    mul-float/2addr v0, v2

    div-float/2addr v1, v0

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 868
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    int-to-float v1, v0

    .line 871
    :cond_2c
    float-to-int v0, v1

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    .line 872
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    .line 873
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    if-lez v2, :cond_39

    goto :goto_3a

    :cond_39
    neg-float v1, v1

    :goto_3a
    float-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    .line 874
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v1

    iget v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    neg-int v0, v0

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 875
    return-void
.end method

.method private greylist-max-o startAfterEdge(IIII)V
    .registers 15

    .line 825
    const/4 v0, 0x1

    if-le p1, p2, :cond_10

    if-ge p1, p3, :cond_10

    .line 826
    const-string p1, "OverScroller"

    const-string/jumbo p2, "startAfterEdge called from a valid position"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    iput-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 828
    return-void

    .line 830
    :cond_10
    const/4 v1, 0x0

    if-le p1, p3, :cond_15

    move v2, v0

    goto :goto_16

    :cond_15
    move v2, v1

    .line 831
    :goto_16
    if-eqz v2, :cond_1a

    move v3, p3

    goto :goto_1b

    :cond_1a
    move v3, p2

    .line 832
    :goto_1b
    sub-int v4, p1, v3

    .line 833
    mul-int v5, v4, p4

    if-ltz v5, :cond_22

    goto :goto_23

    :cond_22
    move v0, v1

    .line 834
    :goto_23
    if-eqz v0, :cond_29

    .line 836
    invoke-direct {p0, p1, v3, p4}, Landroid/widget/OverScroller$SplineOverScroller;->startBounceAfterEdge(III)V

    goto :goto_4f

    .line 838
    :cond_29
    invoke-direct {p0, p4}, Landroid/widget/OverScroller$SplineOverScroller;->getSplineFlingDistance(I)D

    move-result-wide v0

    .line 839
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-double v4, v4

    cmpl-double v0, v0, v4

    if-lez v0, :cond_49

    .line 840
    if-eqz v2, :cond_3a

    move v7, p2

    goto :goto_3b

    :cond_3a
    move v7, p1

    :goto_3b
    if-eqz v2, :cond_3f

    move v8, p1

    goto :goto_40

    :cond_3f
    move v8, p3

    :goto_40
    iget v9, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    move-object v4, p0

    move v5, p1

    move v6, p4

    invoke-virtual/range {v4 .. v9}, Landroid/widget/OverScroller$SplineOverScroller;->fling(IIIII)V

    goto :goto_4f

    .line 842
    :cond_49
    move-object v4, p0

    move v5, p1

    move v6, p4

    invoke-direct {p0, v5, v3, v6}, Landroid/widget/OverScroller$SplineOverScroller;->startSpringback(III)V

    .line 845
    :goto_4f
    return-void
.end method

.method private greylist-max-o startBounceAfterEdge(III)V
    .registers 5

    .line 819
    if-nez p3, :cond_5

    sub-int v0, p1, p2

    goto :goto_6

    :cond_5
    move v0, p3

    :goto_6
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->getDeceleration(I)F

    move-result v0

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 820
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/OverScroller$SplineOverScroller;->fitOnBounceCurve(III)V

    .line 821
    invoke-direct {p0}, Landroid/widget/OverScroller$SplineOverScroller;->onEdgeReached()V

    .line 822
    return-void
.end method

.method private greylist-max-o startSpringback(III)V
    .registers 6

    .line 739
    const/4 p3, 0x0

    iput-boolean p3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 740
    const/4 p3, 0x1

    iput p3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    .line 741
    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 742
    iput p2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    .line 743
    sub-int/2addr p1, p2

    .line 744
    invoke-static {p1}, Landroid/widget/OverScroller$SplineOverScroller;->getDeceleration(I)F

    move-result p2

    iput p2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 746
    neg-int p2, p1

    iput p2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    .line 747
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p2

    iput p2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    .line 748
    const-wide/high16 p2, -0x4000000000000000L    # -2.0

    int-to-double v0, p1

    mul-double/2addr v0, p2

    iget p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    float-to-double p1, p1

    div-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    const-wide v0, 0x408f400000000000L    # 1000.0

    mul-double/2addr p1, v0

    double-to-int p1, p1

    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 749
    return-void
.end method


# virtual methods
.method greylist-max-o continueWhenFinished()Z
    .registers 7

    .line 878
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_44

    goto :goto_3e

    .line 895
    :pswitch_7
    iget-wide v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 896
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    invoke-direct {p0, v0, v2, v1}, Landroid/widget/OverScroller$SplineOverScroller;->startSpringback(III)V

    .line 897
    goto :goto_3e

    .line 899
    :pswitch_17
    return v1

    .line 881
    :pswitch_18
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    if-ge v0, v2, :cond_3d

    .line 883
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 885
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    .line 886
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->getDeceleration(I)F

    move-result v0

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 887
    iget-wide v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 888
    invoke-direct {p0}, Landroid/widget/OverScroller$SplineOverScroller;->onEdgeReached()V

    goto :goto_3e

    .line 891
    :cond_3d
    return v1

    .line 902
    :goto_3e
    invoke-virtual {p0}, Landroid/widget/OverScroller$SplineOverScroller;->update()Z

    .line 903
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_18
        :pswitch_17
        :pswitch_7
    .end packed-switch
.end method

.method greylist-max-o extendDuration(I)V
    .registers 6

    .line 713
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 714
    iget-wide v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    .line 715
    add-int/2addr v0, p1

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 716
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 717
    return-void
.end method

.method greylist-max-o finish()V
    .registers 2

    .line 699
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 703
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 704
    return-void
.end method

.method greylist-max-o fling(IIIII)V
    .registers 11

    .line 752
    iput p5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    .line 753
    const/4 p5, 0x0

    iput-boolean p5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 754
    iput p2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v0, p2

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    .line 755
    iput p5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    iput p5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 756
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 757
    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 759
    if-gt p1, p4, :cond_5a

    if-ge p1, p3, :cond_1d

    goto :goto_5a

    .line 764
    :cond_1d
    iput p5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    .line 765
    nop

    .line 767
    if-eqz p2, :cond_2f

    .line 768
    invoke-direct {p0, p2}, Landroid/widget/OverScroller$SplineOverScroller;->getSplineFlingDuration(I)I

    move-result p5

    iput p5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    iput p5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 769
    invoke-direct {p0, p2}, Landroid/widget/OverScroller$SplineOverScroller;->getSplineFlingDistance(I)D

    move-result-wide v1

    goto :goto_31

    .line 767
    :cond_2f
    const-wide/16 v1, 0x0

    .line 772
    :goto_31
    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result p2

    float-to-double v3, p2

    mul-double/2addr v1, v3

    double-to-int p2, v1

    iput p2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDistance:I

    .line 773
    iget p2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDistance:I

    add-int/2addr p1, p2

    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    .line 776
    iget p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    if-ge p1, p3, :cond_4c

    .line 777
    iget p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iget p2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/OverScroller$SplineOverScroller;->adjustDuration(III)V

    .line 778
    iput p3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    .line 781
    :cond_4c
    iget p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    if-le p1, p4, :cond_59

    .line 782
    iget p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iget p2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    invoke-direct {p0, p1, p2, p4}, Landroid/widget/OverScroller$SplineOverScroller;->adjustDuration(III)V

    .line 783
    iput p4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    .line 785
    :cond_59
    return-void

    .line 760
    :cond_5a
    :goto_5a
    invoke-direct {p0, p1, p3, p4, p2}, Landroid/widget/OverScroller$SplineOverScroller;->startAfterEdge(IIII)V

    .line 761
    return-void
.end method

.method greylist-max-o notifyEdgeReached(III)V
    .registers 6

    .line 849
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    if-nez v0, :cond_12

    .line 850
    iput p3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    .line 851
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 854
    iget p3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    float-to-int p3, p3

    invoke-direct {p0, p1, p2, p2, p3}, Landroid/widget/OverScroller$SplineOverScroller;->startAfterEdge(IIII)V

    .line 856
    :cond_12
    return-void
.end method

.method greylist-max-o setFinalPosition(I)V
    .registers 3

    .line 707
    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    .line 708
    iget p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    sub-int/2addr p1, v0

    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDistance:I

    .line 709
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 710
    return-void
.end method

.method greylist-max-o setFriction(F)V
    .registers 2

    .line 636
    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFlingFriction:F

    .line 637
    return-void
.end method

.method greylist-max-o springback(III)Z
    .registers 8

    .line 720
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 722
    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 723
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    .line 725
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 726
    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 728
    if-ge p1, p2, :cond_1a

    .line 729
    invoke-direct {p0, p1, p2, v1}, Landroid/widget/OverScroller$SplineOverScroller;->startSpringback(III)V

    goto :goto_1f

    .line 730
    :cond_1a
    if-le p1, p3, :cond_1f

    .line 731
    invoke-direct {p0, p1, p3, v1}, Landroid/widget/OverScroller$SplineOverScroller;->startSpringback(III)V

    .line 734
    :cond_1f
    :goto_1f
    iget-boolean p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    xor-int/2addr p1, v0

    return p1
.end method

.method greylist-max-o startScroll(III)V
    .registers 5

    .line 685
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 687
    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 688
    add-int/2addr p1, p2

    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    .line 690
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 691
    iput p3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 694
    const/4 p1, 0x0

    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 695
    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    .line 696
    return-void
.end method

.method greylist-max-o update()Z
    .registers 9

    .line 912
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 913
    iget-wide v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    sub-long/2addr v0, v2

    .line 915
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_15

    .line 917
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    if-lez v0, :cond_14

    move v3, v4

    :cond_14
    return v3

    .line 919
    :cond_15
    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    int-to-long v5, v2

    cmp-long v2, v0, v5

    if-lez v2, :cond_1d

    .line 920
    return v3

    .line 923
    :cond_1d
    nop

    .line 924
    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    const/high16 v3, 0x447a0000    # 1000.0f

    const/high16 v5, 0x40000000    # 2.0f

    packed-switch v2, :pswitch_data_ae

    const-wide/16 v0, 0x0

    goto/16 :goto_a3

    .line 945
    :pswitch_2b
    long-to-float v0, v0

    div-float/2addr v0, v3

    .line 946
    iget v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v1, v1

    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    .line 947
    iget v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    mul-float/2addr v2, v0

    mul-float/2addr v2, v0

    div-float/2addr v2, v5

    add-float/2addr v1, v2

    float-to-double v0, v1

    .line 948
    goto :goto_a3

    .line 952
    :pswitch_42
    long-to-float v0, v0

    iget v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 953
    mul-float v1, v0, v0

    .line 954
    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    .line 955
    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    const/high16 v6, 0x40400000    # 3.0f

    mul-float/2addr v6, v1

    mul-float/2addr v5, v0

    mul-float/2addr v5, v1

    sub-float/2addr v6, v5

    mul-float/2addr v3, v6

    float-to-double v5, v3

    .line 956
    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x40c00000    # 6.0f

    mul-float/2addr v2, v3

    neg-float v0, v0

    add-float/2addr v0, v1

    mul-float/2addr v2, v0

    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    .line 957
    move-wide v0, v5

    goto :goto_a3

    .line 926
    :pswitch_6a
    long-to-float v0, v0

    iget v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 927
    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v2, v0, v1

    float-to-int v2, v2

    .line 928
    nop

    .line 929
    nop

    .line 930
    const/16 v5, 0x64

    if-ge v2, v5, :cond_8f

    .line 931
    int-to-float v5, v2

    div-float/2addr v5, v1

    .line 932
    add-int/lit8 v6, v2, 0x1

    int-to-float v7, v6

    div-float/2addr v7, v1

    .line 933
    sget-object v1, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    aget v1, v1, v2

    .line 934
    sget-object v2, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    aget v2, v2, v6

    .line 935
    sub-float/2addr v2, v1

    sub-float/2addr v7, v5

    div-float/2addr v2, v7

    .line 936
    sub-float/2addr v0, v5

    mul-float/2addr v0, v2

    add-float/2addr v1, v0

    goto :goto_92

    .line 930
    :cond_8f
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 939
    :goto_92
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDistance:I

    int-to-float v0, v0

    mul-float/2addr v1, v0

    float-to-double v0, v1

    .line 940
    iget v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDistance:I

    int-to-float v5, v5

    mul-float/2addr v2, v5

    iget v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    int-to-float v5, v5

    div-float/2addr v2, v5

    mul-float/2addr v2, v3

    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    .line 941
    nop

    .line 961
    :goto_a3
    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    add-int/2addr v2, v0

    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 963
    return v4

    :pswitch_data_ae
    .packed-switch 0x0
        :pswitch_6a
        :pswitch_42
        :pswitch_2b
    .end packed-switch
.end method

.method blacklist updateScroll(FF)V
    .registers 6

    .line 652
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    iget v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    sub-int/2addr v0, v1

    .line 653
    iget v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    int-to-float v0, v0

    mul-float v2, p1, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 655
    const/high16 v1, 0x447a0000    # 1000.0f

    sub-float/2addr p1, p2

    mul-float/2addr p1, v1

    mul-float/2addr p1, v0

    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    .line 656
    return-void
.end method
