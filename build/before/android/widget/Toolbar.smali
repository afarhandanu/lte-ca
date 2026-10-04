.class public Landroid/widget/Toolbar;
.super Landroid/view/ViewGroup;
.source "Toolbar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;,
        Landroid/widget/Toolbar$LayoutParams;,
        Landroid/widget/Toolbar$OnMenuItemClickListener;,
        Landroid/widget/Toolbar$SavedState;
    }
.end annotation


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "Toolbar"


# instance fields
.field private greylist-max-o mActionMenuPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

.field private greylist-max-o mButtonGravity:I

.field private greylist-max-o mCollapseButtonView:Landroid/widget/ImageButton;

.field private greylist-max-o mCollapseDescription:Ljava/lang/CharSequence;

.field private greylist-max-o mCollapseIcon:Landroid/graphics/drawable/Drawable;

.field private greylist-max-o mCollapsible:Z

.field private greylist-max-o mContentInsetEndWithActions:I

.field private greylist-max-o mContentInsetStartWithNavigation:I

.field private greylist-max-o mContentInsets:Landroid/widget/RtlSpacingHelper;

.field private greylist-max-o mEatingTouch:Z

.field greylist-max-o mExpandedActionView:Landroid/view/View;

.field private greylist-max-o mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

.field private greylist-max-o mGravity:I

.field private final greylist-max-o mHiddenViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mLogoView:Landroid/widget/ImageView;

.field private greylist-max-o mMaxButtonHeight:I

.field private greylist-max-o mMenuBuilderCallback:Lcom/android/internal/view/menu/MenuBuilder$Callback;

.field private greylist-max-o mMenuView:Landroid/widget/ActionMenuView;

.field private final greylist-max-o mMenuViewItemClickListener:Landroid/widget/ActionMenuView$OnMenuItemClickListener;

.field private greylist-max-o mNavButtonStyle:I

.field private greylist-max-p mNavButtonView:Landroid/widget/ImageButton;

.field private greylist-max-o mOnMenuItemClickListener:Landroid/widget/Toolbar$OnMenuItemClickListener;

.field private greylist-max-o mOuterActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

.field private greylist-max-o mPopupContext:Landroid/content/Context;

.field private greylist-max-o mPopupTheme:I

.field private final greylist-max-o mShowOverflowMenuRunnable:Ljava/lang/Runnable;

.field private greylist-max-o mSubtitleText:Ljava/lang/CharSequence;

.field private greylist-max-o mSubtitleTextAppearance:I

.field private greylist-max-o mSubtitleTextColor:I

.field private greylist-max-o mSubtitleTextView:Landroid/widget/TextView;

.field private final greylist-max-o mTempMargins:[I

.field private final greylist-max-o mTempViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private greylist mTitleMarginBottom:I

.field private greylist mTitleMarginEnd:I

.field private greylist mTitleMarginStart:I

.field private greylist mTitleMarginTop:I

.field private greylist-max-o mTitleText:Ljava/lang/CharSequence;

.field private greylist-max-o mTitleTextAppearance:I

.field private greylist-max-o mTitleTextColor:I

.field private greylist mTitleTextView:Landroid/widget/TextView;

.field private greylist-max-o mWrapper:Lcom/android/internal/widget/ToolbarWidgetWrapper;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmButtonGravity(Landroid/widget/Toolbar;)I
    .registers 1

    iget p0, p0, Landroid/widget/Toolbar;->mButtonGravity:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCollapseButtonView(Landroid/widget/Toolbar;)Landroid/widget/ImageButton;
    .registers 1

    iget-object p0, p0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnMenuItemClickListener(Landroid/widget/Toolbar;)Landroid/widget/Toolbar$OnMenuItemClickListener;
    .registers 1

    iget-object p0, p0, Landroid/widget/Toolbar;->mOnMenuItemClickListener:Landroid/widget/Toolbar$OnMenuItemClickListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mensureCollapseButtonView(Landroid/widget/Toolbar;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/Toolbar;->ensureCollapseButtonView()V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3

    .line 224
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 225
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 228
    const v0, 0x10104aa

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 229
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 232
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 233
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 14

    .line 236
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 178
    const v0, 0x800013

    iput v0, p0, Landroid/widget/Toolbar;->mGravity:I

    .line 189
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    .line 192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    .line 194
    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/widget/Toolbar;->mTempMargins:[I

    .line 198
    new-instance v1, Landroid/widget/Toolbar$1;

    invoke-direct {v1, p0}, Landroid/widget/Toolbar$1;-><init>(Landroid/widget/Toolbar;)V

    iput-object v1, p0, Landroid/widget/Toolbar;->mMenuViewItemClickListener:Landroid/widget/ActionMenuView$OnMenuItemClickListener;

    .line 217
    new-instance v1, Landroid/widget/Toolbar$2;

    invoke-direct {v1, p0}, Landroid/widget/Toolbar$2;-><init>(Landroid/widget/Toolbar;)V

    iput-object v1, p0, Landroid/widget/Toolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    .line 238
    sget-object v1, Lcom/android/internal/R$styleable;->Toolbar:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 240
    sget-object v4, Lcom/android/internal/R$styleable;->Toolbar:[I

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move v7, p3

    move v8, p4

    invoke-virtual/range {v2 .. v8}, Landroid/widget/Toolbar;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 243
    const/4 p1, 0x4

    const/4 p2, 0x0

    invoke-virtual {v6, p1, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, v2, Landroid/widget/Toolbar;->mTitleTextAppearance:I

    .line 244
    const/4 p1, 0x5

    invoke-virtual {v6, p1, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, v2, Landroid/widget/Toolbar;->mSubtitleTextAppearance:I

    .line 245
    const/16 p1, 0x1b

    invoke-virtual {v6, p1, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, v2, Landroid/widget/Toolbar;->mNavButtonStyle:I

    .line 246
    iget p1, v2, Landroid/widget/Toolbar;->mGravity:I

    invoke-virtual {v6, p2, p1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    iput p1, v2, Landroid/widget/Toolbar;->mGravity:I

    .line 247
    const/16 p1, 0x17

    const/16 p3, 0x30

    invoke-virtual {v6, p1, p3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    iput p1, v2, Landroid/widget/Toolbar;->mButtonGravity:I

    .line 248
    nop

    .line 249
    const/16 p1, 0x11

    invoke-virtual {v6, p1, p2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    iput p1, v2, Landroid/widget/Toolbar;->mTitleMarginBottom:I

    iput p1, v2, Landroid/widget/Toolbar;->mTitleMarginTop:I

    iput p1, v2, Landroid/widget/Toolbar;->mTitleMarginEnd:I

    iput p1, v2, Landroid/widget/Toolbar;->mTitleMarginStart:I

    .line 251
    const/16 p1, 0x12

    const/4 p3, -0x1

    invoke-virtual {v6, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    .line 252
    if-ltz p1, :cond_7c

    .line 253
    iput p1, v2, Landroid/widget/Toolbar;->mTitleMarginStart:I

    .line 256
    :cond_7c
    const/16 p1, 0x13

    invoke-virtual {v6, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    .line 257
    if-ltz p1, :cond_86

    .line 258
    iput p1, v2, Landroid/widget/Toolbar;->mTitleMarginEnd:I

    .line 261
    :cond_86
    const/16 p1, 0x14

    invoke-virtual {v6, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    .line 262
    if-ltz p1, :cond_90

    .line 263
    iput p1, v2, Landroid/widget/Toolbar;->mTitleMarginTop:I

    .line 266
    :cond_90
    const/16 p1, 0x15

    invoke-virtual {v6, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    .line 268
    if-ltz p1, :cond_9a

    .line 269
    iput p1, v2, Landroid/widget/Toolbar;->mTitleMarginBottom:I

    .line 272
    :cond_9a
    const/16 p1, 0x16

    invoke-virtual {v6, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, v2, Landroid/widget/Toolbar;->mMaxButtonHeight:I

    .line 274
    nop

    .line 275
    const/4 p1, 0x6

    const/high16 p4, -0x80000000

    invoke-virtual {v6, p1, p4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    .line 277
    nop

    .line 278
    const/4 v1, 0x7

    invoke-virtual {v6, v1, p4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    .line 280
    nop

    .line 281
    const/16 v3, 0x8

    invoke-virtual {v6, v3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 282
    nop

    .line 283
    const/16 v4, 0x9

    invoke-virtual {v6, v4, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 285
    invoke-direct {p0}, Landroid/widget/Toolbar;->ensureContentInsets()V

    .line 286
    iget-object v5, v2, Landroid/widget/Toolbar;->mContentInsets:Landroid/widget/RtlSpacingHelper;

    invoke-virtual {v5, v3, v4}, Landroid/widget/RtlSpacingHelper;->setAbsolute(II)V

    .line 288
    if-ne p1, p4, :cond_ca

    if-eq v1, p4, :cond_cf

    .line 290
    :cond_ca
    iget-object v3, v2, Landroid/widget/Toolbar;->mContentInsets:Landroid/widget/RtlSpacingHelper;

    invoke-virtual {v3, p1, v1}, Landroid/widget/RtlSpacingHelper;->setRelative(II)V

    .line 293
    :cond_cf
    const/16 p1, 0x19

    invoke-virtual {v6, p1, p4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    iput p1, v2, Landroid/widget/Toolbar;->mContentInsetStartWithNavigation:I

    .line 295
    const/16 p1, 0x1a

    invoke-virtual {v6, p1, p4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    iput p1, v2, Landroid/widget/Toolbar;->mContentInsetEndWithActions:I

    .line 298
    const/16 p1, 0x18

    invoke-virtual {v6, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, v2, Landroid/widget/Toolbar;->mCollapseIcon:Landroid/graphics/drawable/Drawable;

    .line 299
    const/16 p1, 0xd

    invoke-virtual {v6, p1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v2, Landroid/widget/Toolbar;->mCollapseDescription:Ljava/lang/CharSequence;

    .line 301
    const/4 p1, 0x1

    invoke-virtual {v6, p1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 302
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_fd

    .line 303
    invoke-virtual {p0, p1}, Landroid/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 306
    :cond_fd
    const/4 p1, 0x3

    invoke-virtual {v6, p1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 307
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_10b

    .line 308
    invoke-virtual {p0, p1}, Landroid/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 312
    :cond_10b
    iget-object p1, v2, Landroid/widget/Toolbar;->mContext:Landroid/content/Context;

    iput-object p1, v2, Landroid/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    .line 313
    const/16 p1, 0xa

    invoke-virtual {v6, p1, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/Toolbar;->setPopupTheme(I)V

    .line 315
    const/16 p1, 0xb

    invoke-virtual {v6, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 316
    if-eqz p1, :cond_123

    .line 317
    invoke-virtual {p0, p1}, Landroid/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 320
    :cond_123
    const/16 p1, 0xc

    invoke-virtual {v6, p1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 322
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_132

    .line 323
    invoke-virtual {p0, p1}, Landroid/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 326
    :cond_132
    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 327
    if-eqz p1, :cond_13b

    .line 328
    invoke-virtual {p0, p1}, Landroid/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 331
    :cond_13b
    const/16 p1, 0x10

    invoke-virtual {v6, p1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 332
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_14a

    .line 333
    invoke-virtual {p0, p1}, Landroid/widget/Toolbar;->setLogoDescription(Ljava/lang/CharSequence;)V

    .line 336
    :cond_14a
    const/16 p1, 0xe

    invoke-virtual {v6, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_159

    .line 337
    invoke-virtual {v6, p1, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/Toolbar;->setTitleTextColor(I)V

    .line 340
    :cond_159
    const/16 p1, 0xf

    invoke-virtual {v6, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_168

    .line 341
    invoke-virtual {v6, p1, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/Toolbar;->setSubtitleTextColor(I)V

    .line 343
    :cond_168
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 344
    return-void
.end method

.method private greylist-max-o addCustomViewsWithGravity(Ljava/util/List;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .line 2135
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_a

    move v0, v2

    goto :goto_b

    :cond_a
    move v0, v1

    .line 2136
    :goto_b
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getChildCount()I

    move-result v3

    .line 2137
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getLayoutDirection()I

    move-result v4

    invoke-static {p2, v4}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result p2

    .line 2139
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 2141
    if-eqz v0, :cond_41

    .line 2142
    sub-int/2addr v3, v2

    :goto_1d
    if-ltz v3, :cond_66

    .line 2143
    invoke-virtual {p0, v3}, Landroid/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2144
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/Toolbar$LayoutParams;

    .line 2145
    iget v2, v1, Landroid/widget/Toolbar$LayoutParams;->mViewType:I

    if-nez v2, :cond_3e

    invoke-direct {p0, v0}, Landroid/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_3e

    iget v1, v1, Landroid/widget/Toolbar$LayoutParams;->gravity:I

    .line 2146
    invoke-direct {p0, v1}, Landroid/widget/Toolbar;->getChildHorizontalGravity(I)I

    move-result v1

    if-ne v1, p2, :cond_3e

    .line 2147
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2142
    :cond_3e
    add-int/lit8 v3, v3, -0x1

    goto :goto_1d

    .line 2151
    :cond_41
    nop

    :goto_42
    if-ge v1, v3, :cond_66

    .line 2152
    invoke-virtual {p0, v1}, Landroid/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2153
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/Toolbar$LayoutParams;

    .line 2154
    iget v4, v2, Landroid/widget/Toolbar$LayoutParams;->mViewType:I

    if-nez v4, :cond_63

    invoke-direct {p0, v0}, Landroid/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_63

    iget v2, v2, Landroid/widget/Toolbar$LayoutParams;->gravity:I

    .line 2155
    invoke-direct {p0, v2}, Landroid/widget/Toolbar;->getChildHorizontalGravity(I)I

    move-result v2

    if-ne v2, p2, :cond_63

    .line 2156
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2151
    :cond_63
    add-int/lit8 v1, v1, 0x1

    goto :goto_42

    .line 2160
    :cond_66
    return-void
.end method

.method private greylist-max-o addSystemView(Landroid/view/View;Z)V
    .registers 5

    .line 1522
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1524
    if-nez v0, :cond_b

    .line 1525
    invoke-virtual {p0}, Landroid/widget/Toolbar;->generateDefaultLayoutParams()Landroid/widget/Toolbar$LayoutParams;

    move-result-object v0

    goto :goto_18

    .line 1526
    :cond_b
    invoke-virtual {p0, v0}, Landroid/widget/Toolbar;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 1527
    invoke-virtual {p0, v0}, Landroid/widget/Toolbar;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/Toolbar$LayoutParams;

    move-result-object v0

    goto :goto_18

    .line 1529
    :cond_16
    check-cast v0, Landroid/widget/Toolbar$LayoutParams;

    .line 1531
    :goto_18
    const/4 v1, 0x1

    iput v1, v0, Landroid/widget/Toolbar$LayoutParams;->mViewType:I

    .line 1533
    if-eqz p2, :cond_2a

    iget-object p2, p0, Landroid/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    if-eqz p2, :cond_2a

    .line 1534
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1535
    iget-object p2, p0, Landroid/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    .line 1537
    :cond_2a
    invoke-virtual {p0, p1, v0}, Landroid/widget/Toolbar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1539
    :goto_2d
    return-void
.end method

.method private greylist-max-o ensureCollapseButtonView()V
    .registers 6

    .line 1504
    iget-object v0, p0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    if-nez v0, :cond_41

    .line 1505
    new-instance v0, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    iget v3, p0, Landroid/widget/Toolbar;->mNavButtonStyle:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    .line 1506
    iget-object v0, p0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    iget-object v1, p0, Landroid/widget/Toolbar;->mCollapseIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1507
    iget-object v0, p0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    iget-object v1, p0, Landroid/widget/Toolbar;->mCollapseDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1508
    invoke-virtual {p0}, Landroid/widget/Toolbar;->generateDefaultLayoutParams()Landroid/widget/Toolbar$LayoutParams;

    move-result-object v0

    .line 1509
    iget v1, p0, Landroid/widget/Toolbar;->mButtonGravity:I

    and-int/lit8 v1, v1, 0x70

    const v2, 0x800003

    or-int/2addr v1, v2

    iput v1, v0, Landroid/widget/Toolbar$LayoutParams;->gravity:I

    .line 1510
    const/4 v1, 0x2

    iput v1, v0, Landroid/widget/Toolbar$LayoutParams;->mViewType:I

    .line 1511
    iget-object v1, p0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1512
    iget-object v0, p0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    new-instance v1, Landroid/widget/Toolbar$3;

    invoke-direct {v1, p0}, Landroid/widget/Toolbar$3;-><init>(Landroid/widget/Toolbar;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1519
    :cond_41
    return-void
.end method

.method private greylist-max-o ensureContentInsets()V
    .registers 2

    .line 2279
    iget-object v0, p0, Landroid/widget/Toolbar;->mContentInsets:Landroid/widget/RtlSpacingHelper;

    if-nez v0, :cond_b

    .line 2280
    new-instance v0, Landroid/widget/RtlSpacingHelper;

    invoke-direct {v0}, Landroid/widget/RtlSpacingHelper;-><init>()V

    iput-object v0, p0, Landroid/widget/Toolbar;->mContentInsets:Landroid/widget/RtlSpacingHelper;

    .line 2282
    :cond_b
    return-void
.end method

.method private greylist-max-o ensureLogoView()V
    .registers 3

    .line 706
    iget-object v0, p0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-nez v0, :cond_f

    .line 707
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    .line 709
    :cond_f
    return-void
.end method

.method private greylist-max-o ensureMenu()V
    .registers 4

    .line 1161
    invoke-direct {p0}, Landroid/widget/Toolbar;->ensureMenuView()V

    .line 1162
    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->peekMenu()Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v0

    if-nez v0, :cond_2c

    .line 1164
    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, Lcom/android/internal/view/menu/MenuBuilder;

    .line 1165
    iget-object v1, p0, Landroid/widget/Toolbar;->mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    if-nez v1, :cond_1f

    .line 1166
    new-instance v1, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;-><init>(Landroid/widget/Toolbar;Landroid/widget/Toolbar-IA;)V

    iput-object v1, p0, Landroid/widget/Toolbar;->mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    .line 1168
    :cond_1f
    iget-object v1, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ActionMenuView;->setExpandedActionViewsExclusive(Z)V

    .line 1169
    iget-object v1, p0, Landroid/widget/Toolbar;->mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    iget-object v2, p0, Landroid/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 1171
    :cond_2c
    return-void
.end method

.method private greylist-max-o ensureMenuView()V
    .registers 4

    .line 1174
    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    if-nez v0, :cond_3f

    .line 1175
    new-instance v0, Landroid/widget/ActionMenuView;

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ActionMenuView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    .line 1176
    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    iget v1, p0, Landroid/widget/Toolbar;->mPopupTheme:I

    invoke-virtual {v0, v1}, Landroid/widget/ActionMenuView;->setPopupTheme(I)V

    .line 1177
    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    iget-object v1, p0, Landroid/widget/Toolbar;->mMenuViewItemClickListener:Landroid/widget/ActionMenuView$OnMenuItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ActionMenuView;->setOnMenuItemClickListener(Landroid/widget/ActionMenuView$OnMenuItemClickListener;)V

    .line 1178
    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    iget-object v1, p0, Landroid/widget/Toolbar;->mActionMenuPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    iget-object v2, p0, Landroid/widget/Toolbar;->mMenuBuilderCallback:Lcom/android/internal/view/menu/MenuBuilder$Callback;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ActionMenuView;->setMenuCallbacks(Lcom/android/internal/view/menu/MenuPresenter$Callback;Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    .line 1179
    invoke-virtual {p0}, Landroid/widget/Toolbar;->generateDefaultLayoutParams()Landroid/widget/Toolbar$LayoutParams;

    move-result-object v0

    .line 1180
    iget v1, p0, Landroid/widget/Toolbar;->mButtonGravity:I

    and-int/lit8 v1, v1, 0x70

    const v2, 0x800005

    or-int/2addr v1, v2

    iput v1, v0, Landroid/widget/Toolbar$LayoutParams;->gravity:I

    .line 1181
    iget-object v1, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v1, v0}, Landroid/widget/ActionMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1182
    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/widget/Toolbar;->addSystemView(Landroid/view/View;Z)V

    .line 1184
    :cond_3f
    return-void
.end method

.method private greylist-max-o ensureNavButtonView()V
    .registers 6

    .line 1495
    iget-object v0, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-nez v0, :cond_26

    .line 1496
    new-instance v0, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    iget v3, p0, Landroid/widget/Toolbar;->mNavButtonStyle:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    .line 1497
    invoke-virtual {p0}, Landroid/widget/Toolbar;->generateDefaultLayoutParams()Landroid/widget/Toolbar$LayoutParams;

    move-result-object v0

    .line 1498
    iget v1, p0, Landroid/widget/Toolbar;->mButtonGravity:I

    and-int/lit8 v1, v1, 0x70

    const v2, 0x800003

    or-int/2addr v1, v2

    iput v1, v0, Landroid/widget/Toolbar$LayoutParams;->gravity:I

    .line 1499
    iget-object v1, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1501
    :cond_26
    return-void
.end method

.method private greylist-max-o getChildHorizontalGravity(I)I
    .registers 3

    .line 2163
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getLayoutDirection()I

    move-result v0

    .line 2164
    invoke-static {p1, v0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result p1

    .line 2165
    and-int/lit8 p1, p1, 0x7

    .line 2166
    packed-switch p1, :pswitch_data_16

    .line 2172
    :pswitch_d
    const/4 p1, 0x1

    if-ne v0, p1, :cond_13

    const/4 p1, 0x5

    goto :goto_14

    .line 2170
    :pswitch_12
    return p1

    .line 2172
    :cond_13
    const/4 p1, 0x3

    :goto_14
    return p1

    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_12
        :pswitch_d
        :pswitch_12
        :pswitch_d
        :pswitch_12
    .end packed-switch
.end method

.method private greylist-max-o getChildTop(Landroid/view/View;I)I
    .registers 9

    .line 2084
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/Toolbar$LayoutParams;

    .line 2085
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    .line 2086
    const/4 v1, 0x0

    if-lez p2, :cond_12

    sub-int p2, p1, p2

    div-int/lit8 p2, p2, 0x2

    goto :goto_13

    :cond_12
    move p2, v1

    .line 2087
    :goto_13
    iget v2, v0, Landroid/widget/Toolbar$LayoutParams;->gravity:I

    invoke-direct {p0, v2}, Landroid/widget/Toolbar;->getChildVerticalGravity(I)I

    move-result v2

    sparse-switch v2, :sswitch_data_5c

    .line 2097
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getPaddingTop()I

    move-result p2

    .line 2098
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getPaddingBottom()I

    move-result v2

    .line 2099
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getHeight()I

    move-result v3

    .line 2100
    sub-int v4, v3, p2

    sub-int/2addr v4, v2

    .line 2101
    sub-int/2addr v4, p1

    div-int/lit8 v4, v4, 0x2

    .line 2102
    iget v5, v0, Landroid/widget/Toolbar$LayoutParams;->topMargin:I

    if-ge v4, v5, :cond_4a

    .line 2103
    iget v4, v0, Landroid/widget/Toolbar$LayoutParams;->topMargin:I

    goto :goto_5a

    .line 2092
    :sswitch_35
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v1, p1

    iget p1, v0, Landroid/widget/Toolbar$LayoutParams;->bottomMargin:I

    sub-int/2addr v1, p1

    sub-int/2addr v1, p2

    return v1

    .line 2089
    :sswitch_44
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getPaddingTop()I

    move-result p1

    sub-int/2addr p1, p2

    return p1

    .line 2105
    :cond_4a
    sub-int/2addr v3, v2

    sub-int/2addr v3, p1

    sub-int/2addr v3, v4

    sub-int/2addr v3, p2

    .line 2107
    iget p1, v0, Landroid/widget/Toolbar$LayoutParams;->bottomMargin:I

    if-ge v3, p1, :cond_5a

    .line 2108
    iget p1, v0, Landroid/widget/Toolbar$LayoutParams;->bottomMargin:I

    sub-int/2addr p1, v3

    sub-int/2addr v4, p1

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 2111
    :cond_5a
    :goto_5a
    add-int/2addr p2, v4

    return p2

    :sswitch_data_5c
    .sparse-switch
        0x30 -> :sswitch_44
        0x50 -> :sswitch_35
    .end sparse-switch
.end method

.method private greylist-max-o getChildVerticalGravity(I)I
    .registers 2

    .line 2116
    and-int/lit8 p1, p1, 0x70

    .line 2117
    sparse-switch p1, :sswitch_data_c

    .line 2123
    iget p1, p0, Landroid/widget/Toolbar;->mGravity:I

    and-int/lit8 p1, p1, 0x70

    return p1

    .line 2121
    :sswitch_a
    return p1

    nop

    :sswitch_data_c
    .sparse-switch
        0x10 -> :sswitch_a
        0x30 -> :sswitch_a
        0x50 -> :sswitch_a
    .end sparse-switch
.end method

.method private greylist-max-o getHorizontalMargins(Landroid/view/View;)I
    .registers 3

    .line 2181
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2182
    invoke-virtual {p1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method private greylist-max-o getMenuInflater()Landroid/view/MenuInflater;
    .registers 3

    .line 1187
    new-instance v0, Landroid/view/MenuInflater;

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private greylist-max-o getVerticalMargins(Landroid/view/View;)I
    .registers 3

    .line 2186
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2187
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v0, p1

    return v0
.end method

.method private greylist-max-o getViewListMeasuredWidth(Ljava/util/List;[I)I
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;[I)I"
        }
    .end annotation

    .line 2039
    const/4 v0, 0x0

    aget v1, p2, v0

    .line 2040
    const/4 v2, 0x1

    aget p2, p2, v2

    .line 2041
    nop

    .line 2042
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 2043
    move v3, v0

    move v4, v3

    :goto_d
    if-ge v3, v2, :cond_3f

    .line 2044
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 2045
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/Toolbar$LayoutParams;

    .line 2046
    iget v7, v6, Landroid/widget/Toolbar$LayoutParams;->leftMargin:I

    sub-int/2addr v7, v1

    .line 2047
    iget v1, v6, Landroid/widget/Toolbar$LayoutParams;->rightMargin:I

    sub-int/2addr v1, p2

    .line 2048
    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 2049
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 2050
    neg-int v7, v7

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 2051
    neg-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2052
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr p2, v5

    add-int/2addr p2, v6

    add-int/2addr v4, p2

    .line 2043
    add-int/lit8 v3, v3, 0x1

    move p2, v1

    move v1, v7

    goto :goto_d

    .line 2054
    :cond_3f
    return v4
.end method

.method private greylist-max-o isChildOrHidden(Landroid/view/View;)Z
    .registers 3

    .line 2253
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_11

    iget-object v0, p0, Landroid/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    goto :goto_11

    :cond_f
    const/4 p1, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 p1, 0x1

    :goto_12
    return p1
.end method

.method private static greylist-max-o isCustomView(Landroid/view/View;)Z
    .registers 1

    .line 2219
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/Toolbar$LayoutParams;

    iget p0, p0, Landroid/widget/Toolbar$LayoutParams;->mViewType:I

    if-nez p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method private greylist-max-o layoutChildLeft(Landroid/view/View;I[II)I
    .registers 9

    .line 2059
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/Toolbar$LayoutParams;

    .line 2060
    iget v1, v0, Landroid/widget/Toolbar$LayoutParams;->leftMargin:I

    const/4 v2, 0x0

    aget v3, p3, v2

    sub-int/2addr v1, v3

    .line 2061
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr p2, v3

    .line 2062
    neg-int v1, v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, p3, v2

    .line 2063
    invoke-direct {p0, p1, p4}, Landroid/widget/Toolbar;->getChildTop(Landroid/view/View;I)I

    move-result p3

    .line 2064
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    .line 2065
    add-int v1, p2, p4

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, p3

    invoke-virtual {p1, p2, p3, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 2066
    iget p1, v0, Landroid/widget/Toolbar$LayoutParams;->rightMargin:I

    add-int/2addr p4, p1

    add-int/2addr p2, p4

    .line 2067
    return p2
.end method

.method private greylist-max-o layoutChildRight(Landroid/view/View;I[II)I
    .registers 10

    .line 2072
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/Toolbar$LayoutParams;

    .line 2073
    iget v1, v0, Landroid/widget/Toolbar$LayoutParams;->rightMargin:I

    const/4 v2, 0x1

    aget v3, p3, v2

    sub-int/2addr v1, v3

    .line 2074
    const/4 v3, 0x0

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    sub-int/2addr p2, v4

    .line 2075
    neg-int v1, v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, p3, v2

    .line 2076
    invoke-direct {p0, p1, p4}, Landroid/widget/Toolbar;->getChildTop(Landroid/view/View;I)I

    move-result p3

    .line 2077
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    .line 2078
    sub-int v1, p2, p4

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, p3

    invoke-virtual {p1, v1, p3, p2, v2}, Landroid/view/View;->layout(IIII)V

    .line 2079
    iget p1, v0, Landroid/widget/Toolbar$LayoutParams;->leftMargin:I

    add-int/2addr p4, p1

    sub-int/2addr p2, p4

    .line 2080
    return p2
.end method

.method private greylist-max-o measureChildCollapseMargins(Landroid/view/View;IIII[I)I
    .registers 14

    .line 1654
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1656
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const/4 v2, 0x0

    aget v3, p6, v2

    sub-int/2addr v1, v3

    .line 1657
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    const/4 v4, 0x1

    aget v5, p6, v4

    sub-int/2addr v3, v5

    .line 1658
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1659
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1660
    add-int/2addr v5, v6

    .line 1661
    neg-int v1, v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, p6, v2

    .line 1662
    neg-int v1, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, p6, v4

    .line 1664
    iget p6, p0, Landroid/widget/Toolbar;->mPaddingLeft:I

    iget v1, p0, Landroid/widget/Toolbar;->mPaddingRight:I

    add-int/2addr p6, v1

    add-int/2addr p6, v5

    add-int/2addr p6, p3

    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, p6, p3}, Landroid/widget/Toolbar;->getChildMeasureSpec(III)I

    move-result p2

    .line 1666
    iget p3, p0, Landroid/widget/Toolbar;->mPaddingTop:I

    iget p6, p0, Landroid/widget/Toolbar;->mPaddingBottom:I

    add-int/2addr p3, p6

    iget p6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p3, p6

    iget p6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p3, p6

    add-int/2addr p3, p5

    iget p5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p4, p3, p5}, Landroid/widget/Toolbar;->getChildMeasureSpec(III)I

    move-result p3

    .line 1670
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    .line 1671
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    add-int/2addr p1, v5

    return p1
.end method

.method private greylist-max-o measureChildConstrained(Landroid/view/View;IIIII)V
    .registers 10

    .line 1629
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1631
    iget v1, p0, Landroid/widget/Toolbar;->mPaddingLeft:I

    iget v2, p0, Landroid/widget/Toolbar;->mPaddingRight:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    add-int/2addr v1, p3

    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, v1, p3}, Landroid/widget/Toolbar;->getChildMeasureSpec(III)I

    move-result p2

    .line 1634
    iget p3, p0, Landroid/widget/Toolbar;->mPaddingTop:I

    iget v1, p0, Landroid/widget/Toolbar;->mPaddingBottom:I

    add-int/2addr p3, v1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p3, v1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p3, v1

    add-int/2addr p3, p5

    iget p5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p4, p3, p5}, Landroid/widget/Toolbar;->getChildMeasureSpec(III)I

    move-result p3

    .line 1638
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p4

    .line 1639
    const/high16 p5, 0x40000000    # 2.0f

    if-eq p4, p5, :cond_44

    if-ltz p6, :cond_44

    .line 1640
    if-eqz p4, :cond_3f

    .line 1641
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p3

    invoke-static {p3, p6}, Ljava/lang/Math;->min(II)I

    move-result p6

    goto :goto_40

    .line 1642
    :cond_3f
    nop

    .line 1643
    :goto_40
    invoke-static {p6, p5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    .line 1645
    :cond_44
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    .line 1646
    return-void
.end method

.method private greylist-max-o postShowOverflowMenu()V
    .registers 2

    .line 1573
    iget-object v0, p0, Landroid/widget/Toolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/Toolbar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1574
    iget-object v0, p0, Landroid/widget/Toolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/Toolbar;->post(Ljava/lang/Runnable;)Z

    .line 1575
    return-void
.end method

.method private greylist-max-o shouldCollapse()Z
    .registers 6

    .line 1678
    iget-boolean v0, p0, Landroid/widget/Toolbar;->mCollapsible:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 1680
    :cond_6
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getChildCount()I

    move-result v0

    .line 1681
    move v2, v1

    :goto_b
    if-ge v2, v0, :cond_27

    .line 1682
    invoke-virtual {p0, v2}, Landroid/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1683
    invoke-direct {p0, v3}, Landroid/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    if-lez v4, :cond_24

    .line 1684
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    if-lez v3, :cond_24

    .line 1685
    return v1

    .line 1681
    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 1688
    :cond_27
    const/4 v0, 0x1

    return v0
.end method

.method private greylist-max-o shouldLayout(Landroid/view/View;)Z
    .registers 3

    .line 2177
    if-eqz p1, :cond_12

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_12

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    return p1
.end method


# virtual methods
.method greylist-max-o addChildrenForExpandedActionView()V
    .registers 3

    .line 2244
    iget-object v0, p0, Landroid/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2246
    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 2247
    iget-object v1, p0, Landroid/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 2246
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 2249
    :cond_18
    iget-object v0, p0, Landroid/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2250
    return-void
.end method

.method public greylist-max-o canShowOverflowMenu()Z
    .registers 2

    .line 529
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->isOverflowReserved()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method protected whitelist checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3

    .line 2215
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_c

    instance-of p1, p1, Landroid/widget/Toolbar$LayoutParams;

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method public whitelist collapseActionView()V
    .registers 2

    .line 736
    iget-object v0, p0, Landroid/widget/Toolbar;->mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    .line 737
    :cond_6
    iget-object v0, p0, Landroid/widget/Toolbar;->mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    iget-object v0, v0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    .line 738
    :goto_a
    if-eqz v0, :cond_f

    .line 739
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuItemImpl;->collapseActionView()Z

    .line 741
    :cond_f
    return-void
.end method

.method public whitelist dismissPopupMenus()V
    .registers 2

    .line 605
    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    if-eqz v0, :cond_9

    .line 606
    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->dismissPopupMenus()V

    .line 608
    :cond_9
    return-void
.end method

.method protected bridge synthetic whitelist generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 135
    invoke-virtual {p0}, Landroid/widget/Toolbar;->generateDefaultLayoutParams()Landroid/widget/Toolbar$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected whitelist generateDefaultLayoutParams()Landroid/widget/Toolbar$LayoutParams;
    .registers 3

    .line 2210
    new-instance v0, Landroid/widget/Toolbar$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/Toolbar$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic whitelist generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 135
    invoke-virtual {p0, p1}, Landroid/widget/Toolbar;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/Toolbar$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic whitelist generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 135
    invoke-virtual {p0, p1}, Landroid/widget/Toolbar;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/Toolbar$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public whitelist generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/Toolbar$LayoutParams;
    .registers 4

    .line 2192
    new-instance v0, Landroid/widget/Toolbar$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/Toolbar$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected whitelist generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/Toolbar$LayoutParams;
    .registers 3

    .line 2197
    instance-of v0, p1, Landroid/widget/Toolbar$LayoutParams;

    if-eqz v0, :cond_c

    .line 2198
    new-instance v0, Landroid/widget/Toolbar$LayoutParams;

    check-cast p1, Landroid/widget/Toolbar$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/Toolbar$LayoutParams;-><init>(Landroid/widget/Toolbar$LayoutParams;)V

    return-object v0

    .line 2199
    :cond_c
    instance-of v0, p1, Landroid/app/ActionBar$LayoutParams;

    if-eqz v0, :cond_18

    .line 2200
    new-instance v0, Landroid/widget/Toolbar$LayoutParams;

    check-cast p1, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/Toolbar$LayoutParams;-><init>(Landroid/app/ActionBar$LayoutParams;)V

    return-object v0

    .line 2201
    :cond_18
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_24

    .line 2202
    new-instance v0, Landroid/widget/Toolbar$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/Toolbar$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 2204
    :cond_24
    new-instance v0, Landroid/widget/Toolbar$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/Toolbar$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public whitelist getCollapseContentDescription()Ljava/lang/CharSequence;
    .registers 2

    .line 1044
    iget-object v0, p0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public whitelist getCollapseIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1090
    iget-object v0, p0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public whitelist getContentInsetEnd()I
    .registers 2

    .line 1276
    iget-object v0, p0, Landroid/widget/Toolbar;->mContentInsets:Landroid/widget/RtlSpacingHelper;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/widget/Toolbar;->mContentInsets:Landroid/widget/RtlSpacingHelper;

    invoke-virtual {v0}, Landroid/widget/RtlSpacingHelper;->getEnd()I

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public whitelist getContentInsetEndWithActions()I
    .registers 3

    .line 1402
    iget v0, p0, Landroid/widget/Toolbar;->mContentInsetEndWithActions:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_9

    .line 1403
    iget v0, p0, Landroid/widget/Toolbar;->mContentInsetEndWithActions:I

    goto :goto_d

    .line 1404
    :cond_9
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContentInsetEnd()I

    move-result v0

    .line 1402
    :goto_d
    return v0
.end method

.method public whitelist getContentInsetLeft()I
    .registers 2

    .line 1320
    iget-object v0, p0, Landroid/widget/Toolbar;->mContentInsets:Landroid/widget/RtlSpacingHelper;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/widget/Toolbar;->mContentInsets:Landroid/widget/RtlSpacingHelper;

    invoke-virtual {v0}, Landroid/widget/RtlSpacingHelper;->getLeft()I

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public whitelist getContentInsetRight()I
    .registers 2

    .line 1341
    iget-object v0, p0, Landroid/widget/Toolbar;->mContentInsets:Landroid/widget/RtlSpacingHelper;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/widget/Toolbar;->mContentInsets:Landroid/widget/RtlSpacingHelper;

    invoke-virtual {v0}, Landroid/widget/RtlSpacingHelper;->getRight()I

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public whitelist getContentInsetStart()I
    .registers 2

    .line 1255
    iget-object v0, p0, Landroid/widget/Toolbar;->mContentInsets:Landroid/widget/RtlSpacingHelper;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/widget/Toolbar;->mContentInsets:Landroid/widget/RtlSpacingHelper;

    invoke-virtual {v0}, Landroid/widget/RtlSpacingHelper;->getStart()I

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public whitelist getContentInsetStartWithNavigation()I
    .registers 3

    .line 1358
    iget v0, p0, Landroid/widget/Toolbar;->mContentInsetStartWithNavigation:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_9

    .line 1359
    iget v0, p0, Landroid/widget/Toolbar;->mContentInsetStartWithNavigation:I

    goto :goto_d

    .line 1360
    :cond_9
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContentInsetStart()I

    move-result v0

    .line 1358
    :goto_d
    return v0
.end method

.method public whitelist getCurrentContentInsetEnd()I
    .registers 4

    .line 1454
    nop

    .line 1455
    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 1456
    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->peekMenu()Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v0

    .line 1457
    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->hasVisibleItems()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_19

    :cond_16
    move v0, v1

    goto :goto_19

    .line 1455
    :cond_18
    move v0, v1

    .line 1459
    :goto_19
    if-eqz v0, :cond_2a

    .line 1460
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContentInsetEnd()I

    move-result v0

    iget v2, p0, Landroid/widget/Toolbar;->mContentInsetEndWithActions:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_2e

    .line 1461
    :cond_2a
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContentInsetEnd()I

    move-result v0

    .line 1459
    :goto_2e
    return v0
.end method

.method public whitelist getCurrentContentInsetLeft()I
    .registers 2

    .line 1474
    invoke-virtual {p0}, Landroid/widget/Toolbar;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1475
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getCurrentContentInsetEnd()I

    move-result v0

    goto :goto_f

    .line 1476
    :cond_b
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getCurrentContentInsetStart()I

    move-result v0

    .line 1474
    :goto_f
    return v0
.end method

.method public whitelist getCurrentContentInsetRight()I
    .registers 2

    .line 1489
    invoke-virtual {p0}, Landroid/widget/Toolbar;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1490
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getCurrentContentInsetStart()I

    move-result v0

    goto :goto_f

    .line 1491
    :cond_b
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getCurrentContentInsetEnd()I

    move-result v0

    .line 1489
    :goto_f
    return v0
.end method

.method public whitelist getCurrentContentInsetStart()I
    .registers 4

    .line 1440
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 1441
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContentInsetStart()I

    move-result v0

    iget v1, p0, Landroid/widget/Toolbar;->mContentInsetStartWithNavigation:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_1a

    .line 1442
    :cond_16
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContentInsetStart()I

    move-result v0

    .line 1440
    :goto_1a
    return v0
.end method

.method public whitelist getLogo()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 663
    iget-object v0, p0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public whitelist getLogoDescription()Ljava/lang/CharSequence;
    .registers 2

    .line 702
    iget-object v0, p0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public whitelist getMenu()Landroid/view/Menu;
    .registers 2

    .line 1135
    invoke-direct {p0}, Landroid/widget/Toolbar;->ensureMenu()V

    .line 1136
    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getNavigationContentDescription()Ljava/lang/CharSequence;
    .registers 2

    .line 913
    iget-object v0, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public whitelist getNavigationIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1006
    iget-object v0, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public blacklist getNavigationView()Landroid/view/View;
    .registers 2

    .line 1029
    iget-object v0, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    return-object v0
.end method

.method greylist-max-o getOuterActionMenuPresenter()Landroid/widget/ActionMenuPresenter;
    .registers 2

    .line 2288
    iget-object v0, p0, Landroid/widget/Toolbar;->mOuterActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    return-object v0
.end method

.method public whitelist getOverflowIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1156
    invoke-direct {p0}, Landroid/widget/Toolbar;->ensureMenu()V

    .line 1157
    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->getOverflowIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o getPopupContext()Landroid/content/Context;
    .registers 2

    .line 2292
    iget-object v0, p0, Landroid/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    return-object v0
.end method

.method public whitelist getPopupTheme()I
    .registers 2

    .line 391
    iget v0, p0, Landroid/widget/Toolbar;->mPopupTheme:I

    return v0
.end method

.method public whitelist getSubtitle()Ljava/lang/CharSequence;
    .registers 2

    .line 807
    iget-object v0, p0, Landroid/widget/Toolbar;->mSubtitleText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getTitle()Ljava/lang/CharSequence;
    .registers 2

    .line 750
    iget-object v0, p0, Landroid/widget/Toolbar;->mTitleText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getTitleMarginBottom()I
    .registers 2

    .line 492
    iget v0, p0, Landroid/widget/Toolbar;->mTitleMarginBottom:I

    return v0
.end method

.method public whitelist getTitleMarginEnd()I
    .registers 2

    .line 469
    iget v0, p0, Landroid/widget/Toolbar;->mTitleMarginEnd:I

    return v0
.end method

.method public whitelist getTitleMarginStart()I
    .registers 2

    .line 423
    iget v0, p0, Landroid/widget/Toolbar;->mTitleMarginStart:I

    return v0
.end method

.method public whitelist getTitleMarginTop()I
    .registers 2

    .line 446
    iget v0, p0, Landroid/widget/Toolbar;->mTitleMarginTop:I

    return v0
.end method

.method public greylist-max-o getWrapper()Lcom/android/internal/widget/DecorToolbar;
    .registers 3

    .line 2224
    iget-object v0, p0, Landroid/widget/Toolbar;->mWrapper:Lcom/android/internal/widget/ToolbarWidgetWrapper;

    if-nez v0, :cond_c

    .line 2225
    new-instance v0, Lcom/android/internal/widget/ToolbarWidgetWrapper;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/widget/ToolbarWidgetWrapper;-><init>(Landroid/widget/Toolbar;Z)V

    iput-object v0, p0, Landroid/widget/Toolbar;->mWrapper:Lcom/android/internal/widget/ToolbarWidgetWrapper;

    .line 2227
    :cond_c
    iget-object v0, p0, Landroid/widget/Toolbar;->mWrapper:Lcom/android/internal/widget/ToolbarWidgetWrapper;

    return-object v0
.end method

.method public whitelist hasExpandedActionView()Z
    .registers 2

    .line 722
    iget-object v0, p0, Landroid/widget/Toolbar;->mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/widget/Toolbar;->mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    iget-object v0, v0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public whitelist hideOverflowMenu()Z
    .registers 2

    .line 562
    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->hideOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public whitelist inflateMenu(I)V
    .registers 4

    .line 1199
    invoke-direct {p0}, Landroid/widget/Toolbar;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1200
    return-void
.end method

.method public greylist-max-o isOverflowMenuShowPending()Z
    .registers 2

    .line 544
    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->isOverflowMenuShowPending()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public whitelist isOverflowMenuShowing()Z
    .registers 2

    .line 539
    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public greylist-max-o isTitleTruncated()Z
    .registers 6

    .line 612
    iget-object v0, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 613
    return v1

    .line 616
    :cond_6
    iget-object v0, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 617
    if-nez v0, :cond_f

    .line 618
    return v1

    .line 621
    :cond_f
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    .line 622
    move v3, v1

    :goto_14
    if-ge v3, v2, :cond_21

    .line 623
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v4

    if-lez v4, :cond_1e

    .line 624
    const/4 v0, 0x1

    return v0

    .line 622
    :cond_1e
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 627
    :cond_21
    return v1
.end method

.method protected whitelist onAttachedToWindow()V
    .registers 3

    .line 348
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 352
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 353
    :goto_7
    if-eqz v0, :cond_28

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_28

    .line 354
    check-cast v0, Landroid/view/ViewGroup;

    .line 355
    invoke-virtual {v0}, Landroid/view/ViewGroup;->isKeyboardNavigationCluster()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 356
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/Toolbar;->setKeyboardNavigationCluster(Z)V

    .line 357
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTouchscreenBlocksFocus()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 358
    invoke-virtual {p0, v1}, Landroid/widget/Toolbar;->setTouchscreenBlocksFocus(Z)V

    goto :goto_28

    .line 362
    :cond_23
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 363
    goto :goto_7

    .line 364
    :cond_28
    :goto_28
    return-void
.end method

.method protected whitelist onDetachedFromWindow()V
    .registers 2

    .line 1579
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 1580
    iget-object v0, p0, Landroid/widget/Toolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/Toolbar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1581
    return-void
.end method

.method protected whitelist onLayout(ZIIII)V
    .registers 24

    .line 1821
    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroid/widget/Toolbar;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_c

    move v1, v3

    goto :goto_d

    :cond_c
    move v1, v2

    .line 1822
    :goto_d
    invoke-virtual {v0}, Landroid/widget/Toolbar;->getWidth()I

    move-result v4

    .line 1823
    invoke-virtual {v0}, Landroid/widget/Toolbar;->getHeight()I

    move-result v5

    .line 1824
    invoke-virtual {v0}, Landroid/widget/Toolbar;->getPaddingLeft()I

    move-result v6

    .line 1825
    invoke-virtual {v0}, Landroid/widget/Toolbar;->getPaddingRight()I

    move-result v7

    .line 1826
    invoke-virtual {v0}, Landroid/widget/Toolbar;->getPaddingTop()I

    move-result v8

    .line 1827
    invoke-virtual {v0}, Landroid/widget/Toolbar;->getPaddingBottom()I

    move-result v9

    .line 1828
    nop

    .line 1829
    sub-int v10, v4, v7

    .line 1831
    iget-object v11, v0, Landroid/widget/Toolbar;->mTempMargins:[I

    .line 1832
    aput v2, v11, v3

    aput v2, v11, v2

    .line 1835
    invoke-virtual {v0}, Landroid/widget/Toolbar;->getMinimumHeight()I

    move-result v12

    .line 1836
    if-ltz v12, :cond_3b

    sub-int v13, p5, p3

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    goto :goto_3c

    :cond_3b
    move v12, v2

    .line 1838
    :goto_3c
    iget-object v13, v0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {v0, v13}, Landroid/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_57

    .line 1839
    if-eqz v1, :cond_4f

    .line 1840
    iget-object v13, v0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {v0, v13, v10, v11, v12}, Landroid/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v13

    move v14, v13

    move v13, v6

    goto :goto_59

    .line 1843
    :cond_4f
    iget-object v13, v0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {v0, v13, v6, v11, v12}, Landroid/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v13

    move v14, v10

    goto :goto_59

    .line 1838
    :cond_57
    move v13, v6

    move v14, v10

    .line 1848
    :goto_59
    iget-object v15, v0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-direct {v0, v15}, Landroid/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v15

    if-eqz v15, :cond_70

    .line 1849
    if-eqz v1, :cond_6a

    .line 1850
    iget-object v15, v0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-direct {v0, v15, v14, v11, v12}, Landroid/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v14

    goto :goto_70

    .line 1853
    :cond_6a
    iget-object v15, v0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-direct {v0, v15, v13, v11, v12}, Landroid/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v13

    .line 1858
    :cond_70
    :goto_70
    iget-object v15, v0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-direct {v0, v15}, Landroid/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v15

    if-eqz v15, :cond_87

    .line 1859
    if-eqz v1, :cond_81

    .line 1860
    iget-object v15, v0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-direct {v0, v15, v13, v11, v12}, Landroid/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v13

    goto :goto_87

    .line 1863
    :cond_81
    iget-object v15, v0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-direct {v0, v15, v14, v11, v12}, Landroid/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v14

    .line 1868
    :cond_87
    :goto_87
    invoke-virtual {v0}, Landroid/widget/Toolbar;->getCurrentContentInsetLeft()I

    move-result v15

    .line 1869
    invoke-virtual {v0}, Landroid/widget/Toolbar;->getCurrentContentInsetRight()I

    move-result v16

    .line 1870
    move/from16 p1, v3

    sub-int v3, v15, v13

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v11, v2

    .line 1871
    sub-int v3, v10, v14

    sub-int v3, v16, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v11, p1

    .line 1872
    invoke-static {v13, v15}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1873
    sub-int v10, v10, v16

    invoke-static {v14, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 1875
    iget-object v13, v0, Landroid/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-direct {v0, v13}, Landroid/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_c4

    .line 1876
    if-eqz v1, :cond_be

    .line 1877
    iget-object v13, v0, Landroid/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-direct {v0, v13, v10, v11, v12}, Landroid/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v10

    goto :goto_c4

    .line 1880
    :cond_be
    iget-object v13, v0, Landroid/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-direct {v0, v13, v3, v11, v12}, Landroid/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v3

    .line 1885
    :cond_c4
    :goto_c4
    iget-object v13, v0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-direct {v0, v13}, Landroid/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_db

    .line 1886
    if-eqz v1, :cond_d5

    .line 1887
    iget-object v13, v0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-direct {v0, v13, v10, v11, v12}, Landroid/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v10

    goto :goto_db

    .line 1890
    :cond_d5
    iget-object v13, v0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-direct {v0, v13, v3, v11, v12}, Landroid/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v3

    .line 1895
    :cond_db
    :goto_db
    iget-object v13, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {v0, v13}, Landroid/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v13

    .line 1896
    iget-object v14, v0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-direct {v0, v14}, Landroid/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v14

    .line 1897
    nop

    .line 1898
    if-eqz v13, :cond_105

    .line 1899
    iget-object v15, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/Toolbar$LayoutParams;

    .line 1900
    move/from16 p2, v2

    iget v2, v15, Landroid/widget/Toolbar$LayoutParams;->topMargin:I

    move/from16 p4, v1

    iget-object v1, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v2, v1

    iget v1, v15, Landroid/widget/Toolbar$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v1

    add-int/lit8 v1, v2, 0x0

    goto :goto_10b

    .line 1898
    :cond_105
    move/from16 p4, v1

    move/from16 p2, v2

    move/from16 v1, p2

    .line 1902
    :goto_10b
    if-eqz v14, :cond_126

    .line 1903
    iget-object v2, v0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/Toolbar$LayoutParams;

    .line 1904
    iget v15, v2, Landroid/widget/Toolbar$LayoutParams;->topMargin:I

    move/from16 p3, v1

    iget-object v1, v0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v15, v1

    iget v1, v2, Landroid/widget/Toolbar$LayoutParams;->bottomMargin:I

    add-int/2addr v15, v1

    add-int v1, p3, v15

    goto :goto_128

    .line 1902
    :cond_126
    move/from16 p3, v1

    .line 1907
    :goto_128
    if-nez v13, :cond_131

    if-eqz v14, :cond_12d

    goto :goto_131

    :cond_12d
    move/from16 v1, p2

    goto/16 :goto_2a2

    .line 1909
    :cond_131
    :goto_131
    if-eqz v13, :cond_136

    iget-object v2, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    goto :goto_138

    :cond_136
    iget-object v2, v0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    .line 1910
    :goto_138
    if-eqz v14, :cond_13d

    iget-object v15, v0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    goto :goto_13f

    :cond_13d
    iget-object v15, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    .line 1911
    :goto_13f
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/Toolbar$LayoutParams;

    .line 1912
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/Toolbar$LayoutParams;

    .line 1913
    if-eqz v13, :cond_158

    move/from16 p3, v1

    iget-object v1, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    if-gtz v1, :cond_164

    goto :goto_15a

    :cond_158
    move/from16 p3, v1

    :goto_15a
    if-eqz v14, :cond_167

    iget-object v1, v0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    .line 1914
    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    if-lez v1, :cond_167

    :cond_164
    move/from16 v1, p1

    goto :goto_169

    :cond_167
    move/from16 v1, p2

    .line 1916
    :goto_169
    move/from16 p5, v1

    iget v1, v0, Landroid/widget/Toolbar;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    sparse-switch v1, :sswitch_data_31e

    .line 1922
    sub-int v1, v5, v8

    sub-int/2addr v1, v9

    .line 1923
    sub-int v1, v1, p3

    div-int/lit8 v1, v1, 0x2

    .line 1924
    move/from16 v16, v3

    iget v3, v2, Landroid/widget/Toolbar$LayoutParams;->topMargin:I

    move/from16 v17, v3

    iget v3, v0, Landroid/widget/Toolbar;->mTitleMarginTop:I

    add-int v3, v17, v3

    if-ge v1, v3, :cond_1a5

    .line 1925
    iget v1, v2, Landroid/widget/Toolbar$LayoutParams;->topMargin:I

    iget v2, v0, Landroid/widget/Toolbar;->mTitleMarginTop:I

    add-int/2addr v1, v2

    goto :goto_1be

    .line 1937
    :sswitch_18b
    sub-int/2addr v5, v9

    iget v1, v15, Landroid/widget/Toolbar$LayoutParams;->bottomMargin:I

    sub-int/2addr v5, v1

    iget v1, v0, Landroid/widget/Toolbar;->mTitleMarginBottom:I

    sub-int/2addr v5, v1

    sub-int v5, v5, p3

    move/from16 v16, v3

    goto :goto_1c1

    .line 1918
    :sswitch_197
    invoke-virtual {v0}, Landroid/widget/Toolbar;->getPaddingTop()I

    move-result v1

    iget v2, v2, Landroid/widget/Toolbar$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/Toolbar;->mTitleMarginTop:I

    add-int v5, v1, v2

    .line 1919
    move/from16 v16, v3

    goto :goto_1c1

    .line 1927
    :cond_1a5
    sub-int/2addr v5, v9

    sub-int v5, v5, p3

    sub-int/2addr v5, v1

    sub-int/2addr v5, v8

    .line 1929
    iget v2, v2, Landroid/widget/Toolbar$LayoutParams;->bottomMargin:I

    iget v3, v0, Landroid/widget/Toolbar;->mTitleMarginBottom:I

    add-int/2addr v2, v3

    if-ge v5, v2, :cond_1be

    .line 1930
    iget v2, v15, Landroid/widget/Toolbar$LayoutParams;->bottomMargin:I

    iget v3, v0, Landroid/widget/Toolbar;->mTitleMarginBottom:I

    add-int/2addr v2, v3

    sub-int/2addr v2, v5

    sub-int/2addr v1, v2

    move/from16 v2, p2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1934
    :cond_1be
    :goto_1be
    add-int v5, v8, v1

    .line 1935
    nop

    .line 1941
    :goto_1c1
    if-eqz p4, :cond_236

    .line 1942
    if-eqz p5, :cond_1c8

    iget v1, v0, Landroid/widget/Toolbar;->mTitleMarginStart:I

    goto :goto_1c9

    :cond_1c8
    const/4 v1, 0x0

    :goto_1c9
    aget v2, v11, p1

    sub-int/2addr v1, v2

    .line 1943
    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    sub-int/2addr v10, v3

    .line 1944
    neg-int v1, v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, v11, p1

    .line 1945
    nop

    .line 1946
    nop

    .line 1948
    if-eqz v13, :cond_201

    .line 1949
    iget-object v1, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/Toolbar$LayoutParams;

    .line 1950
    iget-object v2, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    sub-int v2, v10, v2

    .line 1951
    iget-object v3, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v5

    .line 1952
    iget-object v8, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v2, v5, v10, v3}, Landroid/widget/TextView;->layout(IIII)V

    .line 1953
    iget v5, v0, Landroid/widget/Toolbar;->mTitleMarginEnd:I

    sub-int/2addr v2, v5

    .line 1954
    iget v1, v1, Landroid/widget/Toolbar$LayoutParams;->bottomMargin:I

    add-int v5, v3, v1

    goto :goto_202

    .line 1948
    :cond_201
    move v2, v10

    .line 1956
    :goto_202
    if-eqz v14, :cond_22a

    .line 1957
    iget-object v1, v0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/Toolbar$LayoutParams;

    .line 1958
    iget v3, v1, Landroid/widget/Toolbar$LayoutParams;->topMargin:I

    add-int/2addr v5, v3

    .line 1959
    iget-object v3, v0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    sub-int v3, v10, v3

    .line 1960
    iget-object v8, v0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v5

    .line 1961
    iget-object v9, v0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v9, v3, v5, v10, v8}, Landroid/widget/TextView;->layout(IIII)V

    .line 1962
    iget v3, v0, Landroid/widget/Toolbar;->mTitleMarginEnd:I

    sub-int v3, v10, v3

    .line 1963
    iget v1, v1, Landroid/widget/Toolbar$LayoutParams;->bottomMargin:I

    goto :goto_22b

    .line 1956
    :cond_22a
    move v3, v10

    .line 1965
    :goto_22b
    if-eqz p5, :cond_232

    .line 1966
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    move v10, v1

    .line 1968
    :cond_232
    move/from16 v3, v16

    const/4 v1, 0x0

    goto :goto_2a2

    .line 1969
    :cond_236
    if-eqz p5, :cond_23b

    iget v2, v0, Landroid/widget/Toolbar;->mTitleMarginStart:I

    goto :goto_23c

    :cond_23b
    const/4 v2, 0x0

    :goto_23c
    const/4 v1, 0x0

    aget v3, v11, v1

    sub-int/2addr v2, v3

    .line 1970
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int v3, v16, v3

    .line 1971
    neg-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput v2, v11, v1

    .line 1972
    nop

    .line 1973
    nop

    .line 1975
    if-eqz v13, :cond_274

    .line 1976
    iget-object v2, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/Toolbar$LayoutParams;

    .line 1977
    iget-object v8, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v3

    .line 1978
    iget-object v9, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v5

    .line 1979
    iget-object v13, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v13, v3, v5, v8, v9}, Landroid/widget/TextView;->layout(IIII)V

    .line 1980
    iget v5, v0, Landroid/widget/Toolbar;->mTitleMarginEnd:I

    add-int/2addr v8, v5

    .line 1981
    iget v2, v2, Landroid/widget/Toolbar$LayoutParams;->bottomMargin:I

    add-int v5, v9, v2

    goto :goto_275

    .line 1975
    :cond_274
    move v8, v3

    .line 1983
    :goto_275
    if-eqz v14, :cond_29b

    .line 1984
    iget-object v2, v0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/Toolbar$LayoutParams;

    .line 1985
    iget v9, v2, Landroid/widget/Toolbar$LayoutParams;->topMargin:I

    add-int/2addr v5, v9

    .line 1986
    iget-object v9, v0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v9, v3

    .line 1987
    iget-object v13, v0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v13

    add-int/2addr v13, v5

    .line 1988
    iget-object v14, v0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v14, v3, v5, v9, v13}, Landroid/widget/TextView;->layout(IIII)V

    .line 1989
    iget v5, v0, Landroid/widget/Toolbar;->mTitleMarginEnd:I

    add-int/2addr v9, v5

    .line 1990
    iget v2, v2, Landroid/widget/Toolbar$LayoutParams;->bottomMargin:I

    goto :goto_29c

    .line 1983
    :cond_29b
    move v9, v3

    .line 1992
    :goto_29c
    if-eqz p5, :cond_2a2

    .line 1993
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 2001
    :cond_2a2
    :goto_2a2
    iget-object v2, v0, Landroid/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    const/4 v5, 0x3

    invoke-direct {v0, v2, v5}, Landroid/widget/Toolbar;->addCustomViewsWithGravity(Ljava/util/List;I)V

    .line 2002
    iget-object v2, v0, Landroid/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2003
    move v5, v3

    move v3, v1

    :goto_2b0
    if-ge v3, v2, :cond_2c1

    .line 2004
    iget-object v8, v0, Landroid/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-direct {v0, v8, v5, v11, v12}, Landroid/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v5

    .line 2003
    add-int/lit8 v3, v3, 0x1

    goto :goto_2b0

    .line 2008
    :cond_2c1
    iget-object v2, v0, Landroid/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    const/4 v3, 0x5

    invoke-direct {v0, v2, v3}, Landroid/widget/Toolbar;->addCustomViewsWithGravity(Ljava/util/List;I)V

    .line 2009
    iget-object v2, v0, Landroid/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2010
    move v3, v1

    :goto_2ce
    if-ge v3, v2, :cond_2df

    .line 2011
    iget-object v8, v0, Landroid/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-direct {v0, v8, v10, v11, v12}, Landroid/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v10

    .line 2010
    add-int/lit8 v3, v3, 0x1

    goto :goto_2ce

    .line 2017
    :cond_2df
    iget-object v2, v0, Landroid/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move/from16 v3, p1

    invoke-direct {v0, v2, v3}, Landroid/widget/Toolbar;->addCustomViewsWithGravity(Ljava/util/List;I)V

    .line 2018
    iget-object v2, v0, Landroid/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-direct {v0, v2, v11}, Landroid/widget/Toolbar;->getViewListMeasuredWidth(Ljava/util/List;[I)I

    move-result v2

    .line 2019
    sub-int/2addr v4, v6

    sub-int/2addr v4, v7

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v6, v4

    .line 2020
    div-int/lit8 v3, v2, 0x2

    .line 2021
    sub-int/2addr v6, v3

    .line 2022
    add-int/2addr v2, v6

    .line 2023
    if-ge v6, v5, :cond_2f8

    .line 2024
    goto :goto_2ff

    .line 2025
    :cond_2f8
    if-le v2, v10, :cond_2fe

    .line 2026
    sub-int/2addr v2, v10

    sub-int v5, v6, v2

    goto :goto_2ff

    .line 2025
    :cond_2fe
    move v5, v6

    .line 2029
    :goto_2ff
    iget-object v2, v0, Landroid/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2030
    nop

    :goto_306
    if-ge v1, v2, :cond_317

    .line 2031
    iget-object v3, v0, Landroid/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-direct {v0, v3, v5, v11, v12}, Landroid/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v5

    .line 2030
    add-int/lit8 v1, v1, 0x1

    goto :goto_306

    .line 2035
    :cond_317
    iget-object v0, v0, Landroid/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2036
    return-void

    nop

    :sswitch_data_31e
    .sparse-switch
        0x30 -> :sswitch_197
        0x50 -> :sswitch_18b
    .end sparse-switch
.end method

.method protected whitelist onMeasure(II)V
    .registers 17

    .line 1693
    nop

    .line 1694
    nop

    .line 1695
    nop

    .line 1697
    iget-object v7, p0, Landroid/widget/Toolbar;->mTempMargins:[I

    .line 1700
    invoke-virtual {p0}, Landroid/widget/Toolbar;->isLayoutRtl()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v8, 0x0

    if-eqz v1, :cond_11

    .line 1701
    nop

    .line 1702
    move v9, v2

    move v10, v8

    goto :goto_14

    .line 1704
    :cond_11
    nop

    .line 1705
    move v10, v2

    move v9, v8

    .line 1710
    :goto_14
    nop

    .line 1711
    iget-object v1, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {p0, v1}, Landroid/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_55

    .line 1712
    iget-object v1, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    const/4 v5, 0x0

    iget v6, p0, Landroid/widget/Toolbar;->mMaxButtonHeight:I

    move-object v0, p0

    move v2, p1

    move/from16 v4, p2

    invoke-direct/range {v0 .. v6}, Landroid/widget/Toolbar;->measureChildConstrained(Landroid/view/View;IIIII)V

    .line 1714
    iget-object v1, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {p0, v2}, Landroid/widget/Toolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    .line 1715
    iget-object v2, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v2

    iget-object v4, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    .line 1716
    invoke-direct {p0, v4}, Landroid/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v4

    add-int/2addr v2, v4

    .line 1715
    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1717
    iget-object v4, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v4}, Landroid/widget/ImageButton;->getMeasuredState()I

    move-result v4

    invoke-static {v8, v4}, Landroid/widget/Toolbar;->combineMeasuredStates(II)I

    move-result v4

    move v11, v2

    move v12, v4

    goto :goto_58

    .line 1711
    :cond_55
    move v1, v8

    move v11, v1

    move v12, v11

    .line 1720
    :goto_58
    iget-object v2, p0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-direct {p0, v2}, Landroid/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_94

    .line 1721
    iget-object v1, p0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    const/4 v5, 0x0

    iget v6, p0, Landroid/widget/Toolbar;->mMaxButtonHeight:I

    move-object v0, p0

    move v2, p1

    move/from16 v4, p2

    invoke-direct/range {v0 .. v6}, Landroid/widget/Toolbar;->measureChildConstrained(Landroid/view/View;IIIII)V

    .line 1723
    iget-object v1, p0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    .line 1724
    invoke-direct {p0, v2}, Landroid/widget/Toolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    .line 1725
    iget-object v2, p0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v2

    iget-object v4, p0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    .line 1726
    invoke-direct {p0, v4}, Landroid/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v4

    add-int/2addr v2, v4

    .line 1725
    invoke-static {v11, v2}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1727
    iget-object v2, p0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getMeasuredState()I

    move-result v2

    invoke-static {v12, v2}, Landroid/widget/Toolbar;->combineMeasuredStates(II)I

    move-result v12

    .line 1730
    :cond_94
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getCurrentContentInsetStart()I

    move-result v2

    .line 1731
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 1732
    sub-int/2addr v2, v1

    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, v7, v9

    .line 1734
    nop

    .line 1735
    iget-object v1, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-direct {p0, v1}, Landroid/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_e2

    .line 1736
    iget-object v1, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    const/4 v5, 0x0

    iget v6, p0, Landroid/widget/Toolbar;->mMaxButtonHeight:I

    move-object v0, p0

    move v2, p1

    move/from16 v4, p2

    invoke-direct/range {v0 .. v6}, Landroid/widget/Toolbar;->measureChildConstrained(Landroid/view/View;IIIII)V

    .line 1738
    iget-object v1, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v1}, Landroid/widget/ActionMenuView;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-direct {p0, v2}, Landroid/widget/Toolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    .line 1739
    iget-object v2, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v2}, Landroid/widget/ActionMenuView;->getMeasuredHeight()I

    move-result v2

    iget-object v4, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    .line 1740
    invoke-direct {p0, v4}, Landroid/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v4

    add-int/2addr v2, v4

    .line 1739
    invoke-static {v11, v2}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1741
    iget-object v2, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v2}, Landroid/widget/ActionMenuView;->getMeasuredState()I

    move-result v2

    invoke-static {v12, v2}, Landroid/widget/Toolbar;->combineMeasuredStates(II)I

    move-result v12

    goto :goto_e3

    .line 1735
    :cond_e2
    move v1, v8

    .line 1744
    :goto_e3
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getCurrentContentInsetEnd()I

    move-result v2

    .line 1745
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 1746
    sub-int/2addr v2, v1

    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, v7, v10

    .line 1748
    iget-object v1, p0, Landroid/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-direct {p0, v1}, Landroid/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_124

    .line 1749
    iget-object v1, p0, Landroid/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move/from16 v4, p2

    move-object v6, v7

    invoke-direct/range {v0 .. v6}, Landroid/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v1

    add-int/2addr v3, v1

    .line 1751
    iget-object v1, p0, Landroid/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Landroid/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    .line 1752
    invoke-direct {p0, v2}, Landroid/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    .line 1751
    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1753
    iget-object v1, p0, Landroid/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredState()I

    move-result v1

    invoke-static {v12, v1}, Landroid/widget/Toolbar;->combineMeasuredStates(II)I

    move-result v12

    goto :goto_125

    .line 1748
    :cond_124
    move-object v6, v7

    .line 1756
    :goto_125
    iget-object v1, p0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-direct {p0, v1}, Landroid/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_154

    .line 1757
    iget-object v1, p0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move/from16 v4, p2

    invoke-direct/range {v0 .. v6}, Landroid/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v1

    add-int/2addr v3, v1

    .line 1759
    iget-object v1, p0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    .line 1760
    invoke-direct {p0, v2}, Landroid/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    .line 1759
    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1761
    iget-object v1, p0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredState()I

    move-result v1

    invoke-static {v12, v1}, Landroid/widget/Toolbar;->combineMeasuredStates(II)I

    move-result v12

    .line 1764
    :cond_154
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getChildCount()I

    move-result v7

    .line 1765
    move v9, v8

    :goto_159
    if-ge v9, v7, :cond_19a

    .line 1766
    invoke-virtual {p0, v9}, Landroid/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1767
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/Toolbar$LayoutParams;

    .line 1768
    iget v2, v2, Landroid/widget/Toolbar$LayoutParams;->mViewType:I

    if-nez v2, :cond_195

    invoke-direct {p0, v1}, Landroid/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_171

    .line 1770
    move v10, v3

    goto :goto_196

    .line 1773
    :cond_171
    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move/from16 v4, p2

    invoke-direct/range {v0 .. v6}, Landroid/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v5

    move v10, v3

    add-int v3, v10, v5

    .line 1775
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-direct {p0, v1}, Landroid/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v4

    add-int/2addr v2, v4

    invoke-static {v11, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1776
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredState()I

    move-result v1

    invoke-static {v12, v1}, Landroid/widget/Toolbar;->combineMeasuredStates(II)I

    move-result v1

    move v12, v1

    move v11, v2

    goto :goto_197

    .line 1768
    :cond_195
    move v10, v3

    .line 1765
    :goto_196
    move v3, v10

    :goto_197
    add-int/lit8 v9, v9, 0x1

    goto :goto_159

    .line 1779
    :cond_19a
    move v10, v3

    .line 1780
    nop

    .line 1781
    iget v1, p0, Landroid/widget/Toolbar;->mTitleMarginTop:I

    iget v2, p0, Landroid/widget/Toolbar;->mTitleMarginBottom:I

    add-int v5, v1, v2

    .line 1782
    iget v1, p0, Landroid/widget/Toolbar;->mTitleMarginStart:I

    iget v2, p0, Landroid/widget/Toolbar;->mTitleMarginEnd:I

    add-int v7, v1, v2

    .line 1783
    iget-object v1, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Landroid/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1e3

    .line 1784
    iget-object v1, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    add-int v3, v10, v7

    move-object v0, p0

    move v2, p1

    move/from16 v4, p2

    invoke-direct/range {v0 .. v6}, Landroid/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    .line 1787
    iget-object v1, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {p0, v2}, Landroid/widget/Toolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    .line 1788
    iget-object v2, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    iget-object v3, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {p0, v3}, Landroid/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1789
    iget-object v3, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredState()I

    move-result v3

    invoke-static {v12, v3}, Landroid/widget/Toolbar;->combineMeasuredStates(II)I

    move-result v12

    move v9, v1

    move v13, v12

    move v12, v2

    goto :goto_1e6

    .line 1783
    :cond_1e3
    move v9, v8

    move v13, v12

    move v12, v9

    .line 1791
    :goto_1e6
    iget-object v1, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Landroid/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_217

    .line 1792
    iget-object v1, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    add-int v3, v10, v7

    add-int/2addr v5, v12

    move-object v0, p0

    move v2, p1

    move/from16 v4, p2

    invoke-direct/range {v0 .. v6}, Landroid/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v1

    invoke-static {v9, v1}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 1796
    iget-object v1, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    .line 1797
    invoke-direct {p0, v2}, Landroid/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v12, v1

    .line 1798
    iget-object v1, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredState()I

    move-result v1

    invoke-static {v13, v1}, Landroid/widget/Toolbar;->combineMeasuredStates(II)I

    move-result v13

    .line 1801
    :cond_217
    add-int v3, v10, v9

    .line 1802
    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1806
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getPaddingRight()I

    move-result v4

    add-int/2addr v2, v4

    add-int/2addr v3, v2

    .line 1807
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getPaddingBottom()I

    move-result v4

    add-int/2addr v2, v4

    add-int/2addr v1, v2

    .line 1809
    nop

    .line 1810
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/high16 v3, -0x1000000

    and-int/2addr v3, v13

    .line 1809
    invoke-static {v2, p1, v3}, Landroid/widget/Toolbar;->resolveSizeAndState(III)I

    move-result v2

    .line 1812
    nop

    .line 1813
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getSuggestedMinimumHeight()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    shl-int/lit8 v3, v13, 0x10

    .line 1812
    move/from16 v4, p2

    invoke-static {v1, v4, v3}, Landroid/widget/Toolbar;->resolveSizeAndState(III)I

    move-result v1

    .line 1816
    invoke-direct {p0}, Landroid/widget/Toolbar;->shouldCollapse()Z

    move-result v3

    if-eqz v3, :cond_259

    goto :goto_25a

    :cond_259
    move v8, v1

    :goto_25a
    invoke-virtual {p0, v2, v8}, Landroid/widget/Toolbar;->setMeasuredDimension(II)V

    .line 1817
    return-void
.end method

.method protected whitelist onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4

    .line 1556
    check-cast p1, Landroid/widget/Toolbar$SavedState;

    .line 1557
    invoke-virtual {p1}, Landroid/widget/Toolbar$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1559
    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->peekMenu()Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v0

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 1560
    :goto_15
    iget v1, p1, Landroid/widget/Toolbar$SavedState;->expandedMenuItemId:I

    if-eqz v1, :cond_2a

    iget-object v1, p0, Landroid/widget/Toolbar;->mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    if-eqz v1, :cond_2a

    if-eqz v0, :cond_2a

    .line 1561
    iget v1, p1, Landroid/widget/Toolbar$SavedState;->expandedMenuItemId:I

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1562
    if-eqz v0, :cond_2a

    .line 1563
    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    .line 1567
    :cond_2a
    iget-boolean p1, p1, Landroid/widget/Toolbar$SavedState;->isOverflowOpen:Z

    if-eqz p1, :cond_31

    .line 1568
    invoke-direct {p0}, Landroid/widget/Toolbar;->postShowOverflowMenu()V

    .line 1570
    :cond_31
    return-void
.end method

.method public whitelist onRtlPropertiesChanged(I)V
    .registers 4

    .line 509
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRtlPropertiesChanged(I)V

    .line 510
    invoke-direct {p0}, Landroid/widget/Toolbar;->ensureContentInsets()V

    .line 511
    iget-object v0, p0, Landroid/widget/Toolbar;->mContentInsets:Landroid/widget/RtlSpacingHelper;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_c

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    invoke-virtual {v0, v1}, Landroid/widget/RtlSpacingHelper;->setDirection(Z)V

    .line 512
    return-void
.end method

.method protected whitelist onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    .line 1543
    new-instance v0, Landroid/widget/Toolbar$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Toolbar$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1545
    iget-object v1, p0, Landroid/widget/Toolbar;->mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    if-eqz v1, :cond_1d

    iget-object v1, p0, Landroid/widget/Toolbar;->mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    iget-object v1, v1, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    if-eqz v1, :cond_1d

    .line 1546
    iget-object v1, p0, Landroid/widget/Toolbar;->mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    iget-object v1, v1, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v1

    iput v1, v0, Landroid/widget/Toolbar$SavedState;->expandedMenuItemId:I

    .line 1549
    :cond_1d
    invoke-virtual {p0}, Landroid/widget/Toolbar;->isOverflowMenuShowing()Z

    move-result v1

    iput-boolean v1, v0, Landroid/widget/Toolbar$SavedState;->isOverflowOpen:Z

    .line 1551
    return-object v0
.end method

.method protected greylist-max-o onSetLayoutParams(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    .line 1622
    invoke-virtual {p0, p2}, Landroid/widget/Toolbar;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1623
    invoke-virtual {p0, p2}, Landroid/widget/Toolbar;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/Toolbar$LayoutParams;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1625
    :cond_d
    return-void
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    .line 1590
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1591
    const/4 v1, 0x0

    if-nez v0, :cond_9

    .line 1592
    iput-boolean v1, p0, Landroid/widget/Toolbar;->mEatingTouch:Z

    .line 1595
    :cond_9
    iget-boolean v2, p0, Landroid/widget/Toolbar;->mEatingTouch:Z

    const/4 v3, 0x1

    if-nez v2, :cond_18

    .line 1596
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    .line 1597
    if-nez v0, :cond_18

    if-nez p1, :cond_18

    .line 1598
    iput-boolean v3, p0, Landroid/widget/Toolbar;->mEatingTouch:Z

    .line 1602
    :cond_18
    if-eq v0, v3, :cond_1d

    const/4 p1, 0x3

    if-ne v0, p1, :cond_1f

    .line 1603
    :cond_1d
    iput-boolean v1, p0, Landroid/widget/Toolbar;->mEatingTouch:Z

    .line 1606
    :cond_1f
    return v3
.end method

.method greylist-max-o removeChildrenForExpandedActionView()V
    .registers 5

    .line 2231
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getChildCount()I

    move-result v0

    .line 2233
    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_26

    .line 2234
    invoke-virtual {p0, v0}, Landroid/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2235
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/Toolbar$LayoutParams;

    .line 2236
    iget v2, v2, Landroid/widget/Toolbar$LayoutParams;->mViewType:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_23

    iget-object v2, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    if-eq v1, v2, :cond_23

    .line 2237
    invoke-virtual {p0, v0}, Landroid/widget/Toolbar;->removeViewAt(I)V

    .line 2238
    iget-object v2, p0, Landroid/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2233
    :cond_23
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 2241
    :cond_26
    return-void
.end method

.method public whitelist setCollapseContentDescription(I)V
    .registers 3

    .line 1058
    if-eqz p1, :cond_b

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    invoke-virtual {p0, p1}, Landroid/widget/Toolbar;->setCollapseContentDescription(Ljava/lang/CharSequence;)V

    .line 1059
    return-void
.end method

.method public whitelist setCollapseContentDescription(Ljava/lang/CharSequence;)V
    .registers 3

    .line 1072
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1073
    invoke-direct {p0}, Landroid/widget/Toolbar;->ensureCollapseButtonView()V

    .line 1075
    :cond_9
    iget-object v0, p0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_12

    .line 1076
    iget-object v0, p0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1078
    :cond_12
    return-void
.end method

.method public whitelist setCollapseIcon(I)V
    .registers 3

    .line 1104
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/Toolbar;->setCollapseIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1105
    return-void
.end method

.method public whitelist setCollapseIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 1118
    if-eqz p1, :cond_b

    .line 1119
    invoke-direct {p0}, Landroid/widget/Toolbar;->ensureCollapseButtonView()V

    .line 1120
    iget-object v0, p0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_16

    .line 1121
    :cond_b
    iget-object p1, p0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    if-eqz p1, :cond_16

    .line 1122
    iget-object p1, p0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    iget-object v0, p0, Landroid/widget/Toolbar;->mCollapseIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1124
    :cond_16
    :goto_16
    return-void
.end method

.method public greylist-max-o setCollapsible(Z)V
    .registers 2

    .line 2262
    iput-boolean p1, p0, Landroid/widget/Toolbar;->mCollapsible:Z

    .line 2263
    invoke-virtual {p0}, Landroid/widget/Toolbar;->requestLayout()V

    .line 2264
    return-void
.end method

.method public whitelist setContentInsetEndWithActions(I)V
    .registers 3

    .line 1420
    if-gez p1, :cond_4

    .line 1421
    const/high16 p1, -0x80000000

    .line 1423
    :cond_4
    iget v0, p0, Landroid/widget/Toolbar;->mContentInsetEndWithActions:I

    if-eq p1, v0, :cond_13

    .line 1424
    iput p1, p0, Landroid/widget/Toolbar;->mContentInsetEndWithActions:I

    .line 1425
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 1426
    invoke-virtual {p0}, Landroid/widget/Toolbar;->requestLayout()V

    .line 1429
    :cond_13
    return-void
.end method

.method public whitelist setContentInsetStartWithNavigation(I)V
    .registers 3

    .line 1377
    if-gez p1, :cond_4

    .line 1378
    const/high16 p1, -0x80000000

    .line 1380
    :cond_4
    iget v0, p0, Landroid/widget/Toolbar;->mContentInsetStartWithNavigation:I

    if-eq p1, v0, :cond_13

    .line 1381
    iput p1, p0, Landroid/widget/Toolbar;->mContentInsetStartWithNavigation:I

    .line 1382
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 1383
    invoke-virtual {p0}, Landroid/widget/Toolbar;->requestLayout()V

    .line 1386
    :cond_13
    return-void
.end method

.method public whitelist setContentInsetsAbsolute(II)V
    .registers 4

    .line 1298
    invoke-direct {p0}, Landroid/widget/Toolbar;->ensureContentInsets()V

    .line 1299
    iget-object v0, p0, Landroid/widget/Toolbar;->mContentInsets:Landroid/widget/RtlSpacingHelper;

    invoke-virtual {v0, p1, p2}, Landroid/widget/RtlSpacingHelper;->setAbsolute(II)V

    .line 1300
    return-void
.end method

.method public whitelist setContentInsetsRelative(II)V
    .registers 4

    .line 1233
    invoke-direct {p0}, Landroid/widget/Toolbar;->ensureContentInsets()V

    .line 1234
    iget-object v0, p0, Landroid/widget/Toolbar;->mContentInsets:Landroid/widget/RtlSpacingHelper;

    invoke-virtual {v0, p1, p2}, Landroid/widget/RtlSpacingHelper;->setRelative(II)V

    .line 1235
    return-void
.end method

.method public whitelist setLogo(I)V
    .registers 3

    .line 524
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 525
    return-void
.end method

.method public whitelist setLogo(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    .line 640
    if-eqz p1, :cond_14

    .line 641
    invoke-direct {p0}, Landroid/widget/Toolbar;->ensureLogoView()V

    .line 642
    iget-object v0, p0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Landroid/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 643
    iget-object v0, p0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/widget/Toolbar;->addSystemView(Landroid/view/View;Z)V

    goto :goto_2c

    .line 645
    :cond_14
    iget-object v0, p0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Landroid/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 646
    iget-object v0, p0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 647
    iget-object v0, p0, Landroid/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 649
    :cond_2c
    :goto_2c
    iget-object v0, p0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_35

    .line 650
    iget-object v0, p0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 652
    :cond_35
    return-void
.end method

.method public whitelist setLogoDescription(I)V
    .registers 3

    .line 675
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/Toolbar;->setLogoDescription(Ljava/lang/CharSequence;)V

    .line 676
    return-void
.end method

.method public whitelist setLogoDescription(Ljava/lang/CharSequence;)V
    .registers 3

    .line 687
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 688
    invoke-direct {p0}, Landroid/widget/Toolbar;->ensureLogoView()V

    .line 690
    :cond_9
    iget-object v0, p0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_12

    .line 691
    iget-object v0, p0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 693
    :cond_12
    return-void
.end method

.method public greylist-max-o setMenu(Lcom/android/internal/view/menu/MenuBuilder;Landroid/widget/ActionMenuPresenter;)V
    .registers 6

    .line 567
    if-nez p1, :cond_7

    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    if-nez v0, :cond_7

    .line 568
    return-void

    .line 571
    :cond_7
    invoke-direct {p0}, Landroid/widget/Toolbar;->ensureMenuView()V

    .line 572
    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->peekMenu()Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v0

    .line 573
    if-ne v0, p1, :cond_13

    .line 574
    return-void

    .line 577
    :cond_13
    if-eqz v0, :cond_1f

    .line 578
    iget-object v1, p0, Landroid/widget/Toolbar;->mOuterActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    .line 579
    iget-object v1, p0, Landroid/widget/Toolbar;->mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    .line 582
    :cond_1f
    iget-object v0, p0, Landroid/widget/Toolbar;->mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    const/4 v1, 0x0

    if-nez v0, :cond_2b

    .line 583
    new-instance v0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    invoke-direct {v0, p0, v1}, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;-><init>(Landroid/widget/Toolbar;Landroid/widget/Toolbar-IA;)V

    iput-object v0, p0, Landroid/widget/Toolbar;->mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    .line 586
    :cond_2b
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/widget/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 587
    if-eqz p1, :cond_3e

    .line 588
    iget-object v0, p0, Landroid/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    invoke-virtual {p1, p2, v0}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 589
    iget-object v0, p0, Landroid/widget/Toolbar;->mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    iget-object v1, p0, Landroid/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    goto :goto_52

    .line 591
    :cond_3e
    iget-object p1, p0, Landroid/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    invoke-virtual {p2, p1, v1}, Landroid/widget/ActionMenuPresenter;->initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 592
    iget-object p1, p0, Landroid/widget/Toolbar;->mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    iget-object v2, p0, Landroid/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    invoke-virtual {p1, v2, v1}, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 593
    invoke-virtual {p2, v0}, Landroid/widget/ActionMenuPresenter;->updateMenuView(Z)V

    .line 594
    iget-object p1, p0, Landroid/widget/Toolbar;->mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    invoke-virtual {p1, v0}, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->updateMenuView(Z)V

    .line 596
    :goto_52
    iget-object p1, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    iget v0, p0, Landroid/widget/Toolbar;->mPopupTheme:I

    invoke-virtual {p1, v0}, Landroid/widget/ActionMenuView;->setPopupTheme(I)V

    .line 597
    iget-object p1, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {p1, p2}, Landroid/widget/ActionMenuView;->setPresenter(Landroid/widget/ActionMenuPresenter;)V

    .line 598
    iput-object p2, p0, Landroid/widget/Toolbar;->mOuterActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    .line 599
    return-void
.end method

.method public greylist-max-o setMenuCallbacks(Lcom/android/internal/view/menu/MenuPresenter$Callback;Lcom/android/internal/view/menu/MenuBuilder$Callback;)V
    .registers 4

    .line 2271
    iput-object p1, p0, Landroid/widget/Toolbar;->mActionMenuPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    .line 2272
    iput-object p2, p0, Landroid/widget/Toolbar;->mMenuBuilderCallback:Lcom/android/internal/view/menu/MenuBuilder$Callback;

    .line 2273
    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    if-eqz v0, :cond_d

    .line 2274
    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/ActionMenuView;->setMenuCallbacks(Lcom/android/internal/view/menu/MenuPresenter$Callback;Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    .line 2276
    :cond_d
    return-void
.end method

.method public whitelist setNavigationContentDescription(I)V
    .registers 3

    .line 927
    if-eqz p1, :cond_b

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    invoke-virtual {p0, p1}, Landroid/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 928
    return-void
.end method

.method public whitelist setNavigationContentDescription(Ljava/lang/CharSequence;)V
    .registers 3

    .line 941
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 942
    invoke-direct {p0}, Landroid/widget/Toolbar;->ensureNavButtonView()V

    .line 944
    :cond_9
    iget-object v0, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_12

    .line 945
    iget-object v0, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 947
    :cond_12
    return-void
.end method

.method public whitelist setNavigationIcon(I)V
    .registers 3

    .line 964
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 965
    return-void
.end method

.method public whitelist setNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    .line 982
    if-eqz p1, :cond_14

    .line 983
    invoke-direct {p0}, Landroid/widget/Toolbar;->ensureNavButtonView()V

    .line 984
    iget-object v0, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Landroid/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 985
    iget-object v0, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/widget/Toolbar;->addSystemView(Landroid/view/View;Z)V

    goto :goto_2c

    .line 987
    :cond_14
    iget-object v0, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Landroid/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 988
    iget-object v0, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Landroid/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 989
    iget-object v0, p0, Landroid/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 991
    :cond_2c
    :goto_2c
    iget-object v0, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_35

    .line 992
    iget-object v0, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 994
    :cond_35
    return-void
.end method

.method public whitelist setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3

    .line 1019
    invoke-direct {p0}, Landroid/widget/Toolbar;->ensureNavButtonView()V

    .line 1020
    iget-object v0, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1021
    return-void
.end method

.method public whitelist setOnMenuItemClickListener(Landroid/widget/Toolbar$OnMenuItemClickListener;)V
    .registers 2

    .line 1211
    iput-object p1, p0, Landroid/widget/Toolbar;->mOnMenuItemClickListener:Landroid/widget/Toolbar$OnMenuItemClickListener;

    .line 1212
    return-void
.end method

.method public whitelist setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 1145
    invoke-direct {p0}, Landroid/widget/Toolbar;->ensureMenu()V

    .line 1146
    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v0, p1}, Landroid/widget/ActionMenuView;->setOverflowIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1147
    return-void
.end method

.method public whitelist setPopupTheme(I)V
    .registers 4

    .line 374
    iget v0, p0, Landroid/widget/Toolbar;->mPopupTheme:I

    if-eq v0, p1, :cond_16

    .line 375
    iput p1, p0, Landroid/widget/Toolbar;->mPopupTheme:I

    .line 376
    if-nez p1, :cond_d

    .line 377
    iget-object p1, p0, Landroid/widget/Toolbar;->mContext:Landroid/content/Context;

    iput-object p1, p0, Landroid/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    goto :goto_16

    .line 379
    :cond_d
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Landroid/widget/Toolbar;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroid/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    .line 382
    :cond_16
    :goto_16
    return-void
.end method

.method public whitelist setSubtitle(I)V
    .registers 3

    .line 818
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 819
    return-void
.end method

.method public whitelist setSubtitle(Ljava/lang/CharSequence;)V
    .registers 4

    .line 829
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_46

    .line 830
    iget-object v0, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-nez v0, :cond_37

    .line 831
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 832
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    .line 833
    iget-object v0, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 834
    iget-object v0, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 835
    iget v0, p0, Landroid/widget/Toolbar;->mSubtitleTextAppearance:I

    if-eqz v0, :cond_2c

    .line 836
    iget-object v0, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    iget v1, p0, Landroid/widget/Toolbar;->mSubtitleTextAppearance:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 838
    :cond_2c
    iget v0, p0, Landroid/widget/Toolbar;->mSubtitleTextColor:I

    if-eqz v0, :cond_37

    .line 839
    iget-object v0, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    iget v1, p0, Landroid/widget/Toolbar;->mSubtitleTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 842
    :cond_37
    iget-object v0, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Landroid/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_5e

    .line 843
    iget-object v0, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/widget/Toolbar;->addSystemView(Landroid/view/View;Z)V

    goto :goto_5e

    .line 845
    :cond_46
    iget-object v0, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_5e

    iget-object v0, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Landroid/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 846
    iget-object v0, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 847
    iget-object v0, p0, Landroid/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 849
    :cond_5e
    :goto_5e
    iget-object v0, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_67

    .line 850
    iget-object v0, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 852
    :cond_67
    iput-object p1, p0, Landroid/widget/Toolbar;->mSubtitleText:Ljava/lang/CharSequence;

    .line 853
    return-void
.end method

.method public whitelist setSubtitleTextAppearance(Landroid/content/Context;I)V
    .registers 3

    .line 871
    iput p2, p0, Landroid/widget/Toolbar;->mSubtitleTextAppearance:I

    .line 872
    iget-object p1, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_b

    .line 873
    iget-object p1, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 875
    :cond_b
    return-void
.end method

.method public whitelist setSubtitleTextColor(I)V
    .registers 3

    .line 895
    iput p1, p0, Landroid/widget/Toolbar;->mSubtitleTextColor:I

    .line 896
    iget-object v0, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    .line 897
    iget-object v0, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 899
    :cond_b
    return-void
.end method

.method public whitelist setTitle(I)V
    .registers 3

    .line 762
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 763
    return-void
.end method

.method public whitelist setTitle(Ljava/lang/CharSequence;)V
    .registers 4

    .line 774
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_46

    .line 775
    iget-object v0, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-nez v0, :cond_37

    .line 776
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 777
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    .line 778
    iget-object v0, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 779
    iget-object v0, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 780
    iget v0, p0, Landroid/widget/Toolbar;->mTitleTextAppearance:I

    if-eqz v0, :cond_2c

    .line 781
    iget-object v0, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    iget v1, p0, Landroid/widget/Toolbar;->mTitleTextAppearance:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 783
    :cond_2c
    iget v0, p0, Landroid/widget/Toolbar;->mTitleTextColor:I

    if-eqz v0, :cond_37

    .line 784
    iget-object v0, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    iget v1, p0, Landroid/widget/Toolbar;->mTitleTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 787
    :cond_37
    iget-object v0, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Landroid/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_5e

    .line 788
    iget-object v0, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/widget/Toolbar;->addSystemView(Landroid/view/View;Z)V

    goto :goto_5e

    .line 790
    :cond_46
    iget-object v0, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_5e

    iget-object v0, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Landroid/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 791
    iget-object v0, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 792
    iget-object v0, p0, Landroid/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 794
    :cond_5e
    :goto_5e
    iget-object v0, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_67

    .line 795
    iget-object v0, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 797
    :cond_67
    iput-object p1, p0, Landroid/widget/Toolbar;->mTitleText:Ljava/lang/CharSequence;

    .line 798
    return-void
.end method

.method public whitelist setTitleMargin(IIII)V
    .registers 5

    .line 408
    iput p1, p0, Landroid/widget/Toolbar;->mTitleMarginStart:I

    .line 409
    iput p2, p0, Landroid/widget/Toolbar;->mTitleMarginTop:I

    .line 410
    iput p3, p0, Landroid/widget/Toolbar;->mTitleMarginEnd:I

    .line 411
    iput p4, p0, Landroid/widget/Toolbar;->mTitleMarginBottom:I

    .line 413
    invoke-virtual {p0}, Landroid/widget/Toolbar;->requestLayout()V

    .line 414
    return-void
.end method

.method public whitelist setTitleMarginBottom(I)V
    .registers 2

    .line 503
    iput p1, p0, Landroid/widget/Toolbar;->mTitleMarginBottom:I

    .line 504
    invoke-virtual {p0}, Landroid/widget/Toolbar;->requestLayout()V

    .line 505
    return-void
.end method

.method public whitelist setTitleMarginEnd(I)V
    .registers 2

    .line 480
    iput p1, p0, Landroid/widget/Toolbar;->mTitleMarginEnd:I

    .line 482
    invoke-virtual {p0}, Landroid/widget/Toolbar;->requestLayout()V

    .line 483
    return-void
.end method

.method public whitelist setTitleMarginStart(I)V
    .registers 2

    .line 434
    iput p1, p0, Landroid/widget/Toolbar;->mTitleMarginStart:I

    .line 436
    invoke-virtual {p0}, Landroid/widget/Toolbar;->requestLayout()V

    .line 437
    return-void
.end method

.method public whitelist setTitleMarginTop(I)V
    .registers 2

    .line 457
    iput p1, p0, Landroid/widget/Toolbar;->mTitleMarginTop:I

    .line 459
    invoke-virtual {p0}, Landroid/widget/Toolbar;->requestLayout()V

    .line 460
    return-void
.end method

.method public whitelist setTitleTextAppearance(Landroid/content/Context;I)V
    .registers 3

    .line 860
    iput p2, p0, Landroid/widget/Toolbar;->mTitleTextAppearance:I

    .line 861
    iget-object p1, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_b

    .line 862
    iget-object p1, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 864
    :cond_b
    return-void
.end method

.method public whitelist setTitleTextColor(I)V
    .registers 3

    .line 883
    iput p1, p0, Landroid/widget/Toolbar;->mTitleTextColor:I

    .line 884
    iget-object v0, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    .line 885
    iget-object v0, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 887
    :cond_b
    return-void
.end method

.method public whitelist showOverflowMenu()Z
    .registers 2

    .line 553
    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->showOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method
