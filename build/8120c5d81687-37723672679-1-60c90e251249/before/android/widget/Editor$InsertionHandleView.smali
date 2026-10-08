.class Landroid/widget/Editor$InsertionHandleView;
.super Landroid/widget/Editor$HandleView;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InsertionHandleView"
.end annotation


# instance fields
.field private final blacklist mDeltaHeight:I

.field private final blacklist mDrawableOpacity:I

.field private greylist-max-o mHider:Ljava/lang/Runnable;

.field private blacklist mIsInActionMode:Z

.field private blacklist mIsTouchDown:Z

.field private blacklist mLastDownRawX:F

.field private blacklist mLastDownRawY:F

.field private blacklist mLastUpTime:J

.field private blacklist mOffsetChanged:Z

.field private blacklist mOffsetDown:I

.field private blacklist mPendingDismissOnUp:Z

.field private blacklist mTouchDownX:F

.field private blacklist mTouchDownY:F

.field final synthetic blacklist this$0:Landroid/widget/Editor;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mhideAfterDelay(Landroid/widget/Editor$InsertionHandleView;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/Editor$InsertionHandleView;->hideAfterDelay()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mremoveHiderCallback(Landroid/widget/Editor$InsertionHandleView;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/Editor$InsertionHandleView;->removeHiderCallback()V

    return-void
.end method

.method constructor blacklist <init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;)V
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 5877
    iput-object p1, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    .line 5878
    const v4, 0x102038b

    const/4 v5, 0x0

    move-object v3, p2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/Editor$HandleView;-><init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ILandroid/widget/Editor-IA;)V

    .line 5852
    const/4 p1, 0x0

    iput-boolean p1, v0, Landroid/widget/Editor$InsertionHandleView;->mIsTouchDown:Z

    .line 5854
    iput-boolean p1, v0, Landroid/widget/Editor$InsertionHandleView;->mPendingDismissOnUp:Z

    .line 5880
    nop

    .line 5881
    nop

    .line 5882
    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmFlagInsertionHandleGesturesEnabled(Landroid/widget/Editor;)Z

    move-result p2

    const/16 v1, 0xff

    if-eqz p2, :cond_44

    .line 5883
    const-string/jumbo p1, "widget__insertion_handle_delta_height"

    const/16 p2, 0x19

    invoke-static {p1, p2}, Landroid/app/AppGlobals;->getIntCoreSetting(Ljava/lang/String;I)I

    move-result p1

    .line 5886
    const-string/jumbo v2, "widget__insertion_handle_opacity"

    const/16 v3, 0x32

    invoke-static {v2, v3}, Landroid/app/AppGlobals;->getIntCoreSetting(Ljava/lang/String;I)I

    move-result v2

    .line 5890
    const/16 v4, -0x19

    if-lt p1, v4, :cond_34

    if-le p1, v3, :cond_35

    .line 5891
    :cond_34
    move p1, p2

    .line 5893
    :cond_35
    const/16 p2, 0xa

    const/16 v4, 0x64

    if-lt v2, p2, :cond_40

    if-le v2, v4, :cond_3e

    goto :goto_40

    :cond_3e
    move v3, v2

    goto :goto_41

    .line 5894
    :cond_40
    :goto_40
    nop

    .line 5897
    :goto_41
    mul-int/2addr v3, v1

    div-int/lit8 v1, v3, 0x64

    .line 5899
    :cond_44
    iput p1, v0, Landroid/widget/Editor$InsertionHandleView;->mDeltaHeight:I

    .line 5900
    iput v1, v0, Landroid/widget/Editor$InsertionHandleView;->mDrawableOpacity:I

    .line 5901
    return-void
.end method

.method private greylist-max-o hideAfterDelay()V
    .registers 5

    .line 5904
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->mHider:Ljava/lang/Runnable;

    if-nez v0, :cond_c

    .line 5905
    new-instance v0, Landroid/widget/Editor$InsertionHandleView$1;

    invoke-direct {v0, p0}, Landroid/widget/Editor$InsertionHandleView$1;-><init>(Landroid/widget/Editor$InsertionHandleView;)V

    iput-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->mHider:Ljava/lang/Runnable;

    goto :goto_f

    .line 5911
    :cond_c
    invoke-direct {p0}, Landroid/widget/Editor$InsertionHandleView;->removeHiderCallback()V

    .line 5913
    :goto_f
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$InsertionHandleView;->mHider:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5914
    return-void
.end method

.method private greylist-max-o removeHiderCallback()V
    .registers 3

    .line 5917
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->mHider:Ljava/lang/Runnable;

    if-eqz v0, :cond_f

    .line 5918
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$InsertionHandleView;->mHider:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5920
    :cond_f
    return-void
.end method

.method private blacklist touchThrough(Landroid/view/MotionEvent;)Z
    .registers 9

    .line 6016
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 6017
    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_b6

    goto :goto_5b

    .line 6031
    :pswitch_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/widget/Editor$InsertionHandleView;->mLastUpTime:J

    goto :goto_5b

    .line 6019
    :pswitch_11
    iput-boolean v2, p0, Landroid/widget/Editor$InsertionHandleView;->mIsTouchDown:Z

    .line 6020
    iput-boolean v1, p0, Landroid/widget/Editor$InsertionHandleView;->mOffsetChanged:Z

    .line 6021
    iget-object v3, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    iput v3, p0, Landroid/widget/Editor$InsertionHandleView;->mOffsetDown:I

    .line 6022
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Landroid/widget/Editor$InsertionHandleView;->mTouchDownX:F

    .line 6023
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Landroid/widget/Editor$InsertionHandleView;->mTouchDownY:F

    .line 6024
    iget-object v3, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTextActionMode(Landroid/widget/Editor;)Landroid/view/ActionMode;

    move-result-object v3

    if-eqz v3, :cond_37

    move v3, v2

    goto :goto_38

    :cond_37
    move v3, v1

    :goto_38
    iput-boolean v3, p0, Landroid/widget/Editor$InsertionHandleView;->mIsInActionMode:Z

    .line 6025
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    iget-wide v5, p0, Landroid/widget/Editor$InsertionHandleView;->mLastUpTime:J

    sub-long/2addr v3, v5

    iget-object v5, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->-$$Nest$fgetmDoubleTapTimeoutMillis(Landroid/widget/Editor;)I

    move-result v5

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_51

    .line 6026
    iget-object v3, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v3}, Landroid/widget/Editor;->stopTextActionMode()V

    .line 6028
    :cond_51
    iget-object v3, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTouchState(Landroid/widget/Editor;)Landroid/widget/EditorTouchState;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/EditorTouchState;->setIsOnHandle(Z)V

    .line 6029
    nop

    .line 6035
    :goto_5b
    iget-object v3, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-direct {p0, p1}, Landroid/widget/Editor$InsertionHandleView;->transformEventForTouchThrough(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    .line 6037
    if-eq v0, v2, :cond_6e

    const/4 v3, 0x3

    if-ne v0, v3, :cond_80

    .line 6038
    :cond_6e
    iput-boolean v1, p0, Landroid/widget/Editor$InsertionHandleView;->mIsTouchDown:Z

    .line 6039
    iget-boolean v3, p0, Landroid/widget/Editor$InsertionHandleView;->mPendingDismissOnUp:Z

    if-eqz v3, :cond_77

    .line 6040
    invoke-virtual {p0}, Landroid/widget/Editor$InsertionHandleView;->dismiss()V

    .line 6042
    :cond_77
    iget-object v3, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTouchState(Landroid/widget/Editor;)Landroid/widget/EditorTouchState;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/EditorTouchState;->setIsOnHandle(Z)V

    .line 6046
    :cond_80
    iget-boolean v1, p0, Landroid/widget/Editor$InsertionHandleView;->mOffsetChanged:Z

    if-nez v1, :cond_a0

    .line 6047
    iget-object v1, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 6048
    iget-object v3, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    .line 6049
    if-ne v1, v3, :cond_9e

    iget v3, p0, Landroid/widget/Editor$InsertionHandleView;->mOffsetDown:I

    if-eq v3, v1, :cond_a0

    .line 6050
    :cond_9e
    iput-boolean v2, p0, Landroid/widget/Editor$InsertionHandleView;->mOffsetChanged:Z

    .line 6055
    :cond_a0
    iget-boolean v1, p0, Landroid/widget/Editor$InsertionHandleView;->mOffsetChanged:Z

    if-nez v1, :cond_b5

    if-ne v0, v2, :cond_b5

    .line 6056
    iget-boolean v0, p0, Landroid/widget/Editor$InsertionHandleView;->mIsInActionMode:Z

    if-eqz v0, :cond_b0

    .line 6057
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->stopTextActionMode()V

    goto :goto_b5

    .line 6059
    :cond_b0
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->startInsertionActionMode()V

    .line 6062
    :cond_b5
    :goto_b5
    return p1

    :pswitch_data_b6
    .packed-switch 0x0
        :pswitch_11
        :pswitch_a
    .end packed-switch
.end method

.method private blacklist transformEventForTouchThrough(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .registers 7

    .line 6066
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 6067
    invoke-virtual {p0}, Landroid/widget/Editor$InsertionHandleView;->getCurrentCursorOffset()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/Editor$InsertionHandleView;->getLineForOffset(Landroid/text/Layout;I)I

    move-result v1

    .line 6068
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/text/Layout;->getLineBottom(IZ)I

    move-result v2

    .line 6069
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    sub-int/2addr v2, v0

    .line 6075
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 6076
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v1, v3

    invoke-virtual {p0}, Landroid/widget/Editor$InsertionHandleView;->getMeasuredWidth()I

    move-result v3

    shr-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    add-float/2addr v1, v3

    iget v3, p0, Landroid/widget/Editor$InsertionHandleView;->mTouchDownX:F

    sub-float/2addr v1, v3

    .line 6077
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float/2addr v3, v4

    shr-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    sub-float/2addr v3, v2

    iget v2, p0, Landroid/widget/Editor$InsertionHandleView;->mTouchDownY:F

    sub-float/2addr v3, v2

    .line 6076
    invoke-virtual {v0, v1, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 6078
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    .line 6080
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->toLocalMotionEvent(Landroid/view/MotionEvent;)Z

    .line 6086
    return-object p1
.end method


# virtual methods
.method public blacklist dismiss()V
    .registers 3

    .line 6106
    iget-boolean v0, p0, Landroid/widget/Editor$InsertionHandleView;->mIsTouchDown:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 6111
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor$InsertionHandleView;->mPendingDismissOnUp:Z

    .line 6112
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_13

    .line 6114
    :cond_e
    invoke-super {p0}, Landroid/widget/Editor$HandleView;->dismiss()V

    .line 6115
    iput-boolean v1, p0, Landroid/widget/Editor$InsertionHandleView;->mPendingDismissOnUp:Z

    .line 6117
    :goto_13
    return-void
.end method

.method public greylist-max-o getCurrentCursorOffset()I
    .registers 2

    .line 6127
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    return v0
.end method

.method greylist-max-o getCursorHorizontalPosition(Landroid/text/Layout;I)I
    .registers 4

    .line 5945
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mDrawableForCursor:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1e

    .line 5946
    invoke-virtual {p0, p1, p2}, Landroid/widget/Editor$InsertionHandleView;->getHorizontal(Landroid/text/Layout;I)F

    move-result p1

    .line 5947
    iget-object p2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mDrawableForCursor:Landroid/graphics/drawable/Drawable;

    invoke-static {p2, v0, p1}, Landroid/widget/Editor;->-$$Nest$mclampHorizontalPosition(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;F)I

    move-result p1

    iget-object p2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {p2}, Landroid/widget/Editor;->-$$Nest$fgetmTempRect(Landroid/widget/Editor;)Landroid/graphics/Rect;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, p2

    return p1

    .line 5949
    :cond_1e
    invoke-super {p0, p1, p2}, Landroid/widget/Editor$HandleView;->getCursorHorizontalPosition(Landroid/text/Layout;I)I

    move-result p1

    return p1
.end method

.method protected greylist-max-o getCursorOffset()I
    .registers 4

    .line 5934
    invoke-super {p0}, Landroid/widget/Editor$HandleView;->getCursorOffset()I

    move-result v0

    .line 5935
    iget-object v1, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mDrawableForCursor:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_34

    .line 5936
    iget-object v1, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mDrawableForCursor:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$fgetmTempRect(Landroid/widget/Editor;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 5937
    iget-object v1, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mDrawableForCursor:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$fgetmTempRect(Landroid/widget/Editor;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$fgetmTempRect(Landroid/widget/Editor;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 5940
    :cond_34
    return v0
.end method

.method protected greylist-max-o getHorizontalGravity(Z)I
    .registers 2

    .line 5929
    const/4 p1, 0x1

    return p1
.end method

.method protected greylist-max-o getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
    .registers 3

    .line 5924
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    return p1
.end method

.method protected greylist-max-o getMagnifierHandleTrigger()I
    .registers 2

    .line 6174
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isShowing()Z
    .registers 2

    .line 6091
    iget-boolean v0, p0, Landroid/widget/Editor$InsertionHandleView;->mPendingDismissOnUp:Z

    if-eqz v0, :cond_6

    .line 6092
    const/4 v0, 0x0

    return v0

    .line 6094
    :cond_6
    invoke-super {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v0

    return v0
.end method

.method public greylist-max-o onDetached()V
    .registers 1

    .line 6167
    invoke-super {p0}, Landroid/widget/Editor$HandleView;->onDetached()V

    .line 6168
    invoke-direct {p0}, Landroid/widget/Editor$InsertionHandleView;->removeHiderCallback()V

    .line 6169
    return-void
.end method

.method greylist-max-o onHandleMoved()V
    .registers 1

    .line 6161
    invoke-super {p0}, Landroid/widget/Editor$HandleView;->onHandleMoved()V

    .line 6162
    invoke-direct {p0}, Landroid/widget/Editor$InsertionHandleView;->removeHiderCallback()V

    .line 6163
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .registers 4

    .line 5954
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmFlagInsertionHandleGesturesEnabled(Landroid/widget/Editor;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 5955
    nop

    .line 5956
    invoke-virtual {p0}, Landroid/widget/Editor$InsertionHandleView;->getPreferredHeight()I

    move-result p1

    iget p2, p0, Landroid/widget/Editor$InsertionHandleView;->mDeltaHeight:I

    add-int/2addr p1, p2

    iget-object p2, p0, Landroid/widget/Editor$InsertionHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p2

    .line 5955
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 5957
    invoke-virtual {p0}, Landroid/widget/Editor$InsertionHandleView;->getPreferredWidth()I

    move-result p2

    invoke-virtual {p0, p2, p1}, Landroid/widget/Editor$InsertionHandleView;->setMeasuredDimension(II)V

    .line 5958
    return-void

    .line 5960
    :cond_22
    invoke-super {p0, p1, p2}, Landroid/widget/Editor$HandleView;->onMeasure(II)V

    .line 5961
    return-void
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    .line 5965
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->isFromPrimePointer(Landroid/view/MotionEvent;Z)Z

    move-result v0

    if-nez v0, :cond_e

    .line 5966
    return v1

    .line 5968
    :cond_e
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmFlagInsertionHandleGesturesEnabled(Landroid/widget/Editor;)Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmFlagCursorDragFromAnywhereEnabled(Landroid/widget/Editor;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 5971
    invoke-direct {p0, p1}, Landroid/widget/Editor$InsertionHandleView;->touchThrough(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 5973
    :cond_23
    invoke-super {p0, p1}, Landroid/widget/Editor$HandleView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 5975
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    packed-switch v1, :pswitch_data_8c

    goto :goto_8b

    .line 5983
    :pswitch_2f
    invoke-virtual {p0, p1}, Landroid/widget/Editor$InsertionHandleView;->updateMagnifier(Landroid/view/MotionEvent;)V

    .line 5984
    goto :goto_8b

    .line 5987
    :pswitch_33
    invoke-virtual {p0}, Landroid/widget/Editor$InsertionHandleView;->offsetHasBeenChanged()Z

    move-result v1

    if-nez v1, :cond_63

    .line 5988
    iget-object v1, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 5989
    iget v2, p0, Landroid/widget/Editor$InsertionHandleView;->mLastDownRawX:F

    iget v3, p0, Landroid/widget/Editor$InsertionHandleView;->mLastDownRawY:F

    .line 5990
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    .line 5991
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    .line 5989
    invoke-static {v2, v3, v4, p1, v1}, Landroid/widget/EditorTouchState;->isDistanceWithin(FFFFI)Z

    move-result p1

    .line 5992
    if-eqz p1, :cond_62

    .line 5994
    iget-object p1, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {p1}, Landroid/widget/Editor;->-$$Nest$mtoggleInsertionActionMode(Landroid/widget/Editor;)V

    .line 5996
    :cond_62
    goto :goto_74

    .line 5997
    :cond_63
    iget-object p1, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {p1}, Landroid/widget/Editor;->-$$Nest$fgetmTextActionMode(Landroid/widget/Editor;)Landroid/view/ActionMode;

    move-result-object p1

    if-eqz p1, :cond_74

    .line 5998
    iget-object p1, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {p1}, Landroid/widget/Editor;->-$$Nest$fgetmTextActionMode(Landroid/widget/Editor;)Landroid/view/ActionMode;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ActionMode;->invalidateContentRect()V

    .line 6003
    :cond_74
    :goto_74
    :pswitch_74
    invoke-direct {p0}, Landroid/widget/Editor$InsertionHandleView;->hideAfterDelay()V

    .line 6004
    invoke-virtual {p0}, Landroid/widget/Editor$InsertionHandleView;->dismissMagnifier()V

    .line 6005
    goto :goto_8b

    .line 5977
    :pswitch_7b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iput v1, p0, Landroid/widget/Editor$InsertionHandleView;->mLastDownRawX:F

    .line 5978
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, p0, Landroid/widget/Editor$InsertionHandleView;->mLastDownRawY:F

    .line 5979
    invoke-virtual {p0, p1}, Landroid/widget/Editor$InsertionHandleView;->updateMagnifier(Landroid/view/MotionEvent;)V

    .line 5980
    nop

    .line 6011
    :goto_8b
    return v0

    :pswitch_data_8c
    .packed-switch 0x0
        :pswitch_7b
        :pswitch_33
        :pswitch_2f
        :pswitch_74
    .end packed-switch
.end method

.method public greylist-max-o show()V
    .registers 3

    .line 6099
    invoke-super {p0}, Landroid/widget/Editor$HandleView;->show()V

    .line 6100
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor$InsertionHandleView;->mPendingDismissOnUp:Z

    .line 6101
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Landroid/widget/Editor$InsertionHandleView;->mDrawableOpacity:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 6102
    return-void
.end method

.method protected blacklist updateDrawable(Z)V
    .registers 3

    .line 6121
    invoke-super {p0, p1}, Landroid/widget/Editor$HandleView;->updateDrawable(Z)V

    .line 6122
    iget-object p1, p0, Landroid/widget/Editor$InsertionHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Landroid/widget/Editor$InsertionHandleView;->mDrawableOpacity:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 6123
    return-void
.end method

.method protected greylist-max-o updatePosition(FFZ)V
    .registers 7

    .line 6137
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 6139
    const/4 v1, -0x1

    if-eqz v0, :cond_2c

    .line 6140
    iget v2, p0, Landroid/widget/Editor$InsertionHandleView;->mPreviousLineTouched:I

    if-ne v2, v1, :cond_1d

    .line 6141
    iget-object v1, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v1

    iput v1, p0, Landroid/widget/Editor$InsertionHandleView;->mPreviousLineTouched:I

    .line 6143
    :cond_1d
    iget-object v1, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    iget v2, p0, Landroid/widget/Editor$InsertionHandleView;->mPreviousLineTouched:I

    invoke-virtual {v1, v0, v2, p2}, Landroid/widget/Editor;->getCurrentLineAdjustedForSlop(Landroid/text/Layout;IF)I

    move-result p2

    .line 6144
    invoke-virtual {p0, v0, p2, p1}, Landroid/widget/Editor$InsertionHandleView;->getOffsetAtCoordinate(Landroid/text/Layout;IF)I

    move-result v1

    .line 6145
    iput p2, p0, Landroid/widget/Editor$InsertionHandleView;->mPreviousLineTouched:I

    .line 6146
    goto :goto_2d

    .line 6147
    :cond_2c
    nop

    .line 6153
    :goto_2d
    const/4 p1, 0x0

    invoke-virtual {p0, v1, p1, p3}, Landroid/widget/Editor$InsertionHandleView;->positionAtCursorOffset(IZZ)V

    .line 6154
    iget-object p1, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {p1}, Landroid/widget/Editor;->-$$Nest$fgetmTextActionMode(Landroid/widget/Editor;)Landroid/view/ActionMode;

    move-result-object p1

    if-eqz p1, :cond_3e

    .line 6155
    iget-object p1, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {p1}, Landroid/widget/Editor;->-$$Nest$minvalidateActionMode(Landroid/widget/Editor;)V

    .line 6157
    :cond_3e
    return-void
.end method

.method public greylist-max-o updateSelection(I)V
    .registers 3

    .line 6132
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 6133
    return-void
.end method
