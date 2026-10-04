.class Landroid/util/ArrayMap$1;
.super Landroid/util/MapCollections;
.source "ArrayMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/util/ArrayMap;->getCollection()Landroid/util/MapCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/MapCollections<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/util/ArrayMap;


# direct methods
.method constructor blacklist <init>(Landroid/util/ArrayMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 927
    iput-object p1, p0, Landroid/util/ArrayMap$1;->this$0:Landroid/util/ArrayMap;

    invoke-direct {p0}, Landroid/util/MapCollections;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist colClear()V
    .registers 2

    .line 970
    iget-object v0, p0, Landroid/util/ArrayMap$1;->this$0:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 971
    return-void
.end method

.method protected blacklist colGetEntry(II)Ljava/lang/Object;
    .registers 4

    .line 935
    iget-object v0, p0, Landroid/util/ArrayMap$1;->this$0:Landroid/util/ArrayMap;

    iget-object v0, v0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 p1, p1, 0x1

    add-int/2addr p1, p2

    aget-object p1, v0, p1

    return-object p1
.end method

.method protected blacklist colGetMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 950
    iget-object v0, p0, Landroid/util/ArrayMap$1;->this$0:Landroid/util/ArrayMap;

    return-object v0
.end method

.method protected blacklist colGetSize()I
    .registers 2

    .line 930
    iget-object v0, p0, Landroid/util/ArrayMap$1;->this$0:Landroid/util/ArrayMap;

    iget v0, v0, Landroid/util/ArrayMap;->mSize:I

    return v0
.end method

.method protected blacklist colIndexOfKey(Ljava/lang/Object;)I
    .registers 3

    .line 940
    iget-object v0, p0, Landroid/util/ArrayMap$1;->this$0:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method protected blacklist colIndexOfValue(Ljava/lang/Object;)I
    .registers 3

    .line 945
    iget-object v0, p0, Landroid/util/ArrayMap$1;->this$0:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->indexOfValue(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method protected blacklist colPut(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 955
    iget-object v0, p0, Landroid/util/ArrayMap$1;->this$0:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 956
    return-void
.end method

.method protected blacklist colRemoveAt(I)V
    .registers 3

    .line 965
    iget-object v0, p0, Landroid/util/ArrayMap$1;->this$0:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 966
    return-void
.end method

.method protected blacklist colSetValue(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    .line 960
    iget-object v0, p0, Landroid/util/ArrayMap$1;->this$0:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
