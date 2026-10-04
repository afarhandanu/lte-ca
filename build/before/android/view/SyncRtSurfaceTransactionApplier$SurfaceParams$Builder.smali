.class public Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;
.super Ljava/lang/Object;
.source "SyncRtSurfaceTransactionApplier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field blacklist alpha:F

.field blacklist backgroundBlurRadius:I

.field blacklist backgroundBlurScale:F

.field blacklist cornerRadius:F

.field blacklist earlyWakeupInfo:Landroid/gui/EarlyWakeupInfo;

.field blacklist flags:I

.field blacklist layer:I

.field blacklist matrix:Landroid/graphics/Matrix;

.field blacklist mergeTransaction:Landroid/view/SurfaceControl$Transaction;

.field blacklist opaque:Z

.field final blacklist surface:Landroid/view/SurfaceControl;

.field blacklist visible:Z

.field blacklist windowCrop:Landroid/graphics/Rect;


# direct methods
.method public constructor blacklist <init>(Landroid/view/SurfaceControl;)V
    .registers 2

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    iput-object p1, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->surface:Landroid/view/SurfaceControl;

    .line 204
    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;
    .registers 16

    .line 332
    new-instance v0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    iget-object v1, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->surface:Landroid/view/SurfaceControl;

    iget v2, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->flags:I

    iget v3, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->alpha:F

    iget-object v4, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->matrix:Landroid/graphics/Matrix;

    iget-object v5, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->windowCrop:Landroid/graphics/Rect;

    iget v6, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->layer:I

    iget v7, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->cornerRadius:F

    iget v8, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->backgroundBlurRadius:I

    iget v9, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->backgroundBlurScale:F

    iget-boolean v10, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->visible:Z

    iget-object v11, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->mergeTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-boolean v12, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->opaque:Z

    iget-object v13, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->earlyWakeupInfo:Landroid/gui/EarlyWakeupInfo;

    const/4 v14, 0x0

    invoke-direct/range {v0 .. v14}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;-><init>(Landroid/view/SurfaceControl;IFLandroid/graphics/Matrix;Landroid/graphics/Rect;IFIFZLandroid/view/SurfaceControl$Transaction;ZLandroid/gui/EarlyWakeupInfo;Landroid/view/SyncRtSurfaceTransactionApplier-IA;)V

    return-object v0
.end method

.method public blacklist withAlpha(F)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;
    .registers 2

    .line 211
    iput p1, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->alpha:F

    .line 212
    iget p1, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->flags:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->flags:I

    .line 213
    return-object p0
.end method

.method public blacklist withBackgroundBlurRadius(I)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;
    .registers 2

    .line 261
    iput p1, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->backgroundBlurRadius:I

    .line 262
    iget p1, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->flags:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->flags:I

    .line 263
    return-object p0
.end method

.method public blacklist withBackgroundBlurScale(F)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;
    .registers 2

    .line 271
    iput p1, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->backgroundBlurScale:F

    .line 272
    iget p1, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->flags:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->flags:I

    .line 273
    return-object p0
.end method

.method public blacklist withCornerRadius(F)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;
    .registers 2

    .line 251
    iput p1, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->cornerRadius:F

    .line 252
    iget p1, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->flags:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->flags:I

    .line 253
    return-object p0
.end method

.method public blacklist withEarlyWakeupEnd(Landroid/gui/EarlyWakeupInfo;)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;
    .registers 2

    .line 313
    iput-object p1, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->earlyWakeupInfo:Landroid/gui/EarlyWakeupInfo;

    .line 314
    iget p1, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->flags:I

    or-int/lit16 p1, p1, 0x400

    iput p1, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->flags:I

    .line 315
    return-object p0
.end method

.method public blacklist withEarlyWakeupStart(Landroid/gui/EarlyWakeupInfo;)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;
    .registers 2

    .line 303
    iput-object p1, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->earlyWakeupInfo:Landroid/gui/EarlyWakeupInfo;

    .line 304
    iget p1, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->flags:I

    or-int/lit16 p1, p1, 0x200

    iput p1, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->flags:I

    .line 305
    return-object p0
.end method

.method public blacklist withLayer(I)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;
    .registers 2

    .line 241
    iput p1, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->layer:I

    .line 242
    iget p1, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->flags:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->flags:I

    .line 243
    return-object p0
.end method

.method public blacklist withMatrix(Landroid/graphics/Matrix;)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;
    .registers 3

    .line 221
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0, p1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iput-object v0, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->matrix:Landroid/graphics/Matrix;

    .line 222
    iget p1, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->flags:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->flags:I

    .line 223
    return-object p0
.end method

.method public blacklist withMergeTransaction(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;
    .registers 2

    .line 292
    iput-object p1, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->mergeTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 293
    iget p1, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->flags:I

    or-int/lit16 p1, p1, 0x100

    iput p1, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->flags:I

    .line 294
    return-object p0
.end method

.method public blacklist withOpaque(Z)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;
    .registers 2

    .line 323
    iput-boolean p1, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->opaque:Z

    .line 324
    iget p1, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->flags:I

    or-int/lit16 p1, p1, 0x800

    iput p1, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->flags:I

    .line 325
    return-object p0
.end method

.method public blacklist withVisibility(Z)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;
    .registers 2

    .line 281
    iput-boolean p1, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->visible:Z

    .line 282
    iget p1, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->flags:I

    or-int/lit16 p1, p1, 0x80

    iput p1, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->flags:I

    .line 283
    return-object p0
.end method

.method public blacklist withWindowCrop(Landroid/graphics/Rect;)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;
    .registers 3

    .line 231
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->windowCrop:Landroid/graphics/Rect;

    .line 232
    iget p1, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->flags:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->flags:I

    .line 233
    return-object p0
.end method
