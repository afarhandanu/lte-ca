.class Landroid/view/ViewGroup$ChildListForAccessibility;
.super Ljava/lang/Object;
.source "ViewGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ChildListForAccessibility"
.end annotation


# static fields
.field private static final greylist-max-o MAX_POOL_SIZE:I = 0x20

.field private static final greylist-max-o sPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool<",
            "Landroid/view/ViewGroup$ChildListForAccessibility;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mHolders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/ViewGroup$ViewLocationHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 9165
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Landroid/view/ViewGroup$ChildListForAccessibility;->sPool:Landroid/util/Pools$SynchronizedPool;

    return-void
.end method

.method constructor greylist-max-o <init>()V
    .registers 2

    .line 9161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup$ChildListForAccessibility;->mChildren:Ljava/util/ArrayList;

    .line 9170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup$ChildListForAccessibility;->mHolders:Ljava/util/ArrayList;

    return-void
.end method

.method private greylist-max-o clear()V
    .registers 2

    .line 9236
    iget-object v0, p0, Landroid/view/ViewGroup$ChildListForAccessibility;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 9237
    return-void
.end method

.method private greylist-max-o init(Landroid/view/ViewGroup;Z)V
    .registers 8

    .line 9195
    iget-object v0, p0, Landroid/view/ViewGroup$ChildListForAccessibility;->mChildren:Ljava/util/ArrayList;

    .line 9196
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 9197
    const/4 v2, 0x0

    move v3, v2

    :goto_8
    if-ge v3, v1, :cond_14

    .line 9198
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 9199
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9197
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 9201
    :cond_14
    if-eqz p2, :cond_45

    .line 9202
    iget-object p2, p0, Landroid/view/ViewGroup$ChildListForAccessibility;->mHolders:Ljava/util/ArrayList;

    .line 9203
    move v3, v2

    :goto_19
    if-ge v3, v1, :cond_2b

    .line 9204
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 9205
    invoke-static {p1, v4}, Landroid/view/ViewGroup$ViewLocationHolder;->obtain(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/ViewGroup$ViewLocationHolder;

    move-result-object v4

    .line 9206
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9203
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 9208
    :cond_2b
    invoke-direct {p0, p2}, Landroid/view/ViewGroup$ChildListForAccessibility;->sort(Ljava/util/ArrayList;)V

    .line 9209
    nop

    :goto_2f
    if-ge v2, v1, :cond_42

    .line 9210
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$ViewLocationHolder;

    .line 9211
    iget-object v3, p1, Landroid/view/ViewGroup$ViewLocationHolder;->mView:Landroid/view/View;

    invoke-virtual {v0, v2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 9212
    invoke-virtual {p1}, Landroid/view/ViewGroup$ViewLocationHolder;->recycle()V

    .line 9209
    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    .line 9214
    :cond_42
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 9216
    :cond_45
    return-void
.end method

.method public static greylist-max-o obtain(Landroid/view/ViewGroup;Z)Landroid/view/ViewGroup$ChildListForAccessibility;
    .registers 3

    .line 9173
    sget-object v0, Landroid/view/ViewGroup$ChildListForAccessibility;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$ChildListForAccessibility;

    .line 9174
    if-nez v0, :cond_f

    .line 9175
    new-instance v0, Landroid/view/ViewGroup$ChildListForAccessibility;

    invoke-direct {v0}, Landroid/view/ViewGroup$ChildListForAccessibility;-><init>()V

    .line 9177
    :cond_f
    invoke-direct {v0, p0, p1}, Landroid/view/ViewGroup$ChildListForAccessibility;->init(Landroid/view/ViewGroup;Z)V

    .line 9178
    return-object v0
.end method

.method private greylist-max-o sort(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/ViewGroup$ViewLocationHolder;",
            ">;)V"
        }
    .end annotation

    .line 9223
    const/4 v0, 0x1

    :try_start_1
    invoke-static {v0}, Landroid/view/ViewGroup$ViewLocationHolder;->setComparisonStrategy(I)V

    .line 9225
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_7} :catch_8

    .line 9232
    goto :goto_10

    .line 9226
    :catch_8
    move-exception v0

    .line 9229
    const/4 v0, 0x2

    invoke-static {v0}, Landroid/view/ViewGroup$ViewLocationHolder;->setComparisonStrategy(I)V

    .line 9231
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 9233
    :goto_10
    return-void
.end method


# virtual methods
.method public greylist-max-o getChildAt(I)Landroid/view/View;
    .registers 3

    .line 9191
    iget-object v0, p0, Landroid/view/ViewGroup$ChildListForAccessibility;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method public greylist-max-o getChildCount()I
    .registers 2

    .line 9187
    iget-object v0, p0, Landroid/view/ViewGroup$ChildListForAccessibility;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public greylist-max-o recycle()V
    .registers 2

    .line 9182
    invoke-direct {p0}, Landroid/view/ViewGroup$ChildListForAccessibility;->clear()V

    .line 9183
    sget-object v0, Landroid/view/ViewGroup$ChildListForAccessibility;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 9184
    return-void
.end method
