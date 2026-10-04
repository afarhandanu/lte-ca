.class public Landroid/view/TouchDelegate;
.super Ljava/lang/Object;
.source "TouchDelegate.java"


# static fields
.field public static final whitelist ABOVE:I = 0x1

.field public static final whitelist BELOW:I = 0x2

.field public static final whitelist TO_LEFT:I = 0x4

.field public static final whitelist TO_RIGHT:I = 0x8


# instance fields
.field private greylist-max-o mBounds:Landroid/graphics/Rect;

.field private greylist mDelegateTargeted:Z

.field private greylist-max-o mDelegateView:Landroid/view/View;

.field private greylist-max-o mSlop:I

.field private greylist-max-o mSlopBounds:Landroid/graphics/Rect;

.field private blacklist mTouchDelegateInfo:Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;


# direct methods
.method public constructor whitelist <init>(Landroid/graphics/Rect;Landroid/view/View;)V
    .registers 5

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Landroid/view/TouchDelegate;->mBounds:Landroid/graphics/Rect;

    .line 99
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Landroid/view/TouchDelegate;->mSlop:I

    .line 100
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Landroid/view/TouchDelegate;->mSlopBounds:Landroid/graphics/Rect;

    .line 101
    iget-object p1, p0, Landroid/view/TouchDelegate;->mSlopBounds:Landroid/graphics/Rect;

    iget v0, p0, Landroid/view/TouchDelegate;->mSlop:I

    neg-int v0, v0

    iget v1, p0, Landroid/view/TouchDelegate;->mSlop:I

    neg-int v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->inset(II)V

    .line 102
    iput-object p2, p0, Landroid/view/TouchDelegate;->mDelegateView:Landroid/view/View;

    .line 103
    return-void
.end method


# virtual methods
.method public whitelist getTouchDelegateInfo()Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;
    .registers 4

    .line 218
    iget-object v0, p0, Landroid/view/TouchDelegate;->mTouchDelegateInfo:Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;

    if-nez v0, :cond_24

    .line 219
    new-instance v0, Landroid/util/ArrayMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    .line 220
    iget-object v1, p0, Landroid/view/TouchDelegate;->mBounds:Landroid/graphics/Rect;

    .line 221
    if-nez v1, :cond_13

    .line 222
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 224
    :cond_13
    new-instance v2, Landroid/graphics/Region;

    invoke-direct {v2, v1}, Landroid/graphics/Region;-><init>(Landroid/graphics/Rect;)V

    iget-object v1, p0, Landroid/view/TouchDelegate;->mDelegateView:Landroid/view/View;

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    new-instance v1, Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;

    invoke-direct {v1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;-><init>(Ljava/util/Map;)V

    iput-object v1, p0, Landroid/view/TouchDelegate;->mTouchDelegateInfo:Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;

    .line 227
    :cond_24
    iget-object v0, p0, Landroid/view/TouchDelegate;->mTouchDelegateInfo:Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;

    return-object v0
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    .line 113
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 114
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 115
    nop

    .line 116
    nop

    .line 117
    nop

    .line 119
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v2, :pswitch_data_64

    :pswitch_16
    move v0, v3

    goto :goto_39

    .line 137
    :pswitch_18
    iget-boolean v0, p0, Landroid/view/TouchDelegate;->mDelegateTargeted:Z

    .line 138
    iput-boolean v3, p0, Landroid/view/TouchDelegate;->mDelegateTargeted:Z

    goto :goto_39

    .line 128
    :pswitch_1d
    iget-boolean v2, p0, Landroid/view/TouchDelegate;->mDelegateTargeted:Z

    .line 129
    if-eqz v2, :cond_2c

    .line 130
    iget-object v5, p0, Landroid/view/TouchDelegate;->mSlopBounds:Landroid/graphics/Rect;

    .line 131
    invoke-virtual {v5, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 132
    move v4, v3

    .line 134
    :cond_2a
    move v0, v2

    goto :goto_39

    .line 129
    :cond_2c
    move v0, v2

    goto :goto_39

    .line 121
    :pswitch_2e
    iget-object v2, p0, Landroid/view/TouchDelegate;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/TouchDelegate;->mDelegateTargeted:Z

    .line 122
    iget-boolean v0, p0, Landroid/view/TouchDelegate;->mDelegateTargeted:Z

    .line 123
    nop

    .line 141
    :goto_39
    if-eqz v0, :cond_62

    .line 142
    if-eqz v4, :cond_53

    .line 144
    iget-object v0, p0, Landroid/view/TouchDelegate;->mDelegateView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget-object v1, p0, Landroid/view/TouchDelegate;->mDelegateView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_5c

    .line 148
    :cond_53
    iget v0, p0, Landroid/view/TouchDelegate;->mSlop:I

    .line 149
    mul-int/lit8 v0, v0, 0x2

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0, v0}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 151
    :goto_5c
    iget-object v0, p0, Landroid/view/TouchDelegate;->mDelegateView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 153
    :cond_62
    return v3

    nop

    :pswitch_data_64
    .packed-switch 0x0
        :pswitch_2e
        :pswitch_1d
        :pswitch_1d
        :pswitch_18
        :pswitch_16
        :pswitch_1d
        :pswitch_1d
    .end packed-switch
.end method

.method public whitelist onTouchExplorationHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    .line 171
    iget-object v0, p0, Landroid/view/TouchDelegate;->mBounds:Landroid/graphics/Rect;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 172
    return v1

    .line 175
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 176
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 177
    nop

    .line 178
    nop

    .line 180
    iget-object v3, p0, Landroid/view/TouchDelegate;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v0, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    .line 181
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    const/4 v5, 0x1

    packed-switch v4, :pswitch_data_5e

    :pswitch_20
    goto :goto_39

    .line 196
    :pswitch_21
    iput-boolean v5, p0, Landroid/view/TouchDelegate;->mDelegateTargeted:Z

    goto :goto_39

    .line 183
    :pswitch_24
    iput-boolean v3, p0, Landroid/view/TouchDelegate;->mDelegateTargeted:Z

    .line 184
    goto :goto_39

    .line 186
    :pswitch_27
    if-eqz v3, :cond_2c

    .line 187
    iput-boolean v5, p0, Landroid/view/TouchDelegate;->mDelegateTargeted:Z

    goto :goto_39

    .line 190
    :cond_2c
    iget-boolean v3, p0, Landroid/view/TouchDelegate;->mDelegateTargeted:Z

    if-eqz v3, :cond_39

    iget-object v3, p0, Landroid/view/TouchDelegate;->mSlopBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v0, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_39

    .line 191
    move v5, v1

    .line 199
    :cond_39
    :goto_39
    iget-boolean v0, p0, Landroid/view/TouchDelegate;->mDelegateTargeted:Z

    if-eqz v0, :cond_5d

    .line 200
    if-eqz v5, :cond_55

    .line 201
    iget-object v0, p0, Landroid/view/TouchDelegate;->mDelegateView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget-object v1, p0, Landroid/view/TouchDelegate;->mDelegateView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_57

    .line 203
    :cond_55
    iput-boolean v1, p0, Landroid/view/TouchDelegate;->mDelegateTargeted:Z

    .line 205
    :goto_57
    iget-object v0, p0, Landroid/view/TouchDelegate;->mDelegateView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 207
    :cond_5d
    return v1

    :pswitch_data_5e
    .packed-switch 0x7
        :pswitch_27
        :pswitch_20
        :pswitch_24
        :pswitch_21
    .end packed-switch
.end method
