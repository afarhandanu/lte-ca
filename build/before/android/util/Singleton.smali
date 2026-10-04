.class public abstract Landroid/util/Singleton;
.super Ljava/lang/Object;
.source "Singleton.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private volatile greylist mInstance:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method


# virtual methods
.method protected abstract greylist-max-o create()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public final greylist get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Landroid/util/Singleton;->mInstance:Ljava/lang/Object;

    .line 43
    if-nez v0, :cond_16

    .line 44
    monitor-enter p0

    .line 45
    :try_start_5
    iget-object v0, p0, Landroid/util/Singleton;->mInstance:Ljava/lang/Object;

    if-nez v0, :cond_f

    .line 46
    invoke-virtual {p0}, Landroid/util/Singleton;->create()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/util/Singleton;->mInstance:Ljava/lang/Object;

    .line 48
    :cond_f
    iget-object v0, p0, Landroid/util/Singleton;->mInstance:Ljava/lang/Object;

    .line 49
    monitor-exit p0

    goto :goto_16

    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_13

    throw v0

    .line 51
    :cond_16
    :goto_16
    return-object v0
.end method
