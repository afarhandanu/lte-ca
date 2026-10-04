.class public final Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;
.super Ljava/lang/Object;
.source "SurfaceControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IdleScreenRefreshRateConfig"
.end annotation


# instance fields
.field public blacklist timeoutMillis:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 2380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2381
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;->timeoutMillis:I

    .line 2382
    return-void
.end method

.method public constructor blacklist <init>(I)V
    .registers 2

    .line 2384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2385
    iput p1, p0, Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;->timeoutMillis:I

    .line 2386
    return-void
.end method


# virtual methods
.method public blacklist copyFrom(Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;)V
    .registers 2

    .line 2420
    if-eqz p1, :cond_6

    .line 2421
    iget p1, p1, Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;->timeoutMillis:I

    iput p1, p0, Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;->timeoutMillis:I

    .line 2423
    :cond_6
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5

    .line 2393
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 2394
    return v0

    .line 2397
    :cond_4
    instance-of v1, p1, Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;

    const/4 v2, 0x0

    if-eqz v1, :cond_17

    if-nez p1, :cond_c

    goto :goto_17

    .line 2402
    :cond_c
    check-cast p1, Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;

    .line 2403
    iget v1, p0, Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;->timeoutMillis:I

    iget p1, p1, Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;->timeoutMillis:I

    if-ne v1, p1, :cond_15

    goto :goto_16

    :cond_15
    move v0, v2

    :goto_16
    return v0

    .line 2398
    :cond_17
    :goto_17
    return v2
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 2408
    iget v0, p0, Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;->timeoutMillis:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 2413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "timeoutMillis: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;->timeoutMillis:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
