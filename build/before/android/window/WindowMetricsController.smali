.class public final Landroid/window/WindowMetricsController;
.super Ljava/lang/Object;
.source "WindowMetricsController.java"


# instance fields
.field private final blacklist mContext:Landroid/content/Context;


# direct methods
.method public static synthetic blacklist $r8$lambda$pFTaIba9cW7oBONGFT2xxYPhXLc(Landroid/window/WindowMetricsController;Landroid/os/IBinder;Landroid/graphics/Rect;ZI)Landroid/view/WindowInsets;
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/window/WindowMetricsController;->lambda$getWindowMetricsInternal$0(Landroid/os/IBinder;Landroid/graphics/Rect;ZI)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 2

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Landroid/window/WindowMetricsController;->mContext:Landroid/content/Context;

    .line 63
    return-void
.end method

.method private static blacklist getWindowInsetsFromServerForDisplay(ILandroid/os/IBinder;Landroid/graphics/Rect;ZI)Landroid/view/WindowInsets;
    .registers 16

    .line 116
    :try_start_0
    new-instance v0, Landroid/view/InsetsState;

    invoke-direct {v0}, Landroid/view/InsetsState;-><init>()V

    .line 117
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    invoke-interface {v1, p0, p1, v0}, Landroid/view/IWindowManager;->getWindowInsets(ILandroid/os/IBinder;Landroid/view/InsetsState;)V

    .line 119
    invoke-static {}, Landroid/content/res/CompatibilityInfo;->getOverrideInvertedScale()F

    move-result p0

    .line 120
    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float p1, p0, p1

    if-eqz p1, :cond_19

    .line 121
    invoke-virtual {v0, p0}, Landroid/view/InsetsState;->scale(F)V

    .line 123
    :cond_19
    const/4 v8, -0x1

    const/4 v10, 0x0

    const/4 v3, 0x0

    const/16 v5, 0x30

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p2

    move-object v1, p2

    move v4, p3

    move v9, p4

    invoke-virtual/range {v0 .. v10}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/InsetsState;ZIIIIILandroid/util/SparseIntArray;)Landroid/view/WindowInsets;

    move-result-object p0
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_28} :catch_29

    return-object p0

    .line 127
    :catch_29
    move-exception v0

    move-object p0, v0

    .line 128
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private blacklist getWindowMetricsInternal(Z)Landroid/view/WindowMetrics;
    .registers 11

    .line 86
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v1

    monitor-enter v1

    .line 87
    :try_start_5
    iget-object v0, p0, Landroid/window/WindowMetricsController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 88
    iget-object v2, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 89
    if-eqz p1, :cond_18

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object p1

    goto :goto_1c

    :cond_18
    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    :goto_1c
    move-object v6, p1

    .line 93
    iget p1, v0, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float p1, p1

    const v3, 0x3bcccccd    # 0.00625f

    mul-float/2addr p1, v3

    .line 94
    invoke-virtual {v0}, Landroid/content/res/Configuration;->isScreenRound()Z

    move-result v7

    .line 95
    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getActivityType()I

    move-result v8

    .line 96
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_5 .. :try_end_2d} :catchall_44

    .line 97
    iget-object v0, p0, Landroid/window/WindowMetricsController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/content/Context;->getToken(Landroid/content/Context;)Landroid/os/IBinder;

    move-result-object v5

    .line 98
    new-instance v3, Landroid/window/WindowMetricsController$$ExternalSyntheticLambda0;

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Landroid/window/WindowMetricsController$$ExternalSyntheticLambda0;-><init>(Landroid/window/WindowMetricsController;Landroid/os/IBinder;Landroid/graphics/Rect;ZI)V

    .line 100
    new-instance v0, Landroid/view/WindowMetrics;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-direct {v0, v1, v3, p1}, Landroid/view/WindowMetrics;-><init>(Landroid/graphics/Rect;Ljava/util/function/Supplier;F)V

    return-object v0

    .line 96
    :catchall_44
    move-exception v0

    move-object p1, v0

    :try_start_46
    monitor-exit v1
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_44

    throw p1
.end method

.method private synthetic blacklist lambda$getWindowMetricsInternal$0(Landroid/os/IBinder;Landroid/graphics/Rect;ZI)Landroid/view/WindowInsets;
    .registers 6

    .line 98
    iget-object v0, p0, Landroid/window/WindowMetricsController;->mContext:Landroid/content/Context;

    .line 99
    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    .line 98
    invoke-static {v0, p1, p2, p3, p4}, Landroid/window/WindowMetricsController;->getWindowInsetsFromServerForDisplay(ILandroid/os/IBinder;Landroid/graphics/Rect;ZI)Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public blacklist getCurrentWindowMetrics()Landroid/view/WindowMetrics;
    .registers 2

    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/window/WindowMetricsController;->getWindowMetricsInternal(Z)Landroid/view/WindowMetrics;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getMaximumWindowMetrics()Landroid/view/WindowMetrics;
    .registers 2

    .line 72
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/window/WindowMetricsController;->getWindowMetricsInternal(Z)Landroid/view/WindowMetrics;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getPossibleMaximumWindowMetrics(I)Ljava/util/Set;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Landroid/view/WindowMetrics;",
            ">;"
        }
    .end annotation

    .line 137
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    .line 138
    invoke-interface {v0, p1}, Landroid/view/IWindowManager;->getPossibleDisplayInfo(I)Ljava/util/List;

    move-result-object p1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_7e

    .line 141
    nop

    .line 143
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 146
    const/4 v1, 0x0

    move v2, v1

    :goto_10
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_7d

    .line 147
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/DisplayInfo;

    .line 150
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/view/DisplayInfo;->getNaturalWidth()I

    move-result v5

    .line 151
    invoke-virtual {v3}, Landroid/view/DisplayInfo;->getNaturalHeight()I

    move-result v6

    invoke-direct {v4, v1, v1, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 154
    iget v5, v3, Landroid/view/DisplayInfo;->flags:I

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_31

    const/4 v5, 0x1

    goto :goto_32

    :cond_31
    move v5, v1

    .line 157
    :goto_32
    iget v6, v3, Landroid/view/DisplayInfo;->displayId:I

    new-instance v7, Landroid/graphics/Rect;

    .line 159
    invoke-virtual {v3}, Landroid/view/DisplayInfo;->getNaturalWidth()I

    move-result v8

    .line 160
    invoke-virtual {v3}, Landroid/view/DisplayInfo;->getNaturalHeight()I

    move-result v9

    invoke-direct {v7, v1, v1, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 157
    const/4 v8, 0x0

    invoke-static {v6, v8, v7, v5, v1}, Landroid/window/WindowMetricsController;->getWindowInsetsFromServerForDisplay(ILandroid/os/IBinder;Landroid/graphics/Rect;ZI)Landroid/view/WindowInsets;

    move-result-object v5

    .line 163
    iget-object v6, v3, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 164
    if-eqz v6, :cond_58

    iget v7, v3, Landroid/view/DisplayInfo;->rotation:I

    if-eqz v7, :cond_58

    .line 165
    iget v7, v3, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v8, v3, Landroid/view/DisplayInfo;->logicalHeight:I

    iget v9, v3, Landroid/view/DisplayInfo;->rotation:I

    invoke-virtual {v6, v7, v8, v9, v1}, Landroid/view/DisplayCutout;->getRotated(IIII)Landroid/view/DisplayCutout;

    move-result-object v6

    .line 169
    :cond_58
    new-instance v7, Landroid/view/WindowInsets$Builder;

    invoke-direct {v7, v5}, Landroid/view/WindowInsets$Builder;-><init>(Landroid/view/WindowInsets;)V

    iget-object v5, v3, Landroid/view/DisplayInfo;->roundedCorners:Landroid/view/RoundedCorners;

    invoke-virtual {v7, v5}, Landroid/view/WindowInsets$Builder;->setRoundedCorners(Landroid/view/RoundedCorners;)Landroid/view/WindowInsets$Builder;

    move-result-object v5

    .line 170
    invoke-virtual {v5, v6}, Landroid/view/WindowInsets$Builder;->setDisplayCutout(Landroid/view/DisplayCutout;)Landroid/view/WindowInsets$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/WindowInsets$Builder;->build()Landroid/view/WindowInsets;

    move-result-object v5

    .line 175
    iget v3, v3, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    int-to-float v3, v3

    const v6, 0x3bcccccd    # 0.00625f

    mul-float/2addr v3, v6

    .line 177
    new-instance v6, Landroid/view/WindowMetrics;

    invoke-direct {v6, v4, v5, v3}, Landroid/view/WindowMetrics;-><init>(Landroid/graphics/Rect;Landroid/view/WindowInsets;F)V

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 146
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 179
    :cond_7d
    return-object v0

    .line 139
    :catch_7e
    move-exception p1

    .line 140
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method
