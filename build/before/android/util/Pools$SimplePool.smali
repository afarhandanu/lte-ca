.class public Landroid/util/Pools$SimplePool;
.super Ljava/lang/Object;
.source "Pools.java"

# interfaces
.implements Landroid/util/Pools$Pool;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/Pools;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimplePool"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/util/Pools$Pool<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final greylist mPool:[Ljava/lang/Object;

.field private greylist-max-o mPoolSize:I


# direct methods
.method public constructor greylist <init>(I)V
    .registers 3

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    if-lez p1, :cond_a

    .line 100
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Landroid/util/Pools$SimplePool;->mPool:[Ljava/lang/Object;

    .line 101
    return-void

    .line 98
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The max pool size must be > 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private greylist-max-o isInPool(Ljava/lang/Object;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 132
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget v2, p0, Landroid/util/Pools$SimplePool;->mPoolSize:I

    if-ge v1, v2, :cond_11

    .line 133
    iget-object v2, p0, Landroid/util/Pools$SimplePool;->mPool:[Ljava/lang/Object;

    aget-object v2, v2, v1

    if-ne v2, p1, :cond_e

    .line 134
    const/4 p1, 0x1

    return p1

    .line 132
    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 137
    :cond_11
    return v0
.end method


# virtual methods
.method public greylist acquire()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 107
    iget v0, p0, Landroid/util/Pools$SimplePool;->mPoolSize:I

    const/4 v1, 0x0

    if-lez v0, :cond_18

    .line 108
    iget v0, p0, Landroid/util/Pools$SimplePool;->mPoolSize:I

    add-int/lit8 v0, v0, -0x1

    .line 109
    iget-object v2, p0, Landroid/util/Pools$SimplePool;->mPool:[Ljava/lang/Object;

    aget-object v2, v2, v0

    .line 110
    iget-object v3, p0, Landroid/util/Pools$SimplePool;->mPool:[Ljava/lang/Object;

    aput-object v1, v3, v0

    .line 111
    iget v0, p0, Landroid/util/Pools$SimplePool;->mPoolSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/util/Pools$SimplePool;->mPoolSize:I

    .line 112
    return-object v2

    .line 114
    :cond_18
    return-object v1
.end method

.method public greylist release(Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 120
    invoke-direct {p0, p1}, Landroid/util/Pools$SimplePool;->isInPool(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 123
    iget v0, p0, Landroid/util/Pools$SimplePool;->mPoolSize:I

    iget-object v1, p0, Landroid/util/Pools$SimplePool;->mPool:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_1a

    .line 124
    iget-object v0, p0, Landroid/util/Pools$SimplePool;->mPool:[Ljava/lang/Object;

    iget v1, p0, Landroid/util/Pools$SimplePool;->mPoolSize:I

    aput-object p1, v0, v1

    .line 125
    iget p1, p0, Landroid/util/Pools$SimplePool;->mPoolSize:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Landroid/util/Pools$SimplePool;->mPoolSize:I

    .line 126
    return v0

    .line 128
    :cond_1a
    const/4 p1, 0x0

    return p1

    .line 121
    :cond_1c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already in the pool!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
