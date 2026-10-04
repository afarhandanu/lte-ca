.class public Landroid/window/BackTouchTracker;
.super Ljava/lang/Object;
.source "BackTouchTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/BackTouchTracker$TouchTrackerState;
    }
.end annotation


# static fields
.field private static final blacklist LINEAR_DISTANCE:I

.field private static final blacklist PREDICTIVE_BACK_LINEAR_DISTANCE_PROP:Ljava/lang/String; = "persist.wm.debug.predictive_back_linear_distance"


# instance fields
.field private blacklist mInitTouchX:F

.field private blacklist mInitTouchY:F

.field private blacklist mIsInterceptedMotionEvent:Z

.field private blacklist mLatestTouchX:F

.field private blacklist mLatestTouchY:F

.field private blacklist mLinearDistance:F

.field private blacklist mMaxDistance:F

.field private blacklist mNonLinearFactor:F

.field private blacklist mShouldUpdateStartLocation:Z

.field private blacklist mStartThresholdX:F

.field private blacklist mState:Landroid/window/BackTouchTracker$TouchTrackerState;

.field private blacklist mSwipeEdge:I

.field private blacklist mTriggerBack:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 33
    nop

    .line 34
    const-string/jumbo v0, "persist.wm.debug.predictive_back_linear_distance"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/window/BackTouchTracker;->LINEAR_DISTANCE:I

    .line 33
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    sget v0, Landroid/window/BackTouchTracker;->LINEAR_DISTANCE:I

    int-to-float v0, v0

    iput v0, p0, Landroid/window/BackTouchTracker;->mLinearDistance:F

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/window/BackTouchTracker;->mShouldUpdateStartLocation:Z

    .line 53
    sget-object v0, Landroid/window/BackTouchTracker$TouchTrackerState;->INITIAL:Landroid/window/BackTouchTracker$TouchTrackerState;

    iput-object v0, p0, Landroid/window/BackTouchTracker;->mState:Landroid/window/BackTouchTracker$TouchTrackerState;

    return-void
.end method


# virtual methods
.method public blacklist createProgressEvent()Landroid/window/BackMotionEvent;
    .registers 2

    .line 187
    iget v0, p0, Landroid/window/BackTouchTracker;->mLatestTouchX:F

    invoke-virtual {p0, v0}, Landroid/window/BackTouchTracker;->getProgress(F)F

    move-result v0

    .line 188
    invoke-virtual {p0, v0}, Landroid/window/BackTouchTracker;->createProgressEvent(F)Landroid/window/BackMotionEvent;

    move-result-object v0

    return-object v0
.end method

.method public blacklist createProgressEvent(F)Landroid/window/BackMotionEvent;
    .registers 10

    .line 260
    new-instance v0, Landroid/window/BackMotionEvent;

    iget v1, p0, Landroid/window/BackTouchTracker;->mLatestTouchX:F

    iget v2, p0, Landroid/window/BackTouchTracker;->mLatestTouchY:F

    iget-boolean v6, p0, Landroid/window/BackTouchTracker;->mTriggerBack:Z

    iget v7, p0, Landroid/window/BackTouchTracker;->mSwipeEdge:I

    const-wide/16 v3, 0x0

    move v5, p1

    invoke-direct/range {v0 .. v7}, Landroid/window/BackMotionEvent;-><init>(FFJFZI)V

    return-object v0
.end method

.method public blacklist createStartEvent()Landroid/window/BackMotionEvent;
    .registers 9

    .line 176
    new-instance v0, Landroid/window/BackMotionEvent;

    iget v1, p0, Landroid/window/BackTouchTracker;->mInitTouchX:F

    iget v2, p0, Landroid/window/BackTouchTracker;->mInitTouchY:F

    iget-boolean v6, p0, Landroid/window/BackTouchTracker;->mTriggerBack:Z

    iget v7, p0, Landroid/window/BackTouchTracker;->mSwipeEdge:I

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/window/BackMotionEvent;-><init>(FFJFZI)V

    return-object v0
.end method

.method public blacklist dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "BackTouchTracker state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  mState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/BackTouchTracker;->mState:Landroid/window/BackTouchTracker$TouchTrackerState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "  mTriggerBack="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-boolean v0, p0, Landroid/window/BackTouchTracker;->mTriggerBack:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 286
    return-void
.end method

.method public blacklist getLinearDistance()F
    .registers 2

    .line 251
    iget v0, p0, Landroid/window/BackTouchTracker;->mLinearDistance:F

    return v0
.end method

.method public blacklist getMaxDistance()F
    .registers 2

    .line 247
    iget v0, p0, Landroid/window/BackTouchTracker;->mMaxDistance:F

    return v0
.end method

.method public blacklist getNonLinearFactor()F
    .registers 2

    .line 255
    iget v0, p0, Landroid/window/BackTouchTracker;->mNonLinearFactor:F

    return v0
.end method

.method public blacklist getProgress(F)F
    .registers 9

    .line 204
    iget-boolean v0, p0, Landroid/window/BackTouchTracker;->mTriggerBack:Z

    if-eqz v0, :cond_7

    iget v0, p0, Landroid/window/BackTouchTracker;->mInitTouchX:F

    goto :goto_9

    :cond_7
    iget v0, p0, Landroid/window/BackTouchTracker;->mStartThresholdX:F

    .line 206
    :goto_9
    iget v1, p0, Landroid/window/BackTouchTracker;->mSwipeEdge:I

    if-nez v1, :cond_f

    .line 207
    sub-float/2addr p1, v0

    goto :goto_11

    .line 209
    :cond_f
    sub-float p1, v0, p1

    .line 211
    :goto_11
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 212
    iget v1, p0, Landroid/window/BackTouchTracker;->mLinearDistance:F

    .line 213
    invoke-virtual {p0}, Landroid/window/BackTouchTracker;->getMaxDistance()F

    move-result v2

    .line 214
    cmpl-float v3, v2, v0

    const/high16 v4, 0x3f800000    # 1.0f

    if-nez v3, :cond_23

    move v2, v4

    .line 216
    :cond_23
    cmpg-float v3, v1, v2

    if-gez v3, :cond_41

    .line 220
    sub-float v3, v2, v1

    .line 221
    iget v5, p0, Landroid/window/BackTouchTracker;->mNonLinearFactor:F

    mul-float/2addr v5, v3

    add-float/2addr v5, v1

    .line 223
    cmpg-float v6, p1, v1

    if-gtz v6, :cond_33

    const/4 v6, 0x1

    goto :goto_34

    :cond_33
    const/4 v6, 0x0

    .line 224
    :goto_34
    if-eqz v6, :cond_38

    .line 225
    div-float/2addr p1, v5

    goto :goto_40

    .line 227
    :cond_38
    sub-float v1, p1, v1

    .line 228
    div-float/2addr v1, v3

    .line 229
    invoke-static {v5, v2, v1}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v1

    .line 233
    div-float/2addr p1, v1

    .line 235
    :goto_40
    goto :goto_42

    .line 237
    :cond_41
    div-float/2addr p1, v2

    .line 239
    :goto_42
    invoke-static {p1, v0, v4}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p1

    return p1
.end method

.method public blacklist getTriggerBack()Z
    .registers 2

    .line 86
    iget-boolean v0, p0, Landroid/window/BackTouchTracker;->mTriggerBack:Z

    return v0
.end method

.method public blacklist isActive()Z
    .registers 3

    .line 112
    iget-object v0, p0, Landroid/window/BackTouchTracker;->mState:Landroid/window/BackTouchTracker$TouchTrackerState;

    sget-object v1, Landroid/window/BackTouchTracker$TouchTrackerState;->ACTIVE:Landroid/window/BackTouchTracker$TouchTrackerState;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist isFinished()Z
    .registers 3

    .line 117
    iget-object v0, p0, Landroid/window/BackTouchTracker;->mState:Landroid/window/BackTouchTracker$TouchTrackerState;

    sget-object v1, Landroid/window/BackTouchTracker$TouchTrackerState;->FINISHED:Landroid/window/BackTouchTracker$TouchTrackerState;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist isInInitialState()Z
    .registers 3

    .line 107
    iget-object v0, p0, Landroid/window/BackTouchTracker;->mState:Landroid/window/BackTouchTracker$TouchTrackerState;

    sget-object v1, Landroid/window/BackTouchTracker$TouchTrackerState;->INITIAL:Landroid/window/BackTouchTracker$TouchTrackerState;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist isInterceptedMotionEvent()Z
    .registers 2

    .line 124
    iget-boolean v0, p0, Landroid/window/BackTouchTracker;->mIsInterceptedMotionEvent:Z

    return v0
.end method

.method public blacklist reset()V
    .registers 3

    .line 164
    const/4 v0, 0x0

    iput v0, p0, Landroid/window/BackTouchTracker;->mInitTouchX:F

    .line 165
    iput v0, p0, Landroid/window/BackTouchTracker;->mInitTouchY:F

    .line 166
    iput v0, p0, Landroid/window/BackTouchTracker;->mStartThresholdX:F

    .line 167
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/window/BackTouchTracker;->mTriggerBack:Z

    .line 168
    sget-object v1, Landroid/window/BackTouchTracker$TouchTrackerState;->INITIAL:Landroid/window/BackTouchTracker$TouchTrackerState;

    iput-object v1, p0, Landroid/window/BackTouchTracker;->mState:Landroid/window/BackTouchTracker$TouchTrackerState;

    .line 169
    iput v0, p0, Landroid/window/BackTouchTracker;->mSwipeEdge:I

    .line 170
    iput-boolean v0, p0, Landroid/window/BackTouchTracker;->mShouldUpdateStartLocation:Z

    .line 171
    iput-boolean v0, p0, Landroid/window/BackTouchTracker;->mIsInterceptedMotionEvent:Z

    .line 172
    return-void
.end method

.method public blacklist setGestureStartLocation(FFI)V
    .registers 4

    .line 136
    iput p1, p0, Landroid/window/BackTouchTracker;->mInitTouchX:F

    .line 137
    iput p2, p0, Landroid/window/BackTouchTracker;->mInitTouchY:F

    .line 138
    iput p1, p0, Landroid/window/BackTouchTracker;->mLatestTouchX:F

    .line 139
    iput p2, p0, Landroid/window/BackTouchTracker;->mLatestTouchY:F

    .line 140
    iput p3, p0, Landroid/window/BackTouchTracker;->mSwipeEdge:I

    .line 141
    iget p1, p0, Landroid/window/BackTouchTracker;->mInitTouchX:F

    iput p1, p0, Landroid/window/BackTouchTracker;->mStartThresholdX:F

    .line 142
    return-void
.end method

.method public blacklist setMotionEventIntercepted()V
    .registers 2

    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/window/BackTouchTracker;->mIsInterceptedMotionEvent:Z

    .line 132
    return-void
.end method

.method public blacklist setProgressThresholds(FFF)V
    .registers 5

    .line 272
    sget v0, Landroid/window/BackTouchTracker;->LINEAR_DISTANCE:I

    if-ltz v0, :cond_a

    .line 273
    sget p1, Landroid/window/BackTouchTracker;->LINEAR_DISTANCE:I

    int-to-float p1, p1

    iput p1, p0, Landroid/window/BackTouchTracker;->mLinearDistance:F

    goto :goto_c

    .line 275
    :cond_a
    iput p1, p0, Landroid/window/BackTouchTracker;->mLinearDistance:F

    .line 277
    :goto_c
    iput p2, p0, Landroid/window/BackTouchTracker;->mMaxDistance:F

    .line 278
    iput p3, p0, Landroid/window/BackTouchTracker;->mNonLinearFactor:F

    .line 279
    return-void
.end method

.method public blacklist setShouldUpdateStartLocation(Z)V
    .registers 2

    .line 97
    iput-boolean p1, p0, Landroid/window/BackTouchTracker;->mShouldUpdateStartLocation:Z

    .line 98
    return-void
.end method

.method public blacklist setState(Landroid/window/BackTouchTracker$TouchTrackerState;)V
    .registers 2

    .line 102
    iput-object p1, p0, Landroid/window/BackTouchTracker;->mState:Landroid/window/BackTouchTracker$TouchTrackerState;

    .line 103
    return-void
.end method

.method public blacklist setTriggerBack(Z)V
    .registers 3

    .line 78
    iget-boolean v0, p0, Landroid/window/BackTouchTracker;->mTriggerBack:Z

    if-eq v0, p1, :cond_a

    if-nez p1, :cond_a

    .line 79
    iget v0, p0, Landroid/window/BackTouchTracker;->mLatestTouchX:F

    iput v0, p0, Landroid/window/BackTouchTracker;->mStartThresholdX:F

    .line 81
    :cond_a
    iput-boolean p1, p0, Landroid/window/BackTouchTracker;->mTriggerBack:Z

    .line 82
    return-void
.end method

.method public blacklist shouldUpdateStartLocation()Z
    .registers 2

    .line 92
    iget-boolean v0, p0, Landroid/window/BackTouchTracker;->mShouldUpdateStartLocation:Z

    return v0
.end method

.method public blacklist update(FF)V
    .registers 6

    .line 64
    iget v0, p0, Landroid/window/BackTouchTracker;->mStartThresholdX:F

    cmpg-float v0, p1, v0

    const/4 v1, 0x1

    if-gez v0, :cond_b

    iget v0, p0, Landroid/window/BackTouchTracker;->mSwipeEdge:I

    if-eqz v0, :cond_15

    :cond_b
    iget v0, p0, Landroid/window/BackTouchTracker;->mStartThresholdX:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_33

    iget v0, p0, Landroid/window/BackTouchTracker;->mSwipeEdge:I

    if-ne v0, v1, :cond_33

    .line 66
    :cond_15
    iput p1, p0, Landroid/window/BackTouchTracker;->mStartThresholdX:F

    .line 67
    iget v0, p0, Landroid/window/BackTouchTracker;->mSwipeEdge:I

    if-nez v0, :cond_23

    iget v0, p0, Landroid/window/BackTouchTracker;->mStartThresholdX:F

    iget v2, p0, Landroid/window/BackTouchTracker;->mInitTouchX:F

    cmpg-float v0, v0, v2

    if-ltz v0, :cond_2f

    :cond_23
    iget v0, p0, Landroid/window/BackTouchTracker;->mSwipeEdge:I

    if-ne v0, v1, :cond_33

    iget v0, p0, Landroid/window/BackTouchTracker;->mStartThresholdX:F

    iget v1, p0, Landroid/window/BackTouchTracker;->mInitTouchX:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_33

    .line 69
    :cond_2f
    iget v0, p0, Landroid/window/BackTouchTracker;->mStartThresholdX:F

    iput v0, p0, Landroid/window/BackTouchTracker;->mInitTouchX:F

    .line 72
    :cond_33
    iput p1, p0, Landroid/window/BackTouchTracker;->mLatestTouchX:F

    .line 73
    iput p2, p0, Landroid/window/BackTouchTracker;->mLatestTouchY:F

    .line 74
    return-void
.end method

.method public blacklist updateStartLocation()V
    .registers 2

    .line 146
    iget v0, p0, Landroid/window/BackTouchTracker;->mLatestTouchX:F

    iput v0, p0, Landroid/window/BackTouchTracker;->mInitTouchX:F

    .line 147
    iget v0, p0, Landroid/window/BackTouchTracker;->mLatestTouchY:F

    iput v0, p0, Landroid/window/BackTouchTracker;->mInitTouchY:F

    .line 148
    iget v0, p0, Landroid/window/BackTouchTracker;->mInitTouchX:F

    iput v0, p0, Landroid/window/BackTouchTracker;->mStartThresholdX:F

    .line 149
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/window/BackTouchTracker;->mShouldUpdateStartLocation:Z

    .line 150
    return-void
.end method

.method public blacklist updateSwipeEdge(I)V
    .registers 2

    .line 159
    iput p1, p0, Landroid/window/BackTouchTracker;->mSwipeEdge:I

    .line 160
    return-void
.end method
