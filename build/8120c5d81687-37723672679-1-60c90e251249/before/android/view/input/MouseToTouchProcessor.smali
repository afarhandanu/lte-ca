.class public Landroid/view/input/MouseToTouchProcessor;
.super Landroid/view/InputEventCompatProcessor;
.source "MouseToTouchProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/input/MouseToTouchProcessor$State;
    }
.end annotation


# static fields
.field private static final blacklist STATE_AWAITING:I = 0x0

.field private static final blacklist STATE_CONVERTING:I = 0x1

.field private static final blacklist STATE_NON_PRIMARY_CLICK:I = 0x2

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mModifiedEventMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/InputEvent;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mState:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 46
    const-class v0, Landroid/view/input/MouseToTouchProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/input/MouseToTouchProcessor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 3

    .line 78
    invoke-direct {p0, p1, p2}, Landroid/view/InputEventCompatProcessor;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 54
    const/4 p1, 0x0

    iput p1, p0, Landroid/view/input/MouseToTouchProcessor;->mState:I

    .line 60
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroid/view/input/MouseToTouchProcessor;->mModifiedEventMap:Landroid/util/SparseArray;

    .line 79
    return-void
.end method

.method private static blacklist isActionButtonEvent(I)Z
    .registers 2

    .line 263
    const/16 v0, 0xb

    if-eq p0, v0, :cond_b

    const/16 v0, 0xc

    if-ne p0, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method public static blacklist isCompatibilityNeeded(Landroid/content/Context;)Z
    .registers 3

    .line 69
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->mouseToTouchPerAppCompat()Z

    move-result v0

    if-nez v0, :cond_8

    .line 70
    const/4 p0, 0x0

    return p0

    .line 73
    :cond_8
    const-wide/32 v0, 0x18a10a57

    invoke-static {p0, v0, v1}, Landroid/view/input/InputEventCompatHandler;->isPcInputCompatibilityNeeded(Landroid/content/Context;J)Z

    move-result p0

    return p0
.end method

.method private static blacklist obtainRewrittenEventAsTouch(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .registers 23

    .line 191
    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    .line 193
    new-array v8, v1, [Landroid/view/MotionEvent$PointerProperties;

    .line 194
    const/4 v2, 0x0

    move v3, v2

    :goto_a
    const/4 v4, 0x1

    if-ge v3, v1, :cond_20

    .line 195
    new-instance v5, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v5}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v5, v8, v3

    .line 196
    aget-object v5, v8, v3

    invoke-virtual {v0, v3, v5}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    .line 197
    aget-object v5, v8, v3

    iput v4, v5, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    .line 194
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 201
    :cond_20
    new-array v9, v1, [Landroid/view/MotionEvent$PointerCoords;

    .line 202
    move v3, v2

    :goto_23
    if-ge v3, v1, :cond_2f

    .line 203
    new-instance v5, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v5}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v5, v9, v3

    .line 202
    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    .line 206
    :cond_2f
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v3

    if-lez v3, :cond_44

    .line 207
    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v5

    .line 208
    move v3, v2

    :goto_3a
    if-ge v3, v1, :cond_53

    .line 209
    aget-object v7, v9, v3

    invoke-virtual {v0, v3, v2, v7}, Landroid/view/MotionEvent;->getHistoricalPointerCoords(IILandroid/view/MotionEvent$PointerCoords;)V

    .line 208
    add-int/lit8 v3, v3, 0x1

    goto :goto_3a

    .line 212
    :cond_44
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    .line 213
    move v3, v2

    :goto_49
    if-ge v3, v1, :cond_53

    .line 214
    aget-object v7, v9, v3

    invoke-virtual {v0, v3, v7}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 213
    add-int/lit8 v3, v3, 0x1

    goto :goto_49

    .line 218
    :cond_53
    nop

    .line 220
    move v7, v2

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    .line 222
    move v10, v4

    move-wide v4, v5

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    .line 223
    move v11, v7

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    .line 226
    move v12, v10

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v10

    .line 228
    move v13, v12

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v12

    .line 229
    move v14, v13

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v13

    .line 230
    move v15, v14

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v14

    .line 231
    move/from16 v16, v15

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v15

    .line 233
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v17

    .line 234
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getFlags()I

    move-result v18

    .line 235
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getClassification()I

    move-result v19

    .line 219
    move/from16 v20, v11

    const/4 v11, 0x0

    move/from16 v21, v16

    const/16 v16, 0x1002

    invoke-static/range {v2 .. v19}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIIIII)Landroid/view/MotionEvent;

    move-result-object v2

    .line 239
    move/from16 v4, v21

    :goto_97
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v3

    if-gt v4, v3, :cond_cb

    .line 241
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v3

    if-ne v4, v3, :cond_b2

    .line 242
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    .line 243
    const/4 v3, 0x0

    :goto_a8
    if-ge v3, v1, :cond_c1

    .line 244
    aget-object v7, v9, v3

    invoke-virtual {v0, v3, v7}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 243
    add-int/lit8 v3, v3, 0x1

    goto :goto_a8

    .line 247
    :cond_b2
    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v5

    .line 248
    const/4 v3, 0x0

    :goto_b7
    if-ge v3, v1, :cond_c1

    .line 249
    aget-object v7, v9, v3

    invoke-virtual {v0, v3, v4, v7}, Landroid/view/MotionEvent;->getHistoricalPointerCoords(IILandroid/view/MotionEvent$PointerCoords;)V

    .line 248
    add-int/lit8 v3, v3, 0x1

    goto :goto_b7

    .line 253
    :cond_c1
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v3

    invoke-virtual {v2, v5, v6, v9, v3}, Landroid/view/MotionEvent;->addBatch(J[Landroid/view/MotionEvent$PointerCoords;I)V

    .line 239
    add-int/lit8 v4, v4, 0x1

    goto :goto_97

    .line 256
    :cond_cb
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/view/MotionEvent;->setActionButton(I)V

    .line 257
    invoke-virtual {v2, v7}, Landroid/view/MotionEvent;->setButtonState(I)V

    .line 259
    return-object v2
.end method

.method private blacklist processEventInAwaitingState(Landroid/view/MotionEvent;)Ljava/util/List;
    .registers 7
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

    .line 113
    invoke-virtual {p1}, Landroid/view/MotionEvent;->isHoverEvent()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_17

    .line 115
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v0

    if-eqz v0, :cond_16

    .line 116
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setButtonState(I)V

    .line 117
    invoke-static {p1}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 119
    :cond_16
    return-object v2

    .line 122
    :cond_17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 123
    invoke-static {v0}, Landroid/view/input/MouseToTouchProcessor;->isActionButtonEvent(I)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 125
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 127
    :cond_26
    if-eqz v0, :cond_40

    .line 128
    sget-object v0, Landroid/view/input/MouseToTouchProcessor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Broken input sequence is observed. event="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_40
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v0

    const/4 v3, 0x1

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_49

    move v1, v3

    .line 133
    :cond_49
    if-nez v1, :cond_56

    invoke-virtual {p1}, Landroid/view/MotionEvent;->isSynthesizedTouchpadGesture()Z

    move-result v0

    if-eqz v0, :cond_52

    goto :goto_56

    .line 137
    :cond_52
    const/4 p1, 0x2

    iput p1, p0, Landroid/view/input/MouseToTouchProcessor;->mState:I

    .line 138
    return-object v2

    .line 134
    :cond_56
    :goto_56
    iput v3, p0, Landroid/view/input/MouseToTouchProcessor;->mState:I

    .line 135
    invoke-static {p1}, Landroid/view/input/MouseToTouchProcessor;->obtainRewrittenEventAsTouch(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    invoke-static {p1}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private blacklist processEventInConvertingState(Landroid/view/MotionEvent;)Ljava/util/List;
    .registers 4
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

    .line 151
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 152
    invoke-static {v0}, Landroid/view/input/MouseToTouchProcessor;->isActionButtonEvent(I)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 154
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 155
    :cond_f
    const/4 v1, 0x1

    if-eq v0, v1, :cond_15

    const/4 v1, 0x3

    if-ne v0, v1, :cond_18

    .line 156
    :cond_15
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/input/MouseToTouchProcessor;->mState:I

    .line 159
    :cond_18
    invoke-static {p1}, Landroid/view/input/MouseToTouchProcessor;->obtainRewrittenEventAsTouch(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    invoke-static {p1}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private blacklist processEventInNonPrimaryClickState(Landroid/view/MotionEvent;)Ljava/util/List;
    .registers 3
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

    .line 164
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    .line 165
    const/4 v0, 0x1

    if-eq p1, v0, :cond_a

    const/4 v0, 0x3

    if-ne p1, v0, :cond_d

    .line 166
    :cond_a
    const/4 p1, 0x0

    iput p1, p0, Landroid/view/input/MouseToTouchProcessor;->mState:I

    .line 170
    :cond_d
    const/4 p1, 0x0

    return-object p1
.end method

.method private blacklist processMotionEvent(Landroid/view/MotionEvent;)Ljava/util/List;
    .registers 3
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

    .line 103
    iget v0, p0, Landroid/view/input/MouseToTouchProcessor;->mState:I

    packed-switch v0, :pswitch_data_16

    .line 107
    const/4 p1, 0x0

    goto :goto_15

    .line 106
    :pswitch_7
    invoke-direct {p0, p1}, Landroid/view/input/MouseToTouchProcessor;->processEventInNonPrimaryClickState(Landroid/view/MotionEvent;)Ljava/util/List;

    move-result-object p1

    goto :goto_15

    .line 105
    :pswitch_c
    invoke-direct {p0, p1}, Landroid/view/input/MouseToTouchProcessor;->processEventInConvertingState(Landroid/view/MotionEvent;)Ljava/util/List;

    move-result-object p1

    goto :goto_15

    .line 104
    :pswitch_11
    invoke-direct {p0, p1}, Landroid/view/input/MouseToTouchProcessor;->processEventInAwaitingState(Landroid/view/MotionEvent;)Ljava/util/List;

    move-result-object p1

    .line 103
    :goto_15
    return-object p1

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_11
        :pswitch_c
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public blacklist processInputEventBeforeFinish(Landroid/view/InputEvent;)Landroid/view/InputEvent;
    .registers 5

    .line 176
    iget-object v0, p0, Landroid/view/input/MouseToTouchProcessor;->mModifiedEventMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/InputEvent;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 177
    if-gez v0, :cond_d

    .line 178
    return-object p1

    .line 181
    :cond_d
    iget-object v1, p0, Landroid/view/input/MouseToTouchProcessor;->mModifiedEventMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InputEvent;

    .line 182
    iget-object v2, p0, Landroid/view/input/MouseToTouchProcessor;->mModifiedEventMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 183
    if-eq p1, v1, :cond_1f

    .line 184
    invoke-virtual {p1}, Landroid/view/InputEvent;->recycleIfNeededAfterDispatch()V

    .line 186
    :cond_1f
    return-object v1
.end method

.method public blacklist processInputEventForCompatibility(Landroid/view/InputEvent;)Ljava/util/List;
    .registers 7
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

    .line 84
    instance-of v0, p1, Landroid/view/MotionEvent;

    const/4 v1, 0x0

    if-eqz v0, :cond_57

    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    .line 85
    const/16 v2, 0x2002

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 86
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_57

    .line 87
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_20

    goto :goto_57

    .line 91
    :cond_20
    invoke-direct {p0, v0}, Landroid/view/input/MouseToTouchProcessor;->processMotionEvent(Landroid/view/MotionEvent;)Ljava/util/List;

    move-result-object v0

    .line 92
    if-eqz v0, :cond_56

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_56

    .line 93
    const/4 v2, 0x0

    :goto_2d
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_47

    .line 94
    iget-object v3, p0, Landroid/view/input/MouseToTouchProcessor;->mModifiedEventMap:Landroid/util/SparseArray;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/InputEvent;

    invoke-virtual {v4}, Landroid/view/InputEvent;->getId()I

    move-result v4

    invoke-virtual {v3, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 93
    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    .line 96
    :cond_47
    iget-object v1, p0, Landroid/view/input/MouseToTouchProcessor;->mModifiedEventMap:Landroid/util/SparseArray;

    invoke-interface {v0}, Ljava/util/List;->getLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InputEvent;

    invoke-virtual {v2}, Landroid/view/InputEvent;->getId()I

    move-result v2

    invoke-virtual {v1, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 98
    :cond_56
    return-object v0

    .line 88
    :cond_57
    :goto_57
    return-object v1
.end method
