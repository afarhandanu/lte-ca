.class Landroid/view/InsetsResizeAnimationRunner$2;
.super Ljava/lang/Object;
.source "InsetsResizeAnimationRunner.java"

# interfaces
.implements Landroid/view/InsetsState$OnTraverseCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/InsetsResizeAnimationRunner;->applyChangeInsets(Landroid/view/InsetsState;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$fraction:F

.field final synthetic blacklist val$outState:Landroid/view/InsetsState;


# direct methods
.method constructor blacklist <init>(Landroid/view/InsetsResizeAnimationRunner;FLandroid/view/InsetsState;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 169
    iput p2, p0, Landroid/view/InsetsResizeAnimationRunner$2;->val$fraction:F

    iput-object p3, p0, Landroid/view/InsetsResizeAnimationRunner$2;->val$outState:Landroid/view/InsetsState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onIdMatch(Landroid/view/InsetsSource;Landroid/view/InsetsSource;)V
    .registers 12

    .line 173
    invoke-virtual {p1}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v0

    .line 174
    invoke-virtual {p2}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v1

    .line 175
    new-instance v2, Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v4, p0, Landroid/view/InsetsResizeAnimationRunner$2;->val$fraction:F

    iget v5, v1, Landroid/graphics/Rect;->left:I

    iget v6, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v3, v3

    iget v4, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    iget v5, p0, Landroid/view/InsetsResizeAnimationRunner$2;->val$fraction:F

    iget v6, v1, Landroid/graphics/Rect;->top:I

    iget v7, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v4, v4

    iget v5, v0, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    iget v6, p0, Landroid/view/InsetsResizeAnimationRunner$2;->val$fraction:F

    iget v7, v1, Landroid/graphics/Rect;->right:I

    iget v8, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    float-to-int v5, v5

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    iget v7, p0, Landroid/view/InsetsResizeAnimationRunner$2;->val$fraction:F

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v0

    int-to-float v0, v1

    mul-float/2addr v7, v0

    add-float/2addr v6, v7

    float-to-int v0, v6

    invoke-direct {v2, v3, v4, v5, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 180
    new-instance v0, Landroid/view/InsetsSource;

    .line 181
    invoke-virtual {p1}, Landroid/view/InsetsSource;->getId()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/InsetsSource;->getType()I

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/view/InsetsSource;-><init>(II)V

    .line 182
    invoke-virtual {v0, v2}, Landroid/view/InsetsSource;->setFrame(Landroid/graphics/Rect;)Landroid/view/InsetsSource;

    .line 183
    invoke-virtual {p2}, Landroid/view/InsetsSource;->isVisible()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/InsetsSource;->setVisible(Z)Landroid/view/InsetsSource;

    .line 184
    iget-object p1, p0, Landroid/view/InsetsResizeAnimationRunner$2;->val$outState:Landroid/view/InsetsState;

    if-eqz p1, :cond_65

    .line 185
    iget-object p1, p0, Landroid/view/InsetsResizeAnimationRunner$2;->val$outState:Landroid/view/InsetsState;

    invoke-virtual {p1, v0}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    .line 187
    :cond_65
    return-void
.end method
