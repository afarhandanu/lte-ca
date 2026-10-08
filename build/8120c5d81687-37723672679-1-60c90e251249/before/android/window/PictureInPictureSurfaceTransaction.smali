.class public final Landroid/window/PictureInPictureSurfaceTransaction;
.super Ljava/lang/Object;
.source "PictureInPictureSurfaceTransaction.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/PictureInPictureSurfaceTransaction$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/PictureInPictureSurfaceTransaction;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist NOT_SET:F = -1.0f


# instance fields
.field public final blacklist mAlpha:F

.field private final blacklist mBorderSettings:Landroid/gui/BorderSettings;

.field private final blacklist mBoxShadowSettings:Landroid/gui/BoxShadowSettings;

.field public final blacklist mCornerRadius:F

.field public final blacklist mFloat9:[F

.field public final blacklist mPosition:Landroid/graphics/PointF;

.field public final blacklist mRotation:F

.field public final blacklist mShadowRadius:F

.field private blacklist mShouldDisableCanAffectSystemUiFlags:Z

.field private final blacklist mWindowCrop:Landroid/graphics/Rect;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 247
    new-instance v0, Landroid/window/PictureInPictureSurfaceTransaction$1;

    invoke-direct {v0}, Landroid/window/PictureInPictureSurfaceTransaction$1;-><init>()V

    sput-object v0, Landroid/window/PictureInPictureSurfaceTransaction;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(FLandroid/graphics/PointF;[FFFFLandroid/graphics/Rect;Landroid/gui/BoxShadowSettings;Landroid/gui/BorderSettings;)V
    .registers 10

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput p1, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mAlpha:F

    .line 88
    iput-object p2, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mPosition:Landroid/graphics/PointF;

    .line 89
    const/16 p1, 0x9

    if-nez p3, :cond_1a

    .line 90
    new-array p1, p1, [F

    iput-object p1, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mFloat9:[F

    .line 91
    sget-object p1, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    iget-object p2, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mFloat9:[F

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->getValues([F)V

    .line 92
    const/4 p1, 0x0

    iput p1, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mRotation:F

    goto :goto_22

    .line 94
    :cond_1a
    invoke-static {p3, p1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p1

    iput-object p1, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mFloat9:[F

    .line 95
    iput p4, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mRotation:F

    .line 97
    :goto_22
    iput p5, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mCornerRadius:F

    .line 98
    iput p6, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mShadowRadius:F

    .line 99
    if-nez p7, :cond_2a

    const/4 p1, 0x0

    goto :goto_2f

    :cond_2a
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, p7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    :goto_2f
    iput-object p1, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mWindowCrop:Landroid/graphics/Rect;

    .line 100
    iput-object p8, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mBoxShadowSettings:Landroid/gui/BoxShadowSettings;

    .line 101
    iput-object p9, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mBorderSettings:Landroid/gui/BorderSettings;

    .line 102
    return-void
.end method

.method synthetic constructor blacklist <init>(FLandroid/graphics/PointF;[FFFFLandroid/graphics/Rect;Landroid/gui/BoxShadowSettings;Landroid/gui/BorderSettings;Landroid/window/PictureInPictureSurfaceTransaction-IA;)V
    .registers 11

    invoke-direct/range {p0 .. p9}, Landroid/window/PictureInPictureSurfaceTransaction;-><init>(FLandroid/graphics/PointF;[FFFFLandroid/graphics/Rect;Landroid/gui/BoxShadowSettings;Landroid/gui/BorderSettings;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mAlpha:F

    .line 63
    sget-object v0, Landroid/graphics/PointF;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iput-object v0, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mPosition:Landroid/graphics/PointF;

    .line 64
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mFloat9:[F

    .line 65
    iget-object v0, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mFloat9:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readFloatArray([F)V

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mRotation:F

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mCornerRadius:F

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mShadowRadius:F

    .line 69
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mWindowCrop:Landroid/graphics/Rect;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4c

    .line 71
    sget-object v0, Landroid/gui/BoxShadowSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/gui/BoxShadowSettings;

    iput-object v0, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mBoxShadowSettings:Landroid/gui/BoxShadowSettings;

    goto :goto_4e

    .line 73
    :cond_4c
    iput-object v1, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mBoxShadowSettings:Landroid/gui/BoxShadowSettings;

    .line 75
    :goto_4e
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 76
    sget-object v0, Landroid/gui/BorderSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/gui/BorderSettings;

    iput-object v0, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mBorderSettings:Landroid/gui/BorderSettings;

    goto :goto_61

    .line 78
    :cond_5f
    iput-object v1, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mBorderSettings:Landroid/gui/BorderSettings;

    .line 80
    :goto_61
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mShouldDisableCanAffectSystemUiFlags:Z

    .line 81
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/window/PictureInPictureSurfaceTransaction-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/window/PictureInPictureSurfaceTransaction;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/window/PictureInPictureSurfaceTransaction;)V
    .registers 12

    .line 105
    iget v1, p1, Landroid/window/PictureInPictureSurfaceTransaction;->mAlpha:F

    iget-object v2, p1, Landroid/window/PictureInPictureSurfaceTransaction;->mPosition:Landroid/graphics/PointF;

    iget-object v3, p1, Landroid/window/PictureInPictureSurfaceTransaction;->mFloat9:[F

    iget v4, p1, Landroid/window/PictureInPictureSurfaceTransaction;->mRotation:F

    iget v5, p1, Landroid/window/PictureInPictureSurfaceTransaction;->mCornerRadius:F

    iget v6, p1, Landroid/window/PictureInPictureSurfaceTransaction;->mShadowRadius:F

    iget-object v7, p1, Landroid/window/PictureInPictureSurfaceTransaction;->mWindowCrop:Landroid/graphics/Rect;

    iget-object v8, p1, Landroid/window/PictureInPictureSurfaceTransaction;->mBoxShadowSettings:Landroid/gui/BoxShadowSettings;

    iget-object v9, p1, Landroid/window/PictureInPictureSurfaceTransaction;->mBorderSettings:Landroid/gui/BorderSettings;

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Landroid/window/PictureInPictureSurfaceTransaction;-><init>(FLandroid/graphics/PointF;[FFFFLandroid/graphics/Rect;Landroid/gui/BoxShadowSettings;Landroid/gui/BorderSettings;)V

    .line 108
    iget-boolean p1, p1, Landroid/window/PictureInPictureSurfaceTransaction;->mShouldDisableCanAffectSystemUiFlags:Z

    iput-boolean p1, v0, Landroid/window/PictureInPictureSurfaceTransaction;->mShouldDisableCanAffectSystemUiFlags:Z

    .line 109
    return-void
.end method

.method public static blacklist apply(Landroid/window/PictureInPictureSurfaceTransaction;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V
    .registers 5

    .line 220
    invoke-virtual {p0}, Landroid/window/PictureInPictureSurfaceTransaction;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 221
    const/16 v1, 0x9

    new-array v1, v1, [F

    invoke-virtual {p2, p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    .line 222
    iget-object v0, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mPosition:Landroid/graphics/PointF;

    if-eqz v0, :cond_1a

    .line 223
    iget-object v0, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mPosition:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mPosition:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p2, p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 226
    :cond_1a
    iget-object v0, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mWindowCrop:Landroid/graphics/Rect;

    if-eqz v0, :cond_23

    .line 227
    iget-object v0, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mWindowCrop:Landroid/graphics/Rect;

    invoke-virtual {p2, p1, v0}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 229
    :cond_23
    invoke-virtual {p0}, Landroid/window/PictureInPictureSurfaceTransaction;->hasCornerRadiusSet()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 230
    iget v0, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mCornerRadius:F

    invoke-virtual {p2, p1, v0}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 232
    :cond_2e
    invoke-virtual {p0}, Landroid/window/PictureInPictureSurfaceTransaction;->hasShadowRadiusSet()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 233
    iget v0, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mShadowRadius:F

    invoke-virtual {p2, p1, v0}, Landroid/view/SurfaceControl$Transaction;->setShadowRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 235
    :cond_39
    invoke-virtual {p0}, Landroid/window/PictureInPictureSurfaceTransaction;->hasBoxShadowSettingsSet()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 236
    iget-object v0, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mBoxShadowSettings:Landroid/gui/BoxShadowSettings;

    invoke-virtual {p2, p1, v0}, Landroid/view/SurfaceControl$Transaction;->setBoxShadowSettings(Landroid/view/SurfaceControl;Landroid/gui/BoxShadowSettings;)Landroid/view/SurfaceControl$Transaction;

    .line 238
    :cond_44
    invoke-virtual {p0}, Landroid/window/PictureInPictureSurfaceTransaction;->hasBorderSettingsSet()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 239
    iget-object v0, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mBorderSettings:Landroid/gui/BorderSettings;

    invoke-virtual {p2, p1, v0}, Landroid/view/SurfaceControl$Transaction;->setBorderSettings(Landroid/view/SurfaceControl;Landroid/gui/BorderSettings;)Landroid/view/SurfaceControl$Transaction;

    .line 241
    :cond_4f
    iget v0, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mAlpha:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_5c

    .line 242
    iget p0, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mAlpha:F

    invoke-virtual {p2, p1, p0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 244
    :cond_5c
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 176
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 150
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 151
    :cond_4
    instance-of v1, p1, Landroid/window/PictureInPictureSurfaceTransaction;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 152
    :cond_a
    check-cast p1, Landroid/window/PictureInPictureSurfaceTransaction;

    .line 153
    iget v1, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mAlpha:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v3, p1, Landroid/window/PictureInPictureSurfaceTransaction;->mAlpha:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8d

    iget-object v1, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mPosition:Landroid/graphics/PointF;

    iget-object v3, p1, Landroid/window/PictureInPictureSurfaceTransaction;->mPosition:Landroid/graphics/PointF;

    .line 154
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8d

    iget-object v1, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mFloat9:[F

    iget-object v3, p1, Landroid/window/PictureInPictureSurfaceTransaction;->mFloat9:[F

    .line 155
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v1

    if-eqz v1, :cond_8d

    iget v1, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mRotation:F

    .line 156
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v3, p1, Landroid/window/PictureInPictureSurfaceTransaction;->mRotation:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8d

    iget v1, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mCornerRadius:F

    .line 157
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v3, p1, Landroid/window/PictureInPictureSurfaceTransaction;->mCornerRadius:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8d

    iget v1, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mShadowRadius:F

    .line 158
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v3, p1, Landroid/window/PictureInPictureSurfaceTransaction;->mShadowRadius:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8d

    iget-object v1, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mWindowCrop:Landroid/graphics/Rect;

    iget-object v3, p1, Landroid/window/PictureInPictureSurfaceTransaction;->mWindowCrop:Landroid/graphics/Rect;

    .line 159
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8d

    iget-object v1, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mBoxShadowSettings:Landroid/gui/BoxShadowSettings;

    iget-object v3, p1, Landroid/window/PictureInPictureSurfaceTransaction;->mBoxShadowSettings:Landroid/gui/BoxShadowSettings;

    .line 160
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8d

    iget-object v1, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mBorderSettings:Landroid/gui/BorderSettings;

    iget-object v3, p1, Landroid/window/PictureInPictureSurfaceTransaction;->mBorderSettings:Landroid/gui/BorderSettings;

    .line 161
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8d

    iget-boolean v1, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mShouldDisableCanAffectSystemUiFlags:Z

    iget-boolean p1, p1, Landroid/window/PictureInPictureSurfaceTransaction;->mShouldDisableCanAffectSystemUiFlags:Z

    if-ne v1, p1, :cond_8d

    goto :goto_8e

    :cond_8d
    move v0, v2

    .line 153
    :goto_8e
    return v0
.end method

.method public blacklist getMatrix()Landroid/graphics/Matrix;
    .registers 3

    .line 113
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 114
    iget-object v1, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mFloat9:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    .line 115
    return-object v0
.end method

.method public blacklist getShouldDisableCanAffectSystemUiFlags()Z
    .registers 2

    .line 145
    iget-boolean v0, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mShouldDisableCanAffectSystemUiFlags:Z

    return v0
.end method

.method public blacklist hasBorderSettingsSet()Z
    .registers 2

    .line 135
    iget-object v0, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mBorderSettings:Landroid/gui/BorderSettings;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public blacklist hasBoxShadowSettingsSet()Z
    .registers 2

    .line 130
    iget-object v0, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mBoxShadowSettings:Landroid/gui/BoxShadowSettings;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public blacklist hasCornerRadiusSet()Z
    .registers 3

    .line 120
    iget v0, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mCornerRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public blacklist hasShadowRadiusSet()Z
    .registers 3

    .line 125
    iget v0, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mShadowRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 12

    .line 168
    iget v0, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mAlpha:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget-object v2, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mPosition:Landroid/graphics/PointF;

    iget-object v0, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mFloat9:[F

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mRotation:F

    .line 169
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iget v0, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mCornerRadius:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    iget v0, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mShadowRadius:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    iget-object v7, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mWindowCrop:Landroid/graphics/Rect;

    iget-object v8, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mBoxShadowSettings:Landroid/gui/BoxShadowSettings;

    iget-object v9, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mBorderSettings:Landroid/gui/BorderSettings;

    iget-boolean v0, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mShouldDisableCanAffectSystemUiFlags:Z

    .line 171
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    filled-new-array/range {v1 .. v10}, [Ljava/lang/Object;

    move-result-object v0

    .line 168
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist setShouldDisableCanAffectSystemUiFlags(Z)V
    .registers 2

    .line 140
    iput-boolean p1, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mShouldDisableCanAffectSystemUiFlags:Z

    .line 141
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 201
    invoke-virtual {p0}, Landroid/window/PictureInPictureSurfaceTransaction;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 202
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PictureInPictureSurfaceTransaction( alpha="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mAlpha:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mPosition:Landroid/graphics/PointF;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " matrix="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 205
    invoke-virtual {v0}, Landroid/graphics/Matrix;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " rotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mRotation:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cornerRadius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mCornerRadius:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " shadowRadius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mShadowRadius:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " crop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mWindowCrop:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " boxShadowSettings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mBoxShadowSettings:Landroid/gui/BoxShadowSettings;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " borderSettings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mBorderSettings:Landroid/gui/BorderSettings;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " shouldDisableCanAffectSystemUiFlags"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mShouldDisableCanAffectSystemUiFlags:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 202
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 181
    iget p2, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mAlpha:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 182
    iget-object p2, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mPosition:Landroid/graphics/PointF;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 183
    iget-object p2, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mFloat9:[F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 184
    iget p2, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mRotation:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 185
    iget p2, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mCornerRadius:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 186
    iget p2, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mShadowRadius:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 187
    iget-object p2, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mWindowCrop:Landroid/graphics/Rect;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 188
    iget-object p2, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mBoxShadowSettings:Landroid/gui/BoxShadowSettings;

    const/4 v1, 0x1

    if-eqz p2, :cond_2b

    move p2, v1

    goto :goto_2c

    :cond_2b
    move p2, v0

    :goto_2c
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 189
    iget-object p2, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mBoxShadowSettings:Landroid/gui/BoxShadowSettings;

    if-eqz p2, :cond_38

    .line 190
    iget-object p2, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mBoxShadowSettings:Landroid/gui/BoxShadowSettings;

    invoke-virtual {p2, p1, v0}, Landroid/gui/BoxShadowSettings;->writeToParcel(Landroid/os/Parcel;I)V

    .line 192
    :cond_38
    iget-object p2, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mBorderSettings:Landroid/gui/BorderSettings;

    if-eqz p2, :cond_3d

    goto :goto_3e

    :cond_3d
    move v1, v0

    :goto_3e
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 193
    iget-object p2, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mBorderSettings:Landroid/gui/BorderSettings;

    if-eqz p2, :cond_4a

    .line 194
    iget-object p2, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mBorderSettings:Landroid/gui/BorderSettings;

    invoke-virtual {p2, p1, v0}, Landroid/gui/BorderSettings;->writeToParcel(Landroid/os/Parcel;I)V

    .line 196
    :cond_4a
    iget-boolean p2, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mShouldDisableCanAffectSystemUiFlags:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 197
    return-void
.end method
