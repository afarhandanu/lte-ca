.class public Landroid/window/WindowContextController;
.super Ljava/lang/Object;
.source "WindowContextController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/WindowContextController$AttachStatus;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG_ATTACH:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "WindowContextController"


# instance fields
.field public blacklist mAttachedToDisplayArea:I

.field private final blacklist mToken:Landroid/window/WindowTokenClient;


# direct methods
.method public constructor blacklist <init>(Landroid/window/WindowTokenClient;)V
    .registers 3

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Landroid/window/WindowContextController;->mAttachedToDisplayArea:I

    .line 90
    iput-object p1, p0, Landroid/window/WindowContextController;->mToken:Landroid/window/WindowTokenClient;

    .line 91
    return-void
.end method


# virtual methods
.method public blacklist attachToDisplayArea(IILandroid/os/Bundle;)V
    .registers 7

    .line 103
    iget v0, p0, Landroid/window/WindowContextController;->mAttachedToDisplayArea:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3d

    .line 107
    invoke-virtual {p0}, Landroid/window/WindowContextController;->getWindowTokenClientController()Landroid/window/WindowTokenClientController;

    move-result-object v0

    iget-object v2, p0, Landroid/window/WindowContextController;->mToken:Landroid/window/WindowTokenClient;

    invoke-virtual {v0, v2, p1, p2, p3}, Landroid/window/WindowTokenClientController;->attachToDisplayArea(Landroid/window/WindowTokenClient;IILandroid/os/Bundle;)Z

    move-result p3

    const/4 v0, 0x3

    if-eqz p3, :cond_13

    .line 109
    goto :goto_14

    :cond_13
    move v1, v0

    :goto_14
    iput v1, p0, Landroid/window/WindowContextController;->mAttachedToDisplayArea:I

    .line 110
    iget p3, p0, Landroid/window/WindowContextController;->mAttachedToDisplayArea:I

    if-ne p3, v0, :cond_3c

    .line 111
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "attachToDisplayArea fail, type:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, ", displayId:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WindowContextController"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_3c
    return-void

    .line 104
    :cond_3d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "A Window Context can be only attached to a DisplayArea once."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist attachToWindowToken(Landroid/os/IBinder;)V
    .registers 4

    .line 140
    iget v0, p0, Landroid/window/WindowContextController;->mAttachedToDisplayArea:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_19

    .line 144
    invoke-virtual {p0}, Landroid/window/WindowContextController;->getWindowTokenClientController()Landroid/window/WindowTokenClientController;

    move-result-object v0

    iget-object v1, p0, Landroid/window/WindowContextController;->mToken:Landroid/window/WindowTokenClient;

    invoke-virtual {v0, v1, p1}, Landroid/window/WindowTokenClientController;->attachToWindowToken(Landroid/window/WindowTokenClient;Landroid/os/IBinder;)Z

    move-result p1

    if-nez p1, :cond_18

    .line 145
    const-string p1, "WindowContextController"

    const-string v0, "attachToWindowToken fail"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_18
    return-void

    .line 141
    :cond_19
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The Window Context should have been attached to a DisplayArea. AttachToDisplayArea:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/WindowContextController;->mAttachedToDisplayArea:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist detachIfNeeded()V
    .registers 3

    .line 151
    iget v0, p0, Landroid/window/WindowContextController;->mAttachedToDisplayArea:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    .line 152
    invoke-virtual {p0}, Landroid/window/WindowContextController;->getWindowTokenClientController()Landroid/window/WindowTokenClientController;

    move-result-object v0

    iget-object v1, p0, Landroid/window/WindowContextController;->mToken:Landroid/window/WindowTokenClient;

    invoke-virtual {v0, v1}, Landroid/window/WindowTokenClientController;->detachIfNeeded(Landroid/window/WindowTokenClient;)V

    .line 153
    const/4 v0, 0x2

    iput v0, p0, Landroid/window/WindowContextController;->mAttachedToDisplayArea:I

    .line 158
    :cond_11
    return-void
.end method

.method public blacklist getWindowTokenClientController()Landroid/window/WindowTokenClientController;
    .registers 2

    .line 179
    invoke-static {}, Landroid/window/WindowTokenClientController;->getInstance()Landroid/window/WindowTokenClientController;

    move-result-object v0

    return-object v0
.end method

.method public blacklist reparentToDisplayArea(IILandroid/os/Bundle;)V
    .registers 6

    .line 167
    iget v0, p0, Landroid/window/WindowContextController;->mAttachedToDisplayArea:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    .line 168
    invoke-virtual {p0, p1, p2, p3}, Landroid/window/WindowContextController;->attachToDisplayArea(IILandroid/os/Bundle;)V

    .line 169
    return-void

    .line 172
    :cond_9
    invoke-virtual {p0}, Landroid/window/WindowContextController;->getWindowTokenClientController()Landroid/window/WindowTokenClientController;

    move-result-object p1

    iget-object p3, p0, Landroid/window/WindowContextController;->mToken:Landroid/window/WindowTokenClient;

    invoke-virtual {p1, p3, p2}, Landroid/window/WindowTokenClientController;->reparentToDisplayArea(Landroid/window/WindowTokenClient;I)V

    .line 173
    return-void
.end method
