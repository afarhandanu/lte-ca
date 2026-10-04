.class public Landroid/window/WindowOnBackInvokedDispatcher$Checker;
.super Ljava/lang/Object;
.source "WindowOnBackInvokedDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/WindowOnBackInvokedDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Checker"
.end annotation


# instance fields
.field private blacklist mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$mgetContext(Landroid/window/WindowOnBackInvokedDispatcher$Checker;)Landroid/content/Context;
    .registers 1

    invoke-direct {p0}, Landroid/window/WindowOnBackInvokedDispatcher$Checker;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3

    .line 811
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 812
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher$Checker;->mContext:Ljava/lang/ref/WeakReference;

    .line 813
    return-void
.end method

.method private blacklist getContext()Landroid/content/Context;
    .registers 2

    .line 846
    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher$Checker;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public blacklist checkApplicationCallbackRegistration(ILandroid/window/OnBackInvokedCallback;)Z
    .registers 6

    .line 822
    invoke-direct {p0}, Landroid/window/WindowOnBackInvokedDispatcher$Checker;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 823
    const/4 v1, 0x0

    const-string v2, "WindowOnBackDispatcher"

    if-nez v0, :cond_f

    .line 824
    const-string p1, "OnBackInvokedCallback is disabled, host context is removed!"

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    return v1

    .line 827
    :cond_f
    invoke-static {v0}, Landroid/window/WindowOnBackInvokedDispatcher;->isOnBackInvokedCallbackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_23

    instance-of v0, p2, Landroid/window/CompatOnBackInvokedCallback;

    if-nez v0, :cond_23

    instance-of v0, p2, Landroid/window/ObserverOnBackAnimationCallback;

    if-nez v0, :cond_23

    .line 830
    const-string p1, "OnBackInvokedCallback is not enabled for the application.\nSet \'android:enableOnBackInvokedCallback=\"true\"\' in the application manifest."

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    return v1

    .line 836
    :cond_23
    if-gez p1, :cond_42

    const/4 v0, -0x2

    if-ne p1, v0, :cond_29

    goto :goto_42

    .line 837
    :cond_29
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Application registered OnBackInvokedCallback cannot have negative priority. Priority: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 841
    :cond_42
    :goto_42
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 842
    const/4 p1, 0x1

    return p1
.end method
