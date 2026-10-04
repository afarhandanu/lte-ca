.class public final Landroid/view/InputEventConsistencyVerifier;
.super Ljava/lang/Object;
.source "InputEventConsistencyVerifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/InputEventConsistencyVerifier$KeyState;
    }
.end annotation


# static fields
.field private static final greylist-max-o EVENT_TYPE_GENERIC_MOTION:Ljava/lang/String; = "GenericMotionEvent"

.field private static final greylist-max-o EVENT_TYPE_KEY:Ljava/lang/String; = "KeyEvent"

.field private static final greylist-max-o EVENT_TYPE_TOUCH:Ljava/lang/String; = "TouchEvent"

.field private static final greylist-max-o EVENT_TYPE_TRACKBALL:Ljava/lang/String; = "TrackballEvent"

.field public static final greylist-max-o FLAG_RAW_DEVICE_INPUT:I = 0x1

.field private static final greylist-max-o IS_ENG_BUILD:Z

.field private static final greylist-max-o RECENT_EVENTS_TO_LOG:I = 0x5


# instance fields
.field private greylist-max-o mButtonsPressed:I

.field private final greylist-max-o mCaller:Ljava/lang/Object;

.field private greylist-max-o mCurrentEvent:Landroid/view/InputEvent;

.field private greylist-max-o mCurrentEventType:Ljava/lang/String;

.field private final greylist-max-o mFlags:I

.field private greylist-max-o mHoverEntered:Z

.field private greylist-max-o mKeyStateList:Landroid/view/InputEventConsistencyVerifier$KeyState;

.field private greylist-max-o mLastEventSeq:I

.field private greylist-max-o mLastEventType:Ljava/lang/String;

.field private greylist-max-o mLastNestingLevel:I

.field private final greylist-max-o mLogTag:Ljava/lang/String;

.field private greylist-max-o mMostRecentEventIndex:I

.field private greylist-max-o mRecentEvents:[Landroid/view/InputEvent;

.field private greylist-max-o mRecentEventsUnhandled:[Z

.field private greylist-max-o mTouchEventStreamDeviceId:I

.field private greylist-max-o mTouchEventStreamIsTainted:Z

.field private greylist-max-o mTouchEventStreamPointers:I

.field private greylist-max-o mTouchEventStreamSource:I

.field private greylist-max-o mTouchEventStreamUnhandled:Z

.field private greylist-max-o mTrackballDown:Z

.field private greylist-max-o mTrackballUnhandled:Z

.field private greylist-max-o mViolationMessage:Ljava/lang/StringBuilder;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 34
    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    sput-boolean v0, Landroid/view/InputEventConsistencyVerifier;->IS_ENG_BUILD:Z

    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/Object;I)V
    .registers 4

    .line 121
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/InputEventConsistencyVerifier;-><init>(Ljava/lang/Object;ILjava/lang/String;)V

    .line 122
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/Object;ILjava/lang/String;)V
    .registers 5

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamDeviceId:I

    .line 131
    iput-object p1, p0, Landroid/view/InputEventConsistencyVerifier;->mCaller:Ljava/lang/Object;

    .line 132
    iput p2, p0, Landroid/view/InputEventConsistencyVerifier;->mFlags:I

    .line 133
    if-eqz p3, :cond_d

    goto :goto_f

    :cond_d
    const-string p3, "InputEventConsistencyVerifier"

    :goto_f
    iput-object p3, p0, Landroid/view/InputEventConsistencyVerifier;->mLogTag:Ljava/lang/String;

    .line 134
    return-void
.end method

.method private greylist-max-o addKeyState(III)V
    .registers 4

    .line 767
    invoke-static {p1, p2, p3}, Landroid/view/InputEventConsistencyVerifier$KeyState;->obtain(III)Landroid/view/InputEventConsistencyVerifier$KeyState;

    move-result-object p1

    .line 768
    iget-object p2, p0, Landroid/view/InputEventConsistencyVerifier;->mKeyStateList:Landroid/view/InputEventConsistencyVerifier$KeyState;

    iput-object p2, p1, Landroid/view/InputEventConsistencyVerifier$KeyState;->next:Landroid/view/InputEventConsistencyVerifier$KeyState;

    .line 769
    iput-object p1, p0, Landroid/view/InputEventConsistencyVerifier;->mKeyStateList:Landroid/view/InputEventConsistencyVerifier$KeyState;

    .line 770
    return-void
.end method

.method private static greylist-max-o appendEvent(Ljava/lang/StringBuilder;ILandroid/view/InputEvent;Z)V
    .registers 6

    .line 724
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ": sent at "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Landroid/view/InputEvent;->getEventTimeNanos()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 725
    const-string p1, ", "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 726
    if-eqz p3, :cond_1d

    .line 727
    const-string p1, "(unhandled) "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 729
    :cond_1d
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 730
    return-void
.end method

.method private greylist-max-o ensureActionButtonIsNonZeroForThisAction(Landroid/view/MotionEvent;)V
    .registers 4

    .line 634
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionButton()I

    move-result v0

    .line 635
    if-nez v0, :cond_24

    .line 636
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No action button set. Action button should always be non-zero for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 637
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    invoke-static {p1}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 636
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    .line 640
    :cond_24
    return-void
.end method

.method private greylist-max-o ensureHistorySizeIsZeroForThisAction(Landroid/view/MotionEvent;)V
    .registers 5

    .line 643
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    .line 644
    if-eqz v0, :cond_2e

    .line 645
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "History size is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " but it should always be 0 for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 646
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    invoke-static {p1}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 645
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    .line 648
    :cond_2e
    return-void
.end method

.method private greylist-max-o ensureMetaStateIsNormalized(I)V
    .registers 3

    .line 618
    invoke-static {p1}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v0

    .line 619
    if-eq v0, p1, :cond_1c

    .line 620
    nop

    .line 621
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    .line 620
    const-string v0, "Metastate not normalized.  Was 0x%08x but expected 0x%08x."

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    .line 623
    :cond_1c
    return-void
.end method

.method private greylist-max-o ensurePointerCountIsOneForThisAction(Landroid/view/MotionEvent;)V
    .registers 5

    .line 626
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 627
    const/4 v1, 0x1

    if-eq v0, v1, :cond_2f

    .line 628
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pointer count is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " but it should always be 1 for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 629
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    invoke-static {p1}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 628
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    .line 631
    :cond_2f
    return-void
.end method

.method private greylist-max-o findKeyState(IIIZ)Landroid/view/InputEventConsistencyVerifier$KeyState;
    .registers 10

    .line 745
    nop

    .line 746
    iget-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mKeyStateList:Landroid/view/InputEventConsistencyVerifier$KeyState;

    const/4 v1, 0x0

    move-object v2, v1

    .line 747
    :goto_5
    if-eqz v0, :cond_2a

    .line 748
    iget v3, v0, Landroid/view/InputEventConsistencyVerifier$KeyState;->deviceId:I

    if-ne v3, p1, :cond_23

    iget v3, v0, Landroid/view/InputEventConsistencyVerifier$KeyState;->source:I

    if-ne v3, p2, :cond_23

    iget v3, v0, Landroid/view/InputEventConsistencyVerifier$KeyState;->keyCode:I

    if-ne v3, p3, :cond_23

    .line 750
    if-eqz p4, :cond_22

    .line 751
    if-eqz v2, :cond_1c

    .line 752
    iget-object p1, v0, Landroid/view/InputEventConsistencyVerifier$KeyState;->next:Landroid/view/InputEventConsistencyVerifier$KeyState;

    iput-object p1, v2, Landroid/view/InputEventConsistencyVerifier$KeyState;->next:Landroid/view/InputEventConsistencyVerifier$KeyState;

    goto :goto_20

    .line 754
    :cond_1c
    iget-object p1, v0, Landroid/view/InputEventConsistencyVerifier$KeyState;->next:Landroid/view/InputEventConsistencyVerifier$KeyState;

    iput-object p1, p0, Landroid/view/InputEventConsistencyVerifier;->mKeyStateList:Landroid/view/InputEventConsistencyVerifier$KeyState;

    .line 756
    :goto_20
    iput-object v1, v0, Landroid/view/InputEventConsistencyVerifier$KeyState;->next:Landroid/view/InputEventConsistencyVerifier$KeyState;

    .line 758
    :cond_22
    return-object v0

    .line 760
    :cond_23
    nop

    .line 761
    iget-object v2, v0, Landroid/view/InputEventConsistencyVerifier$KeyState;->next:Landroid/view/InputEventConsistencyVerifier$KeyState;

    move-object v4, v2

    move-object v2, v0

    move-object v0, v4

    goto :goto_5

    .line 763
    :cond_2a
    return-object v1
.end method

.method private greylist-max-o finishEvent()V
    .registers 10

    .line 674
    iget-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mViolationMessage:Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x5

    if-eqz v0, :cond_72

    iget-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mViolationMessage:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_72

    .line 675
    iget-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mCurrentEvent:Landroid/view/InputEvent;

    invoke-virtual {v0}, Landroid/view/InputEvent;->isTainted()Z

    move-result v0

    if-nez v0, :cond_6d

    .line 677
    iget-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mViolationMessage:Ljava/lang/StringBuilder;

    const-string v4, "\n  in "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Landroid/view/InputEventConsistencyVerifier;->mCaller:Ljava/lang/Object;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 678
    iget-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mViolationMessage:Ljava/lang/StringBuilder;

    const-string v4, "\n  "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 679
    iget-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mViolationMessage:Ljava/lang/StringBuilder;

    iget-object v5, p0, Landroid/view/InputEventConsistencyVerifier;->mCurrentEvent:Landroid/view/InputEvent;

    invoke-static {v0, v2, v5, v2}, Landroid/view/InputEventConsistencyVerifier;->appendEvent(Ljava/lang/StringBuilder;ILandroid/view/InputEvent;Z)V

    .line 681
    iget-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mRecentEvents:[Landroid/view/InputEvent;

    if-eqz v0, :cond_5d

    .line 682
    iget-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mViolationMessage:Ljava/lang/StringBuilder;

    const-string v5, "\n  -- recent events --"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 683
    move v0, v2

    :goto_3e
    if-ge v0, v3, :cond_5d

    .line 684
    iget v5, p0, Landroid/view/InputEventConsistencyVerifier;->mMostRecentEventIndex:I

    add-int/2addr v5, v3

    sub-int/2addr v5, v0

    rem-int/2addr v5, v3

    .line 686
    iget-object v6, p0, Landroid/view/InputEventConsistencyVerifier;->mRecentEvents:[Landroid/view/InputEvent;

    aget-object v6, v6, v5

    .line 687
    if-nez v6, :cond_4c

    .line 688
    goto :goto_5d

    .line 690
    :cond_4c
    iget-object v7, p0, Landroid/view/InputEventConsistencyVerifier;->mViolationMessage:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 691
    iget-object v7, p0, Landroid/view/InputEventConsistencyVerifier;->mViolationMessage:Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    iget-object v8, p0, Landroid/view/InputEventConsistencyVerifier;->mRecentEventsUnhandled:[Z

    aget-boolean v5, v8, v5

    invoke-static {v7, v0, v6, v5}, Landroid/view/InputEventConsistencyVerifier;->appendEvent(Ljava/lang/StringBuilder;ILandroid/view/InputEvent;Z)V

    .line 683
    goto :goto_3e

    .line 695
    :cond_5d
    :goto_5d
    iget-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mLogTag:Ljava/lang/String;

    iget-object v4, p0, Landroid/view/InputEventConsistencyVerifier;->mViolationMessage:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    iget-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mCurrentEvent:Landroid/view/InputEvent;

    invoke-virtual {v0, v1}, Landroid/view/InputEvent;->setTainted(Z)V

    .line 701
    :cond_6d
    iget-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mViolationMessage:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 705
    :cond_72
    iget-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mRecentEvents:[Landroid/view/InputEvent;

    if-nez v0, :cond_7e

    .line 706
    new-array v0, v3, [Landroid/view/InputEvent;

    iput-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mRecentEvents:[Landroid/view/InputEvent;

    .line 707
    new-array v0, v3, [Z

    iput-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mRecentEventsUnhandled:[Z

    .line 709
    :cond_7e
    iget v0, p0, Landroid/view/InputEventConsistencyVerifier;->mMostRecentEventIndex:I

    add-int/2addr v0, v1

    rem-int/2addr v0, v3

    .line 710
    iput v0, p0, Landroid/view/InputEventConsistencyVerifier;->mMostRecentEventIndex:I

    .line 711
    iget-object v1, p0, Landroid/view/InputEventConsistencyVerifier;->mRecentEvents:[Landroid/view/InputEvent;

    aget-object v1, v1, v0

    if-eqz v1, :cond_91

    .line 712
    iget-object v1, p0, Landroid/view/InputEventConsistencyVerifier;->mRecentEvents:[Landroid/view/InputEvent;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/view/InputEvent;->recycle()V

    .line 714
    :cond_91
    iget-object v1, p0, Landroid/view/InputEventConsistencyVerifier;->mRecentEvents:[Landroid/view/InputEvent;

    iget-object v3, p0, Landroid/view/InputEventConsistencyVerifier;->mCurrentEvent:Landroid/view/InputEvent;

    invoke-virtual {v3}, Landroid/view/InputEvent;->copy()Landroid/view/InputEvent;

    move-result-object v3

    aput-object v3, v1, v0

    .line 715
    iget-object v1, p0, Landroid/view/InputEventConsistencyVerifier;->mRecentEventsUnhandled:[Z

    aput-boolean v2, v1, v0

    .line 718
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mCurrentEvent:Landroid/view/InputEvent;

    .line 719
    iput-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mCurrentEventType:Ljava/lang/String;

    .line 720
    return-void
.end method

.method public static greylist isInstrumentationEnabled()Z
    .registers 1

    .line 142
    sget-boolean v0, Landroid/view/InputEventConsistencyVerifier;->IS_ENG_BUILD:Z

    return v0
.end method

.method private greylist-max-o problem(Ljava/lang/String;)V
    .registers 4

    .line 733
    iget-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mViolationMessage:Ljava/lang/StringBuilder;

    if-nez v0, :cond_b

    .line 734
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mViolationMessage:Ljava/lang/StringBuilder;

    .line 736
    :cond_b
    iget-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mViolationMessage:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_21

    .line 737
    iget-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mViolationMessage:Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/view/InputEventConsistencyVerifier;->mCurrentEventType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_28

    .line 739
    :cond_21
    iget-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mViolationMessage:Ljava/lang/StringBuilder;

    const-string v1, "\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 741
    :goto_28
    iget-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mViolationMessage:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 742
    return-void
.end method

.method private greylist-max-o startEvent(Landroid/view/InputEvent;ILjava/lang/String;)Z
    .registers 7

    .line 652
    invoke-virtual {p1}, Landroid/view/InputEvent;->getSequenceNumber()I

    move-result v0

    .line 653
    iget v1, p0, Landroid/view/InputEventConsistencyVerifier;->mLastEventSeq:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_12

    iget v1, p0, Landroid/view/InputEventConsistencyVerifier;->mLastNestingLevel:I

    if-ge p2, v1, :cond_12

    iget-object v1, p0, Landroid/view/InputEventConsistencyVerifier;->mLastEventType:Ljava/lang/String;

    if-ne p3, v1, :cond_12

    .line 655
    return v2

    .line 658
    :cond_12
    if-lez p2, :cond_1b

    .line 659
    iput v0, p0, Landroid/view/InputEventConsistencyVerifier;->mLastEventSeq:I

    .line 660
    iput-object p3, p0, Landroid/view/InputEventConsistencyVerifier;->mLastEventType:Ljava/lang/String;

    .line 661
    iput p2, p0, Landroid/view/InputEventConsistencyVerifier;->mLastNestingLevel:I

    goto :goto_23

    .line 663
    :cond_1b
    const/4 p2, -0x1

    iput p2, p0, Landroid/view/InputEventConsistencyVerifier;->mLastEventSeq:I

    .line 664
    const/4 p2, 0x0

    iput-object p2, p0, Landroid/view/InputEventConsistencyVerifier;->mLastEventType:Ljava/lang/String;

    .line 665
    iput v2, p0, Landroid/view/InputEventConsistencyVerifier;->mLastNestingLevel:I

    .line 668
    :goto_23
    iput-object p1, p0, Landroid/view/InputEventConsistencyVerifier;->mCurrentEvent:Landroid/view/InputEvent;

    .line 669
    iput-object p3, p0, Landroid/view/InputEventConsistencyVerifier;->mCurrentEventType:Ljava/lang/String;

    .line 670
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public greylist-max-o onGenericMotionEvent(Landroid/view/MotionEvent;I)V
    .registers 8

    .line 468
    const-string v0, "GenericMotionEvent"

    invoke-direct {p0, p1, p2, v0}, Landroid/view/InputEventConsistencyVerifier;->startEvent(Landroid/view/InputEvent;ILjava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_9

    .line 469
    return-void

    .line 473
    :cond_9
    :try_start_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result p2

    invoke-direct {p0, p2}, Landroid/view/InputEventConsistencyVerifier;->ensureMetaStateIsNormalized(I)V

    .line 475
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    .line 476
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    .line 477
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v1

    .line 478
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionButton()I

    move-result v2
    :try_end_20
    .catchall {:try_start_9 .. :try_end_20} :catchall_129

    .line 479
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_113

    .line 480
    const-string v0, "Reported button state differs from expected button state based on press and release events. Is 0x%08x but expected 0x%08x."

    const/16 v3, 0x40

    const/16 v4, 0x20

    packed-switch p2, :pswitch_data_12e

    .line 556
    :try_start_2d
    const-string p1, "Invalid action for generic pointer event."

    goto/16 :goto_10f

    .line 528
    :pswitch_31
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensureActionButtonIsNonZeroForThisAction(Landroid/view/MotionEvent;)V

    .line 529
    iget p1, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    and-int/2addr p1, v2

    if-eq p1, v2, :cond_55

    .line 530
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Action button for ACTION_BUTTON_RELEASE event is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", but it was either never pressed or has already been released."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    .line 535
    :cond_55
    iget p1, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    not-int p2, v2

    and-int/2addr p1, p2

    iput p1, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    .line 540
    if-ne v2, v4, :cond_68

    and-int/lit8 p1, v1, 0x2

    if-nez p1, :cond_68

    .line 542
    iget p1, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    and-int/lit8 p1, p1, -0x3

    iput p1, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    goto :goto_74

    .line 543
    :cond_68
    if-ne v2, v3, :cond_74

    and-int/lit8 p1, v1, 0x4

    if-nez p1, :cond_74

    .line 545
    iget p1, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    and-int/lit8 p1, p1, -0x5

    iput p1, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    .line 548
    :cond_74
    :goto_74
    iget p1, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    if-eq p1, v1, :cond_124

    .line 549
    nop

    .line 552
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget p2, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 549
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    goto/16 :goto_124

    .line 500
    :pswitch_90
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensureActionButtonIsNonZeroForThisAction(Landroid/view/MotionEvent;)V

    .line 501
    iget p1, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    and-int/2addr p1, v2

    if-eqz p1, :cond_b4

    .line 502
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Action button for ACTION_BUTTON_PRESS event is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", but it has already been pressed and has yet to be released."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    .line 507
    :cond_b4
    iget p1, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    or-int/2addr p1, v2

    iput p1, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    .line 512
    if-ne v2, v4, :cond_c6

    and-int/lit8 p1, v1, 0x2

    if-eqz p1, :cond_c6

    .line 514
    iget p1, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    goto :goto_d2

    .line 515
    :cond_c6
    if-ne v2, v3, :cond_d2

    and-int/lit8 p1, v1, 0x4

    if-eqz p1, :cond_d2

    .line 517
    iget p1, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    .line 520
    :cond_d2
    :goto_d2
    iget p1, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    if-eq p1, v1, :cond_124

    .line 521
    nop

    .line 524
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget p2, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 521
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    goto :goto_124

    .line 489
    :pswitch_ed
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensurePointerCountIsOneForThisAction(Landroid/view/MotionEvent;)V

    .line 490
    iget-boolean p1, p0, Landroid/view/InputEventConsistencyVerifier;->mHoverEntered:Z

    if-nez p1, :cond_f9

    .line 491
    const-string p1, "ACTION_HOVER_EXIT without prior ACTION_HOVER_ENTER"

    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    .line 493
    :cond_f9
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/view/InputEventConsistencyVerifier;->mHoverEntered:Z

    .line 494
    goto :goto_124

    .line 482
    :pswitch_fd
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensurePointerCountIsOneForThisAction(Landroid/view/MotionEvent;)V

    .line 483
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/view/InputEventConsistencyVerifier;->mHoverEntered:Z

    .line 484
    goto :goto_124

    .line 496
    :pswitch_104
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensureHistorySizeIsZeroForThisAction(Landroid/view/MotionEvent;)V

    .line 497
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensurePointerCountIsOneForThisAction(Landroid/view/MotionEvent;)V

    .line 498
    goto :goto_124

    .line 486
    :pswitch_10b
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensurePointerCountIsOneForThisAction(Landroid/view/MotionEvent;)V

    .line 487
    goto :goto_124

    .line 556
    :goto_10f
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    .line 557
    goto :goto_124

    .line 559
    :cond_113
    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_124

    .line 560
    packed-switch p2, :pswitch_data_13e

    .line 565
    const-string p1, "Invalid action for generic joystick event."

    goto :goto_121

    .line 562
    :pswitch_11d
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensurePointerCountIsOneForThisAction(Landroid/view/MotionEvent;)V

    .line 563
    goto :goto_124

    .line 565
    :goto_121
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V
    :try_end_124
    .catchall {:try_start_2d .. :try_end_124} :catchall_129

    .line 570
    :cond_124
    :goto_124
    invoke-direct {p0}, Landroid/view/InputEventConsistencyVerifier;->finishEvent()V

    .line 571
    nop

    .line 572
    return-void

    .line 570
    :catchall_129
    move-exception p1

    invoke-direct {p0}, Landroid/view/InputEventConsistencyVerifier;->finishEvent()V

    .line 571
    throw p1

    :pswitch_data_12e
    .packed-switch 0x7
        :pswitch_10b
        :pswitch_104
        :pswitch_fd
        :pswitch_ed
        :pswitch_90
        :pswitch_31
    .end packed-switch

    :pswitch_data_13e
    .packed-switch 0x2
        :pswitch_11d
    .end packed-switch
.end method

.method public greylist-max-o onInputEvent(Landroid/view/InputEvent;I)V
    .registers 4

    .line 176
    instance-of v0, p1, Landroid/view/KeyEvent;

    if-eqz v0, :cond_a

    .line 177
    check-cast p1, Landroid/view/KeyEvent;

    .line 178
    invoke-virtual {p0, p1, p2}, Landroid/view/InputEventConsistencyVerifier;->onKeyEvent(Landroid/view/KeyEvent;I)V

    .line 179
    goto :goto_26

    .line 180
    :cond_a
    check-cast p1, Landroid/view/MotionEvent;

    .line 181
    invoke-virtual {p1}, Landroid/view/MotionEvent;->isTouchEvent()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 182
    invoke-virtual {p0, p1, p2}, Landroid/view/InputEventConsistencyVerifier;->onTouchEvent(Landroid/view/MotionEvent;I)V

    goto :goto_26

    .line 183
    :cond_16
    const v0, 0x10004

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 184
    invoke-virtual {p0, p1, p2}, Landroid/view/InputEventConsistencyVerifier;->onTrackballEvent(Landroid/view/MotionEvent;I)V

    goto :goto_26

    .line 186
    :cond_23
    invoke-virtual {p0, p1, p2}, Landroid/view/InputEventConsistencyVerifier;->onGenericMotionEvent(Landroid/view/MotionEvent;I)V

    .line 189
    :goto_26
    return-void
.end method

.method public greylist-max-o onKeyEvent(Landroid/view/KeyEvent;I)V
    .registers 8

    .line 201
    const-string v0, "KeyEvent"

    invoke-direct {p0, p1, p2, v0}, Landroid/view/InputEventConsistencyVerifier;->startEvent(Landroid/view/InputEvent;ILjava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_9

    .line 202
    return-void

    .line 206
    :cond_9
    :try_start_9
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result p2

    invoke-direct {p0, p2}, Landroid/view/InputEventConsistencyVerifier;->ensureMetaStateIsNormalized(I)V

    .line 208
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    .line 209
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v0

    .line 210
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getSource()I

    move-result v1

    .line 211
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 212
    const/4 v3, 0x1

    packed-switch p2, :pswitch_data_84

    .line 244
    new-instance p1, Ljava/lang/StringBuilder;

    goto :goto_5b

    .line 242
    :pswitch_27
    goto :goto_79

    .line 233
    :pswitch_28
    invoke-direct {p0, v0, v1, v2, v3}, Landroid/view/InputEventConsistencyVerifier;->findKeyState(IIIZ)Landroid/view/InputEventConsistencyVerifier$KeyState;

    move-result-object p1

    .line 234
    if-nez p1, :cond_34

    .line 235
    const-string p1, "ACTION_UP but key was not down."

    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    goto :goto_79

    .line 237
    :cond_34
    invoke-virtual {p1}, Landroid/view/InputEventConsistencyVerifier$KeyState;->recycle()V

    .line 239
    goto :goto_79

    .line 214
    :pswitch_38
    const/4 p2, 0x0

    invoke-direct {p0, v0, v1, v2, p2}, Landroid/view/InputEventConsistencyVerifier;->findKeyState(IIIZ)Landroid/view/InputEventConsistencyVerifier$KeyState;

    move-result-object v4

    .line 215
    if-eqz v4, :cond_57

    .line 220
    iget-boolean v0, v4, Landroid/view/InputEventConsistencyVerifier$KeyState;->unhandled:Z

    if-eqz v0, :cond_46

    .line 221
    iput-boolean p2, v4, Landroid/view/InputEventConsistencyVerifier$KeyState;->unhandled:Z

    goto :goto_79

    .line 222
    :cond_46
    iget p2, p0, Landroid/view/InputEventConsistencyVerifier;->mFlags:I

    and-int/2addr p2, v3

    if-nez p2, :cond_79

    .line 223
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_79

    .line 224
    const-string p1, "ACTION_DOWN but key is already down and this event is not a key repeat."

    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    goto :goto_79

    .line 228
    :cond_57
    invoke-direct {p0, v0, v1, v2}, Landroid/view/InputEventConsistencyVerifier;->addKeyState(III)V

    .line 230
    goto :goto_79

    .line 244
    :goto_5b
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid action "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p2}, Landroid/view/KeyEvent;->actionToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " for key event."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V
    :try_end_79
    .catchall {:try_start_9 .. :try_end_79} :catchall_7e

    .line 249
    :cond_79
    :goto_79
    invoke-direct {p0}, Landroid/view/InputEventConsistencyVerifier;->finishEvent()V

    .line 250
    nop

    .line 251
    return-void

    .line 249
    :catchall_7e
    move-exception p1

    invoke-direct {p0}, Landroid/view/InputEventConsistencyVerifier;->finishEvent()V

    .line 250
    throw p1

    nop

    :pswitch_data_84
    .packed-switch 0x0
        :pswitch_38
        :pswitch_28
        :pswitch_27
    .end packed-switch
.end method

.method public greylist onTouchEvent(Landroid/view/MotionEvent;I)V
    .registers 10

    .line 327
    const-string v0, "TouchEvent"

    invoke-direct {p0, p1, p2, v0}, Landroid/view/InputEventConsistencyVerifier;->startEvent(Landroid/view/InputEvent;ILjava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_9

    .line 328
    return-void

    .line 331
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    .line 332
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1a

    const/4 v2, 0x3

    if-eq p2, v2, :cond_1a

    const/4 v2, 0x4

    if-ne p2, v2, :cond_18

    goto :goto_1a

    :cond_18
    move v2, v0

    goto :goto_1b

    :cond_1a
    :goto_1a
    move v2, v1

    .line 334
    :goto_1b
    if-eqz v2, :cond_2b

    iget-boolean v3, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamIsTainted:Z

    if-nez v3, :cond_25

    iget-boolean v3, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamUnhandled:Z

    if-eqz v3, :cond_2b

    .line 335
    :cond_25
    iput-boolean v0, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamIsTainted:Z

    .line 336
    iput-boolean v0, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamUnhandled:Z

    .line 337
    iput v0, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamPointers:I

    .line 339
    :cond_2b
    iget-boolean v3, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamIsTainted:Z

    if-eqz v3, :cond_32

    .line 340
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setTainted(Z)V

    .line 344
    :cond_32
    :try_start_32
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/view/InputEventConsistencyVerifier;->ensureMetaStateIsNormalized(I)V

    .line 346
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v3

    .line 347
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v4

    .line 349
    if-nez v2, :cond_90

    iget v2, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamDeviceId:I

    const/4 v5, -0x1

    if-eq v2, v5, :cond_90

    iget v2, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamDeviceId:I

    if-ne v2, v3, :cond_50

    iget v2, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamSource:I

    if-eq v2, v4, :cond_90

    .line 352
    :cond_50
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Touch event stream contains events from multiple sources: previous device id "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamDeviceId:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", previous source "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamSource:I

    .line 354
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", new device id "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", new source "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 356
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 352
    invoke-direct {p0, v2}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    .line 358
    :cond_90
    iput v3, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamDeviceId:I

    .line 359
    iput v4, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamSource:I

    .line 361
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    .line 362
    and-int/lit8 v3, v4, 0x2

    if-eqz v3, :cond_20a

    .line 363
    packed-switch p2, :pswitch_data_21a

    .line 403
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    goto :goto_114

    .line 395
    :pswitch_a4
    iget p2, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamPointers:I

    if-eqz p2, :cond_ad

    .line 396
    const-string p2, "ACTION_OUTSIDE but pointers are still down."

    invoke-direct {p0, p2}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    .line 398
    :cond_ad
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensureHistorySizeIsZeroForThisAction(Landroid/view/MotionEvent;)V

    .line 399
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensurePointerCountIsOneForThisAction(Landroid/view/MotionEvent;)V

    .line 400
    iput-boolean v0, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamIsTainted:Z

    .line 401
    goto/16 :goto_20f

    .line 391
    :pswitch_b7
    iput v0, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamPointers:I

    .line 392
    iput-boolean v0, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamIsTainted:Z

    .line 393
    goto/16 :goto_20f

    .line 380
    :pswitch_bd
    iget p1, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamPointers:I

    .line 381
    invoke-static {p1}, Ljava/lang/Integer;->bitCount(I)I

    move-result p1

    .line 382
    if-eq v2, p1, :cond_20f

    .line 383
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ACTION_MOVE contained "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " pointers but there are currently "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " pointers down."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    .line 386
    iput-boolean v1, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamIsTainted:Z

    goto/16 :goto_20f

    .line 374
    :pswitch_ef
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensureHistorySizeIsZeroForThisAction(Landroid/view/MotionEvent;)V

    .line 375
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensurePointerCountIsOneForThisAction(Landroid/view/MotionEvent;)V

    .line 376
    iput v0, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamPointers:I

    .line 377
    iput-boolean v0, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamIsTainted:Z

    .line 378
    goto/16 :goto_20f

    .line 365
    :pswitch_fb
    iget p2, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamPointers:I

    if-eqz p2, :cond_104

    .line 366
    const-string p2, "ACTION_DOWN but pointers are already down.  Probably missing ACTION_UP from previous gesture."

    invoke-direct {p0, p2}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    .line 369
    :cond_104
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensureHistorySizeIsZeroForThisAction(Landroid/view/MotionEvent;)V

    .line 370
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensurePointerCountIsOneForThisAction(Landroid/view/MotionEvent;)V

    .line 371
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    shl-int p1, v1, p1

    iput p1, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamPointers:I

    .line 372
    goto/16 :goto_20f

    .line 404
    :goto_114
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3
    :try_end_118
    .catchall {:try_start_32 .. :try_end_118} :catchall_214

    .line 405
    const/4 v4, 0x5

    const-string v5, "."

    const-string v6, " but the pointer count is "

    if-ne v0, v4, :cond_188

    .line 406
    :try_start_11f
    iget p2, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamPointers:I

    if-nez p2, :cond_12a

    .line 407
    const-string p2, "ACTION_POINTER_DOWN but no other pointers were down."

    invoke-direct {p0, p2}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    .line 408
    iput-boolean v1, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamIsTainted:Z

    .line 410
    :cond_12a
    if-ltz v3, :cond_15f

    if-lt v3, v2, :cond_12f

    goto :goto_15f

    .line 415
    :cond_12f
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p2

    .line 416
    shl-int v0, v1, p2

    .line 417
    iget v2, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamPointers:I

    and-int/2addr v2, v0

    if-eqz v2, :cond_159

    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION_POINTER_DOWN specified pointer id "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " which is already down."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    .line 420
    iput-boolean v1, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamIsTainted:Z

    goto :goto_183

    .line 422
    :cond_159
    iget p2, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamPointers:I

    or-int/2addr p2, v0

    iput p2, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamPointers:I

    goto :goto_183

    .line 411
    :cond_15f
    :goto_15f
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ACTION_POINTER_DOWN index is "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    .line 413
    iput-boolean v1, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamIsTainted:Z

    .line 425
    :goto_183
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensureHistorySizeIsZeroForThisAction(Landroid/view/MotionEvent;)V

    goto/16 :goto_20f

    .line 426
    :cond_188
    const/4 v4, 0x6

    if-ne v0, v4, :cond_1e9

    .line 427
    if-ltz v3, :cond_1c1

    if-lt v3, v2, :cond_190

    goto :goto_1c1

    .line 432
    :cond_190
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p2

    .line 433
    shl-int v0, v1, p2

    .line 434
    iget v2, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamPointers:I

    and-int/2addr v2, v0

    if-nez v2, :cond_1ba

    .line 435
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION_POINTER_UP specified pointer id "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " which is not currently down."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    .line 437
    iput-boolean v1, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamIsTainted:Z

    goto :goto_1e5

    .line 439
    :cond_1ba
    iget p2, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamPointers:I

    not-int v0, v0

    and-int/2addr p2, v0

    iput p2, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamPointers:I

    goto :goto_1e5

    .line 428
    :cond_1c1
    :goto_1c1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ACTION_POINTER_UP index is "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    .line 430
    iput-boolean v1, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamIsTainted:Z

    .line 442
    :goto_1e5
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensureHistorySizeIsZeroForThisAction(Landroid/view/MotionEvent;)V

    goto :goto_20f

    .line 444
    :cond_1e9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid action "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p2}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " for touch event."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    .line 447
    goto :goto_20f

    .line 451
    :cond_20a
    const-string p1, "Source was not SOURCE_CLASS_POINTER."

    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V
    :try_end_20f
    .catchall {:try_start_11f .. :try_end_20f} :catchall_214

    .line 454
    :cond_20f
    :goto_20f
    invoke-direct {p0}, Landroid/view/InputEventConsistencyVerifier;->finishEvent()V

    .line 455
    nop

    .line 456
    return-void

    .line 454
    :catchall_214
    move-exception p1

    invoke-direct {p0}, Landroid/view/InputEventConsistencyVerifier;->finishEvent()V

    .line 455
    throw p1

    nop

    :pswitch_data_21a
    .packed-switch 0x0
        :pswitch_fb
        :pswitch_ef
        :pswitch_bd
        :pswitch_b7
        :pswitch_a4
    .end packed-switch
.end method

.method public greylist-max-o onTrackballEvent(Landroid/view/MotionEvent;I)V
    .registers 5

    .line 263
    const-string v0, "TrackballEvent"

    invoke-direct {p0, p1, p2, v0}, Landroid/view/InputEventConsistencyVerifier;->startEvent(Landroid/view/InputEvent;ILjava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_9

    .line 264
    return-void

    .line 268
    :cond_9
    :try_start_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result p2

    invoke-direct {p0, p2}, Landroid/view/InputEventConsistencyVerifier;->ensureMetaStateIsNormalized(I)V

    .line 270
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    .line 271
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    .line 272
    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_99

    .line 273
    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_a8

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    goto :goto_56

    .line 295
    :pswitch_23
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensurePointerCountIsOneForThisAction(Landroid/view/MotionEvent;)V

    .line 296
    goto :goto_74

    .line 285
    :pswitch_27
    iget-boolean p2, p0, Landroid/view/InputEventConsistencyVerifier;->mTrackballDown:Z

    if-nez p2, :cond_31

    .line 286
    const-string p2, "ACTION_UP but trackball is not down."

    invoke-direct {p0, p2}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    goto :goto_35

    .line 288
    :cond_31
    iput-boolean v0, p0, Landroid/view/InputEventConsistencyVerifier;->mTrackballDown:Z

    .line 289
    iput-boolean v0, p0, Landroid/view/InputEventConsistencyVerifier;->mTrackballUnhandled:Z

    .line 291
    :goto_35
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensureHistorySizeIsZeroForThisAction(Landroid/view/MotionEvent;)V

    .line 292
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensurePointerCountIsOneForThisAction(Landroid/view/MotionEvent;)V

    .line 293
    goto :goto_74

    .line 275
    :pswitch_3c
    iget-boolean p2, p0, Landroid/view/InputEventConsistencyVerifier;->mTrackballDown:Z

    if-eqz p2, :cond_4a

    iget-boolean p2, p0, Landroid/view/InputEventConsistencyVerifier;->mTrackballUnhandled:Z

    if-nez p2, :cond_4a

    .line 276
    const-string p2, "ACTION_DOWN but trackball is already down."

    invoke-direct {p0, p2}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    goto :goto_4f

    .line 278
    :cond_4a
    const/4 p2, 0x1

    iput-boolean p2, p0, Landroid/view/InputEventConsistencyVerifier;->mTrackballDown:Z

    .line 279
    iput-boolean v0, p0, Landroid/view/InputEventConsistencyVerifier;->mTrackballUnhandled:Z

    .line 281
    :goto_4f
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensureHistorySizeIsZeroForThisAction(Landroid/view/MotionEvent;)V

    .line 282
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensurePointerCountIsOneForThisAction(Landroid/view/MotionEvent;)V

    .line 283
    goto :goto_74

    .line 298
    :goto_56
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid action "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " for trackball event."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    .line 303
    :goto_74
    iget-boolean p2, p0, Landroid/view/InputEventConsistencyVerifier;->mTrackballDown:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_87

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result p2

    cmpg-float p2, p2, v0

    if-gtz p2, :cond_87

    .line 304
    const-string p1, "Trackball is down but pressure is not greater than 0."

    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    goto :goto_9e

    .line 305
    :cond_87
    iget-boolean p2, p0, Landroid/view/InputEventConsistencyVerifier;->mTrackballDown:Z

    if-nez p2, :cond_9e

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result p1

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_9e

    .line 306
    const-string p1, "Trackball is up but pressure is not equal to 0."

    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    goto :goto_9e

    .line 309
    :cond_99
    const-string p1, "Source was not SOURCE_CLASS_TRACKBALL."

    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V
    :try_end_9e
    .catchall {:try_start_9 .. :try_end_9e} :catchall_a3

    .line 312
    :cond_9e
    :goto_9e
    invoke-direct {p0}, Landroid/view/InputEventConsistencyVerifier;->finishEvent()V

    .line 313
    nop

    .line 314
    return-void

    .line 312
    :catchall_a3
    move-exception p1

    invoke-direct {p0}, Landroid/view/InputEventConsistencyVerifier;->finishEvent()V

    .line 313
    throw p1

    :pswitch_data_a8
    .packed-switch 0x0
        :pswitch_3c
        :pswitch_27
        :pswitch_23
    .end packed-switch
.end method

.method public greylist onUnhandledEvent(Landroid/view/InputEvent;I)V
    .registers 6

    .line 588
    iget v0, p0, Landroid/view/InputEventConsistencyVerifier;->mLastNestingLevel:I

    if-eq p2, v0, :cond_5

    .line 589
    return-void

    .line 592
    :cond_5
    iget-object p2, p0, Landroid/view/InputEventConsistencyVerifier;->mRecentEventsUnhandled:[Z

    const/4 v0, 0x1

    if-eqz p2, :cond_10

    .line 593
    iget-object p2, p0, Landroid/view/InputEventConsistencyVerifier;->mRecentEventsUnhandled:[Z

    iget v1, p0, Landroid/view/InputEventConsistencyVerifier;->mMostRecentEventIndex:I

    aput-boolean v0, p2, v1

    .line 596
    :cond_10
    instance-of p2, p1, Landroid/view/KeyEvent;

    if-eqz p2, :cond_2c

    .line 597
    check-cast p1, Landroid/view/KeyEvent;

    .line 598
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result p2

    .line 599
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getSource()I

    move-result v1

    .line 600
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    .line 601
    const/4 v2, 0x0

    invoke-direct {p0, p2, v1, p1, v2}, Landroid/view/InputEventConsistencyVerifier;->findKeyState(IIIZ)Landroid/view/InputEventConsistencyVerifier$KeyState;

    move-result-object p1

    .line 602
    if-eqz p1, :cond_2b

    .line 603
    iput-boolean v0, p1, Landroid/view/InputEventConsistencyVerifier$KeyState;->unhandled:Z

    .line 605
    :cond_2b
    goto :goto_45

    .line 606
    :cond_2c
    check-cast p1, Landroid/view/MotionEvent;

    .line 607
    invoke-virtual {p1}, Landroid/view/MotionEvent;->isTouchEvent()Z

    move-result p2

    if-eqz p2, :cond_37

    .line 608
    iput-boolean v0, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamUnhandled:Z

    goto :goto_45

    .line 609
    :cond_37
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result p1

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_45

    .line 610
    iget-boolean p1, p0, Landroid/view/InputEventConsistencyVerifier;->mTrackballDown:Z

    if-eqz p1, :cond_45

    .line 611
    iput-boolean v0, p0, Landroid/view/InputEventConsistencyVerifier;->mTrackballUnhandled:Z

    .line 615
    :cond_45
    :goto_45
    return-void
.end method

.method public greylist-max-o reset()V
    .registers 3

    .line 149
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/InputEventConsistencyVerifier;->mLastEventSeq:I

    .line 150
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/InputEventConsistencyVerifier;->mLastNestingLevel:I

    .line 151
    iput-boolean v0, p0, Landroid/view/InputEventConsistencyVerifier;->mTrackballDown:Z

    .line 152
    iput-boolean v0, p0, Landroid/view/InputEventConsistencyVerifier;->mTrackballUnhandled:Z

    .line 153
    iput v0, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamPointers:I

    .line 154
    iput-boolean v0, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamIsTainted:Z

    .line 155
    iput-boolean v0, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamUnhandled:Z

    .line 156
    iput-boolean v0, p0, Landroid/view/InputEventConsistencyVerifier;->mHoverEntered:Z

    .line 157
    iput v0, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    .line 159
    :goto_14
    iget-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mKeyStateList:Landroid/view/InputEventConsistencyVerifier$KeyState;

    if-eqz v0, :cond_22

    .line 160
    iget-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mKeyStateList:Landroid/view/InputEventConsistencyVerifier$KeyState;

    .line 161
    iget-object v1, v0, Landroid/view/InputEventConsistencyVerifier$KeyState;->next:Landroid/view/InputEventConsistencyVerifier$KeyState;

    iput-object v1, p0, Landroid/view/InputEventConsistencyVerifier;->mKeyStateList:Landroid/view/InputEventConsistencyVerifier$KeyState;

    .line 162
    invoke-virtual {v0}, Landroid/view/InputEventConsistencyVerifier$KeyState;->recycle()V

    .line 163
    goto :goto_14

    .line 164
    :cond_22
    return-void
.end method
