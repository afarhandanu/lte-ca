.class Landroid/widget/SearchView$UpdatableTouchDelegate;
.super Landroid/view/TouchDelegate;
.source "SearchView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdatableTouchDelegate"
.end annotation


# instance fields
.field private final greylist-max-o mActualBounds:Landroid/graphics/Rect;

.field private greylist-max-o mDelegateTargeted:Z

.field private final greylist-max-o mDelegateView:Landroid/view/View;

.field private final greylist-max-o mSlop:I

.field private final greylist-max-o mSlopBounds:Landroid/graphics/Rect;

.field private final greylist-max-o mTargetBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/View;)V
    .registers 5

    .line 1868
    invoke-direct {p0, p1, p3}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 1869
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Landroid/widget/SearchView$UpdatableTouchDelegate;->mSlop:I

    .line 1870
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/SearchView$UpdatableTouchDelegate;->mTargetBounds:Landroid/graphics/Rect;

    .line 1871
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/SearchView$UpdatableTouchDelegate;->mSlopBounds:Landroid/graphics/Rect;

    .line 1872
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/SearchView$UpdatableTouchDelegate;->mActualBounds:Landroid/graphics/Rect;

    .line 1873
    invoke-virtual {p0, p1, p2}, Landroid/widget/SearchView$UpdatableTouchDelegate;->setBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1874
    iput-object p3, p0, Landroid/widget/SearchView$UpdatableTouchDelegate;->mDelegateView:Landroid/view/View;

    .line 1875
    return-void
.end method


# virtual methods
.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    .line 1886
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 1887
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 1888
    nop

    .line 1889
    nop

    .line 1890
    nop

    .line 1892
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v2, :pswitch_data_78

    goto :goto_3e

    .line 1909
    :pswitch_17
    iget-boolean v2, p0, Landroid/widget/SearchView$UpdatableTouchDelegate;->mDelegateTargeted:Z

    .line 1910
    iput-boolean v3, p0, Landroid/widget/SearchView$UpdatableTouchDelegate;->mDelegateTargeted:Z

    move v6, v4

    move v4, v2

    move v2, v6

    goto :goto_40

    .line 1901
    :pswitch_1f
    iget-boolean v2, p0, Landroid/widget/SearchView$UpdatableTouchDelegate;->mDelegateTargeted:Z

    .line 1902
    if-eqz v2, :cond_2e

    .line 1903
    iget-object v5, p0, Landroid/widget/SearchView$UpdatableTouchDelegate;->mSlopBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-nez v5, :cond_2e

    .line 1904
    move v4, v2

    move v2, v3

    goto :goto_40

    .line 1913
    :cond_2e
    move v6, v4

    move v4, v2

    move v2, v6

    goto :goto_40

    .line 1894
    :pswitch_32
    iget-object v2, p0, Landroid/widget/SearchView$UpdatableTouchDelegate;->mTargetBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 1895
    iput-boolean v4, p0, Landroid/widget/SearchView$UpdatableTouchDelegate;->mDelegateTargeted:Z

    .line 1896
    move v2, v4

    goto :goto_40

    .line 1913
    :cond_3e
    :goto_3e
    move v2, v4

    move v4, v3

    :goto_40
    if-eqz v4, :cond_77

    .line 1914
    if-eqz v2, :cond_62

    iget-object v2, p0, Landroid/widget/SearchView$UpdatableTouchDelegate;->mActualBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-nez v2, :cond_62

    .line 1918
    iget-object v0, p0, Landroid/widget/SearchView$UpdatableTouchDelegate;->mDelegateView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget-object v1, p0, Landroid/widget/SearchView$UpdatableTouchDelegate;->mDelegateView:Landroid/view/View;

    .line 1919
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 1918
    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_71

    .line 1922
    :cond_62
    iget-object v2, p0, Landroid/widget/SearchView$UpdatableTouchDelegate;->mActualBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    iget-object v2, p0, Landroid/widget/SearchView$UpdatableTouchDelegate;->mActualBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 1925
    :goto_71
    iget-object v0, p0, Landroid/widget/SearchView$UpdatableTouchDelegate;->mDelegateView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 1927
    :cond_77
    return v3

    :pswitch_data_78
    .packed-switch 0x0
        :pswitch_32
        :pswitch_1f
        :pswitch_1f
        :pswitch_17
    .end packed-switch
.end method

.method public greylist-max-o setBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 5

    .line 1878
    iget-object v0, p0, Landroid/widget/SearchView$UpdatableTouchDelegate;->mTargetBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1879
    iget-object v0, p0, Landroid/widget/SearchView$UpdatableTouchDelegate;->mSlopBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1880
    iget-object p1, p0, Landroid/widget/SearchView$UpdatableTouchDelegate;->mSlopBounds:Landroid/graphics/Rect;

    iget v0, p0, Landroid/widget/SearchView$UpdatableTouchDelegate;->mSlop:I

    neg-int v0, v0

    iget v1, p0, Landroid/widget/SearchView$UpdatableTouchDelegate;->mSlop:I

    neg-int v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->inset(II)V

    .line 1881
    iget-object p1, p0, Landroid/widget/SearchView$UpdatableTouchDelegate;->mActualBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1882
    return-void
.end method
