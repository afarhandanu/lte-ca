.class public Landroid/util/LruCache;
.super Ljava/lang/Object;
.source "LruCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private greylist-max-o createCount:I

.field private greylist-max-o evictionCount:I

.field private greylist-max-o hitCount:I

.field private final greylist map:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private greylist-max-o maxSize:I

.field private greylist-max-o missCount:I

.field private greylist-max-o putCount:I

.field private greylist-max-o size:I


# direct methods
.method public constructor whitelist <init>(I)V
    .registers 5

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    if-lez p1, :cond_13

    .line 88
    iput p1, p0, Landroid/util/LruCache;->maxSize:I

    .line 89
    new-instance p1, Ljava/util/LinkedHashMap;

    const/high16 v0, 0x3f400000    # 0.75f

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p1, v2, v0, v1}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object p1, p0, Landroid/util/LruCache;->map:Ljava/util/LinkedHashMap;

    .line 90
    return-void

    .line 86
    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "maxSize <= 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private blacklist eldest()Ljava/util/Map$Entry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 229
    iget-object v0, p0, Landroid/util/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->eldest()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)I"
        }
    .end annotation

    .line 294
    invoke-virtual {p0, p1, p2}, Landroid/util/LruCache;->sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 295
    if-ltz v0, :cond_7

    .line 298
    return v0

    .line 296
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Negative size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected whitelist create(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 290
    const/4 p1, 0x0

    return-object p1
.end method

.method public final declared-synchronized whitelist createCount()I
    .registers 2

    monitor-enter p0

    .line 357
    :try_start_1
    iget v0, p0, Landroid/util/LruCache;->createCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 357
    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method protected whitelist entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZTK;TV;TV;)V"
        }
    .end annotation

    .line 272
    return-void
.end method

.method public final whitelist evictAll()V
    .registers 2

    .line 316
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/util/LruCache;->trimToSize(I)V

    .line 317
    return-void
.end method

.method public final declared-synchronized whitelist evictionCount()I
    .registers 2

    monitor-enter p0

    .line 371
    :try_start_1
    iget v0, p0, Landroid/util/LruCache;->evictionCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 371
    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public final whitelist get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 115
    if-eqz p1, :cond_54

    .line 120
    monitor-enter p0

    .line 121
    :try_start_3
    iget-object v0, p0, Landroid/util/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 122
    if-eqz v0, :cond_13

    .line 123
    iget p1, p0, Landroid/util/LruCache;->hitCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/util/LruCache;->hitCount:I

    .line 124
    monitor-exit p0

    return-object v0

    .line 126
    :cond_13
    iget v0, p0, Landroid/util/LruCache;->missCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/util/LruCache;->missCount:I

    .line 127
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_51

    .line 136
    invoke-virtual {p0, p1}, Landroid/util/LruCache;->create(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 137
    if-nez v0, :cond_22

    .line 138
    const/4 p1, 0x0

    return-object p1

    .line 141
    :cond_22
    monitor-enter p0

    .line 142
    :try_start_23
    iget v1, p0, Landroid/util/LruCache;->createCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/util/LruCache;->createCount:I

    .line 143
    iget-object v1, p0, Landroid/util/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 145
    if-eqz v1, :cond_37

    .line 147
    iget-object v2, p0, Landroid/util/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_40

    .line 149
    :cond_37
    iget v2, p0, Landroid/util/LruCache;->size:I

    invoke-direct {p0, p1, v0}, Landroid/util/LruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Landroid/util/LruCache;->size:I

    .line 151
    :goto_40
    monitor-exit p0
    :try_end_41
    .catchall {:try_start_23 .. :try_end_41} :catchall_4e

    .line 153
    if-eqz v1, :cond_48

    .line 154
    const/4 v2, 0x0

    invoke-virtual {p0, v2, p1, v0, v1}, Landroid/util/LruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 155
    return-object v1

    .line 157
    :cond_48
    iget p1, p0, Landroid/util/LruCache;->maxSize:I

    invoke-virtual {p0, p1}, Landroid/util/LruCache;->trimToSize(I)V

    .line 158
    return-object v0

    .line 151
    :catchall_4e
    move-exception p1

    :try_start_4f
    monitor-exit p0
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    throw p1

    .line 127
    :catchall_51
    move-exception p1

    :try_start_52
    monitor-exit p0
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_51

    throw p1

    .line 116
    :cond_54
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "key == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final declared-synchronized whitelist hitCount()I
    .registers 2

    monitor-enter p0

    .line 342
    :try_start_1
    iget v0, p0, Landroid/util/LruCache;->hitCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 342
    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public final declared-synchronized whitelist maxSize()I
    .registers 2

    monitor-enter p0

    .line 334
    :try_start_1
    iget v0, p0, Landroid/util/LruCache;->maxSize:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 334
    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public final declared-synchronized whitelist missCount()I
    .registers 2

    monitor-enter p0

    .line 350
    :try_start_1
    iget v0, p0, Landroid/util/LruCache;->missCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 350
    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public final whitelist put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 169
    if-eqz p1, :cond_35

    if-eqz p2, :cond_35

    .line 174
    monitor-enter p0

    .line 175
    :try_start_5
    iget v0, p0, Landroid/util/LruCache;->putCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/util/LruCache;->putCount:I

    .line 176
    iget v0, p0, Landroid/util/LruCache;->size:I

    invoke-direct {p0, p1, p2}, Landroid/util/LruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/util/LruCache;->size:I

    .line 177
    iget-object v0, p0, Landroid/util/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 178
    if-eqz v0, :cond_25

    .line 179
    iget v1, p0, Landroid/util/LruCache;->size:I

    invoke-direct {p0, p1, v0}, Landroid/util/LruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/util/LruCache;->size:I

    .line 181
    :cond_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_5 .. :try_end_26} :catchall_32

    .line 183
    if-eqz v0, :cond_2c

    .line 184
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v0, p2}, Landroid/util/LruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 187
    :cond_2c
    iget p1, p0, Landroid/util/LruCache;->maxSize:I

    invoke-virtual {p0, p1}, Landroid/util/LruCache;->trimToSize(I)V

    .line 188
    return-object v0

    .line 181
    :catchall_32
    move-exception p1

    :try_start_33
    monitor-exit p0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw p1

    .line 170
    :cond_35
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "key == null || value == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final declared-synchronized whitelist putCount()I
    .registers 2

    monitor-enter p0

    .line 364
    :try_start_1
    iget v0, p0, Landroid/util/LruCache;->putCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 364
    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public final whitelist remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 238
    if-eqz p1, :cond_20

    .line 243
    monitor-enter p0

    .line 244
    :try_start_3
    iget-object v0, p0, Landroid/util/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 245
    if-eqz v0, :cond_14

    .line 246
    iget v1, p0, Landroid/util/LruCache;->size:I

    invoke-direct {p0, p1, v0}, Landroid/util/LruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/util/LruCache;->size:I

    .line 248
    :cond_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_1d

    .line 250
    if-eqz v0, :cond_1c

    .line 251
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v0, v2}, Landroid/util/LruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 254
    :cond_1c
    return-object v0

    .line 248
    :catchall_1d
    move-exception p1

    :try_start_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw p1

    .line 239
    :cond_20
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "key == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist resize(I)V
    .registers 3

    .line 98
    if-lez p1, :cond_d

    .line 102
    monitor-enter p0

    .line 103
    :try_start_3
    iput p1, p0, Landroid/util/LruCache;->maxSize:I

    .line 104
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_a

    .line 105
    invoke-virtual {p0, p1}, Landroid/util/LruCache;->trimToSize(I)V

    .line 106
    return-void

    .line 104
    :catchall_a
    move-exception p1

    :try_start_b
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    throw p1

    .line 99
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "maxSize <= 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final declared-synchronized whitelist size()I
    .registers 2

    monitor-enter p0

    .line 325
    :try_start_1
    iget v0, p0, Landroid/util/LruCache;->size:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 325
    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method protected whitelist sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)I"
        }
    .end annotation

    .line 309
    const/4 p1, 0x1

    return p1
.end method

.method public final declared-synchronized whitelist snapshot()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    monitor-enter p0

    .line 379
    :try_start_1
    new-instance v0, Ljava/util/LinkedHashMap;

    iget-object v1, p0, Landroid/util/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-object v0

    .line 379
    :catchall_a
    move-exception v0

    :try_start_b
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    throw v0
.end method

.method public final declared-synchronized whitelist test-api toString()Ljava/lang/String;
    .registers 6

    monitor-enter p0

    .line 383
    :try_start_1
    iget v0, p0, Landroid/util/LruCache;->hitCount:I

    iget v1, p0, Landroid/util/LruCache;->missCount:I

    add-int/2addr v0, v1

    .line 384
    if-eqz v0, :cond_e

    iget v1, p0, Landroid/util/LruCache;->hitCount:I

    mul-int/lit8 v1, v1, 0x64

    div-int/2addr v1, v0

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    .line 385
    :goto_f
    const-string v0, "LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]"

    iget v2, p0, Landroid/util/LruCache;->maxSize:I

    .line 386
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Landroid/util/LruCache;->hitCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Landroid/util/LruCache;->missCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v2, v3, v4, v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 385
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_31

    monitor-exit p0

    return-object v0

    .line 382
    :catchall_31
    move-exception v0

    :try_start_32
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v0
.end method

.method public whitelist trimToSize(I)V
    .registers 6

    .line 202
    nop

    :goto_1
    monitor-enter p0

    .line 203
    :try_start_2
    iget v0, p0, Landroid/util/LruCache;->size:I

    if-ltz v0, :cond_42

    iget-object v0, p0, Landroid/util/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    iget v0, p0, Landroid/util/LruCache;->size:I

    if-nez v0, :cond_42

    .line 208
    :cond_12
    iget v0, p0, Landroid/util/LruCache;->size:I

    if-gt v0, p1, :cond_18

    .line 209
    monitor-exit p0

    goto :goto_1f

    .line 212
    :cond_18
    invoke-direct {p0}, Landroid/util/LruCache;->eldest()Ljava/util/Map$Entry;

    move-result-object v0

    .line 213
    if-nez v0, :cond_20

    .line 214
    monitor-exit p0

    .line 226
    :goto_1f
    return-void

    .line 217
    :cond_20
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 218
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 219
    iget-object v2, p0, Landroid/util/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    iget v2, p0, Landroid/util/LruCache;->size:I

    invoke-direct {p0, v1, v0}, Landroid/util/LruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Landroid/util/LruCache;->size:I

    .line 221
    iget v2, p0, Landroid/util/LruCache;->evictionCount:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Landroid/util/LruCache;->evictionCount:I

    .line 222
    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_2 .. :try_end_3d} :catchall_63

    .line 224
    const/4 v2, 0x0

    invoke-virtual {p0, v3, v1, v0, v2}, Landroid/util/LruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 225
    goto :goto_1

    .line 204
    :cond_42
    :try_start_42
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".sizeOf() is reporting inconsistent results!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 222
    :catchall_63
    move-exception p1

    monitor-exit p0
    :try_end_65
    .catchall {:try_start_42 .. :try_end_65} :catchall_63

    throw p1
.end method
