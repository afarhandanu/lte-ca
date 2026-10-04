.class public final Landroid/util/Size;
.super Ljava/lang/Object;
.source "Size.java"


# instance fields
.field private final greylist-max-o mHeight:I

.field private final greylist-max-o mWidth:I


# direct methods
.method public constructor whitelist <init>(II)V
    .registers 3

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Landroid/util/Size;->mWidth:I

    .line 34
    iput p2, p0, Landroid/util/Size;->mHeight:I

    .line 35
    return-void
.end method

.method private static greylist-max-o invalidSize(Ljava/lang/String;)Ljava/lang/NumberFormatException;
    .registers 4

    .line 91
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Size: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "\""

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist parseSize(Ljava/lang/String;)Landroid/util/Size;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 125
    const-string/jumbo v0, "string must not be null"

    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    const/16 v0, 0x2a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 128
    if-gez v0, :cond_14

    .line 129
    const/16 v0, 0x78

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 131
    :cond_14
    if-ltz v0, :cond_35

    .line 135
    :try_start_16
    new-instance v1, Landroid/util/Size;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v0, v0, 0x1

    .line 136
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {v1, v2, v0}, Landroid/util/Size;-><init>(II)V
    :try_end_2e
    .catch Ljava/lang/NumberFormatException; {:try_start_16 .. :try_end_2e} :catch_2f

    .line 135
    return-object v1

    .line 137
    :catch_2f
    move-exception v0

    .line 138
    invoke-static {p0}, Landroid/util/Size;->invalidSize(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object p0

    throw p0

    .line 132
    :cond_35
    invoke-static {p0}, Landroid/util/Size;->invalidSize(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 67
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 68
    return v0

    .line 70
    :cond_4
    const/4 v1, 0x1

    if-ne p0, p1, :cond_8

    .line 71
    return v1

    .line 73
    :cond_8
    instance-of v2, p1, Landroid/util/Size;

    if-eqz v2, :cond_1c

    .line 74
    check-cast p1, Landroid/util/Size;

    .line 75
    iget v2, p0, Landroid/util/Size;->mWidth:I

    iget v3, p1, Landroid/util/Size;->mWidth:I

    if-ne v2, v3, :cond_1b

    iget v2, p0, Landroid/util/Size;->mHeight:I

    iget p1, p1, Landroid/util/Size;->mHeight:I

    if-ne v2, p1, :cond_1b

    move v0, v1

    :cond_1b
    return v0

    .line 77
    :cond_1c
    return v0
.end method

.method public whitelist getHeight()I
    .registers 2

    .line 50
    iget v0, p0, Landroid/util/Size;->mHeight:I

    return v0
.end method

.method public whitelist getWidth()I
    .registers 2

    .line 42
    iget v0, p0, Landroid/util/Size;->mWidth:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 148
    iget v0, p0, Landroid/util/Size;->mHeight:I

    iget v1, p0, Landroid/util/Size;->mWidth:I

    shl-int/lit8 v1, v1, 0x10

    iget v2, p0, Landroid/util/Size;->mWidth:I

    ushr-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Landroid/util/Size;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/util/Size;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
