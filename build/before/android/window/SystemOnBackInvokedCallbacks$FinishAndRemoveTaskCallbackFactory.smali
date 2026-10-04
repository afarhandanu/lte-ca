.class Landroid/window/SystemOnBackInvokedCallbacks$FinishAndRemoveTaskCallbackFactory;
.super Landroid/window/SystemOnBackInvokedCallbacks$OverrideCallbackFactory;
.source "SystemOnBackInvokedCallbacks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/SystemOnBackInvokedCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FinishAndRemoveTaskCallbackFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/window/SystemOnBackInvokedCallbacks$OverrideCallbackFactory<",
        "Landroid/app/Activity;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 2

    .line 142
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/window/SystemOnBackInvokedCallbacks$OverrideCallbackFactory;-><init>(Landroid/window/SystemOnBackInvokedCallbacks-IA;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/window/SystemOnBackInvokedCallbacks-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/window/SystemOnBackInvokedCallbacks$FinishAndRemoveTaskCallbackFactory;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist createCallback(Landroid/app/Activity;)Landroid/window/SystemOverrideOnBackInvokedCallback;
    .registers 3

    .line 146
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 147
    new-instance p1, Landroid/window/SystemOnBackInvokedCallbacks$FinishAndRemoveTaskCallbackFactory$1;

    invoke-direct {p1, p0, v0}, Landroid/window/SystemOnBackInvokedCallbacks$FinishAndRemoveTaskCallbackFactory$1;-><init>(Landroid/window/SystemOnBackInvokedCallbacks$FinishAndRemoveTaskCallbackFactory;Ljava/lang/ref/WeakReference;)V

    return-object p1
.end method

.method protected bridge synthetic blacklist createCallback(Ljava/lang/Object;)Landroid/window/SystemOverrideOnBackInvokedCallback;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 142
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p0, p1}, Landroid/window/SystemOnBackInvokedCallbacks$FinishAndRemoveTaskCallbackFactory;->createCallback(Landroid/app/Activity;)Landroid/window/SystemOverrideOnBackInvokedCallback;

    move-result-object p1

    return-object p1
.end method
