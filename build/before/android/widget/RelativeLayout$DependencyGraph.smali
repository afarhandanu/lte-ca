.class Landroid/widget/RelativeLayout$DependencyGraph;
.super Ljava/lang/Object;
.source "RelativeLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RelativeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DependencyGraph"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/RelativeLayout$DependencyGraph$Node;
    }
.end annotation


# instance fields
.field private greylist-max-o mKeyNodes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/widget/RelativeLayout$DependencyGraph$Node;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mNodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/RelativeLayout$DependencyGraph$Node;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mRoots:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroid/widget/RelativeLayout$DependencyGraph$Node;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmKeyNodes(Landroid/widget/RelativeLayout$DependencyGraph;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Landroid/widget/RelativeLayout$DependencyGraph;->mKeyNodes:Landroid/util/SparseArray;

    return-object p0
.end method

.method private constructor greylist-max-o <init>()V
    .registers 2

    .line 1871
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1875
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/RelativeLayout$DependencyGraph;->mNodes:Ljava/util/ArrayList;

    .line 1881
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/widget/RelativeLayout$DependencyGraph;->mKeyNodes:Landroid/util/SparseArray;

    .line 1887
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroid/widget/RelativeLayout$DependencyGraph;->mRoots:Ljava/util/ArrayDeque;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/RelativeLayout-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/widget/RelativeLayout$DependencyGraph;-><init>()V

    return-void
.end method

.method private greylist-max-o findRoots([I)Ljava/util/ArrayDeque;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/ArrayDeque<",
            "Landroid/widget/RelativeLayout$DependencyGraph$Node;",
            ">;"
        }
    .end annotation

    .line 1971
    iget-object v0, p0, Landroid/widget/RelativeLayout$DependencyGraph;->mKeyNodes:Landroid/util/SparseArray;

    .line 1972
    iget-object v1, p0, Landroid/widget/RelativeLayout$DependencyGraph;->mNodes:Ljava/util/ArrayList;

    .line 1973
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1977
    const/4 v3, 0x0

    move v4, v3

    :goto_a
    if-ge v4, v2, :cond_1f

    .line 1978
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$DependencyGraph$Node;

    .line 1979
    iget-object v6, v5, Landroid/widget/RelativeLayout$DependencyGraph$Node;->dependents:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->clear()V

    .line 1980
    iget-object v5, v5, Landroid/widget/RelativeLayout$DependencyGraph$Node;->dependencies:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V

    .line 1977
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 1984
    :cond_1f
    move v4, v3

    :goto_20
    if-ge v4, v2, :cond_5f

    .line 1985
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$DependencyGraph$Node;

    .line 1987
    iget-object v6, v5, Landroid/widget/RelativeLayout$DependencyGraph$Node;->view:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1988
    invoke-static {v6}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmRules(Landroid/widget/RelativeLayout$LayoutParams;)[I

    move-result-object v6

    .line 1989
    array-length v7, p1

    .line 1993
    move v8, v3

    :goto_36
    if-ge v8, v7, :cond_5c

    .line 1994
    aget v9, p1, v8

    aget v9, v6, v9

    .line 1995
    if-gtz v9, :cond_44

    invoke-static {v9}, Landroid/content/res/ResourceId;->isValid(I)Z

    move-result v10

    if-eqz v10, :cond_59

    .line 1997
    :cond_44
    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout$DependencyGraph$Node;

    .line 1999
    if-eqz v10, :cond_59

    if-ne v10, v5, :cond_4f

    .line 2000
    goto :goto_59

    .line 2003
    :cond_4f
    iget-object v11, v10, Landroid/widget/RelativeLayout$DependencyGraph$Node;->dependents:Landroid/util/ArrayMap;

    invoke-virtual {v11, v5, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2005
    iget-object v11, v5, Landroid/widget/RelativeLayout$DependencyGraph$Node;->dependencies:Landroid/util/SparseArray;

    invoke-virtual {v11, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1993
    :cond_59
    :goto_59
    add-int/lit8 v8, v8, 0x1

    goto :goto_36

    .line 1984
    :cond_5c
    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    .line 2010
    :cond_5f
    iget-object p1, p0, Landroid/widget/RelativeLayout$DependencyGraph;->mRoots:Ljava/util/ArrayDeque;

    .line 2011
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    .line 2014
    nop

    :goto_65
    if-ge v3, v2, :cond_7b

    .line 2015
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$DependencyGraph$Node;

    .line 2016
    iget-object v4, v0, Landroid/widget/RelativeLayout$DependencyGraph$Node;->dependencies:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-nez v4, :cond_78

    invoke-virtual {p1, v0}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 2014
    :cond_78
    add-int/lit8 v3, v3, 0x1

    goto :goto_65

    .line 2019
    :cond_7b
    return-object p1
.end method


# virtual methods
.method greylist-max-o add(Landroid/view/View;)V
    .registers 4

    .line 1911
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 1912
    invoke-static {p1}, Landroid/widget/RelativeLayout$DependencyGraph$Node;->acquire(Landroid/view/View;)Landroid/widget/RelativeLayout$DependencyGraph$Node;

    move-result-object p1

    .line 1914
    const/4 v1, -0x1

    if-eq v0, v1, :cond_10

    .line 1915
    iget-object v1, p0, Landroid/widget/RelativeLayout$DependencyGraph;->mKeyNodes:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1918
    :cond_10
    iget-object v0, p0, Landroid/widget/RelativeLayout$DependencyGraph;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1919
    return-void
.end method

.method greylist-max-o clear()V
    .registers 5

    .line 1893
    iget-object v0, p0, Landroid/widget/RelativeLayout$DependencyGraph;->mNodes:Ljava/util/ArrayList;

    .line 1894
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1896
    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_15

    .line 1897
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$DependencyGraph$Node;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout$DependencyGraph$Node;->release()V

    .line 1896
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1899
    :cond_15
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1901
    iget-object v0, p0, Landroid/widget/RelativeLayout$DependencyGraph;->mKeyNodes:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1902
    iget-object v0, p0, Landroid/widget/RelativeLayout$DependencyGraph;->mRoots:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 1903
    return-void
.end method

.method varargs blacklist getSortedViews([Landroid/view/View;[I)V
    .registers 11

    .line 1932
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout$DependencyGraph;->findRoots([I)Ljava/util/ArrayDeque;

    move-result-object p2

    .line 1933
    const/4 v0, 0x0

    move v1, v0

    .line 1936
    :goto_6
    invoke-virtual {p2}, Ljava/util/ArrayDeque;->pollLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$DependencyGraph$Node;

    if-eqz v2, :cond_3a

    .line 1937
    iget-object v3, v2, Landroid/widget/RelativeLayout$DependencyGraph$Node;->view:Landroid/view/View;

    .line 1938
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v4

    .line 1940
    add-int/lit8 v5, v1, 0x1

    aput-object v3, p1, v1

    .line 1942
    iget-object v1, v2, Landroid/widget/RelativeLayout$DependencyGraph$Node;->dependents:Landroid/util/ArrayMap;

    .line 1943
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 1944
    move v3, v0

    :goto_1f
    if-ge v3, v2, :cond_38

    .line 1945
    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$DependencyGraph$Node;

    .line 1946
    iget-object v7, v6, Landroid/widget/RelativeLayout$DependencyGraph$Node;->dependencies:Landroid/util/SparseArray;

    .line 1948
    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 1949
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-nez v7, :cond_35

    .line 1950
    invoke-virtual {p2, v6}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 1944
    :cond_35
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 1953
    :cond_38
    move v1, v5

    goto :goto_6

    .line 1955
    :cond_3a
    array-length p1, p1

    if-lt v1, p1, :cond_3e

    .line 1959
    return-void

    .line 1956
    :cond_3e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Circular dependencies cannot exist in RelativeLayout"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
