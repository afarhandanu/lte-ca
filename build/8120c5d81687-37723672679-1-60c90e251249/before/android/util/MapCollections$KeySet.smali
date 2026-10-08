.class final Landroid/util/MapCollections$KeySet;
.super Ljava/lang/Object;
.source "MapCollections.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/MapCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "KeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Set<",
        "TK;>;"
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

    .line 272
    iput-object p1, p0, Landroid/util/MapCollections$KeySet;->this$0:Landroid/util/MapCollections;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api add(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .line 276
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
            "+TK;>;)Z"
        }
    .end annotation

    .line 281
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public whitelist test-api clear()V
    .registers 2

    .line 286
    iget-object v0, p0, Landroid/util/MapCollections$KeySet;->this$0:Landroid/util/MapCollections;

    invoke-virtual {v0}, Landroid/util/MapCollections;->colClear()V

    .line 287
    return-void
.end method

.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 3

    .line 291
    iget-object v0, p0, Landroid/util/MapCollections$KeySet;->this$0:Landroid/util/MapCollections;

    invoke-virtual {v0, p1}, Landroid/util/MapCollections;->colIndexOfKey(Ljava/lang/Object;)I

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

    .line 296
    iget-object v0, p0, Landroid/util/MapCollections$KeySet;->this$0:Landroid/util/MapCollections;

    invoke-virtual {v0}, Landroid/util/MapCollections;->colGetMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/MapCollections;->containsAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 2

    .line 346
    invoke-static {p0, p1}, Landroid/util/MapCollections;->equalsSetHelper(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 351
    nop

    .line 352
    iget-object v0, p0, Landroid/util/MapCollections$KeySet;->this$0:Landroid/util/MapCollections;

    invoke-virtual {v0}, Landroid/util/MapCollections;->colGetSize()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    move v2, v1

    :goto_b
    if-ltz v0, :cond_1f

    .line 353
    iget-object v3, p0, Landroid/util/MapCollections$KeySet;->this$0:Landroid/util/MapCollections;

    invoke-virtual {v3, v0, v1}, Landroid/util/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v3

    .line 354
    if-nez v3, :cond_17

    move v3, v1

    goto :goto_1b

    :cond_17
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1b
    add-int/2addr v2, v3

    .line 352
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 356
    :cond_1f
    return v2
.end method

.method public whitelist test-api isEmpty()Z
    .registers 2

    .line 301
    iget-object v0, p0, Landroid/util/MapCollections$KeySet;->this$0:Landroid/util/MapCollections;

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
            "TK;>;"
        }
    .end annotation

    .line 306
    new-instance v0, Landroid/util/MapCollections$ArrayIterator;

    iget-object v1, p0, Landroid/util/MapCollections$KeySet;->this$0:Landroid/util/MapCollections;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/util/MapCollections$ArrayIterator;-><init>(Landroid/util/MapCollections;I)V

    return-object v0
.end method

.method public whitelist test-api remove(Ljava/lang/Object;)Z
    .registers 3

    .line 311
    iget-object v0, p0, Landroid/util/MapCollections$KeySet;->this$0:Landroid/util/MapCollections;

    invoke-virtual {v0, p1}, Landroid/util/MapCollections;->colIndexOfKey(Ljava/lang/Object;)I

    move-result p1

    .line 312
    if-ltz p1, :cond_f

    .line 313
    iget-object v0, p0, Landroid/util/MapCollections$KeySet;->this$0:Landroid/util/MapCollections;

    invoke-virtual {v0, p1}, Landroid/util/MapCollections;->colRemoveAt(I)V

    .line 314
    const/4 p1, 0x1

    return p1

    .line 316
    :cond_f
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist test-api removeAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 321
    iget-object v0, p0, Landroid/util/MapCollections$KeySet;->this$0:Landroid/util/MapCollections;

    invoke-virtual {v0}, Landroid/util/MapCollections;->colGetMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/MapCollections;->removeAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public whitelist test-api retainAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 326
    iget-object v0, p0, Landroid/util/MapCollections$KeySet;->this$0:Landroid/util/MapCollections;

    invoke-virtual {v0}, Landroid/util/MapCollections;->colGetMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/MapCollections;->retainAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 331
    iget-object v0, p0, Landroid/util/MapCollections$KeySet;->this$0:Landroid/util/MapCollections;

    invoke-virtual {v0}, Landroid/util/MapCollections;->colGetSize()I

    move-result v0

    return v0
.end method

.method public whitelist test-api toArray()[Ljava/lang/Object;
    .registers 3

    .line 336
    iget-object v0, p0, Landroid/util/MapCollections$KeySet;->this$0:Landroid/util/MapCollections;

    const/4 v1, 0x0

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

    .line 341
    iget-object v0, p0, Landroid/util/MapCollections$KeySet;->this$0:Landroid/util/MapCollections;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/MapCollections;->toArrayHelper([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 361
    iget-object v0, p0, Landroid/util/MapCollections$KeySet;->this$0:Landroid/util/MapCollections;

    const/4 v1, 0x0

    const-string v2, "KeySet"

    invoke-static {v0, v1, p0, v2}, Landroid/util/MapCollections;->-$$Nest$mtoStringHelper(Landroid/util/MapCollections;ILjava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
