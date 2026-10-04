.class Landroid/view/HdrRenderState;
.super Ljava/lang/Object;
.source "HdrRenderState.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Landroid/view/Display;",
        ">;"
    }
.end annotation


# static fields
.field private static final blacklist TRANSITION_PER_MS:F = 0.01f


# instance fields
.field private blacklist mDesiredHdrSdrRatio:F

.field private blacklist mIsHdrEnabled:Z

.field private blacklist mIsListenerRegistered:Z

.field private blacklist mLastUpdateMillis:J

.field private blacklist mPreviousRenderRatio:F

.field private blacklist mRenderHdrSdrRatio:F

.field private blacklist mTargetDesiredHdrSdrRatio:F

.field private blacklist mTargetHdrSdrRatio:F

.field private blacklist mUpdateHdrSdrRatioInfo:Z

.field private final blacklist mViewRoot:Landroid/view/ViewRootImpl;


# direct methods
.method constructor blacklist <init>(Landroid/view/ViewRootImpl;)V
    .registers 4

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/HdrRenderState;->mIsHdrEnabled:Z

    .line 31
    iput-boolean v0, p0, Landroid/view/HdrRenderState;->mIsListenerRegistered:Z

    .line 32
    iput-boolean v0, p0, Landroid/view/HdrRenderState;->mUpdateHdrSdrRatioInfo:Z

    .line 33
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/view/HdrRenderState;->mDesiredHdrSdrRatio:F

    .line 34
    iput v0, p0, Landroid/view/HdrRenderState;->mTargetDesiredHdrSdrRatio:F

    .line 35
    iput v0, p0, Landroid/view/HdrRenderState;->mTargetHdrSdrRatio:F

    .line 36
    iput v0, p0, Landroid/view/HdrRenderState;->mRenderHdrSdrRatio:F

    .line 37
    iput v0, p0, Landroid/view/HdrRenderState;->mPreviousRenderRatio:F

    .line 38
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/view/HdrRenderState;->mLastUpdateMillis:J

    .line 41
    iput-object p1, p0, Landroid/view/HdrRenderState;->mViewRoot:Landroid/view/ViewRootImpl;

    .line 42
    return-void
.end method


# virtual methods
.method public blacklist accept(Landroid/view/Display;)V
    .registers 2

    .line 46
    invoke-virtual {p0}, Landroid/view/HdrRenderState;->forceUpdateHdrSdrRatio()V

    .line 47
    iget-object p1, p0, Landroid/view/HdrRenderState;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {p1}, Landroid/view/ViewRootImpl;->invalidate()V

    .line 48
    return-void
.end method

.method public bridge synthetic whitelist test-api accept(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 24
    check-cast p1, Landroid/view/Display;

    invoke-virtual {p0, p1}, Landroid/view/HdrRenderState;->accept(Landroid/view/Display;)V

    return-void
.end method

.method blacklist forceUpdateHdrSdrRatio()V
    .registers 3

    .line 112
    invoke-virtual {p0}, Landroid/view/HdrRenderState;->isHdrEnabled()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 113
    iget v0, p0, Landroid/view/HdrRenderState;->mDesiredHdrSdrRatio:F

    iget-object v1, p0, Landroid/view/HdrRenderState;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    .line 114
    invoke-virtual {v1}, Landroid/view/Display;->getHdrSdrRatio()F

    move-result v1

    .line 113
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Landroid/view/HdrRenderState;->mTargetHdrSdrRatio:F

    goto :goto_1b

    .line 116
    :cond_17
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/view/HdrRenderState;->mTargetHdrSdrRatio:F

    .line 118
    :goto_1b
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/HdrRenderState;->mUpdateHdrSdrRatioInfo:Z

    .line 119
    return-void
.end method

.method blacklist getDesiredHdrSdrRatio()F
    .registers 2

    .line 104
    iget v0, p0, Landroid/view/HdrRenderState;->mDesiredHdrSdrRatio:F

    return v0
.end method

.method blacklist getRenderHdrSdrRatio()F
    .registers 2

    .line 108
    iget v0, p0, Landroid/view/HdrRenderState;->mRenderHdrSdrRatio:F

    return v0
.end method

.method blacklist isHdrEnabled()Z
    .registers 2

    .line 51
    iget-boolean v0, p0, Landroid/view/HdrRenderState;->mIsHdrEnabled:Z

    return v0
.end method

.method blacklist setDesiredHdrSdrRatio(ZF)V
    .registers 5

    .line 122
    iput-boolean p1, p0, Landroid/view/HdrRenderState;->mIsHdrEnabled:Z

    .line 123
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/HdrRenderState;->mLastUpdateMillis:J

    .line 124
    iget p1, p0, Landroid/view/HdrRenderState;->mTargetDesiredHdrSdrRatio:F

    cmpl-float p1, p2, p1

    if-eqz p1, :cond_31

    .line 125
    iput p2, p0, Landroid/view/HdrRenderState;->mTargetDesiredHdrSdrRatio:F

    .line 126
    iget p1, p0, Landroid/view/HdrRenderState;->mTargetDesiredHdrSdrRatio:F

    iget p2, p0, Landroid/view/HdrRenderState;->mDesiredHdrSdrRatio:F

    cmpl-float p1, p1, p2

    if-lez p1, :cond_1c

    .line 127
    iget p1, p0, Landroid/view/HdrRenderState;->mTargetDesiredHdrSdrRatio:F

    iput p1, p0, Landroid/view/HdrRenderState;->mDesiredHdrSdrRatio:F

    .line 129
    :cond_1c
    invoke-virtual {p0}, Landroid/view/HdrRenderState;->forceUpdateHdrSdrRatio()V

    .line 130
    iget-object p1, p0, Landroid/view/HdrRenderState;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {p1}, Landroid/view/ViewRootImpl;->invalidate()V

    .line 132
    invoke-virtual {p0}, Landroid/view/HdrRenderState;->isHdrEnabled()Z

    move-result p1

    if-eqz p1, :cond_2e

    .line 133
    invoke-virtual {p0}, Landroid/view/HdrRenderState;->startListening()V

    goto :goto_31

    .line 135
    :cond_2e
    invoke-virtual {p0}, Landroid/view/HdrRenderState;->stopListening()V

    .line 138
    :cond_31
    :goto_31
    return-void
.end method

.method blacklist startListening()V
    .registers 3

    .line 62
    invoke-virtual {p0}, Landroid/view/HdrRenderState;->isHdrEnabled()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-boolean v0, p0, Landroid/view/HdrRenderState;->mIsListenerRegistered:Z

    if-nez v0, :cond_1e

    iget-object v0, p0, Landroid/view/HdrRenderState;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    if-eqz v0, :cond_1e

    .line 63
    iget-object v0, p0, Landroid/view/HdrRenderState;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    iget-object v1, p0, Landroid/view/HdrRenderState;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, p0}, Landroid/view/Display;->registerHdrSdrRatioChangedListener(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/HdrRenderState;->mIsListenerRegistered:Z

    .line 66
    :cond_1e
    return-void
.end method

.method blacklist stopListening()V
    .registers 2

    .line 55
    iget-boolean v0, p0, Landroid/view/HdrRenderState;->mIsListenerRegistered:Z

    if-eqz v0, :cond_e

    .line 56
    iget-object v0, p0, Landroid/view/HdrRenderState;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0, p0}, Landroid/view/Display;->unregisterHdrSdrRatioChangedListener(Ljava/util/function/Consumer;)V

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/HdrRenderState;->mIsListenerRegistered:Z

    .line 59
    :cond_e
    return-void
.end method

.method blacklist updateForFrame(J)Z
    .registers 8

    .line 70
    iget-boolean v0, p0, Landroid/view/HdrRenderState;->mUpdateHdrSdrRatioInfo:Z

    .line 71
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/HdrRenderState;->mUpdateHdrSdrRatioInfo:Z

    .line 72
    iget v1, p0, Landroid/view/HdrRenderState;->mTargetHdrSdrRatio:F

    iput v1, p0, Landroid/view/HdrRenderState;->mRenderHdrSdrRatio:F

    .line 73
    iget-wide v1, p0, Landroid/view/HdrRenderState;->mLastUpdateMillis:J

    sub-long v1, p1, v1

    const-wide/16 v3, 0x20

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    const-wide/16 v3, 0x8

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 74
    long-to-float v1, v1

    const v2, 0x3c23d70a    # 0.01f

    mul-float/2addr v1, v2

    .line 75
    iput-wide p1, p0, Landroid/view/HdrRenderState;->mLastUpdateMillis:J

    .line 76
    if-eqz v0, :cond_6d

    .line 77
    invoke-virtual {p0}, Landroid/view/HdrRenderState;->isHdrEnabled()Z

    move-result p1

    if-eqz p1, :cond_65

    .line 78
    iget p1, p0, Landroid/view/HdrRenderState;->mTargetHdrSdrRatio:F

    iget p2, p0, Landroid/view/HdrRenderState;->mPreviousRenderRatio:F

    sub-float/2addr p1, p2

    .line 79
    cmpl-float p1, p1, v1

    const/4 p2, 0x1

    if-lez p1, :cond_3e

    .line 80
    iget p1, p0, Landroid/view/HdrRenderState;->mPreviousRenderRatio:F

    add-float/2addr p1, v1

    iput p1, p0, Landroid/view/HdrRenderState;->mRenderHdrSdrRatio:F

    .line 81
    iput-boolean p2, p0, Landroid/view/HdrRenderState;->mUpdateHdrSdrRatioInfo:Z

    .line 82
    iget-object p1, p0, Landroid/view/HdrRenderState;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {p1}, Landroid/view/ViewRootImpl;->invalidate()V

    .line 84
    :cond_3e
    iget p1, p0, Landroid/view/HdrRenderState;->mRenderHdrSdrRatio:F

    iput p1, p0, Landroid/view/HdrRenderState;->mPreviousRenderRatio:F

    .line 86
    iget p1, p0, Landroid/view/HdrRenderState;->mTargetDesiredHdrSdrRatio:F

    iget v2, p0, Landroid/view/HdrRenderState;->mDesiredHdrSdrRatio:F

    cmpg-float p1, p1, v2

    if-gez p1, :cond_64

    .line 87
    iget p1, p0, Landroid/view/HdrRenderState;->mTargetDesiredHdrSdrRatio:F

    iget v2, p0, Landroid/view/HdrRenderState;->mDesiredHdrSdrRatio:F

    sub-float/2addr v2, v1

    invoke-static {p1, v2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Landroid/view/HdrRenderState;->mDesiredHdrSdrRatio:F

    .line 89
    iget p1, p0, Landroid/view/HdrRenderState;->mDesiredHdrSdrRatio:F

    iget v1, p0, Landroid/view/HdrRenderState;->mTargetDesiredHdrSdrRatio:F

    cmpl-float p1, p1, v1

    if-eqz p1, :cond_64

    .line 90
    iput-boolean p2, p0, Landroid/view/HdrRenderState;->mUpdateHdrSdrRatioInfo:Z

    .line 91
    iget-object p1, p0, Landroid/view/HdrRenderState;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {p1}, Landroid/view/ViewRootImpl;->invalidate()V

    .line 95
    :cond_64
    goto :goto_6d

    .line 96
    :cond_65
    iget p1, p0, Landroid/view/HdrRenderState;->mTargetHdrSdrRatio:F

    iput p1, p0, Landroid/view/HdrRenderState;->mPreviousRenderRatio:F

    .line 97
    iget p1, p0, Landroid/view/HdrRenderState;->mTargetDesiredHdrSdrRatio:F

    iput p1, p0, Landroid/view/HdrRenderState;->mDesiredHdrSdrRatio:F

    .line 100
    :cond_6d
    :goto_6d
    return v0
.end method
