.class public interface abstract Landroid/window/IMultitaskingControllerCallback;
.super Ljava/lang/Object;
.source "IMultitaskingControllerCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/IMultitaskingControllerCallback$Stub;,
        Landroid/window/IMultitaskingControllerCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.window.IMultitaskingControllerCallback"


# virtual methods
.method public abstract blacklist onBubbleRemoved(Landroid/os/IBinder;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
