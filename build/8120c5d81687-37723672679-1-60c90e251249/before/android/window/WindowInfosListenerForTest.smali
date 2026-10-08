.class public Landroid/window/WindowInfosListenerForTest;
.super Ljava/lang/Object;
.source "WindowInfosListenerForTest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/WindowInfosListenerForTest$DisplayInfo;,
        Landroid/window/WindowInfosListenerForTest$WindowInfo;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "WindowInfosListenerForTest"


# instance fields
.field private final blacklist mConsumersToBiConsumers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Landroid/window/WindowInfosListenerForTest$WindowInfo;",
            ">;>;",
            "Ljava/util/function/BiConsumer<",
            "Ljava/util/List<",
            "Landroid/window/WindowInfosListenerForTest$WindowInfo;",
            ">;",
            "Ljava/util/List<",
            "Landroid/window/WindowInfosListenerForTest$DisplayInfo;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final blacklist mListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/util/function/BiConsumer<",
            "Ljava/util/List<",
            "Landroid/window/WindowInfosListenerForTest$WindowInfo;",
            ">;",
            "Ljava/util/List<",
            "Landroid/window/WindowInfosListenerForTest$DisplayInfo;",
            ">;>;",
            "Landroid/window/WindowInfosListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$smbuildParams([Landroid/view/InputWindowHandle;[Landroid/window/WindowInfosListener$DisplayInfo;)Landroid/util/Pair;
    .registers 2

    invoke-static {p0, p1}, Landroid/window/WindowInfosListenerForTest;->buildParams([Landroid/view/InputWindowHandle;[Landroid/window/WindowInfosListener$DisplayInfo;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/window/WindowInfosListenerForTest;->mListeners:Landroid/util/ArrayMap;

    .line 188
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/window/WindowInfosListenerForTest;->mConsumersToBiConsumers:Landroid/util/ArrayMap;

    .line 189
    return-void
.end method

.method private static blacklist buildParams([Landroid/view/InputWindowHandle;[Landroid/window/WindowInfosListener$DisplayInfo;)Landroid/util/Pair;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/view/InputWindowHandle;",
            "[",
            "Landroid/window/WindowInfosListener$DisplayInfo;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/util/List<",
            "Landroid/window/WindowInfosListenerForTest$WindowInfo;",
            ">;",
            "Ljava/util/List<",
            "Landroid/window/WindowInfosListenerForTest$DisplayInfo;",
            ">;>;"
        }
    .end annotation

    .line 287
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 288
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 290
    new-instance v2, Landroid/util/SparseArray;

    array-length v3, p1

    invoke-direct {v2, v3}, Landroid/util/SparseArray;-><init>(I)V

    .line 291
    array-length v3, p1

    const/4 v4, 0x0

    move v5, v4

    :goto_15
    if-ge v5, v3, :cond_21

    aget-object v6, p1, v5

    .line 292
    iget v7, v6, Landroid/window/WindowInfosListener$DisplayInfo;->mDisplayId:I

    invoke-virtual {v2, v7, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 291
    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    .line 295
    :cond_21
    array-length v3, p1

    move v5, v4

    :goto_23
    if-ge v5, v3, :cond_36

    aget-object v6, p1, v5

    .line 296
    new-instance v7, Landroid/window/WindowInfosListenerForTest$DisplayInfo;

    iget v8, v6, Landroid/window/WindowInfosListener$DisplayInfo;->mDisplayId:I

    iget-object v6, v6, Landroid/window/WindowInfosListener$DisplayInfo;->mTransform:Landroid/graphics/Matrix;

    invoke-direct {v7, v8, v6}, Landroid/window/WindowInfosListenerForTest$DisplayInfo;-><init>(ILandroid/graphics/Matrix;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    add-int/lit8 v5, v5, 0x1

    goto :goto_23

    .line 299
    :cond_36
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    .line 300
    array-length v3, p0

    :goto_3c
    if-ge v4, v3, :cond_73

    aget-object v5, p0, v4

    .line 301
    new-instance v10, Landroid/graphics/Rect;

    iget-object v6, v5, Landroid/view/InputWindowHandle;->frame:Landroid/graphics/Rect;

    invoke-direct {v10, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 304
    iget v6, v5, Landroid/view/InputWindowHandle;->displayId:I

    invoke-virtual {v2, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/window/WindowInfosListener$DisplayInfo;

    .line 305
    if-eqz v6, :cond_5c

    .line 306
    invoke-virtual {p1, v10}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 307
    iget-object v6, v6, Landroid/window/WindowInfosListener$DisplayInfo;->mTransform:Landroid/graphics/Matrix;

    invoke-virtual {v6, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 308
    invoke-virtual {p1, v10}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 311
    :cond_5c
    new-instance v6, Landroid/window/WindowInfosListenerForTest$WindowInfo;

    invoke-virtual {v5}, Landroid/view/InputWindowHandle;->getWindowToken()Landroid/os/IBinder;

    move-result-object v7

    iget-object v8, v5, Landroid/view/InputWindowHandle;->name:Ljava/lang/String;

    iget v9, v5, Landroid/view/InputWindowHandle;->displayId:I

    iget v11, v5, Landroid/view/InputWindowHandle;->inputConfig:I

    iget-object v12, v5, Landroid/view/InputWindowHandle;->transform:Landroid/graphics/Matrix;

    invoke-direct/range {v6 .. v12}, Landroid/window/WindowInfosListenerForTest$WindowInfo;-><init>(Landroid/os/IBinder;Ljava/lang/String;ILandroid/graphics/Rect;ILandroid/graphics/Matrix;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    add-int/lit8 v4, v4, 0x1

    goto :goto_3c

    .line 315
    :cond_73
    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method static synthetic blacklist lambda$addWindowInfosListener$0(Ljava/util/function/Consumer;Ljava/util/List;Ljava/util/List;)V
    .registers 3

    .line 208
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public blacklist addWindowInfosListener(Ljava/util/function/BiConsumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "Ljava/util/List<",
            "Landroid/window/WindowInfosListenerForTest$WindowInfo;",
            ">;",
            "Ljava/util/List<",
            "Landroid/window/WindowInfosListenerForTest$DisplayInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 225
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 226
    new-instance v1, Landroid/window/WindowInfosListenerForTest$1;

    invoke-direct {v1, p0, v0, p1}, Landroid/window/WindowInfosListenerForTest$1;-><init>(Landroid/window/WindowInfosListenerForTest;Ljava/util/concurrent/CountDownLatch;Ljava/util/function/BiConsumer;)V

    .line 241
    iget-object v2, p0, Landroid/window/WindowInfosListenerForTest;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    nop

    .line 243
    invoke-virtual {v1}, Landroid/window/WindowInfosListenerForTest$1;->register()Landroid/util/Pair;

    move-result-object v1

    .line 244
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, [Landroid/view/InputWindowHandle;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, [Landroid/window/WindowInfosListener$DisplayInfo;

    .line 245
    invoke-static {v2, v1}, Landroid/window/WindowInfosListenerForTest;->buildParams([Landroid/view/InputWindowHandle;[Landroid/window/WindowInfosListener$DisplayInfo;)Landroid/util/Pair;

    move-result-object v1

    .line 247
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-interface {p1, v2, v1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 248
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 249
    return-void
.end method

.method public blacklist addWindowInfosListener(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Landroid/window/WindowInfosListenerForTest$WindowInfo;",
            ">;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 207
    new-instance v0, Landroid/window/WindowInfosListenerForTest$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Landroid/window/WindowInfosListenerForTest$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;)V

    .line 209
    iget-object v1, p0, Landroid/window/WindowInfosListenerForTest;->mConsumersToBiConsumers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    invoke-virtual {p0, v0}, Landroid/window/WindowInfosListenerForTest;->addWindowInfosListener(Ljava/util/function/BiConsumer;)V

    .line 211
    return-void
.end method

.method public blacklist removeWindowInfosListener(Ljava/util/function/BiConsumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "Ljava/util/List<",
            "Landroid/window/WindowInfosListenerForTest$WindowInfo;",
            ">;",
            "Ljava/util/List<",
            "Landroid/window/WindowInfosListenerForTest$DisplayInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 278
    iget-object v0, p0, Landroid/window/WindowInfosListenerForTest;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/window/WindowInfosListener;

    .line 279
    if-nez p1, :cond_b

    .line 280
    return-void

    .line 282
    :cond_b
    invoke-virtual {p1}, Landroid/window/WindowInfosListener;->unregister()V

    .line 283
    return-void
.end method

.method public blacklist removeWindowInfosListener(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Landroid/window/WindowInfosListenerForTest$WindowInfo;",
            ">;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 263
    iget-object v0, p0, Landroid/window/WindowInfosListenerForTest;->mConsumersToBiConsumers:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/function/BiConsumer;

    .line 264
    if-nez p1, :cond_b

    .line 265
    return-void

    .line 267
    :cond_b
    iget-object v0, p0, Landroid/window/WindowInfosListenerForTest;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/window/WindowInfosListener;

    .line 268
    if-nez p1, :cond_16

    .line 269
    return-void

    .line 271
    :cond_16
    invoke-virtual {p1}, Landroid/window/WindowInfosListener;->unregister()V

    .line 272
    return-void
.end method
