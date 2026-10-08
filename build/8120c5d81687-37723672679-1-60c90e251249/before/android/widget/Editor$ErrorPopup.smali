.class Landroid/widget/Editor$ErrorPopup;
.super Landroid/widget/PopupWindow;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ErrorPopup"
.end annotation


# instance fields
.field private greylist-max-o mAbove:Z

.field private greylist-max-o mPopupInlineErrorAboveBackgroundId:I

.field private greylist-max-o mPopupInlineErrorBackgroundId:I

.field private final greylist-max-o mView:Landroid/widget/TextView;


# direct methods
.method constructor greylist-max-o <init>(Landroid/widget/TextView;II)V
    .registers 4

    .line 7450
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 7444
    const/4 p2, 0x0

    iput-boolean p2, p0, Landroid/widget/Editor$ErrorPopup;->mAbove:Z

    .line 7446
    iput p2, p0, Landroid/widget/Editor$ErrorPopup;->mPopupInlineErrorBackgroundId:I

    .line 7447
    iput p2, p0, Landroid/widget/Editor$ErrorPopup;->mPopupInlineErrorAboveBackgroundId:I

    .line 7451
    iput-object p1, p0, Landroid/widget/Editor$ErrorPopup;->mView:Landroid/widget/TextView;

    .line 7455
    iget p1, p0, Landroid/widget/Editor$ErrorPopup;->mPopupInlineErrorBackgroundId:I

    const/16 p2, 0x139

    invoke-direct {p0, p1, p2}, Landroid/widget/Editor$ErrorPopup;->getResourceId(II)I

    move-result p1

    iput p1, p0, Landroid/widget/Editor$ErrorPopup;->mPopupInlineErrorBackgroundId:I

    .line 7457
    iget-object p1, p0, Landroid/widget/Editor$ErrorPopup;->mView:Landroid/widget/TextView;

    iget p2, p0, Landroid/widget/Editor$ErrorPopup;->mPopupInlineErrorBackgroundId:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 7458
    return-void
.end method

.method private greylist-max-o getResourceId(II)I
    .registers 4

    .line 7477
    if-nez p1, :cond_17

    .line 7478
    iget-object p1, p0, Landroid/widget/Editor$ErrorPopup;->mView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Landroid/R$styleable;->Theme:[I

    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 7480
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 7481
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    move p1, p2

    .line 7483
    :cond_17
    return p1
.end method


# virtual methods
.method greylist-max-o fixDirection(Z)V
    .registers 4

    .line 7461
    iput-boolean p1, p0, Landroid/widget/Editor$ErrorPopup;->mAbove:Z

    .line 7463
    if-eqz p1, :cond_f

    .line 7464
    iget v0, p0, Landroid/widget/Editor$ErrorPopup;->mPopupInlineErrorAboveBackgroundId:I

    .line 7465
    const/16 v1, 0x138

    invoke-direct {p0, v0, v1}, Landroid/widget/Editor$ErrorPopup;->getResourceId(II)I

    move-result v0

    iput v0, p0, Landroid/widget/Editor$ErrorPopup;->mPopupInlineErrorAboveBackgroundId:I

    goto :goto_19

    .line 7468
    :cond_f
    iget v0, p0, Landroid/widget/Editor$ErrorPopup;->mPopupInlineErrorBackgroundId:I

    const/16 v1, 0x139

    invoke-direct {p0, v0, v1}, Landroid/widget/Editor$ErrorPopup;->getResourceId(II)I

    move-result v0

    iput v0, p0, Landroid/widget/Editor$ErrorPopup;->mPopupInlineErrorBackgroundId:I

    .line 7472
    :goto_19
    iget-object v0, p0, Landroid/widget/Editor$ErrorPopup;->mView:Landroid/widget/TextView;

    .line 7473
    if-eqz p1, :cond_20

    iget p1, p0, Landroid/widget/Editor$ErrorPopup;->mPopupInlineErrorAboveBackgroundId:I

    goto :goto_22

    :cond_20
    iget p1, p0, Landroid/widget/Editor$ErrorPopup;->mPopupInlineErrorBackgroundId:I

    .line 7472
    :goto_22
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 7474
    return-void
.end method

.method public whitelist update(IIIIZ)V
    .registers 6

    .line 7488
    invoke-super/range {p0 .. p5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    .line 7490
    move-object p1, p0

    invoke-virtual {p0}, Landroid/widget/Editor$ErrorPopup;->isAboveAnchor()Z

    move-result p2

    .line 7491
    iget-boolean p3, p1, Landroid/widget/Editor$ErrorPopup;->mAbove:Z

    if-eq p2, p3, :cond_f

    .line 7492
    invoke-virtual {p0, p2}, Landroid/widget/Editor$ErrorPopup;->fixDirection(Z)V

    .line 7494
    :cond_f
    return-void
.end method
