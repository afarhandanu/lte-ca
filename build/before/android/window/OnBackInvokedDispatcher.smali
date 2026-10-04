.class public interface abstract Landroid/window/OnBackInvokedDispatcher;
.super Ljava/lang/Object;
.source "OnBackInvokedDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/OnBackInvokedDispatcher$Priority;
    }
.end annotation


# static fields
.field public static final blacklist DEBUG:Z = false

.field public static final whitelist PRIORITY_DEFAULT:I = 0x0

.field public static final whitelist PRIORITY_OVERLAY:I = 0xf4240

.field public static final blacklist PRIORITY_SYSTEM:I = -0x1

.field public static final whitelist PRIORITY_SYSTEM_NAVIGATION_OBSERVER:I = -0x2

.field public static final blacklist TAG:Ljava/lang/String; = "OnBackInvokedDispatcher"


# virtual methods
.method public abstract whitelist registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V
.end method

.method public blacklist registerSystemOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V
    .registers 2

    .line 121
    return-void
.end method

.method public blacklist setImeBackCallbackSender(Landroid/window/ImeBackCallbackSender;)V
    .registers 2

    .line 132
    return-void
.end method

.method public abstract whitelist unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V
.end method
