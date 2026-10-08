.class public Landroid/util/DisplayUtils;
.super Ljava/lang/Object;
.source "DisplayUtils.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getDisplayUniqueIdConfigIndex(Landroid/content/res/Resources;Ljava/lang/String;)I
    .registers 6

    .line 41
    nop

    .line 42
    const/4 v0, -0x1

    if-eqz p1, :cond_25

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_25

    .line 45
    :cond_b
    const v1, 0x107005c

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    .line 46
    array-length v1, p0

    .line 47
    const/4 v2, 0x0

    :goto_14
    if-ge v2, v1, :cond_24

    .line 48
    aget-object v3, p0, v2

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 49
    nop

    .line 50
    move v0, v2

    goto :goto_24

    .line 47
    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 53
    :cond_24
    :goto_24
    return v0

    .line 43
    :cond_25
    :goto_25
    return v0
.end method

.method public static blacklist getMaximumResolutionDisplayMode([Landroid/view/Display$Mode;)Landroid/view/Display$Mode;
    .registers 7

    .line 60
    const/4 v0, 0x0

    if-eqz p0, :cond_20

    array-length v1, p0

    if-nez v1, :cond_7

    goto :goto_20

    .line 63
    :cond_7
    nop

    .line 64
    nop

    .line 65
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_c
    if-ge v2, v1, :cond_1f

    aget-object v4, p0, v2

    .line 66
    invoke-virtual {v4}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v5

    if-le v5, v3, :cond_1c

    .line 67
    invoke-virtual {v4}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v0

    .line 68
    move v3, v0

    move-object v0, v4

    .line 65
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 71
    :cond_1f
    return-object v0

    .line 61
    :cond_20
    :goto_20
    return-object v0
.end method

.method public static blacklist getPhysicalPixelDisplaySizeRatio(IIII)F
    .registers 4

    .line 79
    if-ne p0, p2, :cond_7

    if-ne p1, p3, :cond_7

    .line 80
    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    .line 82
    :cond_7
    int-to-float p2, p2

    int-to-float p0, p0

    div-float/2addr p2, p0

    .line 83
    int-to-float p0, p3

    int-to-float p1, p1

    div-float/2addr p0, p1

    .line 84
    invoke-static {p2, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method
