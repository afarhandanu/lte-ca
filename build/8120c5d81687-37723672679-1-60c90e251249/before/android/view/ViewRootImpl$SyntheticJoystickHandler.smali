.class final Landroid/view/ViewRootImpl$SyntheticJoystickHandler;
.super Landroid/os/Handler;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SyntheticJoystickHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;
    }
.end annotation


# static fields
.field private static final greylist-max-o MSG_ENQUEUE_X_AXIS_KEY_REPEAT:I = 0x1

.field private static final greylist-max-o MSG_ENQUEUE_Y_AXIS_KEY_REPEAT:I = 0x2


# instance fields
.field private final greylist-max-o mDeviceKeyEvents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/KeyEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mJoystickAxesState:Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;

.field final synthetic blacklist this$0:Landroid/view/ViewRootImpl;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDeviceKeyEvents(Landroid/view/ViewRootImpl$SyntheticJoystickHandler;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->mDeviceKeyEvents:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mcancel(Landroid/view/ViewRootImpl$SyntheticJoystickHandler;)V
    .registers 1

    invoke-direct {p0}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->cancel()V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/ViewRootImpl;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 8926
    iput-object p1, p0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->this$0:Landroid/view/ViewRootImpl;

    .line 8927
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Z)V

    .line 8923
    new-instance p1, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;

    invoke-direct {p1, p0}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;-><init>(Landroid/view/ViewRootImpl$SyntheticJoystickHandler;)V

    iput-object p1, p0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->mJoystickAxesState:Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;

    .line 8924
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->mDeviceKeyEvents:Landroid/util/SparseArray;

    .line 8928
    return-void
.end method

.method private greylist-max-o cancel()V
    .registers 7

    .line 8962
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->removeMessages(I)V

    .line 8963
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->removeMessages(I)V

    .line 8964
    const/4 v0, 0x0

    move v1, v0

    :goto_a
    iget-object v2, p0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->mDeviceKeyEvents:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2c

    .line 8965
    iget-object v2, p0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->mDeviceKeyEvents:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/KeyEvent;

    .line 8966
    if-eqz v2, :cond_29

    .line 8967
    iget-object v3, p0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->this$0:Landroid/view/ViewRootImpl;

    .line 8968
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 8967
    invoke-static {v2, v4, v5, v0}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JI)Landroid/view/KeyEvent;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    .line 8964
    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 8971
    :cond_2c
    iget-object v0, p0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->mDeviceKeyEvents:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 8972
    iget-object v0, p0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->mJoystickAxesState:Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->resetState()V

    .line 8973
    return-void
.end method

.method private greylist-max-o update(Landroid/view/MotionEvent;)V
    .registers 15

    .line 8976
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v7

    .line 8977
    const/4 v8, 0x0

    move v9, v8

    :goto_6
    const/16 v10, 0x10

    const/16 v11, 0xf

    const/4 v12, 0x1

    if-ge v9, v7, :cond_3f

    .line 8978
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v3

    .line 8979
    iget-object v1, p0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->mJoystickAxesState:Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;

    .line 8980
    invoke-virtual {p1, v8, v8, v9}, Landroid/view/MotionEvent;->getHistoricalAxisValue(III)F

    move-result v6

    .line 8979
    const/4 v5, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->updateStateForAxis(Landroid/view/MotionEvent;JIF)V

    .line 8981
    iget-object v1, p0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->mJoystickAxesState:Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;

    .line 8982
    invoke-virtual {p1, v12, v8, v9}, Landroid/view/MotionEvent;->getHistoricalAxisValue(III)F

    move-result v6

    .line 8981
    const/4 v5, 0x1

    invoke-virtual/range {v1 .. v6}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->updateStateForAxis(Landroid/view/MotionEvent;JIF)V

    .line 8983
    iget-object v1, p0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->mJoystickAxesState:Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;

    .line 8984
    invoke-virtual {p1, v11, v8, v9}, Landroid/view/MotionEvent;->getHistoricalAxisValue(III)F

    move-result v6

    .line 8983
    const/16 v5, 0xf

    invoke-virtual/range {v1 .. v6}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->updateStateForAxis(Landroid/view/MotionEvent;JIF)V

    .line 8985
    iget-object v1, p0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->mJoystickAxesState:Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;

    .line 8986
    invoke-virtual {p1, v10, v8, v9}, Landroid/view/MotionEvent;->getHistoricalAxisValue(III)F

    move-result v6

    .line 8985
    const/16 v5, 0x10

    invoke-virtual/range {v1 .. v6}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->updateStateForAxis(Landroid/view/MotionEvent;JIF)V

    .line 8977
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 8988
    :cond_3f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    .line 8989
    iget-object v1, p0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->mJoystickAxesState:Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;

    .line 8990
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v6

    .line 8989
    const/4 v5, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->updateStateForAxis(Landroid/view/MotionEvent;JIF)V

    .line 8991
    iget-object v1, p0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->mJoystickAxesState:Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;

    .line 8992
    invoke-virtual {p1, v12}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v6

    .line 8991
    const/4 v5, 0x1

    invoke-virtual/range {v1 .. v6}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->updateStateForAxis(Landroid/view/MotionEvent;JIF)V

    .line 8993
    iget-object v1, p0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->mJoystickAxesState:Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;

    .line 8994
    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v6

    .line 8993
    const/16 v5, 0xf

    invoke-virtual/range {v1 .. v6}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->updateStateForAxis(Landroid/view/MotionEvent;JIF)V

    .line 8995
    iget-object v0, p0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->mJoystickAxesState:Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;

    .line 8996
    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v5

    .line 8995
    move-wide v2, v3

    const/16 v4, 0x10

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->updateStateForAxis(Landroid/view/MotionEvent;JIF)V

    .line 8997
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 7

    .line 8932
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_38

    goto :goto_37

    .line 8935
    :pswitch_6
    iget-object v0, p0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    if-eqz v0, :cond_37

    .line 8936
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/KeyEvent;

    .line 8937
    nop

    .line 8938
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    .line 8937
    invoke-static {v0, v1, v2, v3}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JI)Landroid/view/KeyEvent;

    move-result-object v0

    .line 8939
    iget-object v1, p0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    .line 8940
    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 8941
    invoke-virtual {p1, v4}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 8942
    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 8946
    :cond_37
    :goto_37
    return-void

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method public greylist-max-o process(Landroid/view/MotionEvent;)V
    .registers 5

    .line 8949
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_32

    .line 8957
    iget-object v0, p0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmTag(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30

    .line 8951
    :pswitch_28
    invoke-direct {p0}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->cancel()V

    .line 8952
    goto :goto_30

    .line 8954
    :pswitch_2c
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->update(Landroid/view/MotionEvent;)V

    .line 8955
    nop

    .line 8959
    :goto_30
    return-void

    nop

    :pswitch_data_32
    .packed-switch 0x2
        :pswitch_2c
        :pswitch_28
    .end packed-switch
.end method
