.class Landroid/view/WindowId$FocusObserver$1;
.super Landroid/view/IWindowFocusObserver$Stub;
.source "WindowId.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/WindowId$FocusObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/WindowId$FocusObserver;


# direct methods
.method constructor blacklist <init>(Landroid/view/WindowId$FocusObserver;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 51
    iput-object p1, p0, Landroid/view/WindowId$FocusObserver$1;->this$0:Landroid/view/WindowId$FocusObserver;

    invoke-direct {p0}, Landroid/view/IWindowFocusObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist focusGained(Landroid/os/IBinder;)V
    .registers 5

    .line 56
    iget-object v0, p0, Landroid/view/WindowId$FocusObserver$1;->this$0:Landroid/view/WindowId$FocusObserver;

    iget-object v0, v0, Landroid/view/WindowId$FocusObserver;->mRegistrations:Ljava/util/HashMap;

    monitor-enter v0

    .line 57
    :try_start_5
    iget-object v1, p0, Landroid/view/WindowId$FocusObserver$1;->this$0:Landroid/view/WindowId$FocusObserver;

    iget-object v1, v1, Landroid/view/WindowId$FocusObserver;->mRegistrations:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowId;

    .line 58
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_2d

    .line 59
    iget-object v0, p0, Landroid/view/WindowId$FocusObserver$1;->this$0:Landroid/view/WindowId$FocusObserver;

    iget-object v0, v0, Landroid/view/WindowId$FocusObserver;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_27

    .line 60
    iget-object v0, p0, Landroid/view/WindowId$FocusObserver$1;->this$0:Landroid/view/WindowId$FocusObserver;

    iget-object v0, v0, Landroid/view/WindowId$FocusObserver;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/view/WindowId$FocusObserver$1;->this$0:Landroid/view/WindowId$FocusObserver;

    iget-object v1, v1, Landroid/view/WindowId$FocusObserver;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2c

    .line 62
    :cond_27
    iget-object v0, p0, Landroid/view/WindowId$FocusObserver$1;->this$0:Landroid/view/WindowId$FocusObserver;

    invoke-virtual {v0, p1}, Landroid/view/WindowId$FocusObserver;->onFocusGained(Landroid/view/WindowId;)V

    .line 64
    :goto_2c
    return-void

    .line 58
    :catchall_2d
    move-exception p1

    :try_start_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw p1
.end method

.method public blacklist focusLost(Landroid/os/IBinder;)V
    .registers 5

    .line 69
    iget-object v0, p0, Landroid/view/WindowId$FocusObserver$1;->this$0:Landroid/view/WindowId$FocusObserver;

    iget-object v0, v0, Landroid/view/WindowId$FocusObserver;->mRegistrations:Ljava/util/HashMap;

    monitor-enter v0

    .line 70
    :try_start_5
    iget-object v1, p0, Landroid/view/WindowId$FocusObserver$1;->this$0:Landroid/view/WindowId$FocusObserver;

    iget-object v1, v1, Landroid/view/WindowId$FocusObserver;->mRegistrations:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowId;

    .line 71
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_2d

    .line 72
    iget-object v0, p0, Landroid/view/WindowId$FocusObserver$1;->this$0:Landroid/view/WindowId$FocusObserver;

    iget-object v0, v0, Landroid/view/WindowId$FocusObserver;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_27

    .line 73
    iget-object v0, p0, Landroid/view/WindowId$FocusObserver$1;->this$0:Landroid/view/WindowId$FocusObserver;

    iget-object v0, v0, Landroid/view/WindowId$FocusObserver;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/view/WindowId$FocusObserver$1;->this$0:Landroid/view/WindowId$FocusObserver;

    iget-object v1, v1, Landroid/view/WindowId$FocusObserver;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2c

    .line 75
    :cond_27
    iget-object v0, p0, Landroid/view/WindowId$FocusObserver$1;->this$0:Landroid/view/WindowId$FocusObserver;

    invoke-virtual {v0, p1}, Landroid/view/WindowId$FocusObserver;->onFocusLost(Landroid/view/WindowId;)V

    .line 77
    :goto_2c
    return-void

    .line 71
    :catchall_2d
    move-exception p1

    :try_start_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw p1
.end method
