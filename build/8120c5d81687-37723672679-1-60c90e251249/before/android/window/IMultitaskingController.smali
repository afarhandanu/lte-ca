.class public interface abstract Landroid/window/IMultitaskingController;
.super Ljava/lang/Object;
.source "IMultitaskingController.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/IMultitaskingController$Stub;,
        Landroid/window/IMultitaskingController$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.window.IMultitaskingController"


# virtual methods
.method public abstract blacklist getClientInterface(Landroid/window/IMultitaskingControllerCallback;)Landroid/window/IMultitaskingDelegate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist setMultitaskingDelegate(Landroid/window/IMultitaskingDelegate;)Landroid/window/IMultitaskingControllerCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
