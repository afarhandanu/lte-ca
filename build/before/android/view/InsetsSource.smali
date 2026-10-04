.class public Landroid/view/InsetsSource;
.super Ljava/lang/Object;
.source "InsetsSource.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/InsetsSource$Flags;,
        Landroid/view/InsetsSource$InternalInsetsSide;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/InsetsSource;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist EMPTY_RECTS:[Landroid/graphics/Rect;

.field public static final blacklist FLAG_ANIMATE_RESIZING:I = 0x8

.field public static final blacklist FLAG_FORCE_CONSUMING:I = 0x4

.field public static final blacklist FLAG_FORCE_CONSUMING_OPAQUE_CAPTION_BAR:I = 0x10

.field public static final blacklist FLAG_INSETS_ROUNDED_CORNER:I = 0x2

.field public static final blacklist FLAG_INVALID:I = 0x20

.field public static final blacklist FLAG_SUPPRESS_SCRIM:I = 0x1

.field public static final blacklist ID_IME:I

.field public static final blacklist ID_IME_CAPTION_BAR:I

.field static final blacklist SIDE_BOTTOM:I = 0x4

.field static final blacklist SIDE_LEFT:I = 0x1

.field static final blacklist SIDE_NONE:I = 0x0

.field static final blacklist SIDE_RIGHT:I = 0x3

.field static final blacklist SIDE_TOP:I = 0x2

.field static final blacklist SIDE_UNKNOWN:I = 0x5


# instance fields
.field private blacklist mAttachedInsets:Landroid/graphics/Insets;

.field private blacklist mBoundingRects:[Landroid/graphics/Rect;

.field private blacklist mFlags:I

.field private final blacklist mFrame:Landroid/graphics/Rect;

.field private final blacklist mId:I

.field private blacklist mSideHint:I

.field private final blacklist mTmpFrame:Landroid/graphics/Rect;

.field private final blacklist mTmpFrame2:Landroid/graphics/Rect;

.field private final blacklist mType:I

.field private blacklist mVisible:Z

.field private blacklist mVisibleFrame:Landroid/graphics/Rect;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 73
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/view/InsetsSource;->createId(Ljava/lang/Object;II)I

    move-result v0

    sput v0, Landroid/view/InsetsSource;->ID_IME:I

    .line 76
    nop

    .line 77
    invoke-static {}, Landroid/view/WindowInsets$Type;->captionBar()I

    move-result v0

    const/4 v3, 0x1

    invoke-static {v1, v3, v0}, Landroid/view/InsetsSource;->createId(Ljava/lang/Object;II)I

    move-result v0

    sput v0, Landroid/view/InsetsSource;->ID_IME_CAPTION_BAR:I

    .line 138
    new-array v0, v2, [Landroid/graphics/Rect;

    sput-object v0, Landroid/view/InsetsSource;->EMPTY_RECTS:[Landroid/graphics/Rect;

    .line 856
    new-instance v0, Landroid/view/InsetsSource$1;

    invoke-direct {v0}, Landroid/view/InsetsSource$1;-><init>()V

    sput-object v0, Landroid/view/InsetsSource;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(II)V
    .registers 5

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/InsetsSource;->mSideHint:I

    .line 173
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    .line 175
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/InsetsSource;->mTmpFrame2:Landroid/graphics/Rect;

    .line 179
    iput p1, p0, Landroid/view/InsetsSource;->mId:I

    .line 180
    iput p2, p0, Landroid/view/InsetsSource;->mType:I

    .line 181
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroid/view/InsetsSource;->mFrame:Landroid/graphics/Rect;

    .line 182
    invoke-static {}, Landroid/view/WindowInsets$Type;->defaultVisible()I

    move-result p1

    and-int/2addr p1, p2

    if-eqz p1, :cond_27

    const/4 v0, 0x1

    :cond_27
    iput-boolean v0, p0, Landroid/view/InsetsSource;->mVisible:Z

    .line 183
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 794
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/InsetsSource;->mSideHint:I

    .line 173
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    .line 175
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsSource;->mTmpFrame2:Landroid/graphics/Rect;

    .line 795
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/InsetsSource;->mId:I

    .line 796
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/InsetsSource;->mType:I

    .line 797
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/view/InsetsSource;->mFrame:Landroid/graphics/Rect;

    .line 798
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3c

    .line 799
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/view/InsetsSource;->mVisibleFrame:Landroid/graphics/Rect;

    goto :goto_3e

    .line 801
    :cond_3c
    iput-object v1, p0, Landroid/view/InsetsSource;->mVisibleFrame:Landroid/graphics/Rect;

    .line 803
    :goto_3e
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/InsetsSource;->mVisible:Z

    .line 804
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/InsetsSource;->mFlags:I

    .line 805
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/InsetsSource;->mSideHint:I

    .line 806
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/view/InsetsSource;->mBoundingRects:[Landroid/graphics/Rect;

    .line 807
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6b

    .line 808
    sget-object v0, Landroid/graphics/Insets;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Insets;

    iput-object p1, p0, Landroid/view/InsetsSource;->mAttachedInsets:Landroid/graphics/Insets;

    goto :goto_6d

    .line 810
    :cond_6b
    iput-object v1, p0, Landroid/view/InsetsSource;->mAttachedInsets:Landroid/graphics/Insets;

    .line 812
    :goto_6d
    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/InsetsSource;)V
    .registers 5

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/InsetsSource;->mSideHint:I

    .line 173
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    .line 175
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsSource;->mTmpFrame2:Landroid/graphics/Rect;

    .line 186
    iget v0, p1, Landroid/view/InsetsSource;->mId:I

    iput v0, p0, Landroid/view/InsetsSource;->mId:I

    .line 187
    iget v0, p1, Landroid/view/InsetsSource;->mType:I

    iput v0, p0, Landroid/view/InsetsSource;->mType:I

    .line 188
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/view/InsetsSource;->mFrame:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Landroid/view/InsetsSource;->mFrame:Landroid/graphics/Rect;

    .line 189
    iget-boolean v0, p1, Landroid/view/InsetsSource;->mVisible:Z

    iput-boolean v0, p0, Landroid/view/InsetsSource;->mVisible:Z

    .line 190
    iget-object v0, p1, Landroid/view/InsetsSource;->mVisibleFrame:Landroid/graphics/Rect;

    const/4 v1, 0x0

    if-eqz v0, :cond_36

    .line 191
    new-instance v0, Landroid/graphics/Rect;

    iget-object v2, p1, Landroid/view/InsetsSource;->mVisibleFrame:Landroid/graphics/Rect;

    invoke-direct {v0, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_37

    .line 192
    :cond_36
    move-object v0, v1

    :goto_37
    iput-object v0, p0, Landroid/view/InsetsSource;->mVisibleFrame:Landroid/graphics/Rect;

    .line 193
    iget v0, p1, Landroid/view/InsetsSource;->mFlags:I

    iput v0, p0, Landroid/view/InsetsSource;->mFlags:I

    .line 194
    iget v0, p1, Landroid/view/InsetsSource;->mSideHint:I

    iput v0, p0, Landroid/view/InsetsSource;->mSideHint:I

    .line 195
    iget-object v0, p1, Landroid/view/InsetsSource;->mBoundingRects:[Landroid/graphics/Rect;

    if-eqz v0, :cond_4f

    .line 196
    iget-object v0, p1, Landroid/view/InsetsSource;->mBoundingRects:[Landroid/graphics/Rect;

    invoke-virtual {v0}, [Landroid/graphics/Rect;->clone()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, [Landroid/graphics/Rect;

    goto :goto_50

    .line 197
    :cond_4f
    nop

    :goto_50
    iput-object v1, p0, Landroid/view/InsetsSource;->mBoundingRects:[Landroid/graphics/Rect;

    .line 198
    iget-object p1, p1, Landroid/view/InsetsSource;->mAttachedInsets:Landroid/graphics/Insets;

    iput-object p1, p0, Landroid/view/InsetsSource;->mAttachedInsets:Landroid/graphics/Insets;

    .line 199
    return-void
.end method

.method private blacklist calculateArbitraryInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/graphics/Insets;
    .registers 6

    .line 374
    if-nez p3, :cond_9

    iget-boolean p3, p0, Landroid/view/InsetsSource;->mVisible:Z

    if-nez p3, :cond_9

    .line 375
    sget-object p1, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    return-object p1

    .line 383
    :cond_9
    invoke-virtual {p0}, Landroid/view/InsetsSource;->getType()I

    move-result p3

    invoke-static {}, Landroid/view/WindowInsets$Type;->captionBar()I

    move-result v0

    const/4 v1, 0x0

    if-ne p3, v0, :cond_2e

    .line 384
    invoke-virtual {p0}, Landroid/view/InsetsSource;->getId()I

    move-result p1

    sget p3, Landroid/view/InsetsSource;->ID_IME_CAPTION_BAR:I

    if-ne p1, p3, :cond_25

    .line 385
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-static {v1, v1, v1, p1}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object p1

    goto :goto_2d

    .line 386
    :cond_25
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-static {v1, p1, v1, v1}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object p1

    .line 384
    :goto_2d
    return-object p1

    .line 389
    :cond_2e
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_3b

    .line 390
    iget-object p3, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    invoke-static {p2, p1, p3}, Landroid/view/InsetsSource;->getIntersection(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result p2

    goto :goto_41

    .line 391
    :cond_3b
    iget-object p3, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    invoke-virtual {p3, p2, p1}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result p2

    .line 392
    :goto_41
    if-nez p2, :cond_46

    .line 393
    sget-object p1, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    return-object p1

    .line 398
    :cond_46
    invoke-virtual {p0}, Landroid/view/InsetsSource;->getType()I

    move-result p2

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result p3

    if-ne p2, p3, :cond_5b

    .line 399
    iget-object p1, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-static {v1, v1, v1, p1}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object p1

    return-object p1

    .line 402
    :cond_5b
    iget-object p2, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_94

    .line 404
    iget p1, p0, Landroid/view/InsetsSource;->mSideHint:I

    packed-switch p1, :pswitch_data_15e

    .line 407
    iget-object p1, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    invoke-static {p1, v1, v1, v1}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object p1

    return-object p1

    .line 413
    :pswitch_73
    iget-object p1, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-static {v1, v1, v1, p1}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object p1

    return-object p1

    .line 411
    :pswitch_7e
    iget-object p1, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    invoke-static {v1, v1, p1, v1}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object p1

    return-object p1

    .line 409
    :pswitch_89
    iget-object p1, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-static {v1, p1, v1, v1}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object p1

    return-object p1

    .line 415
    :cond_94
    iget-object p2, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p3

    if-ne p2, p3, :cond_d7

    .line 417
    iget-object p2, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->top:I

    iget p3, p1, Landroid/graphics/Rect;->top:I

    if-ne p2, p3, :cond_b3

    .line 418
    iget-object p1, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-static {v1, p1, v1, v1}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object p1

    return-object p1

    .line 419
    :cond_b3
    iget-object p2, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    if-ne p2, p1, :cond_c6

    .line 420
    iget-object p1, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-static {v1, v1, v1, p1}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object p1

    return-object p1

    .line 425
    :cond_c6
    iget-object p1, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    if-nez p1, :cond_15b

    .line 426
    iget-object p1, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-static {v1, p1, v1, v1}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object p1

    return-object p1

    .line 428
    :cond_d7
    iget-object p2, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p3

    if-ne p2, p3, :cond_109

    .line 430
    iget-object p2, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->left:I

    iget p3, p1, Landroid/graphics/Rect;->left:I

    if-ne p2, p3, :cond_f6

    .line 431
    iget-object p1, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    invoke-static {p1, v1, v1, v1}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object p1

    return-object p1

    .line 432
    :cond_f6
    iget-object p2, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->right:I

    if-ne p2, p1, :cond_15b

    .line 433
    iget-object p1, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    invoke-static {v1, v1, p1, v1}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object p1

    return-object p1

    .line 438
    :cond_109
    iget p2, p0, Landroid/view/InsetsSource;->mSideHint:I

    packed-switch p2, :pswitch_data_168

    goto :goto_15b

    .line 455
    :pswitch_10f
    iget-object p2, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    if-ne p2, p1, :cond_15b

    .line 456
    iget-object p1, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-static {v1, v1, v1, p1}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object p1

    return-object p1

    .line 450
    :pswitch_122
    iget-object p2, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->right:I

    if-ne p2, p1, :cond_15b

    .line 451
    iget-object p1, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    invoke-static {v1, v1, p1, v1}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object p1

    return-object p1

    .line 445
    :pswitch_135
    iget-object p2, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->top:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    if-ne p2, p1, :cond_15b

    .line 446
    iget-object p1, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-static {v1, p1, v1, v1}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object p1

    return-object p1

    .line 440
    :pswitch_148
    iget-object p2, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/Rect;->left:I

    if-ne p2, p1, :cond_15b

    .line 441
    iget-object p1, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    invoke-static {p1, v1, v1, v1}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object p1

    return-object p1

    .line 461
    :cond_15b
    :goto_15b
    sget-object p1, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    return-object p1

    :pswitch_data_15e
    .packed-switch 0x2
        :pswitch_89
        :pswitch_7e
        :pswitch_73
    .end packed-switch

    :pswitch_data_168
    .packed-switch 0x1
        :pswitch_148
        :pswitch_135
        :pswitch_122
        :pswitch_10f
    .end packed-switch
.end method

.method private blacklist calculateAttachedInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/graphics/Insets;
    .registers 6

    .line 477
    if-eqz p2, :cond_52

    .line 481
    if-nez p3, :cond_b

    iget-boolean p3, p0, Landroid/view/InsetsSource;->mVisible:Z

    if-nez p3, :cond_b

    .line 482
    sget-object p1, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    return-object p1

    .line 484
    :cond_b
    iget-object p3, p0, Landroid/view/InsetsSource;->mAttachedInsets:Landroid/graphics/Insets;

    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    invoke-virtual {p3, v0}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_4f

    .line 485
    iget-object p3, p0, Landroid/view/InsetsSource;->mTmpFrame2:Landroid/graphics/Rect;

    invoke-virtual {p3, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 486
    iget-object p2, p0, Landroid/view/InsetsSource;->mTmpFrame2:Landroid/graphics/Rect;

    iget-object p3, p0, Landroid/view/InsetsSource;->mAttachedInsets:Landroid/graphics/Insets;

    invoke-virtual {p2, p3}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    .line 487
    iget-object p2, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    iget-object p3, p0, Landroid/view/InsetsSource;->mTmpFrame2:Landroid/graphics/Rect;

    invoke-virtual {p2, p3, p1}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result p2

    if-eqz p2, :cond_4c

    .line 488
    iget-object p2, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->left:I

    iget p3, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr p2, p3

    iget-object p3, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->top:I

    iget v0, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p3, v0

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, v1

    invoke-static {p2, p3, v0, p1}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object p1

    goto :goto_4e

    .line 493
    :cond_4c
    sget-object p1, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    .line 487
    :goto_4e
    return-object p1

    .line 495
    :cond_4f
    sget-object p1, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    return-object p1

    .line 478
    :cond_52
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "A local relative insets requires the host container bounds to be calculated correctly."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static blacklist createId(Ljava/lang/Object;II)I
    .registers 4

    .line 659
    if-ltz p1, :cond_18

    const/16 v0, 0x800

    if-ge p1, v0, :cond_18

    .line 665
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    const/high16 v0, 0x10000

    rem-int/2addr p0, v0

    shl-int/lit8 p0, p0, 0x10

    shl-int/lit8 p1, p1, 0x5

    add-int/2addr p0, p1

    .line 667
    invoke-static {p2}, Landroid/view/WindowInsets$Type;->indexOf(I)I

    move-result p1

    add-int/2addr p0, p1

    .line 665
    return p0

    .line 660
    :cond_18
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static blacklist flagsToString(I)Ljava/lang/String;
    .registers 3

    .line 697
    new-instance v0, Ljava/util/StringJoiner;

    const-string/jumbo v1, "|"

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 698
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_11

    .line 699
    const-string v1, "SUPPRESS_SCRIM"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 701
    :cond_11
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_1a

    .line 702
    const-string v1, "INSETS_ROUNDED_CORNER"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 704
    :cond_1a
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_23

    .line 705
    const-string v1, "FORCE_CONSUMING"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 707
    :cond_23
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_2c

    .line 708
    const-string v1, "ANIMATE_RESIZING"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 710
    :cond_2c
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_35

    .line 711
    const-string v1, "FORCE_CONSUMING_OPAQUE_CAPTION_BAR"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 713
    :cond_35
    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_3e

    .line 714
    const-string p0, "INVALID"

    invoke-virtual {v0, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 716
    :cond_3e
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getIndex(I)I
    .registers 2

    .line 679
    const v0, 0xffff

    and-int/2addr p0, v0

    shr-int/lit8 p0, p0, 0x5

    return p0
.end method

.method static blacklist getInsetSide(Landroid/graphics/Insets;)I
    .registers 2

    .line 611
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    invoke-virtual {v0, p0}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 612
    const/4 p0, 0x0

    return p0

    .line 614
    :cond_a
    iget v0, p0, Landroid/graphics/Insets;->left:I

    if-eqz v0, :cond_10

    .line 615
    const/4 p0, 0x1

    return p0

    .line 617
    :cond_10
    iget v0, p0, Landroid/graphics/Insets;->top:I

    if-eqz v0, :cond_16

    .line 618
    const/4 p0, 0x2

    return p0

    .line 620
    :cond_16
    iget v0, p0, Landroid/graphics/Insets;->right:I

    if-eqz v0, :cond_1c

    .line 621
    const/4 p0, 0x3

    return p0

    .line 623
    :cond_1c
    iget p0, p0, Landroid/graphics/Insets;->bottom:I

    if-eqz p0, :cond_22

    .line 624
    const/4 p0, 0x4

    return p0

    .line 626
    :cond_22
    const/4 p0, 0x5

    return p0
.end method

.method private static blacklist getIntersection(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 5

    .line 594
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    if-gt v0, v1, :cond_42

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->right:I

    if-gt v0, v1, :cond_42

    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    if-gt v0, v1, :cond_42

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    if-gt v0, v1, :cond_42

    .line 595
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->left:I

    .line 596
    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->top:I

    .line 597
    iget v0, p0, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->right:I

    .line 598
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    iput p0, p2, Landroid/graphics/Rect;->bottom:I

    .line 599
    const/4 p0, 0x1

    return p0

    .line 601
    :cond_42
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    .line 602
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist getType(I)I
    .registers 2

    .line 692
    and-int/lit8 p0, p0, 0x1f

    const/4 v0, 0x1

    shl-int p0, v0, p0

    return p0
.end method

.method static blacklist sideToString(I)Ljava/lang/String;
    .registers 3

    .line 631
    packed-switch p0, :pswitch_data_26

    .line 643
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 641
    :pswitch_17
    const-string p0, "BOTTOM"

    return-object p0

    .line 639
    :pswitch_1a
    const-string p0, "RIGHT"

    return-object p0

    .line 637
    :pswitch_1d
    const-string p0, "TOP"

    return-object p0

    .line 635
    :pswitch_20
    const-string p0, "LEFT"

    return-object p0

    .line 633
    :pswitch_23
    const-string p0, "NONE"

    return-object p0

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
    .end packed-switch
.end method


# virtual methods
.method public blacklist calculateBoundingRects(Landroid/graphics/Rect;Z)[Landroid/graphics/Rect;
    .registers 13

    .line 506
    if-nez p2, :cond_9

    iget-boolean p2, p0, Landroid/view/InsetsSource;->mVisible:Z

    if-nez p2, :cond_9

    .line 507
    sget-object p1, Landroid/view/InsetsSource;->EMPTY_RECTS:[Landroid/graphics/Rect;

    return-object p1

    .line 510
    :cond_9
    invoke-virtual {p0}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object p2

    .line 511
    iget-object v0, p0, Landroid/view/InsetsSource;->mBoundingRects:[Landroid/graphics/Rect;

    const/4 v1, 0x0

    if-nez v0, :cond_44

    .line 514
    iget-object v0, p0, Landroid/view/InsetsSource;->mTmpFrame2:Landroid/graphics/Rect;

    invoke-virtual {v0, p2, p1}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result p2

    if-eqz p2, :cond_41

    .line 515
    const/4 p2, 0x1

    new-array p2, p2, [Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/view/InsetsSource;->mTmpFrame2:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/view/InsetsSource;->mTmpFrame2:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget v4, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/view/InsetsSource;->mTmpFrame2:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget v5, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/view/InsetsSource;->mTmpFrame2:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, p1

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v0, p2, v1

    goto :goto_43

    .line 523
    :cond_41
    sget-object p2, Landroid/view/InsetsSource;->EMPTY_RECTS:[Landroid/graphics/Rect;

    .line 514
    :goto_43
    return-object p2

    .line 532
    :cond_44
    invoke-virtual {p0}, Landroid/view/InsetsSource;->getType()I

    move-result v0

    invoke-static {}, Landroid/view/WindowInsets$Type;->captionBar()I

    move-result v2

    if-ne v0, v2, :cond_8c

    .line 533
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 534
    iget-object v2, p0, Landroid/view/InsetsSource;->mBoundingRects:[Landroid/graphics/Rect;

    array-length v3, v2

    move v4, v1

    :goto_57
    if-ge v4, v3, :cond_83

    aget-object v5, v2, v4

    .line 539
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v6

    .line 540
    iget-object v7, p0, Landroid/view/InsetsSource;->mTmpFrame2:Landroid/graphics/Rect;

    invoke-virtual {v7, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 541
    invoke-virtual {p0}, Landroid/view/InsetsSource;->getId()I

    move-result v5

    sget v7, Landroid/view/InsetsSource;->ID_IME_CAPTION_BAR:I

    if-ne v5, v7, :cond_76

    .line 542
    iget-object v5, p0, Landroid/view/InsetsSource;->mTmpFrame2:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    sub-int/2addr v7, v6

    invoke-virtual {v5, v1, v7}, Landroid/graphics/Rect;->offset(II)V

    .line 544
    :cond_76
    new-instance v5, Landroid/graphics/Rect;

    iget-object v6, p0, Landroid/view/InsetsSource;->mTmpFrame2:Landroid/graphics/Rect;

    invoke-direct {v5, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 534
    add-int/lit8 v4, v4, 0x1

    goto :goto_57

    .line 546
    :cond_83
    sget-object p1, Landroid/view/InsetsSource;->EMPTY_RECTS:[Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/graphics/Rect;

    return-object p1

    .line 550
    :cond_8c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 551
    iget-object v2, p0, Landroid/view/InsetsSource;->mBoundingRects:[Landroid/graphics/Rect;

    array-length v3, v2

    :goto_94
    if-ge v1, v3, :cond_e1

    aget-object v4, v2, v1

    .line 554
    new-instance v5, Landroid/graphics/Rect;

    iget v6, v4, Landroid/graphics/Rect;->left:I

    iget v7, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v7

    iget v7, v4, Landroid/graphics/Rect;->top:I

    iget v8, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v8

    iget v8, v4, Landroid/graphics/Rect;->right:I

    iget v9, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v9

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget v9, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v9

    invoke-direct {v5, v6, v7, v8, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 562
    iget-object v4, p0, Landroid/view/InsetsSource;->mTmpFrame2:Landroid/graphics/Rect;

    invoke-virtual {v4, v5, p1}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v4

    if-nez v4, :cond_ba

    .line 567
    goto :goto_de

    .line 572
    :cond_ba
    new-instance v4, Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/view/InsetsSource;->mTmpFrame2:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget v6, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Landroid/view/InsetsSource;->mTmpFrame2:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget v7, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    iget-object v7, p0, Landroid/view/InsetsSource;->mTmpFrame2:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget v8, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    iget-object v8, p0, Landroid/view/InsetsSource;->mTmpFrame2:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iget v9, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v9

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 551
    :goto_de
    add-int/lit8 v1, v1, 0x1

    goto :goto_94

    .line 578
    :cond_e1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_ea

    .line 579
    sget-object p1, Landroid/view/InsetsSource;->EMPTY_RECTS:[Landroid/graphics/Rect;

    return-object p1

    .line 581
    :cond_ea
    sget-object p1, Landroid/view/InsetsSource;->EMPTY_RECTS:[Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/graphics/Rect;

    return-object p1
.end method

.method public blacklist calculateInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/graphics/Insets;
    .registers 5

    .line 339
    iget-object v0, p0, Landroid/view/InsetsSource;->mAttachedInsets:Landroid/graphics/Insets;

    if-eqz v0, :cond_9

    .line 340
    invoke-direct {p0, p1, p2, p3}, Landroid/view/InsetsSource;->calculateAttachedInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/graphics/Insets;

    move-result-object p1

    return-object p1

    .line 342
    :cond_9
    iget-object p2, p0, Landroid/view/InsetsSource;->mFrame:Landroid/graphics/Rect;

    invoke-direct {p0, p1, p2, p3}, Landroid/view/InsetsSource;->calculateArbitraryInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/graphics/Insets;

    move-result-object p1

    return-object p1
.end method

.method public blacklist calculateVisibleInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Insets;
    .registers 5

    .line 351
    iget-object v0, p0, Landroid/view/InsetsSource;->mAttachedInsets:Landroid/graphics/Insets;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 352
    invoke-direct {p0, p1, p2, v1}, Landroid/view/InsetsSource;->calculateAttachedInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/graphics/Insets;

    move-result-object p1

    return-object p1

    .line 354
    :cond_a
    iget-object p2, p0, Landroid/view/InsetsSource;->mVisibleFrame:Landroid/graphics/Rect;

    if-eqz p2, :cond_11

    .line 355
    iget-object p2, p0, Landroid/view/InsetsSource;->mVisibleFrame:Landroid/graphics/Rect;

    goto :goto_13

    :cond_11
    iget-object p2, p0, Landroid/view/InsetsSource;->mFrame:Landroid/graphics/Rect;

    .line 354
    :goto_13
    invoke-direct {p0, p1, p2, v1}, Landroid/view/InsetsSource;->calculateArbitraryInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/graphics/Insets;

    move-result-object p1

    return-object p1
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 816
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 3

    .line 744
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 745
    const-string p1, "InsetsSource id="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p1, p0, Landroid/view/InsetsSource;->mId:I

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 746
    const-string p1, " type="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p1, p0, Landroid/view/InsetsSource;->mType:I

    invoke-static {p1}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 747
    iget-object p1, p0, Landroid/view/InsetsSource;->mAttachedInsets:Landroid/graphics/Insets;

    if-eqz p1, :cond_2e

    .line 748
    const-string p1, " attachedInsets="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Landroid/view/InsetsSource;->mAttachedInsets:Landroid/graphics/Insets;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    goto :goto_3c

    .line 750
    :cond_2e
    const-string p1, " frame="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Landroid/view/InsetsSource;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 752
    :goto_3c
    iget-object p1, p0, Landroid/view/InsetsSource;->mVisibleFrame:Landroid/graphics/Rect;

    if-eqz p1, :cond_4e

    .line 753
    const-string p1, " visibleFrame="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Landroid/view/InsetsSource;->mVisibleFrame:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 755
    :cond_4e
    const-string p1, " visible="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Landroid/view/InsetsSource;->mVisible:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Z)V

    .line 756
    const-string p1, " flags="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p1, p0, Landroid/view/InsetsSource;->mFlags:I

    invoke-static {p1}, Landroid/view/InsetsSource;->flagsToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 757
    const-string p1, " sideHint="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p1, p0, Landroid/view/InsetsSource;->mSideHint:I

    invoke-static {p1}, Landroid/view/InsetsSource;->sideToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 758
    const-string p1, " boundingRects="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Landroid/view/InsetsSource;->mBoundingRects:[Landroid/graphics/Rect;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 759
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 760
    return-void
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 7

    .line 726
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 727
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->androidOsBuildVanillaIceCream()Z

    move-result v0

    if-nez v0, :cond_18

    .line 729
    iget v0, p0, Landroid/view/InsetsSource;->mType:I

    invoke-static {v0}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-wide v1, 0x10900000001L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 731
    :cond_18
    iget-object v0, p0, Landroid/view/InsetsSource;->mFrame:Landroid/graphics/Rect;

    const-wide v1, 0x10b00000002L

    invoke-virtual {v0, p1, v1, v2}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 732
    iget-object v0, p0, Landroid/view/InsetsSource;->mVisibleFrame:Landroid/graphics/Rect;

    if-eqz v0, :cond_30

    .line 733
    iget-object v0, p0, Landroid/view/InsetsSource;->mVisibleFrame:Landroid/graphics/Rect;

    const-wide v1, 0x10b00000003L

    invoke-virtual {v0, p1, v1, v2}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 735
    :cond_30
    const-wide v0, 0x10800000004L

    iget-boolean v2, p0, Landroid/view/InsetsSource;->mVisible:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 736
    const-wide v0, 0x10500000005L

    iget v2, p0, Landroid/view/InsetsSource;->mType:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 737
    iget-object v0, p0, Landroid/view/InsetsSource;->mAttachedInsets:Landroid/graphics/Insets;

    if-eqz v0, :cond_52

    .line 738
    iget-object v0, p0, Landroid/view/InsetsSource;->mAttachedInsets:Landroid/graphics/Insets;

    const-wide v1, 0x10b00000006L

    invoke-virtual {v0, p1, v1, v2}, Landroid/graphics/Insets;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 740
    :cond_52
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 741
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3

    .line 764
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/InsetsSource;->equals(Ljava/lang/Object;Z)Z

    move-result p1

    return p1
.end method

.method public blacklist equals(Ljava/lang/Object;Z)Z
    .registers 7

    .line 772
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 773
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_65

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_65

    .line 775
    :cond_12
    check-cast p1, Landroid/view/InsetsSource;

    .line 777
    iget v2, p0, Landroid/view/InsetsSource;->mId:I

    iget v3, p1, Landroid/view/InsetsSource;->mId:I

    if-eq v2, v3, :cond_1b

    return v1

    .line 778
    :cond_1b
    iget v2, p0, Landroid/view/InsetsSource;->mType:I

    iget v3, p1, Landroid/view/InsetsSource;->mType:I

    if-eq v2, v3, :cond_22

    return v1

    .line 779
    :cond_22
    iget-boolean v2, p0, Landroid/view/InsetsSource;->mVisible:Z

    iget-boolean v3, p1, Landroid/view/InsetsSource;->mVisible:Z

    if-eq v2, v3, :cond_29

    return v1

    .line 780
    :cond_29
    iget v2, p0, Landroid/view/InsetsSource;->mFlags:I

    iget v3, p1, Landroid/view/InsetsSource;->mFlags:I

    if-eq v2, v3, :cond_30

    return v1

    .line 781
    :cond_30
    iget v2, p0, Landroid/view/InsetsSource;->mSideHint:I

    iget v3, p1, Landroid/view/InsetsSource;->mSideHint:I

    if-eq v2, v3, :cond_37

    return v1

    .line 782
    :cond_37
    if-eqz p2, :cond_46

    iget-boolean p2, p0, Landroid/view/InsetsSource;->mVisible:Z

    if-nez p2, :cond_46

    iget p2, p0, Landroid/view/InsetsSource;->mType:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v2

    if-ne p2, v2, :cond_46

    return v0

    .line 783
    :cond_46
    iget-object p2, p0, Landroid/view/InsetsSource;->mVisibleFrame:Landroid/graphics/Rect;

    iget-object v0, p1, Landroid/view/InsetsSource;->mVisibleFrame:Landroid/graphics/Rect;

    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_51

    return v1

    .line 784
    :cond_51
    iget-object p2, p0, Landroid/view/InsetsSource;->mFrame:Landroid/graphics/Rect;

    iget-object v0, p1, Landroid/view/InsetsSource;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5c

    return v1

    .line 785
    :cond_5c
    iget-object p2, p0, Landroid/view/InsetsSource;->mBoundingRects:[Landroid/graphics/Rect;

    iget-object p1, p1, Landroid/view/InsetsSource;->mBoundingRects:[Landroid/graphics/Rect;

    invoke-static {p2, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 773
    :cond_65
    :goto_65
    return v1
.end method

.method public blacklist getAttachedInsets()Landroid/graphics/Insets;
    .registers 2

    .line 323
    iget-object v0, p0, Landroid/view/InsetsSource;->mAttachedInsets:Landroid/graphics/Insets;

    return-object v0
.end method

.method public blacklist getBoundingRects()[Landroid/graphics/Rect;
    .registers 2

    .line 318
    iget-object v0, p0, Landroid/view/InsetsSource;->mBoundingRects:[Landroid/graphics/Rect;

    return-object v0
.end method

.method public blacklist getFlags()I
    .registers 2

    .line 306
    iget v0, p0, Landroid/view/InsetsSource;->mFlags:I

    return v0
.end method

.method public blacklist getFrame()Landroid/graphics/Rect;
    .registers 2

    .line 292
    iget-object v0, p0, Landroid/view/InsetsSource;->mFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method public blacklist getId()I
    .registers 2

    .line 282
    iget v0, p0, Landroid/view/InsetsSource;->mId:I

    return v0
.end method

.method public blacklist getType()I
    .registers 2

    .line 287
    iget v0, p0, Landroid/view/InsetsSource;->mType:I

    return v0
.end method

.method public blacklist getVisibleFrame()Landroid/graphics/Rect;
    .registers 2

    .line 297
    iget-object v0, p0, Landroid/view/InsetsSource;->mVisibleFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method public blacklist hasFlags(I)Z
    .registers 3

    .line 310
    iget v0, p0, Landroid/view/InsetsSource;->mFlags:I

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

    .line 790
    iget v0, p0, Landroid/view/InsetsSource;->mId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/view/InsetsSource;->mType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Landroid/view/InsetsSource;->mFrame:Landroid/graphics/Rect;

    iget-object v4, p0, Landroid/view/InsetsSource;->mVisibleFrame:Landroid/graphics/Rect;

    iget-boolean v0, p0, Landroid/view/InsetsSource;->mVisible:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget v0, p0, Landroid/view/InsetsSource;->mFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v0, p0, Landroid/view/InsetsSource;->mSideHint:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v0, p0, Landroid/view/InsetsSource;->mBoundingRects:[Landroid/graphics/Rect;

    .line 791
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array/range {v1 .. v8}, [Ljava/lang/Object;

    move-result-object v0

    .line 790
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isVisible()Z
    .registers 2

    .line 301
    iget-boolean v0, p0, Landroid/view/InsetsSource;->mVisible:Z

    return v0
.end method

.method public blacklist set(Landroid/view/InsetsSource;)V
    .registers 5

    .line 202
    iget-object v0, p0, Landroid/view/InsetsSource;->mFrame:Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/view/InsetsSource;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 203
    iget-boolean v0, p1, Landroid/view/InsetsSource;->mVisible:Z

    iput-boolean v0, p0, Landroid/view/InsetsSource;->mVisible:Z

    .line 204
    iget-object v0, p1, Landroid/view/InsetsSource;->mVisibleFrame:Landroid/graphics/Rect;

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 205
    new-instance v0, Landroid/graphics/Rect;

    iget-object v2, p1, Landroid/view/InsetsSource;->mVisibleFrame:Landroid/graphics/Rect;

    invoke-direct {v0, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_19

    .line 206
    :cond_18
    move-object v0, v1

    :goto_19
    iput-object v0, p0, Landroid/view/InsetsSource;->mVisibleFrame:Landroid/graphics/Rect;

    .line 207
    iget v0, p1, Landroid/view/InsetsSource;->mFlags:I

    iput v0, p0, Landroid/view/InsetsSource;->mFlags:I

    .line 208
    iget v0, p1, Landroid/view/InsetsSource;->mSideHint:I

    iput v0, p0, Landroid/view/InsetsSource;->mSideHint:I

    .line 209
    iget-object v0, p1, Landroid/view/InsetsSource;->mBoundingRects:[Landroid/graphics/Rect;

    if-eqz v0, :cond_31

    .line 210
    iget-object v0, p1, Landroid/view/InsetsSource;->mBoundingRects:[Landroid/graphics/Rect;

    invoke-virtual {v0}, [Landroid/graphics/Rect;->clone()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, [Landroid/graphics/Rect;

    goto :goto_32

    .line 211
    :cond_31
    nop

    :goto_32
    iput-object v1, p0, Landroid/view/InsetsSource;->mBoundingRects:[Landroid/graphics/Rect;

    .line 212
    iget-object p1, p1, Landroid/view/InsetsSource;->mAttachedInsets:Landroid/graphics/Insets;

    iput-object p1, p0, Landroid/view/InsetsSource;->mAttachedInsets:Landroid/graphics/Insets;

    .line 213
    return-void
.end method

.method public blacklist setAttachedInsets(Landroid/graphics/Insets;)Landroid/view/InsetsSource;
    .registers 2

    .line 235
    iput-object p1, p0, Landroid/view/InsetsSource;->mAttachedInsets:Landroid/graphics/Insets;

    .line 236
    return-object p0
.end method

.method public blacklist setBoundingRects([Landroid/graphics/Rect;)Landroid/view/InsetsSource;
    .registers 2

    .line 277
    if-eqz p1, :cond_9

    invoke-virtual {p1}, [Landroid/graphics/Rect;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/graphics/Rect;

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    iput-object p1, p0, Landroid/view/InsetsSource;->mBoundingRects:[Landroid/graphics/Rect;

    .line 278
    return-object p0
.end method

.method public blacklist setFlags(I)Landroid/view/InsetsSource;
    .registers 2

    .line 247
    iput p1, p0, Landroid/view/InsetsSource;->mFlags:I

    .line 248
    return-object p0
.end method

.method public blacklist setFlags(II)Landroid/view/InsetsSource;
    .registers 5

    .line 253
    iget v0, p0, Landroid/view/InsetsSource;->mFlags:I

    not-int v1, p2

    and-int/2addr v0, v1

    and-int/2addr p1, p2

    or-int/2addr p1, v0

    iput p1, p0, Landroid/view/InsetsSource;->mFlags:I

    .line 254
    return-object p0
.end method

.method public blacklist setFrame(IIII)Landroid/view/InsetsSource;
    .registers 6

    .line 217
    iget-object v0, p0, Landroid/view/InsetsSource;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 218
    return-object p0
.end method

.method public blacklist setFrame(Landroid/graphics/Rect;)Landroid/view/InsetsSource;
    .registers 3

    .line 223
    iget-object v0, p0, Landroid/view/InsetsSource;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 224
    return-object p0
.end method

.method public blacklist setVisible(Z)Landroid/view/InsetsSource;
    .registers 2

    .line 241
    iput-boolean p1, p0, Landroid/view/InsetsSource;->mVisible:Z

    .line 242
    return-object p0
.end method

.method public blacklist setVisibleFrame(Landroid/graphics/Rect;)Landroid/view/InsetsSource;
    .registers 3

    .line 229
    if-eqz p1, :cond_8

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    iput-object v0, p0, Landroid/view/InsetsSource;->mVisibleFrame:Landroid/graphics/Rect;

    .line 230
    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 844
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InsetsSource: {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/InsetsSource;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/InsetsSource;->mType:I

    .line 845
    invoke-static {v1}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mFrame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/InsetsSource;->mFrame:Landroid/graphics/Rect;

    .line 846
    invoke-virtual {v1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mAttachedInsets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/InsetsSource;->mAttachedInsets:Landroid/graphics/Insets;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/view/InsetsSource;->mVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/InsetsSource;->mFlags:I

    .line 849
    invoke-static {v1}, Landroid/view/InsetsSource;->flagsToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSideHint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/InsetsSource;->mSideHint:I

    .line 850
    invoke-static {v1}, Landroid/view/InsetsSource;->sideToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mBoundingRects="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/InsetsSource;->mBoundingRects:[Landroid/graphics/Rect;

    .line 851
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 844
    return-object v0
.end method

.method public blacklist updateSideHint(Landroid/graphics/Rect;)Landroid/view/InsetsSource;
    .registers 4

    .line 265
    iget-object v0, p0, Landroid/view/InsetsSource;->mAttachedInsets:Landroid/graphics/Insets;

    if-eqz v0, :cond_7

    .line 266
    iget-object p1, p0, Landroid/view/InsetsSource;->mAttachedInsets:Landroid/graphics/Insets;

    goto :goto_e

    .line 267
    :cond_7
    iget-object v0, p0, Landroid/view/InsetsSource;->mFrame:Landroid/graphics/Rect;

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/view/InsetsSource;->calculateArbitraryInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/graphics/Insets;

    move-result-object p1

    .line 265
    :goto_e
    invoke-static {p1}, Landroid/view/InsetsSource;->getInsetSide(Landroid/graphics/Insets;)I

    move-result p1

    iput p1, p0, Landroid/view/InsetsSource;->mSideHint:I

    .line 268
    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    .line 821
    iget v0, p0, Landroid/view/InsetsSource;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 822
    iget v0, p0, Landroid/view/InsetsSource;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 823
    iget-object v0, p0, Landroid/view/InsetsSource;->mFrame:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 824
    iget-object v0, p0, Landroid/view/InsetsSource;->mVisibleFrame:Landroid/graphics/Rect;

    const/4 v2, 0x1

    if-eqz v0, :cond_1e

    .line 825
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 826
    iget-object v0, p0, Landroid/view/InsetsSource;->mVisibleFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_21

    .line 828
    :cond_1e
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 830
    :goto_21
    iget-boolean v0, p0, Landroid/view/InsetsSource;->mVisible:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 831
    iget v0, p0, Landroid/view/InsetsSource;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 832
    iget v0, p0, Landroid/view/InsetsSource;->mSideHint:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 833
    iget-object v0, p0, Landroid/view/InsetsSource;->mBoundingRects:[Landroid/graphics/Rect;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 834
    iget-object v0, p0, Landroid/view/InsetsSource;->mAttachedInsets:Landroid/graphics/Insets;

    if-eqz v0, :cond_42

    .line 835
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 836
    iget-object v0, p0, Landroid/view/InsetsSource;->mAttachedInsets:Landroid/graphics/Insets;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Insets;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_45

    .line 838
    :cond_42
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 840
    :goto_45
    return-void
.end method
