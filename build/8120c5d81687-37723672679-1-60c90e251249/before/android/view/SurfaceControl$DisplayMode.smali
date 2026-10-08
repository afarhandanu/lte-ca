.class public final Landroid/view/SurfaceControl$DisplayMode;
.super Ljava/lang/Object;
.source "SurfaceControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DisplayMode"
.end annotation


# instance fields
.field public blacklist appVsyncOffsetNanos:J

.field public blacklist group:I

.field public blacklist height:I

.field public blacklist id:I

.field public blacklist peakRefreshRate:F

.field public blacklist presentationDeadlineNanos:J

.field public blacklist supportedHdrTypes:[I

.field public blacklist vsyncRate:F

.field public blacklist width:I

.field public blacklist xDpi:F

.field public blacklist yDpi:F


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 2070
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8

    .line 2112
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 2113
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_71

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_71

    .line 2114
    :cond_12
    check-cast p1, Landroid/view/SurfaceControl$DisplayMode;

    .line 2115
    iget v2, p0, Landroid/view/SurfaceControl$DisplayMode;->id:I

    iget v3, p1, Landroid/view/SurfaceControl$DisplayMode;->id:I

    if-ne v2, v3, :cond_6f

    iget v2, p0, Landroid/view/SurfaceControl$DisplayMode;->width:I

    iget v3, p1, Landroid/view/SurfaceControl$DisplayMode;->width:I

    if-ne v2, v3, :cond_6f

    iget v2, p0, Landroid/view/SurfaceControl$DisplayMode;->height:I

    iget v3, p1, Landroid/view/SurfaceControl$DisplayMode;->height:I

    if-ne v2, v3, :cond_6f

    iget v2, p1, Landroid/view/SurfaceControl$DisplayMode;->xDpi:F

    iget v3, p0, Landroid/view/SurfaceControl$DisplayMode;->xDpi:F

    .line 2118
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_6f

    iget v2, p1, Landroid/view/SurfaceControl$DisplayMode;->yDpi:F

    iget v3, p0, Landroid/view/SurfaceControl$DisplayMode;->yDpi:F

    .line 2119
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_6f

    iget v2, p1, Landroid/view/SurfaceControl$DisplayMode;->peakRefreshRate:F

    iget v3, p0, Landroid/view/SurfaceControl$DisplayMode;->peakRefreshRate:F

    .line 2120
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_6f

    iget v2, p1, Landroid/view/SurfaceControl$DisplayMode;->vsyncRate:F

    iget v3, p0, Landroid/view/SurfaceControl$DisplayMode;->vsyncRate:F

    .line 2121
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_6f

    iget-wide v2, p0, Landroid/view/SurfaceControl$DisplayMode;->appVsyncOffsetNanos:J

    iget-wide v4, p1, Landroid/view/SurfaceControl$DisplayMode;->appVsyncOffsetNanos:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_6f

    iget-wide v2, p0, Landroid/view/SurfaceControl$DisplayMode;->presentationDeadlineNanos:J

    iget-wide v4, p1, Landroid/view/SurfaceControl$DisplayMode;->presentationDeadlineNanos:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_6f

    iget-object v2, p0, Landroid/view/SurfaceControl$DisplayMode;->supportedHdrTypes:[I

    iget-object v3, p1, Landroid/view/SurfaceControl$DisplayMode;->supportedHdrTypes:[I

    .line 2124
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_6f

    iget v2, p0, Landroid/view/SurfaceControl$DisplayMode;->group:I

    iget p1, p1, Landroid/view/SurfaceControl$DisplayMode;->group:I

    if-ne v2, p1, :cond_6f

    goto :goto_70

    :cond_6f
    move v0, v1

    .line 2115
    :goto_70
    return v0

    .line 2113
    :cond_71
    :goto_71
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 13

    .line 2130
    iget v0, p0, Landroid/view/SurfaceControl$DisplayMode;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/view/SurfaceControl$DisplayMode;->width:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Landroid/view/SurfaceControl$DisplayMode;->height:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, p0, Landroid/view/SurfaceControl$DisplayMode;->xDpi:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iget v0, p0, Landroid/view/SurfaceControl$DisplayMode;->yDpi:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    iget v0, p0, Landroid/view/SurfaceControl$DisplayMode;->peakRefreshRate:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    iget v0, p0, Landroid/view/SurfaceControl$DisplayMode;->vsyncRate:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    iget-wide v8, p0, Landroid/view/SurfaceControl$DisplayMode;->appVsyncOffsetNanos:J

    .line 2131
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iget-wide v9, p0, Landroid/view/SurfaceControl$DisplayMode;->presentationDeadlineNanos:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iget v0, p0, Landroid/view/SurfaceControl$DisplayMode;->group:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget-object v0, p0, Landroid/view/SurfaceControl$DisplayMode;->supportedHdrTypes:[I

    .line 2132
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    filled-new-array/range {v1 .. v11}, [Ljava/lang/Object;

    move-result-object v0

    .line 2130
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 2097
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DisplayMode{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/SurfaceControl$DisplayMode;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/SurfaceControl$DisplayMode;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/SurfaceControl$DisplayMode;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", xDpi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/SurfaceControl$DisplayMode;->xDpi:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", yDpi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/SurfaceControl$DisplayMode;->yDpi:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", peakRefreshRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/SurfaceControl$DisplayMode;->peakRefreshRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", vsyncRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/SurfaceControl$DisplayMode;->vsyncRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", appVsyncOffsetNanos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/view/SurfaceControl$DisplayMode;->appVsyncOffsetNanos:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", presentationDeadlineNanos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/view/SurfaceControl$DisplayMode;->presentationDeadlineNanos:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", supportedHdrTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/SurfaceControl$DisplayMode;->supportedHdrTypes:[I

    .line 2106
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", group="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/SurfaceControl$DisplayMode;->group:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2097
    return-object v0
.end method
