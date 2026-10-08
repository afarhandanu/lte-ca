.class Landroid/view/contentcapture/MainContentCaptureSession$SessionStateReceiver;
.super Lcom/android/internal/os/IResultReceiver$Stub;
.source "MainContentCaptureSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/contentcapture/MainContentCaptureSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SessionStateReceiver"
.end annotation


# instance fields
.field private final blacklist mMainSession:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/contentcapture/MainContentCaptureSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Landroid/view/contentcapture/MainContentCaptureSession;)V
    .registers 3

    .line 197
    invoke-direct {p0}, Lcom/android/internal/os/IResultReceiver$Stub;-><init>()V

    .line 198
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession$SessionStateReceiver;->mMainSession:Ljava/lang/ref/WeakReference;

    .line 199
    return-void
.end method

.method static synthetic blacklist lambda$send$0(Landroid/view/contentcapture/MainContentCaptureSession;)V
    .registers 2

    .line 220
    const/16 v0, 0x104

    invoke-virtual {p0, v0}, Landroid/view/contentcapture/MainContentCaptureSession;->resetSession(I)V

    return-void
.end method

.method static synthetic blacklist lambda$send$1(Landroid/view/contentcapture/MainContentCaptureSession;ILandroid/os/IBinder;)V
    .registers 3

    .line 228
    invoke-virtual {p0, p1, p2}, Landroid/view/contentcapture/MainContentCaptureSession;->onSessionStarted(ILandroid/os/IBinder;)V

    return-void
.end method


# virtual methods
.method public blacklist send(ILandroid/os/Bundle;)V
    .registers 5

    .line 203
    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession$SessionStateReceiver;->mMainSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/contentcapture/MainContentCaptureSession;

    .line 204
    if-nez v0, :cond_15

    .line 205
    invoke-static {}, Landroid/view/contentcapture/MainContentCaptureSession;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "received result after mina session released"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    return-void

    .line 209
    :cond_15
    if-eqz p2, :cond_48

    .line 211
    const-string v1, "enabled"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 212
    if-eqz v1, :cond_2d

    .line 213
    const/4 p2, 0x2

    if-ne p1, p2, :cond_24

    const/4 p1, 0x1

    goto :goto_25

    :cond_24
    const/4 p1, 0x0

    .line 214
    :goto_25
    invoke-static {v0}, Landroid/view/contentcapture/MainContentCaptureSession;->-$$Nest$fgetmDisabled(Landroid/view/contentcapture/MainContentCaptureSession;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 215
    return-void

    .line 217
    :cond_2d
    const-string v1, "binder"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p2

    .line 218
    if-nez p2, :cond_47

    .line 219
    invoke-static {}, Landroid/view/contentcapture/MainContentCaptureSession;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "No binder extra result"

    invoke-static {p1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    new-instance p1, Landroid/view/contentcapture/MainContentCaptureSession$SessionStateReceiver$$ExternalSyntheticLambda0;

    invoke-direct {p1, v0}, Landroid/view/contentcapture/MainContentCaptureSession$SessionStateReceiver$$ExternalSyntheticLambda0;-><init>(Landroid/view/contentcapture/MainContentCaptureSession;)V

    invoke-static {v0, p1}, Landroid/view/contentcapture/MainContentCaptureSession;->-$$Nest$mrunOnContentCaptureThread(Landroid/view/contentcapture/MainContentCaptureSession;Ljava/lang/Runnable;)V

    .line 222
    return-void

    .line 224
    :cond_47
    goto :goto_49

    .line 225
    :cond_48
    const/4 p2, 0x0

    .line 227
    :goto_49
    new-instance v1, Landroid/view/contentcapture/MainContentCaptureSession$SessionStateReceiver$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0, p1, p2}, Landroid/view/contentcapture/MainContentCaptureSession$SessionStateReceiver$$ExternalSyntheticLambda1;-><init>(Landroid/view/contentcapture/MainContentCaptureSession;ILandroid/os/IBinder;)V

    invoke-static {v0, v1}, Landroid/view/contentcapture/MainContentCaptureSession;->-$$Nest$mrunOnContentCaptureThread(Landroid/view/contentcapture/MainContentCaptureSession;Ljava/lang/Runnable;)V

    .line 229
    return-void
.end method
