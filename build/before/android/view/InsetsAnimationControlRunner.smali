.class public interface abstract Landroid/view/InsetsAnimationControlRunner;
.super Ljava/lang/Object;
.source "InsetsAnimationControlRunner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/InsetsAnimationControlRunner$SurfaceParamsApplier;
    }
.end annotation


# virtual methods
.method public abstract blacklist cancel()V
.end method

.method public blacklist controlsType(I)Z
    .registers 3

    .line 81
    invoke-interface {p0}, Landroid/view/InsetsAnimationControlRunner;->getTypes()I

    move-result v0

    and-int/2addr p1, v0

    if-eqz p1, :cond_9

    const/4 p1, 0x1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    return p1
.end method

.method public abstract blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
.end method

.method public abstract blacklist getAnimation()Landroid/view/WindowInsetsAnimation;
.end method

.method public abstract blacklist getAnimationType()I
.end method

.method public abstract blacklist getControllingTypes()I
.end method

.method public abstract blacklist getStatsToken()Landroid/view/inputmethod/ImeTracker$Token;
.end method

.method public abstract blacklist getSurfaceParamsApplier()Landroid/view/InsetsAnimationControlRunner$SurfaceParamsApplier;
.end method

.method public abstract blacklist getTypes()I
.end method

.method public abstract blacklist notifyControlRevoked(I)V
.end method

.method public abstract blacklist updateLayoutInsetsDuringAnimation(I)V
.end method

.method public abstract blacklist updateSurfacePosition(Landroid/util/SparseArray;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/view/InsetsSourceControl;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract blacklist willUpdateSurface()Z
.end method
