.class final Landroid/view/ViewRootImpl$SyntheticTrackballHandler;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SyntheticTrackballHandler"
.end annotation


# instance fields
.field private greylist-max-o mLastTime:J

.field private final greylist-max-o mX:Landroid/view/ViewRootImpl$TrackballAxis;

.field private final greylist-max-o mY:Landroid/view/ViewRootImpl$TrackballAxis;

.field final synthetic blacklist this$0:Landroid/view/ViewRootImpl;


# direct methods
.method constructor blacklist <init>(Landroid/view/ViewRootImpl;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 8629
    iput-object p1, p0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8630
    new-instance p1, Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-direct {p1}, Landroid/view/ViewRootImpl$TrackballAxis;-><init>()V

    iput-object p1, p0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    .line 8631
    new-instance p1, Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-direct {p1}, Landroid/view/ViewRootImpl$TrackballAxis;-><init>()V

    iput-object p1, p0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    return-void
.end method


# virtual methods
.method public greylist-max-o cancel()V
    .registers 3

    .line 8737
    const-wide/32 v0, -0x80000000

    iput-wide v0, p0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mLastTime:J

    .line 8742
    iget-object v0, p0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v0, :cond_17

    .line 8743
    iget-object v0, p0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->ensureTouchMode(Z)Z

    .line 8745
    :cond_17
    return-void
.end method

.method public greylist-max-o process(Landroid/view/MotionEvent;)V
    .registers 30

    .line 8636
    move-object/from16 v0, p0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 8637
    iget-wide v4, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mLastTime:J

    const-wide/16 v6, 0xfa

    add-long/2addr v4, v6

    cmp-long v1, v4, v2

    const/4 v14, 0x0

    if-gez v1, :cond_1c

    .line 8640
    iget-object v1, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-virtual {v1, v14}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    .line 8641
    iget-object v1, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-virtual {v1, v14}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    .line 8642
    iput-wide v2, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mLastTime:J

    .line 8645
    :cond_1c
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 8646
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v9

    .line 8647
    const/4 v15, 0x2

    packed-switch v1, :pswitch_data_13a

    goto :goto_6e

    .line 8657
    :pswitch_29
    iget-object v1, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-virtual {v1, v15}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    .line 8658
    iget-object v1, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-virtual {v1, v15}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    .line 8659
    iget-object v1, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    move-object v4, v1

    new-instance v1, Landroid/view/KeyEvent;

    const/16 v12, 0x400

    const/16 v13, 0x101

    const/4 v6, 0x1

    const/16 v7, 0x17

    const/4 v8, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    move-object/from16 v16, v4

    move-wide v4, v2

    move-object/from16 v14, v16

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    invoke-virtual {v14, v1}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    goto :goto_6e

    .line 8649
    :pswitch_4e
    iget-object v1, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-virtual {v1, v15}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    .line 8650
    iget-object v1, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-virtual {v1, v15}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    .line 8651
    iget-object v14, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    new-instance v1, Landroid/view/KeyEvent;

    const/16 v12, 0x400

    const/16 v13, 0x101

    const/4 v6, 0x0

    const/16 v7, 0x17

    const/4 v8, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    move-wide v4, v2

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    invoke-virtual {v14, v1}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    .line 8655
    nop

    .line 8672
    :goto_6e
    iget-object v1, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    const-string v7, "X"

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/view/ViewRootImpl$TrackballAxis;->collect(FJLjava/lang/String;)F

    move-result v1

    .line 8673
    iget-object v4, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    const-string v8, "Y"

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/view/ViewRootImpl$TrackballAxis;->collect(FJLjava/lang/String;)F

    move-result v4

    .line 8681
    nop

    .line 8682
    nop

    .line 8683
    nop

    .line 8684
    cmpl-float v1, v1, v4

    const/high16 v5, 0x3f800000    # 1.0f

    if-lez v1, :cond_b9

    .line 8685
    iget-object v1, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-virtual {v1}, Landroid/view/ViewRootImpl$TrackballAxis;->generate()I

    move-result v1

    .line 8686
    if-eqz v1, :cond_b5

    .line 8687
    if-lez v1, :cond_a5

    const/16 v4, 0x16

    move v14, v4

    goto :goto_a8

    .line 8688
    :cond_a5
    const/16 v4, 0x15

    move v14, v4

    .line 8689
    :goto_a8
    iget-object v4, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    iget v5, v4, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 8690
    iget-object v4, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-virtual {v4, v15}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    move/from16 v21, v14

    move v14, v1

    goto :goto_e3

    .line 8686
    :cond_b5
    move v14, v1

    const/16 v21, 0x0

    goto :goto_e3

    .line 8692
    :cond_b9
    const/4 v1, 0x0

    cmpl-float v1, v4, v1

    if-lez v1, :cond_e0

    .line 8693
    iget-object v1, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-virtual {v1}, Landroid/view/ViewRootImpl$TrackballAxis;->generate()I

    move-result v1

    .line 8694
    if-eqz v1, :cond_dc

    .line 8695
    if-lez v1, :cond_cc

    const/16 v4, 0x14

    move v14, v4

    goto :goto_cf

    .line 8696
    :cond_cc
    const/16 v4, 0x13

    move v14, v4

    .line 8697
    :goto_cf
    iget-object v4, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    iget v5, v4, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 8698
    iget-object v4, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-virtual {v4, v15}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    move/from16 v21, v14

    move v14, v1

    goto :goto_e3

    .line 8694
    :cond_dc
    move v14, v1

    const/16 v21, 0x0

    goto :goto_e3

    .line 8692
    :cond_e0
    const/4 v14, 0x0

    const/16 v21, 0x0

    .line 8702
    :goto_e3
    if-eqz v21, :cond_138

    .line 8703
    if-gez v14, :cond_e8

    neg-int v14, v14

    .line 8704
    :cond_e8
    int-to-float v1, v14

    mul-float/2addr v1, v5

    float-to-int v1, v1

    .line 8708
    if-le v1, v14, :cond_105

    .line 8711
    add-int/lit8 v14, v14, -0x1

    .line 8712
    sub-int v8, v1, v14

    .line 8713
    iget-object v15, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    new-instance v1, Landroid/view/KeyEvent;

    const/16 v12, 0x400

    const/16 v13, 0x101

    const/4 v6, 0x2

    const/4 v10, -0x1

    const/4 v11, 0x0

    move-wide v4, v2

    move/from16 v7, v21

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    invoke-virtual {v15, v1}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    .line 8718
    :cond_105
    :goto_105
    if-lez v14, :cond_136

    .line 8721
    add-int/lit8 v14, v14, -0x1

    .line 8722
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    .line 8723
    iget-object v1, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    new-instance v15, Landroid/view/KeyEvent;

    const/16 v26, 0x400

    const/16 v27, 0x101

    const/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v24, -0x1

    const/16 v25, 0x0

    move-wide/from16 v18, v16

    move/from16 v23, v9

    invoke-direct/range {v15 .. v27}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    invoke-virtual {v1, v15}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    .line 8727
    iget-object v1, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    new-instance v15, Landroid/view/KeyEvent;

    const/16 v20, 0x1

    invoke-direct/range {v15 .. v27}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    invoke-virtual {v1, v15}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    move-wide/from16 v2, v16

    goto :goto_105

    .line 8732
    :cond_136
    iput-wide v2, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mLastTime:J

    .line 8734
    :cond_138
    return-void

    nop

    :pswitch_data_13a
    .packed-switch 0x0
        :pswitch_4e
        :pswitch_29
    .end packed-switch
.end method
