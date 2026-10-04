.class Landroid/util/LauncherIcons$ShadowDrawable;
.super Landroid/graphics/drawable/DrawableWrapper;
.source "LauncherIcons.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/LauncherIcons;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ShadowDrawable"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/LauncherIcons$ShadowDrawable$MyConstantState;
    }
.end annotation


# instance fields
.field final greylist-max-o mState:Landroid/util/LauncherIcons$ShadowDrawable$MyConstantState;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)V
    .registers 4

    .line 136
    invoke-direct {p0, p2}, Landroid/graphics/drawable/DrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 137
    new-instance v0, Landroid/util/LauncherIcons$ShadowDrawable$MyConstantState;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Landroid/util/LauncherIcons$ShadowDrawable$MyConstantState;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable$ConstantState;)V

    iput-object v0, p0, Landroid/util/LauncherIcons$ShadowDrawable;->mState:Landroid/util/LauncherIcons$ShadowDrawable$MyConstantState;

    .line 138
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/util/LauncherIcons$ShadowDrawable$MyConstantState;)V
    .registers 3

    .line 141
    iget-object v0, p1, Landroid/util/LauncherIcons$ShadowDrawable$MyConstantState;->mChildState:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/graphics/drawable/DrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 142
    iput-object p1, p0, Landroid/util/LauncherIcons$ShadowDrawable;->mState:Landroid/util/LauncherIcons$ShadowDrawable$MyConstantState;

    .line 143
    return-void
.end method


# virtual methods
.method public whitelist draw(Landroid/graphics/Canvas;)V
    .registers 6

    .line 152
    invoke-virtual {p0}, Landroid/util/LauncherIcons$ShadowDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 153
    iget-object v1, p0, Landroid/util/LauncherIcons$ShadowDrawable;->mState:Landroid/util/LauncherIcons$ShadowDrawable$MyConstantState;

    iget-object v1, v1, Landroid/util/LauncherIcons$ShadowDrawable$MyConstantState;->mShadow:Landroid/graphics/Bitmap;

    iget-object v2, p0, Landroid/util/LauncherIcons$ShadowDrawable;->mState:Landroid/util/LauncherIcons$ShadowDrawable$MyConstantState;

    iget-object v2, v2, Landroid/util/LauncherIcons$ShadowDrawable$MyConstantState;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v0, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 154
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 156
    nop

    .line 158
    nop

    .line 159
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3f75c28e    # 0.9599999f

    mul-float/2addr v1, v2

    const v3, 0x3caaaaab

    mul-float/2addr v1, v3

    .line 161
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    const v3, 0x3c2aaaab

    mul-float/2addr v0, v3

    .line 158
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 162
    invoke-virtual {p1, v2, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 163
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->draw(Landroid/graphics/Canvas;)V

    .line 164
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 165
    return-void
.end method

.method public whitelist getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 2

    .line 147
    iget-object v0, p0, Landroid/util/LauncherIcons$ShadowDrawable;->mState:Landroid/util/LauncherIcons$ShadowDrawable$MyConstantState;

    return-object v0
.end method
