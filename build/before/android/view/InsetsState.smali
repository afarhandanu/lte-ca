.class public Landroid/view/InsetsState;
.super Ljava/lang/Object;
.source "InsetsState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/InsetsState$OnTraverseCallbacks;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/InsetsState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

.field private final blacklist mDisplayFrame:Landroid/graphics/Rect;

.field private blacklist mDisplayShape:Landroid/view/DisplayShape;

.field private blacklist mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

.field private final blacklist mRoundedCornerFrame:Landroid/graphics/Rect;

.field private blacklist mRoundedCorners:Landroid/view/RoundedCorners;

.field private blacklist mSeq:I

.field private final blacklist mSources:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/InsetsSource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 875
    new-instance v0, Landroid/view/InsetsState$1;

    invoke-direct {v0}, Landroid/view/InsetsState$1;-><init>()V

    sput-object v0, Landroid/view/InsetsState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    .line 82
    new-instance v0, Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-direct {v0}, Landroid/view/DisplayCutout$ParcelableWrapper;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsState;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    .line 97
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsState;->mRoundedCornerFrame:Landroid/graphics/Rect;

    .line 101
    sget-object v0, Landroid/view/RoundedCorners;->NO_ROUNDED_CORNERS:Landroid/view/RoundedCorners;

    iput-object v0, p0, Landroid/view/InsetsState;->mRoundedCorners:Landroid/view/RoundedCorners;

    .line 105
    new-instance v0, Landroid/view/PrivacyIndicatorBounds;

    invoke-direct {v0}, Landroid/view/PrivacyIndicatorBounds;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsState;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    .line 110
    sget-object v0, Landroid/view/DisplayShape;->NONE:Landroid/view/DisplayShape;

    iput-object v0, p0, Landroid/view/InsetsState;->mDisplayShape:Landroid/view/DisplayShape;

    .line 114
    invoke-static {}, Landroid/util/SequenceUtils;->getInitSeq()I

    move-result v0

    iput v0, p0, Landroid/view/InsetsState;->mSeq:I

    .line 117
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    .line 118
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 849
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    .line 82
    new-instance v0, Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-direct {v0}, Landroid/view/DisplayCutout$ParcelableWrapper;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsState;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    .line 97
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsState;->mRoundedCornerFrame:Landroid/graphics/Rect;

    .line 101
    sget-object v0, Landroid/view/RoundedCorners;->NO_ROUNDED_CORNERS:Landroid/view/RoundedCorners;

    iput-object v0, p0, Landroid/view/InsetsState;->mRoundedCorners:Landroid/view/RoundedCorners;

    .line 105
    new-instance v0, Landroid/view/PrivacyIndicatorBounds;

    invoke-direct {v0}, Landroid/view/PrivacyIndicatorBounds;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsState;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    .line 110
    sget-object v0, Landroid/view/DisplayShape;->NONE:Landroid/view/DisplayShape;

    iput-object v0, p0, Landroid/view/InsetsState;->mDisplayShape:Landroid/view/DisplayShape;

    .line 114
    invoke-static {}, Landroid/util/SequenceUtils;->getInitSeq()I

    move-result v0

    iput v0, p0, Landroid/view/InsetsState;->mSeq:I

    .line 850
    invoke-virtual {p0, p1}, Landroid/view/InsetsState;->readFromParcel(Landroid/os/Parcel;)Landroid/util/SparseArray;

    move-result-object p1

    iput-object p1, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    .line 851
    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/InsetsState;)V
    .registers 3

    .line 121
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;Z)V

    .line 122
    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/InsetsState;Z)V
    .registers 5

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    .line 82
    new-instance v0, Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-direct {v0}, Landroid/view/DisplayCutout$ParcelableWrapper;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsState;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    .line 97
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsState;->mRoundedCornerFrame:Landroid/graphics/Rect;

    .line 101
    sget-object v0, Landroid/view/RoundedCorners;->NO_ROUNDED_CORNERS:Landroid/view/RoundedCorners;

    iput-object v0, p0, Landroid/view/InsetsState;->mRoundedCorners:Landroid/view/RoundedCorners;

    .line 105
    new-instance v0, Landroid/view/PrivacyIndicatorBounds;

    invoke-direct {v0}, Landroid/view/PrivacyIndicatorBounds;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsState;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    .line 110
    sget-object v0, Landroid/view/DisplayShape;->NONE:Landroid/view/DisplayShape;

    iput-object v0, p0, Landroid/view/InsetsState;->mDisplayShape:Landroid/view/DisplayShape;

    .line 114
    invoke-static {}, Landroid/util/SequenceUtils;->getInitSeq()I

    move-result v0

    iput v0, p0, Landroid/view/InsetsState;->mSeq:I

    .line 125
    new-instance v0, Landroid/util/SparseArray;

    iget-object v1, p1, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    .line 126
    invoke-virtual {p0, p1, p2}, Landroid/view/InsetsState;->set(Landroid/view/InsetsState;Z)V

    .line 127
    return-void
.end method

.method private blacklist calculateRelativeCutout(Landroid/graphics/Rect;)Landroid/view/DisplayCutout;
    .registers 7

    .line 219
    iget-object v0, p0, Landroid/view/InsetsState;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-virtual {v0}, Landroid/view/DisplayCutout$ParcelableWrapper;->get()Landroid/view/DisplayCutout;

    move-result-object v0

    .line 220
    iget-object v1, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 221
    return-object v0

    .line 223
    :cond_f
    if-nez p1, :cond_14

    .line 224
    sget-object p1, Landroid/view/DisplayCutout;->NO_CUTOUT:Landroid/view/DisplayCutout;

    return-object p1

    .line 226
    :cond_14
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    .line 227
    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    .line 228
    iget-object v3, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    .line 229
    iget-object v4, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, p1

    .line 230
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result p1

    if-lt v1, p1, :cond_4b

    .line 231
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result p1

    if-lt v2, p1, :cond_4b

    .line 232
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result p1

    if-lt v3, p1, :cond_4b

    .line 233
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result p1

    if-lt v4, p1, :cond_4b

    .line 234
    sget-object p1, Landroid/view/DisplayCutout;->NO_CUTOUT:Landroid/view/DisplayCutout;

    return-object p1

    .line 236
    :cond_4b
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/DisplayCutout;->inset(IIII)Landroid/view/DisplayCutout;

    move-result-object p1

    return-object p1
.end method

.method private blacklist calculateRelativeDisplayShape(Landroid/graphics/Rect;)Landroid/view/DisplayShape;
    .registers 4

    .line 286
    iget-object v0, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 287
    iget-object p1, p0, Landroid/view/InsetsState;->mDisplayShape:Landroid/view/DisplayShape;

    return-object p1

    .line 289
    :cond_b
    if-nez p1, :cond_10

    .line 290
    sget-object p1, Landroid/view/DisplayShape;->NONE:Landroid/view/DisplayShape;

    return-object p1

    .line 292
    :cond_10
    iget-object v0, p0, Landroid/view/InsetsState;->mDisplayShape:Landroid/view/DisplayShape;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    iget p1, p1, Landroid/graphics/Rect;->top:I

    neg-int p1, p1

    invoke-virtual {v0, v1, p1}, Landroid/view/DisplayShape;->setOffset(II)Landroid/view/DisplayShape;

    move-result-object p1

    return-object p1
.end method

.method private blacklist calculateRelativePrivacyIndicatorBounds(Landroid/graphics/Rect;)Landroid/view/PrivacyIndicatorBounds;
    .registers 6

    .line 271
    iget-object v0, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 272
    iget-object p1, p0, Landroid/view/InsetsState;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    return-object p1

    .line 274
    :cond_b
    if-nez p1, :cond_f

    .line 275
    const/4 p1, 0x0

    return-object p1

    .line 277
    :cond_f
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    .line 278
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    .line 279
    iget-object v2, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    .line 280
    iget-object v3, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, p1

    .line 281
    iget-object p1, p0, Landroid/view/InsetsState;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/PrivacyIndicatorBounds;->inset(IIII)Landroid/view/PrivacyIndicatorBounds;

    move-result-object p1

    return-object p1
.end method

.method private blacklist calculateRelativeRoundedCorners(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/RoundedCorners;
    .registers 7

    .line 242
    if-nez p1, :cond_5

    .line 243
    sget-object p1, Landroid/view/RoundedCorners;->NO_ROUNDED_CORNERS:Landroid/view/RoundedCorners;

    return-object p1

    .line 247
    :cond_5
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/view/InsetsState;->mRoundedCornerFrame:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 248
    iget-object v1, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_14
    if-ltz v1, :cond_30

    .line 249
    iget-object v2, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InsetsSource;

    .line 250
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/view/InsetsSource;->hasFlags(I)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 251
    const/4 v3, 0x0

    invoke-virtual {v2, v0, p2, v3}, Landroid/view/InsetsSource;->calculateInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/graphics/Insets;

    move-result-object v2

    .line 253
    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    .line 248
    :cond_2d
    add-int/lit8 v1, v1, -0x1

    goto :goto_14

    .line 256
    :cond_30
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_45

    iget-object p2, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_45

    .line 257
    iget-object p2, p0, Landroid/view/InsetsState;->mRoundedCorners:Landroid/view/RoundedCorners;

    invoke-virtual {p2, p1, v0}, Landroid/view/RoundedCorners;->insetWithFrame(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/RoundedCorners;

    move-result-object p1

    return-object p1

    .line 259
    :cond_45
    iget-object p2, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_50

    .line 260
    iget-object p1, p0, Landroid/view/InsetsState;->mRoundedCorners:Landroid/view/RoundedCorners;

    return-object p1

    .line 262
    :cond_50
    iget p2, p1, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr p2, v0

    .line 263
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    .line 264
    iget-object v1, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    .line 265
    iget-object v2, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, p1

    .line 266
    iget-object p1, p0, Landroid/view/InsetsState;->mRoundedCorners:Landroid/view/RoundedCorners;

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/view/RoundedCorners;->inset(IIII)Landroid/view/RoundedCorners;

    move-result-object p1

    return-object p1
.end method

.method private static blacklist canControlSource(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/InsetsSource;)Z
    .registers 5

    .line 372
    const/4 v0, 0x1

    invoke-virtual {p2, p0, p1, v0}, Landroid/view/InsetsSource;->calculateInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/graphics/Insets;

    move-result-object p0

    .line 374
    invoke-virtual {p2}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object p1

    .line 375
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p2

    .line 376
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    .line 377
    iget v1, p0, Landroid/graphics/Insets;->left:I

    if-eq v1, p2, :cond_23

    iget v1, p0, Landroid/graphics/Insets;->right:I

    if-eq v1, p2, :cond_23

    iget p2, p0, Landroid/graphics/Insets;->top:I

    if-eq p2, p1, :cond_23

    iget p0, p0, Landroid/graphics/Insets;->bottom:I

    if-ne p0, p1, :cond_22

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    :cond_23
    :goto_23
    return v0
.end method

.method public static blacklist clearsCompatInsets(IIII)Z
    .registers 4

    .line 724
    and-int/lit16 p1, p1, 0x200

    if-eqz p1, :cond_12

    const/16 p1, 0x7dd

    if-eq p0, p1, :cond_12

    const/16 p1, 0x7da

    if-eq p0, p1, :cond_12

    const/4 p0, 0x1

    if-eqz p3, :cond_11

    if-eq p2, p0, :cond_12

    :cond_11
    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method private static blacklist concatenate([Landroid/graphics/Rect;[Landroid/graphics/Rect;)[Landroid/graphics/Rect;
    .registers 5

    .line 456
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [Landroid/graphics/Rect;

    .line 457
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 458
    array-length p0, p0

    array-length v1, p1

    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 459
    return-object v0
.end method

.method private blacklist processSource(Landroid/view/InsetsSource;Landroid/graphics/Rect;Landroid/graphics/Rect;Z[Landroid/graphics/Insets;Landroid/util/SparseIntArray;[Z[[Landroid/graphics/Rect;)V
    .registers 18

    .line 385
    invoke-virtual/range {p1 .. p4}, Landroid/view/InsetsSource;->calculateInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/graphics/Insets;

    move-result-object v6

    .line 386
    invoke-virtual {p1, p2, p4}, Landroid/view/InsetsSource;->calculateBoundingRects(Landroid/graphics/Rect;Z)[Landroid/graphics/Rect;

    move-result-object v7

    .line 388
    invoke-virtual {p1}, Landroid/view/InsetsSource;->getType()I

    move-result v8

    .line 389
    move-object v0, p0

    move-object v1, p1

    move-object v2, p5

    move-object v3, p6

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    invoke-direct/range {v0 .. v8}, Landroid/view/InsetsState;->processSourceAsPublicType(Landroid/view/InsetsSource;[Landroid/graphics/Insets;Landroid/util/SparseIntArray;[Z[[Landroid/graphics/Rect;Landroid/graphics/Insets;[Landroid/graphics/Rect;I)V

    .line 392
    move p2, v8

    const/16 p3, 0x20

    if-ne p2, p3, :cond_29

    .line 398
    const/16 v8, 0x10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p5

    move-object v3, p6

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    invoke-direct/range {v0 .. v8}, Landroid/view/InsetsState;->processSourceAsPublicType(Landroid/view/InsetsSource;[Landroid/graphics/Insets;Landroid/util/SparseIntArray;[Z[[Landroid/graphics/Rect;Landroid/graphics/Insets;[Landroid/graphics/Rect;I)V

    .line 401
    :cond_29
    const/4 p3, 0x4

    if-ne p2, p3, :cond_43

    .line 405
    const/16 v8, 0x10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p5

    move-object v3, p6

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    invoke-direct/range {v0 .. v8}, Landroid/view/InsetsState;->processSourceAsPublicType(Landroid/view/InsetsSource;[Landroid/graphics/Insets;Landroid/util/SparseIntArray;[Z[[Landroid/graphics/Rect;Landroid/graphics/Insets;[Landroid/graphics/Rect;I)V

    .line 407
    const/16 v8, 0x20

    invoke-direct/range {v0 .. v8}, Landroid/view/InsetsState;->processSourceAsPublicType(Landroid/view/InsetsSource;[Landroid/graphics/Insets;Landroid/util/SparseIntArray;[Z[[Landroid/graphics/Rect;Landroid/graphics/Insets;[Landroid/graphics/Rect;I)V

    .line 409
    const/16 v8, 0x40

    invoke-direct/range {v0 .. v8}, Landroid/view/InsetsState;->processSourceAsPublicType(Landroid/view/InsetsSource;[Landroid/graphics/Insets;Landroid/util/SparseIntArray;[Z[[Landroid/graphics/Rect;Landroid/graphics/Insets;[Landroid/graphics/Rect;I)V

    .line 412
    :cond_43
    return-void
.end method

.method private blacklist processSourceAsPublicType(Landroid/view/InsetsSource;[Landroid/graphics/Insets;Landroid/util/SparseIntArray;[Z[[Landroid/graphics/Rect;Landroid/graphics/Insets;[Landroid/graphics/Rect;I)V
    .registers 10

    .line 418
    invoke-static {p8}, Landroid/view/WindowInsets$Type;->indexOf(I)I

    move-result p8

    .line 423
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    invoke-virtual {v0, p6}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 424
    aget-object v0, p2, p8

    .line 425
    if-nez v0, :cond_13

    .line 426
    aput-object p6, p2, p8

    goto :goto_19

    .line 428
    :cond_13
    invoke-static {v0, p6}, Landroid/graphics/Insets;->max(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    move-result-object v0

    aput-object v0, p2, p8

    .line 432
    :cond_19
    :goto_19
    if-eqz p4, :cond_21

    .line 433
    invoke-virtual {p1}, Landroid/view/InsetsSource;->isVisible()Z

    move-result p2

    aput-boolean p2, p4, p8

    .line 436
    :cond_21
    if-eqz p3, :cond_31

    .line 438
    invoke-static {p6}, Landroid/view/InsetsSource;->getInsetSide(Landroid/graphics/Insets;)I

    move-result p2

    .line 439
    const/4 p4, 0x5

    if-eq p2, p4, :cond_31

    .line 440
    invoke-virtual {p1}, Landroid/view/InsetsSource;->getId()I

    move-result p1

    invoke-virtual {p3, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 444
    :cond_31
    if-eqz p5, :cond_43

    array-length p1, p7

    if-lez p1, :cond_43

    .line 445
    aget-object p1, p5, p8

    .line 446
    if-nez p1, :cond_3d

    .line 447
    aput-object p7, p5, p8

    goto :goto_43

    .line 449
    :cond_3d
    invoke-static {p1, p7}, Landroid/view/InsetsState;->concatenate([Landroid/graphics/Rect;[Landroid/graphics/Rect;)[Landroid/graphics/Rect;

    move-result-object p1

    aput-object p1, p5, p8

    .line 452
    :cond_43
    :goto_43
    return-void
.end method

.method public static blacklist traverse(Landroid/view/InsetsState;Landroid/view/InsetsState;Landroid/view/InsetsState$OnTraverseCallbacks;)V
    .registers 9

    .line 942
    invoke-interface {p2, p0, p1}, Landroid/view/InsetsState$OnTraverseCallbacks;->onStart(Landroid/view/InsetsState;Landroid/view/InsetsState;)V

    .line 943
    invoke-virtual {p0}, Landroid/view/InsetsState;->sourceSize()I

    move-result v0

    .line 944
    invoke-virtual {p1}, Landroid/view/InsetsState;->sourceSize()I

    move-result v1

    .line 945
    nop

    .line 946
    const/4 v2, 0x0

    move v3, v2

    .line 947
    :goto_e
    if-ge v2, v0, :cond_53

    if-ge v3, v1, :cond_53

    .line 948
    invoke-virtual {p0, v2}, Landroid/view/InsetsState;->sourceIdAt(I)I

    move-result v4

    .line 949
    invoke-virtual {p1, v3}, Landroid/view/InsetsState;->sourceIdAt(I)I

    move-result v5

    .line 950
    :goto_1a
    if-eq v4, v5, :cond_3e

    .line 951
    if-ge v4, v5, :cond_2e

    .line 952
    invoke-virtual {p0, v2}, Landroid/view/InsetsState;->sourceAt(I)Landroid/view/InsetsSource;

    move-result-object v4

    invoke-interface {p2, v2, v4}, Landroid/view/InsetsState$OnTraverseCallbacks;->onIdNotFoundInState2(ILandroid/view/InsetsSource;)V

    .line 953
    add-int/lit8 v2, v2, 0x1

    .line 954
    if-ge v2, v0, :cond_3e

    .line 955
    invoke-virtual {p0, v2}, Landroid/view/InsetsState;->sourceIdAt(I)I

    move-result v4

    goto :goto_1a

    .line 960
    :cond_2e
    invoke-virtual {p1, v3}, Landroid/view/InsetsState;->sourceAt(I)Landroid/view/InsetsSource;

    move-result-object v5

    invoke-interface {p2, v3, v5}, Landroid/view/InsetsState$OnTraverseCallbacks;->onIdNotFoundInState1(ILandroid/view/InsetsSource;)V

    .line 961
    add-int/lit8 v3, v3, 0x1

    .line 962
    if-ge v3, v1, :cond_3e

    .line 963
    invoke-virtual {p1, v3}, Landroid/view/InsetsState;->sourceIdAt(I)I

    move-result v5

    goto :goto_1a

    .line 969
    :cond_3e
    if-ge v2, v0, :cond_53

    if-lt v3, v1, :cond_43

    .line 970
    goto :goto_53

    .line 972
    :cond_43
    invoke-virtual {p0, v2}, Landroid/view/InsetsState;->sourceAt(I)Landroid/view/InsetsSource;

    move-result-object v4

    .line 973
    invoke-virtual {p1, v3}, Landroid/view/InsetsState;->sourceAt(I)Landroid/view/InsetsSource;

    move-result-object v5

    .line 974
    invoke-interface {p2, v4, v5}, Landroid/view/InsetsState$OnTraverseCallbacks;->onIdMatch(Landroid/view/InsetsSource;Landroid/view/InsetsSource;)V

    .line 975
    add-int/lit8 v2, v2, 0x1

    .line 976
    add-int/lit8 v3, v3, 0x1

    .line 977
    goto :goto_e

    .line 978
    :cond_53
    :goto_53
    if-ge v3, v1, :cond_5f

    .line 979
    invoke-virtual {p1, v3}, Landroid/view/InsetsState;->sourceAt(I)Landroid/view/InsetsSource;

    move-result-object v4

    invoke-interface {p2, v3, v4}, Landroid/view/InsetsState$OnTraverseCallbacks;->onIdNotFoundInState1(ILandroid/view/InsetsSource;)V

    .line 980
    add-int/lit8 v3, v3, 0x1

    goto :goto_53

    .line 982
    :cond_5f
    :goto_5f
    if-ge v2, v0, :cond_6b

    .line 983
    invoke-virtual {p0, v2}, Landroid/view/InsetsState;->sourceAt(I)Landroid/view/InsetsSource;

    move-result-object v1

    invoke-interface {p2, v2, v1}, Landroid/view/InsetsState$OnTraverseCallbacks;->onIdNotFoundInState2(ILandroid/view/InsetsSource;)V

    .line 984
    add-int/lit8 v2, v2, 0x1

    goto :goto_5f

    .line 986
    :cond_6b
    invoke-interface {p2, p0, p1}, Landroid/view/InsetsState$OnTraverseCallbacks;->onFinish(Landroid/view/InsetsState;Landroid/view/InsetsState;)V

    .line 987
    return-void
.end method


# virtual methods
.method public blacklist addSource(Landroid/view/InsetsSource;)V
    .registers 4

    .line 719
    iget-object v0, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/InsetsSource;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 720
    return-void
.end method

.method public blacklist calculateInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;II)Landroid/graphics/Insets;
    .registers 10

    .line 313
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    .line 314
    iget-object v1, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_a
    if-ltz v1, :cond_28

    .line 315
    iget-object v3, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/InsetsSource;

    .line 316
    invoke-virtual {v3}, Landroid/view/InsetsSource;->getType()I

    move-result v4

    and-int/2addr v4, p3

    and-int/2addr v4, p4

    if-nez v4, :cond_1d

    .line 317
    goto :goto_25

    .line 319
    :cond_1d
    invoke-virtual {v3, p1, p2, v2}, Landroid/view/InsetsSource;->calculateInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/graphics/Insets;

    move-result-object v3

    invoke-static {v3, v0}, Landroid/graphics/Insets;->max(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    move-result-object v0

    .line 314
    :goto_25
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    .line 321
    :cond_28
    return-object v0
.end method

.method public blacklist calculateInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;
    .registers 9

    .line 298
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    .line 299
    iget-object v1, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_a
    if-ltz v1, :cond_27

    .line 300
    iget-object v2, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InsetsSource;

    .line 301
    invoke-virtual {v2}, Landroid/view/InsetsSource;->getType()I

    move-result v3

    and-int/2addr v3, p3

    if-nez v3, :cond_1c

    .line 302
    goto :goto_24

    .line 304
    :cond_1c
    invoke-virtual {v2, p1, p2, p4}, Landroid/view/InsetsSource;->calculateInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/graphics/Insets;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/graphics/Insets;->max(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    move-result-object v0

    .line 299
    :goto_24
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    .line 307
    :cond_27
    return-object v0
.end method

.method public blacklist calculateInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/InsetsState;ZIIIIILandroid/util/SparseIntArray;)Landroid/view/WindowInsets;
    .registers 36

    .line 144
    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p3

    move/from16 v11, p6

    sget-object v1, Landroid/view/WindowInsets$Type;->TYPES:[I

    array-length v1, v1

    new-array v5, v1, [Landroid/graphics/Insets;

    .line 145
    sget-object v1, Landroid/view/WindowInsets$Type;->TYPES:[I

    array-length v1, v1

    new-array v12, v1, [Landroid/graphics/Insets;

    .line 146
    sget-object v1, Landroid/view/WindowInsets$Type;->TYPES:[I

    array-length v1, v1

    new-array v7, v1, [Z

    .line 147
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v9}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 148
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13, v9}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 150
    nop

    .line 151
    nop

    .line 153
    nop

    .line 154
    sget-object v1, Landroid/view/WindowInsets$Type;->TYPES:[I

    array-length v1, v1

    new-array v8, v1, [[Landroid/graphics/Rect;

    .line 155
    sget-object v1, Landroid/view/WindowInsets$Type;->TYPES:[I

    array-length v1, v1

    new-array v14, v1, [[Landroid/graphics/Rect;

    .line 156
    iget-object v1, v0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v15, 0x1

    sub-int/2addr v1, v15

    const/16 v16, 0x0

    move-object v3, v7

    move-object v4, v8

    move/from16 v7, v16

    move v8, v7

    move v9, v8

    :goto_3e
    if-ltz v1, :cond_d1

    .line 157
    iget-object v6, v0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/InsetsSource;

    .line 159
    invoke-virtual {v6}, Landroid/view/InsetsSource;->getType()I

    move-result v15

    .line 161
    invoke-virtual {v6}, Landroid/view/InsetsSource;->getFlags()I

    move-result v18

    .line 163
    and-int/lit8 v19, v18, 0x4

    if-eqz v19, :cond_58

    .line 164
    or-int/2addr v7, v15

    move/from16 v19, v7

    goto :goto_5a

    .line 163
    :cond_58
    move/from16 v19, v7

    .line 167
    :goto_5a
    sget-object v7, Landroid/window/DesktopModeFlags;->ENABLE_CAPTION_COMPAT_INSET_FORCE_CONSUMPTION_ALWAYS:Landroid/window/DesktopModeFlags;

    invoke-virtual {v7}, Landroid/window/DesktopModeFlags;->isTrue()Z

    move-result v7

    if-eqz v7, :cond_69

    and-int/lit8 v7, v18, 0x10

    if-eqz v7, :cond_69

    .line 169
    const/16 v20, 0x1

    goto :goto_6b

    .line 172
    :cond_69
    move/from16 v20, v8

    :goto_6b
    and-int/lit8 v7, v18, 0x1

    if-eqz v7, :cond_70

    .line 173
    or-int/2addr v9, v15

    .line 176
    :cond_70
    move-object v8, v4

    const/4 v4, 0x0

    move/from16 v18, v1

    move-object v7, v3

    move-object v1, v6

    move-object/from16 v3, p2

    move-object/from16 v6, p10

    invoke-direct/range {v0 .. v8}, Landroid/view/InsetsState;->processSource(Landroid/view/InsetsSource;Landroid/graphics/Rect;Landroid/graphics/Rect;Z[Landroid/graphics/Insets;Landroid/util/SparseIntArray;[Z[[Landroid/graphics/Rect;)V

    .line 181
    move-object/from16 v23, v2

    move-object/from16 v21, v5

    move-object/from16 v22, v7

    move/from16 v24, v16

    move-object/from16 v16, v8

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v0

    if-eq v15, v0, :cond_b3

    .line 182
    if-eqz v10, :cond_99

    .line 183
    invoke-virtual {v1}, Landroid/view/InsetsSource;->getId()I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v6

    move-object v1, v6

    goto :goto_9a

    .line 184
    :cond_99
    nop

    .line 185
    :goto_9a
    if-nez v1, :cond_a2

    .line 186
    move-object v5, v12

    move-object v2, v13

    move-object/from16 v17, v14

    const/4 v0, 0x1

    goto :goto_b8

    .line 188
    :cond_a2
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v3, p2

    move-object v5, v12

    move-object v2, v13

    move-object v8, v14

    invoke-direct/range {v0 .. v8}, Landroid/view/InsetsState;->processSource(Landroid/view/InsetsSource;Landroid/graphics/Rect;Landroid/graphics/Rect;Z[Landroid/graphics/Insets;Landroid/util/SparseIntArray;[Z[[Landroid/graphics/Rect;)V

    move-object/from16 v17, v8

    const/4 v0, 0x1

    goto :goto_b8

    .line 181
    :cond_b3
    move-object v5, v12

    move-object v2, v13

    move-object/from16 v17, v14

    const/4 v0, 0x1

    .line 156
    :goto_b8
    add-int/lit8 v1, v18, -0x1

    move v15, v0

    move-object v13, v2

    move-object v12, v5

    move-object/from16 v4, v16

    move-object/from16 v14, v17

    move/from16 v7, v19

    move/from16 v8, v20

    move-object/from16 v5, v21

    move-object/from16 v3, v22

    move-object/from16 v2, v23

    move/from16 v16, v24

    move-object/from16 v0, p0

    goto/16 :goto_3e

    .line 193
    :cond_d1
    move-object/from16 v22, v3

    move-object/from16 v21, v5

    move-object v5, v12

    move-object/from16 v17, v14

    move v0, v15

    move/from16 v24, v16

    move-object/from16 v16, v4

    move/from16 v1, p5

    and-int/lit16 v1, v1, 0xf0

    .line 196
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v2

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v3

    or-int/2addr v2, v3

    .line 197
    const/16 v3, 0x10

    if-ne v1, v3, :cond_f3

    .line 198
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    or-int/2addr v2, v1

    .line 200
    :cond_f3
    and-int/lit16 v1, v11, 0x400

    if-eqz v1, :cond_fd

    .line 201
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v1

    not-int v1, v1

    and-int/2addr v2, v1

    .line 203
    :cond_fd
    move/from16 v1, p8

    move/from16 v3, p9

    invoke-static {v1, v11, v3, v7}, Landroid/view/InsetsState;->clearsCompatInsets(IIII)Z

    move-result v1

    if-eqz v1, :cond_10a

    .line 204
    move/from16 v14, v24

    goto :goto_10b

    .line 203
    :cond_10a
    move v14, v2

    .line 207
    :goto_10b
    new-instance v2, Landroid/view/WindowInsets;

    .line 209
    invoke-direct/range {p0 .. p1}, Landroid/view/InsetsState;->calculateRelativeCutout(Landroid/graphics/Rect;)Landroid/view/DisplayCutout;

    move-result-object v10

    .line 210
    invoke-direct/range {p0 .. p2}, Landroid/view/InsetsState;->calculateRelativeRoundedCorners(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/RoundedCorners;

    move-result-object v11

    .line 211
    invoke-direct/range {p0 .. p1}, Landroid/view/InsetsState;->calculateRelativePrivacyIndicatorBounds(Landroid/graphics/Rect;)Landroid/view/PrivacyIndicatorBounds;

    move-result-object v12

    .line 212
    invoke-direct/range {p0 .. p1}, Landroid/view/InsetsState;->calculateRelativeDisplayShape(Landroid/graphics/Rect;)Landroid/view/DisplayShape;

    move-result-object v13

    move/from16 v1, p7

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_125

    move v15, v0

    goto :goto_127

    :cond_125
    move/from16 v15, v24

    .line 214
    :goto_127
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v18

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v19

    move/from16 v6, p4

    move-object v4, v5

    move-object/from16 v3, v21

    move-object/from16 v5, v22

    invoke-direct/range {v2 .. v19}, Landroid/view/WindowInsets;-><init>([Landroid/graphics/Insets;[Landroid/graphics/Insets;[ZZIZILandroid/view/DisplayCutout;Landroid/view/RoundedCorners;Landroid/view/PrivacyIndicatorBounds;Landroid/view/DisplayShape;IZ[[Landroid/graphics/Rect;[[Landroid/graphics/Rect;II)V

    .line 207
    return-object v2
.end method

.method public blacklist calculateUncontrollableInsetsFromFrame(Landroid/graphics/Rect;Landroid/graphics/Rect;)I
    .registers 7

    .line 360
    nop

    .line 361
    iget-object v0, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_a
    if-ltz v0, :cond_22

    .line 362
    iget-object v2, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InsetsSource;

    .line 363
    invoke-static {p1, p2, v2}, Landroid/view/InsetsState;->canControlSource(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/InsetsSource;)Z

    move-result v3

    if-nez v3, :cond_1f

    .line 364
    invoke-virtual {v2}, Landroid/view/InsetsSource;->getType()I

    move-result v2

    or-int/2addr v1, v2

    .line 361
    :cond_1f
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 367
    :cond_22
    return v1
.end method

.method public blacklist calculateVisibleInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;IIII)Landroid/graphics/Insets;
    .registers 12

    .line 328
    and-int/lit16 p5, p5, 0xf0

    .line 329
    const/16 v0, 0x30

    if-eq p5, v0, :cond_15

    .line 330
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result p5

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v0

    or-int/2addr p5, v0

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v0

    or-int/2addr p5, v0

    goto :goto_1e

    .line 331
    :cond_15
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result p5

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v0

    or-int/2addr p5, v0

    .line 333
    :goto_1e
    nop

    .line 334
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    .line 335
    iget-object v1, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    :goto_2a
    if-ltz v1, :cond_53

    .line 336
    iget-object v3, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/InsetsSource;

    .line 337
    invoke-virtual {v3}, Landroid/view/InsetsSource;->getType()I

    move-result v4

    and-int/2addr v4, p5

    if-nez v4, :cond_3c

    .line 338
    goto :goto_50

    .line 340
    :cond_3c
    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/InsetsSource;->hasFlags(I)Z

    move-result v4

    if-eqz v4, :cond_48

    .line 341
    invoke-virtual {v3}, Landroid/view/InsetsSource;->getType()I

    move-result v4

    or-int/2addr v2, v4

    .line 343
    :cond_48
    invoke-virtual {v3, p1, p2}, Landroid/view/InsetsSource;->calculateVisibleInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Insets;

    move-result-object v3

    invoke-static {v3, v0}, Landroid/graphics/Insets;->max(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    move-result-object v0

    .line 335
    :goto_50
    add-int/lit8 v1, v1, -0x1

    goto :goto_2a

    .line 345
    :cond_53
    invoke-static {p3, p6, p4, v2}, Landroid/view/InsetsState;->clearsCompatInsets(IIII)Z

    move-result p1

    if-eqz p1, :cond_5c

    .line 346
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    goto :goto_5d

    .line 347
    :cond_5c
    nop

    .line 345
    :goto_5d
    return-object v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 855
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 8

    .line 734
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 735
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "InsetsState"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 736
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "mDisplayFrame="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v2, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 737
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "mDisplayCutout="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v2, p0, Landroid/view/InsetsState;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-virtual {v2}, Landroid/view/DisplayCutout$ParcelableWrapper;->get()Landroid/view/DisplayCutout;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 738
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "mRoundedCorners="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v2, p0, Landroid/view/InsetsState;->mRoundedCorners:Landroid/view/RoundedCorners;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 739
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "mRoundedCornerFrame="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v2, p0, Landroid/view/InsetsState;->mRoundedCornerFrame:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 740
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "mPrivacyIndicatorBounds="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v2, p0, Landroid/view/InsetsState;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 741
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "mDisplayShape="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v2, p0, Landroid/view/InsetsState;->mDisplayShape:Landroid/view/DisplayShape;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 742
    iget-object p1, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 v2, 0x0

    :goto_dc
    if-ge v2, p1, :cond_fd

    .line 743
    iget-object v3, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/InsetsSource;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Landroid/view/InsetsSource;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 742
    add-int/lit8 v2, v2, 0x1

    goto :goto_dc

    .line 745
    :cond_fd
    return-void
.end method

.method blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 7

    .line 748
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 749
    iget-object v0, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    sget v1, Landroid/view/InsetsSource;->ID_IME:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/InsetsSource;

    .line 750
    if-eqz v0, :cond_18

    .line 751
    const-wide v1, 0x20b00000001L

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/InsetsSource;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 753
    :cond_18
    iget-object v0, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    const-wide v1, 0x10b00000002L

    invoke-virtual {v0, p1, v1, v2}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 754
    iget-object v0, p0, Landroid/view/InsetsState;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-virtual {v0}, Landroid/view/DisplayCutout$ParcelableWrapper;->get()Landroid/view/DisplayCutout;

    move-result-object v0

    const-wide v1, 0x10b00000003L

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/DisplayCutout;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 755
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 756
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3

    .line 760
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0, v0}, Landroid/view/InsetsState;->equals(Ljava/lang/Object;ZZZ)Z

    move-result p1

    return p1
.end method

.method public blacklist equals(Ljava/lang/Object;ZZZ)Z
    .registers 18

    .line 777
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 778
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_104

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    goto/16 :goto_104

    .line 780
    :cond_13
    check-cast p1, Landroid/view/InsetsState;

    .line 782
    iget-object v2, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    iget-object v3, p1, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_103

    iget-object v2, p0, Landroid/view/InsetsState;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    iget-object v3, p1, Landroid/view/InsetsState;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    .line 783
    invoke-virtual {v2, v3}, Landroid/view/DisplayCutout$ParcelableWrapper;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_103

    iget-object v2, p0, Landroid/view/InsetsState;->mRoundedCorners:Landroid/view/RoundedCorners;

    iget-object v3, p1, Landroid/view/InsetsState;->mRoundedCorners:Landroid/view/RoundedCorners;

    .line 784
    invoke-virtual {v2, v3}, Landroid/view/RoundedCorners;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_103

    iget-object v2, p0, Landroid/view/InsetsState;->mRoundedCornerFrame:Landroid/graphics/Rect;

    iget-object v3, p1, Landroid/view/InsetsState;->mRoundedCornerFrame:Landroid/graphics/Rect;

    .line 785
    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_103

    iget-object v2, p0, Landroid/view/InsetsState;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    iget-object v3, p1, Landroid/view/InsetsState;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    .line 786
    invoke-virtual {v2, v3}, Landroid/view/PrivacyIndicatorBounds;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_103

    iget-object v2, p0, Landroid/view/InsetsState;->mDisplayShape:Landroid/view/DisplayShape;

    iget-object v3, p1, Landroid/view/InsetsState;->mDisplayShape:Landroid/view/DisplayShape;

    .line 787
    invoke-virtual {v2, v3}, Landroid/view/DisplayShape;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_53

    goto/16 :goto_103

    .line 792
    :cond_53
    iget-object v2, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    .line 793
    iget-object p1, p1, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    .line 794
    if-nez p2, :cond_62

    if-nez p3, :cond_62

    if-nez p4, :cond_62

    .line 795
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->contentEquals(Landroid/util/SparseArray;)Z

    move-result p1

    return p1

    .line 797
    :cond_62
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 798
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 799
    nop

    .line 800
    move v5, v1

    move v6, v5

    .line 801
    :goto_6d
    if-lt v5, v3, :cond_73

    if-ge v6, v4, :cond_72

    goto :goto_73

    .line 839
    :cond_72
    return v0

    .line 802
    :cond_73
    :goto_73
    const/4 v7, 0x0

    if-ge v5, v3, :cond_7d

    .line 803
    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/InsetsSource;

    goto :goto_7e

    .line 804
    :cond_7d
    move-object v8, v7

    :goto_7e
    nop

    .line 807
    :goto_7f
    const/16 v9, 0x20

    if-eqz v8, :cond_b6

    if-eqz p2, :cond_8f

    .line 808
    invoke-virtual {v8}, Landroid/view/InsetsSource;->getType()I

    move-result v10

    invoke-static {}, Landroid/view/WindowInsets$Type;->captionBar()I

    move-result v11

    if-eq v10, v11, :cond_a9

    :cond_8f
    if-eqz p3, :cond_a1

    .line 809
    invoke-virtual {v8}, Landroid/view/InsetsSource;->getType()I

    move-result v10

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v11

    if-ne v10, v11, :cond_a1

    .line 810
    invoke-virtual {v8}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v10

    if-eqz v10, :cond_a9

    :cond_a1
    if-eqz p4, :cond_b6

    .line 812
    invoke-virtual {v8, v9}, Landroid/view/InsetsSource;->hasFlags(I)Z

    move-result v10

    if-eqz v10, :cond_b6

    .line 813
    :cond_a9
    add-int/lit8 v5, v5, 0x1

    .line 814
    if-ge v5, v3, :cond_b4

    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/InsetsSource;

    goto :goto_7f

    :cond_b4
    move-object v8, v7

    goto :goto_7f

    .line 817
    :cond_b6
    if-ge v6, v4, :cond_bf

    .line 818
    invoke-virtual {p1, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/InsetsSource;

    goto :goto_c0

    .line 819
    :cond_bf
    move-object v10, v7

    :goto_c0
    nop

    .line 822
    :goto_c1
    if-eqz v10, :cond_f6

    if-eqz p2, :cond_cf

    .line 823
    invoke-virtual {v10}, Landroid/view/InsetsSource;->getType()I

    move-result v11

    invoke-static {}, Landroid/view/WindowInsets$Type;->captionBar()I

    move-result v12

    if-eq v11, v12, :cond_e9

    :cond_cf
    if-eqz p3, :cond_e1

    .line 824
    invoke-virtual {v10}, Landroid/view/InsetsSource;->getType()I

    move-result v11

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v12

    if-ne v11, v12, :cond_e1

    .line 825
    invoke-virtual {v10}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v11

    if-eqz v11, :cond_e9

    :cond_e1
    if-eqz p4, :cond_f6

    .line 827
    invoke-virtual {v10, v9}, Landroid/view/InsetsSource;->hasFlags(I)Z

    move-result v11

    if-eqz v11, :cond_f6

    .line 828
    :cond_e9
    add-int/lit8 v6, v6, 0x1

    .line 829
    if-ge v6, v4, :cond_f4

    invoke-virtual {p1, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/InsetsSource;

    goto :goto_c1

    :cond_f4
    move-object v10, v7

    goto :goto_c1

    .line 832
    :cond_f6
    invoke-static {v8, v10}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_fd

    .line 833
    return v1

    .line 836
    :cond_fd
    add-int/lit8 v5, v5, 0x1

    .line 837
    add-int/lit8 v6, v6, 0x1

    .line 838
    goto/16 :goto_6d

    .line 789
    :cond_103
    :goto_103
    return v1

    .line 778
    :cond_104
    :goto_104
    return v1
.end method

.method public blacklist getDisplayCutout()Landroid/view/DisplayCutout;
    .registers 2

    .line 535
    iget-object v0, p0, Landroid/view/InsetsState;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-virtual {v0}, Landroid/view/DisplayCutout$ParcelableWrapper;->get()Landroid/view/DisplayCutout;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDisplayCutoutSafe(Landroid/graphics/Rect;)V
    .registers 6

    .line 539
    const v0, -0x186a0

    const v1, 0x186a0

    invoke-virtual {p1, v0, v0, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 541
    iget-object v0, p0, Landroid/view/InsetsState;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-virtual {v0}, Landroid/view/DisplayCutout$ParcelableWrapper;->get()Landroid/view/DisplayCutout;

    move-result-object v0

    .line 542
    iget-object v1, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    .line 543
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_53

    .line 544
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v2

    if-lez v2, :cond_26

    .line 545
    iget v2, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 547
    :cond_26
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v2

    if-lez v2, :cond_35

    .line 548
    iget v2, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 550
    :cond_35
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v2

    if-lez v2, :cond_44

    .line 551
    iget v2, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 553
    :cond_44
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v2

    if-lez v2, :cond_53

    .line 554
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v0

    sub-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 557
    :cond_53
    return-void
.end method

.method public blacklist getDisplayFrame()Landroid/graphics/Rect;
    .registers 2

    .line 526
    iget-object v0, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method public blacklist getDisplayShape()Landroid/view/DisplayShape;
    .registers 2

    .line 592
    iget-object v0, p0, Landroid/view/InsetsState;->mDisplayShape:Landroid/view/DisplayShape;

    return-object v0
.end method

.method public blacklist getOrCreateSource(II)Landroid/view/InsetsSource;
    .registers 4

    .line 467
    iget-object v0, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/InsetsSource;

    .line 468
    if-eqz v0, :cond_b

    .line 469
    return-object v0

    .line 471
    :cond_b
    new-instance v0, Landroid/view/InsetsSource;

    invoke-direct {v0, p1, p2}, Landroid/view/InsetsSource;-><init>(II)V

    .line 472
    iget-object p2, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {p2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 473
    return-object v0
.end method

.method public blacklist getPrivacyIndicatorBounds()Landroid/view/PrivacyIndicatorBounds;
    .registers 2

    .line 583
    iget-object v0, p0, Landroid/view/InsetsState;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    return-object v0
.end method

.method public blacklist getRoundedCorners()Landroid/view/RoundedCorners;
    .registers 2

    .line 565
    iget-object v0, p0, Landroid/view/InsetsState;->mRoundedCorners:Landroid/view/RoundedCorners;

    return-object v0
.end method

.method public blacklist getSeq()I
    .registers 2

    .line 649
    iget v0, p0, Landroid/view/InsetsState;->mSeq:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 8

    .line 845
    iget-object v0, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/view/InsetsState;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    iget-object v2, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->contentHashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Landroid/view/InsetsState;->mRoundedCorners:Landroid/view/RoundedCorners;

    iget-object v4, p0, Landroid/view/InsetsState;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    iget-object v5, p0, Landroid/view/InsetsState;->mRoundedCornerFrame:Landroid/graphics/Rect;

    iget-object v6, p0, Landroid/view/InsetsState;->mDisplayShape:Landroid/view/DisplayShape;

    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isSourceOrDefaultVisible(II)Z
    .registers 4

    .line 516
    iget-object v0, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/InsetsSource;

    .line 517
    if-eqz p1, :cond_f

    invoke-virtual {p1}, Landroid/view/InsetsSource;->isVisible()Z

    move-result p1

    goto :goto_19

    :cond_f
    invoke-static {}, Landroid/view/WindowInsets$Type;->defaultVisible()I

    move-result p1

    and-int/2addr p1, p2

    if-eqz p1, :cond_18

    const/4 p1, 0x1

    goto :goto_19

    :cond_18
    const/4 p1, 0x0

    :goto_19
    return p1
.end method

.method public blacklist peekSource(I)Landroid/view/InsetsSource;
    .registers 3

    .line 481
    iget-object v0, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/InsetsSource;

    return-object p1
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)Landroid/util/SparseArray;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Landroid/util/SparseArray<",
            "Landroid/view/InsetsSource;",
            ">;"
        }
    .end annotation

    .line 888
    iget-object v0, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    .line 889
    iget-object v0, p0, Landroid/view/InsetsState;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-virtual {v0, p1}, Landroid/view/DisplayCutout$ParcelableWrapper;->readFromParcel(Landroid/os/Parcel;)V

    .line 890
    sget-object v0, Landroid/view/RoundedCorners;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/RoundedCorners;

    iput-object v0, p0, Landroid/view/InsetsState;->mRoundedCorners:Landroid/view/RoundedCorners;

    .line 891
    iget-object v0, p0, Landroid/view/InsetsState;->mRoundedCornerFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    .line 892
    sget-object v0, Landroid/view/PrivacyIndicatorBounds;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/PrivacyIndicatorBounds;

    iput-object v0, p0, Landroid/view/InsetsState;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    .line 893
    sget-object v0, Landroid/view/DisplayShape;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/DisplayShape;

    iput-object v0, p0, Landroid/view/InsetsState;->mDisplayShape:Landroid/view/DisplayShape;

    .line 894
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/InsetsState;->mSeq:I

    .line 895
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 897
    iget-object v1, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    if-nez v1, :cond_41

    .line 899
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1, v0}, Landroid/util/SparseArray;-><init>(I)V

    goto :goto_46

    .line 901
    :cond_41
    iget-object v1, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    .line 902
    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 904
    :goto_46
    const/4 v2, 0x0

    :goto_47
    if-ge v2, v0, :cond_5b

    .line 905
    sget-object v3, Landroid/view/InsetsSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/InsetsSource;

    .line 906
    invoke-virtual {v3}, Landroid/view/InsetsSource;->getId()I

    move-result v4

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 904
    add-int/lit8 v2, v2, 0x1

    goto :goto_47

    .line 908
    :cond_5b
    return-object v1
.end method

.method public blacklist removeSource(I)V
    .registers 3

    .line 601
    iget-object v0, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 602
    return-void
.end method

.method public blacklist removeSourceAt(I)V
    .registers 3

    .line 610
    iget-object v0, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 611
    return-void
.end method

.method public blacklist scale(F)V
    .registers 5

    .line 632
    iget-object v0, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->scale(F)V

    .line 633
    iget-object v0, p0, Landroid/view/InsetsState;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-virtual {v0, p1}, Landroid/view/DisplayCutout$ParcelableWrapper;->scale(F)V

    .line 634
    iget-object v0, p0, Landroid/view/InsetsState;->mRoundedCorners:Landroid/view/RoundedCorners;

    invoke-virtual {v0, p1}, Landroid/view/RoundedCorners;->scale(F)Landroid/view/RoundedCorners;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InsetsState;->mRoundedCorners:Landroid/view/RoundedCorners;

    .line 635
    iget-object v0, p0, Landroid/view/InsetsState;->mRoundedCornerFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->scale(F)V

    .line 636
    iget-object v0, p0, Landroid/view/InsetsState;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    invoke-virtual {v0, p1}, Landroid/view/PrivacyIndicatorBounds;->scale(F)Landroid/view/PrivacyIndicatorBounds;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InsetsState;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    .line 637
    iget-object v0, p0, Landroid/view/InsetsState;->mDisplayShape:Landroid/view/DisplayShape;

    invoke-virtual {v0, p1}, Landroid/view/DisplayShape;->setScale(F)Landroid/view/DisplayShape;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InsetsState;->mDisplayShape:Landroid/view/DisplayShape;

    .line 638
    iget-object v0, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_2f
    if-ltz v0, :cond_4c

    .line 639
    iget-object v1, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InsetsSource;

    .line 640
    invoke-virtual {v1}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->scale(F)V

    .line 641
    invoke-virtual {v1}, Landroid/view/InsetsSource;->getVisibleFrame()Landroid/graphics/Rect;

    move-result-object v1

    .line 642
    if-eqz v1, :cond_49

    .line 643
    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->scale(F)V

    .line 638
    :cond_49
    add-int/lit8 v0, v0, -0x1

    goto :goto_2f

    .line 646
    :cond_4c
    return-void
.end method

.method public blacklist set(Landroid/view/InsetsState;)V
    .registers 3

    .line 657
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/InsetsState;->set(Landroid/view/InsetsState;Z)V

    .line 658
    return-void
.end method

.method public blacklist set(Landroid/view/InsetsState;I)V
    .registers 7

    .line 691
    if-ne p0, p1, :cond_3

    .line 692
    return-void

    .line 694
    :cond_3
    iget-object v0, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 695
    iget-object v0, p0, Landroid/view/InsetsState;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    iget-object v1, p1, Landroid/view/InsetsState;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-virtual {v0, v1}, Landroid/view/DisplayCutout$ParcelableWrapper;->set(Landroid/view/DisplayCutout$ParcelableWrapper;)V

    .line 696
    invoke-virtual {p1}, Landroid/view/InsetsState;->getRoundedCorners()Landroid/view/RoundedCorners;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InsetsState;->mRoundedCorners:Landroid/view/RoundedCorners;

    .line 697
    iget-object v0, p0, Landroid/view/InsetsState;->mRoundedCornerFrame:Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/view/InsetsState;->mRoundedCornerFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 698
    invoke-virtual {p1}, Landroid/view/InsetsState;->getPrivacyIndicatorBounds()Landroid/view/PrivacyIndicatorBounds;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InsetsState;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    .line 699
    invoke-virtual {p1}, Landroid/view/InsetsState;->getDisplayShape()Landroid/view/DisplayShape;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InsetsState;->mDisplayShape:Landroid/view/DisplayShape;

    .line 700
    iget v0, p1, Landroid/view/InsetsState;->mSeq:I

    iput v0, p0, Landroid/view/InsetsState;->mSeq:I

    .line 701
    if-nez p2, :cond_31

    .line 702
    return-void

    .line 704
    :cond_31
    iget-object v0, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_39
    if-ltz v0, :cond_52

    .line 705
    iget-object v1, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InsetsSource;

    .line 706
    invoke-virtual {v1}, Landroid/view/InsetsSource;->getType()I

    move-result v1

    and-int/2addr v1, p2

    if-eqz v1, :cond_4f

    .line 707
    iget-object v1, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 704
    :cond_4f
    add-int/lit8 v0, v0, -0x1

    goto :goto_39

    .line 710
    :cond_52
    iget-object v0, p1, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_5a
    if-ltz v0, :cond_77

    .line 711
    iget-object v1, p1, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InsetsSource;

    .line 712
    invoke-virtual {v1}, Landroid/view/InsetsSource;->getType()I

    move-result v2

    and-int/2addr v2, p2

    if-eqz v2, :cond_74

    .line 713
    iget-object v2, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/view/InsetsSource;->getId()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 710
    :cond_74
    add-int/lit8 v0, v0, -0x1

    goto :goto_5a

    .line 716
    :cond_77
    return-void
.end method

.method public blacklist set(Landroid/view/InsetsState;Z)V
    .registers 9

    .line 661
    const/4 v0, 0x0

    if-eq p0, p1, :cond_59

    .line 662
    iget-object v1, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    iget-object v2, p1, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 663
    iget-object v1, p0, Landroid/view/InsetsState;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    iget-object v2, p1, Landroid/view/InsetsState;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-virtual {v1, v2}, Landroid/view/DisplayCutout$ParcelableWrapper;->set(Landroid/view/DisplayCutout$ParcelableWrapper;)V

    .line 664
    invoke-virtual {p1}, Landroid/view/InsetsState;->getRoundedCorners()Landroid/view/RoundedCorners;

    move-result-object v1

    iput-object v1, p0, Landroid/view/InsetsState;->mRoundedCorners:Landroid/view/RoundedCorners;

    .line 665
    iget-object v1, p0, Landroid/view/InsetsState;->mRoundedCornerFrame:Landroid/graphics/Rect;

    iget-object v2, p1, Landroid/view/InsetsState;->mRoundedCornerFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 666
    invoke-virtual {p1}, Landroid/view/InsetsState;->getPrivacyIndicatorBounds()Landroid/view/PrivacyIndicatorBounds;

    move-result-object v1

    iput-object v1, p0, Landroid/view/InsetsState;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    .line 667
    invoke-virtual {p1}, Landroid/view/InsetsState;->getDisplayShape()Landroid/view/DisplayShape;

    move-result-object v1

    iput-object v1, p0, Landroid/view/InsetsState;->mDisplayShape:Landroid/view/DisplayShape;

    .line 668
    iget v1, p1, Landroid/view/InsetsState;->mSeq:I

    iput v1, p0, Landroid/view/InsetsState;->mSeq:I

    .line 669
    iget-object v1, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 670
    iget-object v1, p1, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    :goto_39
    if-ge v0, v1, :cond_78

    .line 671
    iget-object v2, p1, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InsetsSource;

    .line 672
    iget-object v3, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/view/InsetsSource;->getId()I

    move-result v4

    if-eqz p2, :cond_52

    .line 673
    new-instance v5, Landroid/view/InsetsSource;

    invoke-direct {v5, v2}, Landroid/view/InsetsSource;-><init>(Landroid/view/InsetsSource;)V

    move-object v2, v5

    goto :goto_53

    .line 674
    :cond_52
    nop

    .line 672
    :goto_53
    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 670
    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    .line 676
    :cond_59
    if-eqz p2, :cond_78

    .line 677
    iget-object p1, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    :goto_61
    if-ge v0, p1, :cond_78

    .line 678
    iget-object p2, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    new-instance v1, Landroid/view/InsetsSource;

    iget-object v2, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InsetsSource;

    invoke-direct {v1, v2}, Landroid/view/InsetsSource;-><init>(Landroid/view/InsetsSource;)V

    invoke-virtual {p2, v0, v1}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 677
    add-int/lit8 v0, v0, 0x1

    goto :goto_61

    .line 681
    :cond_78
    return-void
.end method

.method public blacklist setDisplayCutout(Landroid/view/DisplayCutout;)V
    .registers 3

    .line 530
    iget-object v0, p0, Landroid/view/InsetsState;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-virtual {v0, p1}, Landroid/view/DisplayCutout$ParcelableWrapper;->set(Landroid/view/DisplayCutout;)V

    .line 531
    return-void
.end method

.method public blacklist setDisplayFrame(Landroid/graphics/Rect;)V
    .registers 3

    .line 521
    iget-object v0, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 522
    return-void
.end method

.method public blacklist setDisplayShape(Landroid/view/DisplayShape;)V
    .registers 2

    .line 587
    iput-object p1, p0, Landroid/view/InsetsState;->mDisplayShape:Landroid/view/DisplayShape;

    .line 588
    return-void
.end method

.method public blacklist setPrivacyIndicatorBounds(Landroid/view/PrivacyIndicatorBounds;)V
    .registers 2

    .line 578
    iput-object p1, p0, Landroid/view/InsetsState;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    .line 579
    return-void
.end method

.method public blacklist setRoundedCornerFrame(Landroid/graphics/Rect;)V
    .registers 3

    .line 574
    iget-object v0, p0, Landroid/view/InsetsState;->mRoundedCornerFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 575
    return-void
.end method

.method public blacklist setRoundedCorners(Landroid/view/RoundedCorners;)V
    .registers 2

    .line 560
    iput-object p1, p0, Landroid/view/InsetsState;->mRoundedCorners:Landroid/view/RoundedCorners;

    .line 561
    return-void
.end method

.method public blacklist setSeq(I)V
    .registers 2

    .line 653
    iput p1, p0, Landroid/view/InsetsState;->mSeq:I

    .line 654
    return-void
.end method

.method public blacklist setSourceVisible(IZ)V
    .registers 4

    .line 620
    iget-object v0, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/InsetsSource;

    .line 621
    if-eqz p1, :cond_d

    .line 622
    invoke-virtual {p1, p2}, Landroid/view/InsetsSource;->setVisible(Z)Landroid/view/InsetsSource;

    .line 624
    :cond_d
    return-void
.end method

.method public blacklist sourceAt(I)Landroid/view/InsetsSource;
    .registers 3

    .line 497
    iget-object v0, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/InsetsSource;

    return-object p1
.end method

.method public blacklist sourceIdAt(I)I
    .registers 3

    .line 489
    iget-object v0, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p1

    return p1
.end method

.method public blacklist sourceSize()I
    .registers 2

    .line 504
    iget-object v0, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 913
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, ", "

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 914
    iget-object v1, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_22

    .line 915
    iget-object v3, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/InsetsSource;

    invoke-virtual {v3}, Landroid/view/InsetsSource;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 914
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 917
    :cond_22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InsetsState: {mDisplayFrame="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mDisplayCutout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/InsetsState;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mRoundedCorners="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/InsetsState;->mRoundedCorners:Landroid/view/RoundedCorners;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  mRoundedCornerFrame="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/InsetsState;->mRoundedCornerFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mPrivacyIndicatorBounds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/InsetsState;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mDisplayShape="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/InsetsState;->mDisplayShape:Landroid/view/DisplayShape;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mSources= { "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    .line 860
    iget-object v0, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 861
    iget-object v0, p0, Landroid/view/InsetsState;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-virtual {v0, p1, p2}, Landroid/view/DisplayCutout$ParcelableWrapper;->writeToParcel(Landroid/os/Parcel;I)V

    .line 862
    iget-object v0, p0, Landroid/view/InsetsState;->mRoundedCorners:Landroid/view/RoundedCorners;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 863
    iget-object v0, p0, Landroid/view/InsetsState;->mRoundedCornerFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 864
    iget-object v0, p0, Landroid/view/InsetsState;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 865
    iget-object v0, p0, Landroid/view/InsetsState;->mDisplayShape:Landroid/view/DisplayShape;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 866
    iget v0, p0, Landroid/view/InsetsState;->mSeq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 867
    iget-object v0, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 868
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 869
    const/4 v1, 0x0

    :goto_2d
    if-ge v1, v0, :cond_3d

    .line 870
    iget-object v2, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InsetsSource;

    invoke-virtual {p1, v2, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 869
    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    .line 872
    :cond_3d
    return-void
.end method
