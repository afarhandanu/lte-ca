.class abstract Landroid/window/SystemOnBackInvokedCallbacks$OverrideCallbackFactory;
.super Ljava/lang/Object;
.source "SystemOnBackInvokedCallbacks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/SystemOnBackInvokedCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "OverrideCallbackFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TYPE:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final blacklist mObjectMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/ref/WeakReference<",
            "TTYPE;>;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/window/SystemOverrideOnBackInvokedCallback;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>()V
    .registers 2

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/window/SystemOnBackInvokedCallbacks$OverrideCallbackFactory;->mObjectMap:Landroid/util/ArrayMap;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/window/SystemOnBackInvokedCallbacks-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/window/SystemOnBackInvokedCallbacks$OverrideCallbackFactory;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract blacklist createCallback(Ljava/lang/Object;)Landroid/window/SystemOverrideOnBackInvokedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTYPE;)",
            "Landroid/window/SystemOverrideOnBackInvokedCallback;"
        }
    .end annotation
.end method

.method blacklist getOverrideCallback(Ljava/lang/Object;)Landroid/window/SystemOverrideOnBackInvokedCallback;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTYPE;)",
            "Landroid/window/SystemOverrideOnBackInvokedCallback;"
        }
    .end annotation

    .line 97
    if-eqz p1, :cond_4f

    .line 100
    iget-object v0, p0, Landroid/window/SystemOnBackInvokedCallbacks$OverrideCallbackFactory;->mObjectMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 101
    nop

    .line 102
    :try_start_6
    iget-object v1, p0, Landroid/window/SystemOnBackInvokedCallbacks$OverrideCallbackFactory;->mObjectMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_e
    if-ltz v1, :cond_2a

    .line 103
    iget-object v2, p0, Landroid/window/SystemOnBackInvokedCallbacks$OverrideCallbackFactory;->mObjectMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 104
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_27

    .line 105
    iget-object v1, p0, Landroid/window/SystemOnBackInvokedCallbacks$OverrideCallbackFactory;->mObjectMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 106
    goto :goto_2b

    .line 102
    :cond_27
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    :cond_2a
    const/4 v1, 0x0

    .line 109
    :goto_2b
    if-eqz v1, :cond_35

    .line 110
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/window/SystemOverrideOnBackInvokedCallback;

    monitor-exit v0

    return-object p1

    .line 112
    :cond_35
    invoke-virtual {p0, p1}, Landroid/window/SystemOnBackInvokedCallbacks$OverrideCallbackFactory;->createCallback(Ljava/lang/Object;)Landroid/window/SystemOverrideOnBackInvokedCallback;

    move-result-object v1

    .line 113
    if-eqz v1, :cond_4a

    .line 114
    iget-object v2, p0, Landroid/window/SystemOnBackInvokedCallbacks$OverrideCallbackFactory;->mObjectMap:Landroid/util/ArrayMap;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    :cond_4a
    monitor-exit v0

    return-object v1

    .line 118
    :catchall_4c
    move-exception p1

    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_6 .. :try_end_4e} :catchall_4c

    throw p1

    .line 98
    :cond_4f
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Input object cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
