.class public Landroid/view/ScaleGestureDetector;
.super Ljava/lang/Object;
.source "ScaleGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ScaleGestureDetector$OnScaleGestureListener;,
        Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
    }
.end annotation


# static fields
.field private static final greylist-max-o ANCHORED_SCALE_MODE_DOUBLE_TAP:I = 0x1

.field private static final greylist-max-o ANCHORED_SCALE_MODE_NONE:I = 0x0

.field private static final greylist-max-o ANCHORED_SCALE_MODE_STYLUS:I = 0x2

.field private static final greylist-max-o SCALE_FACTOR:F = 0.5f

.field private static final greylist-max-o TAG:Ljava/lang/String; = "ScaleGestureDetector"

.field private static final greylist-max-o TOUCH_STABILIZE_TIME:J = 0x80L


# instance fields
.field private greylist-max-o mAnchoredScaleMode:I

.field private greylist-max-o mAnchoredScaleStartX:F

.field private greylist-max-o mAnchoredScaleStartY:F

.field private final greylist-max-o mContext:Landroid/content/Context;

.field private greylist-max-o mCurrSpan:F

.field private greylist-max-o mCurrSpanX:F

.field private greylist-max-o mCurrSpanY:F

.field private greylist-max-o mCurrTime:J

.field private greylist-max-o mEventBeforeOrAboveStartingGestureEvent:Z

.field private greylist-max-o mFocusX:F

.field private greylist-max-o mFocusY:F

.field private greylist-max-o mGestureDetector:Landroid/view/GestureDetector;

.field private final greylist-max-o mHandler:Landroid/os/Handler;

.field private greylist-max-o mInProgress:Z

.field private greylist-max-o mInitialSpan:F

.field private final greylist-max-o mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

.field private final greylist mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

.field private greylist-max-p mMinSpan:I

.field private greylist-max-o mPrevSpan:F

.field private greylist-max-o mPrevSpanX:F

.field private greylist-max-o mPrevSpanY:F

.field private greylist-max-o mPrevTime:J

.field private greylist-max-o mQuickScaleEnabled:Z

.field private greylist-max-p mSpanSlop:I

.field private greylist-max-o mStylusScaleEnabled:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmAnchoredScaleMode(Landroid/view/ScaleGestureDetector;I)V
    .registers 2

    iput p1, p0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleMode:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAnchoredScaleStartX(Landroid/view/ScaleGestureDetector;F)V
    .registers 2

    iput p1, p0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleStartX:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAnchoredScaleStartY(Landroid/view/ScaleGestureDetector;F)V
    .registers 2

    iput p1, p0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleStartY:F

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;IILandroid/os/Handler;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V
    .registers 8

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleMode:I

    .line 168
    nop

    .line 169
    invoke-static {}, Landroid/view/InputEventConsistencyVerifier;->isInstrumentationEnabled()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 170
    new-instance v1, Landroid/view/InputEventConsistencyVerifier;

    invoke-direct {v1, p0, v0}, Landroid/view/InputEventConsistencyVerifier;-><init>(Ljava/lang/Object;I)V

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    iput-object v1, p0, Landroid/view/ScaleGestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    .line 225
    iput-object p1, p0, Landroid/view/ScaleGestureDetector;->mContext:Landroid/content/Context;

    .line 226
    iput-object p5, p0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    .line 227
    iput p2, p0, Landroid/view/ScaleGestureDetector;->mSpanSlop:I

    .line 228
    iput p3, p0, Landroid/view/ScaleGestureDetector;->mMinSpan:I

    .line 229
    iput-object p4, p0, Landroid/view/ScaleGestureDetector;->mHandler:Landroid/os/Handler;

    .line 231
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 232
    const/16 p2, 0x12

    const/4 p3, 0x1

    if-le p1, p2, :cond_2e

    .line 233
    invoke-virtual {p0, p3}, Landroid/view/ScaleGestureDetector;->setQuickScaleEnabled(Z)V

    .line 236
    :cond_2e
    const/16 p2, 0x16

    if-le p1, p2, :cond_35

    .line 237
    invoke-virtual {p0, p3}, Landroid/view/ScaleGestureDetector;->setStylusScaleEnabled(Z)V

    .line 239
    :cond_35
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V
    .registers 4

    .line 187
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;Landroid/os/Handler;)V

    .line 188
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;Landroid/os/Handler;)V
    .registers 11

    .line 203
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    mul-int/lit8 v3, v0, 0x2

    .line 204
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumScalingSpan()I

    move-result v4

    .line 203
    move-object v1, p0

    move-object v2, p1

    move-object v6, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;IILandroid/os/Handler;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    .line 205
    return-void
.end method

.method private greylist-max-o inAnchoredScaleMode()Z
    .registers 2

    .line 413
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleMode:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method


# virtual methods
.method public whitelist getCurrentSpan()F
    .registers 2

    .line 509
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    return v0
.end method

.method public whitelist getCurrentSpanX()F
    .registers 2

    .line 519
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mCurrSpanX:F

    return v0
.end method

.method public whitelist getCurrentSpanY()F
    .registers 2

    .line 529
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mCurrSpanY:F

    return v0
.end method

.method public whitelist getEventTime()J
    .registers 3

    .line 599
    iget-wide v0, p0, Landroid/view/ScaleGestureDetector;->mCurrTime:J

    return-wide v0
.end method

.method public whitelist getFocusX()F
    .registers 2

    .line 485
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mFocusX:F

    return v0
.end method

.method public whitelist getFocusY()F
    .registers 2

    .line 499
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mFocusY:F

    return v0
.end method

.method public whitelist getPreviousSpan()F
    .registers 2

    .line 539
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    return v0
.end method

.method public whitelist getPreviousSpanX()F
    .registers 2

    .line 549
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mPrevSpanX:F

    return v0
.end method

.method public whitelist getPreviousSpanY()F
    .registers 2

    .line 559
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mPrevSpanY:F

    return v0
.end method

.method public whitelist getScaleFactor()F
    .registers 6

    .line 570
    invoke-direct {p0}, Landroid/view/ScaleGestureDetector;->inAnchoredScaleMode()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_41

    .line 574
    iget-boolean v0, p0, Landroid/view/ScaleGestureDetector;->mEventBeforeOrAboveStartingGestureEvent:Z

    if-eqz v0, :cond_14

    iget v0, p0, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    iget v2, p0, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    cmpg-float v0, v0, v2

    if-ltz v0, :cond_20

    :cond_14
    iget-boolean v0, p0, Landroid/view/ScaleGestureDetector;->mEventBeforeOrAboveStartingGestureEvent:Z

    if-nez v0, :cond_22

    iget v0, p0, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    iget v2, p0, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_22

    :cond_20
    const/4 v0, 0x1

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    .line 577
    :goto_23
    iget v2, p0, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    iget v3, p0, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    div-float/2addr v2, v3

    sub-float v2, v1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    .line 578
    iget v3, p0, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    iget v4, p0, Landroid/view/ScaleGestureDetector;->mSpanSlop:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_3b

    goto :goto_40

    :cond_3b
    if-eqz v0, :cond_3f

    add-float/2addr v1, v2

    goto :goto_40

    :cond_3f
    sub-float/2addr v1, v2

    :goto_40
    return v1

    .line 580
    :cond_41
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_4e

    iget v0, p0, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    iget v1, p0, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    div-float v1, v0, v1

    :cond_4e
    return v1
.end method

.method public whitelist getTimeDelta()J
    .registers 5

    .line 590
    iget-wide v0, p0, Landroid/view/ScaleGestureDetector;->mCurrTime:J

    iget-wide v2, p0, Landroid/view/ScaleGestureDetector;->mPrevTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public whitelist isInProgress()Z
    .registers 2

    .line 471
    iget-boolean v0, p0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    return v0
.end method

.method public whitelist isQuickScaleEnabled()Z
    .registers 2

    .line 445
    iget-boolean v0, p0, Landroid/view/ScaleGestureDetector;->mQuickScaleEnabled:Z

    return v0
.end method

.method public whitelist isStylusScaleEnabled()Z
    .registers 2

    .line 464
    iget-boolean v0, p0, Landroid/view/ScaleGestureDetector;->mStylusScaleEnabled:Z

    return v0
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 19

    .line 254
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroid/view/ScaleGestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    const/4 v3, 0x0

    if-eqz v2, :cond_e

    .line 255
    iget-object v2, v0, Landroid/view/ScaleGestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v2, v1, v3}, Landroid/view/InputEventConsistencyVerifier;->onTouchEvent(Landroid/view/MotionEvent;I)V

    .line 258
    :cond_e
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    iput-wide v4, v0, Landroid/view/ScaleGestureDetector;->mCurrTime:J

    .line 260
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    .line 263
    iget-boolean v4, v0, Landroid/view/ScaleGestureDetector;->mQuickScaleEnabled:Z

    if-eqz v4, :cond_21

    .line 264
    iget-object v4, v0, Landroid/view/ScaleGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v4, v1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 267
    :cond_21
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    .line 268
    nop

    .line 269
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v5

    and-int/lit8 v5, v5, 0x20

    const/4 v6, 0x1

    if-eqz v5, :cond_31

    move v5, v6

    goto :goto_32

    :cond_31
    move v5, v3

    .line 271
    :goto_32
    iget v7, v0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleMode:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3b

    if-nez v5, :cond_3b

    move v7, v6

    goto :goto_3c

    :cond_3b
    move v7, v3

    .line 273
    :goto_3c
    if-eq v2, v6, :cond_46

    const/4 v9, 0x3

    if-eq v2, v9, :cond_46

    if-eqz v7, :cond_44

    goto :goto_46

    :cond_44
    move v9, v3

    goto :goto_47

    :cond_46
    :goto_46
    move v9, v6

    .line 276
    :goto_47
    const/4 v10, 0x0

    if-eqz v2, :cond_4c

    if-eqz v9, :cond_6d

    .line 280
    :cond_4c
    iget-boolean v11, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    if-eqz v11, :cond_5c

    .line 281
    iget-object v11, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v11, v0}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    .line 282
    iput-boolean v3, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    .line 283
    iput v10, v0, Landroid/view/ScaleGestureDetector;->mInitialSpan:F

    .line 284
    iput v3, v0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleMode:I

    goto :goto_6a

    .line 285
    :cond_5c
    invoke-direct {v0}, Landroid/view/ScaleGestureDetector;->inAnchoredScaleMode()Z

    move-result v11

    if-eqz v11, :cond_6a

    if-eqz v9, :cond_6a

    .line 286
    iput-boolean v3, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    .line 287
    iput v10, v0, Landroid/view/ScaleGestureDetector;->mInitialSpan:F

    .line 288
    iput v3, v0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleMode:I

    .line 291
    :cond_6a
    :goto_6a
    if-eqz v9, :cond_6d

    .line 292
    return v6

    .line 296
    :cond_6d
    iget-boolean v11, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    if-nez v11, :cond_8f

    iget-boolean v11, v0, Landroid/view/ScaleGestureDetector;->mStylusScaleEnabled:Z

    if-eqz v11, :cond_8f

    invoke-direct {v0}, Landroid/view/ScaleGestureDetector;->inAnchoredScaleMode()Z

    move-result v11

    if-nez v11, :cond_8f

    if-nez v9, :cond_8f

    if-eqz v5, :cond_8f

    .line 299
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, v0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleStartX:F

    .line 300
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, v0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleStartY:F

    .line 301
    iput v8, v0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleMode:I

    .line 302
    iput v10, v0, Landroid/view/ScaleGestureDetector;->mInitialSpan:F

    .line 305
    :cond_8f
    const/4 v5, 0x6

    if-eqz v2, :cond_9c

    if-eq v2, v5, :cond_9c

    const/4 v9, 0x5

    if-eq v2, v9, :cond_9c

    if-eqz v7, :cond_9a

    goto :goto_9c

    :cond_9a
    move v7, v3

    goto :goto_9d

    :cond_9c
    :goto_9c
    move v7, v6

    .line 309
    :goto_9d
    if-ne v2, v5, :cond_a1

    move v5, v6

    goto :goto_a2

    :cond_a1
    move v5, v3

    .line 310
    :goto_a2
    if-eqz v5, :cond_a9

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v9

    goto :goto_aa

    :cond_a9
    const/4 v9, -0x1

    .line 313
    :goto_aa
    nop

    .line 314
    if-eqz v5, :cond_b0

    add-int/lit8 v5, v4, -0x1

    goto :goto_b1

    :cond_b0
    move v5, v4

    .line 317
    :goto_b1
    invoke-direct {v0}, Landroid/view/ScaleGestureDetector;->inAnchoredScaleMode()Z

    move-result v11

    if-eqz v11, :cond_c9

    .line 320
    iget v11, v0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleStartX:F

    .line 321
    iget v12, v0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleStartY:F

    .line 322
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    cmpg-float v13, v13, v12

    if-gez v13, :cond_c6

    .line 323
    iput-boolean v6, v0, Landroid/view/ScaleGestureDetector;->mEventBeforeOrAboveStartingGestureEvent:Z

    goto :goto_e7

    .line 325
    :cond_c6
    iput-boolean v3, v0, Landroid/view/ScaleGestureDetector;->mEventBeforeOrAboveStartingGestureEvent:Z

    goto :goto_e7

    .line 328
    :cond_c9
    move v11, v3

    move v12, v10

    move v13, v12

    :goto_cc
    if-ge v11, v4, :cond_de

    .line 329
    if-ne v9, v11, :cond_d1

    goto :goto_db

    .line 330
    :cond_d1
    invoke-virtual {v1, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v14

    add-float/2addr v12, v14

    .line 331
    invoke-virtual {v1, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v14

    add-float/2addr v13, v14

    .line 328
    :goto_db
    add-int/lit8 v11, v11, 0x1

    goto :goto_cc

    .line 334
    :cond_de
    int-to-float v11, v5

    div-float/2addr v12, v11

    .line 335
    div-float v11, v13, v11

    move/from16 v16, v12

    move v12, v11

    move/from16 v11, v16

    .line 339
    :goto_e7
    nop

    .line 340
    move v14, v3

    move v13, v10

    :goto_ea
    if-ge v14, v4, :cond_106

    .line 341
    if-ne v9, v14, :cond_ef

    goto :goto_103

    .line 344
    :cond_ef
    invoke-virtual {v1, v14}, Landroid/view/MotionEvent;->getX(I)F

    move-result v15

    sub-float/2addr v15, v11

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    add-float/2addr v10, v15

    .line 345
    invoke-virtual {v1, v14}, Landroid/view/MotionEvent;->getY(I)F

    move-result v15

    sub-float/2addr v15, v12

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    add-float/2addr v13, v15

    .line 340
    :goto_103
    add-int/lit8 v14, v14, 0x1

    goto :goto_ea

    .line 347
    :cond_106
    int-to-float v1, v5

    div-float/2addr v10, v1

    .line 348
    div-float/2addr v13, v1

    .line 353
    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v10, v1

    .line 354
    mul-float/2addr v13, v1

    .line 356
    invoke-direct {v0}, Landroid/view/ScaleGestureDetector;->inAnchoredScaleMode()Z

    move-result v1

    if-eqz v1, :cond_115

    .line 357
    move v1, v13

    goto :goto_11c

    .line 359
    :cond_115
    float-to-double v4, v10

    float-to-double v14, v13

    invoke-static {v4, v5, v14, v15}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    double-to-float v1, v4

    .line 365
    :goto_11c
    iget-boolean v4, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    .line 366
    iput v11, v0, Landroid/view/ScaleGestureDetector;->mFocusX:F

    .line 367
    iput v12, v0, Landroid/view/ScaleGestureDetector;->mFocusY:F

    .line 368
    invoke-direct {v0}, Landroid/view/ScaleGestureDetector;->inAnchoredScaleMode()Z

    move-result v5

    if-nez v5, :cond_13e

    iget-boolean v5, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    if-eqz v5, :cond_13e

    iget v5, v0, Landroid/view/ScaleGestureDetector;->mMinSpan:I

    int-to-float v5, v5

    cmpg-float v5, v1, v5

    if-ltz v5, :cond_135

    if-eqz v7, :cond_13e

    .line 369
    :cond_135
    iget-object v5, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v5, v0}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    .line 370
    iput-boolean v3, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    .line 371
    iput v1, v0, Landroid/view/ScaleGestureDetector;->mInitialSpan:F

    .line 373
    :cond_13e
    if-eqz v7, :cond_14e

    .line 374
    iput v10, v0, Landroid/view/ScaleGestureDetector;->mCurrSpanX:F

    iput v10, v0, Landroid/view/ScaleGestureDetector;->mPrevSpanX:F

    .line 375
    iput v13, v0, Landroid/view/ScaleGestureDetector;->mCurrSpanY:F

    iput v13, v0, Landroid/view/ScaleGestureDetector;->mPrevSpanY:F

    .line 376
    iput v1, v0, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    iput v1, v0, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    iput v1, v0, Landroid/view/ScaleGestureDetector;->mInitialSpan:F

    .line 379
    :cond_14e
    invoke-direct {v0}, Landroid/view/ScaleGestureDetector;->inAnchoredScaleMode()Z

    move-result v3

    if-eqz v3, :cond_157

    iget v3, v0, Landroid/view/ScaleGestureDetector;->mSpanSlop:I

    goto :goto_159

    :cond_157
    iget v3, v0, Landroid/view/ScaleGestureDetector;->mMinSpan:I

    .line 380
    :goto_159
    iget-boolean v5, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    if-nez v5, :cond_18b

    int-to-float v3, v3

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_18b

    if-nez v4, :cond_173

    iget v3, v0, Landroid/view/ScaleGestureDetector;->mInitialSpan:F

    sub-float v3, v1, v3

    .line 381
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, v0, Landroid/view/ScaleGestureDetector;->mSpanSlop:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_18b

    .line 382
    :cond_173
    iput v10, v0, Landroid/view/ScaleGestureDetector;->mCurrSpanX:F

    iput v10, v0, Landroid/view/ScaleGestureDetector;->mPrevSpanX:F

    .line 383
    iput v13, v0, Landroid/view/ScaleGestureDetector;->mCurrSpanY:F

    iput v13, v0, Landroid/view/ScaleGestureDetector;->mPrevSpanY:F

    .line 384
    iput v1, v0, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    iput v1, v0, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    .line 385
    iget-wide v3, v0, Landroid/view/ScaleGestureDetector;->mCurrTime:J

    iput-wide v3, v0, Landroid/view/ScaleGestureDetector;->mPrevTime:J

    .line 386
    iget-object v3, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v3, v0}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    move-result v3

    iput-boolean v3, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    .line 390
    :cond_18b
    if-ne v2, v8, :cond_1b2

    .line 391
    iput v10, v0, Landroid/view/ScaleGestureDetector;->mCurrSpanX:F

    .line 392
    iput v13, v0, Landroid/view/ScaleGestureDetector;->mCurrSpanY:F

    .line 393
    iput v1, v0, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    .line 395
    nop

    .line 397
    iget-boolean v1, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    if-eqz v1, :cond_19f

    .line 398
    iget-object v1, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v1, v0}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScale(Landroid/view/ScaleGestureDetector;)Z

    move-result v1

    goto :goto_1a0

    .line 397
    :cond_19f
    move v1, v6

    .line 401
    :goto_1a0
    if-eqz v1, :cond_1b2

    .line 402
    iget v1, v0, Landroid/view/ScaleGestureDetector;->mCurrSpanX:F

    iput v1, v0, Landroid/view/ScaleGestureDetector;->mPrevSpanX:F

    .line 403
    iget v1, v0, Landroid/view/ScaleGestureDetector;->mCurrSpanY:F

    iput v1, v0, Landroid/view/ScaleGestureDetector;->mPrevSpanY:F

    .line 404
    iget v1, v0, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    iput v1, v0, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    .line 405
    iget-wide v1, v0, Landroid/view/ScaleGestureDetector;->mCurrTime:J

    iput-wide v1, v0, Landroid/view/ScaleGestureDetector;->mPrevTime:J

    .line 409
    :cond_1b2
    return v6
.end method

.method public whitelist setQuickScaleEnabled(Z)V
    .registers 5

    .line 423
    iput-boolean p1, p0, Landroid/view/ScaleGestureDetector;->mQuickScaleEnabled:Z

    .line 424
    iget-boolean p1, p0, Landroid/view/ScaleGestureDetector;->mQuickScaleEnabled:Z

    if-eqz p1, :cond_1a

    iget-object p1, p0, Landroid/view/ScaleGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    if-nez p1, :cond_1a

    .line 425
    new-instance p1, Landroid/view/ScaleGestureDetector$1;

    invoke-direct {p1, p0}, Landroid/view/ScaleGestureDetector$1;-><init>(Landroid/view/ScaleGestureDetector;)V

    .line 436
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Landroid/view/ScaleGestureDetector;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/view/ScaleGestureDetector;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, p1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/view/ScaleGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    .line 438
    :cond_1a
    return-void
.end method

.method public whitelist setStylusScaleEnabled(Z)V
    .registers 2

    .line 456
    iput-boolean p1, p0, Landroid/view/ScaleGestureDetector;->mStylusScaleEnabled:Z

    .line 457
    return-void
.end method
