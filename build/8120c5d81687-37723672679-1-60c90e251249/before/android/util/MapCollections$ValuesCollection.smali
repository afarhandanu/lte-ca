.class final Landroid/util/MapCollections$ValuesCollection;
.super Ljava/lang/Object;
.source "MapCollections.java"

# interfaces
.implements Ljava/util/Collection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/MapCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ValuesCollection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Collection<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/util/MapCollections;


# direct methods
.method constructor blacklist <init>(Landroid/util/MapCollections;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 365
    iput-object p1, p0, Landroid/util/MapCollections$ValuesCollection;->this$0:Landroid/util/MapCollections;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api add(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .line 369
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public whitelist test-api addAll(Ljava/util/Collection;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TV;>;)Z"
        }
    .end annotation

    .line 374
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public whitelist test-api clear()V
    .registers 2

    .line 379
    iget-object v0, p0, Landroid/util/MapCollections$ValuesCollection;->this$0:Landroid/util/MapCollections;

    invoke-virtual {v0}, Landroid/util/MapCollections;->colClear()V

    .line 380
    return-void
.end method

.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 3

    .line 384
    iget-object v0, p0, Landroid/util/MapCollections$ValuesCollection;->this$0:Landroid/util/MapCollections;

    invoke-virtual {v0, p1}, Landroid/util/MapCollections;->colIndexOfValue(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method public whitelist test-api containsAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 389
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 390
    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 391
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/MapCollections$ValuesCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 392
    const/4 p1, 0x0

    return p1

    .line 395
    :cond_16
    const/4 p1, 0x1

    return p1
.end method

.method public whitelist test-api isEmpty()Z
    .registers 2

    .line 400
    iget-object v0, p0, Landroid/util/MapCollections$ValuesCollection;->this$0:Landroid/util/MapCollections;

    invoke-virtual {v0}, Landroid/util/MapCollections;->colGetSize()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public whitelist test-api iterator()Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 405
    new-instance v0, Landroid/util/MapCollections$ArrayIterator;

    iget-object v1, p0, Landroid/util/MapCollections$ValuesCollection;->this$0:Landroid/util/MapCollections;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/util/MapCollections$ArrayIterator;-><init>(Landroid/util/MapCollections;I)V

    return-object v0
.end method

.method public whitelist test-api remove(Ljava/lang/Object;)Z
    .registers 3

    .line 410
    iget-object v0, p0, Landroid/util/MapCollections$ValuesCollection;->this$0:Landroid/util/MapCollections;

    invoke-virtual {v0, p1}, Landroid/util/MapCollections;->colIndexOfValue(Ljava/lang/Object;)I

    move-result p1

    .line 411
    if-ltz p1, :cond_f

    .line 412
    iget-object v0, p0, Landroid/util/MapCollections$ValuesCollection;->this$0:Landroid/util/MapCollections;

    invoke-virtual {v0, p1}, Landroid/util/MapCollections;->colRemoveAt(I)V

    .line 413
    const/4 p1, 0x1

    return p1

    .line 415
    :cond_f
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist test-api removeAll(Ljava/util/Collection;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 420
    iget-object v0, p0, Landroid/util/MapCollections$ValuesCollection;->this$0:Landroid/util/MapCollections;

    invoke-virtual {v0}, Landroid/util/MapCollections;->colGetSize()I

    move-result v0

    .line 421
    nop

    .line 422
    const/4 v1, 0x0

    move v2, v1

    :goto_9
    if-ge v1, v0, :cond_24

    .line 423
    iget-object v3, p0, Landroid/util/MapCollections$ValuesCollection;->this$0:Landroid/util/MapCollections;

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v4}, Landroid/util/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v3

    .line 424
    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 425
    iget-object v2, p0, Landroid/util/MapCollections$ValuesCollection;->this$0:Landroid/util/MapCollections;

    invoke-virtual {v2, v1}, Landroid/util/MapCollections;->colRemoveAt(I)V

    .line 426
    add-int/lit8 v1, v1, -0x1

    .line 427
    add-int/lit8 v0, v0, -0x1

    .line 428
    move v2, v4

    .line 422
    :cond_22
    add-int/2addr v1, v4

    goto :goto_9

    .line 431
    :cond_24
    return v2
.end method

.method public whitelist test-api retainAll(Ljava/util/Collection;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 436
    iget-object v0, p0, Landroid/util/MapCollections$ValuesCollection;->this$0:Landroid/util/MapCollections;

    invoke-virtual {v0}, Landroid/util/MapCollections;->colGetSize()I

    move-result v0

    .line 437
    nop

    .line 438
    const/4 v1, 0x0

    move v2, v1

    :goto_9
    if-ge v1, v0, :cond_24

    .line 439
    iget-object v3, p0, Landroid/util/MapCollections$ValuesCollection;->this$0:Landroid/util/MapCollections;

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v4}, Landroid/util/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v3

    .line 440
    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_22

    .line 441
    iget-object v2, p0, Landroid/util/MapCollections$ValuesCollection;->this$0:Landroid/util/MapCollections;

    invoke-virtual {v2, v1}, Landroid/util/MapCollections;->colRemoveAt(I)V

    .line 442
    add-int/lit8 v1, v1, -0x1

    .line 443
    add-int/lit8 v0, v0, -0x1

    .line 444
    move v2, v4

    .line 438
    :cond_22
    add-int/2addr v1, v4

    goto :goto_9

    .line 447
    :cond_24
    return v2
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 452
    iget-object v0, p0, Landroid/util/MapCollections$ValuesCollection;->this$0:Landroid/util/MapCollections;

    invoke-virtual {v0}, Landroid/util/MapCollections;->colGetSize()I

    move-result v0

    return v0
.end method

.method public whitelist test-api toArray()[Ljava/lang/Object;
    .registers 3

    .line 457
    iget-object v0, p0, Landroid/util/MapCollections$ValuesCollection;->this$0:Landroid/util/MapCollections;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/MapCollections;->toArrayHelper(I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 462
    iget-object v0, p0, Landroid/util/MapCollections$ValuesCollection;->this$0:Landroid/util/MapCollections;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/MapCollections;->toArrayHelper([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 467
    iget-object v0, p0, Landroid/util/MapCollections$ValuesCollection;->this$0:Landroid/util/MapCollections;

    const/4 v1, 0x1

    const-string v2, "ValuesCollection"

    invoke-static {v0, v1, p0, v2}, Landroid/util/MapCollections;->-$$Nest$mtoStringHelper(Landroid/util/MapCollections;ILjava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
