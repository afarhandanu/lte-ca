.class public Landroid/view/HapticScrollFeedbackProvider;
.super Ljava/lang/Object;
.source "HapticScrollFeedbackProvider.java"

# interfaces
.implements Landroid/view/ScrollFeedbackProvider;


# static fields
.field private static final blacklist INITIAL_END_OF_LIST_HAPTICS_ENABLED:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "HapticScrollFeedbackProvider"

.field private static final blacklist TICK_INTERVAL_NO_TICK:I


# instance fields
.field private blacklist mAxis:I

.field private blacklist mCanPlayLimitFeedback:Z

.field private blacklist mDeviceId:I

.field private blacklist mHapticScrollFeedbackEnabled:Z

.field private final blacklist mIsFromView:Z

.field private blacklist mSource:I

.field private blacklist mTickIntervalPixels:I

.field private blacklist mTotalScrollPixels:I

.field private final blacklist mView:Landroid/view/View;

.field private final blacklist mViewConfig:Landroid/view/ViewConfiguration;


# direct methods
.method public constructor blacklist <init>(Landroid/view/View;)V
    .registers 4

    .line 65
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/view/HapticScrollFeedbackProvider;-><init>(Landroid/view/View;Landroid/view/ViewConfiguration;Z)V

    .line 66
    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/View;Landroid/view/ViewConfiguration;Z)V
    .registers 5

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/HapticScrollFeedbackProvider;->mDeviceId:I

    .line 54
    iput v0, p0, Landroid/view/HapticScrollFeedbackProvider;->mAxis:I

    .line 56
    iput v0, p0, Landroid/view/HapticScrollFeedbackProvider;->mSource:I

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/HapticScrollFeedbackProvider;->mTickIntervalPixels:I

    .line 60
    iput v0, p0, Landroid/view/HapticScrollFeedbackProvider;->mTotalScrollPixels:I

    .line 61
    iput-boolean v0, p0, Landroid/view/HapticScrollFeedbackProvider;->mCanPlayLimitFeedback:Z

    .line 62
    iput-boolean v0, p0, Landroid/view/HapticScrollFeedbackProvider;->mHapticScrollFeedbackEnabled:Z

    .line 72
    iput-object p1, p0, Landroid/view/HapticScrollFeedbackProvider;->mView:Landroid/view/View;

    .line 73
    iput-object p2, p0, Landroid/view/HapticScrollFeedbackProvider;->mViewConfig:Landroid/view/ViewConfiguration;

    .line 74
    iput-boolean p3, p0, Landroid/view/HapticScrollFeedbackProvider;->mIsFromView:Z

    .line 75
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/Flags;->dynamicViewRotaryHapticsConfiguration()Z

    move-result p2

    if-eqz p2, :cond_24

    if-nez p3, :cond_24

    .line 80
    invoke-virtual {p1}, Landroid/view/View;->disableRotaryScrollFeedback()V

    .line 82
    :cond_24
    return-void
.end method

.method private blacklist maybeUpdateCurrentConfig(III)V
    .registers 6

    .line 139
    iget v0, p0, Landroid/view/HapticScrollFeedbackProvider;->mAxis:I

    if-ne v0, p3, :cond_c

    iget v0, p0, Landroid/view/HapticScrollFeedbackProvider;->mSource:I

    if-ne v0, p2, :cond_c

    iget v0, p0, Landroid/view/HapticScrollFeedbackProvider;->mDeviceId:I

    if-eq v0, p1, :cond_3b

    .line 140
    :cond_c
    iput p2, p0, Landroid/view/HapticScrollFeedbackProvider;->mSource:I

    .line 141
    iput p3, p0, Landroid/view/HapticScrollFeedbackProvider;->mAxis:I

    .line 142
    iput p1, p0, Landroid/view/HapticScrollFeedbackProvider;->mDeviceId:I

    .line 144
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/Flags;->dynamicViewRotaryHapticsConfiguration()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2c

    iget-boolean v0, p0, Landroid/view/HapticScrollFeedbackProvider;->mIsFromView:Z

    if-nez v0, :cond_2c

    const/high16 v0, 0x400000

    if-ne p2, v0, :cond_2c

    iget-object v0, p0, Landroid/view/HapticScrollFeedbackProvider;->mViewConfig:Landroid/view/ViewConfiguration;

    .line 147
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->isViewBasedRotaryEncoderHapticScrollFeedbackEnabled()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 148
    iput-boolean v1, p0, Landroid/view/HapticScrollFeedbackProvider;->mHapticScrollFeedbackEnabled:Z

    .line 149
    return-void

    .line 152
    :cond_2c
    iget-object v0, p0, Landroid/view/HapticScrollFeedbackProvider;->mViewConfig:Landroid/view/ViewConfiguration;

    .line 153
    invoke-virtual {v0, p1, p3, p2}, Landroid/view/ViewConfiguration;->isHapticScrollFeedbackEnabled(III)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/HapticScrollFeedbackProvider;->mHapticScrollFeedbackEnabled:Z

    .line 154
    iput-boolean v1, p0, Landroid/view/HapticScrollFeedbackProvider;->mCanPlayLimitFeedback:Z

    .line 155
    iput v1, p0, Landroid/view/HapticScrollFeedbackProvider;->mTotalScrollPixels:I

    .line 156
    invoke-direct {p0, p1, p2, p3}, Landroid/view/HapticScrollFeedbackProvider;->updateTickIntervals(III)V

    .line 158
    :cond_3b
    return-void
.end method

.method private blacklist updateTickIntervals(III)V
    .registers 5

    .line 161
    iget-boolean v0, p0, Landroid/view/HapticScrollFeedbackProvider;->mHapticScrollFeedbackEnabled:Z

    if-eqz v0, :cond_b

    .line 162
    iget-object v0, p0, Landroid/view/HapticScrollFeedbackProvider;->mViewConfig:Landroid/view/ViewConfiguration;

    invoke-virtual {v0, p1, p3, p2}, Landroid/view/ViewConfiguration;->getHapticScrollFeedbackTickInterval(III)I

    move-result p1

    goto :goto_c

    .line 163
    :cond_b
    const/4 p1, 0x0

    :goto_c
    iput p1, p0, Landroid/view/HapticScrollFeedbackProvider;->mTickIntervalPixels:I

    .line 164
    return-void
.end method


# virtual methods
.method public whitelist onScrollLimit(IIIZ)V
    .registers 6

    .line 113
    invoke-direct {p0, p1, p2, p3}, Landroid/view/HapticScrollFeedbackProvider;->maybeUpdateCurrentConfig(III)V

    .line 114
    iget-boolean p3, p0, Landroid/view/HapticScrollFeedbackProvider;->mHapticScrollFeedbackEnabled:Z

    if-nez p3, :cond_8

    .line 115
    return-void

    .line 118
    :cond_8
    iget-boolean p3, p0, Landroid/view/HapticScrollFeedbackProvider;->mCanPlayLimitFeedback:Z

    if-nez p3, :cond_d

    .line 119
    return-void

    .line 121
    :cond_d
    iget-object p3, p0, Landroid/view/HapticScrollFeedbackProvider;->mView:Landroid/view/View;

    const/16 p4, 0x14

    const/4 v0, 0x0

    invoke-virtual {p3, p4, p1, p2, v0}, Landroid/view/View;->performHapticFeedbackForInputDevice(IIII)V

    .line 123
    iput-boolean v0, p0, Landroid/view/HapticScrollFeedbackProvider;->mCanPlayLimitFeedback:Z

    .line 124
    return-void
.end method

.method public whitelist onScrollProgress(IIII)V
    .registers 6

    .line 86
    invoke-direct {p0, p1, p2, p3}, Landroid/view/HapticScrollFeedbackProvider;->maybeUpdateCurrentConfig(III)V

    .line 87
    iget-boolean p3, p0, Landroid/view/HapticScrollFeedbackProvider;->mHapticScrollFeedbackEnabled:Z

    if-nez p3, :cond_8

    .line 88
    return-void

    .line 93
    :cond_8
    if-eqz p4, :cond_d

    .line 94
    const/4 p3, 0x1

    iput-boolean p3, p0, Landroid/view/HapticScrollFeedbackProvider;->mCanPlayLimitFeedback:Z

    .line 97
    :cond_d
    iget p3, p0, Landroid/view/HapticScrollFeedbackProvider;->mTickIntervalPixels:I

    if-nez p3, :cond_12

    .line 99
    return-void

    .line 102
    :cond_12
    iget p3, p0, Landroid/view/HapticScrollFeedbackProvider;->mTotalScrollPixels:I

    add-int/2addr p3, p4

    iput p3, p0, Landroid/view/HapticScrollFeedbackProvider;->mTotalScrollPixels:I

    .line 104
    iget p3, p0, Landroid/view/HapticScrollFeedbackProvider;->mTotalScrollPixels:I

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    iget p4, p0, Landroid/view/HapticScrollFeedbackProvider;->mTickIntervalPixels:I

    if-lt p3, p4, :cond_30

    .line 105
    iget p3, p0, Landroid/view/HapticScrollFeedbackProvider;->mTotalScrollPixels:I

    iget p4, p0, Landroid/view/HapticScrollFeedbackProvider;->mTickIntervalPixels:I

    rem-int/2addr p3, p4

    iput p3, p0, Landroid/view/HapticScrollFeedbackProvider;->mTotalScrollPixels:I

    .line 106
    iget-object p3, p0, Landroid/view/HapticScrollFeedbackProvider;->mView:Landroid/view/View;

    const/16 p4, 0x12

    const/4 v0, 0x0

    invoke-virtual {p3, p4, p1, p2, v0}, Landroid/view/View;->performHapticFeedbackForInputDevice(IIII)V

    .line 109
    :cond_30
    return-void
.end method

.method public whitelist onSnapToItem(III)V
    .registers 6

    .line 128
    invoke-direct {p0, p1, p2, p3}, Landroid/view/HapticScrollFeedbackProvider;->maybeUpdateCurrentConfig(III)V

    .line 129
    iget-boolean p3, p0, Landroid/view/HapticScrollFeedbackProvider;->mHapticScrollFeedbackEnabled:Z

    if-nez p3, :cond_8

    .line 130
    return-void

    .line 132
    :cond_8
    iget-object p3, p0, Landroid/view/HapticScrollFeedbackProvider;->mView:Landroid/view/View;

    const/16 v0, 0x13

    const/4 v1, 0x0

    invoke-virtual {p3, v0, p1, p2, v1}, Landroid/view/View;->performHapticFeedbackForInputDevice(IIII)V

    .line 135
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/view/HapticScrollFeedbackProvider;->mCanPlayLimitFeedback:Z

    .line 136
    return-void
.end method
