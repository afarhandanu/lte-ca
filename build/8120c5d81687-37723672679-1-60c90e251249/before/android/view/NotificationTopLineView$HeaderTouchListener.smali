.class Landroid/view/NotificationTopLineView$HeaderTouchListener;
.super Ljava/lang/Object;
.source "NotificationTopLineView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/NotificationTopLineView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeaderTouchListener"
.end annotation


# instance fields
.field private blacklist mDownX:F

.field private blacklist mDownY:F

.field private blacklist mFeedbackRect:Landroid/graphics/Rect;

.field private blacklist mTouchSlop:I

.field private blacklist mTrackGesture:Z

.field final synthetic blacklist this$0:Landroid/view/NotificationTopLineView;


# direct methods
.method static bridge synthetic blacklist -$$Nest$misInside(Landroid/view/NotificationTopLineView$HeaderTouchListener;FF)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/NotificationTopLineView$HeaderTouchListener;->isInside(FF)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$monTouchUp(Landroid/view/NotificationTopLineView$HeaderTouchListener;FFFF)Z
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/NotificationTopLineView$HeaderTouchListener;->onTouchUp(FFFF)Z

    move-result p0

    return p0
.end method

.method constructor blacklist <init>(Landroid/view/NotificationTopLineView;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 309
    iput-object p1, p0, Landroid/view/NotificationTopLineView$HeaderTouchListener;->this$0:Landroid/view/NotificationTopLineView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 310
    return-void
.end method

.method private blacklist getRectAroundView(Landroid/view/View;)Landroid/graphics/Rect;
    .registers 8

    .line 318
    iget-object v0, p0, Landroid/view/NotificationTopLineView$HeaderTouchListener;->this$0:Landroid/view/NotificationTopLineView;

    invoke-virtual {v0}, Landroid/view/NotificationTopLineView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x42400000    # 48.0f

    mul-float/2addr v0, v1

    .line 319
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 320
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 321
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 322
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    const/high16 v5, 0x40000000    # 2.0f

    if-ne v3, v4, :cond_42

    .line 323
    iget-object p1, p0, Landroid/view/NotificationTopLineView$HeaderTouchListener;->this$0:Landroid/view/NotificationTopLineView;

    invoke-static {p1}, Landroid/view/NotificationTopLineView;->-$$Nest$mgetFirstChildNotGone(Landroid/view/NotificationTopLineView;)Landroid/view/View;

    move-result-object p1

    .line 324
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    div-float v4, v1, v5

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    goto :goto_53

    .line 326
    :cond_42
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v5

    div-float v4, v1, v5

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 328
    :goto_53
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    add-int/2addr v3, p1

    int-to-float p1, v3

    div-float/2addr p1, v5

    div-float v3, v0, v5

    sub-float/2addr p1, v3

    float-to-int p1, p1

    iput p1, v2, Landroid/graphics/Rect;->top:I

    .line 329
    iget p1, v2, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    add-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, v2, Landroid/graphics/Rect;->bottom:I

    .line 330
    iget p1, v2, Landroid/graphics/Rect;->left:I

    int-to-float p1, p1

    add-float/2addr p1, v1

    float-to-int p1, p1

    iput p1, v2, Landroid/graphics/Rect;->right:I

    .line 331
    return-object v2
.end method

.method private blacklist isInside(FF)Z
    .registers 4

    .line 376
    iget-object v0, p0, Landroid/view/NotificationTopLineView$HeaderTouchListener;->mFeedbackRect:Landroid/graphics/Rect;

    float-to-int p1, p1

    float-to-int p2, p2

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    return p1
.end method

.method private blacklist onTouchUp(FFFF)Z
    .registers 6

    .line 366
    iget-object v0, p0, Landroid/view/NotificationTopLineView$HeaderTouchListener;->this$0:Landroid/view/NotificationTopLineView;

    invoke-static {v0}, Landroid/view/NotificationTopLineView;->-$$Nest$fgetmFeedbackIcon(Landroid/view/NotificationTopLineView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isVisibleToUser()Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Landroid/view/NotificationTopLineView$HeaderTouchListener;->mFeedbackRect:Landroid/graphics/Rect;

    float-to-int p1, p1

    float-to-int p2, p2

    .line 367
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-nez p1, :cond_20

    iget-object p1, p0, Landroid/view/NotificationTopLineView$HeaderTouchListener;->mFeedbackRect:Landroid/graphics/Rect;

    float-to-int p2, p3

    float-to-int p3, p4

    .line 368
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_2b

    .line 369
    :cond_20
    iget-object p1, p0, Landroid/view/NotificationTopLineView$HeaderTouchListener;->this$0:Landroid/view/NotificationTopLineView;

    invoke-static {p1}, Landroid/view/NotificationTopLineView;->-$$Nest$fgetmFeedbackIcon(Landroid/view/NotificationTopLineView;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 370
    const/4 p1, 0x1

    return p1

    .line 372
    :cond_2b
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public blacklist bindTouchRects()V
    .registers 2

    .line 313
    iget-object v0, p0, Landroid/view/NotificationTopLineView$HeaderTouchListener;->this$0:Landroid/view/NotificationTopLineView;

    invoke-static {v0}, Landroid/view/NotificationTopLineView;->-$$Nest$fgetmFeedbackIcon(Landroid/view/NotificationTopLineView;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/NotificationTopLineView$HeaderTouchListener;->getRectAroundView(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Landroid/view/NotificationTopLineView$HeaderTouchListener;->mFeedbackRect:Landroid/graphics/Rect;

    .line 314
    iget-object v0, p0, Landroid/view/NotificationTopLineView$HeaderTouchListener;->this$0:Landroid/view/NotificationTopLineView;

    invoke-virtual {v0}, Landroid/view/NotificationTopLineView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Landroid/view/NotificationTopLineView$HeaderTouchListener;->mTouchSlop:I

    .line 315
    return-void
.end method

.method public whitelist onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6

    .line 336
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    .line 337
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 338
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p2

    and-int/lit16 p2, p2, 0xff

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p2, :pswitch_data_58

    goto :goto_55

    .line 349
    :pswitch_14
    iget-boolean p2, p0, Landroid/view/NotificationTopLineView$HeaderTouchListener;->mTrackGesture:Z

    if-eqz p2, :cond_55

    .line 350
    iget p2, p0, Landroid/view/NotificationTopLineView$HeaderTouchListener;->mDownX:F

    sub-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Landroid/view/NotificationTopLineView$HeaderTouchListener;->mTouchSlop:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-gtz p1, :cond_34

    iget p1, p0, Landroid/view/NotificationTopLineView$HeaderTouchListener;->mDownY:F

    sub-float/2addr p1, v0

    .line 351
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Landroid/view/NotificationTopLineView$HeaderTouchListener;->mTouchSlop:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_55

    .line 352
    :cond_34
    iput-boolean v1, p0, Landroid/view/NotificationTopLineView$HeaderTouchListener;->mTrackGesture:Z

    goto :goto_55

    .line 357
    :pswitch_37
    iget-boolean p2, p0, Landroid/view/NotificationTopLineView$HeaderTouchListener;->mTrackGesture:Z

    if-eqz p2, :cond_55

    iget p2, p0, Landroid/view/NotificationTopLineView$HeaderTouchListener;->mDownX:F

    iget v1, p0, Landroid/view/NotificationTopLineView$HeaderTouchListener;->mDownY:F

    invoke-direct {p0, p1, v0, p2, v1}, Landroid/view/NotificationTopLineView$HeaderTouchListener;->onTouchUp(FFFF)Z

    move-result p1

    if-eqz p1, :cond_55

    .line 358
    return v2

    .line 340
    :pswitch_46
    iput-boolean v1, p0, Landroid/view/NotificationTopLineView$HeaderTouchListener;->mTrackGesture:Z

    .line 341
    invoke-direct {p0, p1, v0}, Landroid/view/NotificationTopLineView$HeaderTouchListener;->isInside(FF)Z

    move-result p2

    if-eqz p2, :cond_55

    .line 342
    iput p1, p0, Landroid/view/NotificationTopLineView$HeaderTouchListener;->mDownX:F

    .line 343
    iput v0, p0, Landroid/view/NotificationTopLineView$HeaderTouchListener;->mDownY:F

    .line 344
    iput-boolean v2, p0, Landroid/view/NotificationTopLineView$HeaderTouchListener;->mTrackGesture:Z

    .line 345
    return v2

    .line 362
    :cond_55
    :goto_55
    iget-boolean p1, p0, Landroid/view/NotificationTopLineView$HeaderTouchListener;->mTrackGesture:Z

    return p1

    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_46
        :pswitch_37
        :pswitch_14
    .end packed-switch
.end method
