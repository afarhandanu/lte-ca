.class public Landroid/util/LongSparseLongArray$Parcelling;
.super Ljava/lang/Object;
.source "LongSparseLongArray.java"

# interfaces
.implements Lcom/android/internal/util/Parcelling;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/LongSparseLongArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Parcelling"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/internal/util/Parcelling<",
        "Landroid/util/LongSparseLongArray;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist parcel(Landroid/util/LongSparseLongArray;Landroid/os/Parcel;I)V
    .registers 4

    .line 295
    if-nez p1, :cond_7

    .line 296
    const/4 p1, -0x1

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 297
    return-void

    .line 300
    :cond_7
    invoke-static {p1}, Landroid/util/LongSparseLongArray;->-$$Nest$fgetmSize(Landroid/util/LongSparseLongArray;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 301
    invoke-static {p1}, Landroid/util/LongSparseLongArray;->-$$Nest$fgetmKeys(Landroid/util/LongSparseLongArray;)[J

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 302
    invoke-static {p1}, Landroid/util/LongSparseLongArray;->-$$Nest$fgetmValues(Landroid/util/LongSparseLongArray;)[J

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 303
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

    .line 291
    check-cast p1, Landroid/util/LongSparseLongArray;

    invoke-virtual {p0, p1, p2, p3}, Landroid/util/LongSparseLongArray$Parcelling;->parcel(Landroid/util/LongSparseLongArray;Landroid/os/Parcel;I)V

    return-void
.end method

.method public blacklist unparcel(Landroid/os/Parcel;)Landroid/util/LongSparseLongArray;
    .registers 10

    .line 307
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 308
    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    .line 309
    const/4 p1, 0x0

    return-object p1

    .line 312
    :cond_9
    new-instance v1, Landroid/util/LongSparseLongArray;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/util/LongSparseLongArray;-><init>(I)V

    .line 314
    invoke-static {v1, v0}, Landroid/util/LongSparseLongArray;->-$$Nest$fputmSize(Landroid/util/LongSparseLongArray;I)V

    .line 315
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/LongSparseLongArray;->-$$Nest$fputmKeys(Landroid/util/LongSparseLongArray;[J)V

    .line 316
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/LongSparseLongArray;->-$$Nest$fputmValues(Landroid/util/LongSparseLongArray;[J)V

    .line 319
    invoke-static {v1}, Landroid/util/LongSparseLongArray;->-$$Nest$fgetmKeys(Landroid/util/LongSparseLongArray;)[J

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

    .line 320
    invoke-static {v1}, Landroid/util/LongSparseLongArray;->-$$Nest$fgetmValues(Landroid/util/LongSparseLongArray;)[J

    move-result-object p1

    array-length p1, p1

    if-lt p1, v0, :cond_37

    move p1, v3

    goto :goto_38

    :cond_37
    move p1, v2

    :goto_38
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 322
    if-lez v0, :cond_59

    .line 323
    invoke-static {v1}, Landroid/util/LongSparseLongArray;->-$$Nest$fgetmKeys(Landroid/util/LongSparseLongArray;)[J

    move-result-object p1

    aget-wide v4, p1, v2

    .line 324
    move p1, v3

    :goto_44
    if-ge p1, v0, :cond_59

    .line 325
    invoke-static {v1}, Landroid/util/LongSparseLongArray;->-$$Nest$fgetmKeys(Landroid/util/LongSparseLongArray;)[J

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

    .line 324
    add-int/lit8 p1, p1, 0x1

    goto :goto_44

    .line 329
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

    .line 291
    invoke-virtual {p0, p1}, Landroid/util/LongSparseLongArray$Parcelling;->unparcel(Landroid/os/Parcel;)Landroid/util/LongSparseLongArray;

    move-result-object p1

    return-object p1
.end method
