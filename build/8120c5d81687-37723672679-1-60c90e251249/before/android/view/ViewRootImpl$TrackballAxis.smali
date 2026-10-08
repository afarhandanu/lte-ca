.class final Landroid/view/ViewRootImpl$TrackballAxis;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TrackballAxis"
.end annotation


# static fields
.field static final greylist-max-o ACCEL_MOVE_SCALING_FACTOR:F = 0.025f

.field static final greylist-max-o FAST_MOVE_TIME:J = 0x96L

.field static final greylist-max-o FIRST_MOVEMENT_THRESHOLD:F = 0.5f

.field static final greylist-max-o MAX_ACCELERATION:F = 20.0f

.field static final greylist-max-o SECOND_CUMULATIVE_MOVEMENT_THRESHOLD:F = 2.0f

.field static final greylist-max-o SUBSEQUENT_INCREMENTAL_MOVEMENT_THRESHOLD:F = 1.0f


# instance fields
.field greylist-max-o acceleration:F

.field greylist-max-o dir:I

.field greylist-max-o lastMoveTime:J

.field greylist-max-o nonAccelMovement:I

.field greylist-max-o position:F

.field greylist-max-o step:I


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 3

    .line 8752
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8778
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 8779
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->lastMoveTime:J

    return-void
.end method


# virtual methods
.method greylist-max-o collect(FJLjava/lang/String;)F
    .registers 13

    .line 8804
    const/4 p4, 0x0

    cmpl-float v0, p1, p4

    const/4 v1, 0x0

    const/high16 v2, 0x43160000    # 150.0f

    const-wide/16 v3, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    if-lez v0, :cond_1e

    .line 8805
    mul-float/2addr v2, p1

    float-to-long v6, v2

    .line 8806
    iget v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->dir:I

    if-gez v0, :cond_1a

    .line 8808
    iput p4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    .line 8809
    iput v1, p0, Landroid/view/ViewRootImpl$TrackballAxis;->step:I

    .line 8810
    iput v5, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 8811
    iput-wide v3, p0, Landroid/view/ViewRootImpl$TrackballAxis;->lastMoveTime:J

    .line 8813
    :cond_1a
    const/4 p4, 0x1

    iput p4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->dir:I

    goto :goto_36

    .line 8814
    :cond_1e
    cmpg-float v0, p1, p4

    if-gez v0, :cond_35

    .line 8815
    neg-float v0, p1

    mul-float/2addr v0, v2

    float-to-long v6, v0

    .line 8816
    iget v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->dir:I

    if-lez v0, :cond_31

    .line 8818
    iput p4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    .line 8819
    iput v1, p0, Landroid/view/ViewRootImpl$TrackballAxis;->step:I

    .line 8820
    iput v5, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 8821
    iput-wide v3, p0, Landroid/view/ViewRootImpl$TrackballAxis;->lastMoveTime:J

    .line 8823
    :cond_31
    const/4 p4, -0x1

    iput p4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->dir:I

    goto :goto_36

    .line 8825
    :cond_35
    move-wide v6, v3

    .line 8831
    :goto_36
    cmp-long p4, v6, v3

    if-lez p4, :cond_6b

    .line 8832
    iget-wide v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->lastMoveTime:J

    sub-long v0, p2, v0

    .line 8833
    iput-wide p2, p0, Landroid/view/ViewRootImpl$TrackballAxis;->lastMoveTime:J

    .line 8834
    iget p2, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 8835
    cmp-long p3, v0, v6

    const p4, 0x3ccccccd    # 0.025f

    if-gez p3, :cond_5c

    .line 8837
    sub-long/2addr v6, v0

    long-to-float p3, v6

    mul-float/2addr p3, p4

    .line 8838
    cmpl-float p4, p3, v5

    if-lez p4, :cond_51

    mul-float/2addr p2, p3

    .line 8842
    :cond_51
    const/high16 p3, 0x41a00000    # 20.0f

    cmpg-float p4, p2, p3

    if-gez p4, :cond_58

    goto :goto_59

    :cond_58
    move p2, p3

    :goto_59
    iput p2, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 8843
    goto :goto_6b

    .line 8845
    :cond_5c
    sub-long/2addr v0, v6

    long-to-float p3, v0

    mul-float/2addr p3, p4

    .line 8846
    cmpl-float p4, p3, v5

    if-lez p4, :cond_64

    div-float/2addr p2, p3

    .line 8850
    :cond_64
    cmpl-float p3, p2, v5

    if-lez p3, :cond_69

    move v5, p2

    :cond_69
    iput v5, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 8853
    :cond_6b
    :goto_6b
    iget p2, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    add-float/2addr p2, p1

    iput p2, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    .line 8854
    iget p1, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    return p1
.end method

.method greylist-max-o generate()I
    .registers 6

    .line 8866
    nop

    .line 8867
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->nonAccelMovement:I

    .line 8869
    :goto_4
    iget v1, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    const/4 v2, 0x1

    if-ltz v1, :cond_e

    move v1, v2

    goto :goto_f

    :cond_e
    const/4 v1, -0x1

    .line 8870
    :goto_f
    iget v3, p0, Landroid/view/ViewRootImpl$TrackballAxis;->step:I

    packed-switch v3, :pswitch_data_70

    .line 8902
    iget v2, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_55

    .line 8903
    return v0

    .line 8886
    :pswitch_21
    iget v2, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2e

    .line 8887
    return v0

    .line 8889
    :cond_2e
    add-int/2addr v0, v1

    .line 8890
    iget v2, p0, Landroid/view/ViewRootImpl$TrackballAxis;->nonAccelMovement:I

    add-int/2addr v2, v1

    iput v2, p0, Landroid/view/ViewRootImpl$TrackballAxis;->nonAccelMovement:I

    .line 8891
    iget v2, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    int-to-float v1, v1

    mul-float/2addr v1, v3

    sub-float/2addr v2, v1

    iput v2, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    .line 8892
    const/4 v1, 0x2

    iput v1, p0, Landroid/view/ViewRootImpl$TrackballAxis;->step:I

    .line 8893
    goto :goto_6e

    .line 8875
    :pswitch_3f
    iget v3, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_4c

    .line 8876
    return v0

    .line 8878
    :cond_4c
    add-int/2addr v0, v1

    .line 8879
    iget v3, p0, Landroid/view/ViewRootImpl$TrackballAxis;->nonAccelMovement:I

    add-int/2addr v3, v1

    iput v3, p0, Landroid/view/ViewRootImpl$TrackballAxis;->nonAccelMovement:I

    .line 8880
    iput v2, p0, Landroid/view/ViewRootImpl$TrackballAxis;->step:I

    .line 8881
    goto :goto_6e

    .line 8905
    :cond_55
    add-int/2addr v0, v1

    .line 8906
    iget v2, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    int-to-float v1, v1

    mul-float/2addr v1, v3

    sub-float/2addr v2, v1

    iput v2, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    .line 8907
    iget v1, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 8908
    const v2, 0x3f8ccccd    # 1.1f

    mul-float/2addr v1, v2

    .line 8909
    const/high16 v2, 0x41a00000    # 20.0f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_6a

    goto :goto_6c

    :cond_6a
    iget v1, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    :goto_6c
    iput v1, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 8912
    :goto_6e
    goto :goto_4

    nop

    :pswitch_data_70
    .packed-switch 0x0
        :pswitch_3f
        :pswitch_21
    .end packed-switch
.end method

.method greylist-max-o reset(I)V
    .registers 4

    .line 8785
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    .line 8786
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 8787
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->lastMoveTime:J

    .line 8788
    iput p1, p0, Landroid/view/ViewRootImpl$TrackballAxis;->step:I

    .line 8789
    const/4 p1, 0x0

    iput p1, p0, Landroid/view/ViewRootImpl$TrackballAxis;->dir:I

    .line 8790
    return-void
.end method
