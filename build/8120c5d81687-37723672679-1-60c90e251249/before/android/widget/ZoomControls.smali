.class public Landroid/widget/ZoomControls;
.super Landroid/widget/LinearLayout;
.source "ZoomControls.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final greylist mZoomIn:Landroid/widget/ZoomButton;

.field private final greylist mZoomOut:Landroid/widget/ZoomButton;


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3

    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ZoomControls;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroid/widget/ZoomControls;->setFocusable(Z)V

    .line 54
    nop

    .line 55
    const-string p2, "layout_inflater"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    .line 56
    const p2, 0x1090187

    const/4 v0, 0x1

    invoke-virtual {p1, p2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 59
    const p1, 0x1020610

    invoke-virtual {p0, p1}, Landroid/widget/ZoomControls;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ZoomButton;

    iput-object p1, p0, Landroid/widget/ZoomControls;->mZoomIn:Landroid/widget/ZoomButton;

    .line 60
    const p1, 0x1020612

    invoke-virtual {p0, p1}, Landroid/widget/ZoomControls;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ZoomButton;

    iput-object p1, p0, Landroid/widget/ZoomControls;->mZoomOut:Landroid/widget/ZoomButton;

    .line 61
    return-void
.end method

.method private greylist-max-o fade(IFF)V
    .registers 5

    .line 98
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p2, p3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 99
    const-wide/16 p2, 0x1f4

    invoke-virtual {v0, p2, p3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 100
    invoke-virtual {p0, v0}, Landroid/widget/ZoomControls;->startAnimation(Landroid/view/animation/Animation;)V

    .line 101
    invoke-virtual {p0, p1}, Landroid/widget/ZoomControls;->setVisibility(I)V

    .line 102
    return-void
.end method


# virtual methods
.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .line 119
    const-class v0, Landroid/widget/ZoomControls;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist hasFocus()Z
    .registers 2

    .line 114
    iget-object v0, p0, Landroid/widget/ZoomControls;->mZoomIn:Landroid/widget/ZoomButton;

    invoke-virtual {v0}, Landroid/widget/ZoomButton;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Landroid/widget/ZoomControls;->mZoomOut:Landroid/widget/ZoomButton;

    invoke-virtual {v0}, Landroid/widget/ZoomButton;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method public whitelist hide()V
    .registers 4

    .line 94
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-direct {p0, v2, v0, v1}, Landroid/widget/ZoomControls;->fade(IFF)V

    .line 95
    return-void
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 86
    const/4 p1, 0x1

    return p1
.end method

.method public whitelist setIsZoomInEnabled(Z)V
    .registers 3

    .line 105
    iget-object v0, p0, Landroid/widget/ZoomControls;->mZoomIn:Landroid/widget/ZoomButton;

    invoke-virtual {v0, p1}, Landroid/widget/ZoomButton;->setEnabled(Z)V

    .line 106
    return-void
.end method

.method public whitelist setIsZoomOutEnabled(Z)V
    .registers 3

    .line 109
    iget-object v0, p0, Landroid/widget/ZoomControls;->mZoomOut:Landroid/widget/ZoomButton;

    invoke-virtual {v0, p1}, Landroid/widget/ZoomButton;->setEnabled(Z)V

    .line 110
    return-void
.end method

.method public whitelist setOnZoomInClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3

    .line 64
    iget-object v0, p0, Landroid/widget/ZoomControls;->mZoomIn:Landroid/widget/ZoomButton;

    invoke-virtual {v0, p1}, Landroid/widget/ZoomButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    return-void
.end method

.method public whitelist setOnZoomOutClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3

    .line 68
    iget-object v0, p0, Landroid/widget/ZoomControls;->mZoomOut:Landroid/widget/ZoomButton;

    invoke-virtual {v0, p1}, Landroid/widget/ZoomButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    return-void
.end method

.method public whitelist setZoomSpeed(J)V
    .registers 4

    .line 76
    iget-object v0, p0, Landroid/widget/ZoomControls;->mZoomIn:Landroid/widget/ZoomButton;

    invoke-virtual {v0, p1, p2}, Landroid/widget/ZoomButton;->setZoomSpeed(J)V

    .line 77
    iget-object v0, p0, Landroid/widget/ZoomControls;->mZoomOut:Landroid/widget/ZoomButton;

    invoke-virtual {v0, p1, p2}, Landroid/widget/ZoomButton;->setZoomSpeed(J)V

    .line 78
    return-void
.end method

.method public whitelist show()V
    .registers 4

    .line 90
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Landroid/widget/ZoomControls;->fade(IFF)V

    .line 91
    return-void
.end method
