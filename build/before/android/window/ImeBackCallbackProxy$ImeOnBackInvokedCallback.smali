.class public Landroid/window/ImeBackCallbackProxy$ImeOnBackInvokedCallback;
.super Ljava/lang/Object;
.source "ImeBackCallbackProxy.java"

# interfaces
.implements Landroid/window/OnBackAnimationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/ImeBackCallbackProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImeOnBackInvokedCallback"
.end annotation


# instance fields
.field protected final blacklist mIOnBackInvokedCallback:Landroid/window/IOnBackInvokedCallback;

.field protected final blacklist mId:I

.field private final blacklist mPriority:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmPriority(Landroid/window/ImeBackCallbackProxy$ImeOnBackInvokedCallback;)I
    .registers 1

    iget p0, p0, Landroid/window/ImeBackCallbackProxy$ImeOnBackInvokedCallback;->mPriority:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetId(Landroid/window/ImeBackCallbackProxy$ImeOnBackInvokedCallback;)I
    .registers 1

    invoke-direct {p0}, Landroid/window/ImeBackCallbackProxy$ImeOnBackInvokedCallback;->getId()I

    move-result p0

    return p0
.end method

.method constructor blacklist <init>(Landroid/window/IOnBackInvokedCallback;II)V
    .registers 4

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    iput-object p1, p0, Landroid/window/ImeBackCallbackProxy$ImeOnBackInvokedCallback;->mIOnBackInvokedCallback:Landroid/window/IOnBackInvokedCallback;

    .line 246
    iput p2, p0, Landroid/window/ImeBackCallbackProxy$ImeOnBackInvokedCallback;->mId:I

    .line 247
    iput p3, p0, Landroid/window/ImeBackCallbackProxy$ImeOnBackInvokedCallback;->mPriority:I

    .line 248
    return-void
.end method

.method private blacklist getId()I
    .registers 2

    .line 293
    iget v0, p0, Landroid/window/ImeBackCallbackProxy$ImeOnBackInvokedCallback;->mId:I

    return v0
.end method


# virtual methods
.method public whitelist onBackCancelled()V
    .registers 4

    .line 286
    :try_start_0
    iget-object v0, p0, Landroid/window/ImeBackCallbackProxy$ImeOnBackInvokedCallback;->mIOnBackInvokedCallback:Landroid/window/IOnBackInvokedCallback;

    invoke-interface {v0}, Landroid/window/IOnBackInvokedCallback;->onBackCancelled()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 289
    goto :goto_e

    .line 287
    :catch_6
    move-exception v0

    .line 288
    const-string v1, "ImeBackCallbackProxy"

    const-string v2, "Exception when invoking forwarded callback. e: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 290
    :goto_e
    return-void
.end method

.method public whitelist onBackInvoked()V
    .registers 4

    .line 277
    :try_start_0
    iget-object v0, p0, Landroid/window/ImeBackCallbackProxy$ImeOnBackInvokedCallback;->mIOnBackInvokedCallback:Landroid/window/IOnBackInvokedCallback;

    invoke-interface {v0}, Landroid/window/IOnBackInvokedCallback;->onBackInvoked()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 280
    goto :goto_e

    .line 278
    :catch_6
    move-exception v0

    .line 279
    const-string v1, "ImeBackCallbackProxy"

    const-string v2, "Exception when invoking forwarded callback. e: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 281
    :goto_e
    return-void
.end method

.method public whitelist onBackProgressed(Landroid/window/BackEvent;)V
    .registers 11

    .line 265
    :try_start_0
    iget-object v0, p0, Landroid/window/ImeBackCallbackProxy$ImeOnBackInvokedCallback;->mIOnBackInvokedCallback:Landroid/window/IOnBackInvokedCallback;

    new-instance v1, Landroid/window/BackMotionEvent;

    .line 266
    invoke-virtual {p1}, Landroid/window/BackEvent;->getTouchX()F

    move-result v2

    invoke-virtual {p1}, Landroid/window/BackEvent;->getTouchY()F

    move-result v3

    .line 267
    invoke-virtual {p1}, Landroid/window/BackEvent;->getFrameTimeMillis()J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/window/BackEvent;->getProgress()F

    move-result v6

    .line 268
    invoke-virtual {p1}, Landroid/window/BackEvent;->getSwipeEdge()I

    move-result v8

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v8}, Landroid/window/BackMotionEvent;-><init>(FFJFZI)V

    .line 265
    invoke-interface {v0, v1}, Landroid/window/IOnBackInvokedCallback;->onBackProgressed(Landroid/window/BackMotionEvent;)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1f} :catch_20

    .line 271
    goto :goto_29

    .line 269
    :catch_20
    move-exception v0

    move-object p1, v0

    .line 270
    const-string v0, "ImeBackCallbackProxy"

    const-string v1, "Exception when invoking forwarded callback. e: "

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 272
    :goto_29
    return-void
.end method

.method public whitelist onBackStarted(Landroid/window/BackEvent;)V
    .registers 11

    .line 253
    :try_start_0
    iget-object v0, p0, Landroid/window/ImeBackCallbackProxy$ImeOnBackInvokedCallback;->mIOnBackInvokedCallback:Landroid/window/IOnBackInvokedCallback;

    new-instance v1, Landroid/window/BackMotionEvent;

    .line 254
    invoke-virtual {p1}, Landroid/window/BackEvent;->getTouchX()F

    move-result v2

    invoke-virtual {p1}, Landroid/window/BackEvent;->getTouchY()F

    move-result v3

    .line 255
    invoke-virtual {p1}, Landroid/window/BackEvent;->getFrameTimeMillis()J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/window/BackEvent;->getProgress()F

    move-result v6

    .line 256
    invoke-virtual {p1}, Landroid/window/BackEvent;->getSwipeEdge()I

    move-result v8

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v8}, Landroid/window/BackMotionEvent;-><init>(FFJFZI)V

    .line 253
    invoke-interface {v0, v1}, Landroid/window/IOnBackInvokedCallback;->onBackStarted(Landroid/window/BackMotionEvent;)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1f} :catch_20

    .line 259
    goto :goto_29

    .line 257
    :catch_20
    move-exception v0

    move-object p1, v0

    .line 258
    const-string v0, "ImeBackCallbackProxy"

    const-string v1, "Exception when invoking forwarded callback. e: "

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 260
    :goto_29
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImeOnBackInvokedCallback@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/ImeBackCallbackProxy$ImeOnBackInvokedCallback;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Callback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/ImeBackCallbackProxy$ImeOnBackInvokedCallback;->mIOnBackInvokedCallback:Landroid/window/IOnBackInvokedCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
