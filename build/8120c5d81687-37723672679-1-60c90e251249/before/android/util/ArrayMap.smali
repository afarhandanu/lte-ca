.class public final Landroid/util/ArrayMap;
.super Ljava/lang/Object;
.source "ArrayMap.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final greylist-max-o BASE_SIZE:I = 0x4

.field private static final greylist-max-p CACHE_SIZE:I = 0xa

.field private static final greylist-max-o CONCURRENT_MODIFICATION_EXCEPTIONS:Z = true

.field private static final greylist-max-o DEBUG:Z = false

.field public static final greylist-max-p EMPTY:Landroid/util/ArrayMap;

.field static final greylist-max-p EMPTY_IMMUTABLE_INTS:[I

.field private static final greylist-max-o TAG:Ljava/lang/String; = "ArrayMap"

.field static greylist-max-p mBaseCache:[Ljava/lang/Object;

.field static greylist-max-p mBaseCacheSize:I

.field static greylist-max-p mTwiceBaseCache:[Ljava/lang/Object;

.field static greylist-max-p mTwiceBaseCacheSize:I

.field private static final blacklist sBaseCacheLock:Ljava/lang/Object;

.field private static final blacklist sTwiceBaseCacheLock:Ljava/lang/Object;


# instance fields
.field greylist-max-p mArray:[Ljava/lang/Object;

.field private greylist-max-o mCollections:Landroid/util/MapCollections;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/MapCollections<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field greylist-max-p mHashes:[I

.field private final greylist-max-o mIdentityHashCode:Z

.field greylist-max-p mSize:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 89
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Landroid/util/ArrayMap;->EMPTY_IMMUTABLE_INTS:[I

    .line 95
    new-instance v0, Landroid/util/ArrayMap;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    sput-object v0, Landroid/util/ArrayMap;->EMPTY:Landroid/util/ArrayMap;

    .line 115
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/util/ArrayMap;->sBaseCacheLock:Ljava/lang/Object;

    .line 116
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/util/ArrayMap;->sTwiceBaseCacheLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 328
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroid/util/ArrayMap;-><init>(IZ)V

    .line 329
    return-void
.end method

.method public constructor whitelist <init>(I)V
    .registers 3

    .line 335
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/util/ArrayMap;-><init>(IZ)V

    .line 336
    return-void
.end method

.method public constructor greylist-max-o <init>(IZ)V
    .registers 3

    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 340
    iput-boolean p2, p0, Landroid/util/ArrayMap;->mIdentityHashCode:Z

    .line 345
    if-gez p1, :cond_10

    .line 346
    sget-object p1, Landroid/util/ArrayMap;->EMPTY_IMMUTABLE_INTS:[I

    iput-object p1, p0, Landroid/util/ArrayMap;->mHashes:[I

    .line 347
    sget-object p1, Landroid/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    iput-object p1, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    goto :goto_1e

    .line 348
    :cond_10
    if-nez p1, :cond_1b

    .line 349
    sget-object p1, Landroid/util/EmptyArray;->INT:[I

    iput-object p1, p0, Landroid/util/ArrayMap;->mHashes:[I

    .line 350
    sget-object p1, Landroid/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    iput-object p1, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    goto :goto_1e

    .line 352
    :cond_1b
    invoke-direct {p0, p1}, Landroid/util/ArrayMap;->allocArrays(I)V

    .line 354
    :goto_1e
    const/4 p1, 0x0

    iput p1, p0, Landroid/util/ArrayMap;->mSize:I

    .line 355
    return-void
.end method

.method public constructor whitelist <init>(Landroid/util/ArrayMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 361
    invoke-direct {p0}, Landroid/util/ArrayMap;-><init>()V

    .line 362
    if-eqz p1, :cond_8

    .line 363
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 365
    :cond_8
    return-void
.end method

.method private greylist-max-p allocArrays(I)V
    .registers 10

    .line 219
    iget-object v0, p0, Landroid/util/ArrayMap;->mHashes:[I

    sget-object v1, Landroid/util/ArrayMap;->EMPTY_IMMUTABLE_INTS:[I

    if-eq v0, v1, :cond_c8

    .line 222
    const/16 v0, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v0, :cond_64

    .line 223
    sget-object v0, Landroid/util/ArrayMap;->sTwiceBaseCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 224
    :try_start_10
    sget-object v4, Landroid/util/ArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    if-eqz v4, :cond_5f

    .line 225
    sget-object v4, Landroid/util/ArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    .line 226
    iput-object v4, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;
    :try_end_18
    .catchall {:try_start_10 .. :try_end_18} :catchall_61

    .line 228
    :try_start_18
    aget-object v5, v4, v2

    check-cast v5, [Ljava/lang/Object;

    sput-object v5, Landroid/util/ArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    .line 229
    aget-object v5, v4, v3

    check-cast v5, [I

    iput-object v5, p0, Landroid/util/ArrayMap;->mHashes:[I

    .line 230
    iget-object v5, p0, Landroid/util/ArrayMap;->mHashes:[I

    if-eqz v5, :cond_33

    .line 231
    aput-object v1, v4, v3

    aput-object v1, v4, v2

    .line 232
    sget v5, Landroid/util/ArrayMap;->mTwiceBaseCacheSize:I

    sub-int/2addr v5, v3

    sput v5, Landroid/util/ArrayMap;->mTwiceBaseCacheSize:I
    :try_end_31
    .catch Ljava/lang/ClassCastException; {:try_start_18 .. :try_end_31} :catch_34
    .catchall {:try_start_18 .. :try_end_31} :catchall_61

    .line 237
    :try_start_31
    monitor-exit v0

    return-void

    .line 240
    :cond_33
    goto :goto_35

    .line 239
    :catch_34
    move-exception v5

    .line 243
    :goto_35
    const-string v5, "ArrayMap"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Found corrupt ArrayMap cache: [0]="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v4, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " [1]="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v4, v4, v3

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    sput-object v1, Landroid/util/ArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    .line 246
    sput v2, Landroid/util/ArrayMap;->mTwiceBaseCacheSize:I

    .line 248
    :cond_5f
    monitor-exit v0

    goto :goto_be

    :catchall_61
    move-exception p1

    monitor-exit v0
    :try_end_63
    .catchall {:try_start_31 .. :try_end_63} :catchall_61

    throw p1

    .line 249
    :cond_64
    const/4 v0, 0x4

    if-ne p1, v0, :cond_be

    .line 250
    sget-object v0, Landroid/util/ArrayMap;->sBaseCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 251
    :try_start_6a
    sget-object v4, Landroid/util/ArrayMap;->mBaseCache:[Ljava/lang/Object;

    if-eqz v4, :cond_b9

    .line 252
    sget-object v4, Landroid/util/ArrayMap;->mBaseCache:[Ljava/lang/Object;

    .line 253
    iput-object v4, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;
    :try_end_72
    .catchall {:try_start_6a .. :try_end_72} :catchall_bb

    .line 255
    :try_start_72
    aget-object v5, v4, v2

    check-cast v5, [Ljava/lang/Object;

    sput-object v5, Landroid/util/ArrayMap;->mBaseCache:[Ljava/lang/Object;

    .line 256
    aget-object v5, v4, v3

    check-cast v5, [I

    iput-object v5, p0, Landroid/util/ArrayMap;->mHashes:[I

    .line 257
    iget-object v5, p0, Landroid/util/ArrayMap;->mHashes:[I

    if-eqz v5, :cond_8d

    .line 258
    aput-object v1, v4, v3

    aput-object v1, v4, v2

    .line 259
    sget v5, Landroid/util/ArrayMap;->mBaseCacheSize:I

    sub-int/2addr v5, v3

    sput v5, Landroid/util/ArrayMap;->mBaseCacheSize:I
    :try_end_8b
    .catch Ljava/lang/ClassCastException; {:try_start_72 .. :try_end_8b} :catch_8e
    .catchall {:try_start_72 .. :try_end_8b} :catchall_bb

    .line 264
    :try_start_8b
    monitor-exit v0

    return-void

    .line 267
    :cond_8d
    goto :goto_8f

    .line 266
    :catch_8e
    move-exception v5

    .line 270
    :goto_8f
    const-string v5, "ArrayMap"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Found corrupt ArrayMap cache: [0]="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v4, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " [1]="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v4, v4, v3

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    sput-object v1, Landroid/util/ArrayMap;->mBaseCache:[Ljava/lang/Object;

    .line 273
    sput v2, Landroid/util/ArrayMap;->mBaseCacheSize:I

    .line 275
    :cond_b9
    monitor-exit v0

    goto :goto_be

    :catchall_bb
    move-exception p1

    monitor-exit v0
    :try_end_bd
    .catchall {:try_start_8b .. :try_end_bd} :catchall_bb

    throw p1

    .line 278
    :cond_be
    :goto_be
    new-array v0, p1, [I

    iput-object v0, p0, Landroid/util/ArrayMap;->mHashes:[I

    .line 279
    shl-int/2addr p1, v3

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    .line 280
    return-void

    .line 220
    :cond_c8
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "ArrayMap is immutable"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static greylist-max-o binarySearchHashes([III)I
    .registers 3

    .line 129
    :try_start_0
    invoke-static {p0, p1, p2}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result p0
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_4} :catch_5

    return p0

    .line 130
    :catch_5
    move-exception p0

    .line 132
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1, p0}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static greylist-max-p freeArrays([I[Ljava/lang/Object;I)V
    .registers 10

    .line 288
    array-length v0, p0

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/16 v5, 0xa

    const/4 v6, 0x1

    if-ne v0, v1, :cond_2e

    .line 289
    sget-object v0, Landroid/util/ArrayMap;->sTwiceBaseCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 290
    :try_start_e
    sget v1, Landroid/util/ArrayMap;->mTwiceBaseCacheSize:I

    if-ge v1, v5, :cond_29

    .line 291
    sget-object v1, Landroid/util/ArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    aput-object v1, p1, v4

    .line 292
    aput-object p0, p1, v6

    .line 293
    shl-int/lit8 p0, p2, 0x1

    sub-int/2addr p0, v6

    :goto_1b
    if-lt p0, v3, :cond_22

    .line 294
    aput-object v2, p1, p0

    .line 293
    add-int/lit8 p0, p0, -0x1

    goto :goto_1b

    .line 296
    :cond_22
    sput-object p1, Landroid/util/ArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    .line 297
    sget p0, Landroid/util/ArrayMap;->mTwiceBaseCacheSize:I

    add-int/2addr p0, v6

    sput p0, Landroid/util/ArrayMap;->mTwiceBaseCacheSize:I

    .line 303
    :cond_29
    monitor-exit v0

    goto :goto_55

    :catchall_2b
    move-exception p0

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_e .. :try_end_2d} :catchall_2b

    throw p0

    .line 304
    :cond_2e
    array-length v0, p0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_55

    .line 305
    sget-object v0, Landroid/util/ArrayMap;->sBaseCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 306
    :try_start_35
    sget v1, Landroid/util/ArrayMap;->mBaseCacheSize:I

    if-ge v1, v5, :cond_50

    .line 307
    sget-object v1, Landroid/util/ArrayMap;->mBaseCache:[Ljava/lang/Object;

    aput-object v1, p1, v4

    .line 308
    aput-object p0, p1, v6

    .line 309
    shl-int/lit8 p0, p2, 0x1

    sub-int/2addr p0, v6

    :goto_42
    if-lt p0, v3, :cond_49

    .line 310
    aput-object v2, p1, p0

    .line 309
    add-int/lit8 p0, p0, -0x1

    goto :goto_42

    .line 312
    :cond_49
    sput-object p1, Landroid/util/ArrayMap;->mBaseCache:[Ljava/lang/Object;

    .line 313
    sget p0, Landroid/util/ArrayMap;->mBaseCacheSize:I

    add-int/2addr p0, v6

    sput p0, Landroid/util/ArrayMap;->mBaseCacheSize:I

    .line 319
    :cond_50
    monitor-exit v0

    goto :goto_55

    :catchall_52
    move-exception p0

    monitor-exit v0
    :try_end_54
    .catchall {:try_start_35 .. :try_end_54} :catchall_52

    throw p0

    .line 321
    :cond_55
    :goto_55
    return-void
.end method

.method private greylist-max-o getCollection()Landroid/util/MapCollections;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/MapCollections<",
            "TK;TV;>;"
        }
    .end annotation

    .line 926
    iget-object v0, p0, Landroid/util/ArrayMap;->mCollections:Landroid/util/MapCollections;

    if-nez v0, :cond_b

    .line 927
    new-instance v0, Landroid/util/ArrayMap$1;

    invoke-direct {v0, p0}, Landroid/util/ArrayMap$1;-><init>(Landroid/util/ArrayMap;)V

    iput-object v0, p0, Landroid/util/ArrayMap;->mCollections:Landroid/util/MapCollections;

    .line 974
    :cond_b
    iget-object v0, p0, Landroid/util/ArrayMap;->mCollections:Landroid/util/MapCollections;

    return-object v0
.end method


# virtual methods
.method public greylist-max-p append(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 644
    iget v0, p0, Landroid/util/ArrayMap;->mSize:I

    .line 645
    if-nez p1, :cond_6

    const/4 v1, 0x0

    goto :goto_13

    .line 646
    :cond_6
    iget-boolean v1, p0, Landroid/util/ArrayMap;->mIdentityHashCode:Z

    if-eqz v1, :cond_f

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    goto :goto_13

    :cond_f
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 647
    :goto_13
    iget-object v2, p0, Landroid/util/ArrayMap;->mHashes:[I

    array-length v2, v2

    if-ge v0, v2, :cond_78

    .line 650
    if-lez v0, :cond_63

    iget-object v2, p0, Landroid/util/ArrayMap;->mHashes:[I

    add-int/lit8 v3, v0, -0x1

    aget v2, v2, v3

    if-le v2, v1, :cond_63

    .line 651
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v4, "here"

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 652
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "New hash "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " is before end of array hash "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Landroid/util/ArrayMap;->mHashes:[I

    aget v3, v4, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " at index "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ArrayMap"

    invoke-static {v1, v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 655
    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    return-void

    .line 658
    :cond_63
    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Landroid/util/ArrayMap;->mSize:I

    .line 659
    iget-object v2, p0, Landroid/util/ArrayMap;->mHashes:[I

    aput v1, v2, v0

    .line 660
    shl-int/lit8 v0, v0, 0x1

    .line 661
    iget-object v1, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    aput-object p1, v1, v0

    .line 662
    iget-object p1, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    aput-object p2, p1, v0

    .line 663
    return-void

    .line 648
    :cond_78
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Array is full"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist test-api clear()V
    .registers 5

    .line 372
    iget v0, p0, Landroid/util/ArrayMap;->mSize:I

    if-lez v0, :cond_18

    .line 373
    iget-object v0, p0, Landroid/util/ArrayMap;->mHashes:[I

    .line 374
    iget-object v1, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    .line 375
    iget v2, p0, Landroid/util/ArrayMap;->mSize:I

    .line 376
    sget-object v3, Landroid/util/EmptyArray;->INT:[I

    iput-object v3, p0, Landroid/util/ArrayMap;->mHashes:[I

    .line 377
    sget-object v3, Landroid/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    iput-object v3, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    .line 378
    const/4 v3, 0x0

    iput v3, p0, Landroid/util/ArrayMap;->mSize:I

    .line 379
    invoke-static {v0, v1, v2}, Landroid/util/ArrayMap;->freeArrays([I[Ljava/lang/Object;I)V

    .line 381
    :cond_18
    iget v0, p0, Landroid/util/ArrayMap;->mSize:I

    if-gtz v0, :cond_1d

    .line 384
    return-void

    .line 382
    :cond_1d
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public whitelist containsAll(Ljava/util/Collection;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 984
    invoke-static {p0, p1}, Landroid/util/MapCollections;->containsAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public whitelist test-api containsKey(Ljava/lang/Object;)Z
    .registers 2

    .line 430
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method public whitelist test-api containsValue(Ljava/lang/Object;)Z
    .registers 2

    .line 480
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->indexOfValue(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method public whitelist ensureCapacity(I)V
    .registers 7

    .line 406
    iget v0, p0, Landroid/util/ArrayMap;->mSize:I

    .line 407
    iget-object v1, p0, Landroid/util/ArrayMap;->mHashes:[I

    array-length v1, v1

    if-ge v1, p1, :cond_22

    .line 408
    iget-object v1, p0, Landroid/util/ArrayMap;->mHashes:[I

    .line 409
    iget-object v2, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    .line 410
    invoke-direct {p0, p1}, Landroid/util/ArrayMap;->allocArrays(I)V

    .line 411
    iget p1, p0, Landroid/util/ArrayMap;->mSize:I

    if-lez p1, :cond_1f

    .line 412
    iget-object p1, p0, Landroid/util/ArrayMap;->mHashes:[I

    const/4 v3, 0x0

    invoke-static {v1, v3, p1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 413
    iget-object p1, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v4, v0, 0x1

    invoke-static {v2, v3, p1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 415
    :cond_1f
    invoke-static {v1, v2, v0}, Landroid/util/ArrayMap;->freeArrays([I[Ljava/lang/Object;I)V

    .line 417
    :cond_22
    iget p1, p0, Landroid/util/ArrayMap;->mSize:I

    if-ne p1, v0, :cond_27

    .line 420
    return-void

    .line 418
    :cond_27
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1
.end method

.method public whitelist test-api entrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1086
    invoke-direct {p0}, Landroid/util/ArrayMap;->getCollection()Landroid/util/MapCollections;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/MapCollections;->getEntrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8

    .line 836
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 837
    return v0

    .line 839
    :cond_4
    instance-of v1, p1, Ljava/util/Map;

    const/4 v2, 0x0

    if-eqz v1, :cond_42

    .line 840
    check-cast p1, Ljava/util/Map;

    .line 841
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    if-eq v1, v3, :cond_16

    .line 842
    return v2

    .line 846
    :cond_16
    move v1, v2

    :goto_17
    :try_start_17
    iget v3, p0, Landroid/util/ArrayMap;->mSize:I

    if-ge v1, v3, :cond_3c

    .line 847
    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    .line 848
    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    .line 849
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 850
    if-nez v4, :cond_32

    .line 851
    if-nez v5, :cond_31

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_39

    .line 852
    :cond_31
    return v2

    .line 854
    :cond_32
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_36
    .catch Ljava/lang/NullPointerException; {:try_start_17 .. :try_end_36} :catch_40
    .catch Ljava/lang/ClassCastException; {:try_start_17 .. :try_end_36} :catch_3e

    if-nez v3, :cond_39

    .line 855
    return v2

    .line 846
    :cond_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 862
    :cond_3c
    nop

    .line 863
    return v0

    .line 860
    :catch_3e
    move-exception p1

    .line 861
    return v2

    .line 858
    :catch_40
    move-exception p1

    .line 859
    return v2

    .line 865
    :cond_42
    return v2
.end method

.method public greylist-max-o erase()V
    .registers 6

    .line 391
    iget v0, p0, Landroid/util/ArrayMap;->mSize:I

    if-lez v0, :cond_16

    .line 392
    iget v0, p0, Landroid/util/ArrayMap;->mSize:I

    shl-int/lit8 v0, v0, 0x1

    .line 393
    iget-object v1, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    .line 394
    const/4 v2, 0x0

    move v3, v2

    :goto_c
    if-ge v3, v0, :cond_14

    .line 395
    const/4 v4, 0x0

    aput-object v4, v1, v3

    .line 394
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 397
    :cond_14
    iput v2, p0, Landroid/util/ArrayMap;->mSize:I

    .line 399
    :cond_16
    return-void
.end method

.method public whitelist test-api forEach(Ljava/util/function/BiConsumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "-TK;-TV;>;)V"
        }
    .end annotation

    .line 996
    if-eqz p1, :cond_20

    .line 1000
    iget v0, p0, Landroid/util/ArrayMap;->mSize:I

    .line 1001
    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_1f

    .line 1002
    iget v2, p0, Landroid/util/ArrayMap;->mSize:I

    if-ne v0, v2, :cond_19

    .line 1005
    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1001
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1003
    :cond_19
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1

    .line 1007
    :cond_1f
    return-void

    .line 997
    :cond_20
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "action must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist test-api get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 491
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result p1

    .line 492
    if-ltz p1, :cond_f

    iget-object v0, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    :goto_10
    return-object p1
.end method

.method public whitelist test-api hashCode()I
    .registers 10

    .line 873
    iget-object v0, p0, Landroid/util/ArrayMap;->mHashes:[I

    .line 874
    iget-object v1, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    .line 875
    nop

    .line 876
    iget v2, p0, Landroid/util/ArrayMap;->mSize:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    move v5, v3

    move v6, v5

    :goto_b
    if-ge v5, v2, :cond_20

    .line 877
    aget-object v7, v1, v4

    .line 878
    aget v8, v0, v5

    if-nez v7, :cond_15

    move v7, v3

    goto :goto_19

    :cond_15
    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v7

    :goto_19
    xor-int/2addr v7, v8

    add-int/2addr v6, v7

    .line 876
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x2

    goto :goto_b

    .line 880
    :cond_20
    return v6
.end method

.method greylist-max-p indexOf(Ljava/lang/Object;I)I
    .registers 8

    .line 141
    iget v0, p0, Landroid/util/ArrayMap;->mSize:I

    .line 144
    if-nez v0, :cond_6

    .line 145
    const/4 p1, -0x1

    return p1

    .line 148
    :cond_6
    iget-object v1, p0, Landroid/util/ArrayMap;->mHashes:[I

    invoke-static {v1, v0, p2}, Landroid/util/ArrayMap;->binarySearchHashes([III)I

    move-result v1

    .line 151
    if-gez v1, :cond_f

    .line 152
    return v1

    .line 156
    :cond_f
    iget-object v2, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v3, v1, 0x1

    aget-object v2, v2, v3

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 157
    return v1

    .line 162
    :cond_1c
    add-int/lit8 v2, v1, 0x1

    :goto_1e
    if-ge v2, v0, :cond_36

    iget-object v3, p0, Landroid/util/ArrayMap;->mHashes:[I

    aget v3, v3, v2

    if-ne v3, p2, :cond_36

    .line 163
    iget-object v3, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v4, v2, 0x1

    aget-object v3, v3, v4

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    return v2

    .line 162
    :cond_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 167
    :cond_36
    add-int/lit8 v1, v1, -0x1

    :goto_38
    if-ltz v1, :cond_50

    iget-object v0, p0, Landroid/util/ArrayMap;->mHashes:[I

    aget v0, v0, v1

    if-ne v0, p2, :cond_50

    .line 168
    iget-object v0, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v3, v1, 0x1

    aget-object v0, v0, v3

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    return v1

    .line 167
    :cond_4d
    add-int/lit8 v1, v1, -0x1

    goto :goto_38

    .line 175
    :cond_50
    not-int p1, v2

    return p1
.end method

.method public whitelist indexOfKey(Ljava/lang/Object;)I
    .registers 3

    .line 440
    if-nez p1, :cond_7

    invoke-virtual {p0}, Landroid/util/ArrayMap;->indexOfNull()I

    move-result p1

    goto :goto_18

    .line 441
    :cond_7
    iget-boolean v0, p0, Landroid/util/ArrayMap;->mIdentityHashCode:Z

    if-eqz v0, :cond_10

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    goto :goto_14

    :cond_10
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_14
    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->indexOf(Ljava/lang/Object;I)I

    move-result p1

    .line 440
    :goto_18
    return p1
.end method

.method greylist-max-p indexOfNull()I
    .registers 6

    .line 180
    iget v0, p0, Landroid/util/ArrayMap;->mSize:I

    .line 183
    if-nez v0, :cond_6

    .line 184
    const/4 v0, -0x1

    return v0

    .line 187
    :cond_6
    iget-object v1, p0, Landroid/util/ArrayMap;->mHashes:[I

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/util/ArrayMap;->binarySearchHashes([III)I

    move-result v1

    .line 190
    if-gez v1, :cond_10

    .line 191
    return v1

    .line 195
    :cond_10
    iget-object v2, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v3, v1, 0x1

    aget-object v2, v2, v3

    if-nez v2, :cond_19

    .line 196
    return v1

    .line 201
    :cond_19
    add-int/lit8 v2, v1, 0x1

    :goto_1b
    if-ge v2, v0, :cond_2f

    iget-object v3, p0, Landroid/util/ArrayMap;->mHashes:[I

    aget v3, v3, v2

    if-nez v3, :cond_2f

    .line 202
    iget-object v3, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v4, v2, 0x1

    aget-object v3, v3, v4

    if-nez v3, :cond_2c

    return v2

    .line 201
    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 206
    :cond_2f
    add-int/lit8 v1, v1, -0x1

    :goto_31
    if-ltz v1, :cond_45

    iget-object v0, p0, Landroid/util/ArrayMap;->mHashes:[I

    aget v0, v0, v1

    if-nez v0, :cond_45

    .line 207
    iget-object v0, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v3, v1, 0x1

    aget-object v0, v0, v3

    if-nez v0, :cond_42

    return v1

    .line 206
    :cond_42
    add-int/lit8 v1, v1, -0x1

    goto :goto_31

    .line 214
    :cond_45
    not-int v0, v2

    return v0
.end method

.method public whitelist indexOfValue(Ljava/lang/Object;)I
    .registers 7

    .line 453
    iget v0, p0, Landroid/util/ArrayMap;->mSize:I

    mul-int/lit8 v0, v0, 0x2

    .line 454
    iget-object v1, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    .line 455
    const/4 v2, 0x1

    if-nez p1, :cond_15

    .line 456
    move p1, v2

    :goto_a
    if-ge p1, v0, :cond_26

    .line 457
    aget-object v3, v1, p1

    if-nez v3, :cond_12

    .line 458
    shr-int/2addr p1, v2

    return p1

    .line 456
    :cond_12
    add-int/lit8 p1, p1, 0x2

    goto :goto_a

    .line 462
    :cond_15
    move v3, v2

    :goto_16
    if-ge v3, v0, :cond_26

    .line 463
    aget-object v4, v1, v3

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 464
    shr-int/lit8 p1, v3, 0x1

    return p1

    .line 462
    :cond_23
    add-int/lit8 v3, v3, 0x2

    goto :goto_16

    .line 468
    :cond_26
    const/4 p1, -0x1

    return p1
.end method

.method public whitelist test-api isEmpty()Z
    .registers 2

    .line 564
    iget v0, p0, Landroid/util/ArrayMap;->mSize:I

    if-gtz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist keyAt(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    .line 507
    iget v0, p0, Landroid/util/ArrayMap;->mSize:I

    if-lt p1, v0, :cond_f

    sget-boolean v0, Landroid/util/UtilConfig;->sThrowExceptionForUpperArrayOutOfBounds:Z

    if-nez v0, :cond_9

    goto :goto_f

    .line 510
    :cond_9
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 512
    :cond_f
    :goto_f
    iget-object v0, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public whitelist test-api keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 1099
    invoke-direct {p0}, Landroid/util/ArrayMap;->getCollection()Landroid/util/MapCollections;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/MapCollections;->getKeySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 577
    iget v0, p0, Landroid/util/ArrayMap;->mSize:I

    .line 580
    const/4 v1, 0x0

    if-nez p1, :cond_c

    .line 581
    nop

    .line 582
    invoke-virtual {p0}, Landroid/util/ArrayMap;->indexOfNull()I

    move-result v2

    move v3, v1

    goto :goto_20

    .line 584
    :cond_c
    iget-boolean v2, p0, Landroid/util/ArrayMap;->mIdentityHashCode:Z

    if-eqz v2, :cond_15

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    goto :goto_19

    :cond_15
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    .line 585
    :goto_19
    invoke-virtual {p0, p1, v2}, Landroid/util/ArrayMap;->indexOf(Ljava/lang/Object;I)I

    move-result v3

    move v8, v3

    move v3, v2

    move v2, v8

    .line 587
    :goto_20
    if-ltz v2, :cond_2f

    .line 588
    shl-int/lit8 p1, v2, 0x1

    add-int/lit8 p1, p1, 0x1

    .line 589
    iget-object v0, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    aget-object v0, v0, p1

    .line 590
    iget-object v1, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    aput-object p2, v1, p1

    .line 591
    return-object v0

    .line 594
    :cond_2f
    not-int v2, v2

    .line 595
    iget-object v4, p0, Landroid/util/ArrayMap;->mHashes:[I

    array-length v4, v4

    if-lt v0, v4, :cond_68

    .line 596
    const/16 v4, 0x8

    if-lt v0, v4, :cond_3d

    shr-int/lit8 v4, v0, 0x1

    add-int/2addr v4, v0

    goto :goto_42

    .line 597
    :cond_3d
    const/4 v5, 0x4

    if-lt v0, v5, :cond_41

    goto :goto_42

    :cond_41
    move v4, v5

    .line 601
    :goto_42
    iget-object v5, p0, Landroid/util/ArrayMap;->mHashes:[I

    .line 602
    iget-object v6, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    .line 603
    invoke-direct {p0, v4}, Landroid/util/ArrayMap;->allocArrays(I)V

    .line 605
    iget v4, p0, Landroid/util/ArrayMap;->mSize:I

    if-ne v0, v4, :cond_62

    .line 609
    iget-object v4, p0, Landroid/util/ArrayMap;->mHashes:[I

    array-length v4, v4

    if-lez v4, :cond_5e

    .line 611
    iget-object v4, p0, Landroid/util/ArrayMap;->mHashes:[I

    array-length v7, v5

    invoke-static {v5, v1, v4, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 612
    iget-object v4, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    array-length v7, v6

    invoke-static {v6, v1, v4, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 615
    :cond_5e
    invoke-static {v5, v6, v0}, Landroid/util/ArrayMap;->freeArrays([I[Ljava/lang/Object;I)V

    goto :goto_68

    .line 606
    :cond_62
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1

    .line 618
    :cond_68
    :goto_68
    if-ge v2, v0, :cond_85

    .line 621
    iget-object v1, p0, Landroid/util/ArrayMap;->mHashes:[I

    iget-object v4, p0, Landroid/util/ArrayMap;->mHashes:[I

    add-int/lit8 v5, v2, 0x1

    sub-int v6, v0, v2

    invoke-static {v1, v2, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 622
    iget-object v1, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v4, v2, 0x1

    iget-object v6, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v5, v5, 0x1

    iget v7, p0, Landroid/util/ArrayMap;->mSize:I

    sub-int/2addr v7, v2

    shl-int/lit8 v7, v7, 0x1

    invoke-static {v1, v4, v6, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 626
    :cond_85
    iget v1, p0, Landroid/util/ArrayMap;->mSize:I

    if-ne v0, v1, :cond_a6

    iget-object v0, p0, Landroid/util/ArrayMap;->mHashes:[I

    array-length v0, v0

    if-ge v2, v0, :cond_a6

    .line 630
    iget-object v0, p0, Landroid/util/ArrayMap;->mHashes:[I

    aput v3, v0, v2

    .line 631
    iget-object v0, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v1, v2, 0x1

    aput-object p1, v0, v1

    .line 632
    iget-object p1, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    aput-object p2, p1, v1

    .line 633
    iget p1, p0, Landroid/util/ArrayMap;->mSize:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/util/ArrayMap;->mSize:I

    .line 634
    const/4 p1, 0x0

    return-object p1

    .line 627
    :cond_a6
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1
.end method

.method public whitelist putAll(Landroid/util/ArrayMap;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 708
    iget v0, p1, Landroid/util/ArrayMap;->mSize:I

    .line 709
    iget v1, p0, Landroid/util/ArrayMap;->mSize:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->ensureCapacity(I)V

    .line 710
    iget v1, p0, Landroid/util/ArrayMap;->mSize:I

    const/4 v2, 0x0

    if-nez v1, :cond_22

    .line 711
    if-lez v0, :cond_33

    .line 712
    iget-object v1, p1, Landroid/util/ArrayMap;->mHashes:[I

    iget-object v3, p0, Landroid/util/ArrayMap;->mHashes:[I

    invoke-static {v1, v2, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 713
    iget-object p1, p1, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    iget-object v1, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v3, v0, 0x1

    invoke-static {p1, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 714
    iput v0, p0, Landroid/util/ArrayMap;->mSize:I

    goto :goto_33

    .line 717
    :cond_22
    nop

    :goto_23
    if-ge v2, v0, :cond_33

    .line 718
    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    .line 721
    :cond_33
    :goto_33
    return-void
.end method

.method public whitelist test-api putAll(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 1015
    iget v0, p0, Landroid/util/ArrayMap;->mSize:I

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->ensureCapacity(I)V

    .line 1016
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1017
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1018
    goto :goto_12

    .line 1019
    :cond_2a
    return-void
.end method

.method public whitelist test-api remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 731
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result p1

    .line 732
    if-ltz p1, :cond_b

    .line 733
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 736
    :cond_b
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist removeAll(Ljava/util/Collection;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 1027
    invoke-static {p0, p1}, Landroid/util/MapCollections;->removeAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public whitelist removeAt(I)Ljava/lang/Object;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 751
    iget v0, p0, Landroid/util/ArrayMap;->mSize:I

    if-lt p1, v0, :cond_f

    sget-boolean v0, Landroid/util/UtilConfig;->sThrowExceptionForUpperArrayOutOfBounds:Z

    if-nez v0, :cond_9

    goto :goto_f

    .line 754
    :cond_9
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 757
    :cond_f
    :goto_f
    iget-object v0, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v1, p1, 0x1

    add-int/lit8 v2, v1, 0x1

    aget-object v0, v0, v2

    .line 758
    iget v2, p0, Landroid/util/ArrayMap;->mSize:I

    .line 760
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gt v2, v4, :cond_2e

    .line 763
    iget-object p1, p0, Landroid/util/ArrayMap;->mHashes:[I

    .line 764
    iget-object v1, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    .line 765
    sget-object v4, Landroid/util/EmptyArray;->INT:[I

    iput-object v4, p0, Landroid/util/ArrayMap;->mHashes:[I

    .line 766
    sget-object v4, Landroid/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    iput-object v4, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    .line 767
    invoke-static {p1, v1, v2}, Landroid/util/ArrayMap;->freeArrays([I[Ljava/lang/Object;I)V

    .line 768
    nop

    .line 769
    goto :goto_9d

    .line 770
    :cond_2e
    add-int/lit8 v5, v2, -0x1

    .line 771
    iget-object v6, p0, Landroid/util/ArrayMap;->mHashes:[I

    array-length v6, v6

    const/16 v7, 0x8

    if-le v6, v7, :cond_78

    iget v6, p0, Landroid/util/ArrayMap;->mSize:I

    iget-object v8, p0, Landroid/util/ArrayMap;->mHashes:[I

    array-length v8, v8

    div-int/lit8 v8, v8, 0x3

    if-ge v6, v8, :cond_78

    .line 775
    if-le v2, v7, :cond_46

    shr-int/lit8 v6, v2, 0x1

    add-int v7, v2, v6

    .line 779
    :cond_46
    iget-object v6, p0, Landroid/util/ArrayMap;->mHashes:[I

    .line 780
    iget-object v8, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    .line 781
    invoke-direct {p0, v7}, Landroid/util/ArrayMap;->allocArrays(I)V

    .line 783
    iget v7, p0, Landroid/util/ArrayMap;->mSize:I

    if-ne v2, v7, :cond_72

    .line 787
    if-lez p1, :cond_5d

    .line 789
    iget-object v7, p0, Landroid/util/ArrayMap;->mHashes:[I

    invoke-static {v6, v3, v7, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 790
    iget-object v7, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    invoke-static {v8, v3, v7, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 792
    :cond_5d
    if-ge p1, v5, :cond_71

    .line 795
    add-int/lit8 v3, p1, 0x1

    iget-object v7, p0, Landroid/util/ArrayMap;->mHashes:[I

    sub-int v9, v5, p1

    invoke-static {v6, v3, v7, p1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 796
    shl-int/lit8 p1, v3, 0x1

    iget-object v3, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v4, v9, 0x1

    invoke-static {v8, p1, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 799
    :cond_71
    goto :goto_9c

    .line 784
    :cond_72
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1

    .line 800
    :cond_78
    if-ge p1, v5, :cond_90

    .line 803
    iget-object v3, p0, Landroid/util/ArrayMap;->mHashes:[I

    add-int/lit8 v6, p1, 0x1

    iget-object v7, p0, Landroid/util/ArrayMap;->mHashes:[I

    sub-int v8, v5, p1

    invoke-static {v3, v6, v7, p1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 804
    iget-object p1, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v3, v6, 0x1

    iget-object v6, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v7, v8, 0x1

    invoke-static {p1, v3, v6, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 807
    :cond_90
    iget-object p1, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v1, v5, 0x1

    const/4 v3, 0x0

    aput-object v3, p1, v1

    .line 808
    iget-object p1, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    add-int/2addr v1, v4

    aput-object v3, p1, v1

    .line 811
    :goto_9c
    move v3, v5

    :goto_9d
    iget p1, p0, Landroid/util/ArrayMap;->mSize:I

    if-ne v2, p1, :cond_a4

    .line 814
    iput v3, p0, Landroid/util/ArrayMap;->mSize:I

    .line 815
    return-object v0

    .line 812
    :cond_a4
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1
.end method

.method public whitelist test-api replaceAll(Ljava/util/function/BiFunction;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction<",
            "-TK;-TV;+TV;>;)V"
        }
    .end annotation

    .line 1041
    if-eqz p1, :cond_31

    .line 1045
    iget v0, p0, Landroid/util/ArrayMap;->mSize:I

    .line 1047
    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_25

    .line 1048
    shl-int/lit8 v2, v1, 0x1

    add-int/lit8 v3, v2, 0x1

    .line 1050
    :try_start_b
    iget-object v4, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    iget-object v5, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    aget-object v2, v5, v2

    iget-object v5, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    aget-object v5, v5, v3

    invoke-interface {p1, v2, v5}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v4, v3
    :try_end_1b
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_b .. :try_end_1b} :catch_1e

    .line 1047
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1052
    :catch_1e
    move-exception p1

    .line 1053
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1

    .line 1054
    :cond_25
    nop

    .line 1055
    iget p1, p0, Landroid/util/ArrayMap;->mSize:I

    if-ne v0, p1, :cond_2b

    .line 1058
    return-void

    .line 1056
    :cond_2b
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1

    .line 1042
    :cond_31
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "function must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist retainAll(Ljava/util/Collection;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 1067
    invoke-static {p0, p1}, Landroid/util/MapCollections;->retainAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public whitelist setValueAt(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    .line 548
    iget v0, p0, Landroid/util/ArrayMap;->mSize:I

    if-lt p1, v0, :cond_f

    sget-boolean v0, Landroid/util/UtilConfig;->sThrowExceptionForUpperArrayOutOfBounds:Z

    if-nez v0, :cond_9

    goto :goto_f

    .line 551
    :cond_9
    new-instance p2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p2, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw p2

    .line 553
    :cond_f
    :goto_f
    shl-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x1

    .line 554
    iget-object v0, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    aget-object v0, v0, p1

    .line 555
    iget-object v1, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    aput-object p2, v1, p1

    .line 556
    return-object v0
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 823
    iget v0, p0, Landroid/util/ArrayMap;->mSize:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 892
    invoke-virtual {p0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 893
    const-string/jumbo v0, "{}"

    return-object v0

    .line 896
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/util/ArrayMap;->mSize:I

    mul-int/lit8 v1, v1, 0x1c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 897
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 898
    const/4 v1, 0x0

    :goto_19
    iget v2, p0, Landroid/util/ArrayMap;->mSize:I

    if-ge v1, v2, :cond_4c

    .line 899
    if-lez v1, :cond_24

    .line 900
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 902
    :cond_24
    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 903
    const-string v3, "(this Map)"

    if-eq v2, p0, :cond_30

    .line 904
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_33

    .line 906
    :cond_30
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 908
    :goto_33
    const/16 v2, 0x3d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 909
    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 910
    if-eq v2, p0, :cond_46

    .line 911
    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->deepToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_49

    .line 913
    :cond_46
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 898
    :goto_49
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 916
    :cond_4c
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 917
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o validate()V
    .registers 9

    .line 674
    iget v0, p0, Landroid/util/ArrayMap;->mSize:I

    .line 675
    const/4 v1, 0x1

    if-gt v0, v1, :cond_6

    .line 677
    return-void

    .line 679
    :cond_6
    iget-object v2, p0, Landroid/util/ArrayMap;->mHashes:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    .line 680
    nop

    .line 681
    nop

    :goto_d
    if-ge v1, v0, :cond_6d

    .line 682
    iget-object v4, p0, Landroid/util/ArrayMap;->mHashes:[I

    aget v4, v4, v1

    .line 683
    if-eq v4, v2, :cond_1a

    .line 684
    nop

    .line 685
    nop

    .line 686
    move v3, v1

    move v2, v4

    goto :goto_6a

    .line 690
    :cond_1a
    iget-object v4, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v5, v1, 0x1

    aget-object v4, v4, v5

    .line 691
    add-int/lit8 v5, v1, -0x1

    :goto_22
    if-lt v5, v3, :cond_6a

    .line 692
    iget-object v6, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v7, v5, 0x1

    aget-object v6, v6, v7

    .line 693
    const-string v7, "Duplicate key in ArrayMap: "

    if-eq v4, v6, :cond_53

    .line 696
    if-eqz v4, :cond_50

    if-eqz v6, :cond_50

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_39

    goto :goto_50

    .line 697
    :cond_39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 691
    :cond_50
    :goto_50
    add-int/lit8 v5, v5, -0x1

    goto :goto_22

    .line 694
    :cond_53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 681
    :cond_6a
    :goto_6a
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 701
    :cond_6d
    return-void
.end method

.method public whitelist valueAt(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 527
    iget v0, p0, Landroid/util/ArrayMap;->mSize:I

    if-lt p1, v0, :cond_f

    sget-boolean v0, Landroid/util/UtilConfig;->sThrowExceptionForUpperArrayOutOfBounds:Z

    if-nez v0, :cond_9

    goto :goto_f

    .line 530
    :cond_9
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 532
    :cond_f
    :goto_f
    iget-object v0, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public whitelist test-api values()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 1112
    invoke-direct {p0}, Landroid/util/ArrayMap;->getCollection()Landroid/util/MapCollections;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/MapCollections;->getValues()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
