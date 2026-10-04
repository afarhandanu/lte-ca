.class public final Landroid/view/SurfaceControl$StaticDisplayInfo;
.super Ljava/lang/Object;
.source "SurfaceControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StaticDisplayInfo"
.end annotation


# instance fields
.field public blacklist density:F

.field public blacklist deviceProductInfo:Landroid/hardware/display/DeviceProductInfo;

.field public blacklist installOrientation:I

.field public blacklist isInternal:Z

.field public blacklist port:I

.field public blacklist screenPartStatus:I

.field public blacklist secure:Z


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 1959
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 1981
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1982
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_47

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_47

    .line 1983
    :cond_12
    check-cast p1, Landroid/view/SurfaceControl$StaticDisplayInfo;

    .line 1984
    iget-boolean v2, p0, Landroid/view/SurfaceControl$StaticDisplayInfo;->isInternal:Z

    iget-boolean v3, p1, Landroid/view/SurfaceControl$StaticDisplayInfo;->isInternal:Z

    if-ne v2, v3, :cond_45

    iget v2, p0, Landroid/view/SurfaceControl$StaticDisplayInfo;->port:I

    iget v3, p1, Landroid/view/SurfaceControl$StaticDisplayInfo;->port:I

    if-ne v2, v3, :cond_45

    iget v2, p0, Landroid/view/SurfaceControl$StaticDisplayInfo;->density:F

    iget v3, p1, Landroid/view/SurfaceControl$StaticDisplayInfo;->density:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_45

    iget-boolean v2, p0, Landroid/view/SurfaceControl$StaticDisplayInfo;->secure:Z

    iget-boolean v3, p1, Landroid/view/SurfaceControl$StaticDisplayInfo;->secure:Z

    if-ne v2, v3, :cond_45

    iget-object v2, p0, Landroid/view/SurfaceControl$StaticDisplayInfo;->deviceProductInfo:Landroid/hardware/display/DeviceProductInfo;

    iget-object v3, p1, Landroid/view/SurfaceControl$StaticDisplayInfo;->deviceProductInfo:Landroid/hardware/display/DeviceProductInfo;

    .line 1988
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    iget v2, p0, Landroid/view/SurfaceControl$StaticDisplayInfo;->installOrientation:I

    iget v3, p1, Landroid/view/SurfaceControl$StaticDisplayInfo;->installOrientation:I

    if-ne v2, v3, :cond_45

    iget v2, p0, Landroid/view/SurfaceControl$StaticDisplayInfo;->screenPartStatus:I

    iget p1, p1, Landroid/view/SurfaceControl$StaticDisplayInfo;->screenPartStatus:I

    if-ne v2, p1, :cond_45

    goto :goto_46

    :cond_45
    move v0, v1

    .line 1984
    :goto_46
    return v0

    .line 1982
    :cond_47
    :goto_47
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 9

    .line 1995
    iget-boolean v0, p0, Landroid/view/SurfaceControl$StaticDisplayInfo;->isInternal:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget v0, p0, Landroid/view/SurfaceControl$StaticDisplayInfo;->port:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Landroid/view/SurfaceControl$StaticDisplayInfo;->density:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget-boolean v0, p0, Landroid/view/SurfaceControl$StaticDisplayInfo;->secure:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-object v5, p0, Landroid/view/SurfaceControl$StaticDisplayInfo;->deviceProductInfo:Landroid/hardware/display/DeviceProductInfo;

    iget v0, p0, Landroid/view/SurfaceControl$StaticDisplayInfo;->installOrientation:I

    .line 1996
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v0, p0, Landroid/view/SurfaceControl$StaticDisplayInfo;->screenPartStatus:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array/range {v1 .. v7}, [Ljava/lang/Object;

    move-result-object v0

    .line 1995
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1970
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StaticDisplayInfo{isInternal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/view/SurfaceControl$StaticDisplayInfo;->isInternal:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", port="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/SurfaceControl$StaticDisplayInfo;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", density="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/SurfaceControl$StaticDisplayInfo;->density:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", secure="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/view/SurfaceControl$StaticDisplayInfo;->secure:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", deviceProductInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/SurfaceControl$StaticDisplayInfo;->deviceProductInfo:Landroid/hardware/display/DeviceProductInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", installOrientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/SurfaceControl$StaticDisplayInfo;->installOrientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", screenPartStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/SurfaceControl$StaticDisplayInfo;->screenPartStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
