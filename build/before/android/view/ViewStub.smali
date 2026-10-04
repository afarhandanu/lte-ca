.class public final Landroid/view/ViewStub;
.super Landroid/view/View;
.source "ViewStub.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ViewStub$ViewReplaceRunnable;,
        Landroid/view/ViewStub$OnInflateListener;
    }
.end annotation


# instance fields
.field private greylist-max-o mInflateListener:Landroid/view/ViewStub$OnInflateListener;

.field private greylist-max-o mInflatedId:I

.field private greylist-max-o mInflatedViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mInflater:Landroid/view/LayoutInflater;

.field private greylist-max-o mLayoutResource:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$mreplaceSelfWithView(Landroid/view/ViewStub;Landroid/view/View;Landroid/view/ViewGroup;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/ViewStub;->replaceSelfWithView(Landroid/view/View;Landroid/view/ViewGroup;)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3

    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/ViewStub;-><init>(Landroid/content/Context;I)V

    .line 84
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;I)V
    .registers 4

    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/ViewStub;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 95
    iput p2, p0, Landroid/view/ViewStub;->mLayoutResource:I

    .line 96
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 99
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/ViewStub;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 100
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 103
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/ViewStub;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 104
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 13

    .line 107
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 109
    sget-object v0, Lcom/android/internal/R$styleable;->ViewStub:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 111
    sget-object v3, Lcom/android/internal/R$styleable;->ViewStub:[I

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v1 .. v7}, Landroid/view/ViewStub;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 114
    const/4 p1, 0x2

    const/4 p2, -0x1

    invoke-virtual {v5, p1, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, v1, Landroid/view/ViewStub;->mInflatedId:I

    .line 115
    const/4 p1, 0x1

    const/4 p3, 0x0

    invoke-virtual {v5, p1, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p4

    iput p4, v1, Landroid/view/ViewStub;->mLayoutResource:I

    .line 116
    invoke-virtual {v5, p3, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, v1, Landroid/view/ViewStub;->mID:I

    .line 117
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 119
    const/16 p2, 0x8

    invoke-virtual {p0, p2}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 120
    invoke-virtual {p0, p1}, Landroid/view/ViewStub;->setWillNotDraw(Z)V

    .line 121
    return-void
.end method

.method private greylist-max-o inflateViewNoAdd(Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    .line 267
    iget-object v0, p0, Landroid/view/ViewStub;->mInflater:Landroid/view/LayoutInflater;

    if-eqz v0, :cond_7

    .line 268
    iget-object v0, p0, Landroid/view/ViewStub;->mInflater:Landroid/view/LayoutInflater;

    goto :goto_d

    .line 270
    :cond_7
    iget-object v0, p0, Landroid/view/ViewStub;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 272
    :goto_d
    iget v1, p0, Landroid/view/ViewStub;->mLayoutResource:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 274
    iget v0, p0, Landroid/view/ViewStub;->mInflatedId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1e

    .line 275
    iget v0, p0, Landroid/view/ViewStub;->mInflatedId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    .line 277
    :cond_1e
    return-object p1
.end method

.method private greylist-max-o replaceSelfWithView(Landroid/view/View;Landroid/view/ViewGroup;)V
    .registers 5

    .line 281
    invoke-virtual {p2, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 282
    invoke-virtual {p2, p0}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    .line 284
    invoke-virtual {p0}, Landroid/view/ViewStub;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 285
    if-eqz v1, :cond_11

    .line 286
    invoke-virtual {p2, p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_14

    .line 288
    :cond_11
    invoke-virtual {p2, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 290
    :goto_14
    return-void
.end method


# virtual methods
.method protected whitelist dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 2

    .line 225
    return-void
.end method

.method public whitelist draw(Landroid/graphics/Canvas;)V
    .registers 2

    .line 221
    return-void
.end method

.method public whitelist getInflatedId()I
    .registers 2

    .line 135
    iget v0, p0, Landroid/view/ViewStub;->mInflatedId:I

    return v0
.end method

.method public whitelist getLayoutInflater()Landroid/view/LayoutInflater;
    .registers 2

    .line 211
    iget-object v0, p0, Landroid/view/ViewStub;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public whitelist getLayoutResource()I
    .registers 2

    .line 173
    iget v0, p0, Landroid/view/ViewStub;->mLayoutResource:I

    return v0
.end method

.method public whitelist inflate()Landroid/view/View;
    .registers 3

    .line 300
    invoke-virtual {p0}, Landroid/view/ViewStub;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 302
    if-eqz v0, :cond_30

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_30

    .line 303
    iget v1, p0, Landroid/view/ViewStub;->mLayoutResource:I

    if-eqz v1, :cond_28

    .line 304
    check-cast v0, Landroid/view/ViewGroup;

    .line 305
    invoke-direct {p0, v0}, Landroid/view/ViewStub;->inflateViewNoAdd(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 306
    invoke-direct {p0, v1, v0}, Landroid/view/ViewStub;->replaceSelfWithView(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 308
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/view/ViewStub;->mInflatedViewRef:Ljava/lang/ref/WeakReference;

    .line 309
    iget-object v0, p0, Landroid/view/ViewStub;->mInflateListener:Landroid/view/ViewStub$OnInflateListener;

    if-eqz v0, :cond_27

    .line 310
    iget-object v0, p0, Landroid/view/ViewStub;->mInflateListener:Landroid/view/ViewStub$OnInflateListener;

    invoke-interface {v0, p0, v1}, Landroid/view/ViewStub$OnInflateListener;->onInflate(Landroid/view/ViewStub;Landroid/view/View;)V

    .line 313
    :cond_27
    return-object v1

    .line 315
    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ViewStub must have a valid layoutResource"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 318
    :cond_30
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewStub must have a non-null ViewGroup viewParent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist onMeasure(II)V
    .registers 3

    .line 216
    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Landroid/view/ViewStub;->setMeasuredDimension(II)V

    .line 217
    return-void
.end method

.method public whitelist setInflatedId(I)V
    .registers 2
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setInflatedIdAsync"
    .end annotation

    .line 150
    iput p1, p0, Landroid/view/ViewStub;->mInflatedId:I

    .line 151
    return-void
.end method

.method public greylist-max-o setInflatedIdAsync(I)Ljava/lang/Runnable;
    .registers 2

    .line 155
    iput p1, p0, Landroid/view/ViewStub;->mInflatedId:I

    .line 156
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist setLayoutInflater(Landroid/view/LayoutInflater;)V
    .registers 2

    .line 204
    iput-object p1, p0, Landroid/view/ViewStub;->mInflater:Landroid/view/LayoutInflater;

    .line 205
    return-void
.end method

.method public whitelist setLayoutResource(I)V
    .registers 2
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setLayoutResourceAsync"
    .end annotation

    .line 190
    iput p1, p0, Landroid/view/ViewStub;->mLayoutResource:I

    .line 191
    return-void
.end method

.method public greylist-max-o setLayoutResourceAsync(I)Ljava/lang/Runnable;
    .registers 2

    .line 195
    iput p1, p0, Landroid/view/ViewStub;->mLayoutResource:I

    .line 196
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist setOnInflateListener(Landroid/view/ViewStub$OnInflateListener;)V
    .registers 2

    .line 331
    iput-object p1, p0, Landroid/view/ViewStub;->mInflateListener:Landroid/view/ViewStub$OnInflateListener;

    .line 332
    return-void
.end method

.method public whitelist setVisibility(I)V
    .registers 3
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setVisibilityAsync"
    .end annotation

    .line 240
    iget-object v0, p0, Landroid/view/ViewStub;->mInflatedViewRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1b

    .line 241
    iget-object v0, p0, Landroid/view/ViewStub;->mInflatedViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 242
    if-eqz v0, :cond_12

    .line 243
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 247
    goto :goto_26

    .line 245
    :cond_12
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "setVisibility called on un-referenced view"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 248
    :cond_1b
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 249
    if-eqz p1, :cond_23

    const/4 v0, 0x4

    if-ne p1, v0, :cond_26

    .line 250
    :cond_23
    invoke-virtual {p0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 253
    :cond_26
    :goto_26
    return-void
.end method

.method public greylist-max-o setVisibilityAsync(I)Ljava/lang/Runnable;
    .registers 3

    .line 257
    if-eqz p1, :cond_8

    const/4 v0, 0x4

    if-ne p1, v0, :cond_6

    goto :goto_8

    .line 261
    :cond_6
    const/4 p1, 0x0

    return-object p1

    .line 258
    :cond_8
    :goto_8
    invoke-virtual {p0}, Landroid/view/ViewStub;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 259
    new-instance v0, Landroid/view/ViewStub$ViewReplaceRunnable;

    invoke-direct {p0, p1}, Landroid/view/ViewStub;->inflateViewNoAdd(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Landroid/view/ViewStub$ViewReplaceRunnable;-><init>(Landroid/view/ViewStub;Landroid/view/View;)V

    return-object v0
.end method
