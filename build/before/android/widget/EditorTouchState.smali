.class public Landroid/widget/EditorTouchState;
.super Ljava/lang/Object;
.source "EditorTouchState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/EditorTouchState$MultiTapStatus;
    }
.end annotation


# instance fields
.field private blacklist mInitialDragDirectionXYRatio:F

.field private blacklist mIsOnHandle:Z

.field private blacklist mLastDownMillis:J

.field private blacklist mLastDownX:F

.field private blacklist mLastDownY:F

.field private blacklist mLastUpMillis:J

.field private blacklist mLastUpX:F

.field private blacklist mLastUpY:F

.field private blacklist mMovedEnoughForDrag:Z

.field private blacklist mMultiTapInSameArea:Z

.field private blacklist mMultiTapStatus:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/EditorTouchState;->mMultiTapStatus:I

    return-void
.end method

.method public static blacklist getXYRatio(I)F
    .registers 3

    .line 237
    if-gtz p0, :cond_4

    .line 238
    const/4 p0, 0x0

    return p0

    .line 240
    :cond_4
    const/16 v0, 0x5a

    if-lt p0, v0, :cond_c

    .line 241
    const p0, 0x7f7fffff    # Float.MAX_VALUE

    return p0

    .line 243
    :cond_c
    int-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public static blacklist isDistanceWithin(FFFFI)Z
    .registers 5

    .line 217
    sub-float/2addr p2, p0

    .line 218
    sub-float/2addr p3, p1

    .line 219
    mul-float/2addr p2, p2

    mul-float/2addr p3, p3

    add-float/2addr p2, p3

    .line 220
    mul-int/2addr p4, p4

    int-to-float p0, p4

    cmpg-float p0, p2, p0

    if-gtz p0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return p0
.end method


# virtual methods
.method public blacklist getInitialDragDirectionXYRatio()F
    .registers 2

    .line 118
    iget v0, p0, Landroid/widget/EditorTouchState;->mInitialDragDirectionXYRatio:F

    return v0
.end method

.method public blacklist getLastDownX()F
    .registers 2

    .line 66
    iget v0, p0, Landroid/widget/EditorTouchState;->mLastDownX:F

    return v0
.end method

.method public blacklist getLastDownY()F
    .registers 2

    .line 70
    iget v0, p0, Landroid/widget/EditorTouchState;->mLastDownY:F

    return v0
.end method

.method public blacklist getLastUpX()F
    .registers 2

    .line 74
    iget v0, p0, Landroid/widget/EditorTouchState;->mLastUpX:F

    return v0
.end method

.method public blacklist getLastUpY()F
    .registers 2

    .line 78
    iget v0, p0, Landroid/widget/EditorTouchState;->mLastUpY:F

    return v0
.end method

.method public blacklist isDoubleTap()Z
    .registers 3

    .line 82
    iget v0, p0, Landroid/widget/EditorTouchState;->mMultiTapStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public blacklist isMovedEnoughForDrag()Z
    .registers 2

    .line 99
    iget-boolean v0, p0, Landroid/widget/EditorTouchState;->mMovedEnoughForDrag:Z

    return v0
.end method

.method public blacklist isMultiTap()Z
    .registers 3

    .line 90
    iget v0, p0, Landroid/widget/EditorTouchState;->mMultiTapStatus:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_d

    iget v0, p0, Landroid/widget/EditorTouchState;->mMultiTapStatus:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public blacklist isMultiTapInSameArea()Z
    .registers 2

    .line 95
    invoke-virtual {p0}, Landroid/widget/EditorTouchState;->isMultiTap()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Landroid/widget/EditorTouchState;->mMultiTapInSameArea:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public blacklist isOnHandle()Z
    .registers 2

    .line 126
    iget-boolean v0, p0, Landroid/widget/EditorTouchState;->mIsOnHandle:Z

    return v0
.end method

.method public blacklist isTripleClick()Z
    .registers 3

    .line 86
    iget v0, p0, Landroid/widget/EditorTouchState;->mMultiTapStatus:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public blacklist setIsOnHandle(Z)V
    .registers 2

    .line 122
    iput-boolean p1, p0, Landroid/widget/EditorTouchState;->mIsOnHandle:Z

    .line 123
    return-void
.end method

.method public blacklist update(Landroid/view/MotionEvent;Landroid/view/ViewConfiguration;)V
    .registers 15

    .line 133
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 134
    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v0, :cond_7a

    .line 135
    const/16 v0, 0x2002

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    .line 142
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    iget-wide v8, p0, Landroid/widget/EditorTouchState;->mLastUpMillis:J

    sub-long/2addr v6, v8

    .line 143
    iget-wide v8, p0, Landroid/widget/EditorTouchState;->mLastUpMillis:J

    iget-wide v10, p0, Landroid/widget/EditorTouchState;->mLastDownMillis:J

    sub-long/2addr v8, v10

    .line 146
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->viewconfigurationApis()Z

    move-result v10

    if-eqz v10, :cond_28

    .line 147
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getDoubleTapTimeoutMillis()I

    move-result v10

    goto :goto_2c

    .line 148
    :cond_28
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v10

    .line 149
    :goto_2c
    int-to-long v10, v10

    cmp-long v6, v6, v10

    if-gtz v6, :cond_5f

    cmp-long v6, v8, v10

    if-gtz v6, :cond_5f

    iget v6, p0, Landroid/widget/EditorTouchState;->mMultiTapStatus:I

    if-eq v6, v4, :cond_3f

    iget v6, p0, Landroid/widget/EditorTouchState;->mMultiTapStatus:I

    if-ne v6, v2, :cond_5f

    if-eqz v0, :cond_5f

    .line 153
    :cond_3f
    iget v0, p0, Landroid/widget/EditorTouchState;->mMultiTapStatus:I

    if-ne v0, v4, :cond_46

    .line 154
    iput v2, p0, Landroid/widget/EditorTouchState;->mMultiTapStatus:I

    goto :goto_48

    .line 156
    :cond_46
    iput v1, p0, Landroid/widget/EditorTouchState;->mMultiTapStatus:I

    .line 158
    :goto_48
    iget v0, p0, Landroid/widget/EditorTouchState;->mLastDownX:F

    iget v1, p0, Landroid/widget/EditorTouchState;->mLastDownY:F

    .line 159
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result p2

    .line 158
    invoke-static {v0, v1, v2, v4, p2}, Landroid/widget/EditorTouchState;->isDistanceWithin(FFFFI)Z

    move-result p2

    iput-boolean p2, p0, Landroid/widget/EditorTouchState;->mMultiTapInSameArea:Z

    goto :goto_63

    .line 167
    :cond_5f
    iput v4, p0, Landroid/widget/EditorTouchState;->mMultiTapStatus:I

    .line 168
    iput-boolean v5, p0, Landroid/widget/EditorTouchState;->mMultiTapInSameArea:Z

    .line 173
    :goto_63
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    iput p2, p0, Landroid/widget/EditorTouchState;->mLastDownX:F

    .line 174
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    iput p2, p0, Landroid/widget/EditorTouchState;->mLastDownY:F

    .line 175
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide p1

    iput-wide p1, p0, Landroid/widget/EditorTouchState;->mLastDownMillis:J

    .line 176
    iput-boolean v5, p0, Landroid/widget/EditorTouchState;->mMovedEnoughForDrag:Z

    .line 177
    iput v3, p0, Landroid/widget/EditorTouchState;->mInitialDragDirectionXYRatio:F

    .line 178
    goto :goto_de

    :cond_7a
    if-ne v0, v4, :cond_93

    .line 182
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    iput p2, p0, Landroid/widget/EditorTouchState;->mLastUpX:F

    .line 183
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    iput p2, p0, Landroid/widget/EditorTouchState;->mLastUpY:F

    .line 184
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide p1

    iput-wide p1, p0, Landroid/widget/EditorTouchState;->mLastUpMillis:J

    .line 185
    iput-boolean v5, p0, Landroid/widget/EditorTouchState;->mMovedEnoughForDrag:Z

    .line 186
    iput v3, p0, Landroid/widget/EditorTouchState;->mInitialDragDirectionXYRatio:F

    goto :goto_de

    .line 187
    :cond_93
    if-ne v0, v2, :cond_ce

    .line 188
    iget-boolean v0, p0, Landroid/widget/EditorTouchState;->mMovedEnoughForDrag:Z

    if-nez v0, :cond_de

    .line 189
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Landroid/widget/EditorTouchState;->mLastDownX:F

    sub-float/2addr v0, v1

    .line 190
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v1, p0, Landroid/widget/EditorTouchState;->mLastDownY:F

    sub-float/2addr p1, v1

    .line 191
    mul-float v1, v0, v0

    .line 192
    mul-float v2, p1, p1

    add-float/2addr v1, v2

    .line 193
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    .line 194
    mul-int/2addr p2, p2

    int-to-float p2, p2

    cmpl-float p2, v1, p2

    if-lez p2, :cond_b7

    goto :goto_b8

    :cond_b7
    move v4, v5

    :goto_b8
    iput-boolean v4, p0, Landroid/widget/EditorTouchState;->mMovedEnoughForDrag:Z

    .line 195
    iget-boolean p2, p0, Landroid/widget/EditorTouchState;->mMovedEnoughForDrag:Z

    if-eqz p2, :cond_cd

    .line 196
    cmpl-float p2, p1, v3

    if-nez p2, :cond_c6

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    goto :goto_cb

    .line 197
    :cond_c6
    div-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    :goto_cb
    iput p1, p0, Landroid/widget/EditorTouchState;->mInitialDragDirectionXYRatio:F

    .line 199
    :cond_cd
    goto :goto_de

    .line 200
    :cond_ce
    if-ne v0, v1, :cond_de

    .line 201
    const-wide/16 p1, 0x0

    iput-wide p1, p0, Landroid/widget/EditorTouchState;->mLastDownMillis:J

    .line 202
    iput-wide p1, p0, Landroid/widget/EditorTouchState;->mLastUpMillis:J

    .line 203
    iput v5, p0, Landroid/widget/EditorTouchState;->mMultiTapStatus:I

    .line 204
    iput-boolean v5, p0, Landroid/widget/EditorTouchState;->mMultiTapInSameArea:Z

    .line 205
    iput-boolean v5, p0, Landroid/widget/EditorTouchState;->mMovedEnoughForDrag:Z

    .line 206
    iput v3, p0, Landroid/widget/EditorTouchState;->mInitialDragDirectionXYRatio:F

    .line 208
    :cond_de
    :goto_de
    return-void
.end method
