.class public Landroid/view/BatchedInputEventReceiver$SimpleBatchedInputEventReceiver;
.super Landroid/view/BatchedInputEventReceiver;
.source "BatchedInputEventReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/BatchedInputEventReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleBatchedInputEventReceiver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/BatchedInputEventReceiver$SimpleBatchedInputEventReceiver$InputEventListener;
    }
.end annotation


# instance fields
.field protected blacklist mListener:Landroid/view/BatchedInputEventReceiver$SimpleBatchedInputEventReceiver$InputEventListener;


# direct methods
.method public constructor blacklist <init>(Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;Landroid/view/BatchedInputEventReceiver$SimpleBatchedInputEventReceiver$InputEventListener;)V
    .registers 5

    .line 211
    invoke-direct {p0, p1, p2, p3}, Landroid/view/BatchedInputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;)V

    .line 212
    iput-object p4, p0, Landroid/view/BatchedInputEventReceiver$SimpleBatchedInputEventReceiver;->mListener:Landroid/view/BatchedInputEventReceiver$SimpleBatchedInputEventReceiver$InputEventListener;

    .line 213
    return-void
.end method


# virtual methods
.method public blacklist onInputEvent(Landroid/view/InputEvent;)V
    .registers 4

    .line 217
    nop

    .line 219
    :try_start_1
    iget-object v0, p0, Landroid/view/BatchedInputEventReceiver$SimpleBatchedInputEventReceiver;->mListener:Landroid/view/BatchedInputEventReceiver$SimpleBatchedInputEventReceiver$InputEventListener;

    invoke-interface {v0, p1}, Landroid/view/BatchedInputEventReceiver$SimpleBatchedInputEventReceiver$InputEventListener;->onInputEvent(Landroid/view/InputEvent;)Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_c

    .line 221
    invoke-virtual {p0, p1, v0}, Landroid/view/BatchedInputEventReceiver$SimpleBatchedInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 222
    nop

    .line 223
    return-void

    .line 221
    :catchall_c
    move-exception v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/view/BatchedInputEventReceiver$SimpleBatchedInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 222
    throw v0
.end method
