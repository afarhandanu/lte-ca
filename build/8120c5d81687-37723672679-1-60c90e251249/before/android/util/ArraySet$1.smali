.class Landroid/util/ArraySet$1;
.super Landroid/util/MapCollections;
.source "ArraySet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/util/ArraySet;->getCollection()Landroid/util/MapCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/MapCollections<",
        "TE;TE;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/util/ArraySet;


# direct methods
.method constructor blacklist <init>(Landroid/util/ArraySet;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 875
    iput-object p1, p0, Landroid/util/ArraySet$1;->this$0:Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/MapCollections;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist colClear()V
    .registers 2

    .line 918
    iget-object v0, p0, Landroid/util/ArraySet$1;->this$0:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 919
    return-void
.end method

.method protected blacklist colGetEntry(II)Ljava/lang/Object;
    .registers 3

    .line 883
    iget-object p2, p0, Landroid/util/ArraySet$1;->this$0:Landroid/util/ArraySet;

    iget-object p2, p2, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object p1, p2, p1

    return-object p1
.end method

.method protected blacklist colGetMap()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TE;TE;>;"
        }
    .end annotation

    .line 898
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not a map"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected blacklist colGetSize()I
    .registers 2

    .line 878
    iget-object v0, p0, Landroid/util/ArraySet$1;->this$0:Landroid/util/ArraySet;

    iget v0, v0, Landroid/util/ArraySet;->mSize:I

    return v0
.end method

.method protected blacklist colIndexOfKey(Ljava/lang/Object;)I
    .registers 3

    .line 888
    iget-object v0, p0, Landroid/util/ArraySet$1;->this$0:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method protected blacklist colIndexOfValue(Ljava/lang/Object;)I
    .registers 3

    .line 893
    iget-object v0, p0, Landroid/util/ArraySet$1;->this$0:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method protected blacklist colPut(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)V"
        }
    .end annotation

    .line 903
    iget-object p2, p0, Landroid/util/ArraySet$1;->this$0:Landroid/util/ArraySet;

    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 904
    return-void
.end method

.method protected blacklist colRemoveAt(I)V
    .registers 3

    .line 913
    iget-object v0, p0, Landroid/util/ArraySet$1;->this$0:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 914
    return-void
.end method

.method protected blacklist colSetValue(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 908
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p2, "not a map"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
