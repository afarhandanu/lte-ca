.class public Landroid/window/PictureInPictureSurfaceTransaction$Builder;
.super Ljava/lang/Object;
.source "PictureInPictureSurfaceTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/PictureInPictureSurfaceTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAlpha:F

.field private blacklist mBorderSettings:Landroid/gui/BorderSettings;

.field private blacklist mBoxShadowSettings:Landroid/gui/BoxShadowSettings;

.field private blacklist mCornerRadius:F

.field private blacklist mFloat9:[F

.field private blacklist mPosition:Landroid/graphics/PointF;

.field private blacklist mRotation:F

.field private blacklist mShadowRadius:F

.field private blacklist mWindowCrop:Landroid/graphics/Rect;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/window/PictureInPictureSurfaceTransaction$Builder;->mAlpha:F

    .line 262
    iput v0, p0, Landroid/window/PictureInPictureSurfaceTransaction$Builder;->mCornerRadius:F

    .line 263
    iput v0, p0, Landroid/window/PictureInPictureSurfaceTransaction$Builder;->mShadowRadius:F

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/window/PictureInPictureSurfaceTransaction;
    .registers 12

    .line 312
    new-instance v0, Landroid/window/PictureInPictureSurfaceTransaction;

    iget v1, p0, Landroid/window/PictureInPictureSurfaceTransaction$Builder;->mAlpha:F

    iget-object v2, p0, Landroid/window/PictureInPictureSurfaceTransaction$Builder;->mPosition:Landroid/graphics/PointF;

    iget-object v3, p0, Landroid/window/PictureInPictureSurfaceTransaction$Builder;->mFloat9:[F

    iget v4, p0, Landroid/window/PictureInPictureSurfaceTransaction$Builder;->mRotation:F

    iget v5, p0, Landroid/window/PictureInPictureSurfaceTransaction$Builder;->mCornerRadius:F

    iget v6, p0, Landroid/window/PictureInPictureSurfaceTransaction$Builder;->mShadowRadius:F

    iget-object v7, p0, Landroid/window/PictureInPictureSurfaceTransaction$Builder;->mWindowCrop:Landroid/graphics/Rect;

    iget-object v8, p0, Landroid/window/PictureInPictureSurfaceTransaction$Builder;->mBoxShadowSettings:Landroid/gui/BoxShadowSettings;

    iget-object v9, p0, Landroid/window/PictureInPictureSurfaceTransaction$Builder;->mBorderSettings:Landroid/gui/BorderSettings;

    const/4 v10, 0x0

    invoke-direct/range {v0 .. v10}, Landroid/window/PictureInPictureSurfaceTransaction;-><init>(FLandroid/graphics/PointF;[FFFFLandroid/graphics/Rect;Landroid/gui/BoxShadowSettings;Landroid/gui/BorderSettings;Landroid/window/PictureInPictureSurfaceTransaction-IA;)V

    return-object v0
.end method

.method public blacklist setAlpha(F)Landroid/window/PictureInPictureSurfaceTransaction$Builder;
    .registers 2

    .line 269
    iput p1, p0, Landroid/window/PictureInPictureSurfaceTransaction$Builder;->mAlpha:F

    .line 270
    return-object p0
.end method

.method public blacklist setBorderSettings(Landroid/gui/BorderSettings;)Landroid/window/PictureInPictureSurfaceTransaction$Builder;
    .registers 2

    .line 307
    iput-object p1, p0, Landroid/window/PictureInPictureSurfaceTransaction$Builder;->mBorderSettings:Landroid/gui/BorderSettings;

    .line 308
    return-object p0
.end method

.method public blacklist setBoxShadowSettings(Landroid/gui/BoxShadowSettings;)Landroid/window/PictureInPictureSurfaceTransaction$Builder;
    .registers 2

    .line 301
    iput-object p1, p0, Landroid/window/PictureInPictureSurfaceTransaction$Builder;->mBoxShadowSettings:Landroid/gui/BoxShadowSettings;

    .line 302
    return-object p0
.end method

.method public blacklist setCornerRadius(F)Landroid/window/PictureInPictureSurfaceTransaction$Builder;
    .registers 2

    .line 285
    iput p1, p0, Landroid/window/PictureInPictureSurfaceTransaction$Builder;->mCornerRadius:F

    .line 286
    return-object p0
.end method

.method public blacklist setPosition(FF)Landroid/window/PictureInPictureSurfaceTransaction$Builder;
    .registers 4

    .line 274
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Landroid/window/PictureInPictureSurfaceTransaction$Builder;->mPosition:Landroid/graphics/PointF;

    .line 275
    return-object p0
.end method

.method public blacklist setShadowRadius(F)Landroid/window/PictureInPictureSurfaceTransaction$Builder;
    .registers 2

    .line 290
    iput p1, p0, Landroid/window/PictureInPictureSurfaceTransaction$Builder;->mShadowRadius:F

    .line 291
    return-object p0
.end method

.method public blacklist setTransform([FF)Landroid/window/PictureInPictureSurfaceTransaction$Builder;
    .registers 4

    .line 279
    const/16 v0, 0x9

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p1

    iput-object p1, p0, Landroid/window/PictureInPictureSurfaceTransaction$Builder;->mFloat9:[F

    .line 280
    iput p2, p0, Landroid/window/PictureInPictureSurfaceTransaction$Builder;->mRotation:F

    .line 281
    return-object p0
.end method

.method public blacklist setWindowCrop(Landroid/graphics/Rect;)Landroid/window/PictureInPictureSurfaceTransaction$Builder;
    .registers 3

    .line 295
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Landroid/window/PictureInPictureSurfaceTransaction$Builder;->mWindowCrop:Landroid/graphics/Rect;

    .line 296
    return-object p0
.end method
