.class Landroid/view/ViewGroup$ViewLocationHolder;
.super Ljava/lang/Object;
.source "ViewGroup.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewLocationHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroid/view/ViewGroup$ViewLocationHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final greylist-max-o COMPARISON_STRATEGY_LOCATION:I = 0x2

.field public static final greylist-max-o COMPARISON_STRATEGY_STRIPE:I = 0x1

.field private static final greylist-max-o MAX_POOL_SIZE:I = 0x20

.field private static greylist-max-o sComparisonStrategy:I

.field private static final greylist-max-o sPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool<",
            "Landroid/view/ViewGroup$ViewLocationHolder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mLayoutDirection:I

.field private final greylist-max-o mLocation:Landroid/graphics/Rect;

.field private greylist-max-o mRoot:Landroid/view/ViewGroup;

.field public greylist-max-o mView:Landroid/view/View;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 9250
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Landroid/view/ViewGroup$ViewLocationHolder;->sPool:Landroid/util/Pools$SynchronizedPool;

    .line 9257
    const/4 v0, 0x1

    sput v0, Landroid/view/ViewGroup$ViewLocationHolder;->sComparisonStrategy:I

    return-void
.end method

.method constructor greylist-max-o <init>()V
    .registers 2

    .line 9246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9259
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup$ViewLocationHolder;->mLocation:Landroid/graphics/Rect;

    return-void
.end method

.method private greylist-max-o clear()V
    .registers 3

    .line 9398
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewGroup$ViewLocationHolder;->mView:Landroid/view/View;

    .line 9399
    iput-object v0, p0, Landroid/view/ViewGroup$ViewLocationHolder;->mRoot:Landroid/view/ViewGroup;

    .line 9400
    iget-object v0, p0, Landroid/view/ViewGroup$ViewLocationHolder;->mLocation:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 9401
    return-void
.end method

.method private static greylist-max-o compareBoundsOfTree(Landroid/view/ViewGroup$ViewLocationHolder;Landroid/view/ViewGroup$ViewLocationHolder;)I
    .registers 9

    .line 9311
    sget v0, Landroid/view/ViewGroup$ViewLocationHolder;->sComparisonStrategy:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1e

    .line 9313
    iget-object v0, p0, Landroid/view/ViewGroup$ViewLocationHolder;->mLocation:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p1, Landroid/view/ViewGroup$ViewLocationHolder;->mLocation:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v3

    if-gtz v0, :cond_12

    .line 9314
    return v1

    .line 9317
    :cond_12
    iget-object v0, p0, Landroid/view/ViewGroup$ViewLocationHolder;->mLocation:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v3, p1, Landroid/view/ViewGroup$ViewLocationHolder;->mLocation:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v3

    if-ltz v0, :cond_1e

    .line 9318
    return v2

    .line 9323
    :cond_1e
    iget v0, p0, Landroid/view/ViewGroup$ViewLocationHolder;->mLayoutDirection:I

    if-nez v0, :cond_2f

    .line 9324
    iget-object v0, p0, Landroid/view/ViewGroup$ViewLocationHolder;->mLocation:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v3, p1, Landroid/view/ViewGroup$ViewLocationHolder;->mLocation:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v3

    .line 9325
    if-eqz v0, :cond_2e

    .line 9326
    return v0

    .line 9328
    :cond_2e
    goto :goto_3c

    .line 9329
    :cond_2f
    iget-object v0, p0, Landroid/view/ViewGroup$ViewLocationHolder;->mLocation:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v3, p1, Landroid/view/ViewGroup$ViewLocationHolder;->mLocation:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v3

    .line 9330
    if-eqz v0, :cond_3c

    .line 9331
    neg-int p0, v0

    return p0

    .line 9335
    :cond_3c
    :goto_3c
    iget-object v0, p0, Landroid/view/ViewGroup$ViewLocationHolder;->mLocation:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v3, p1, Landroid/view/ViewGroup$ViewLocationHolder;->mLocation:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v3

    .line 9336
    if-eqz v0, :cond_48

    .line 9337
    return v0

    .line 9340
    :cond_48
    iget-object v0, p0, Landroid/view/ViewGroup$ViewLocationHolder;->mLocation:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget-object v3, p1, Landroid/view/ViewGroup$ViewLocationHolder;->mLocation:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int/2addr v0, v3

    .line 9341
    if-eqz v0, :cond_59

    .line 9342
    neg-int p0, v0

    return p0

    .line 9345
    :cond_59
    iget-object v0, p0, Landroid/view/ViewGroup$ViewLocationHolder;->mLocation:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v3, p1, Landroid/view/ViewGroup$ViewLocationHolder;->mLocation:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v0, v3

    .line 9346
    if-eqz v0, :cond_6a

    .line 9347
    neg-int p0, v0

    return p0

    .line 9351
    :cond_6a
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 9352
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 9353
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 9354
    iget-object v5, p0, Landroid/view/ViewGroup$ViewLocationHolder;->mView:Landroid/view/View;

    invoke-virtual {v5, v0, v2}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;Z)V

    .line 9355
    iget-object v5, p1, Landroid/view/ViewGroup$ViewLocationHolder;->mView:Landroid/view/View;

    invoke-virtual {v5, v3, v2}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;Z)V

    .line 9356
    iget-object v5, p0, Landroid/view/ViewGroup$ViewLocationHolder;->mView:Landroid/view/View;

    new-instance v6, Landroid/view/ViewGroup$ViewLocationHolder$$ExternalSyntheticLambda0;

    invoke-direct {v6, v4, v0}, Landroid/view/ViewGroup$ViewLocationHolder$$ExternalSyntheticLambda0;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    const/4 v0, 0x0

    invoke-virtual {v5, v6, v0}, Landroid/view/View;->findViewByPredicateTraversal(Ljava/util/function/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v5

    .line 9360
    iget-object p1, p1, Landroid/view/ViewGroup$ViewLocationHolder;->mView:Landroid/view/View;

    new-instance v6, Landroid/view/ViewGroup$ViewLocationHolder$$ExternalSyntheticLambda1;

    invoke-direct {v6, v4, v3}, Landroid/view/ViewGroup$ViewLocationHolder$$ExternalSyntheticLambda1;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {p1, v6, v0}, Landroid/view/View;->findViewByPredicateTraversal(Ljava/util/function/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    .line 9367
    if-eqz v5, :cond_af

    if-eqz p1, :cond_af

    .line 9368
    iget-object v0, p0, Landroid/view/ViewGroup$ViewLocationHolder;->mRoot:Landroid/view/ViewGroup;

    .line 9369
    invoke-static {v0, v5}, Landroid/view/ViewGroup$ViewLocationHolder;->obtain(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/ViewGroup$ViewLocationHolder;

    move-result-object v0

    .line 9370
    iget-object p0, p0, Landroid/view/ViewGroup$ViewLocationHolder;->mRoot:Landroid/view/ViewGroup;

    .line 9371
    invoke-static {p0, p1}, Landroid/view/ViewGroup$ViewLocationHolder;->obtain(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/ViewGroup$ViewLocationHolder;

    move-result-object p0

    .line 9372
    invoke-static {v0, p0}, Landroid/view/ViewGroup$ViewLocationHolder;->compareBoundsOfTree(Landroid/view/ViewGroup$ViewLocationHolder;Landroid/view/ViewGroup$ViewLocationHolder;)I

    move-result p0

    return p0

    .line 9376
    :cond_af
    if-eqz v5, :cond_b2

    .line 9377
    return v2

    .line 9380
    :cond_b2
    if-eqz p1, :cond_b5

    .line 9381
    return v1

    .line 9385
    :cond_b5
    const/4 p0, 0x0

    return p0
.end method

.method private greylist-max-o init(Landroid/view/ViewGroup;Landroid/view/View;)V
    .registers 4

    .line 9389
    iget-object v0, p0, Landroid/view/ViewGroup$ViewLocationHolder;->mLocation:Landroid/graphics/Rect;

    .line 9390
    invoke-virtual {p2, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 9391
    invoke-virtual {p1, p2, v0}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 9392
    iput-object p2, p0, Landroid/view/ViewGroup$ViewLocationHolder;->mView:Landroid/view/View;

    .line 9393
    iput-object p1, p0, Landroid/view/ViewGroup$ViewLocationHolder;->mRoot:Landroid/view/ViewGroup;

    .line 9394
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result p1

    iput p1, p0, Landroid/view/ViewGroup$ViewLocationHolder;->mLayoutDirection:I

    .line 9395
    return-void
.end method

.method static synthetic blacklist lambda$compareBoundsOfTree$0(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/View;)Z
    .registers 4

    .line 9357
    const/4 v0, 0x1

    invoke-virtual {p2, p0, v0}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;Z)V

    .line 9358
    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method static synthetic blacklist lambda$compareBoundsOfTree$1(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/View;)Z
    .registers 4

    .line 9361
    const/4 v0, 0x1

    invoke-virtual {p2, p0, v0}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;Z)V

    .line 9362
    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public static greylist-max-o obtain(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/ViewGroup$ViewLocationHolder;
    .registers 3

    .line 9268
    sget-object v0, Landroid/view/ViewGroup$ViewLocationHolder;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$ViewLocationHolder;

    .line 9269
    if-nez v0, :cond_f

    .line 9270
    new-instance v0, Landroid/view/ViewGroup$ViewLocationHolder;

    invoke-direct {v0}, Landroid/view/ViewGroup$ViewLocationHolder;-><init>()V

    .line 9272
    :cond_f
    invoke-direct {v0, p0, p1}, Landroid/view/ViewGroup$ViewLocationHolder;->init(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 9273
    return-object v0
.end method

.method public static greylist-max-o setComparisonStrategy(I)V
    .registers 1

    .line 9277
    sput p0, Landroid/view/ViewGroup$ViewLocationHolder;->sComparisonStrategy:I

    .line 9278
    return-void
.end method


# virtual methods
.method public greylist-max-o compareTo(Landroid/view/ViewGroup$ViewLocationHolder;)I
    .registers 3

    .line 9288
    if-nez p1, :cond_4

    .line 9289
    const/4 p1, 0x1

    return p1

    .line 9292
    :cond_4
    invoke-static {p0, p1}, Landroid/view/ViewGroup$ViewLocationHolder;->compareBoundsOfTree(Landroid/view/ViewGroup$ViewLocationHolder;Landroid/view/ViewGroup$ViewLocationHolder;)I

    move-result v0

    .line 9293
    if-eqz v0, :cond_b

    .line 9294
    return v0

    .line 9299
    :cond_b
    iget-object v0, p0, Landroid/view/ViewGroup$ViewLocationHolder;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v0

    iget-object p1, p1, Landroid/view/ViewGroup$ViewLocationHolder;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 9246
    check-cast p1, Landroid/view/ViewGroup$ViewLocationHolder;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup$ViewLocationHolder;->compareTo(Landroid/view/ViewGroup$ViewLocationHolder;)I

    move-result p1

    return p1
.end method

.method public greylist-max-o recycle()V
    .registers 2

    .line 9281
    invoke-direct {p0}, Landroid/view/ViewGroup$ViewLocationHolder;->clear()V

    .line 9282
    sget-object v0, Landroid/view/ViewGroup$ViewLocationHolder;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 9283
    return-void
.end method
