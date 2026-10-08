.class public final Landroid/view/DisplayShape;
.super Ljava/lang/Object;
.source "DisplayShape.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/DisplayShape$Cache;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/DisplayShape;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist NONE:Landroid/view/DisplayShape;


# instance fields
.field private final blacklist mDisplayHeight:I

.field public final blacklist mDisplayShapeSpec:Ljava/lang/String;

.field private final blacklist mDisplayWidth:I

.field private final blacklist mOffsetX:I

.field private final blacklist mOffsetY:I

.field private final blacklist mPhysicalPixelDisplaySizeRatio:F

.field private final blacklist mRotation:I

.field private final blacklist mScale:F


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDisplayHeight(Landroid/view/DisplayShape;)I
    .registers 1

    iget p0, p0, Landroid/view/DisplayShape;->mDisplayHeight:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDisplayWidth(Landroid/view/DisplayShape;)I
    .registers 1

    iget p0, p0, Landroid/view/DisplayShape;->mDisplayWidth:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOffsetX(Landroid/view/DisplayShape;)I
    .registers 1

    iget p0, p0, Landroid/view/DisplayShape;->mOffsetX:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOffsetY(Landroid/view/DisplayShape;)I
    .registers 1

    iget p0, p0, Landroid/view/DisplayShape;->mOffsetY:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPhysicalPixelDisplaySizeRatio(Landroid/view/DisplayShape;)F
    .registers 1

    iget p0, p0, Landroid/view/DisplayShape;->mPhysicalPixelDisplaySizeRatio:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRotation(Landroid/view/DisplayShape;)I
    .registers 1

    iget p0, p0, Landroid/view/DisplayShape;->mRotation:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmScale(Landroid/view/DisplayShape;)F
    .registers 1

    iget p0, p0, Landroid/view/DisplayShape;->mScale:F

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 6

    .line 50
    new-instance v0, Landroid/view/DisplayShape;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v1, ""

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/view/DisplayShape;-><init>(Ljava/lang/String;IIFI)V

    sput-object v0, Landroid/view/DisplayShape;->NONE:Landroid/view/DisplayShape;

    .line 258
    new-instance v0, Landroid/view/DisplayShape$1;

    invoke-direct {v0}, Landroid/view/DisplayShape$1;-><init>()V

    sput-object v0, Landroid/view/DisplayShape;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;IIFI)V
    .registers 15

    .line 67
    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v8}, Landroid/view/DisplayShape;-><init>(Ljava/lang/String;IIFIIIF)V

    .line 69
    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;IIFIIIF)V
    .registers 9

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Landroid/view/DisplayShape;->mDisplayShapeSpec:Ljava/lang/String;

    .line 75
    iput p2, p0, Landroid/view/DisplayShape;->mDisplayWidth:I

    .line 76
    iput p3, p0, Landroid/view/DisplayShape;->mDisplayHeight:I

    .line 77
    iput p4, p0, Landroid/view/DisplayShape;->mPhysicalPixelDisplaySizeRatio:F

    .line 78
    iput p5, p0, Landroid/view/DisplayShape;->mRotation:I

    .line 79
    iput p6, p0, Landroid/view/DisplayShape;->mOffsetX:I

    .line 80
    iput p7, p0, Landroid/view/DisplayShape;->mOffsetY:I

    .line 81
    iput p8, p0, Landroid/view/DisplayShape;->mScale:F

    .line 82
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;IIFIIIFLandroid/view/DisplayShape-IA;)V
    .registers 10

    invoke-direct/range {p0 .. p8}, Landroid/view/DisplayShape;-><init>(Ljava/lang/String;IIFIIIF)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;IIFILandroid/view/DisplayShape-IA;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Landroid/view/DisplayShape;-><init>(Ljava/lang/String;IIFI)V

    return-void
.end method

.method public static blacklist createDefaultDisplayShape(IIZ)Landroid/view/DisplayShape;
    .registers 4

    .line 107
    invoke-static {p0, p1, p2}, Landroid/view/DisplayShape;->createDefaultSpecString(IIZ)Ljava/lang/String;

    move-result-object p2

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p2, v0, p0, p1}, Landroid/view/DisplayShape;->fromSpecString(Ljava/lang/String;FII)Landroid/view/DisplayShape;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist createDefaultSpecString(IIZ)Ljava/lang/String;
    .registers 8

    .line 125
    const-string v0, " Z"

    const-string v1, ","

    if-eqz p2, :cond_62

    .line 126
    int-to-float p2, p0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p2, v2

    .line 127
    int-to-float p1, p1

    div-float/2addr p1, v2

    .line 129
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "M0,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " A"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " 0 1,1 "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, " 0 1,1 0,"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 134
    goto :goto_95

    .line 136
    :cond_62
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "M0,0 L"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, ",0 L"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, " L0,"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 147
    :goto_95
    return-object p0
.end method

.method public static blacklist fromResources(Landroid/content/res/Resources;Ljava/lang/String;IIII)Landroid/view/DisplayShape;
    .registers 7

    .line 91
    invoke-static {p0, p1}, Landroid/view/RoundedCorners;->getBuiltInDisplayIsRound(Landroid/content/res/Resources;Ljava/lang/String;)Z

    move-result v0

    .line 92
    invoke-static {p0, p1}, Landroid/view/DisplayShape;->getSpecString(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 93
    if-eqz p0, :cond_1a

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_1a

    .line 96
    :cond_11
    invoke-static {p2, p3, p4, p5}, Landroid/util/DisplayUtils;->getPhysicalPixelDisplaySizeRatio(IIII)F

    move-result p1

    .line 98
    invoke-static {p0, p1, p4, p5}, Landroid/view/DisplayShape;->fromSpecString(Ljava/lang/String;FII)Landroid/view/DisplayShape;

    move-result-object p0

    return-object p0

    .line 94
    :cond_1a
    :goto_1a
    invoke-static {p4, p5, v0}, Landroid/view/DisplayShape;->createDefaultDisplayShape(IIZ)Landroid/view/DisplayShape;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist fromSpecString(Ljava/lang/String;FII)Landroid/view/DisplayShape;
    .registers 4

    .line 118
    invoke-static {p0, p1, p2, p3}, Landroid/view/DisplayShape$Cache;->getDisplayShape(Ljava/lang/String;FII)Landroid/view/DisplayShape;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getSpecString(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 160
    invoke-static {p0, p1}, Landroid/util/DisplayUtils;->getDisplayUniqueIdConfigIndex(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result p1

    .line 161
    const v0, 0x107005b

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 163
    if-ltz p1, :cond_18

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    if-ge p1, v1, :cond_18

    .line 164
    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1f

    .line 166
    :cond_18
    const p1, 0x10402a0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 168
    :goto_1f
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 169
    return-object p0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 243
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 204
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 205
    return v0

    .line 207
    :cond_4
    instance-of v1, p1, Landroid/view/DisplayShape;

    const/4 v2, 0x0

    if-eqz v1, :cond_46

    .line 208
    check-cast p1, Landroid/view/DisplayShape;

    .line 209
    iget-object v1, p0, Landroid/view/DisplayShape;->mDisplayShapeSpec:Ljava/lang/String;

    iget-object v3, p1, Landroid/view/DisplayShape;->mDisplayShapeSpec:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    iget v1, p0, Landroid/view/DisplayShape;->mDisplayWidth:I

    iget v3, p1, Landroid/view/DisplayShape;->mDisplayWidth:I

    if-ne v1, v3, :cond_44

    iget v1, p0, Landroid/view/DisplayShape;->mDisplayHeight:I

    iget v3, p1, Landroid/view/DisplayShape;->mDisplayHeight:I

    if-ne v1, v3, :cond_44

    iget v1, p0, Landroid/view/DisplayShape;->mPhysicalPixelDisplaySizeRatio:F

    iget v3, p1, Landroid/view/DisplayShape;->mPhysicalPixelDisplaySizeRatio:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_44

    iget v1, p0, Landroid/view/DisplayShape;->mRotation:I

    iget v3, p1, Landroid/view/DisplayShape;->mRotation:I

    if-ne v1, v3, :cond_44

    iget v1, p0, Landroid/view/DisplayShape;->mOffsetX:I

    iget v3, p1, Landroid/view/DisplayShape;->mOffsetX:I

    if-ne v1, v3, :cond_44

    iget v1, p0, Landroid/view/DisplayShape;->mOffsetY:I

    iget v3, p1, Landroid/view/DisplayShape;->mOffsetY:I

    if-ne v1, v3, :cond_44

    iget v1, p0, Landroid/view/DisplayShape;->mScale:F

    iget p1, p1, Landroid/view/DisplayShape;->mScale:F

    cmpl-float p1, v1, p1

    if-nez p1, :cond_44

    goto :goto_45

    :cond_44
    move v0, v2

    :goto_45
    return v0

    .line 215
    :cond_46
    return v2
.end method

.method public whitelist getPath()Landroid/graphics/Path;
    .registers 2

    .line 238
    invoke-static {p0}, Landroid/view/DisplayShape$Cache;->getPath(Landroid/view/DisplayShape;)Landroid/graphics/Path;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 9

    .line 198
    iget-object v0, p0, Landroid/view/DisplayShape;->mDisplayShapeSpec:Ljava/lang/String;

    iget v1, p0, Landroid/view/DisplayShape;->mDisplayWidth:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/view/DisplayShape;->mDisplayHeight:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Landroid/view/DisplayShape;->mPhysicalPixelDisplaySizeRatio:F

    .line 199
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget v4, p0, Landroid/view/DisplayShape;->mRotation:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, p0, Landroid/view/DisplayShape;->mOffsetX:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, p0, Landroid/view/DisplayShape;->mOffsetY:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v7, p0, Landroid/view/DisplayShape;->mScale:F

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    filled-new-array/range {v0 .. v7}, [Ljava/lang/Object;

    move-result-object v0

    .line 198
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist setOffset(II)Landroid/view/DisplayShape;
    .registers 12

    .line 184
    new-instance v0, Landroid/view/DisplayShape;

    iget-object v1, p0, Landroid/view/DisplayShape;->mDisplayShapeSpec:Ljava/lang/String;

    iget v2, p0, Landroid/view/DisplayShape;->mDisplayWidth:I

    iget v3, p0, Landroid/view/DisplayShape;->mDisplayHeight:I

    iget v4, p0, Landroid/view/DisplayShape;->mPhysicalPixelDisplaySizeRatio:F

    iget v5, p0, Landroid/view/DisplayShape;->mRotation:I

    iget v8, p0, Landroid/view/DisplayShape;->mScale:F

    move v6, p1

    move v7, p2

    invoke-direct/range {v0 .. v8}, Landroid/view/DisplayShape;-><init>(Ljava/lang/String;IIFIIIF)V

    return-object v0
.end method

.method public blacklist setRotation(I)Landroid/view/DisplayShape;
    .registers 11

    .line 176
    new-instance v0, Landroid/view/DisplayShape;

    iget-object v1, p0, Landroid/view/DisplayShape;->mDisplayShapeSpec:Ljava/lang/String;

    iget v2, p0, Landroid/view/DisplayShape;->mDisplayWidth:I

    iget v3, p0, Landroid/view/DisplayShape;->mDisplayHeight:I

    iget v4, p0, Landroid/view/DisplayShape;->mPhysicalPixelDisplaySizeRatio:F

    iget v6, p0, Landroid/view/DisplayShape;->mOffsetX:I

    iget v7, p0, Landroid/view/DisplayShape;->mOffsetY:I

    iget v8, p0, Landroid/view/DisplayShape;->mScale:F

    move v5, p1

    invoke-direct/range {v0 .. v8}, Landroid/view/DisplayShape;-><init>(Ljava/lang/String;IIFIIIF)V

    return-object v0
.end method

.method public blacklist setScale(F)Landroid/view/DisplayShape;
    .registers 11

    .line 192
    new-instance v0, Landroid/view/DisplayShape;

    iget-object v1, p0, Landroid/view/DisplayShape;->mDisplayShapeSpec:Ljava/lang/String;

    iget v2, p0, Landroid/view/DisplayShape;->mDisplayWidth:I

    iget v3, p0, Landroid/view/DisplayShape;->mDisplayHeight:I

    iget v4, p0, Landroid/view/DisplayShape;->mPhysicalPixelDisplaySizeRatio:F

    iget v5, p0, Landroid/view/DisplayShape;->mRotation:I

    iget v6, p0, Landroid/view/DisplayShape;->mOffsetX:I

    iget v7, p0, Landroid/view/DisplayShape;->mOffsetY:I

    move v8, p1

    invoke-direct/range {v0 .. v8}, Landroid/view/DisplayShape;-><init>(Ljava/lang/String;IIFIIIF)V

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DisplayShape{ spec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/DisplayShape;->mDisplayShapeSpec:Ljava/lang/String;

    .line 221
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " displayWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/DisplayShape;->mDisplayWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " displayHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/DisplayShape;->mDisplayHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " physicalPixelDisplaySizeRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/DisplayShape;->mPhysicalPixelDisplaySizeRatio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " rotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/DisplayShape;->mRotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " offsetX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/DisplayShape;->mOffsetX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " offsetY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/DisplayShape;->mOffsetY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " scale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/DisplayShape;->mScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 220
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 248
    iget-object p2, p0, Landroid/view/DisplayShape;->mDisplayShapeSpec:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 249
    iget p2, p0, Landroid/view/DisplayShape;->mDisplayWidth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 250
    iget p2, p0, Landroid/view/DisplayShape;->mDisplayHeight:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 251
    iget p2, p0, Landroid/view/DisplayShape;->mPhysicalPixelDisplaySizeRatio:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 252
    iget p2, p0, Landroid/view/DisplayShape;->mRotation:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 253
    iget p2, p0, Landroid/view/DisplayShape;->mOffsetX:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 254
    iget p2, p0, Landroid/view/DisplayShape;->mOffsetY:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 255
    iget p2, p0, Landroid/view/DisplayShape;->mScale:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 256
    return-void
.end method
