.class final Landroid/view/ViewRootImpl$CornerRadii;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CornerRadii"
.end annotation


# instance fields
.field public blacklist bottomLeft:F

.field public blacklist bottomRight:F

.field public blacklist topLeft:F

.field public blacklist topRight:F


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 10207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5

    .line 10220
    instance-of v0, p1, Landroid/view/ViewRootImpl$CornerRadii;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 10221
    return v1

    .line 10223
    :cond_6
    check-cast p1, Landroid/view/ViewRootImpl$CornerRadii;

    .line 10224
    iget v0, p0, Landroid/view/ViewRootImpl$CornerRadii;->topLeft:F

    iget v2, p1, Landroid/view/ViewRootImpl$CornerRadii;->topLeft:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_29

    iget v0, p0, Landroid/view/ViewRootImpl$CornerRadii;->topRight:F

    iget v2, p1, Landroid/view/ViewRootImpl$CornerRadii;->topRight:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_29

    iget v0, p0, Landroid/view/ViewRootImpl$CornerRadii;->bottomRight:F

    iget v2, p1, Landroid/view/ViewRootImpl$CornerRadii;->bottomRight:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_29

    iget v0, p0, Landroid/view/ViewRootImpl$CornerRadii;->bottomLeft:F

    iget p1, p1, Landroid/view/ViewRootImpl$CornerRadii;->bottomLeft:F

    cmpl-float p1, v0, p1

    if-nez p1, :cond_29

    const/4 v1, 0x1

    :cond_29
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 10232
    iget v0, p0, Landroid/view/ViewRootImpl$CornerRadii;->topLeft:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget v1, p0, Landroid/view/ViewRootImpl$CornerRadii;->topRight:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v2, p0, Landroid/view/ViewRootImpl$CornerRadii;->bottomRight:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p0, Landroid/view/ViewRootImpl$CornerRadii;->bottomLeft:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method blacklist isEmpty()Z
    .registers 3

    .line 10214
    iget v0, p0, Landroid/view/ViewRootImpl$CornerRadii;->topLeft:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1b

    iget v0, p0, Landroid/view/ViewRootImpl$CornerRadii;->topRight:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1b

    iget v0, p0, Landroid/view/ViewRootImpl$CornerRadii;->bottomRight:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1b

    iget v0, p0, Landroid/view/ViewRootImpl$CornerRadii;->bottomLeft:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1b

    const/4 v0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    return v0
.end method
