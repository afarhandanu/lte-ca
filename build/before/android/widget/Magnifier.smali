.class public final Landroid/widget/Magnifier;
.super Ljava/lang/Object;
.source "Magnifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Magnifier$Builder;,
        Landroid/widget/Magnifier$SurfaceInfo;,
        Landroid/widget/Magnifier$InternalPopupWindow;,
        Landroid/widget/Magnifier$Callback;,
        Landroid/widget/Magnifier$SourceBound;
    }
.end annotation


# static fields
.field private static final blacklist FISHEYE_RAMP_WIDTH:F = 12.0f

.field private static final greylist-max-o NONEXISTENT_PREVIOUS_CONFIG_VALUE:I = -0x1

.field public static final whitelist SOURCE_BOUND_MAX_IN_SURFACE:I = 0x0

.field public static final whitelist SOURCE_BOUND_MAX_VISIBLE:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "Magnifier"

.field private static final greylist-max-o sPixelCopyHandlerThread:Landroid/os/HandlerThread;


# instance fields
.field private blacklist mBottomContentBound:I

.field private greylist-max-o mCallback:Landroid/widget/Magnifier$Callback;

.field private final greylist-max-o mClampedCenterZoomCoords:Landroid/graphics/Point;

.field private final blacklist mClippingEnabled:Z

.field private greylist-max-o mContentCopySurface:Landroid/widget/Magnifier$SurfaceInfo;

.field private blacklist mCursorDrawable:Landroid/graphics/drawable/Drawable;

.field private final blacklist mDefaultHorizontalSourceToMagnifierOffset:I

.field private final blacklist mDefaultVerticalSourceToMagnifierOffset:I

.field private blacklist mDirtyState:Z

.field private blacklist mDrawCursorEnabled:Z

.field private blacklist mIsFishEyeStyle:Z

.field private blacklist mLeftContentBound:I

.field private blacklist mLeftCutWidth:I

.field private final greylist-max-o mLock:Ljava/lang/Object;

.field private final blacklist mOverlay:Landroid/graphics/drawable/Drawable;

.field private greylist-max-o mParentSurface:Landroid/widget/Magnifier$SurfaceInfo;

.field private final greylist-max-o mPixelCopyRequestRect:Landroid/graphics/Rect;

.field private final blacklist mPrevShowSourceCoords:Landroid/graphics/PointF;

.field private final blacklist mPrevShowWindowCoords:Landroid/graphics/PointF;

.field private final greylist-max-o mPrevStartCoordsInSurface:Landroid/graphics/Point;

.field private final blacklist mRamp:I

.field private blacklist mRightContentBound:I

.field private blacklist mRightCutWidth:I

.field private blacklist mSourceHeight:I

.field private blacklist mSourceWidth:I

.field private blacklist mTopContentBound:I

.field private final greylist-max-o mView:Landroid/view/View;

.field private final greylist-max-o mViewCoordinatesInSurface:[I

.field private greylist-max-o mWindow:Landroid/widget/Magnifier$InternalPopupWindow;

.field private final greylist-max-o mWindowCoords:Landroid/graphics/Point;

.field private final greylist-max-o mWindowCornerRadius:F

.field private final greylist-max-o mWindowElevation:F

.field private greylist-max-o mWindowHeight:I

.field private final greylist-max-o mWindowWidth:I

.field private greylist-max-o mZoom:F


# direct methods
.method public static synthetic blacklist $r8$lambda$2f8tF0r61-PRhlq-EjI2y1Co4Cg(Landroid/widget/Magnifier;Landroid/widget/Magnifier$InternalPopupWindow;Landroid/graphics/Point;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/Magnifier;->lambda$show$0(Landroid/widget/Magnifier$InternalPopupWindow;Landroid/graphics/Point;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$4Pu8FXihp-ce0E9t3i7DfX72_Uo(Landroid/widget/Magnifier;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/Magnifier;->lambda$onPixelCopyFailed$2()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$x4uCauLdemnMoHpUdRuMRHR6WLI(Landroid/widget/Magnifier;Landroid/widget/Magnifier$InternalPopupWindow;ZLandroid/graphics/Point;Landroid/graphics/Bitmap;I)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Landroid/widget/Magnifier;->lambda$performPixelCopy$1(Landroid/widget/Magnifier$InternalPopupWindow;ZLandroid/graphics/Point;Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 79
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "magnifier pixel copy result handler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/widget/Magnifier;->sPixelCopyHandlerThread:Landroid/os/HandlerThread;

    .line 241
    sget-object v0, Landroid/widget/Magnifier;->sPixelCopyHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 242
    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/View;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 165
    invoke-static {p1}, Landroid/widget/Magnifier;->createBuilderWithOldMagnifierDefaults(Landroid/view/View;)Landroid/widget/Magnifier$Builder;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/widget/Magnifier;-><init>(Landroid/widget/Magnifier$Builder;)V

    .line 166
    return-void
.end method

.method private constructor blacklist <init>(Landroid/widget/Magnifier$Builder;)V
    .registers 4

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Landroid/widget/Magnifier;->mWindowCoords:Landroid/graphics/Point;

    .line 131
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Landroid/widget/Magnifier;->mClampedCenterZoomCoords:Landroid/graphics/Point;

    .line 133
    new-instance v0, Landroid/graphics/Point;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Landroid/widget/Magnifier;->mPrevStartCoordsInSurface:Landroid/graphics/Point;

    .line 135
    new-instance v0, Landroid/graphics/PointF;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Landroid/widget/Magnifier;->mPrevShowSourceCoords:Landroid/graphics/PointF;

    .line 137
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Landroid/widget/Magnifier;->mPrevShowWindowCoords:Landroid/graphics/PointF;

    .line 140
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/Magnifier;->mPixelCopyRequestRect:Landroid/graphics/Rect;

    .line 143
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/widget/Magnifier;->mLock:Ljava/lang/Object;

    .line 150
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/Magnifier;->mLeftCutWidth:I

    .line 152
    iput v0, p0, Landroid/widget/Magnifier;->mRightCutWidth:I

    .line 210
    invoke-static {p1}, Landroid/widget/Magnifier$Builder;->-$$Nest$fgetmView(Landroid/widget/Magnifier$Builder;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Magnifier;->mView:Landroid/view/View;

    .line 211
    invoke-static {p1}, Landroid/widget/Magnifier$Builder;->-$$Nest$fgetmWidth(Landroid/widget/Magnifier$Builder;)I

    move-result v0

    iput v0, p0, Landroid/widget/Magnifier;->mWindowWidth:I

    .line 212
    invoke-static {p1}, Landroid/widget/Magnifier$Builder;->-$$Nest$fgetmHeight(Landroid/widget/Magnifier$Builder;)I

    move-result v0

    iput v0, p0, Landroid/widget/Magnifier;->mWindowHeight:I

    .line 213
    invoke-static {p1}, Landroid/widget/Magnifier$Builder;->-$$Nest$fgetmZoom(Landroid/widget/Magnifier$Builder;)F

    move-result v0

    iput v0, p0, Landroid/widget/Magnifier;->mZoom:F

    .line 214
    invoke-static {p1}, Landroid/widget/Magnifier$Builder;->-$$Nest$fgetmIsFishEyeStyle(Landroid/widget/Magnifier$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/Magnifier;->mIsFishEyeStyle:Z

    .line 215
    invoke-static {p1}, Landroid/widget/Magnifier$Builder;->-$$Nest$fgetmSourceWidth(Landroid/widget/Magnifier$Builder;)I

    move-result v0

    if-lez v0, :cond_73

    invoke-static {p1}, Landroid/widget/Magnifier$Builder;->-$$Nest$fgetmSourceHeight(Landroid/widget/Magnifier$Builder;)I

    move-result v0

    if-lez v0, :cond_73

    .line 216
    invoke-static {p1}, Landroid/widget/Magnifier$Builder;->-$$Nest$fgetmSourceWidth(Landroid/widget/Magnifier$Builder;)I

    move-result v0

    iput v0, p0, Landroid/widget/Magnifier;->mSourceWidth:I

    .line 217
    invoke-static {p1}, Landroid/widget/Magnifier$Builder;->-$$Nest$fgetmSourceHeight(Landroid/widget/Magnifier$Builder;)I

    move-result v0

    iput v0, p0, Landroid/widget/Magnifier;->mSourceHeight:I

    goto :goto_8b

    .line 219
    :cond_73
    iget v0, p0, Landroid/widget/Magnifier;->mWindowWidth:I

    int-to-float v0, v0

    iget v1, p0, Landroid/widget/Magnifier;->mZoom:F

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Landroid/widget/Magnifier;->mSourceWidth:I

    .line 220
    iget v0, p0, Landroid/widget/Magnifier;->mWindowHeight:I

    int-to-float v0, v0

    iget v1, p0, Landroid/widget/Magnifier;->mZoom:F

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Landroid/widget/Magnifier;->mSourceHeight:I

    .line 222
    :goto_8b
    invoke-static {p1}, Landroid/widget/Magnifier$Builder;->-$$Nest$fgetmElevation(Landroid/widget/Magnifier$Builder;)F

    move-result v0

    iput v0, p0, Landroid/widget/Magnifier;->mWindowElevation:F

    .line 223
    invoke-static {p1}, Landroid/widget/Magnifier$Builder;->-$$Nest$fgetmCornerRadius(Landroid/widget/Magnifier$Builder;)F

    move-result v0

    iput v0, p0, Landroid/widget/Magnifier;->mWindowCornerRadius:F

    .line 224
    invoke-static {p1}, Landroid/widget/Magnifier$Builder;->-$$Nest$fgetmOverlay(Landroid/widget/Magnifier$Builder;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Magnifier;->mOverlay:Landroid/graphics/drawable/Drawable;

    .line 225
    invoke-static {p1}, Landroid/widget/Magnifier$Builder;->-$$Nest$fgetmHorizontalDefaultSourceToMagnifierOffset(Landroid/widget/Magnifier$Builder;)I

    move-result v0

    iput v0, p0, Landroid/widget/Magnifier;->mDefaultHorizontalSourceToMagnifierOffset:I

    .line 227
    invoke-static {p1}, Landroid/widget/Magnifier$Builder;->-$$Nest$fgetmVerticalDefaultSourceToMagnifierOffset(Landroid/widget/Magnifier$Builder;)I

    move-result v0

    iput v0, p0, Landroid/widget/Magnifier;->mDefaultVerticalSourceToMagnifierOffset:I

    .line 229
    invoke-static {p1}, Landroid/widget/Magnifier$Builder;->-$$Nest$fgetmClippingEnabled(Landroid/widget/Magnifier$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/Magnifier;->mClippingEnabled:Z

    .line 230
    invoke-static {p1}, Landroid/widget/Magnifier$Builder;->-$$Nest$fgetmLeftContentBound(Landroid/widget/Magnifier$Builder;)I

    move-result v0

    iput v0, p0, Landroid/widget/Magnifier;->mLeftContentBound:I

    .line 231
    invoke-static {p1}, Landroid/widget/Magnifier$Builder;->-$$Nest$fgetmTopContentBound(Landroid/widget/Magnifier$Builder;)I

    move-result v0

    iput v0, p0, Landroid/widget/Magnifier;->mTopContentBound:I

    .line 232
    invoke-static {p1}, Landroid/widget/Magnifier$Builder;->-$$Nest$fgetmRightContentBound(Landroid/widget/Magnifier$Builder;)I

    move-result v0

    iput v0, p0, Landroid/widget/Magnifier;->mRightContentBound:I

    .line 233
    invoke-static {p1}, Landroid/widget/Magnifier$Builder;->-$$Nest$fgetmBottomContentBound(Landroid/widget/Magnifier$Builder;)I

    move-result p1

    iput p1, p0, Landroid/widget/Magnifier;->mBottomContentBound:I

    .line 235
    const/4 p1, 0x2

    new-array p1, p1, [I

    iput-object p1, p0, Landroid/widget/Magnifier;->mViewCoordinatesInSurface:[I

    .line 236
    iget-object p1, p0, Landroid/widget/Magnifier;->mView:Landroid/view/View;

    .line 237
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 236
    const/4 v0, 0x1

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v0, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Landroid/widget/Magnifier;->mRamp:I

    .line 238
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/Magnifier$Builder;Landroid/widget/Magnifier-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/Magnifier;-><init>(Landroid/widget/Magnifier$Builder;)V

    return-void
.end method

.method static blacklist createBuilderWithOldMagnifierDefaults(Landroid/view/View;)Landroid/widget/Magnifier$Builder;
    .registers 7

    .line 169
    new-instance v0, Landroid/widget/Magnifier$Builder;

    invoke-direct {v0, p0}, Landroid/widget/Magnifier$Builder;-><init>(Landroid/view/View;)V

    .line 170
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 171
    sget-object v1, Lcom/android/internal/R$styleable;->Magnifier:[I

    const/4 v2, 0x0

    const v3, 0x112008c

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v1, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 173
    const/4 v2, 0x5

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    invoke-static {v0, v2}, Landroid/widget/Magnifier$Builder;->-$$Nest$fputmWidth(Landroid/widget/Magnifier$Builder;I)V

    .line 174
    const/4 v2, 0x2

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    invoke-static {v0, v2}, Landroid/widget/Magnifier$Builder;->-$$Nest$fputmHeight(Landroid/widget/Magnifier$Builder;I)V

    .line 175
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    invoke-static {v0, v5}, Landroid/widget/Magnifier$Builder;->-$$Nest$fputmElevation(Landroid/widget/Magnifier$Builder;F)V

    .line 176
    invoke-static {p0}, Landroid/widget/Magnifier;->getDeviceDefaultDialogCornerRadius(Landroid/content/Context;)F

    move-result p0

    invoke-static {v0, p0}, Landroid/widget/Magnifier$Builder;->-$$Nest$fputmCornerRadius(Landroid/widget/Magnifier$Builder;F)V

    .line 177
    const/4 p0, 0x6

    invoke-virtual {v1, p0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p0

    invoke-static {v0, p0}, Landroid/widget/Magnifier$Builder;->-$$Nest$fputmZoom(Landroid/widget/Magnifier$Builder;F)V

    .line 178
    nop

    .line 179
    const/4 p0, 0x3

    invoke-virtual {v1, p0, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p0

    invoke-static {v0, p0}, Landroid/widget/Magnifier$Builder;->-$$Nest$fputmHorizontalDefaultSourceToMagnifierOffset(Landroid/widget/Magnifier$Builder;I)V

    .line 180
    nop

    .line 181
    const/4 p0, 0x4

    invoke-virtual {v1, p0, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p0

    invoke-static {v0, p0}, Landroid/widget/Magnifier$Builder;->-$$Nest$fputmVerticalDefaultSourceToMagnifierOffset(Landroid/widget/Magnifier$Builder;I)V

    .line 182
    new-instance p0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v1, v4, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    invoke-direct {p0, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-static {v0, p0}, Landroid/widget/Magnifier$Builder;->-$$Nest$fputmOverlay(Landroid/widget/Magnifier$Builder;Landroid/graphics/drawable/Drawable;)V

    .line 184
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 185
    invoke-static {v0, v2}, Landroid/widget/Magnifier$Builder;->-$$Nest$fputmClippingEnabled(Landroid/widget/Magnifier$Builder;Z)V

    .line 186
    invoke-static {v0, v2}, Landroid/widget/Magnifier$Builder;->-$$Nest$fputmLeftContentBound(Landroid/widget/Magnifier$Builder;I)V

    .line 187
    invoke-static {v0, v4}, Landroid/widget/Magnifier$Builder;->-$$Nest$fputmTopContentBound(Landroid/widget/Magnifier$Builder;I)V

    .line 188
    invoke-static {v0, v2}, Landroid/widget/Magnifier$Builder;->-$$Nest$fputmRightContentBound(Landroid/widget/Magnifier$Builder;I)V

    .line 189
    invoke-static {v0, v4}, Landroid/widget/Magnifier$Builder;->-$$Nest$fputmBottomContentBound(Landroid/widget/Magnifier$Builder;I)V

    .line 190
    return-object v0
.end method

.method private blacklist getCurrentClampedWindowCoordinates()Landroid/graphics/Point;
    .registers 7

    .line 868
    iget-boolean v0, p0, Landroid/widget/Magnifier;->mClippingEnabled:Z

    if-nez v0, :cond_c

    .line 870
    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Landroid/widget/Magnifier;->mWindowCoords:Landroid/graphics/Point;

    invoke-direct {v0, v1}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    return-object v0

    .line 874
    :cond_c
    iget-object v0, p0, Landroid/widget/Magnifier;->mParentSurface:Landroid/widget/Magnifier$SurfaceInfo;

    invoke-static {v0}, Landroid/widget/Magnifier$SurfaceInfo;->-$$Nest$fgetmIsMainWindowSurface(Landroid/widget/Magnifier$SurfaceInfo;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 875
    iget-object v0, p0, Landroid/widget/Magnifier;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsets()Landroid/graphics/Insets;

    move-result-object v0

    .line 876
    new-instance v1, Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Insets;->left:I

    iget-object v3, p0, Landroid/widget/Magnifier;->mParentSurface:Landroid/widget/Magnifier$SurfaceInfo;

    invoke-static {v3}, Landroid/widget/Magnifier$SurfaceInfo;->-$$Nest$fgetmInsets(Landroid/widget/Magnifier$SurfaceInfo;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Insets;->top:I

    iget-object v4, p0, Landroid/widget/Magnifier;->mParentSurface:Landroid/widget/Magnifier$SurfaceInfo;

    invoke-static {v4}, Landroid/widget/Magnifier$SurfaceInfo;->-$$Nest$fgetmInsets(Landroid/widget/Magnifier$SurfaceInfo;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    iget-object v4, p0, Landroid/widget/Magnifier;->mParentSurface:Landroid/widget/Magnifier$SurfaceInfo;

    invoke-static {v4}, Landroid/widget/Magnifier$SurfaceInfo;->-$$Nest$fgetmWidth(Landroid/widget/Magnifier$SurfaceInfo;)I

    move-result v4

    iget v5, v0, Landroid/graphics/Insets;->right:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/widget/Magnifier;->mParentSurface:Landroid/widget/Magnifier$SurfaceInfo;

    invoke-static {v5}, Landroid/widget/Magnifier$SurfaceInfo;->-$$Nest$fgetmInsets(Landroid/widget/Magnifier$SurfaceInfo;)Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/widget/Magnifier;->mParentSurface:Landroid/widget/Magnifier$SurfaceInfo;

    invoke-static {v5}, Landroid/widget/Magnifier$SurfaceInfo;->-$$Nest$fgetmHeight(Landroid/widget/Magnifier$SurfaceInfo;)I

    move-result v5

    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    sub-int/2addr v5, v0

    iget-object v0, p0, Landroid/widget/Magnifier;->mParentSurface:Landroid/widget/Magnifier$SurfaceInfo;

    invoke-static {v0}, Landroid/widget/Magnifier$SurfaceInfo;->-$$Nest$fgetmInsets(Landroid/widget/Magnifier$SurfaceInfo;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v0

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 883
    goto :goto_70

    .line 884
    :cond_5e
    new-instance v1, Landroid/graphics/Rect;

    iget-object v0, p0, Landroid/widget/Magnifier;->mParentSurface:Landroid/widget/Magnifier$SurfaceInfo;

    invoke-static {v0}, Landroid/widget/Magnifier$SurfaceInfo;->-$$Nest$fgetmWidth(Landroid/widget/Magnifier$SurfaceInfo;)I

    move-result v0

    iget-object v2, p0, Landroid/widget/Magnifier;->mParentSurface:Landroid/widget/Magnifier$SurfaceInfo;

    invoke-static {v2}, Landroid/widget/Magnifier$SurfaceInfo;->-$$Nest$fgetmHeight(Landroid/widget/Magnifier$SurfaceInfo;)I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v0, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 886
    :goto_70
    iget v0, v1, Landroid/graphics/Rect;->left:I

    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget v3, p0, Landroid/widget/Magnifier;->mWindowWidth:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/widget/Magnifier;->mWindowCoords:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    .line 887
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 886
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 888
    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Landroid/widget/Magnifier;->mWindowHeight:I

    sub-int/2addr v1, v3

    iget-object v3, p0, Landroid/widget/Magnifier;->mWindowCoords:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    .line 889
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 888
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 890
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    return-object v2
.end method

.method private static blacklist getDeviceDefaultDialogCornerRadius(Landroid/content/Context;)F
    .registers 3

    .line 199
    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x1030128

    invoke-direct {v0, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 201
    const p0, 0x1010571

    filled-new-array {p0}, [I

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 203
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    .line 204
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 205
    return v0
.end method

.method public static blacklist getMagnifierDefaultSize()Landroid/graphics/PointF;
    .registers 4

    .line 1725
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 1726
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 1727
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    .line 1728
    const v3, 0x1050175

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    div-float/2addr v3, v1

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 1729
    const v3, 0x1050172

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    div-float/2addr v0, v1

    iput v0, v2, Landroid/graphics/PointF;->y:F

    .line 1730
    return-object v2
.end method

.method private synthetic blacklist lambda$onPixelCopyFailed$2()V
    .registers 2

    .line 855
    invoke-virtual {p0}, Landroid/widget/Magnifier;->dismiss()V

    .line 856
    iget-object v0, p0, Landroid/widget/Magnifier;->mCallback:Landroid/widget/Magnifier$Callback;

    if-eqz v0, :cond_c

    .line 857
    iget-object v0, p0, Landroid/widget/Magnifier;->mCallback:Landroid/widget/Magnifier$Callback;

    invoke-interface {v0}, Landroid/widget/Magnifier$Callback;->onOperationComplete()V

    .line 859
    :cond_c
    return-void
.end method

.method private synthetic blacklist lambda$performPixelCopy$1(Landroid/widget/Magnifier$InternalPopupWindow;ZLandroid/graphics/Point;Landroid/graphics/Bitmap;I)V
    .registers 10

    .line 817
    if-eqz p5, :cond_6

    .line 818
    invoke-direct {p0}, Landroid/widget/Magnifier;->onPixelCopyFailed()V

    .line 819
    return-void

    .line 821
    :cond_6
    iget-object p5, p0, Landroid/widget/Magnifier;->mLock:Ljava/lang/Object;

    monitor-enter p5

    .line 822
    :try_start_9
    iget-object v0, p0, Landroid/widget/Magnifier;->mWindow:Landroid/widget/Magnifier$InternalPopupWindow;

    if-eq v0, p1, :cond_f

    .line 824
    monitor-exit p5

    return-void

    .line 826
    :cond_f
    if-eqz p2, :cond_1a

    .line 828
    iget-object p1, p0, Landroid/widget/Magnifier;->mWindow:Landroid/widget/Magnifier$InternalPopupWindow;

    iget p2, p3, Landroid/graphics/Point;->x:I

    iget p3, p3, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, p2, p3}, Landroid/widget/Magnifier$InternalPopupWindow;->setContentPositionForNextDraw(II)V

    .line 831
    :cond_1a
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iget p2, p0, Landroid/widget/Magnifier;->mSourceWidth:I

    if-ge p1, p2, :cond_53

    .line 834
    iget p1, p0, Landroid/widget/Magnifier;->mSourceWidth:I

    .line 835
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p3

    .line 834
    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 836
    new-instance p2, Landroid/graphics/Canvas;

    invoke-direct {p2, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 837
    new-instance p3, Landroid/graphics/Rect;

    iget v0, p0, Landroid/widget/Magnifier;->mLeftCutWidth:I

    iget v1, p0, Landroid/widget/Magnifier;->mSourceWidth:I

    iget v2, p0, Landroid/widget/Magnifier;->mRightCutWidth:I

    sub-int/2addr v1, v2

    .line 838
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {p3, v0, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 839
    const/4 v0, 0x0

    invoke-virtual {p2, p4, v0, p3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 840
    invoke-direct {p0, p2}, Landroid/widget/Magnifier;->maybeDrawCursor(Landroid/graphics/Canvas;)V

    .line 841
    iget-object p2, p0, Landroid/widget/Magnifier;->mWindow:Landroid/widget/Magnifier$InternalPopupWindow;

    invoke-virtual {p2, p1}, Landroid/widget/Magnifier$InternalPopupWindow;->updateContent(Landroid/graphics/Bitmap;)V

    .line 842
    goto :goto_60

    .line 843
    :cond_53
    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1, p4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {p0, p1}, Landroid/widget/Magnifier;->maybeDrawCursor(Landroid/graphics/Canvas;)V

    .line 844
    iget-object p1, p0, Landroid/widget/Magnifier;->mWindow:Landroid/widget/Magnifier$InternalPopupWindow;

    invoke-virtual {p1, p4}, Landroid/widget/Magnifier$InternalPopupWindow;->updateContent(Landroid/graphics/Bitmap;)V

    .line 846
    :goto_60
    monitor-exit p5

    .line 847
    return-void

    .line 846
    :catchall_62
    move-exception p1

    monitor-exit p5
    :try_end_64
    .catchall {:try_start_9 .. :try_end_64} :catchall_62

    throw p1
.end method

.method private synthetic blacklist lambda$show$0(Landroid/widget/Magnifier$InternalPopupWindow;Landroid/graphics/Point;)V
    .registers 5

    .line 374
    iget-object v0, p0, Landroid/widget/Magnifier;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 375
    :try_start_3
    iget-object v1, p0, Landroid/widget/Magnifier;->mWindow:Landroid/widget/Magnifier$InternalPopupWindow;

    if-eq v1, p1, :cond_9

    .line 377
    monitor-exit v0

    return-void

    .line 379
    :cond_9
    iget-object p1, p0, Landroid/widget/Magnifier;->mWindow:Landroid/widget/Magnifier$InternalPopupWindow;

    iget v1, p2, Landroid/graphics/Point;->x:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v1, p2}, Landroid/widget/Magnifier$InternalPopupWindow;->setContentPositionForNextDraw(II)V

    .line 380
    monitor-exit v0

    .line 381
    return-void

    .line 380
    :catchall_14
    move-exception p1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p1
.end method

.method private blacklist maybeDrawCursor(Landroid/graphics/Canvas;)V
    .registers 8

    .line 769
    iget-boolean v0, p0, Landroid/widget/Magnifier;->mDrawCursorEnabled:Z

    if-eqz v0, :cond_45

    .line 770
    iget-object v0, p0, Landroid/widget/Magnifier;->mCursorDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_25

    .line 771
    iget-object v0, p0, Landroid/widget/Magnifier;->mCursorDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Landroid/widget/Magnifier;->mSourceWidth:I

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Landroid/widget/Magnifier;->mSourceWidth:I

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Landroid/widget/Magnifier;->mCursorDrawable:Landroid/graphics/drawable/Drawable;

    .line 773
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p0, Landroid/widget/Magnifier;->mSourceHeight:I

    .line 771
    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 774
    iget-object v0, p0, Landroid/widget/Magnifier;->mCursorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_45

    .line 776
    :cond_25
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 777
    const/high16 v2, -0x1000000

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 778
    new-instance v2, Landroid/graphics/Rect;

    iget v3, p0, Landroid/widget/Magnifier;->mSourceWidth:I

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Landroid/widget/Magnifier;->mSourceWidth:I

    div-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x1

    iget v5, p0, Landroid/widget/Magnifier;->mSourceHeight:I

    invoke-direct {v2, v3, v1, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 783
    :cond_45
    :goto_45
    return-void
.end method

.method private greylist-max-o obtainContentCoordinates(FF)V
    .registers 11

    .line 670
    iget-object v0, p0, Landroid/widget/Magnifier;->mViewCoordinatesInSurface:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 671
    iget-object v2, p0, Landroid/widget/Magnifier;->mViewCoordinatesInSurface:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    .line 672
    iget-object v4, p0, Landroid/widget/Magnifier;->mView:Landroid/view/View;

    iget-object v5, p0, Landroid/widget/Magnifier;->mViewCoordinatesInSurface:[I

    invoke-virtual {v4, v5}, Landroid/view/View;->getLocationInSurface([I)V

    .line 673
    iget-object v4, p0, Landroid/widget/Magnifier;->mViewCoordinatesInSurface:[I

    aget v4, v4, v1

    if-ne v4, v0, :cond_1d

    iget-object v0, p0, Landroid/widget/Magnifier;->mViewCoordinatesInSurface:[I

    aget v0, v0, v3

    if-eq v0, v2, :cond_1f

    .line 675
    :cond_1d
    iput-boolean v3, p0, Landroid/widget/Magnifier;->mDirtyState:Z

    .line 680
    :cond_1f
    iget-object v0, p0, Landroid/widget/Magnifier;->mView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/SurfaceView;

    if-eqz v0, :cond_2e

    .line 682
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 683
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    goto :goto_42

    .line 685
    :cond_2e
    iget-object v0, p0, Landroid/widget/Magnifier;->mViewCoordinatesInSurface:[I

    aget v0, v0, v1

    int-to-float v0, v0

    add-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 686
    iget-object v0, p0, Landroid/widget/Magnifier;->mViewCoordinatesInSurface:[I

    aget v0, v0, v3

    int-to-float v0, v0

    add-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 689
    :goto_42
    const/4 v0, 0x2

    new-array v2, v0, [Landroid/graphics/Rect;

    .line 691
    new-instance v4, Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/widget/Magnifier;->mContentCopySurface:Landroid/widget/Magnifier$SurfaceInfo;

    invoke-static {v5}, Landroid/widget/Magnifier$SurfaceInfo;->-$$Nest$fgetmWidth(Landroid/widget/Magnifier$SurfaceInfo;)I

    move-result v5

    iget-object v6, p0, Landroid/widget/Magnifier;->mContentCopySurface:Landroid/widget/Magnifier$SurfaceInfo;

    invoke-static {v6}, Landroid/widget/Magnifier$SurfaceInfo;->-$$Nest$fgetmHeight(Landroid/widget/Magnifier$SurfaceInfo;)I

    move-result v6

    invoke-direct {v4, v1, v1, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 693
    aput-object v4, v2, v1

    .line 695
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 696
    iget-object v5, p0, Landroid/widget/Magnifier;->mView:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 697
    iget-object v5, p0, Landroid/widget/Magnifier;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v5

    if-eqz v5, :cond_7b

    .line 699
    iget-object v5, p0, Landroid/widget/Magnifier;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v5

    iget-object v5, v5, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v5, v5, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 700
    iget v6, v5, Landroid/graphics/Rect;->left:I

    iget v5, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v6, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 702
    :cond_7b
    iget-object v5, p0, Landroid/widget/Magnifier;->mView:Landroid/view/View;

    instance-of v5, v5, Landroid/view/SurfaceView;

    if-eqz v5, :cond_8e

    .line 704
    iget-object v5, p0, Landroid/widget/Magnifier;->mViewCoordinatesInSurface:[I

    aget v1, v5, v1

    neg-int v1, v1

    iget-object v5, p0, Landroid/widget/Magnifier;->mViewCoordinatesInSurface:[I

    aget v5, v5, v3

    neg-int v5, v5

    invoke-virtual {v4, v1, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 706
    :cond_8e
    aput-object v4, v2, v3

    .line 709
    nop

    .line 710
    iget v1, p0, Landroid/widget/Magnifier;->mLeftContentBound:I

    const/high16 v3, -0x80000000

    move v4, v3

    :goto_96
    if-ltz v1, :cond_a3

    .line 711
    aget-object v5, v2, v1

    iget v5, v5, Landroid/graphics/Rect;->left:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 710
    add-int/lit8 v1, v1, -0x1

    goto :goto_96

    .line 713
    :cond_a3
    nop

    .line 714
    iget v1, p0, Landroid/widget/Magnifier;->mTopContentBound:I

    :goto_a6
    if-ltz v1, :cond_b3

    .line 715
    aget-object v5, v2, v1

    iget v5, v5, Landroid/graphics/Rect;->top:I

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 714
    add-int/lit8 v1, v1, -0x1

    goto :goto_a6

    .line 717
    :cond_b3
    nop

    .line 718
    iget v1, p0, Landroid/widget/Magnifier;->mRightContentBound:I

    const v5, 0x7fffffff

    move v6, v5

    :goto_ba
    if-ltz v1, :cond_c7

    .line 719
    aget-object v7, v2, v1

    iget v7, v7, Landroid/graphics/Rect;->right:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 718
    add-int/lit8 v1, v1, -0x1

    goto :goto_ba

    .line 721
    :cond_c7
    nop

    .line 722
    iget v1, p0, Landroid/widget/Magnifier;->mBottomContentBound:I

    :goto_ca
    if-ltz v1, :cond_d7

    .line 723
    aget-object v7, v2, v1

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 722
    add-int/lit8 v1, v1, -0x1

    goto :goto_ca

    .line 726
    :cond_d7
    iget-object v1, p0, Landroid/widget/Magnifier;->mContentCopySurface:Landroid/widget/Magnifier$SurfaceInfo;

    invoke-static {v1}, Landroid/widget/Magnifier$SurfaceInfo;->-$$Nest$fgetmWidth(Landroid/widget/Magnifier$SurfaceInfo;)I

    move-result v1

    iget v2, p0, Landroid/widget/Magnifier;->mSourceWidth:I

    sub-int/2addr v1, v2

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 727
    iget-object v2, p0, Landroid/widget/Magnifier;->mContentCopySurface:Landroid/widget/Magnifier$SurfaceInfo;

    invoke-static {v2}, Landroid/widget/Magnifier$SurfaceInfo;->-$$Nest$fgetmHeight(Landroid/widget/Magnifier$SurfaceInfo;)I

    move-result v2

    iget v4, p0, Landroid/widget/Magnifier;->mSourceHeight:I

    sub-int/2addr v2, v4

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 728
    if-ltz v1, :cond_f5

    if-gez v2, :cond_fc

    .line 729
    :cond_f5
    const-string v3, "Magnifier"

    const-string v4, "Magnifier\'s content is copied from a surface smaller thanthe content requested size. The magnifier will be dismissed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    :cond_fc
    iget v3, p0, Landroid/widget/Magnifier;->mSourceWidth:I

    add-int/2addr v3, v1

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 733
    iget v4, p0, Landroid/widget/Magnifier;->mSourceHeight:I

    add-int/2addr v4, v2

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 736
    iget-object v5, p0, Landroid/widget/Magnifier;->mClampedCenterZoomCoords:Landroid/graphics/Point;

    iget-boolean v6, p0, Landroid/widget/Magnifier;->mIsFishEyeStyle:Z

    if-eqz v6, :cond_119

    .line 737
    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_129

    .line 738
    :cond_119
    iget v6, p0, Landroid/widget/Magnifier;->mSourceWidth:I

    div-int/2addr v6, v0

    add-int/2addr v1, v6

    iget v6, p0, Landroid/widget/Magnifier;->mSourceWidth:I

    div-int/2addr v6, v0

    sub-int/2addr v3, v6

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    :goto_129
    iput p1, v5, Landroid/graphics/Point;->x:I

    .line 740
    iget-object p1, p0, Landroid/widget/Magnifier;->mClampedCenterZoomCoords:Landroid/graphics/Point;

    iget v1, p0, Landroid/widget/Magnifier;->mSourceHeight:I

    div-int/2addr v1, v0

    add-int/2addr v2, v1

    iget v1, p0, Landroid/widget/Magnifier;->mSourceHeight:I

    div-int/2addr v1, v0

    sub-int/2addr v4, v1

    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p1, Landroid/graphics/Point;->y:I

    .line 742
    return-void
.end method

.method private greylist-max-o obtainSurfaces()V
    .registers 11

    .line 629
    sget-object v0, Landroid/widget/Magnifier$SurfaceInfo;->NULL:Landroid/widget/Magnifier$SurfaceInfo;

    .line 630
    iget-object v1, p0, Landroid/widget/Magnifier;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    if-eqz v1, :cond_41

    .line 631
    iget-object v1, p0, Landroid/widget/Magnifier;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    .line 632
    iget-object v4, v1, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    .line 633
    if-eqz v4, :cond_41

    invoke-virtual {v4}, Landroid/view/Surface;->isValid()Z

    move-result v2

    if-eqz v2, :cond_41

    .line 634
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v7, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 635
    nop

    .line 636
    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getWidth()I

    move-result v0

    iget v2, v7, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v2

    iget v2, v7, Landroid/graphics/Rect;->right:I

    add-int v5, v0, v2

    .line 637
    nop

    .line 638
    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getHeight()I

    move-result v0

    iget v2, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v2

    iget v2, v7, Landroid/graphics/Rect;->bottom:I

    add-int v6, v0, v2

    .line 639
    new-instance v2, Landroid/widget/Magnifier$SurfaceInfo;

    .line 640
    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v3

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Landroid/widget/Magnifier$SurfaceInfo;-><init>(Landroid/view/SurfaceControl;Landroid/view/Surface;IILandroid/graphics/Rect;Z)V

    move-object v0, v2

    .line 645
    :cond_41
    sget-object v1, Landroid/widget/Magnifier$SurfaceInfo;->NULL:Landroid/widget/Magnifier$SurfaceInfo;

    .line 646
    iget-object v2, p0, Landroid/widget/Magnifier;->mView:Landroid/view/View;

    instance-of v2, v2, Landroid/view/SurfaceView;

    if-eqz v2, :cond_79

    .line 647
    iget-object v2, p0, Landroid/widget/Magnifier;->mView:Landroid/view/View;

    check-cast v2, Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v4

    .line 648
    iget-object v2, p0, Landroid/widget/Magnifier;->mView:Landroid/view/View;

    check-cast v2, Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    .line 649
    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v5

    .line 651
    if-eqz v4, :cond_79

    invoke-virtual {v4}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v3

    if-eqz v3, :cond_79

    .line 652
    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v1

    .line 653
    new-instance v3, Landroid/widget/Magnifier$SurfaceInfo;

    iget v6, v1, Landroid/graphics/Rect;->right:I

    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v9}, Landroid/widget/Magnifier$SurfaceInfo;-><init>(Landroid/view/SurfaceControl;Landroid/view/Surface;IILandroid/graphics/Rect;Z)V

    move-object v1, v3

    .line 659
    :cond_79
    sget-object v2, Landroid/widget/Magnifier$SurfaceInfo;->NULL:Landroid/widget/Magnifier$SurfaceInfo;

    if-eq v0, v2, :cond_7f

    .line 660
    move-object v2, v0

    goto :goto_80

    :cond_7f
    move-object v2, v1

    :goto_80
    iput-object v2, p0, Landroid/widget/Magnifier;->mParentSurface:Landroid/widget/Magnifier$SurfaceInfo;

    .line 661
    iget-object v2, p0, Landroid/widget/Magnifier;->mView:Landroid/view/View;

    instance-of v2, v2, Landroid/view/SurfaceView;

    if-eqz v2, :cond_8a

    .line 662
    move-object v0, v1

    goto :goto_8b

    :cond_8a
    nop

    :goto_8b
    iput-object v0, p0, Landroid/widget/Magnifier;->mContentCopySurface:Landroid/widget/Magnifier$SurfaceInfo;

    .line 663
    return-void
.end method

.method private blacklist obtainWindowCoordinates(FF)V
    .registers 7

    .line 751
    iget-object v0, p0, Landroid/widget/Magnifier;->mView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/SurfaceView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_11

    .line 753
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 754
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    goto :goto_25

    .line 756
    :cond_11
    iget-object v0, p0, Landroid/widget/Magnifier;->mViewCoordinatesInSurface:[I

    aget v0, v0, v2

    int-to-float v0, v0

    add-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 757
    iget-object v0, p0, Landroid/widget/Magnifier;->mViewCoordinatesInSurface:[I

    aget v0, v0, v1

    int-to-float v0, v0

    add-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 760
    :goto_25
    iget-object v0, p0, Landroid/widget/Magnifier;->mWindowCoords:Landroid/graphics/Point;

    iget v3, p0, Landroid/widget/Magnifier;->mWindowWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr p1, v3

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 761
    iget-object p1, p0, Landroid/widget/Magnifier;->mWindowCoords:Landroid/graphics/Point;

    iget v0, p0, Landroid/widget/Magnifier;->mWindowHeight:I

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p2, v0

    iput p2, p1, Landroid/graphics/Point;->y:I

    .line 762
    iget-object p1, p0, Landroid/widget/Magnifier;->mParentSurface:Landroid/widget/Magnifier$SurfaceInfo;

    iget-object p2, p0, Landroid/widget/Magnifier;->mContentCopySurface:Landroid/widget/Magnifier$SurfaceInfo;

    if-eq p1, p2, :cond_53

    .line 763
    iget-object p1, p0, Landroid/widget/Magnifier;->mWindowCoords:Landroid/graphics/Point;

    iget p2, p1, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Landroid/widget/Magnifier;->mViewCoordinatesInSurface:[I

    aget v0, v0, v2

    add-int/2addr p2, v0

    iput p2, p1, Landroid/graphics/Point;->x:I

    .line 764
    iget-object p1, p0, Landroid/widget/Magnifier;->mWindowCoords:Landroid/graphics/Point;

    iget p2, p1, Landroid/graphics/Point;->y:I

    iget-object v0, p0, Landroid/widget/Magnifier;->mViewCoordinatesInSurface:[I

    aget v0, v0, v1

    add-int/2addr p2, v0

    iput p2, p1, Landroid/graphics/Point;->y:I

    .line 766
    :cond_53
    return-void
.end method

.method private blacklist onPixelCopyFailed()V
    .registers 3

    .line 852
    const-string v0, "Magnifier"

    const-string v1, "Magnifier failed to copy content from the view Surface. It will be dismissed."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/widget/Magnifier$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroid/widget/Magnifier$$ExternalSyntheticLambda1;-><init>(Landroid/widget/Magnifier;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 860
    return-void
.end method

.method private greylist-max-o performPixelCopy(IIZ)V
    .registers 11

    .line 787
    iget-object v0, p0, Landroid/widget/Magnifier;->mContentCopySurface:Landroid/widget/Magnifier$SurfaceInfo;

    invoke-static {v0}, Landroid/widget/Magnifier$SurfaceInfo;->-$$Nest$fgetmSurface(Landroid/widget/Magnifier$SurfaceInfo;)Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_78

    iget-object v0, p0, Landroid/widget/Magnifier;->mContentCopySurface:Landroid/widget/Magnifier$SurfaceInfo;

    invoke-static {v0}, Landroid/widget/Magnifier$SurfaceInfo;->-$$Nest$fgetmSurface(Landroid/widget/Magnifier$SurfaceInfo;)Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_78

    .line 794
    :cond_15
    invoke-direct {p0}, Landroid/widget/Magnifier;->getCurrentClampedWindowCoordinates()Landroid/graphics/Point;

    move-result-object v5

    .line 797
    iget-object v0, p0, Landroid/widget/Magnifier;->mPixelCopyRequestRect:Landroid/graphics/Rect;

    iget v1, p0, Landroid/widget/Magnifier;->mSourceWidth:I

    add-int/2addr v1, p1

    iget v2, p0, Landroid/widget/Magnifier;->mLeftCutWidth:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/Magnifier;->mRightCutWidth:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/Magnifier;->mSourceHeight:I

    add-int/2addr v2, p2

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 801
    iget-object v0, p0, Landroid/widget/Magnifier;->mPrevStartCoordsInSurface:Landroid/graphics/Point;

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 802
    iget-object p1, p0, Landroid/widget/Magnifier;->mPrevStartCoordsInSurface:Landroid/graphics/Point;

    iput p2, p1, Landroid/graphics/Point;->y:I

    .line 803
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/widget/Magnifier;->mDirtyState:Z

    .line 805
    iget-object v3, p0, Landroid/widget/Magnifier;->mWindow:Landroid/widget/Magnifier$InternalPopupWindow;

    .line 806
    iget-object p1, p0, Landroid/widget/Magnifier;->mPixelCopyRequestRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    if-nez p1, :cond_4f

    .line 808
    iget-object p1, p0, Landroid/widget/Magnifier;->mWindow:Landroid/widget/Magnifier$InternalPopupWindow;

    iget p2, p0, Landroid/widget/Magnifier;->mSourceWidth:I

    iget p3, p0, Landroid/widget/Magnifier;->mSourceHeight:I

    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    .line 809
    invoke-static {p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 808
    invoke-virtual {p1, p2}, Landroid/widget/Magnifier$InternalPopupWindow;->updateContent(Landroid/graphics/Bitmap;)V

    .line 810
    return-void

    .line 812
    :cond_4f
    iget p1, p0, Landroid/widget/Magnifier;->mSourceWidth:I

    iget p2, p0, Landroid/widget/Magnifier;->mLeftCutWidth:I

    sub-int/2addr p1, p2

    iget p2, p0, Landroid/widget/Magnifier;->mRightCutWidth:I

    sub-int/2addr p1, p2

    iget p2, p0, Landroid/widget/Magnifier;->mSourceHeight:I

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 813
    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 815
    iget-object p1, p0, Landroid/widget/Magnifier;->mContentCopySurface:Landroid/widget/Magnifier$SurfaceInfo;

    invoke-static {p1}, Landroid/widget/Magnifier$SurfaceInfo;->-$$Nest$fgetmSurface(Landroid/widget/Magnifier$SurfaceInfo;)Landroid/view/Surface;

    move-result-object p1

    iget-object p2, p0, Landroid/widget/Magnifier;->mPixelCopyRequestRect:Landroid/graphics/Rect;

    new-instance v1, Landroid/widget/Magnifier$$ExternalSyntheticLambda0;

    move-object v2, p0

    move v4, p3

    invoke-direct/range {v1 .. v6}, Landroid/widget/Magnifier$$ExternalSyntheticLambda0;-><init>(Landroid/widget/Magnifier;Landroid/widget/Magnifier$InternalPopupWindow;ZLandroid/graphics/Point;Landroid/graphics/Bitmap;)V

    sget-object p3, Landroid/widget/Magnifier;->sPixelCopyHandlerThread:Landroid/os/HandlerThread;

    .line 848
    invoke-virtual {p3}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object p3

    .line 815
    invoke-static {p1, p2, v6, v1, p3}, Landroid/view/PixelCopy;->request(Landroid/view/Surface;Landroid/graphics/Rect;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V

    .line 849
    return-void

    .line 788
    :cond_78
    :goto_78
    invoke-direct {p0}, Landroid/widget/Magnifier;->onPixelCopyFailed()V

    .line 789
    return-void
.end method


# virtual methods
.method public whitelist dismiss()V
    .registers 3

    .line 393
    iget-object v0, p0, Landroid/widget/Magnifier;->mWindow:Landroid/widget/Magnifier$InternalPopupWindow;

    if-eqz v0, :cond_2f

    .line 394
    iget-object v0, p0, Landroid/widget/Magnifier;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 395
    :try_start_7
    iget-object v1, p0, Landroid/widget/Magnifier;->mWindow:Landroid/widget/Magnifier$InternalPopupWindow;

    invoke-virtual {v1}, Landroid/widget/Magnifier$InternalPopupWindow;->destroy()V

    .line 396
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/Magnifier;->mWindow:Landroid/widget/Magnifier$InternalPopupWindow;

    .line 397
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_2c

    .line 398
    iget-object v0, p0, Landroid/widget/Magnifier;->mPrevShowSourceCoords:Landroid/graphics/PointF;

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 399
    iget-object v0, p0, Landroid/widget/Magnifier;->mPrevShowSourceCoords:Landroid/graphics/PointF;

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 400
    iget-object v0, p0, Landroid/widget/Magnifier;->mPrevShowWindowCoords:Landroid/graphics/PointF;

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 401
    iget-object v0, p0, Landroid/widget/Magnifier;->mPrevShowWindowCoords:Landroid/graphics/PointF;

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 402
    iget-object v0, p0, Landroid/widget/Magnifier;->mPrevStartCoordsInSurface:Landroid/graphics/Point;

    const/4 v1, -0x1

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 403
    iget-object v0, p0, Landroid/widget/Magnifier;->mPrevStartCoordsInSurface:Landroid/graphics/Point;

    iput v1, v0, Landroid/graphics/Point;->y:I

    goto :goto_2f

    .line 397
    :catchall_2c
    move-exception v1

    :try_start_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw v1

    .line 405
    :cond_2f
    :goto_2f
    return-void
.end method

.method public blacklist getContent()Landroid/graphics/Bitmap;
    .registers 3

    .line 1693
    iget-object v0, p0, Landroid/widget/Magnifier;->mWindow:Landroid/widget/Magnifier$InternalPopupWindow;

    if-nez v0, :cond_6

    .line 1694
    const/4 v0, 0x0

    return-object v0

    .line 1696
    :cond_6
    iget-object v0, p0, Landroid/widget/Magnifier;->mWindow:Landroid/widget/Magnifier$InternalPopupWindow;

    invoke-static {v0}, Landroid/widget/Magnifier$InternalPopupWindow;->-$$Nest$fgetmLock(Landroid/widget/Magnifier$InternalPopupWindow;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1697
    :try_start_d
    iget-object v1, p0, Landroid/widget/Magnifier;->mWindow:Landroid/widget/Magnifier$InternalPopupWindow;

    invoke-static {v1}, Landroid/widget/Magnifier$InternalPopupWindow;->-$$Nest$fgetmCurrentContent(Landroid/widget/Magnifier$InternalPopupWindow;)Landroid/graphics/Bitmap;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1698
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_d .. :try_end_17} :catchall_15

    throw v1
.end method

.method public whitelist getCornerRadius()F
    .registers 2

    .line 520
    iget v0, p0, Landroid/widget/Magnifier;->mWindowCornerRadius:F

    return v0
.end method

.method public whitelist getDefaultHorizontalSourceToMagnifierOffset()I
    .registers 2

    .line 534
    iget v0, p0, Landroid/widget/Magnifier;->mDefaultHorizontalSourceToMagnifierOffset:I

    return v0
.end method

.method public whitelist getDefaultVerticalSourceToMagnifierOffset()I
    .registers 2

    .line 548
    iget v0, p0, Landroid/widget/Magnifier;->mDefaultVerticalSourceToMagnifierOffset:I

    return v0
.end method

.method public whitelist getElevation()F
    .registers 2

    .line 511
    iget v0, p0, Landroid/widget/Magnifier;->mWindowElevation:F

    return v0
.end method

.method public whitelist getHeight()I
    .registers 2

    .line 443
    iget v0, p0, Landroid/widget/Magnifier;->mWindowHeight:I

    return v0
.end method

.method public blacklist getOriginalContent()Landroid/graphics/Bitmap;
    .registers 3

    .line 1710
    iget-object v0, p0, Landroid/widget/Magnifier;->mWindow:Landroid/widget/Magnifier$InternalPopupWindow;

    if-nez v0, :cond_6

    .line 1711
    const/4 v0, 0x0

    return-object v0

    .line 1713
    :cond_6
    iget-object v0, p0, Landroid/widget/Magnifier;->mWindow:Landroid/widget/Magnifier$InternalPopupWindow;

    invoke-static {v0}, Landroid/widget/Magnifier$InternalPopupWindow;->-$$Nest$fgetmLock(Landroid/widget/Magnifier$InternalPopupWindow;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1714
    :try_start_d
    iget-object v1, p0, Landroid/widget/Magnifier;->mWindow:Landroid/widget/Magnifier$InternalPopupWindow;

    invoke-static {v1}, Landroid/widget/Magnifier$InternalPopupWindow;->-$$Nest$fgetmBitmap(Landroid/widget/Magnifier$InternalPopupWindow;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1715
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_d .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public whitelist getOverlay()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 559
    iget-object v0, p0, Landroid/widget/Magnifier;->mOverlay:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public whitelist getPosition()Landroid/graphics/Point;
    .registers 4

    .line 590
    iget-object v0, p0, Landroid/widget/Magnifier;->mWindow:Landroid/widget/Magnifier$InternalPopupWindow;

    if-nez v0, :cond_6

    .line 591
    const/4 v0, 0x0

    return-object v0

    .line 593
    :cond_6
    invoke-direct {p0}, Landroid/widget/Magnifier;->getCurrentClampedWindowCoordinates()Landroid/graphics/Point;

    move-result-object v0

    .line 594
    iget-object v1, p0, Landroid/widget/Magnifier;->mParentSurface:Landroid/widget/Magnifier$SurfaceInfo;

    invoke-static {v1}, Landroid/widget/Magnifier$SurfaceInfo;->-$$Nest$fgetmInsets(Landroid/widget/Magnifier$SurfaceInfo;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    iget-object v2, p0, Landroid/widget/Magnifier;->mParentSurface:Landroid/widget/Magnifier$SurfaceInfo;

    invoke-static {v2}, Landroid/widget/Magnifier$SurfaceInfo;->-$$Nest$fgetmInsets(Landroid/widget/Magnifier$SurfaceInfo;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->offset(II)V

    .line 595
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v0}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    return-object v1
.end method

.method public whitelist getSourceHeight()I
    .registers 2

    .line 463
    iget v0, p0, Landroid/widget/Magnifier;->mSourceHeight:I

    return v0
.end method

.method public whitelist getSourcePosition()Landroid/graphics/Point;
    .registers 4

    .line 612
    iget-object v0, p0, Landroid/widget/Magnifier;->mWindow:Landroid/widget/Magnifier$InternalPopupWindow;

    if-nez v0, :cond_6

    .line 613
    const/4 v0, 0x0

    return-object v0

    .line 615
    :cond_6
    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Landroid/widget/Magnifier;->mPixelCopyRequestRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/widget/Magnifier;->mPixelCopyRequestRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 616
    iget-object v1, p0, Landroid/widget/Magnifier;->mContentCopySurface:Landroid/widget/Magnifier$SurfaceInfo;

    invoke-static {v1}, Landroid/widget/Magnifier$SurfaceInfo;->-$$Nest$fgetmInsets(Landroid/widget/Magnifier$SurfaceInfo;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    iget-object v2, p0, Landroid/widget/Magnifier;->mContentCopySurface:Landroid/widget/Magnifier$SurfaceInfo;

    invoke-static {v2}, Landroid/widget/Magnifier$SurfaceInfo;->-$$Nest$fgetmInsets(Landroid/widget/Magnifier$SurfaceInfo;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->offset(II)V

    .line 617
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v0}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    return-object v1
.end method

.method public whitelist getSourceWidth()I
    .registers 2

    .line 453
    iget v0, p0, Landroid/widget/Magnifier;->mSourceWidth:I

    return v0
.end method

.method public whitelist getWidth()I
    .registers 2

    .line 434
    iget v0, p0, Landroid/widget/Magnifier;->mWindowWidth:I

    return v0
.end method

.method public whitelist getZoom()F
    .registers 2

    .line 502
    iget v0, p0, Landroid/widget/Magnifier;->mZoom:F

    return v0
.end method

.method public whitelist isClippingEnabled()Z
    .registers 2

    .line 572
    iget-boolean v0, p0, Landroid/widget/Magnifier;->mClippingEnabled:Z

    return v0
.end method

.method blacklist setDrawCursor(ZLandroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 273
    iput-boolean p1, p0, Landroid/widget/Magnifier;->mDrawCursorEnabled:Z

    .line 274
    iput-object p2, p0, Landroid/widget/Magnifier;->mCursorDrawable:Landroid/graphics/drawable/Drawable;

    .line 275
    return-void
.end method

.method public blacklist setOnOperationCompleteCallback(Landroid/widget/Magnifier$Callback;)V
    .registers 3

    .line 1680
    iput-object p1, p0, Landroid/widget/Magnifier;->mCallback:Landroid/widget/Magnifier$Callback;

    .line 1681
    iget-object v0, p0, Landroid/widget/Magnifier;->mWindow:Landroid/widget/Magnifier$InternalPopupWindow;

    if-eqz v0, :cond_b

    .line 1682
    iget-object v0, p0, Landroid/widget/Magnifier;->mWindow:Landroid/widget/Magnifier$InternalPopupWindow;

    invoke-static {v0, p1}, Landroid/widget/Magnifier$InternalPopupWindow;->-$$Nest$fputmCallback(Landroid/widget/Magnifier$InternalPopupWindow;Landroid/widget/Magnifier$Callback;)V

    .line 1684
    :cond_b
    return-void
.end method

.method public whitelist setZoom(F)V
    .registers 3

    .line 472
    const-string v0, "Zoom should be positive"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(FLjava/lang/String;)F

    .line 473
    iput p1, p0, Landroid/widget/Magnifier;->mZoom:F

    .line 474
    iget-boolean p1, p0, Landroid/widget/Magnifier;->mIsFishEyeStyle:Z

    if-eqz p1, :cond_e

    iget p1, p0, Landroid/widget/Magnifier;->mWindowWidth:I

    goto :goto_18

    :cond_e
    iget p1, p0, Landroid/widget/Magnifier;->mWindowWidth:I

    int-to-float p1, p1

    iget v0, p0, Landroid/widget/Magnifier;->mZoom:F

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    :goto_18
    iput p1, p0, Landroid/widget/Magnifier;->mSourceWidth:I

    .line 475
    iget p1, p0, Landroid/widget/Magnifier;->mWindowHeight:I

    int-to-float p1, p1

    iget v0, p0, Landroid/widget/Magnifier;->mZoom:F

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Landroid/widget/Magnifier;->mSourceHeight:I

    .line 476
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/widget/Magnifier;->mDirtyState:Z

    .line 477
    return-void
.end method

.method public whitelist show(FF)V
    .registers 5

    .line 264
    iget v0, p0, Landroid/widget/Magnifier;->mDefaultHorizontalSourceToMagnifierOffset:I

    int-to-float v0, v0

    add-float/2addr v0, p1

    iget v1, p0, Landroid/widget/Magnifier;->mDefaultVerticalSourceToMagnifierOffset:I

    int-to-float v1, v1

    add-float/2addr v1, p2

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/widget/Magnifier;->show(FFFF)V

    .line 267
    return-void
.end method

.method public whitelist show(FFFF)V
    .registers 30

    .line 295
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0}, Landroid/widget/Magnifier;->obtainSurfaces()V

    .line 296
    invoke-direct/range {p0 .. p2}, Landroid/widget/Magnifier;->obtainContentCoordinates(FF)V

    .line 298
    iget-object v3, v0, Landroid/widget/Magnifier;->mClampedCenterZoomCoords:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget v4, v0, Landroid/widget/Magnifier;->mSourceWidth:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    .line 299
    iget-object v4, v0, Landroid/widget/Magnifier;->mClampedCenterZoomCoords:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget v5, v0, Landroid/widget/Magnifier;->mSourceHeight:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    .line 301
    iget-boolean v5, v0, Landroid/widget/Magnifier;->mIsFishEyeStyle:Z

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_d6

    .line 303
    iget-object v5, v0, Landroid/widget/Magnifier;->mClampedCenterZoomCoords:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    iget-object v8, v0, Landroid/widget/Magnifier;->mViewCoordinatesInSurface:[I

    aget v8, v8, v7

    sub-int/2addr v5, v8

    int-to-float v5, v5

    .line 304
    iget-object v8, v0, Landroid/widget/Magnifier;->mClampedCenterZoomCoords:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    iget-object v9, v0, Landroid/widget/Magnifier;->mViewCoordinatesInSurface:[I

    aget v9, v9, v6

    sub-int/2addr v8, v9

    int-to-float v8, v8

    .line 308
    iget v9, v0, Landroid/widget/Magnifier;->mSourceWidth:I

    int-to-float v9, v9

    iget v10, v0, Landroid/widget/Magnifier;->mSourceWidth:I

    iget v11, v0, Landroid/widget/Magnifier;->mRamp:I

    mul-int/lit8 v11, v11, 0x2

    sub-int/2addr v10, v11

    int-to-float v10, v10

    iget v11, v0, Landroid/widget/Magnifier;->mZoom:F

    div-float/2addr v10, v11

    sub-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    .line 314
    iget v11, v0, Landroid/widget/Magnifier;->mSourceWidth:I

    int-to-float v11, v11

    div-float/2addr v11, v10

    sub-float v11, v1, v11

    .line 315
    iget v12, v0, Landroid/widget/Magnifier;->mRamp:I

    int-to-float v12, v12

    add-float/2addr v12, v11

    .line 316
    nop

    .line 317
    const/4 v13, 0x0

    cmpl-float v14, v13, v12

    if-lez v14, :cond_62

    .line 320
    sub-float v11, v1, v13

    iget v12, v0, Landroid/widget/Magnifier;->mZoom:F

    div-float/2addr v11, v12

    sub-float v13, v1, v11

    goto :goto_6f

    .line 321
    :cond_62
    cmpl-float v14, v13, v11

    if-lez v14, :cond_6f

    .line 324
    add-float/2addr v11, v9

    sub-float/2addr v12, v13

    mul-float/2addr v12, v9

    iget v13, v0, Landroid/widget/Magnifier;->mRamp:I

    int-to-float v13, v13

    div-float/2addr v12, v13

    sub-float v13, v11, v12

    .line 326
    :cond_6f
    :goto_6f
    float-to-int v11, v13

    iget-object v12, v0, Landroid/widget/Magnifier;->mView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 331
    iget v12, v0, Landroid/widget/Magnifier;->mSourceWidth:I

    int-to-float v12, v12

    div-float/2addr v12, v10

    add-float v10, v1, v12

    .line 332
    iget v12, v0, Landroid/widget/Magnifier;->mRamp:I

    int-to-float v12, v12

    sub-float v12, v10, v12

    .line 333
    iget-object v13, v0, Landroid/widget/Magnifier;->mView:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v13

    int-to-float v13, v13

    .line 334
    cmpg-float v14, v13, v12

    if-gez v14, :cond_96

    .line 337
    sub-float/2addr v13, v1

    iget v9, v0, Landroid/widget/Magnifier;->mZoom:F

    div-float/2addr v13, v9

    add-float/2addr v13, v1

    goto :goto_a2

    .line 338
    :cond_96
    cmpg-float v14, v13, v10

    if-gez v14, :cond_a2

    .line 341
    sub-float/2addr v10, v9

    sub-float/2addr v13, v12

    mul-float/2addr v13, v9

    iget v9, v0, Landroid/widget/Magnifier;->mRamp:I

    int-to-float v9, v9

    div-float/2addr v13, v9

    add-float/2addr v13, v10

    .line 343
    :cond_a2
    :goto_a2
    float-to-int v9, v13

    invoke-static {v11, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 347
    iget-object v10, v0, Landroid/widget/Magnifier;->mViewCoordinatesInSurface:[I

    aget v10, v10, v7

    add-int/2addr v11, v10

    invoke-static {v11, v7}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 348
    iget-object v11, v0, Landroid/widget/Magnifier;->mViewCoordinatesInSurface:[I

    aget v11, v11, v7

    add-int/2addr v9, v11

    iget-object v11, v0, Landroid/widget/Magnifier;->mContentCopySurface:Landroid/widget/Magnifier$SurfaceInfo;

    invoke-static {v11}, Landroid/widget/Magnifier$SurfaceInfo;->-$$Nest$fgetmWidth(Landroid/widget/Magnifier$SurfaceInfo;)I

    move-result v11

    invoke-static {v9, v11}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 350
    sub-int v11, v10, v3

    invoke-static {v7, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    iput v11, v0, Landroid/widget/Magnifier;->mLeftCutWidth:I

    .line 351
    iget v11, v0, Landroid/widget/Magnifier;->mSourceWidth:I

    add-int/2addr v11, v3

    sub-int/2addr v11, v9

    invoke-static {v7, v11}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, v0, Landroid/widget/Magnifier;->mRightCutWidth:I

    .line 352
    invoke-static {v3, v10}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_da

    .line 301
    :cond_d6
    move/from16 v5, p3

    move/from16 v8, p4

    .line 354
    :goto_da
    invoke-direct {v0, v5, v8}, Landroid/widget/Magnifier;->obtainWindowCoordinates(FF)V

    .line 356
    iget-object v9, v0, Landroid/widget/Magnifier;->mPrevShowSourceCoords:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->x:F

    cmpl-float v9, v1, v9

    if-nez v9, :cond_117

    iget-object v9, v0, Landroid/widget/Magnifier;->mPrevShowSourceCoords:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->y:F

    cmpl-float v9, v2, v9

    if-nez v9, :cond_117

    iget-boolean v9, v0, Landroid/widget/Magnifier;->mDirtyState:Z

    if-eqz v9, :cond_f2

    goto :goto_117

    .line 369
    :cond_f2
    iget-object v3, v0, Landroid/widget/Magnifier;->mPrevShowWindowCoords:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    cmpl-float v3, v5, v3

    if-nez v3, :cond_102

    iget-object v3, v0, Landroid/widget/Magnifier;->mPrevShowWindowCoords:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    cmpl-float v3, v8, v3

    if-eqz v3, :cond_17b

    .line 371
    :cond_102
    invoke-direct {v0}, Landroid/widget/Magnifier;->getCurrentClampedWindowCoordinates()Landroid/graphics/Point;

    move-result-object v3

    .line 372
    iget-object v4, v0, Landroid/widget/Magnifier;->mWindow:Landroid/widget/Magnifier$InternalPopupWindow;

    .line 373
    sget-object v6, Landroid/widget/Magnifier;->sPixelCopyHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v6

    new-instance v7, Landroid/widget/Magnifier$$ExternalSyntheticLambda2;

    invoke-direct {v7, v0, v4, v3}, Landroid/widget/Magnifier$$ExternalSyntheticLambda2;-><init>(Landroid/widget/Magnifier;Landroid/widget/Magnifier$InternalPopupWindow;Landroid/graphics/Point;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_17b

    .line 358
    :cond_117
    :goto_117
    iget-object v9, v0, Landroid/widget/Magnifier;->mWindow:Landroid/widget/Magnifier$InternalPopupWindow;

    if-nez v9, :cond_177

    .line 359
    iget-object v9, v0, Landroid/widget/Magnifier;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 360
    :try_start_11e
    new-instance v10, Landroid/widget/Magnifier$InternalPopupWindow;

    iget-object v11, v0, Landroid/widget/Magnifier;->mView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    iget-object v12, v0, Landroid/widget/Magnifier;->mView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v12

    iget-object v13, v0, Landroid/widget/Magnifier;->mParentSurface:Landroid/widget/Magnifier$SurfaceInfo;

    invoke-static {v13}, Landroid/widget/Magnifier$SurfaceInfo;->-$$Nest$fgetmSurfaceControl(Landroid/widget/Magnifier$SurfaceInfo;)Landroid/view/SurfaceControl;

    move-result-object v13

    iget v14, v0, Landroid/widget/Magnifier;->mWindowWidth:I

    iget v15, v0, Landroid/widget/Magnifier;->mWindowHeight:I

    iget v6, v0, Landroid/widget/Magnifier;->mZoom:F

    iget v7, v0, Landroid/widget/Magnifier;->mRamp:I

    move/from16 v17, v6

    iget v6, v0, Landroid/widget/Magnifier;->mWindowElevation:F

    move/from16 v18, v6

    iget v6, v0, Landroid/widget/Magnifier;->mWindowCornerRadius:F

    .line 363
    move/from16 v19, v6

    iget-object v6, v0, Landroid/widget/Magnifier;->mOverlay:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_14d

    iget-object v6, v0, Landroid/widget/Magnifier;->mOverlay:Landroid/graphics/drawable/Drawable;

    move/from16 v20, v7

    goto :goto_155

    :cond_14d
    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    move/from16 v20, v7

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 364
    :goto_155
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v21

    iget-object v7, v0, Landroid/widget/Magnifier;->mLock:Ljava/lang/Object;

    move-object/from16 p3, v6

    iget-object v6, v0, Landroid/widget/Magnifier;->mCallback:Landroid/widget/Magnifier$Callback;

    move-object/from16 v23, v6

    iget-boolean v6, v0, Landroid/widget/Magnifier;->mIsFishEyeStyle:Z

    move/from16 v24, v6

    move-object/from16 v22, v7

    move/from16 v16, v17

    move/from16 v17, v20

    move-object/from16 v20, p3

    invoke-direct/range {v10 .. v24}, Landroid/widget/Magnifier$InternalPopupWindow;-><init>(Landroid/content/Context;Landroid/view/Display;Landroid/view/SurfaceControl;IIFIFFLandroid/graphics/drawable/Drawable;Landroid/os/Handler;Ljava/lang/Object;Landroid/widget/Magnifier$Callback;Z)V

    iput-object v10, v0, Landroid/widget/Magnifier;->mWindow:Landroid/widget/Magnifier$InternalPopupWindow;

    .line 366
    monitor-exit v9

    goto :goto_177

    :catchall_174
    move-exception v0

    monitor-exit v9
    :try_end_176
    .catchall {:try_start_11e .. :try_end_176} :catchall_174

    throw v0

    .line 368
    :cond_177
    :goto_177
    const/4 v6, 0x1

    invoke-direct {v0, v3, v4, v6}, Landroid/widget/Magnifier;->performPixelCopy(IIZ)V

    .line 383
    :cond_17b
    :goto_17b
    iget-object v3, v0, Landroid/widget/Magnifier;->mPrevShowSourceCoords:Landroid/graphics/PointF;

    iput v1, v3, Landroid/graphics/PointF;->x:F

    .line 384
    iget-object v1, v0, Landroid/widget/Magnifier;->mPrevShowSourceCoords:Landroid/graphics/PointF;

    iput v2, v1, Landroid/graphics/PointF;->y:F

    .line 385
    iget-object v1, v0, Landroid/widget/Magnifier;->mPrevShowWindowCoords:Landroid/graphics/PointF;

    iput v5, v1, Landroid/graphics/PointF;->x:F

    .line 386
    iget-object v0, v0, Landroid/widget/Magnifier;->mPrevShowWindowCoords:Landroid/graphics/PointF;

    iput v8, v0, Landroid/graphics/PointF;->y:F

    .line 387
    return-void
.end method

.method public whitelist update()V
    .registers 5

    .line 413
    iget-object v0, p0, Landroid/widget/Magnifier;->mWindow:Landroid/widget/Magnifier$InternalPopupWindow;

    if-eqz v0, :cond_2b

    .line 414
    invoke-direct {p0}, Landroid/widget/Magnifier;->obtainSurfaces()V

    .line 415
    iget-boolean v0, p0, Landroid/widget/Magnifier;->mDirtyState:Z

    if-nez v0, :cond_18

    .line 417
    iget-object v0, p0, Landroid/widget/Magnifier;->mPrevStartCoordsInSurface:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Landroid/widget/Magnifier;->mPrevStartCoordsInSurface:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/widget/Magnifier;->performPixelCopy(IIZ)V

    goto :goto_2b

    .line 422
    :cond_18
    iget-object v0, p0, Landroid/widget/Magnifier;->mPrevShowSourceCoords:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Landroid/widget/Magnifier;->mPrevShowSourceCoords:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Landroid/widget/Magnifier;->mPrevShowWindowCoords:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Landroid/widget/Magnifier;->mPrevShowWindowCoords:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/widget/Magnifier;->show(FFFF)V

    .line 426
    :cond_2b
    :goto_2b
    return-void
.end method

.method blacklist updateSourceFactors(IF)V
    .registers 4

    .line 486
    iput p2, p0, Landroid/widget/Magnifier;->mZoom:F

    .line 487
    iput p1, p0, Landroid/widget/Magnifier;->mSourceHeight:I

    .line 488
    int-to-float p1, p1

    mul-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Landroid/widget/Magnifier;->mWindowHeight:I

    .line 489
    iget-object p1, p0, Landroid/widget/Magnifier;->mWindow:Landroid/widget/Magnifier$InternalPopupWindow;

    if-eqz p1, :cond_14

    .line 490
    iget-object p1, p0, Landroid/widget/Magnifier;->mWindow:Landroid/widget/Magnifier$InternalPopupWindow;

    iget v0, p0, Landroid/widget/Magnifier;->mWindowHeight:I

    invoke-static {p1, v0, p2}, Landroid/widget/Magnifier$InternalPopupWindow;->-$$Nest$mupdateContentFactors(Landroid/widget/Magnifier$InternalPopupWindow;IF)V

    .line 492
    :cond_14
    return-void
.end method
