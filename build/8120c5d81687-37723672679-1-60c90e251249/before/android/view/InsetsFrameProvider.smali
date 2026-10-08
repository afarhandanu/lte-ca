.class public Landroid/view/InsetsFrameProvider;
.super Ljava/lang/Object;
.source "InsetsFrameProvider.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/InsetsFrameProvider$InsetsSizeOverride;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/InsetsFrameProvider;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist SOURCE_ARBITRARY_RECTANGLE:I = 0x3

.field public static final blacklist SOURCE_ATTACHED_CONTAINER_BOUNDS:I = 0x4

.field public static final blacklist SOURCE_CONTAINER_BOUNDS:I = 0x1

.field public static final blacklist SOURCE_DISPLAY:I = 0x0

.field public static final blacklist SOURCE_FRAME:I = 0x2


# instance fields
.field private blacklist mArbitraryRectangle:Landroid/graphics/Rect;

.field private blacklist mBoundingRects:[Landroid/graphics/Rect;

.field private blacklist mFlags:I

.field private final blacklist mId:I

.field private blacklist mInsetsSize:Landroid/graphics/Insets;

.field private blacklist mInsetsSizeOverrides:[Landroid/view/InsetsFrameProvider$InsetsSizeOverride;

.field private blacklist mMinimalInsetsSizeInDisplayCutoutSafe:Landroid/graphics/Insets;

.field private blacklist mSource:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 366
    new-instance v0, Landroid/view/InsetsFrameProvider$1;

    invoke-direct {v0}, Landroid/view/InsetsFrameProvider$1;-><init>()V

    sput-object v0, Landroid/view/InsetsFrameProvider;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, 0x2

    iput v0, p0, Landroid/view/InsetsFrameProvider;->mSource:I

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/InsetsFrameProvider;->mInsetsSize:Landroid/graphics/Insets;

    .line 108
    iput-object v0, p0, Landroid/view/InsetsFrameProvider;->mInsetsSizeOverrides:[Landroid/view/InsetsFrameProvider$InsetsSizeOverride;

    .line 122
    iput-object v0, p0, Landroid/view/InsetsFrameProvider;->mMinimalInsetsSizeInDisplayCutoutSafe:Landroid/graphics/Insets;

    .line 129
    iput-object v0, p0, Landroid/view/InsetsFrameProvider;->mBoundingRects:[Landroid/graphics/Rect;

    .line 314
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/InsetsFrameProvider;->mId:I

    .line 315
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/InsetsFrameProvider;->mSource:I

    .line 316
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/InsetsFrameProvider;->mFlags:I

    .line 317
    sget-object v0, Landroid/graphics/Insets;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Insets;

    iput-object v0, p0, Landroid/view/InsetsFrameProvider;->mInsetsSize:Landroid/graphics/Insets;

    .line 318
    sget-object v0, Landroid/view/InsetsFrameProvider$InsetsSizeOverride;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/InsetsFrameProvider$InsetsSizeOverride;

    iput-object v0, p0, Landroid/view/InsetsFrameProvider;->mInsetsSizeOverrides:[Landroid/view/InsetsFrameProvider$InsetsSizeOverride;

    .line 319
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/view/InsetsFrameProvider;->mArbitraryRectangle:Landroid/graphics/Rect;

    .line 320
    sget-object v0, Landroid/graphics/Insets;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Insets;

    iput-object v0, p0, Landroid/view/InsetsFrameProvider;->mMinimalInsetsSizeInDisplayCutoutSafe:Landroid/graphics/Insets;

    .line 321
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/graphics/Rect;

    iput-object p1, p0, Landroid/view/InsetsFrameProvider;->mBoundingRects:[Landroid/graphics/Rect;

    .line 322
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Object;II)V
    .registers 5

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, 0x2

    iput v0, p0, Landroid/view/InsetsFrameProvider;->mSource:I

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/InsetsFrameProvider;->mInsetsSize:Landroid/graphics/Insets;

    .line 108
    iput-object v0, p0, Landroid/view/InsetsFrameProvider;->mInsetsSizeOverrides:[Landroid/view/InsetsFrameProvider$InsetsSizeOverride;

    .line 122
    iput-object v0, p0, Landroid/view/InsetsFrameProvider;->mMinimalInsetsSizeInDisplayCutoutSafe:Landroid/graphics/Insets;

    .line 129
    iput-object v0, p0, Landroid/view/InsetsFrameProvider;->mBoundingRects:[Landroid/graphics/Rect;

    .line 145
    invoke-static {p1, p2, p3}, Landroid/view/InsetsSource;->createId(Ljava/lang/Object;II)I

    move-result p1

    iput p1, p0, Landroid/view/InsetsFrameProvider;->mId:I

    .line 146
    return-void
.end method

.method private static blacklist sourceToString(I)Ljava/lang/String;
    .registers 1

    .line 298
    packed-switch p0, :pswitch_data_16

    .line 310
    const-string p0, "UNDEFINED"

    return-object p0

    .line 308
    :pswitch_6
    const-string p0, "ATTACHED_CONTAINER_BOUNDS"

    return-object p0

    .line 306
    :pswitch_9
    const-string p0, "ARBITRARY_RECTANGLE"

    return-object p0

    .line 304
    :pswitch_c
    const-string p0, "FRAME"

    return-object p0

    .line 302
    :pswitch_f
    const-string p0, "CONTAINER_BOUNDS"

    return-object p0

    .line 300
    :pswitch_12
    const-string p0, "DISPLAY"

    return-object p0

    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 265
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 342
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 343
    return v0

    .line 345
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_5b

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_5b

    .line 348
    :cond_12
    check-cast p1, Landroid/view/InsetsFrameProvider;

    .line 349
    iget v2, p0, Landroid/view/InsetsFrameProvider;->mId:I

    iget v3, p1, Landroid/view/InsetsFrameProvider;->mId:I

    if-ne v2, v3, :cond_59

    iget v2, p0, Landroid/view/InsetsFrameProvider;->mSource:I

    iget v3, p1, Landroid/view/InsetsFrameProvider;->mSource:I

    if-ne v2, v3, :cond_59

    iget v2, p0, Landroid/view/InsetsFrameProvider;->mFlags:I

    iget v3, p1, Landroid/view/InsetsFrameProvider;->mFlags:I

    if-ne v2, v3, :cond_59

    iget-object v2, p0, Landroid/view/InsetsFrameProvider;->mInsetsSize:Landroid/graphics/Insets;

    iget-object v3, p1, Landroid/view/InsetsFrameProvider;->mInsetsSize:Landroid/graphics/Insets;

    .line 350
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59

    iget-object v2, p0, Landroid/view/InsetsFrameProvider;->mInsetsSizeOverrides:[Landroid/view/InsetsFrameProvider$InsetsSizeOverride;

    iget-object v3, p1, Landroid/view/InsetsFrameProvider;->mInsetsSizeOverrides:[Landroid/view/InsetsFrameProvider$InsetsSizeOverride;

    .line 351
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59

    iget-object v2, p0, Landroid/view/InsetsFrameProvider;->mArbitraryRectangle:Landroid/graphics/Rect;

    iget-object v3, p1, Landroid/view/InsetsFrameProvider;->mArbitraryRectangle:Landroid/graphics/Rect;

    .line 352
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59

    iget-object v2, p0, Landroid/view/InsetsFrameProvider;->mMinimalInsetsSizeInDisplayCutoutSafe:Landroid/graphics/Insets;

    iget-object v3, p1, Landroid/view/InsetsFrameProvider;->mMinimalInsetsSizeInDisplayCutoutSafe:Landroid/graphics/Insets;

    .line 353
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59

    iget-object v2, p0, Landroid/view/InsetsFrameProvider;->mBoundingRects:[Landroid/graphics/Rect;

    iget-object p1, p1, Landroid/view/InsetsFrameProvider;->mBoundingRects:[Landroid/graphics/Rect;

    .line 355
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_59

    goto :goto_5a

    :cond_59
    move v0, v1

    .line 349
    :goto_5a
    return v0

    .line 346
    :cond_5b
    :goto_5b
    return v1
.end method

.method public blacklist getArbitraryRectangle()Landroid/graphics/Rect;
    .registers 2

    .line 220
    iget-object v0, p0, Landroid/view/InsetsFrameProvider;->mArbitraryRectangle:Landroid/graphics/Rect;

    return-object v0
.end method

.method public blacklist getBoundingRects()[Landroid/graphics/Rect;
    .registers 2

    .line 260
    iget-object v0, p0, Landroid/view/InsetsFrameProvider;->mBoundingRects:[Landroid/graphics/Rect;

    return-object v0
.end method

.method public blacklist getFlags()I
    .registers 2

    .line 194
    iget v0, p0, Landroid/view/InsetsFrameProvider;->mFlags:I

    return v0
.end method

.method public blacklist getId()I
    .registers 2

    .line 152
    iget v0, p0, Landroid/view/InsetsFrameProvider;->mId:I

    return v0
.end method

.method public blacklist getIndex()I
    .registers 2

    .line 159
    iget v0, p0, Landroid/view/InsetsFrameProvider;->mId:I

    invoke-static {v0}, Landroid/view/InsetsSource;->getIndex(I)I

    move-result v0

    return v0
.end method

.method public blacklist getInsetsSize()Landroid/graphics/Insets;
    .registers 2

    .line 209
    iget-object v0, p0, Landroid/view/InsetsFrameProvider;->mInsetsSize:Landroid/graphics/Insets;

    return-object v0
.end method

.method public blacklist getInsetsSizeOverrides()[Landroid/view/InsetsFrameProvider$InsetsSizeOverride;
    .registers 2

    .line 231
    iget-object v0, p0, Landroid/view/InsetsFrameProvider;->mInsetsSizeOverrides:[Landroid/view/InsetsFrameProvider$InsetsSizeOverride;

    return-object v0
.end method

.method public blacklist getMinimalInsetsSizeInDisplayCutoutSafe()Landroid/graphics/Insets;
    .registers 2

    .line 243
    iget-object v0, p0, Landroid/view/InsetsFrameProvider;->mMinimalInsetsSizeInDisplayCutoutSafe:Landroid/graphics/Insets;

    return-object v0
.end method

.method public blacklist getSource()I
    .registers 2

    .line 176
    iget v0, p0, Landroid/view/InsetsFrameProvider;->mSource:I

    return v0
.end method

.method public blacklist getType()I
    .registers 2

    .line 166
    iget v0, p0, Landroid/view/InsetsFrameProvider;->mId:I

    invoke-static {v0}, Landroid/view/InsetsSource;->getType(I)I

    move-result v0

    return v0
.end method

.method public blacklist hasFlags(I)Z
    .registers 3

    .line 198
    iget v0, p0, Landroid/view/InsetsFrameProvider;->mFlags:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_7

    const/4 p1, 0x1

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    return p1
.end method

.method public whitelist test-api hashCode()I
    .registers 10

    .line 360
    iget v0, p0, Landroid/view/InsetsFrameProvider;->mId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/view/InsetsFrameProvider;->mSource:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Landroid/view/InsetsFrameProvider;->mFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Landroid/view/InsetsFrameProvider;->mInsetsSize:Landroid/graphics/Insets;

    iget-object v0, p0, Landroid/view/InsetsFrameProvider;->mInsetsSizeOverrides:[Landroid/view/InsetsFrameProvider$InsetsSizeOverride;

    .line 361
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Landroid/view/InsetsFrameProvider;->mArbitraryRectangle:Landroid/graphics/Rect;

    iget-object v7, p0, Landroid/view/InsetsFrameProvider;->mMinimalInsetsSizeInDisplayCutoutSafe:Landroid/graphics/Insets;

    iget-object v0, p0, Landroid/view/InsetsFrameProvider;->mBoundingRects:[Landroid/graphics/Rect;

    .line 362
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array/range {v1 .. v8}, [Ljava/lang/Object;

    move-result-object v0

    .line 360
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist idEquals(Landroid/view/InsetsFrameProvider;)Z
    .registers 3

    .line 337
    iget v0, p0, Landroid/view/InsetsFrameProvider;->mId:I

    iget p1, p1, Landroid/view/InsetsFrameProvider;->mId:I

    if-ne v0, p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method public blacklist setArbitraryRectangle(Landroid/graphics/Rect;)Landroid/view/InsetsFrameProvider;
    .registers 3

    .line 214
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Landroid/view/InsetsFrameProvider;->mArbitraryRectangle:Landroid/graphics/Rect;

    .line 215
    return-object p0
.end method

.method public blacklist setBoundingRects([Landroid/graphics/Rect;)Landroid/view/InsetsFrameProvider;
    .registers 2

    .line 251
    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_a

    :cond_4
    invoke-virtual {p1}, [Landroid/graphics/Rect;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/graphics/Rect;

    :goto_a
    iput-object p1, p0, Landroid/view/InsetsFrameProvider;->mBoundingRects:[Landroid/graphics/Rect;

    .line 252
    return-object p0
.end method

.method public blacklist setFlags(I)Landroid/view/InsetsFrameProvider;
    .registers 2

    .line 182
    iput p1, p0, Landroid/view/InsetsFrameProvider;->mFlags:I

    .line 183
    return-object p0
.end method

.method public blacklist setFlags(II)Landroid/view/InsetsFrameProvider;
    .registers 5

    .line 188
    iget v0, p0, Landroid/view/InsetsFrameProvider;->mFlags:I

    not-int v1, p2

    and-int/2addr v0, v1

    and-int/2addr p1, p2

    or-int/2addr p1, v0

    iput p1, p0, Landroid/view/InsetsFrameProvider;->mFlags:I

    .line 189
    return-object p0
.end method

.method public blacklist setInsetsSize(Landroid/graphics/Insets;)Landroid/view/InsetsFrameProvider;
    .registers 2

    .line 203
    iput-object p1, p0, Landroid/view/InsetsFrameProvider;->mInsetsSize:Landroid/graphics/Insets;

    .line 204
    return-object p0
.end method

.method public blacklist setInsetsSizeOverrides([Landroid/view/InsetsFrameProvider$InsetsSizeOverride;)Landroid/view/InsetsFrameProvider;
    .registers 2

    .line 226
    iput-object p1, p0, Landroid/view/InsetsFrameProvider;->mInsetsSizeOverrides:[Landroid/view/InsetsFrameProvider$InsetsSizeOverride;

    .line 227
    return-object p0
.end method

.method public blacklist setMinimalInsetsSizeInDisplayCutoutSafe(Landroid/graphics/Insets;)Landroid/view/InsetsFrameProvider;
    .registers 2

    .line 237
    iput-object p1, p0, Landroid/view/InsetsFrameProvider;->mMinimalInsetsSizeInDisplayCutoutSafe:Landroid/graphics/Insets;

    .line 238
    return-object p0
.end method

.method public blacklist setSource(I)Landroid/view/InsetsFrameProvider;
    .registers 2

    .line 171
    iput p1, p0, Landroid/view/InsetsFrameProvider;->mSource:I

    .line 172
    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "InsetsFrameProvider: {"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 271
    const-string v1, "id=#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/InsetsFrameProvider;->mId:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    const-string v1, ", index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/InsetsFrameProvider;->getIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 273
    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/InsetsFrameProvider;->getType()I

    move-result v2

    invoke-static {v2}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    const-string v1, ", source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/InsetsFrameProvider;->mSource:I

    invoke-static {v2}, Landroid/view/InsetsFrameProvider;->sourceToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    const-string v1, ", flags=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/InsetsFrameProvider;->mFlags:I

    invoke-static {v2}, Landroid/view/InsetsSource;->flagsToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    iget-object v1, p0, Landroid/view/InsetsFrameProvider;->mInsetsSize:Landroid/graphics/Insets;

    if-eqz v1, :cond_67

    .line 277
    const-string v1, ", insetsSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/InsetsFrameProvider;->mInsetsSize:Landroid/graphics/Insets;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 279
    :cond_67
    iget-object v1, p0, Landroid/view/InsetsFrameProvider;->mInsetsSizeOverrides:[Landroid/view/InsetsFrameProvider$InsetsSizeOverride;

    if-eqz v1, :cond_7a

    .line 280
    const-string v1, ", insetsSizeOverrides="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/InsetsFrameProvider;->mInsetsSizeOverrides:[Landroid/view/InsetsFrameProvider$InsetsSizeOverride;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    :cond_7a
    iget-object v1, p0, Landroid/view/InsetsFrameProvider;->mArbitraryRectangle:Landroid/graphics/Rect;

    if-eqz v1, :cond_8d

    .line 283
    const-string v1, ", mArbitraryRectangle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/InsetsFrameProvider;->mArbitraryRectangle:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    :cond_8d
    iget-object v1, p0, Landroid/view/InsetsFrameProvider;->mMinimalInsetsSizeInDisplayCutoutSafe:Landroid/graphics/Insets;

    if-eqz v1, :cond_9c

    .line 286
    const-string v1, ", mMinimalInsetsSizeInDisplayCutoutSafe="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/InsetsFrameProvider;->mMinimalInsetsSizeInDisplayCutoutSafe:Landroid/graphics/Insets;

    .line 287
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 289
    :cond_9c
    iget-object v1, p0, Landroid/view/InsetsFrameProvider;->mBoundingRects:[Landroid/graphics/Rect;

    if-eqz v1, :cond_af

    .line 290
    const-string v1, ", mBoundingRects="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/InsetsFrameProvider;->mBoundingRects:[Landroid/graphics/Rect;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    :cond_af
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 326
    iget v0, p0, Landroid/view/InsetsFrameProvider;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 327
    iget v0, p0, Landroid/view/InsetsFrameProvider;->mSource:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 328
    iget v0, p0, Landroid/view/InsetsFrameProvider;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 329
    iget-object v0, p0, Landroid/view/InsetsFrameProvider;->mInsetsSize:Landroid/graphics/Insets;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 330
    iget-object v0, p0, Landroid/view/InsetsFrameProvider;->mInsetsSizeOverrides:[Landroid/view/InsetsFrameProvider$InsetsSizeOverride;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 331
    iget-object v0, p0, Landroid/view/InsetsFrameProvider;->mArbitraryRectangle:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 332
    iget-object v0, p0, Landroid/view/InsetsFrameProvider;->mMinimalInsetsSizeInDisplayCutoutSafe:Landroid/graphics/Insets;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 333
    iget-object v0, p0, Landroid/view/InsetsFrameProvider;->mBoundingRects:[Landroid/graphics/Rect;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 334
    return-void
.end method
