.class public abstract Landroid/widget/Editor$HandleView;
.super Landroid/view/View;
.source "Editor.java"

# interfaces
.implements Landroid/widget/Editor$TextViewPositionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "HandleView"
.end annotation


# static fields
.field private static final greylist-max-o HISTORY_SIZE:I = 0x5

.field private static final greylist-max-o TOUCH_UP_FILTER_DELAY_AFTER:I = 0x96

.field private static final greylist-max-o TOUCH_UP_FILTER_DELAY_BEFORE:I = 0x15e


# instance fields
.field private final greylist-max-o mContainer:Landroid/widget/PopupWindow;

.field private blacklist mCurrentDragInitialTouchRawX:F

.field protected greylist-max-o mDrawable:Landroid/graphics/drawable/Drawable;

.field protected greylist-max-o mDrawableLtr:Landroid/graphics/drawable/Drawable;

.field protected greylist-max-o mDrawableRtl:Landroid/graphics/drawable/Drawable;

.field protected greylist-max-o mHorizontalGravity:I

.field protected greylist-max-o mHotspotX:I

.field private final blacklist mIdealFingerToCursorOffset:I

.field private final greylist-max-o mIdealVerticalOffset:F

.field private greylist-max-o mIsDragging:Z

.field private greylist-max-o mLastParentX:I

.field private greylist-max-o mLastParentXOnScreen:I

.field private greylist-max-o mLastParentY:I

.field private greylist-max-o mLastParentYOnScreen:I

.field private greylist-max-o mMinSize:I

.field private greylist-max-o mNumberPreviousOffsets:I

.field private greylist-max-o mPositionHasChanged:Z

.field private greylist-max-o mPositionX:I

.field private greylist-max-o mPositionY:I

.field protected greylist-max-o mPrevLine:I

.field protected greylist-max-o mPreviousLineTouched:I

.field protected greylist-max-o mPreviousOffset:I

.field private greylist-max-o mPreviousOffsetIndex:I

.field private final greylist-max-o mPreviousOffsets:[I

.field private final greylist-max-o mPreviousOffsetsTimes:[J

.field private blacklist mTextViewScaleX:F

.field private blacklist mTextViewScaleY:F

.field private greylist-max-o mTouchOffsetY:F

.field private greylist-max-o mTouchToWindowOffsetX:F

.field private greylist-max-o mTouchToWindowOffsetY:F

.field final synthetic blacklist this$0:Landroid/widget/Editor;


# direct methods
.method private constructor blacklist <init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)V
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x10
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 5120
    iput-object p1, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    .line 5121
    invoke-static {p1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 5096
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    .line 5098
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    .line 5102
    iput v0, p0, Landroid/widget/Editor$HandleView;->mPrevLine:I

    .line 5106
    iput v0, p0, Landroid/widget/Editor$HandleView;->mPreviousLineTouched:I

    .line 5109
    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Landroid/widget/Editor$HandleView;->mCurrentDragInitialTouchRawX:F

    .line 5199
    const/4 v2, 0x5

    new-array v3, v2, [J

    iput-object v3, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetsTimes:[J

    .line 5200
    new-array v2, v2, [I

    iput-object v2, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsets:[I

    .line 5201
    const/4 v2, 0x0

    iput v2, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    .line 5202
    iput v2, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    .line 5122
    invoke-virtual {p0, p4}, Landroid/widget/Editor$HandleView;->setId(I)V

    .line 5123
    new-instance p4, Landroid/widget/PopupWindow;

    invoke-static {p1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const v5, 0x10102c8

    invoke-direct {p4, v3, v4, v5}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p4, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    .line 5125
    iget-object p4, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {p4, v1}, Landroid/widget/PopupWindow;->setSplitTouchEnabled(Z)V

    .line 5126
    iget-object p4, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {p4, v2}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 5127
    iget-object p4, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    const/16 v2, 0x3ea

    invoke-virtual {p4, v2}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 5128
    iget-object p4, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    const/4 v2, -0x2

    invoke-virtual {p4, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 5129
    iget-object p4, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {p4, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 5130
    iget-object p4, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {p4, p0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 5132
    invoke-virtual {p0, p2, p3}, Landroid/widget/Editor$HandleView;->setDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 5134
    invoke-static {p1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x1050393

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Landroid/widget/Editor$HandleView;->mMinSize:I

    .line 5137
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getPreferredHeight()I

    move-result p2

    .line 5138
    int-to-float p2, p2

    const p3, -0x41666666    # -0.3f

    mul-float/2addr p3, p2

    iput p3, p0, Landroid/widget/Editor$HandleView;->mTouchOffsetY:F

    .line 5139
    const-string/jumbo p3, "widget__finger_to_cursor_distance"

    invoke-static {p3, v0}, Landroid/app/AppGlobals;->getIntCoreSetting(Ljava/lang/String;I)I

    move-result p3

    .line 5142
    if-ltz p3, :cond_b2

    const/16 p4, 0x64

    if-le p3, p4, :cond_91

    goto :goto_b2

    .line 5146
    :cond_91
    int-to-float p2, p3

    invoke-static {p1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object p1

    .line 5148
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 5146
    invoke-static {v1, p2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Landroid/widget/Editor$HandleView;->mIdealFingerToCursorOffset:I

    .line 5149
    iget p1, p0, Landroid/widget/Editor$HandleView;->mIdealFingerToCursorOffset:I

    int-to-float p1, p1

    iget p2, p0, Landroid/widget/Editor$HandleView;->mTouchOffsetY:F

    add-float/2addr p1, p2

    iput p1, p0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    goto :goto_c0

    .line 5143
    :cond_b2
    :goto_b2
    const p1, 0x3f333333    # 0.7f

    mul-float/2addr p2, p1

    iput p2, p0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    .line 5144
    iget p1, p0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    iget p2, p0, Landroid/widget/Editor$HandleView;->mTouchOffsetY:F

    sub-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Landroid/widget/Editor$HandleView;->mIdealFingerToCursorOffset:I

    .line 5151
    :goto_c0
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ILandroid/widget/Editor-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/Editor$HandleView;-><init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method private greylist-max-o addPositionToTouchUpFilter(I)V
    .registers 5

    .line 5210
    iget v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x5

    iput v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    .line 5211
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsets:[I

    iget v1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    aput p1, v0, v1

    .line 5212
    iget-object p1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetsTimes:[J

    iget v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    aput-wide v1, p1, v0

    .line 5213
    iget p1, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    .line 5214
    return-void
.end method

.method private blacklist checkForTransforms()Z
    .registers 8

    .line 5496
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmMagnifierAnimator(Landroid/widget/Editor;)Landroid/widget/Editor$MagnifierMotionAnimator;

    move-result-object v0

    invoke-static {v0}, Landroid/widget/Editor$MagnifierMotionAnimator;->-$$Nest$fgetmMagnifierIsShowing(Landroid/widget/Editor$MagnifierMotionAnimator;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_e

    .line 5498
    return v1

    .line 5501
    :cond_e
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getRotation()F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    const/4 v3, 0x0

    if-nez v0, :cond_99

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getRotationX()F

    move-result v0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_99

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    .line 5502
    invoke-virtual {v0}, Landroid/widget/TextView;->getRotationY()F

    move-result v0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_3b

    goto :goto_99

    .line 5505
    :cond_3b
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getScaleX()F

    move-result v0

    iput v0, p0, Landroid/widget/Editor$HandleView;->mTextViewScaleX:F

    .line 5506
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getScaleY()F

    move-result v0

    iput v0, p0, Landroid/widget/Editor$HandleView;->mTextViewScaleY:F

    .line 5508
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 5509
    :goto_5d
    if-eqz v0, :cond_98

    .line 5510
    instance-of v4, v0, Landroid/view/View;

    if-eqz v4, :cond_93

    .line 5511
    move-object v4, v0

    check-cast v4, Landroid/view/View;

    .line 5512
    invoke-virtual {v4}, Landroid/view/View;->getRotation()F

    move-result v5

    cmpl-float v5, v5, v2

    if-nez v5, :cond_92

    invoke-virtual {v4}, Landroid/view/View;->getRotationX()F

    move-result v5

    cmpl-float v5, v5, v2

    if-nez v5, :cond_92

    .line 5513
    invoke-virtual {v4}, Landroid/view/View;->getRotationY()F

    move-result v5

    cmpl-float v5, v5, v2

    if-eqz v5, :cond_7f

    goto :goto_92

    .line 5516
    :cond_7f
    iget v5, p0, Landroid/widget/Editor$HandleView;->mTextViewScaleX:F

    invoke-virtual {v4}, Landroid/view/View;->getScaleX()F

    move-result v6

    mul-float/2addr v5, v6

    iput v5, p0, Landroid/widget/Editor$HandleView;->mTextViewScaleX:F

    .line 5517
    iget v5, p0, Landroid/widget/Editor$HandleView;->mTextViewScaleY:F

    invoke-virtual {v4}, Landroid/view/View;->getScaleY()F

    move-result v4

    mul-float/2addr v5, v4

    iput v5, p0, Landroid/widget/Editor$HandleView;->mTextViewScaleY:F

    goto :goto_93

    .line 5514
    :cond_92
    :goto_92
    return v3

    .line 5519
    :cond_93
    :goto_93
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_5d

    .line 5521
    :cond_98
    return v1

    .line 5503
    :cond_99
    :goto_99
    return v3
.end method

.method private greylist-max-o filterOnTouchUp(Z)V
    .registers 13

    .line 5217
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 5218
    nop

    .line 5219
    iget v2, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    .line 5220
    iget v3, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    const/4 v4, 0x5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v5, 0x0

    move v6, v5

    .line 5221
    :goto_10
    if-ge v6, v3, :cond_26

    iget-object v7, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetsTimes:[J

    aget-wide v7, v7, v2

    sub-long v7, v0, v7

    const-wide/16 v9, 0x96

    cmp-long v7, v7, v9

    if-gez v7, :cond_26

    .line 5222
    add-int/lit8 v6, v6, 0x1

    .line 5223
    iget v2, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    sub-int/2addr v2, v6

    add-int/2addr v2, v4

    rem-int/2addr v2, v4

    goto :goto_10

    .line 5226
    :cond_26
    if-lez v6, :cond_3c

    if-ge v6, v3, :cond_3c

    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetsTimes:[J

    aget-wide v3, v3, v2

    sub-long/2addr v0, v3

    const-wide/16 v3, 0x15e

    cmp-long v0, v0, v3

    if-lez v0, :cond_3c

    .line 5228
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsets:[I

    aget v0, v0, v2

    invoke-virtual {p0, v0, v5, p1}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZZ)V

    .line 5230
    :cond_3c
    return-void
.end method

.method private greylist-max-o getHorizontalOffset()I
    .registers 4

    .line 5450
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getPreferredWidth()I

    move-result v0

    .line 5451
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 5453
    iget v2, p0, Landroid/widget/Editor$HandleView;->mHorizontalGravity:I

    packed-switch v2, :pswitch_data_18

    .line 5459
    :pswitch_f
    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 5460
    goto :goto_17

    .line 5462
    :pswitch_13
    sub-int/2addr v0, v1

    goto :goto_17

    .line 5455
    :pswitch_15
    nop

    .line 5456
    const/4 v0, 0x0

    .line 5465
    :goto_17
    return v0

    :pswitch_data_18
    .packed-switch 0x3
        :pswitch_15
        :pswitch_f
        :pswitch_13
    .end packed-switch
.end method

.method private greylist-max-o getOtherSelectionHandle()Landroid/widget/Editor$HandleView;
    .registers 3

    .line 5653
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    .line 5654
    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->isActive()Z

    move-result v1

    if-nez v1, :cond_f

    goto :goto_1f

    .line 5657
    :cond_f
    invoke-static {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->-$$Nest$fgetmStartHandle(Landroid/widget/Editor$SelectionModifierCursorController;)Landroid/widget/Editor$SelectionHandleView;

    move-result-object v1

    if-eq v1, p0, :cond_1a

    .line 5658
    invoke-static {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->-$$Nest$fgetmStartHandle(Landroid/widget/Editor$SelectionModifierCursorController;)Landroid/widget/Editor$SelectionHandleView;

    move-result-object v0

    goto :goto_1e

    .line 5659
    :cond_1a
    invoke-static {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->-$$Nest$fgetmEndHandle(Landroid/widget/Editor$SelectionModifierCursorController;)Landroid/widget/Editor$SelectionHandleView;

    move-result-object v0

    .line 5657
    :goto_1e
    return-object v0

    .line 5655
    :cond_1f
    :goto_1f
    const/4 v0, 0x0

    return-object v0
.end method

.method private greylist-max-o handleOverlapsMagnifier(Landroid/widget/Editor$HandleView;Landroid/graphics/Rect;)Z
    .registers 8

    .line 5640
    iget-object p1, p1, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    .line 5641
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->hasDecorView()Z

    move-result v0

    if-nez v0, :cond_a

    .line 5642
    const/4 p1, 0x0

    return p1

    .line 5644
    :cond_a
    new-instance v0, Landroid/graphics/Rect;

    .line 5645
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getDecorViewLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 5646
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getDecorViewLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 5647
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getDecorViewLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    .line 5648
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getDecorViewLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 5649
    invoke-static {v0, p2}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method private greylist-max-o obtainMagnifierShowCoordinates(Landroid/view/MotionEvent;Landroid/graphics/PointF;)Z
    .registers 19

    .line 5533
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0}, Landroid/widget/Editor$HandleView;->getMagnifierHandleTrigger()I

    move-result v2

    .line 5536
    const/4 v3, -0x1

    packed-switch v2, :pswitch_data_1f6

    .line 5550
    nop

    .line 5551
    move v4, v3

    move v5, v4

    goto :goto_46

    .line 5546
    :pswitch_10
    iget-object v4, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v4

    .line 5547
    iget-object v5, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v5

    .line 5548
    goto :goto_46

    .line 5542
    :pswitch_25
    iget-object v4, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    .line 5543
    iget-object v5, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v5

    .line 5544
    goto :goto_46

    .line 5538
    :pswitch_3a
    iget-object v4, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    .line 5539
    nop

    .line 5540
    move v5, v3

    .line 5555
    :goto_46
    const/4 v6, 0x0

    if-ne v4, v3, :cond_4a

    .line 5556
    return v6

    .line 5559
    :cond_4a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    const/4 v8, 0x1

    if-nez v7, :cond_58

    .line 5560
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    iput v7, v0, Landroid/widget/Editor$HandleView;->mCurrentDragInitialTouchRawX:F

    goto :goto_62

    .line 5561
    :cond_58
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    if-ne v7, v8, :cond_62

    .line 5562
    const/high16 v7, -0x40800000    # -1.0f

    iput v7, v0, Landroid/widget/Editor$HandleView;->mCurrentDragInitialTouchRawX:F

    .line 5565
    :cond_62
    :goto_62
    iget-object v7, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v7}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v7

    .line 5566
    invoke-virtual {v0, v7, v4}, Landroid/widget/Editor$HandleView;->getLineForOffset(Landroid/text/Layout;I)I

    move-result v9

    .line 5569
    if-eq v5, v3, :cond_7a

    .line 5570
    invoke-virtual {v0, v7, v4}, Landroid/widget/Editor$HandleView;->getLineForOffset(Landroid/text/Layout;I)I

    move-result v3

    if-ne v9, v3, :cond_7a

    move v3, v8

    goto :goto_7b

    :cond_7a
    move v3, v6

    .line 5571
    :goto_7b
    if-eqz v3, :cond_a9

    if-ge v4, v5, :cond_81

    move v7, v8

    goto :goto_82

    :cond_81
    move v7, v6

    :goto_82
    iget-object v10, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v10}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    .line 5573
    invoke-virtual {v10}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v10

    invoke-virtual {v0, v10, v4}, Landroid/widget/Editor$HandleView;->getHorizontal(Landroid/text/Layout;I)F

    move-result v4

    iget-object v10, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v10}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    .line 5574
    invoke-virtual {v10}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v10

    invoke-virtual {v0, v10, v5}, Landroid/widget/Editor$HandleView;->getHorizontal(Landroid/text/Layout;I)F

    move-result v10

    cmpg-float v4, v4, v10

    if-gez v4, :cond_a4

    move v4, v8

    goto :goto_a5

    :cond_a4
    move v4, v6

    :goto_a5
    if-eq v7, v4, :cond_a9

    move v4, v8

    goto :goto_aa

    :cond_a9
    move v4, v6

    .line 5577
    :goto_aa
    const/4 v7, 0x2

    new-array v10, v7, [I

    .line 5578
    iget-object v11, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v11}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11, v10}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 5579
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v11

    aget v12, v10, v6

    int-to-float v12, v12

    sub-float/2addr v11, v12

    .line 5581
    iget-object v12, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v12}, Landroid/widget/Editor;->-$$Nest$fgetmNewMagnifierEnabled(Landroid/widget/Editor;)Z

    move-result v12

    const/high16 v13, 0x40000000    # 2.0f

    if-eqz v12, :cond_de

    .line 5582
    nop

    .line 5583
    iget-object v2, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    .line 5584
    const/4 v3, 0x0

    cmpg-float v4, v11, v3

    if-ltz v4, :cond_dd

    cmpl-float v4, v11, v2

    if-lez v4, :cond_193

    .line 5586
    :cond_dd
    return v6

    .line 5589
    :cond_de
    iget-object v12, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v12}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v12

    iget-object v14, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v14}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/TextView;->getScrollX()I

    move-result v14

    sub-int/2addr v12, v14

    int-to-float v12, v12

    .line 5590
    iget-object v14, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v14}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v14

    iget-object v15, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v15}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/TextView;->getScrollX()I

    move-result v15

    sub-int/2addr v14, v15

    int-to-float v14, v14

    .line 5591
    if-eqz v3, :cond_124

    if-ne v2, v7, :cond_110

    move v7, v8

    goto :goto_111

    :cond_110
    move v7, v6

    :goto_111
    xor-int/2addr v7, v4

    if-eqz v7, :cond_124

    .line 5593
    iget-object v7, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v7}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v7

    invoke-virtual {v0, v7, v5}, Landroid/widget/Editor$HandleView;->getHorizontal(Landroid/text/Layout;I)F

    move-result v7

    add-float/2addr v12, v7

    goto :goto_133

    .line 5595
    :cond_124
    iget-object v7, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v7}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v7

    add-float/2addr v12, v7

    .line 5597
    :goto_133
    if-eqz v3, :cond_14d

    if-ne v2, v8, :cond_139

    move v2, v8

    goto :goto_13a

    :cond_139
    move v2, v6

    :goto_13a
    xor-int/2addr v2, v4

    if-eqz v2, :cond_14d

    .line 5599
    iget-object v2, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v0, v2, v5}, Landroid/widget/Editor$HandleView;->getHorizontal(Landroid/text/Layout;I)F

    move-result v2

    add-float/2addr v14, v2

    goto :goto_15c

    .line 5601
    :cond_14d
    iget-object v2, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/text/Layout;->getLineRight(I)F

    move-result v2

    add-float/2addr v14, v2

    .line 5603
    :goto_15c
    iget v2, v0, Landroid/widget/Editor$HandleView;->mTextViewScaleX:F

    mul-float v3, v12, v2

    .line 5604
    iget v2, v0, Landroid/widget/Editor$HandleView;->mTextViewScaleX:F

    mul-float/2addr v2, v14

    .line 5605
    iget-object v4, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-$$Nest$fgetmMagnifierAnimator(Landroid/widget/Editor;)Landroid/widget/Editor$MagnifierMotionAnimator;

    move-result-object v4

    invoke-static {v4}, Landroid/widget/Editor$MagnifierMotionAnimator;->-$$Nest$fgetmMagnifier(Landroid/widget/Editor$MagnifierMotionAnimator;)Landroid/widget/Magnifier;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Magnifier;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->-$$Nest$fgetmMagnifierAnimator(Landroid/widget/Editor;)Landroid/widget/Editor$MagnifierMotionAnimator;

    move-result-object v5

    invoke-static {v5}, Landroid/widget/Editor$MagnifierMotionAnimator;->-$$Nest$fgetmMagnifier(Landroid/widget/Editor$MagnifierMotionAnimator;)Landroid/widget/Magnifier;

    move-result-object v5

    .line 5606
    invoke-virtual {v5}, Landroid/widget/Magnifier;->getZoom()F

    move-result v5

    div-float/2addr v4, v5

    .line 5605
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v4, v4

    .line 5607
    div-float/2addr v4, v13

    sub-float v5, v3, v4

    cmpg-float v5, v11, v5

    if-ltz v5, :cond_1f5

    add-float/2addr v4, v2

    cmpl-float v4, v11, v4

    if-lez v4, :cond_193

    goto :goto_1f5

    .line 5615
    :cond_193
    iget v4, v0, Landroid/widget/Editor$HandleView;->mTextViewScaleX:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-nez v4, :cond_19c

    .line 5622
    goto :goto_1ae

    .line 5624
    :cond_19c
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    iget v5, v0, Landroid/widget/Editor$HandleView;->mCurrentDragInitialTouchRawX:F

    sub-float/2addr v4, v5

    iget v5, v0, Landroid/widget/Editor$HandleView;->mTextViewScaleX:F

    mul-float/2addr v4, v5

    iget v5, v0, Landroid/widget/Editor$HandleView;->mCurrentDragInitialTouchRawX:F

    add-float/2addr v4, v5

    aget v5, v10, v6

    int-to-float v5, v5

    sub-float v11, v4, v5

    .line 5628
    :goto_1ae
    invoke-static {v2, v11}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, v1, Landroid/graphics/PointF;->x:F

    .line 5631
    iget-object v2, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    iget-object v3, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    .line 5632
    invoke-virtual {v3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    .line 5633
    invoke-virtual {v3, v9, v6}, Landroid/text/Layout;->getLineBottom(IZ)I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v2, v13

    iget-object v3, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    .line 5634
    invoke-virtual {v3}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getScrollY()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v0, v0, Landroid/widget/Editor$HandleView;->mTextViewScaleY:F

    mul-float/2addr v2, v0

    iput v2, v1, Landroid/graphics/PointF;->y:F

    .line 5635
    return v8

    .line 5610
    :cond_1f5
    :goto_1f5
    return v6

    :pswitch_data_1f6
    .packed-switch 0x0
        :pswitch_3a
        :pswitch_25
        :pswitch_10
    .end packed-switch
.end method

.method private greylist-max-o setVisible(Z)V
    .registers 3

    .line 5308
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_a

    const/4 p1, 0x0

    goto :goto_b

    :cond_a
    const/4 p1, 0x4

    :goto_b
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 5309
    return-void
.end method

.method private greylist-max-o shouldShow()Z
    .registers 4

    .line 5295
    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    if-eqz v0, :cond_6

    .line 5296
    const/4 v0, 0x1

    return v0

    .line 5299
    :cond_6
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->isInBatchEditMode()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 5300
    const/4 v0, 0x0

    return v0

    .line 5303
    :cond_14
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget v1, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    iget v2, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    add-int/2addr v1, v2

    .line 5304
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    int-to-float v2, v2

    .line 5303
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->isPositionVisible(FF)Z

    move-result v0

    return v0
.end method

.method private greylist-max-o startTouchUpFilter(I)V
    .registers 3

    .line 5205
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    .line 5206
    invoke-direct {p0, p1}, Landroid/widget/Editor$HandleView;->addPositionToTouchUpFilter(I)V

    .line 5207
    return-void
.end method

.method private greylist-max-o tooLargeTextForMagnifier()Z
    .registers 6

    .line 5473
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmNewMagnifierEnabled(Landroid/widget/Editor;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_30

    .line 5474
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 5475
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v3

    invoke-virtual {p0, v0, v3}, Landroid/widget/Editor$HandleView;->getLineForOffset(Landroid/text/Layout;I)I

    move-result v3

    .line 5476
    invoke-virtual {v0, v3, v2}, Landroid/text/Layout;->getLineBottom(IZ)I

    move-result v4

    .line 5477
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    sub-int/2addr v4, v0

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmMaxLineHeightForMagnifier(Landroid/widget/Editor;)I

    move-result v0

    if-lt v4, v0, :cond_2e

    goto :goto_2f

    :cond_2e
    move v1, v2

    .line 5476
    :goto_2f
    return v1

    .line 5479
    :cond_30
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmMagnifierAnimator(Landroid/widget/Editor;)Landroid/widget/Editor$MagnifierMotionAnimator;

    move-result-object v0

    invoke-static {v0}, Landroid/widget/Editor$MagnifierMotionAnimator;->-$$Nest$fgetmMagnifier(Landroid/widget/Editor$MagnifierMotionAnimator;)Landroid/widget/Magnifier;

    move-result-object v0

    .line 5480
    invoke-virtual {v0}, Landroid/widget/Magnifier;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmMagnifierAnimator(Landroid/widget/Editor;)Landroid/widget/Editor$MagnifierMotionAnimator;

    move-result-object v3

    invoke-static {v3}, Landroid/widget/Editor$MagnifierMotionAnimator;->-$$Nest$fgetmMagnifier(Landroid/widget/Editor$MagnifierMotionAnimator;)Landroid/widget/Magnifier;

    move-result-object v3

    .line 5481
    invoke-virtual {v3}, Landroid/widget/Magnifier;->getZoom()F

    move-result v3

    div-float/2addr v0, v3

    .line 5479
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    .line 5482
    iget-object v3, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v3

    .line 5483
    iget v4, v3, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v3, v3, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v4, v3

    .line 5484
    iget v3, p0, Landroid/widget/Editor$HandleView;->mTextViewScaleY:F

    mul-float/2addr v4, v3

    cmpl-float v0, v4, v0

    if-lez v0, :cond_6e

    goto :goto_6f

    :cond_6e
    move v1, v2

    :goto_6f
    return v1
.end method

.method private blacklist updateHandlesVisibility()V
    .registers 7

    .line 5663
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmMagnifierAnimator(Landroid/widget/Editor;)Landroid/widget/Editor$MagnifierMotionAnimator;

    move-result-object v0

    invoke-static {v0}, Landroid/widget/Editor$MagnifierMotionAnimator;->-$$Nest$fgetmMagnifier(Landroid/widget/Editor$MagnifierMotionAnimator;)Landroid/widget/Magnifier;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Magnifier;->getPosition()Landroid/graphics/Point;

    move-result-object v0

    .line 5664
    if-nez v0, :cond_11

    .line 5665
    return-void

    .line 5667
    :cond_11
    new-instance v1, Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    iget v4, v0, Landroid/graphics/Point;->x:I

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->-$$Nest$fgetmMagnifierAnimator(Landroid/widget/Editor;)Landroid/widget/Editor$MagnifierMotionAnimator;

    move-result-object v5

    invoke-static {v5}, Landroid/widget/Editor$MagnifierMotionAnimator;->-$$Nest$fgetmMagnifier(Landroid/widget/Editor$MagnifierMotionAnimator;)Landroid/widget/Magnifier;

    move-result-object v5

    .line 5668
    invoke-virtual {v5}, Landroid/widget/Magnifier;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->-$$Nest$fgetmMagnifierAnimator(Landroid/widget/Editor;)Landroid/widget/Editor$MagnifierMotionAnimator;

    move-result-object v5

    invoke-static {v5}, Landroid/widget/Editor$MagnifierMotionAnimator;->-$$Nest$fgetmMagnifier(Landroid/widget/Editor$MagnifierMotionAnimator;)Landroid/widget/Magnifier;

    move-result-object v5

    .line 5669
    invoke-virtual {v5}, Landroid/widget/Magnifier;->getHeight()I

    move-result v5

    add-int/2addr v0, v5

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 5670
    invoke-direct {p0, p0, v1}, Landroid/widget/Editor$HandleView;->handleOverlapsMagnifier(Landroid/widget/Editor$HandleView;Landroid/graphics/Rect;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_4d

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmDrawCursorOnMagnifier(Landroid/widget/Editor;)Z

    move-result v0

    if-nez v0, :cond_4d

    move v0, v2

    goto :goto_4e

    :cond_4d
    const/4 v0, 0x0

    :goto_4e
    invoke-direct {p0, v0}, Landroid/widget/Editor$HandleView;->setVisible(Z)V

    .line 5672
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getOtherSelectionHandle()Landroid/widget/Editor$HandleView;

    move-result-object v0

    .line 5673
    if-eqz v0, :cond_5f

    .line 5674
    invoke-direct {p0, v0, v1}, Landroid/widget/Editor$HandleView;->handleOverlapsMagnifier(Landroid/widget/Editor$HandleView;Landroid/graphics/Rect;)Z

    move-result v1

    xor-int/2addr v1, v2

    invoke-direct {v0, v1}, Landroid/widget/Editor$HandleView;->setVisible(Z)V

    .line 5676
    :cond_5f
    return-void
.end method


# virtual methods
.method protected greylist-max-o dismiss()V
    .registers 2

    .line 5273
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    .line 5274
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 5275
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->onDetached()V

    .line 5276
    return-void
.end method

.method protected final greylist-max-o dismissMagnifier()V
    .registers 3

    .line 5735
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmMagnifierAnimator(Landroid/widget/Editor;)Landroid/widget/Editor$MagnifierMotionAnimator;

    move-result-object v0

    if-eqz v0, :cond_41

    .line 5736
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmMagnifierAnimator(Landroid/widget/Editor;)Landroid/widget/Editor$MagnifierMotionAnimator;

    move-result-object v0

    invoke-static {v0}, Landroid/widget/Editor$MagnifierMotionAnimator;->-$$Nest$mdismiss(Landroid/widget/Editor$MagnifierMotionAnimator;)V

    .line 5737
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/widget/Editor;->-$$Nest$fputmRenderCursorRegardlessTiming(Landroid/widget/Editor;Z)V

    .line 5738
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0, v1}, Landroid/widget/Editor;->-$$Nest$fputmDrawCursorOnMagnifier(Landroid/widget/Editor;Z)V

    .line 5739
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    iget-boolean v0, v0, Landroid/widget/Editor;->mCursorVisible:Z

    const/4 v1, 0x1

    if-nez v0, :cond_30

    .line 5740
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    iput-boolean v1, v0, Landroid/widget/Editor;->mCursorVisible:Z

    .line 5741
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 5743
    :cond_30
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$mresumeBlink(Landroid/widget/Editor;)V

    .line 5744
    invoke-direct {p0, v1}, Landroid/widget/Editor$HandleView;->setVisible(Z)V

    .line 5745
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getOtherSelectionHandle()Landroid/widget/Editor$HandleView;

    move-result-object v0

    .line 5746
    if-eqz v0, :cond_41

    .line 5747
    invoke-direct {v0, v1}, Landroid/widget/Editor$HandleView;->setVisible(Z)V

    .line 5750
    :cond_41
    return-void
.end method

.method public abstract greylist-max-o getCurrentCursorOffset()I
.end method

.method greylist-max-o getCursorHorizontalPosition(Landroid/text/Layout;I)I
    .registers 3

    .line 5399
    invoke-virtual {p0, p1, p2}, Landroid/widget/Editor$HandleView;->getHorizontal(Landroid/text/Layout;I)F

    move-result p1

    const/high16 p2, 0x3f000000    # 0.5f

    sub-float/2addr p1, p2

    float-to-int p1, p1

    return p1
.end method

.method protected greylist-max-o getCursorOffset()I
    .registers 2

    .line 5469
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o getHorizontal(Landroid/text/Layout;I)F
    .registers 5

    .line 5328
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    .line 5329
    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Landroid/widget/TextView;->originalToTransformed(II)I

    move-result p2

    .line 5330
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result p1

    return p1
.end method

.method protected abstract greylist-max-o getHorizontalGravity(Z)I
.end method

.method protected abstract greylist-max-o getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
.end method

.method final blacklist getIdealFingerToCursorOffset()I
    .registers 2

    .line 5158
    iget v0, p0, Landroid/widget/Editor$HandleView;->mIdealFingerToCursorOffset:I

    return v0
.end method

.method public greylist-max-o getIdealVerticalOffset()F
    .registers 2

    .line 5154
    iget v0, p0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    return v0
.end method

.method public blacklist getLineForOffset(Landroid/text/Layout;I)I
    .registers 5

    .line 5340
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    .line 5341
    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Landroid/widget/TextView;->originalToTransformed(II)I

    move-result p2

    .line 5342
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result p1

    return p1
.end method

.method protected abstract greylist-max-o getMagnifierHandleTrigger()I
.end method

.method protected greylist-max-o getOffsetAtCoordinate(Landroid/text/Layout;IF)I
    .registers 4

    .line 5346
    iget-object p1, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {p1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Landroid/widget/TextView;->getOffsetAtCoordinate(IF)I

    move-result p1

    return p1
.end method

.method protected final greylist-max-o getPreferredHeight()I
    .registers 3

    .line 5254
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iget v1, p0, Landroid/widget/Editor$HandleView;->mMinSize:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected final greylist-max-o getPreferredWidth()I
    .registers 3

    .line 5250
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget v1, p0, Landroid/widget/Editor$HandleView;->mMinSize:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public greylist-max-o hide()V
    .registers 2

    .line 5284
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->dismiss()V

    .line 5286
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$mgetPositionListener(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/Editor$PositionListener;->removeSubscriber(Landroid/widget/Editor$TextViewPositionListener;)V

    .line 5287
    return-void
.end method

.method public whitelist invalidate()V
    .registers 4

    .line 5243
    invoke-super {p0}, Landroid/view/View;->invalidate()V

    .line 5244
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 5245
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZZ)V

    .line 5247
    :cond_12
    return-void
.end method

.method protected greylist-max-o isAtRtlRun(Landroid/text/Layout;I)Z
    .registers 5

    .line 5321
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    .line 5322
    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Landroid/widget/TextView;->originalToTransformed(II)I

    move-result p2

    .line 5323
    invoke-virtual {p1, p2}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result p1

    return p1
.end method

.method public greylist-max-o isDragging()Z
    .registers 2

    .line 5822
    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    return v0
.end method

.method public greylist-max-o isShowing()Z
    .registers 2

    .line 5290
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public greylist-max-o offsetHasBeenChanged()Z
    .registers 3

    .line 5233
    iget v0, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public greylist-max-o onDetached()V
    .registers 1

    .line 5831
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->dismissMagnifier()V

    .line 5832
    return-void
.end method

.method protected whitelist onDraw(Landroid/graphics/Canvas;)V
    .registers 7

    .line 5442
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 5443
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v1

    .line 5445
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    add-int/2addr v0, v1

    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 5446
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 5447
    return-void
.end method

.method greylist-max-o onHandleMoved()V
    .registers 1

    .line 5825
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .registers 3

    .line 5238
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getPreferredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getPreferredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/Editor$HandleView;->setMeasuredDimension(II)V

    .line 5239
    return-void
.end method

.method protected whitelist onSizeChanged(IIII)V
    .registers 5

    .line 5836
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 5837
    new-instance p3, Landroid/graphics/Rect;

    const/4 p4, 0x0

    invoke-direct {p3, p4, p4, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/Editor$HandleView;->setSystemGestureExclusionRects(Ljava/util/List;)V

    .line 5838
    return-void
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    .line 5762
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0, p1}, Landroid/widget/Editor;->-$$Nest$mupdateFloatingToolbarVisibility(Landroid/widget/Editor;Landroid/view/MotionEvent;)V

    .line 5764
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/16 v1, 0x1002

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_d4

    goto/16 :goto_d2

    .line 5785
    :pswitch_11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v3, p0, Landroid/widget/Editor$HandleView;->mLastParentXOnScreen:I

    int-to-float v3, v3

    sub-float/2addr v0, v3

    iget v3, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    int-to-float v3, v3

    add-float/2addr v0, v3

    .line 5786
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iget v4, p0, Landroid/widget/Editor$HandleView;->mLastParentYOnScreen:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget v4, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    .line 5789
    iget v4, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    iget v5, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    .line 5790
    iget v5, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    int-to-float v5, v5

    sub-float v5, v3, v5

    iget v6, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    .line 5792
    iget v6, p0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    cmpg-float v6, v4, v6

    if-gez v6, :cond_49

    .line 5793
    iget v6, p0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 5794
    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    goto :goto_53

    .line 5796
    :cond_49
    iget v6, p0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 5797
    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 5799
    :goto_53
    iget v5, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    iput v4, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    .line 5801
    iget v4, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetX:F

    sub-float/2addr v0, v4

    iget v4, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    int-to-float v4, v4

    add-float/2addr v0, v4

    .line 5802
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v0, v4

    .line 5803
    iget v4, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    sub-float/2addr v3, v4

    iget v4, p0, Landroid/widget/Editor$HandleView;->mTouchOffsetY:F

    add-float/2addr v3, v4

    .line 5805
    nop

    .line 5806
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result p1

    .line 5805
    invoke-virtual {p0, v0, v3, p1}, Landroid/widget/Editor$HandleView;->updatePosition(FFZ)V

    .line 5807
    goto :goto_d2

    .line 5811
    :pswitch_75
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result p1

    invoke-direct {p0, p1}, Landroid/widget/Editor$HandleView;->filterOnTouchUp(Z)V

    .line 5814
    :pswitch_7c
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    .line 5815
    invoke-virtual {p0, p1}, Landroid/widget/Editor$HandleView;->updateDrawable(Z)V

    goto :goto_d2

    .line 5766
    :pswitch_83
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/Editor$HandleView;->startTouchUpFilter(I)V

    .line 5768
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$mgetPositionListener(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v0

    .line 5769
    invoke-virtual {v0}, Landroid/widget/Editor$PositionListener;->getPositionX()I

    move-result v1

    iput v1, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    .line 5770
    invoke-virtual {v0}, Landroid/widget/Editor$PositionListener;->getPositionY()I

    move-result v1

    iput v1, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    .line 5771
    invoke-virtual {v0}, Landroid/widget/Editor$PositionListener;->getPositionXOnScreen()I

    move-result v1

    iput v1, p0, Landroid/widget/Editor$HandleView;->mLastParentXOnScreen:I

    .line 5772
    invoke-virtual {v0}, Landroid/widget/Editor$PositionListener;->getPositionYOnScreen()I

    move-result v0

    iput v0, p0, Landroid/widget/Editor$HandleView;->mLastParentYOnScreen:I

    .line 5774
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v1, p0, Landroid/widget/Editor$HandleView;->mLastParentXOnScreen:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 5775
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget v1, p0, Landroid/widget/Editor$HandleView;->mLastParentYOnScreen:I

    int-to-float v1, v1

    sub-float/2addr p1, v1

    iget v1, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    int-to-float v1, v1

    add-float/2addr p1, v1

    .line 5776
    iget v1, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetX:F

    .line 5777
    iget v0, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iput p1, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    .line 5779
    iput-boolean v2, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    .line 5780
    const/4 p1, -0x1

    iput p1, p0, Landroid/widget/Editor$HandleView;->mPreviousLineTouched:I

    .line 5781
    nop

    .line 5818
    :goto_d2
    return v2

    nop

    :pswitch_data_d4
    .packed-switch 0x0
        :pswitch_83
        :pswitch_75
        :pswitch_11
        :pswitch_7c
    .end packed-switch
.end method

.method protected greylist-max-o positionAtCursorOffset(IZZ)V
    .registers 8

    .line 5359
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 5360
    if-nez v0, :cond_12

    .line 5362
    iget-object p1, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {p1}, Landroid/widget/Editor;->prepareCursorControllers()V

    .line 5363
    return-void

    .line 5366
    :cond_12
    iget v1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p1, v1, :cond_1a

    move v1, v2

    goto :goto_1b

    :cond_1a
    move v1, v3

    .line 5367
    :goto_1b
    if-nez v1, :cond_1f

    if-eqz p2, :cond_7d

    .line 5368
    :cond_1f
    if-eqz v1, :cond_3c

    .line 5369
    invoke-virtual {p0, p1}, Landroid/widget/Editor$HandleView;->updateSelection(I)V

    .line 5370
    if-eqz p3, :cond_39

    iget-object p2, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {p2}, Landroid/widget/Editor;->-$$Nest$fgetmHapticTextHandleEnabled(Landroid/widget/Editor;)Z

    move-result p2

    if-eqz p2, :cond_39

    .line 5371
    iget-object p2, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {p2}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object p2

    const/16 p3, 0x9

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->performHapticFeedback(I)Z

    .line 5373
    :cond_39
    invoke-direct {p0, p1}, Landroid/widget/Editor$HandleView;->addPositionToTouchUpFilter(I)V

    .line 5375
    :cond_3c
    invoke-virtual {p0, v0, p1}, Landroid/widget/Editor$HandleView;->getLineForOffset(Landroid/text/Layout;I)I

    move-result p2

    .line 5376
    iput p2, p0, Landroid/widget/Editor$HandleView;->mPrevLine:I

    .line 5378
    invoke-virtual {p0, v0, p1}, Landroid/widget/Editor$HandleView;->getCursorHorizontalPosition(Landroid/text/Layout;I)I

    move-result p3

    iget v1, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    sub-int/2addr p3, v1

    .line 5379
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v1

    sub-int/2addr p3, v1

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCursorOffset()I

    move-result v1

    add-int/2addr p3, v1

    iput p3, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    .line 5380
    invoke-virtual {v0, p2, v3}, Landroid/text/Layout;->getLineBottom(IZ)I

    move-result p2

    iput p2, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    .line 5383
    iget p2, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    iget-object p3, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {p3}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result p3

    add-int/2addr p2, p3

    iput p2, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    .line 5384
    iget p2, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    iget-object p3, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {p3}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result p3

    add-int/2addr p2, p3

    iput p2, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    .line 5386
    iput p1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    .line 5387
    iput-boolean v2, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    .line 5389
    :cond_7d
    return-void
.end method

.method blacklist setDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 5162
    iput-object p1, p0, Landroid/widget/Editor$HandleView;->mDrawableLtr:Landroid/graphics/drawable/Drawable;

    .line 5163
    iput-object p2, p0, Landroid/widget/Editor$HandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    .line 5164
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/Editor$HandleView;->updateDrawable(Z)V

    .line 5165
    return-void
.end method

.method public greylist-max-o show()V
    .registers 3

    .line 5263
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 5265
    :cond_7
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$mgetPositionListener(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/widget/Editor$PositionListener;->addSubscriber(Landroid/widget/Editor$TextViewPositionListener;Z)V

    .line 5268
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    .line 5269
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZZ)V

    .line 5270
    return-void
.end method

.method protected blacklist updateDrawable(Z)V
    .registers 6

    .line 5168
    if-nez p1, :cond_7

    iget-boolean p1, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    if-eqz p1, :cond_7

    .line 5169
    return-void

    .line 5171
    :cond_7
    iget-object p1, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {p1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p1

    .line 5172
    if-nez p1, :cond_14

    .line 5173
    return-void

    .line 5175
    :cond_14
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v0

    .line 5176
    invoke-virtual {p0, p1, v0}, Landroid/widget/Editor$HandleView;->isAtRtlRun(Landroid/text/Layout;I)Z

    move-result v1

    .line 5177
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 5178
    if-eqz v1, :cond_23

    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    goto :goto_25

    :cond_23
    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mDrawableLtr:Landroid/graphics/drawable/Drawable;

    :goto_25
    iput-object v3, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 5179
    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v3, v1}, Landroid/widget/Editor$HandleView;->getHotspotX(Landroid/graphics/drawable/Drawable;Z)I

    move-result v3

    iput v3, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    .line 5180
    invoke-virtual {p0, v1}, Landroid/widget/Editor$HandleView;->getHorizontalGravity(Z)I

    move-result v1

    iput v1, p0, Landroid/widget/Editor$HandleView;->mHorizontalGravity:I

    .line 5181
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v2, v1, :cond_6f

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 5183
    invoke-virtual {p0, p1, v0}, Landroid/widget/Editor$HandleView;->getCursorHorizontalPosition(Landroid/text/Layout;I)I

    move-result p1

    iget v0, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    sub-int/2addr p1, v0

    .line 5184
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCursorOffset()I

    move-result v0

    add-int/2addr p1, v0

    iput p1, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    .line 5185
    iget p1, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v0

    add-int/2addr p1, v0

    iput p1, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    .line 5186
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    .line 5187
    iget p1, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    iget v0, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Landroid/widget/Editor$HandleView;->updatePosition(IIZZ)V

    .line 5188
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->postInvalidate()V

    .line 5190
    :cond_6f
    return-void
.end method

.method protected final greylist-max-o updateMagnifier(Landroid/view/MotionEvent;)V
    .registers 10

    .line 5679
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$mgetMagnifierAnimator(Landroid/widget/Editor;)Landroid/widget/Editor$MagnifierMotionAnimator;

    move-result-object v0

    if-nez v0, :cond_9

    .line 5680
    return-void

    .line 5683
    :cond_9
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 5684
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->checkForTransforms()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_30

    .line 5685
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->tooLargeTextForMagnifier()Z

    move-result v1

    if-nez v1, :cond_30

    .line 5686
    invoke-direct {p0, p1, v0}, Landroid/widget/Editor$HandleView;->obtainMagnifierShowCoordinates(Landroid/view/MotionEvent;Landroid/graphics/PointF;)Z

    move-result p1

    if-eqz p1, :cond_30

    iget-object p1, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {p1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object p1

    .line 5687
    invoke-virtual {p1}, Landroid/widget/TextView;->showUIForTouchScreen()Z

    move-result p1

    if-eqz p1, :cond_30

    move p1, v3

    goto :goto_31

    :cond_30
    move p1, v2

    .line 5688
    :goto_31
    if-eqz p1, :cond_136

    .line 5690
    iget-object p1, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {p1, v3}, Landroid/widget/Editor;->-$$Nest$fputmRenderCursorRegardlessTiming(Landroid/widget/Editor;Z)V

    .line 5691
    iget-object p1, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {p1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->invalidateCursorPath()V

    .line 5692
    iget-object p1, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {p1}, Landroid/widget/Editor;->-$$Nest$msuspendBlink(Landroid/widget/Editor;)V

    .line 5694
    iget-object p1, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {p1}, Landroid/widget/Editor;->-$$Nest$fgetmNewMagnifierEnabled(Landroid/widget/Editor;)Z

    move-result p1

    if-eqz p1, :cond_125

    .line 5696
    iget-object p1, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {p1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p1

    .line 5697
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Landroid/widget/Editor$HandleView;->getLineForOffset(Landroid/text/Layout;I)I

    move-result v1

    .line 5698
    invoke-virtual {p1, v1}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v4

    float-to-int v4, v4

    .line 5699
    iget-object v5, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v5

    iget-object v6, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v6}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getScrollX()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/2addr v4, v5

    .line 5700
    invoke-virtual {p1, v1}, Landroid/text/Layout;->getLineRight(I)F

    move-result v5

    float-to-int v5, v5

    .line 5701
    iget-object v6, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v6}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v6

    iget-object v7, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v7}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getScrollX()I

    move-result v7

    sub-int/2addr v6, v7

    add-int/2addr v5, v6

    .line 5702
    iget-object v6, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    iget v7, v0, Landroid/graphics/PointF;->x:F

    add-int/lit8 v4, v4, -0x14

    int-to-float v4, v4

    cmpg-float v4, v7, v4

    if-ltz v4, :cond_ad

    iget v4, v0, Landroid/graphics/PointF;->x:F

    add-int/lit8 v5, v5, 0x14

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_ab

    goto :goto_ad

    :cond_ab
    move v4, v2

    goto :goto_ae

    :cond_ad
    :goto_ad
    move v4, v3

    :goto_ae
    invoke-static {v6, v4}, Landroid/widget/Editor;->-$$Nest$fputmDrawCursorOnMagnifier(Landroid/widget/Editor;Z)V

    .line 5705
    iget-object v4, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-$$Nest$fgetmMagnifierAnimator(Landroid/widget/Editor;)Landroid/widget/Editor$MagnifierMotionAnimator;

    move-result-object v4

    invoke-static {v4}, Landroid/widget/Editor$MagnifierMotionAnimator;->-$$Nest$fgetmMagnifier(Landroid/widget/Editor$MagnifierMotionAnimator;)Landroid/widget/Magnifier;

    move-result-object v4

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->-$$Nest$fgetmDrawCursorOnMagnifier(Landroid/widget/Editor;)Z

    move-result v5

    iget-object v6, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    iget-object v6, v6, Landroid/widget/Editor;->mDrawableForCursor:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5, v6}, Landroid/widget/Magnifier;->setDrawCursor(ZLandroid/graphics/drawable/Drawable;)V

    .line 5707
    iget-object v4, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    iget-boolean v4, v4, Landroid/widget/Editor;->mCursorVisible:Z

    .line 5710
    iget-object v5, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    iget-object v6, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v6}, Landroid/widget/Editor;->-$$Nest$fgetmDrawCursorOnMagnifier(Landroid/widget/Editor;)Z

    move-result v6

    xor-int/2addr v3, v6

    iput-boolean v3, v5, Landroid/widget/Editor;->mCursorVisible:Z

    .line 5711
    iget-object v3, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    iget-boolean v3, v3, Landroid/widget/Editor;->mCursorVisible:Z

    if-eqz v3, :cond_e4

    if-nez v4, :cond_e4

    .line 5714
    iget-object v3, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v3}, Landroid/widget/Editor;->updateCursorPosition()V

    .line 5716
    :cond_e4
    nop

    .line 5717
    invoke-virtual {p1, v1, v2}, Landroid/text/Layout;->getLineBottom(IZ)I

    move-result v2

    .line 5718
    invoke-virtual {p1, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result p1

    sub-int/2addr v2, p1

    .line 5719
    iget-object p1, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {p1}, Landroid/widget/Editor;->-$$Nest$fgetmInitialZoom(Landroid/widget/Editor;)F

    move-result p1

    .line 5720
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmMinLineHeightForMagnifier(Landroid/widget/Editor;)I

    move-result v1

    if-ge v2, v1, :cond_106

    .line 5721
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmMinLineHeightForMagnifier(Landroid/widget/Editor;)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr p1, v1

    int-to-float v1, v2

    div-float/2addr p1, v1

    .line 5723
    :cond_106
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmMagnifierAnimator(Landroid/widget/Editor;)Landroid/widget/Editor$MagnifierMotionAnimator;

    move-result-object v1

    invoke-static {v1}, Landroid/widget/Editor$MagnifierMotionAnimator;->-$$Nest$fgetmMagnifier(Landroid/widget/Editor$MagnifierMotionAnimator;)Landroid/widget/Magnifier;

    move-result-object v1

    invoke-virtual {v1, v2, p1}, Landroid/widget/Magnifier;->updateSourceFactors(IF)V

    .line 5724
    iget-object p1, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {p1}, Landroid/widget/Editor;->-$$Nest$fgetmMagnifierAnimator(Landroid/widget/Editor;)Landroid/widget/Editor$MagnifierMotionAnimator;

    move-result-object p1

    invoke-static {p1}, Landroid/widget/Editor$MagnifierMotionAnimator;->-$$Nest$fgetmMagnifier(Landroid/widget/Editor$MagnifierMotionAnimator;)Landroid/widget/Magnifier;

    move-result-object p1

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v1, v0}, Landroid/widget/Magnifier;->show(FF)V

    .line 5725
    goto :goto_132

    .line 5726
    :cond_125
    iget-object p1, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {p1}, Landroid/widget/Editor;->-$$Nest$fgetmMagnifierAnimator(Landroid/widget/Editor;)Landroid/widget/Editor$MagnifierMotionAnimator;

    move-result-object p1

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-static {p1, v1, v0}, Landroid/widget/Editor$MagnifierMotionAnimator;->-$$Nest$mshow(Landroid/widget/Editor$MagnifierMotionAnimator;FF)V

    .line 5728
    :goto_132
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->updateHandlesVisibility()V

    goto :goto_139

    .line 5730
    :cond_136
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->dismissMagnifier()V

    .line 5732
    :goto_139
    return-void
.end method

.method protected abstract greylist-max-o updatePosition(FFZ)V
.end method

.method public greylist-max-o updatePosition(IIZZ)V
    .registers 7

    .line 5405
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p4, v1}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZZ)V

    .line 5406
    if-nez p3, :cond_e

    iget-boolean p3, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    if-eqz p3, :cond_90

    .line 5407
    :cond_e
    iget-boolean p3, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    if-eqz p3, :cond_35

    .line 5409
    iget p3, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    if-ne p1, p3, :cond_1a

    iget p3, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    if-eq p2, p3, :cond_32

    .line 5410
    :cond_1a
    iget p3, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetX:F

    iget p4, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    sub-int p4, p1, p4

    int-to-float p4, p4

    add-float/2addr p3, p4

    iput p3, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetX:F

    .line 5411
    iget p3, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    iget p4, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    sub-int p4, p2, p4

    int-to-float p4, p4

    add-float/2addr p3, p4

    iput p3, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    .line 5412
    iput p1, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    .line 5413
    iput p2, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    .line 5416
    :cond_32
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->onHandleMoved()V

    .line 5419
    :cond_35
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->shouldShow()Z

    move-result p1

    if-eqz p1, :cond_85

    .line 5421
    const/4 p1, 0x2

    new-array p1, p1, [I

    iget p2, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    iget p3, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    add-int/2addr p2, p3

    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result p3

    add-int/2addr p2, p3

    aput p2, p1, v1

    iget p2, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    const/4 p3, 0x1

    aput p2, p1, p3

    .line 5422
    iget-object p2, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {p2}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->transformFromViewToWindowSpace([I)V

    .line 5423
    aget p2, p1, v1

    iget p4, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v0

    add-int/2addr p4, v0

    sub-int/2addr p2, p4

    aput p2, p1, v1

    .line 5425
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result p2

    if-eqz p2, :cond_75

    .line 5426
    iget-object p2, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    aget p4, p1, v1

    aget p1, p1, p3

    const/4 p3, -0x1

    invoke-virtual {p2, p4, p1, p3, p3}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_84

    .line 5428
    :cond_75
    iget-object p2, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    iget-object p4, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {p4}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object p4

    aget v0, p1, v1

    aget p1, p1, p3

    invoke-virtual {p2, p4, v1, v0, p1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 5430
    :goto_84
    goto :goto_8e

    .line 5431
    :cond_85
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_8e

    .line 5432
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->dismiss()V

    .line 5436
    :cond_8e
    :goto_8e
    iput-boolean v1, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    .line 5438
    :cond_90
    return-void
.end method

.method protected abstract greylist-max-o updateSelection(I)V
.end method
