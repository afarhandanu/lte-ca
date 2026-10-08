.class Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate$ListenerWrapper;
.super Ljava/lang/Object;
.source "WindowManagerGlobal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ListenerWrapper"
.end annotation


# instance fields
.field final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field final blacklist mListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/util/function/IntConsumer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Ljava/util/concurrent/Executor;Ljava/util/function/IntConsumer;)V
    .registers 3

    .line 831
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 832
    iput-object p1, p0, Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate$ListenerWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    .line 833
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate$ListenerWrapper;->mListener:Ljava/lang/ref/WeakReference;

    .line 834
    return-void
.end method
