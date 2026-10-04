.class public Landroid/window/SnapshotDrawerUtils;
.super Ljava/lang/Object;
.source "SnapshotDrawerUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/SnapshotDrawerUtils$SnapshotSurface;,
        Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;
    }
.end annotation


# static fields
.field static final blacklist FLAG_INHERIT_EXCLUDES:I = 0x3186e03a

.field private static final blacklist TAG:Ljava/lang/String; = "SnapshotDrawerUtils"

.field private static blacklist sToolkitSetFrameRateReadOnlyFlagValue:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 79
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/Flags;->toolkitSetFrameRateReadOnly()Z

    move-result v0

    sput-boolean v0, Landroid/window/SnapshotDrawerUtils;->sToolkitSetFrameRateReadOnlyFlagValue:Z

    .line 78
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist createLayoutParameters(Landroid/window/StartingWindowInfo;Ljava/lang/CharSequence;IILandroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;
    .registers 10

    .line 248
    iget-object p0, p0, Landroid/window/StartingWindowInfo;->mainWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 249
    if-nez p0, :cond_e

    .line 250
    const-string p0, "SnapshotDrawerUtils"

    const-string/jumbo p1, "unable to create taskSnapshot surface "

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    const/4 p0, 0x0

    return-object p0

    .line 253
    :cond_e
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 255
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v1, v1, Landroid/view/InsetsFlags;->appearance:I

    .line 256
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 257
    iget v3, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 259
    iget-object v4, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iput-object v4, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 260
    iget v4, p0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 261
    iget v4, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 262
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 263
    iput p3, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 264
    const p2, -0x3186e03b

    and-int/2addr p2, v2

    or-int/lit8 p2, p2, 0x8

    or-int/lit8 p2, p2, 0x10

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 267
    const p2, 0x8800

    and-int/2addr p2, v3

    const/high16 p3, 0x20000000

    or-int/2addr p2, p3

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 274
    iput-object p4, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 275
    const/4 p2, -0x1

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 276
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 277
    iget-object p2, v0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iput v1, p2, Landroid/view/InsetsFlags;->appearance:I

    .line 278
    iget-object p2, v0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget-object p3, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget p3, p3, Landroid/view/InsetsFlags;->behavior:I

    iput p3, p2, Landroid/view/InsetsFlags;->behavior:I

    .line 279
    iget p2, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 280
    invoke-virtual {p0}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsTypes()I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 281
    invoke-virtual {p0}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsSides()I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsSides(I)V

    .line 282
    invoke-virtual {p0}, Landroid/view/WindowManager$LayoutParams;->isFitInsetsIgnoringVisibility()Z

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsIgnoringVisibility(Z)V

    .line 283
    sget-boolean p0, Landroid/window/SnapshotDrawerUtils;->sToolkitSetFrameRateReadOnlyFlagValue:Z

    if-eqz p0, :cond_72

    .line 284
    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/view/WindowManager$LayoutParams;->setFrameRatePowerSavingsBalanced(Z)V

    .line 287
    :cond_72
    invoke-virtual {v0, p1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 288
    iget p0, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    or-int/lit8 p0, p0, 0x1

    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 289
    return-object v0
.end method

.method public static blacklist drawSnapshotOnSurface(Landroid/view/WindowManager$LayoutParams;Landroid/view/SurfaceControl;Landroid/window/TaskSnapshot;Landroid/graphics/Rect;Z)V
    .registers 6

    .line 233
    invoke-virtual {p3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 234
    const-string p0, "SnapshotDrawerUtils"

    const-string p1, "Unable to draw snapshot on an empty windowBounds"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    return-void

    .line 237
    :cond_e
    new-instance v0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;

    .line 238
    invoke-virtual {p0}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-direct {v0, p1, p2, p3, p0}, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;-><init>(Landroid/view/SurfaceControl;Landroid/window/TaskSnapshot;Landroid/graphics/Rect;Ljava/lang/CharSequence;)V

    .line 239
    invoke-static {v0, p4}, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->-$$Nest$mdrawSnapshot(Landroid/window/SnapshotDrawerUtils$SnapshotSurface;Z)V

    .line 240
    return-void
.end method

.method public static blacklist getOrCreateTaskDescription(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/app/ActivityManager$TaskDescription;
    .registers 2

    .line 218
    iget-object v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    if-eqz v0, :cond_7

    .line 219
    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    goto :goto_10

    .line 221
    :cond_7
    new-instance p0, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {p0}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    .line 222
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/app/ActivityManager$TaskDescription;->setBackgroundColor(I)V

    .line 224
    :goto_10
    return-object p0
.end method
