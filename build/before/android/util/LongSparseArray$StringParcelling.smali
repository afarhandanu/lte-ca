.class public Landroid/util/LongSparseArray$StringParcelling;
.super Ljava/lang/Object;
.source "LongSparseArray.java"

# interfaces
.implements Lcom/android/internal/util/Parcelling;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/LongSparseArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StringParcelling"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/internal/util/Parcelling<",
        "Landroid/util/LongSparseArray<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 501
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist parcel(Landroid/util/LongSparseArray;Landroid/os/Parcel;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Parcel;",
            "I)V"
        }
    .end annotation

    .line 505
    if-nez p1, :cond_7

    .line 506
    const/4 p1, -0x1

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 507
    return-void

    .line 510
    :cond_7
    invoke-static {p1}, Landroid/util/LongSparseArray;->-$$Nest$fgetmSize(Landroid/util/LongSparseArray;)I

    move-result p3

    .line 512
    invoke-virtual {p2, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 513
    invoke-static {p1}, Landroid/util/LongSparseArray;->-$$Nest$fgetmKeys(Landroid/util/LongSparseArray;)[J

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 515
    invoke-static {p1}, Landroid/util/LongSparseArray;->-$$Nest$fgetmValues(Landroid/util/LongSparseArray;)[Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    const-class v1, [Ljava/lang/String;

    invoke-static {p1, v0, p3, v1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 516
    return-void
.end method

.method public bridge synthetic blacklist parcel(Ljava/lang/Object;Landroid/os/Parcel;I)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 501
    check-cast p1, Landroid/util/LongSparseArray;

    invoke-virtual {p0, p1, p2, p3}, Landroid/util/LongSparseArray$StringParcelling;->parcel(Landroid/util/LongSparseArray;Landroid/os/Parcel;I)V

    return-void
.end method

.method public blacklist unparcel(Landroid/os/Parcel;)Landroid/util/LongSparseArray;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 520
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 521
    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    .line 522
    const/4 p1, 0x0

    return-object p1

    .line 525
    :cond_9
    new-instance v1, Landroid/util/LongSparseArray;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/util/LongSparseArray;-><init>(I)V

    .line 526
    invoke-static {v1, v0}, Landroid/util/LongSparseArray;->-$$Nest$fputmSize(Landroid/util/LongSparseArray;I)V

    .line 527
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/LongSparseArray;->-$$Nest$fputmKeys(Landroid/util/LongSparseArray;[J)V

    .line 528
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/LongSparseArray;->-$$Nest$fputmValues(Landroid/util/LongSparseArray;[Ljava/lang/Object;)V

    .line 531
    invoke-static {v1}, Landroid/util/LongSparseArray;->-$$Nest$fgetmKeys(Landroid/util/LongSparseArray;)[J

    move-result-object p1

    array-length p1, p1

    const/4 v3, 0x1

    if-lt p1, v0, :cond_2a

    move p1, v3

    goto :goto_2b

    :cond_2a
    move p1, v2

    :goto_2b
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 532
    invoke-static {v1}, Landroid/util/LongSparseArray;->-$$Nest$fgetmValues(Landroid/util/LongSparseArray;)[Ljava/lang/Object;

    move-result-object p1

    array-length p1, p1

    if-lt p1, v0, :cond_37

    move p1, v3

    goto :goto_38

    :cond_37
    move p1, v2

    :goto_38
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 534
    if-lez v0, :cond_59

    .line 535
    invoke-static {v1}, Landroid/util/LongSparseArray;->-$$Nest$fgetmKeys(Landroid/util/LongSparseArray;)[J

    move-result-object p1

    aget-wide v4, p1, v2

    .line 536
    move p1, v3

    :goto_44
    if-ge p1, v0, :cond_59

    .line 537
    invoke-static {v1}, Landroid/util/LongSparseArray;->-$$Nest$fgetmKeys(Landroid/util/LongSparseArray;)[J

    move-result-object v6

    aget-wide v6, v6, p1

    cmp-long v6, v4, v6

    if-gez v6, :cond_52

    move v6, v3

    goto :goto_53

    :cond_52
    move v6, v2

    :goto_53
    invoke-static {v6}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 536
    add-int/lit8 p1, p1, 0x1

    goto :goto_44

    .line 541
    :cond_59
    return-object v1
.end method

.method public bridge synthetic blacklist unparcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 501
    invoke-virtual {p0, p1}, Landroid/util/LongSparseArray$StringParcelling;->unparcel(Landroid/os/Parcel;)Landroid/util/LongSparseArray;

    move-result-object p1

    return-object p1
.end method
