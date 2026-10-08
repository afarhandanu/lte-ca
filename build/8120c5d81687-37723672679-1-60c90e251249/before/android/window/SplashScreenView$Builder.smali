.class public Landroid/window/SplashScreenView$Builder;
.super Ljava/lang/Object;
.source "SplashScreenView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/SplashScreenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private blacklist mAllowHandleSolidColor:Z

.field private blacklist mBackgroundColor:I

.field private blacklist mBrandingDrawable:Landroid/graphics/drawable/Drawable;

.field private blacklist mBrandingImageHeight:I

.field private blacklist mBrandingImageWidth:I

.field private blacklist mClientCallback:Landroid/os/RemoteCallback;

.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mIconAnimationDuration:Ljava/time/Duration;

.field private blacklist mIconAnimationStart:Ljava/time/Instant;

.field private blacklist mIconBackground:Landroid/graphics/drawable/Drawable;

.field private blacklist mIconDrawable:Landroid/graphics/drawable/Drawable;

.field private blacklist mIconSize:I

.field private blacklist mOverlayDrawable:Landroid/graphics/drawable/Drawable;

.field private blacklist mParceledBrandingBitmap:Landroid/graphics/Bitmap;

.field private blacklist mParceledIconBackgroundBitmap:Landroid/graphics/Bitmap;

.field private blacklist mParceledIconBitmap:Landroid/graphics/Bitmap;

.field private blacklist mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

.field private blacklist mUiThreadInitTask:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$bvL0QznbxexxTyiVrdA2OsMAFh8(Landroid/window/SplashScreenView$Builder;Landroid/window/SplashScreenView;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/window/SplashScreenView$Builder;->lambda$build$0(Landroid/window/SplashScreenView;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 119
    const-class v0, Landroid/window/SplashScreenView;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/window/SplashScreenView$Builder;->mAllowHandleSolidColor:Z

    .line 141
    iput-object p1, p0, Landroid/window/SplashScreenView$Builder;->mContext:Landroid/content/Context;

    .line 142
    return-void
.end method

.method private blacklist createSurfaceView(Landroid/window/SplashScreenView;)Landroid/view/SurfaceView;
    .registers 14

    .line 326
    const-string v0, "SplashScreenView#createSurfaceView"

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 327
    invoke-virtual {p1}, Landroid/window/SplashScreenView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 328
    new-instance v3, Landroid/view/SurfaceView;

    invoke-direct {v3, v0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 329
    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4, v4, v4}, Landroid/view/SurfaceView;->setPadding(IIII)V

    .line 330
    iget-object v4, p0, Landroid/window/SplashScreenView$Builder;->mIconBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/view/SurfaceView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 331
    iget-object v4, p0, Landroid/window/SplashScreenView$Builder;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    if-nez v4, :cond_8d

    .line 332
    invoke-static {}, Landroid/window/SplashScreenView;->-$$Nest$sfgetDEBUG()Z

    move-result v4

    if-eqz v4, :cond_45

    .line 333
    invoke-static {}, Landroid/window/SplashScreenView;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SurfaceControlViewHost created on thread "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 335
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 333
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :cond_45
    invoke-virtual {v3}, Landroid/view/SurfaceView;->getRootSurfaceControl()Landroid/view/AttachedSurfaceControl;

    move-result-object v4

    .line 339
    new-instance v5, Landroid/view/SurfaceControlViewHost;

    .line 340
    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v6

    .line 341
    if-nez v4, :cond_53

    const/4 v4, 0x0

    goto :goto_57

    .line 342
    :cond_53
    invoke-interface {v4}, Landroid/view/AttachedSurfaceControl;->getInputTransferToken()Landroid/window/InputTransferToken;

    move-result-object v4

    :goto_57
    const-string v7, "SplashScreenView"

    invoke-direct {v5, v0, v6, v4, v7}, Landroid/view/SurfaceControlViewHost;-><init>(Landroid/content/Context;Landroid/view/Display;Landroid/window/InputTransferToken;Ljava/lang/String;)V

    .line 344
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 345
    iget-object v0, p0, Landroid/window/SplashScreenView$Builder;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 349
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    iget v7, p0, Landroid/window/SplashScreenView$Builder;->mIconSize:I

    iget v8, p0, Landroid/window/SplashScreenView$Builder;->mIconSize:I

    const v10, 0x20018

    const/4 v11, -0x2

    const/4 v9, 0x2

    invoke-direct/range {v6 .. v11}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 353
    invoke-virtual {v5, v4, v6}, Landroid/view/SurfaceControlViewHost;->setView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    .line 354
    invoke-virtual {v5}, Landroid/view/SurfaceControlViewHost;->getSurfacePackage()Landroid/view/SurfaceControlViewHost$SurfacePackage;

    move-result-object v0

    .line 355
    invoke-virtual {v3, v0}, Landroid/view/SurfaceView;->setChildSurfacePackage(Landroid/view/SurfaceControlViewHost$SurfacePackage;)V

    .line 356
    invoke-static {p1, v0}, Landroid/window/SplashScreenView;->-$$Nest$fputmSurfacePackage(Landroid/window/SplashScreenView;Landroid/view/SurfaceControlViewHost$SurfacePackage;)V

    .line 357
    invoke-static {p1, v5}, Landroid/window/SplashScreenView;->-$$Nest$fputmSurfaceHost(Landroid/window/SplashScreenView;Landroid/view/SurfaceControlViewHost;)V

    .line 358
    new-instance v4, Landroid/view/SurfaceControlViewHost$SurfacePackage;

    invoke-direct {v4, v0}, Landroid/view/SurfaceControlViewHost$SurfacePackage;-><init>(Landroid/view/SurfaceControlViewHost$SurfacePackage;)V

    invoke-static {p1, v4}, Landroid/window/SplashScreenView;->-$$Nest$fputmSurfacePackageCopy(Landroid/window/SplashScreenView;Landroid/view/SurfaceControlViewHost$SurfacePackage;)V

    .line 360
    goto :goto_a1

    .line 361
    :cond_8d
    invoke-static {}, Landroid/window/SplashScreenView;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_9c

    .line 362
    invoke-static {}, Landroid/window/SplashScreenView;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v4, "Using copy of SurfacePackage in the client"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :cond_9c
    iget-object v0, p0, Landroid/window/SplashScreenView$Builder;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    invoke-static {p1, v0}, Landroid/window/SplashScreenView;->-$$Nest$fputmSurfacePackage(Landroid/window/SplashScreenView;Landroid/view/SurfaceControlViewHost$SurfacePackage;)V

    .line 366
    :goto_a1
    iget v0, p0, Landroid/window/SplashScreenView$Builder;->mIconSize:I

    if-eqz v0, :cond_d7

    .line 367
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v4, p0, Landroid/window/SplashScreenView$Builder;->mIconSize:I

    iget v5, p0, Landroid/window/SplashScreenView$Builder;->mIconSize:I

    invoke-direct {v0, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 368
    const/16 v4, 0x11

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 369
    invoke-virtual {v3, v0}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 370
    invoke-static {}, Landroid/window/SplashScreenView;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_d7

    .line 371
    invoke-static {}, Landroid/window/SplashScreenView;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Icon size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/window/SplashScreenView$Builder;->mIconSize:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_d7
    invoke-virtual {v3}, Landroid/view/SurfaceView;->setUseAlpha()V

    .line 377
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    .line 378
    invoke-virtual {v3}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v4, -0x3

    invoke-interface {v0, v4}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 380
    invoke-virtual {p1, v3}, Landroid/window/SplashScreenView;->addView(Landroid/view/View;)V

    .line 381
    invoke-static {p1, v3}, Landroid/window/SplashScreenView;->-$$Nest$fputmSurfaceView(Landroid/window/SplashScreenView;Landroid/view/SurfaceView;)V

    .line 382
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 383
    return-object v3
.end method

.method private synthetic blacklist lambda$build$0(Landroid/window/SplashScreenView;)V
    .registers 3

    .line 269
    invoke-direct {p0, p1}, Landroid/window/SplashScreenView$Builder;->createSurfaceView(Landroid/window/SplashScreenView;)Landroid/view/SurfaceView;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/window/SplashScreenView;->-$$Nest$fputmIconView(Landroid/window/SplashScreenView;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/window/SplashScreenView;
    .registers 8

    .line 249
    const-string v0, "SplashScreenView#build"

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 250
    iget-object v0, p0, Landroid/window/SplashScreenView$Builder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 251
    nop

    .line 252
    const v3, 0x1090157

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/window/SplashScreenView;

    .line 253
    iget v3, p0, Landroid/window/SplashScreenView$Builder;->mBackgroundColor:I

    invoke-static {v0, v3}, Landroid/window/SplashScreenView;->-$$Nest$fputmInitBackgroundColor(Landroid/window/SplashScreenView;I)V

    .line 254
    iget-object v3, p0, Landroid/window/SplashScreenView$Builder;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_28

    .line 255
    iget-object v3, p0, Landroid/window/SplashScreenView$Builder;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/window/SplashScreenView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2d

    .line 257
    :cond_28
    iget v3, p0, Landroid/window/SplashScreenView$Builder;->mBackgroundColor:I

    invoke-virtual {v0, v3}, Landroid/window/SplashScreenView;->setBackgroundColor(I)V

    .line 259
    :goto_2d
    iget-object v3, p0, Landroid/window/SplashScreenView$Builder;->mClientCallback:Landroid/os/RemoteCallback;

    invoke-static {v0, v3}, Landroid/window/SplashScreenView;->-$$Nest$fputmClientCallback(Landroid/window/SplashScreenView;Landroid/os/RemoteCallback;)V

    .line 261
    const v3, 0x1020544

    invoke-virtual {v0, v3}, Landroid/window/SplashScreenView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/window/SplashScreenView;->-$$Nest$fputmBrandingImageView(Landroid/window/SplashScreenView;Landroid/view/View;)V

    .line 263
    nop

    .line 265
    iget-object v3, p0, Landroid/window/SplashScreenView$Builder;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v3, v3, Landroid/window/SplashScreenView$IconAnimateListener;

    const/4 v4, 0x1

    if-nez v3, :cond_7e

    iget-object v3, p0, Landroid/window/SplashScreenView$Builder;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    if-eqz v3, :cond_49

    goto :goto_7e

    .line 276
    :cond_49
    iget v3, p0, Landroid/window/SplashScreenView$Builder;->mIconSize:I

    if-eqz v3, :cond_a5

    .line 277
    const v3, 0x1020545

    invoke-virtual {v0, v3}, Landroid/window/SplashScreenView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 278
    nop

    .line 280
    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 281
    iget v6, p0, Landroid/window/SplashScreenView$Builder;->mIconSize:I

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 282
    iget v6, p0, Landroid/window/SplashScreenView$Builder;->mIconSize:I

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 283
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 284
    iget-object v5, p0, Landroid/window/SplashScreenView$Builder;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_6f

    .line 285
    iget-object v5, p0, Landroid/window/SplashScreenView$Builder;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 287
    :cond_6f
    iget-object v5, p0, Landroid/window/SplashScreenView$Builder;->mIconBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_78

    .line 288
    iget-object v5, p0, Landroid/window/SplashScreenView$Builder;->mIconBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 290
    :cond_78
    nop

    .line 291
    invoke-static {v0, v3}, Landroid/window/SplashScreenView;->-$$Nest$fputmIconView(Landroid/window/SplashScreenView;Landroid/view/View;)V

    move v5, v4

    goto :goto_a5

    .line 267
    :cond_7e
    :goto_7e
    nop

    .line 268
    iget-object v3, p0, Landroid/window/SplashScreenView$Builder;->mUiThreadInitTask:Ljava/util/function/Consumer;

    if-eqz v3, :cond_8e

    .line 269
    iget-object v3, p0, Landroid/window/SplashScreenView$Builder;->mUiThreadInitTask:Ljava/util/function/Consumer;

    new-instance v5, Landroid/window/SplashScreenView$Builder$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0, v0}, Landroid/window/SplashScreenView$Builder$$ExternalSyntheticLambda0;-><init>(Landroid/window/SplashScreenView$Builder;Landroid/window/SplashScreenView;)V

    invoke-interface {v3, v5}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_95

    .line 271
    :cond_8e
    invoke-direct {p0, v0}, Landroid/window/SplashScreenView$Builder;->createSurfaceView(Landroid/window/SplashScreenView;)Landroid/view/SurfaceView;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/window/SplashScreenView;->-$$Nest$fputmIconView(Landroid/window/SplashScreenView;Landroid/view/View;)V

    .line 273
    :goto_95
    iget-object v3, p0, Landroid/window/SplashScreenView$Builder;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/window/SplashScreenView;->initIconAnimation(Landroid/graphics/drawable/Drawable;)V

    .line 274
    iget-object v3, p0, Landroid/window/SplashScreenView$Builder;->mIconAnimationStart:Ljava/time/Instant;

    invoke-static {v0, v3}, Landroid/window/SplashScreenView;->-$$Nest$fputmIconAnimationStart(Landroid/window/SplashScreenView;Ljava/time/Instant;)V

    .line 275
    iget-object v3, p0, Landroid/window/SplashScreenView$Builder;->mIconAnimationDuration:Ljava/time/Duration;

    invoke-static {v0, v3}, Landroid/window/SplashScreenView;->-$$Nest$fputmIconAnimationDuration(Landroid/window/SplashScreenView;Ljava/time/Duration;)V

    move v5, v4

    .line 293
    :cond_a5
    :goto_a5
    iget-object v3, p0, Landroid/window/SplashScreenView$Builder;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_af

    if-nez v5, :cond_b2

    iget-boolean v3, p0, Landroid/window/SplashScreenView$Builder;->mAllowHandleSolidColor:Z

    if-nez v3, :cond_b2

    .line 294
    :cond_af
    invoke-virtual {v0}, Landroid/window/SplashScreenView;->setNotCopyable()V

    .line 297
    :cond_b2
    iget-object v3, p0, Landroid/window/SplashScreenView$Builder;->mParceledIconBackgroundBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, v3}, Landroid/window/SplashScreenView;->-$$Nest$fputmParceledIconBackgroundBitmap(Landroid/window/SplashScreenView;Landroid/graphics/Bitmap;)V

    .line 298
    iget-object v3, p0, Landroid/window/SplashScreenView$Builder;->mParceledIconBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, v3}, Landroid/window/SplashScreenView;->-$$Nest$fputmParceledIconBitmap(Landroid/window/SplashScreenView;Landroid/graphics/Bitmap;)V

    .line 301
    iget v3, p0, Landroid/window/SplashScreenView$Builder;->mBrandingImageHeight:I

    if-lez v3, :cond_e9

    iget v3, p0, Landroid/window/SplashScreenView$Builder;->mBrandingImageWidth:I

    if-lez v3, :cond_e9

    iget-object v3, p0, Landroid/window/SplashScreenView$Builder;->mBrandingDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_e9

    .line 302
    invoke-static {v0}, Landroid/window/SplashScreenView;->-$$Nest$fgetmBrandingImageView(Landroid/window/SplashScreenView;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 303
    iget v4, p0, Landroid/window/SplashScreenView$Builder;->mBrandingImageWidth:I

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 304
    iget v4, p0, Landroid/window/SplashScreenView$Builder;->mBrandingImageHeight:I

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 305
    invoke-static {v0}, Landroid/window/SplashScreenView;->-$$Nest$fgetmBrandingImageView(Landroid/window/SplashScreenView;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 306
    invoke-static {v0}, Landroid/window/SplashScreenView;->-$$Nest$fgetmBrandingImageView(Landroid/window/SplashScreenView;)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Landroid/window/SplashScreenView$Builder;->mBrandingDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 307
    goto :goto_f2

    .line 308
    :cond_e9
    invoke-static {v0}, Landroid/window/SplashScreenView;->-$$Nest$fgetmBrandingImageView(Landroid/window/SplashScreenView;)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 310
    :goto_f2
    iget-object v3, p0, Landroid/window/SplashScreenView$Builder;->mParceledBrandingBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_fb

    .line 311
    iget-object v3, p0, Landroid/window/SplashScreenView$Builder;->mParceledBrandingBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, v3}, Landroid/window/SplashScreenView;->-$$Nest$fputmParceledBrandingBitmap(Landroid/window/SplashScreenView;Landroid/graphics/Bitmap;)V

    .line 313
    :cond_fb
    invoke-static {}, Landroid/window/SplashScreenView;->-$$Nest$sfgetDEBUG()Z

    move-result v3

    if-eqz v3, :cond_171

    .line 314
    invoke-static {}, Landroid/window/SplashScreenView;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Build "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\nIcon: view: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Landroid/window/SplashScreenView;->-$$Nest$fgetmIconView(Landroid/window/SplashScreenView;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " drawable: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Landroid/window/SplashScreenView$Builder;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " size: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Landroid/window/SplashScreenView$Builder;->mIconSize:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\nBranding: view: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Landroid/window/SplashScreenView;->-$$Nest$fgetmBrandingImageView(Landroid/window/SplashScreenView;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/window/SplashScreenView$Builder;->mBrandingDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " size w: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/window/SplashScreenView$Builder;->mBrandingImageWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " h: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/window/SplashScreenView$Builder;->mBrandingImageHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :cond_171
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 322
    return-object v0
.end method

.method public blacklist createFromParcel(Landroid/window/SplashScreenView$SplashScreenViewParcelable;)Landroid/window/SplashScreenView$Builder;
    .registers 5

    .line 149
    invoke-virtual {p1}, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->getIconSize()I

    move-result v0

    iput v0, p0, Landroid/window/SplashScreenView$Builder;->mIconSize:I

    .line 150
    invoke-virtual {p1}, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->getBackgroundColor()I

    move-result v0

    iput v0, p0, Landroid/window/SplashScreenView$Builder;->mBackgroundColor:I

    .line 151
    invoke-static {p1}, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->-$$Nest$fgetmSurfacePackage(Landroid/window/SplashScreenView$SplashScreenViewParcelable;)Landroid/view/SurfaceControlViewHost$SurfacePackage;

    move-result-object v0

    iput-object v0, p0, Landroid/window/SplashScreenView$Builder;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    .line 152
    iget-object v0, p0, Landroid/window/SplashScreenView$Builder;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    if-nez v0, :cond_33

    invoke-static {p1}, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->-$$Nest$fgetmIconBitmap(Landroid/window/SplashScreenView$SplashScreenViewParcelable;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 155
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Landroid/window/SplashScreenView$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p1}, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->-$$Nest$fgetmIconBitmap(Landroid/window/SplashScreenView$SplashScreenViewParcelable;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Landroid/window/SplashScreenView$Builder;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 156
    invoke-static {p1}, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->-$$Nest$fgetmIconBitmap(Landroid/window/SplashScreenView$SplashScreenViewParcelable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroid/window/SplashScreenView$Builder;->mParceledIconBitmap:Landroid/graphics/Bitmap;

    .line 158
    :cond_33
    invoke-static {p1}, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->-$$Nest$fgetmIconBackground(Landroid/window/SplashScreenView$SplashScreenViewParcelable;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_50

    .line 159
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Landroid/window/SplashScreenView$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p1}, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->-$$Nest$fgetmIconBackground(Landroid/window/SplashScreenView$SplashScreenViewParcelable;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Landroid/window/SplashScreenView$Builder;->mIconBackground:Landroid/graphics/drawable/Drawable;

    .line 161
    invoke-static {p1}, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->-$$Nest$fgetmIconBackground(Landroid/window/SplashScreenView$SplashScreenViewParcelable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroid/window/SplashScreenView$Builder;->mParceledIconBackgroundBitmap:Landroid/graphics/Bitmap;

    .line 163
    :cond_50
    invoke-static {p1}, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->-$$Nest$fgetmBrandingBitmap(Landroid/window/SplashScreenView$SplashScreenViewParcelable;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_76

    .line 164
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Landroid/window/SplashScreenView$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p1}, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->-$$Nest$fgetmBrandingBitmap(Landroid/window/SplashScreenView$SplashScreenViewParcelable;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-static {p1}, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->-$$Nest$fgetmBrandingWidth(Landroid/window/SplashScreenView$SplashScreenViewParcelable;)I

    move-result v1

    invoke-static {p1}, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->-$$Nest$fgetmBrandingHeight(Landroid/window/SplashScreenView$SplashScreenViewParcelable;)I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/window/SplashScreenView$Builder;->setBrandingDrawable(Landroid/graphics/drawable/Drawable;II)Landroid/window/SplashScreenView$Builder;

    .line 167
    invoke-static {p1}, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->-$$Nest$fgetmBrandingBitmap(Landroid/window/SplashScreenView$SplashScreenViewParcelable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroid/window/SplashScreenView$Builder;->mParceledBrandingBitmap:Landroid/graphics/Bitmap;

    .line 169
    :cond_76
    invoke-static {p1}, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->-$$Nest$fgetmIconAnimationStartMillis(Landroid/window/SplashScreenView$SplashScreenViewParcelable;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v0

    iput-object v0, p0, Landroid/window/SplashScreenView$Builder;->mIconAnimationStart:Ljava/time/Instant;

    .line 170
    invoke-static {p1}, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->-$$Nest$fgetmIconAnimationDurationMillis(Landroid/window/SplashScreenView$SplashScreenViewParcelable;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v0

    iput-object v0, p0, Landroid/window/SplashScreenView$Builder;->mIconAnimationDuration:Ljava/time/Duration;

    .line 171
    invoke-static {p1}, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->-$$Nest$fgetmClientCallback(Landroid/window/SplashScreenView$SplashScreenViewParcelable;)Landroid/os/RemoteCallback;

    move-result-object p1

    iput-object p1, p0, Landroid/window/SplashScreenView$Builder;->mClientCallback:Landroid/os/RemoteCallback;

    .line 172
    invoke-static {}, Landroid/window/SplashScreenView;->-$$Nest$sfgetDEBUG()Z

    move-result p1

    if-eqz p1, :cond_a9

    .line 173
    invoke-static {}, Landroid/window/SplashScreenView;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Landroid/window/SplashScreenView$Builder;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Building from parcel drawable: %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_a9
    return-object p0
.end method

.method public blacklist setAllowHandleSolidColor(Z)Landroid/window/SplashScreenView$Builder;
    .registers 2

    .line 241
    iput-boolean p1, p0, Landroid/window/SplashScreenView$Builder;->mAllowHandleSolidColor:Z

    .line 242
    return-object p0
.end method

.method public blacklist setBackgroundColor(I)Landroid/window/SplashScreenView$Builder;
    .registers 2

    .line 190
    iput p1, p0, Landroid/window/SplashScreenView$Builder;->mBackgroundColor:I

    .line 191
    return-object p0
.end method

.method public blacklist setBrandingDrawable(Landroid/graphics/drawable/Drawable;II)Landroid/window/SplashScreenView$Builder;
    .registers 4

    .line 230
    iput-object p1, p0, Landroid/window/SplashScreenView$Builder;->mBrandingDrawable:Landroid/graphics/drawable/Drawable;

    .line 231
    iput p2, p0, Landroid/window/SplashScreenView$Builder;->mBrandingImageWidth:I

    .line 232
    iput p3, p0, Landroid/window/SplashScreenView$Builder;->mBrandingImageHeight:I

    .line 233
    return-object p0
.end method

.method public blacklist setCenterViewDrawable(Landroid/graphics/drawable/Drawable;)Landroid/window/SplashScreenView$Builder;
    .registers 2

    .line 206
    iput-object p1, p0, Landroid/window/SplashScreenView$Builder;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 207
    return-object p0
.end method

.method public blacklist setIconBackground(Landroid/graphics/drawable/Drawable;)Landroid/window/SplashScreenView$Builder;
    .registers 2

    .line 214
    iput-object p1, p0, Landroid/window/SplashScreenView$Builder;->mIconBackground:Landroid/graphics/drawable/Drawable;

    .line 215
    return-object p0
.end method

.method public blacklist setIconSize(I)Landroid/window/SplashScreenView$Builder;
    .registers 2

    .line 182
    iput p1, p0, Landroid/window/SplashScreenView$Builder;->mIconSize:I

    .line 183
    return-object p0
.end method

.method public blacklist setOverlayDrawable(Landroid/graphics/drawable/Drawable;)Landroid/window/SplashScreenView$Builder;
    .registers 2

    .line 198
    iput-object p1, p0, Landroid/window/SplashScreenView$Builder;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    .line 199
    return-object p0
.end method

.method public blacklist setUiThreadInitConsumer(Ljava/util/function/Consumer;)Landroid/window/SplashScreenView$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Runnable;",
            ">;)",
            "Landroid/window/SplashScreenView$Builder;"
        }
    .end annotation

    .line 222
    iput-object p1, p0, Landroid/window/SplashScreenView$Builder;->mUiThreadInitTask:Ljava/util/function/Consumer;

    .line 223
    return-object p0
.end method
