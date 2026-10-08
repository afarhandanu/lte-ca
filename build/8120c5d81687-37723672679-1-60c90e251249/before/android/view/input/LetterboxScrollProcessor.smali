.class public Landroid/view/input/LetterboxScrollProcessor;
.super Landroid/view/InputEventCompatProcessor;
.source "LetterboxScrollProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/input/LetterboxScrollProcessor$LetterboxScrollState;,
        Landroid/view/input/LetterboxScrollProcessor$ScrollListener;
    }
.end annotation


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mGeneratedEventIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mProcessedEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/InputEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mScrollDetector:Landroid/view/GestureDetector;

.field private blacklist mState:Landroid/view/input/LetterboxScrollProcessor$LetterboxScrollState;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmGeneratedEventIds(Landroid/view/input/LetterboxScrollProcessor;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Landroid/view/input/LetterboxScrollProcessor;->mGeneratedEventIds:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmProcessedEvents(Landroid/view/input/LetterboxScrollProcessor;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/view/input/LetterboxScrollProcessor;->mProcessedEvents:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmState(Landroid/view/input/LetterboxScrollProcessor;Landroid/view/input/LetterboxScrollProcessor$LetterboxScrollState;)V
    .registers 2

    iput-object p1, p0, Landroid/view/input/LetterboxScrollProcessor;->mState:Landroid/view/input/LetterboxScrollProcessor$LetterboxScrollState;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mapplyOffset(Landroid/view/input/LetterboxScrollProcessor;Landroid/view/MotionEvent;Landroid/graphics/Rect;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/input/LetterboxScrollProcessor;->applyOffset(Landroid/view/MotionEvent;Landroid/graphics/Rect;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetAppBounds(Landroid/view/input/LetterboxScrollProcessor;)Landroid/graphics/Rect;
    .registers 1

    invoke-direct {p0}, Landroid/view/input/LetterboxScrollProcessor;->getAppBounds()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 6

    .line 67
    invoke-direct {p0, p1, p2}, Landroid/view/InputEventCompatProcessor;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 53
    sget-object v0, Landroid/view/input/LetterboxScrollProcessor$LetterboxScrollState;->AWAITING_GESTURE_START:Landroid/view/input/LetterboxScrollProcessor$LetterboxScrollState;

    iput-object v0, p0, Landroid/view/input/LetterboxScrollProcessor;->mState:Landroid/view/input/LetterboxScrollProcessor$LetterboxScrollState;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/input/LetterboxScrollProcessor;->mProcessedEvents:Ljava/util/List;

    .line 64
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/view/input/LetterboxScrollProcessor;->mGeneratedEventIds:Ljava/util/Set;

    .line 68
    iput-object p1, p0, Landroid/view/input/LetterboxScrollProcessor;->mContext:Landroid/content/Context;

    .line 69
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Landroid/view/input/LetterboxScrollProcessor$ScrollListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/view/input/LetterboxScrollProcessor$ScrollListener;-><init>(Landroid/view/input/LetterboxScrollProcessor;Landroid/view/input/LetterboxScrollProcessor-IA;)V

    invoke-direct {v0, p1, v1, p2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/view/input/LetterboxScrollProcessor;->mScrollDetector:Landroid/view/GestureDetector;

    .line 70
    return-void
.end method

.method private blacklist applyOffset(Landroid/view/MotionEvent;Landroid/graphics/Rect;)V
    .registers 5

    .line 176
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/view/input/LetterboxScrollProcessor;->calculateOffset(FI)F

    move-result v0

    .line 177
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    invoke-direct {p0, v1, p2}, Landroid/view/input/LetterboxScrollProcessor;->calculateOffset(FI)F

    move-result p2

    .line 179
    invoke-virtual {p1, v0, p2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 180
    return-void
.end method

.method private blacklist calculateOffset(FI)F
    .registers 5

    .line 183
    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_7

    .line 184
    neg-float p1, p1

    return p1

    .line 185
    :cond_7
    int-to-float p2, p2

    cmpl-float v1, p1, p2

    if-ltz v1, :cond_12

    .line 186
    sub-float/2addr p1, p2

    const/high16 p2, 0x3f800000    # 1.0f

    add-float/2addr p1, p2

    neg-float p1, p1

    return p1

    .line 188
    :cond_12
    return v0
.end method

.method private blacklist getAppBounds()Landroid/graphics/Rect;
    .registers 2

    .line 157
    iget-object v0, p0, Landroid/view/input/LetterboxScrollProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist isCompatibilityNeeded()Z
    .registers 1

    .line 73
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/Flags;->scrollingFromLetterbox()Z

    move-result v0

    return v0
.end method

.method private blacklist isOutsideAppBounds(Landroid/view/MotionEvent;Landroid/graphics/Rect;)Z
    .registers 5

    .line 169
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_2f

    .line 170
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v1, p2, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-gez v0, :cond_2f

    .line 171
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v1, p2, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_2f

    .line 172
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_2d

    goto :goto_2f

    :cond_2d
    const/4 p1, 0x0

    goto :goto_30

    :cond_2f
    :goto_2f
    const/4 p1, 0x1

    .line 169
    :goto_30
    return p1
.end method

.method private blacklist processMotionEvent(Landroid/view/MotionEvent;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/MotionEvent;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/InputEvent;",
            ">;"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Landroid/view/input/LetterboxScrollProcessor;->mProcessedEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 89
    invoke-direct {p0}, Landroid/view/input/LetterboxScrollProcessor;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 92
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1e

    .line 93
    invoke-direct {p0, p1, v0}, Landroid/view/input/LetterboxScrollProcessor;->isOutsideAppBounds(Landroid/view/MotionEvent;Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 94
    sget-object v1, Landroid/view/input/LetterboxScrollProcessor$LetterboxScrollState;->GESTURE_STARTED_OUTSIDE_APP:Landroid/view/input/LetterboxScrollProcessor$LetterboxScrollState;

    iput-object v1, p0, Landroid/view/input/LetterboxScrollProcessor;->mState:Landroid/view/input/LetterboxScrollProcessor$LetterboxScrollState;

    goto :goto_1e

    .line 96
    :cond_1a
    sget-object v1, Landroid/view/input/LetterboxScrollProcessor$LetterboxScrollState;->GESTURE_STARTED_IN_APP:Landroid/view/input/LetterboxScrollProcessor$LetterboxScrollState;

    iput-object v1, p0, Landroid/view/input/LetterboxScrollProcessor;->mState:Landroid/view/input/LetterboxScrollProcessor$LetterboxScrollState;

    .line 100
    :cond_1e
    :goto_1e
    nop

    .line 102
    iget-object v1, p0, Landroid/view/input/LetterboxScrollProcessor;->mState:Landroid/view/input/LetterboxScrollProcessor$LetterboxScrollState;

    invoke-virtual {v1}, Landroid/view/input/LetterboxScrollProcessor$LetterboxScrollState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_6e

    goto :goto_55

    .line 125
    :pswitch_2a
    invoke-direct {p0, p1, v0}, Landroid/view/input/LetterboxScrollProcessor;->isOutsideAppBounds(Landroid/view/MotionEvent;Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 127
    invoke-direct {p0, p1, v0}, Landroid/view/input/LetterboxScrollProcessor;->applyOffset(Landroid/view/MotionEvent;Landroid/graphics/Rect;)V

    goto :goto_38

    .line 130
    :cond_34
    sget-object v0, Landroid/view/input/LetterboxScrollProcessor$LetterboxScrollState;->GESTURE_STARTED_IN_APP:Landroid/view/input/LetterboxScrollProcessor$LetterboxScrollState;

    iput-object v0, p0, Landroid/view/input/LetterboxScrollProcessor;->mState:Landroid/view/input/LetterboxScrollProcessor$LetterboxScrollState;

    .line 132
    :goto_38
    iget-object v0, p0, Landroid/view/input/LetterboxScrollProcessor;->mProcessedEvents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_55

    .line 112
    :pswitch_3e
    invoke-direct {p0, p1, v0}, Landroid/view/input/LetterboxScrollProcessor;->applyOffset(Landroid/view/MotionEvent;Landroid/graphics/Rect;)V

    .line 113
    iget-object v0, p0, Landroid/view/input/LetterboxScrollProcessor;->mScrollDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 117
    iget-object v0, p0, Landroid/view/input/LetterboxScrollProcessor;->mState:Landroid/view/input/LetterboxScrollProcessor$LetterboxScrollState;

    sget-object v1, Landroid/view/input/LetterboxScrollProcessor$LetterboxScrollState;->SCROLLING_STARTED_OUTSIDE_APP:Landroid/view/input/LetterboxScrollProcessor$LetterboxScrollState;

    if-ne v0, v1, :cond_55

    .line 119
    iget-object v0, p0, Landroid/view/input/LetterboxScrollProcessor;->mProcessedEvents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_55

    .line 106
    :pswitch_52
    nop

    .line 107
    move v0, v2

    goto :goto_56

    .line 137
    :cond_55
    :goto_55
    const/4 v0, 0x0

    :goto_56
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eq v1, v2, :cond_63

    .line 138
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_67

    .line 139
    :cond_63
    sget-object p1, Landroid/view/input/LetterboxScrollProcessor$LetterboxScrollState;->AWAITING_GESTURE_START:Landroid/view/input/LetterboxScrollProcessor$LetterboxScrollState;

    iput-object p1, p0, Landroid/view/input/LetterboxScrollProcessor;->mState:Landroid/view/input/LetterboxScrollProcessor$LetterboxScrollState;

    .line 142
    :cond_67
    if-eqz v0, :cond_6b

    const/4 p1, 0x0

    goto :goto_6d

    :cond_6b
    iget-object p1, p0, Landroid/view/input/LetterboxScrollProcessor;->mProcessedEvents:Ljava/util/List;

    :goto_6d
    return-object p1

    :pswitch_data_6e
    .packed-switch 0x0
        :pswitch_52
        :pswitch_52
        :pswitch_3e
        :pswitch_2a
    .end packed-switch
.end method


# virtual methods
.method public blacklist processInputEventBeforeFinish(Landroid/view/InputEvent;)Landroid/view/InputEvent;
    .registers 4

    .line 148
    iget-object v0, p0, Landroid/view/input/LetterboxScrollProcessor;->mGeneratedEventIds:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/view/InputEvent;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 149
    invoke-virtual {p1}, Landroid/view/InputEvent;->recycleIfNeededAfterDispatch()V

    .line 150
    const/4 p1, 0x0

    return-object p1

    .line 152
    :cond_15
    return-object p1
.end method

.method public blacklist processInputEventForCompatibility(Landroid/view/InputEvent;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/InputEvent;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/InputEvent;",
            ">;"
        }
    .end annotation

    .line 79
    instance-of v0, p1, Landroid/view/MotionEvent;

    if-eqz v0, :cond_1a

    check-cast p1, Landroid/view/MotionEvent;

    .line 80
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1a

    .line 81
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_1a

    .line 84
    :cond_15
    invoke-direct {p0, p1}, Landroid/view/input/LetterboxScrollProcessor;->processMotionEvent(Landroid/view/MotionEvent;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 82
    :cond_1a
    :goto_1a
    const/4 p1, 0x0

    return-object p1
.end method
