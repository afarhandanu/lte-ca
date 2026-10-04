.class public Landroid/widget/DropDownListView;
.super Landroid/widget/ListView;
.source "DropDownListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/DropDownListView$ResolveHoverRunnable;
    }
.end annotation


# instance fields
.field private greylist-max-o mDrawsInPressedState:Z

.field private greylist-max-o mHijackFocus:Z

.field private greylist-max-o mListSelectionHidden:Z

.field private greylist-max-o mResolveHoverRunnable:Landroid/widget/DropDownListView$ResolveHoverRunnable;

.field private greylist-max-o mScrollHelper:Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmResolveHoverRunnable(Landroid/widget/DropDownListView;Landroid/widget/DropDownListView$ResolveHoverRunnable;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/DropDownListView;->mResolveHoverRunnable:Landroid/widget/DropDownListView$ResolveHoverRunnable;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Z)V
    .registers 4

    .line 89
    const v0, 0x101006d

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/DropDownListView;-><init>(Landroid/content/Context;ZI)V

    .line 90
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;ZI)V
    .registers 5

    .line 98
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 99
    iput-boolean p2, p0, Landroid/widget/DropDownListView;->mHijackFocus:Z

    .line 101
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/DropDownListView;->setCacheColorHint(I)V

    .line 102
    return-void
.end method

.method private greylist-max-o clearPressedItem()V
    .registers 4

    .line 242
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/DropDownListView;->mDrawsInPressedState:Z

    .line 243
    invoke-virtual {p0, v0}, Landroid/widget/DropDownListView;->setPressed(Z)V

    .line 244
    invoke-virtual {p0}, Landroid/widget/DropDownListView;->updateSelectorState()V

    .line 246
    iget v1, p0, Landroid/widget/DropDownListView;->mMotionPosition:I

    iget v2, p0, Landroid/widget/DropDownListView;->mFirstPosition:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/widget/DropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 247
    if-eqz v1, :cond_17

    .line 248
    invoke-virtual {v1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 250
    :cond_17
    return-void
.end method

.method private greylist-max-o setPressedItem(Landroid/view/View;IFF)V
    .registers 8

    .line 253
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/DropDownListView;->mDrawsInPressedState:Z

    .line 256
    invoke-virtual {p0, p3, p4}, Landroid/widget/DropDownListView;->drawableHotspotChanged(FF)V

    .line 257
    invoke-virtual {p0}, Landroid/widget/DropDownListView;->isPressed()Z

    move-result v1

    if-nez v1, :cond_f

    .line 258
    invoke-virtual {p0, v0}, Landroid/widget/DropDownListView;->setPressed(Z)V

    .line 262
    :cond_f
    iget-boolean v1, p0, Landroid/widget/DropDownListView;->mDataChanged:Z

    if-eqz v1, :cond_16

    .line 263
    invoke-virtual {p0}, Landroid/widget/DropDownListView;->layoutChildren()V

    .line 268
    :cond_16
    iget v1, p0, Landroid/widget/DropDownListView;->mMotionPosition:I

    iget v2, p0, Landroid/widget/DropDownListView;->mFirstPosition:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/widget/DropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 269
    if-eqz v1, :cond_2d

    if-eq v1, p1, :cond_2d

    invoke-virtual {v1}, Landroid/view/View;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 270
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 272
    :cond_2d
    iput p2, p0, Landroid/widget/DropDownListView;->mMotionPosition:I

    .line 275
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, p3, v1

    .line 276
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    sub-float v2, p4, v2

    .line 277
    invoke-virtual {p1, v1, v2}, Landroid/view/View;->drawableHotspotChanged(FF)V

    .line 278
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v1

    if-nez v1, :cond_49

    .line 279
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 283
    :cond_49
    invoke-virtual {p0, p2}, Landroid/widget/DropDownListView;->setSelectedPositionInt(I)V

    .line 284
    invoke-virtual {p0, p2, p1, p3, p4}, Landroid/widget/DropDownListView;->positionSelectorLikeTouch(ILandroid/view/View;FF)V

    .line 288
    invoke-virtual {p0}, Landroid/widget/DropDownListView;->refreshDrawableState()V

    .line 289
    return-void
.end method


# virtual methods
.method protected whitelist drawableStateChanged()V
    .registers 2

    .line 162
    iget-object v0, p0, Landroid/widget/DropDownListView;->mResolveHoverRunnable:Landroid/widget/DropDownListView$ResolveHoverRunnable;

    if-nez v0, :cond_7

    .line 163
    invoke-super {p0}, Landroid/widget/ListView;->drawableStateChanged()V

    .line 165
    :cond_7
    return-void
.end method

.method public whitelist hasFocus()Z
    .registers 2

    .line 347
    iget-boolean v0, p0, Landroid/widget/DropDownListView;->mHijackFocus:Z

    if-nez v0, :cond_d

    invoke-super {p0}, Landroid/widget/ListView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_b

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

.method public whitelist hasWindowFocus()Z
    .registers 2

    .line 327
    iget-boolean v0, p0, Landroid/widget/DropDownListView;->mHijackFocus:Z

    if-nez v0, :cond_d

    invoke-super {p0}, Landroid/widget/ListView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_b

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

.method public whitelist isFocused()Z
    .registers 2

    .line 337
    iget-boolean v0, p0, Landroid/widget/DropDownListView;->mHijackFocus:Z

    if-nez v0, :cond_d

    invoke-super {p0}, Landroid/widget/ListView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_b

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

.method public whitelist isInTouchMode()Z
    .registers 2

    .line 317
    iget-boolean v0, p0, Landroid/widget/DropDownListView;->mHijackFocus:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Landroid/widget/DropDownListView;->mListSelectionHidden:Z

    if-nez v0, :cond_e

    :cond_8
    invoke-super {p0}, Landroid/widget/ListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method greylist-max-o obtainView(I[Z)Landroid/view/View;
    .registers 4

    .line 305
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object p1

    .line 307
    instance-of p2, p1, Landroid/widget/TextView;

    if-eqz p2, :cond_f

    .line 308
    move-object p2, p1

    check-cast p2, Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 311
    :cond_f
    return-object p1
.end method

.method public greylist-max-o onForwardedEvent(Landroid/view/MotionEvent;I)Z
    .registers 11

    .line 174
    nop

    .line 175
    nop

    .line 177
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 178
    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_78

    move v3, v1

    move p2, v2

    goto :goto_4e

    .line 180
    :pswitch_e
    nop

    .line 181
    move p2, v2

    move v3, p2

    goto :goto_4e

    .line 178
    :pswitch_12
    move v3, v1

    goto :goto_15

    .line 183
    :pswitch_14
    move v3, v2

    .line 186
    :goto_15
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result p2

    .line 187
    if-gez p2, :cond_1f

    .line 188
    nop

    .line 189
    move p2, v2

    move v3, p2

    goto :goto_4e

    .line 192
    :cond_1f
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    .line 193
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p2

    float-to-int p2, p2

    .line 194
    invoke-virtual {p0, v4, p2}, Landroid/widget/DropDownListView;->pointToPosition(II)I

    move-result v5

    .line 195
    const/4 v6, -0x1

    if-ne v5, v6, :cond_33

    .line 196
    nop

    .line 197
    move p2, v1

    goto :goto_4e

    .line 200
    :cond_33
    invoke-virtual {p0}, Landroid/widget/DropDownListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int v3, v5, v3

    invoke-virtual {p0, v3}, Landroid/widget/DropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 201
    int-to-float v4, v4

    int-to-float p2, p2

    invoke-direct {p0, v3, v5, v4, p2}, Landroid/widget/DropDownListView;->setPressedItem(Landroid/view/View;IFF)V

    .line 202
    nop

    .line 204
    if-ne v0, v1, :cond_4c

    .line 205
    invoke-virtual {p0, v5}, Landroid/widget/DropDownListView;->getItemIdAtPosition(I)J

    move-result-wide v6

    .line 206
    invoke-virtual {p0, v3, v5, v6, v7}, Landroid/widget/DropDownListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 212
    :cond_4c
    move v3, v1

    move p2, v2

    :goto_4e
    if-eqz v3, :cond_52

    if-eqz p2, :cond_55

    .line 213
    :cond_52
    invoke-direct {p0}, Landroid/widget/DropDownListView;->clearPressedItem()V

    .line 217
    :cond_55
    if-eqz v3, :cond_6d

    .line 218
    iget-object p2, p0, Landroid/widget/DropDownListView;->mScrollHelper:Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;

    if-nez p2, :cond_62

    .line 219
    new-instance p2, Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;

    invoke-direct {p2, p0}, Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;-><init>(Landroid/widget/AbsListView;)V

    iput-object p2, p0, Landroid/widget/DropDownListView;->mScrollHelper:Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;

    .line 221
    :cond_62
    iget-object p2, p0, Landroid/widget/DropDownListView;->mScrollHelper:Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;

    invoke-virtual {p2, v1}, Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;->setEnabled(Z)Lcom/android/internal/widget/AutoScrollHelper;

    .line 222
    iget-object p2, p0, Landroid/widget/DropDownListView;->mScrollHelper:Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;

    invoke-virtual {p2, p0, p1}, Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    goto :goto_76

    .line 223
    :cond_6d
    iget-object p1, p0, Landroid/widget/DropDownListView;->mScrollHelper:Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;

    if-eqz p1, :cond_76

    .line 224
    iget-object p1, p0, Landroid/widget/DropDownListView;->mScrollHelper:Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;

    invoke-virtual {p1, v2}, Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;->setEnabled(Z)Lcom/android/internal/widget/AutoScrollHelper;

    .line 227
    :cond_76
    :goto_76
    return v3

    nop

    :pswitch_data_78
    .packed-switch 0x1
        :pswitch_14
        :pswitch_12
        :pswitch_e
    .end packed-switch
.end method

.method public whitelist onHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    .line 121
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 122
    const/16 v1, 0xa

    if-ne v0, v1, :cond_19

    iget-object v1, p0, Landroid/widget/DropDownListView;->mResolveHoverRunnable:Landroid/widget/DropDownListView$ResolveHoverRunnable;

    if-nez v1, :cond_19

    .line 125
    new-instance v1, Landroid/widget/DropDownListView$ResolveHoverRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/widget/DropDownListView$ResolveHoverRunnable;-><init>(Landroid/widget/DropDownListView;Landroid/widget/DropDownListView-IA;)V

    iput-object v1, p0, Landroid/widget/DropDownListView;->mResolveHoverRunnable:Landroid/widget/DropDownListView$ResolveHoverRunnable;

    .line 126
    iget-object v1, p0, Landroid/widget/DropDownListView;->mResolveHoverRunnable:Landroid/widget/DropDownListView$ResolveHoverRunnable;

    invoke-virtual {v1}, Landroid/widget/DropDownListView$ResolveHoverRunnable;->post()V

    .line 130
    :cond_19
    invoke-super {p0, p1}, Landroid/widget/ListView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 132
    const/16 v2, 0x9

    const/4 v3, -0x1

    if-eq v0, v2, :cond_33

    const/4 v2, 0x7

    if-ne v0, v2, :cond_26

    goto :goto_33

    .line 151
    :cond_26
    invoke-super {p0}, Landroid/widget/ListView;->shouldShowSelector()Z

    move-result p1

    if-nez p1, :cond_67

    .line 152
    invoke-virtual {p0, v3}, Landroid/widget/DropDownListView;->setSelectedPositionInt(I)V

    .line 153
    invoke-virtual {p0, v3}, Landroid/widget/DropDownListView;->setNextSelectedPositionInt(I)V

    goto :goto_67

    .line 134
    :cond_33
    :goto_33
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, v0, p1}, Landroid/widget/DropDownListView;->pointToPosition(II)I

    move-result p1

    .line 135
    if-eq p1, v3, :cond_66

    iget v0, p0, Landroid/widget/DropDownListView;->mSelectedPosition:I

    if-eq p1, v0, :cond_66

    .line 136
    invoke-virtual {p0}, Landroid/widget/DropDownListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Landroid/widget/DropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 137
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_63

    .line 140
    invoke-virtual {p0}, Landroid/widget/DropDownListView;->requestFocus()Z

    .line 142
    invoke-virtual {p0, p1, v0}, Landroid/widget/DropDownListView;->positionSelector(ILandroid/view/View;)V

    .line 143
    invoke-virtual {p0, p1}, Landroid/widget/DropDownListView;->setSelectedPositionInt(I)V

    .line 144
    invoke-virtual {p0, p1}, Landroid/widget/DropDownListView;->setNextSelectedPositionInt(I)V

    .line 146
    :cond_63
    invoke-virtual {p0}, Landroid/widget/DropDownListView;->updateSelectorState()V

    .line 148
    :cond_66
    nop

    .line 157
    :cond_67
    :goto_67
    return v1
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 111
    iget-object v0, p0, Landroid/widget/DropDownListView;->mResolveHoverRunnable:Landroid/widget/DropDownListView$ResolveHoverRunnable;

    if-eqz v0, :cond_9

    .line 113
    iget-object v0, p0, Landroid/widget/DropDownListView;->mResolveHoverRunnable:Landroid/widget/DropDownListView$ResolveHoverRunnable;

    invoke-virtual {v0}, Landroid/widget/DropDownListView$ResolveHoverRunnable;->cancel()V

    .line 116
    :cond_9
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public greylist-max-o setListSelectionHidden(Z)V
    .registers 2

    .line 238
    iput-boolean p1, p0, Landroid/widget/DropDownListView;->mListSelectionHidden:Z

    .line 239
    return-void
.end method

.method greylist-max-o shouldShowSelector()Z
    .registers 2

    .line 106
    invoke-virtual {p0}, Landroid/widget/DropDownListView;->isHovered()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-super {p0}, Landroid/widget/ListView;->shouldShowSelector()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method greylist-max-o touchModeDrawsInPressedState()Z
    .registers 2

    .line 293
    iget-boolean v0, p0, Landroid/widget/DropDownListView;->mDrawsInPressedState:Z

    if-nez v0, :cond_d

    invoke-super {p0}, Landroid/widget/ListView;->touchModeDrawsInPressedState()Z

    move-result v0

    if-eqz v0, :cond_b

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
