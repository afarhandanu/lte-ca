.class public interface abstract Landroid/view/BatchedInputEventReceiver$BatchedInputScheduler;
.super Ljava/lang/Object;
.source "BatchedInputEventReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/BatchedInputEventReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BatchedInputScheduler"
.end annotation


# virtual methods
.method public abstract blacklist getFrameTimeNanos()J
.end method

.method public abstract blacklist postCallback(Ljava/lang/Runnable;)V
.end method

.method public abstract blacklist removeCallbacks(Ljava/lang/Runnable;)V
.end method
