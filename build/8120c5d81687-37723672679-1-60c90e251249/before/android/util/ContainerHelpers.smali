.class Landroid/util/ContainerHelpers;
.super Ljava/lang/Object;
.source "ContainerHelpers.java"


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist binarySearch([III)I
    .registers 6

    .line 24
    nop

    .line 25
    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x0

    .line 27
    :goto_4
    if-gt v0, p1, :cond_19

    .line 28
    add-int v1, v0, p1

    ushr-int/lit8 v1, v1, 0x1

    .line 29
    aget v2, p0, v1

    .line 31
    if-ge v2, p2, :cond_12

    .line 32
    add-int/lit8 v1, v1, 0x1

    move v0, v1

    goto :goto_17

    .line 33
    :cond_12
    if-le v2, p2, :cond_18

    .line 34
    add-int/lit8 v1, v1, -0x1

    move p1, v1

    .line 38
    :goto_17
    goto :goto_4

    .line 36
    :cond_18
    return v1

    .line 39
    :cond_19
    not-int p0, v0

    return p0
.end method

.method static blacklist binarySearch([JIJ)I
    .registers 8

    .line 43
    nop

    .line 44
    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x0

    .line 46
    :goto_4
    if-gt v0, p1, :cond_1b

    .line 47
    add-int v1, v0, p1

    ushr-int/lit8 v1, v1, 0x1

    .line 48
    aget-wide v2, p0, v1

    .line 50
    cmp-long v2, v2, p2

    if-gez v2, :cond_14

    .line 51
    add-int/lit8 v1, v1, 0x1

    move v0, v1

    goto :goto_19

    .line 52
    :cond_14
    if-lez v2, :cond_1a

    .line 53
    add-int/lit8 v1, v1, -0x1

    move p1, v1

    .line 57
    :goto_19
    goto :goto_4

    .line 55
    :cond_1a
    return v1

    .line 58
    :cond_1b
    not-int p0, v0

    return p0
.end method
