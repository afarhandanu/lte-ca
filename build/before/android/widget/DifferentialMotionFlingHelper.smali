.class public Landroid/widget/DifferentialMotionFlingHelper;
.super Ljava/lang/Object;
.source "DifferentialMotionFlingHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/DifferentialMotionFlingHelper$FlingVelocityThresholdCalculator;,
        Landroid/widget/DifferentialMotionFlingHelper$DifferentialVelocityProvider;,
        Landroid/widget/DifferentialMotionFlingHelper$DifferentialMotionFlingTarget;
    }
.end annotation


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mFlingVelocityThresholds:[I

.field private blacklist mLastFlingVelocity:F

.field private blacklist mLastProcessedAxis:I

.field private blacklist mLastProcessedDeviceId:I

.field private blacklist mLastProcessedSource:I

.field private final blacklist mTarget:Landroid/widget/DifferentialMotionFlingHelper$DifferentialMotionFlingTarget;

.field private final blacklist mVelocityProvider:Landroid/widget/DifferentialMotionFlingHelper$DifferentialVelocityProvider;

.field private final blacklist mVelocityThresholdCalculator:Landroid/widget/DifferentialMotionFlingHelper$FlingVelocityThresholdCalculator;

.field private blacklist mVelocityTracker:Landroid/view/VelocityTracker;

.field private final blacklist mWidgetFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/android/widget/flags/FeatureFlags;


# direct methods
.method public static synthetic blacklist $r8$lambda$GHhwo4cl8GfWqAIYz-C6onNp7jg(Landroid/view/VelocityTracker;Landroid/view/MotionEvent;I)F
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/widget/DifferentialMotionFlingHelper;->getCurrentVelocity(Landroid/view/VelocityTracker;Landroid/view/MotionEvent;I)F

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$_NOuhKwlceU5KPfxkBzj3xbxKNM(Landroid/content/Context;[ILandroid/view/MotionEvent;I)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/widget/DifferentialMotionFlingHelper;->calculateFlingVelocityThresholds(Landroid/content/Context;[ILandroid/view/MotionEvent;I)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/widget/DifferentialMotionFlingHelper$DifferentialMotionFlingTarget;)V
    .registers 9

    .line 138
    new-instance v3, Landroid/widget/DifferentialMotionFlingHelper$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Landroid/widget/DifferentialMotionFlingHelper$$ExternalSyntheticLambda0;-><init>()V

    new-instance v4, Landroid/widget/DifferentialMotionFlingHelper$$ExternalSyntheticLambda1;

    invoke-direct {v4}, Landroid/widget/DifferentialMotionFlingHelper$$ExternalSyntheticLambda1;-><init>()V

    new-instance v5, Lcom/android/internal/hidden_from_bootclasspath/android/widget/flags/FeatureFlagsImpl;

    invoke-direct {v5}, Lcom/android/internal/hidden_from_bootclasspath/android/widget/flags/FeatureFlagsImpl;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/DifferentialMotionFlingHelper;-><init>(Landroid/content/Context;Landroid/widget/DifferentialMotionFlingHelper$DifferentialMotionFlingTarget;Landroid/widget/DifferentialMotionFlingHelper$FlingVelocityThresholdCalculator;Landroid/widget/DifferentialMotionFlingHelper$DifferentialVelocityProvider;Lcom/android/internal/hidden_from_bootclasspath/android/widget/flags/FeatureFlags;)V

    .line 143
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/widget/DifferentialMotionFlingHelper$DifferentialMotionFlingTarget;Landroid/widget/DifferentialMotionFlingHelper$FlingVelocityThresholdCalculator;Landroid/widget/DifferentialMotionFlingHelper$DifferentialVelocityProvider;Lcom/android/internal/hidden_from_bootclasspath/android/widget/flags/FeatureFlags;)V
    .registers 8

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/DifferentialMotionFlingHelper;->mLastProcessedAxis:I

    .line 62
    iput v0, p0, Landroid/widget/DifferentialMotionFlingHelper;->mLastProcessedSource:I

    .line 63
    iput v0, p0, Landroid/widget/DifferentialMotionFlingHelper;->mLastProcessedDeviceId:I

    .line 66
    const v0, 0x7fffffff

    const/4 v1, 0x0

    filled-new-array {v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, Landroid/widget/DifferentialMotionFlingHelper;->mFlingVelocityThresholds:[I

    .line 152
    iput-object p1, p0, Landroid/widget/DifferentialMotionFlingHelper;->mContext:Landroid/content/Context;

    .line 153
    iput-object p2, p0, Landroid/widget/DifferentialMotionFlingHelper;->mTarget:Landroid/widget/DifferentialMotionFlingHelper$DifferentialMotionFlingTarget;

    .line 154
    iput-object p3, p0, Landroid/widget/DifferentialMotionFlingHelper;->mVelocityThresholdCalculator:Landroid/widget/DifferentialMotionFlingHelper$FlingVelocityThresholdCalculator;

    .line 155
    iput-object p4, p0, Landroid/widget/DifferentialMotionFlingHelper;->mVelocityProvider:Landroid/widget/DifferentialMotionFlingHelper$DifferentialVelocityProvider;

    .line 156
    iput-object p5, p0, Landroid/widget/DifferentialMotionFlingHelper;->mWidgetFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/android/widget/flags/FeatureFlags;

    .line 157
    return-void
.end method

.method private static blacklist calculateFlingVelocityThresholds(Landroid/content/Context;[ILandroid/view/MotionEvent;I)V
    .registers 7

    .line 231
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    .line 232
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result p2

    .line 234
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p0

    .line 235
    const/4 v1, 0x0

    invoke-virtual {p0, p2, p3, v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity(III)I

    move-result v2

    aput v2, p1, v1

    .line 236
    const/4 v1, 0x1

    invoke-virtual {p0, p2, p3, v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity(III)I

    move-result p0

    aput p0, p1, v1

    .line 237
    return-void
.end method

.method private blacklist calculateFlingVelocityThresholds(Landroid/view/MotionEvent;I)Z
    .registers 8

    .line 212
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    .line 213
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v1

    .line 214
    iget v2, p0, Landroid/widget/DifferentialMotionFlingHelper;->mLastProcessedSource:I

    if-ne v2, v0, :cond_17

    iget v2, p0, Landroid/widget/DifferentialMotionFlingHelper;->mLastProcessedDeviceId:I

    if-ne v2, v1, :cond_17

    iget v2, p0, Landroid/widget/DifferentialMotionFlingHelper;->mLastProcessedAxis:I

    if-eq v2, p2, :cond_15

    goto :goto_17

    .line 226
    :cond_15
    const/4 p1, 0x0

    return p1

    .line 217
    :cond_17
    :goto_17
    iget-object v2, p0, Landroid/widget/DifferentialMotionFlingHelper;->mVelocityThresholdCalculator:Landroid/widget/DifferentialMotionFlingHelper$FlingVelocityThresholdCalculator;

    iget-object v3, p0, Landroid/widget/DifferentialMotionFlingHelper;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/widget/DifferentialMotionFlingHelper;->mFlingVelocityThresholds:[I

    invoke-interface {v2, v3, v4, p1, p2}, Landroid/widget/DifferentialMotionFlingHelper$FlingVelocityThresholdCalculator;->calculateFlingVelocityThresholds(Landroid/content/Context;[ILandroid/view/MotionEvent;I)V

    .line 221
    iput v0, p0, Landroid/widget/DifferentialMotionFlingHelper;->mLastProcessedSource:I

    .line 222
    iput v1, p0, Landroid/widget/DifferentialMotionFlingHelper;->mLastProcessedDeviceId:I

    .line 223
    iput p2, p0, Landroid/widget/DifferentialMotionFlingHelper;->mLastProcessedAxis:I

    .line 224
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist getCurrentVelocity(Landroid/view/MotionEvent;I)F
    .registers 5

    .line 240
    iget-object v0, p0, Landroid/widget/DifferentialMotionFlingHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_a

    .line 241
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/DifferentialMotionFlingHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 244
    :cond_a
    iget-object v0, p0, Landroid/widget/DifferentialMotionFlingHelper;->mVelocityProvider:Landroid/widget/DifferentialMotionFlingHelper$DifferentialVelocityProvider;

    iget-object v1, p0, Landroid/widget/DifferentialMotionFlingHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-interface {v0, v1, p1, p2}, Landroid/widget/DifferentialMotionFlingHelper$DifferentialVelocityProvider;->getCurrentVelocity(Landroid/view/VelocityTracker;Landroid/view/MotionEvent;I)F

    move-result p1

    return p1
.end method

.method private static blacklist getCurrentVelocity(Landroid/view/VelocityTracker;Landroid/view/MotionEvent;I)F
    .registers 3

    .line 255
    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 256
    const/16 p1, 0x3e8

    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 257
    invoke-virtual {p0, p2}, Landroid/view/VelocityTracker;->getAxisVelocity(I)F

    move-result p0

    return p0
.end method

.method private blacklist recycleVelocityTracker()V
    .registers 2

    .line 248
    iget-object v0, p0, Landroid/widget/DifferentialMotionFlingHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_c

    .line 249
    iget-object v0, p0, Landroid/widget/DifferentialMotionFlingHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 250
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/DifferentialMotionFlingHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 252
    :cond_c
    return-void
.end method


# virtual methods
.method public blacklist onMotionEvent(Landroid/view/MotionEvent;I)V
    .registers 7

    .line 166
    iget-object v0, p0, Landroid/widget/DifferentialMotionFlingHelper;->mWidgetFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/android/widget/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/widget/flags/FeatureFlags;->enablePlatformWidgetDifferentialMotionFling()Z

    move-result v0

    if-nez v0, :cond_9

    .line 167
    return-void

    .line 169
    :cond_9
    invoke-direct {p0, p1, p2}, Landroid/widget/DifferentialMotionFlingHelper;->calculateFlingVelocityThresholds(Landroid/view/MotionEvent;I)Z

    move-result v0

    .line 170
    iget-object v1, p0, Landroid/widget/DifferentialMotionFlingHelper;->mFlingVelocityThresholds:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    const v3, 0x7fffffff

    if-ne v1, v3, :cond_1b

    .line 173
    invoke-direct {p0}, Landroid/widget/DifferentialMotionFlingHelper;->recycleVelocityTracker()V

    .line 174
    return-void

    .line 177
    :cond_1b
    nop

    .line 178
    invoke-direct {p0, p1, p2}, Landroid/widget/DifferentialMotionFlingHelper;->getCurrentVelocity(Landroid/view/MotionEvent;I)F

    move-result p1

    iget-object p2, p0, Landroid/widget/DifferentialMotionFlingHelper;->mTarget:Landroid/widget/DifferentialMotionFlingHelper$DifferentialMotionFlingTarget;

    invoke-interface {p2}, Landroid/widget/DifferentialMotionFlingHelper$DifferentialMotionFlingTarget;->getScaledScrollFactor()F

    move-result p2

    mul-float/2addr p1, p2

    .line 180
    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p2

    .line 183
    const/4 v1, 0x0

    if-nez v0, :cond_3c

    iget v0, p0, Landroid/widget/DifferentialMotionFlingHelper;->mLastFlingVelocity:F

    .line 184
    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_41

    cmpl-float p2, p2, v1

    if-eqz p2, :cond_41

    .line 186
    :cond_3c
    iget-object p2, p0, Landroid/widget/DifferentialMotionFlingHelper;->mTarget:Landroid/widget/DifferentialMotionFlingHelper$DifferentialMotionFlingTarget;

    invoke-interface {p2}, Landroid/widget/DifferentialMotionFlingHelper$DifferentialMotionFlingTarget;->stopDifferentialMotionFling()V

    .line 189
    :cond_41
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p2

    iget-object v0, p0, Landroid/widget/DifferentialMotionFlingHelper;->mFlingVelocityThresholds:[I

    aget v0, v0, v2

    int-to-float v0, v0

    cmpg-float p2, p2, v0

    if-gez p2, :cond_4f

    .line 190
    return-void

    .line 198
    :cond_4f
    iget-object p2, p0, Landroid/widget/DifferentialMotionFlingHelper;->mFlingVelocityThresholds:[I

    const/4 v0, 0x1

    aget p2, p2, v0

    neg-int p2, p2

    int-to-float p2, p2

    iget-object v2, p0, Landroid/widget/DifferentialMotionFlingHelper;->mFlingVelocityThresholds:[I

    aget v0, v2, v0

    int-to-float v0, v0

    .line 201
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 199
    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 203
    iget-object p2, p0, Landroid/widget/DifferentialMotionFlingHelper;->mTarget:Landroid/widget/DifferentialMotionFlingHelper$DifferentialMotionFlingTarget;

    invoke-interface {p2, p1}, Landroid/widget/DifferentialMotionFlingHelper$DifferentialMotionFlingTarget;->startDifferentialMotionFling(F)Z

    move-result p2

    .line 204
    if-eqz p2, :cond_6c

    move v1, p1

    :cond_6c
    iput v1, p0, Landroid/widget/DifferentialMotionFlingHelper;->mLastFlingVelocity:F

    .line 205
    return-void
.end method
