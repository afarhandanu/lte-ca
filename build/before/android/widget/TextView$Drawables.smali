.class Landroid/widget/TextView$Drawables;
.super Ljava/lang/Object;
.source "TextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Drawables"
.end annotation


# static fields
.field static final greylist-max-o BOTTOM:I = 0x3

.field static final greylist-max-o DRAWABLE_LEFT:I = 0x1

.field static final greylist-max-o DRAWABLE_NONE:I = -0x1

.field static final greylist-max-o DRAWABLE_RIGHT:I = 0x0

.field static final greylist-max-o LEFT:I = 0x0

.field static final greylist-max-o RIGHT:I = 0x2

.field static final greylist-max-o TOP:I = 0x1


# instance fields
.field blacklist mBlendMode:Landroid/graphics/BlendMode;

.field final greylist-max-o mCompoundRect:Landroid/graphics/Rect;

.field greylist-max-o mDrawableEnd:Landroid/graphics/drawable/Drawable;

.field greylist-max-o mDrawableError:Landroid/graphics/drawable/Drawable;

.field greylist-max-o mDrawableHeightEnd:I

.field greylist-max-o mDrawableHeightError:I

.field greylist-max-o mDrawableHeightLeft:I

.field greylist-max-o mDrawableHeightRight:I

.field greylist-max-o mDrawableHeightStart:I

.field greylist-max-o mDrawableHeightTemp:I

.field greylist-max-o mDrawableLeftInitial:Landroid/graphics/drawable/Drawable;

.field greylist-max-o mDrawablePadding:I

.field greylist-max-o mDrawableRightInitial:Landroid/graphics/drawable/Drawable;

.field greylist-max-o mDrawableSaved:I

.field greylist-max-o mDrawableSizeBottom:I

.field greylist-max-o mDrawableSizeEnd:I

.field greylist-max-o mDrawableSizeError:I

.field greylist-max-o mDrawableSizeLeft:I

.field greylist-max-o mDrawableSizeRight:I

.field greylist-max-o mDrawableSizeStart:I

.field greylist-max-o mDrawableSizeTemp:I

.field greylist-max-o mDrawableSizeTop:I

.field greylist-max-o mDrawableStart:Landroid/graphics/drawable/Drawable;

.field greylist-max-o mDrawableTemp:Landroid/graphics/drawable/Drawable;

.field greylist-max-o mDrawableWidthBottom:I

.field greylist-max-o mDrawableWidthTop:I

.field greylist-max-o mHasTint:Z

.field greylist-max-o mHasTintMode:Z

.field greylist-max-o mIsRtlCompatibilityMode:Z

.field greylist-max-o mOverride:Z

.field final greylist-max-o mShowing:[Landroid/graphics/drawable/Drawable;

.field greylist-max-o mTintList:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/content/Context;)V
    .registers 5

    .line 655
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 630
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/TextView$Drawables;->mCompoundRect:Landroid/graphics/Rect;

    .line 632
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    .line 653
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSaved:I

    .line 656
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 657
    const/16 v1, 0x11

    const/4 v2, 0x0

    if-lt v0, v1, :cond_2a

    .line 658
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->hasRtlSupport()Z

    move-result p1

    if-nez p1, :cond_28

    goto :goto_2a

    :cond_28
    move p1, v2

    goto :goto_2b

    :cond_2a
    :goto_2a
    const/4 p1, 0x1

    :goto_2b
    iput-boolean p1, p0, Landroid/widget/TextView$Drawables;->mIsRtlCompatibilityMode:Z

    .line 659
    iput-boolean v2, p0, Landroid/widget/TextView$Drawables;->mOverride:Z

    .line 660
    return-void
.end method

.method private greylist-max-o applyErrorDrawableIfNeeded(I)V
    .registers 6

    .line 757
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSaved:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_6e

    goto :goto_26

    .line 759
    :pswitch_8
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Landroid/widget/TextView$Drawables;->mDrawableTemp:Landroid/graphics/drawable/Drawable;

    aput-object v3, v0, v2

    .line 760
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeTemp:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    .line 761
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightTemp:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    .line 762
    goto :goto_26

    .line 764
    :pswitch_17
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Landroid/widget/TextView$Drawables;->mDrawableTemp:Landroid/graphics/drawable/Drawable;

    aput-object v3, v0, v1

    .line 765
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeTemp:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    .line 766
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightTemp:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    .line 767
    nop

    .line 772
    :goto_26
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6c

    .line 773
    packed-switch p1, :pswitch_data_76

    .line 787
    iput v2, p0, Landroid/widget/TextView$Drawables;->mDrawableSaved:I

    .line 789
    iget-object p1, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object p1, p1, v1

    iput-object p1, p0, Landroid/widget/TextView$Drawables;->mDrawableTemp:Landroid/graphics/drawable/Drawable;

    .line 790
    iget p1, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    iput p1, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeTemp:I

    .line 791
    iget p1, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    iput p1, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightTemp:I

    .line 793
    iget-object p1, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    aput-object v0, p1, v1

    .line 794
    iget p1, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeError:I

    iput p1, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    .line 795
    iget p1, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightError:I

    iput p1, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    goto :goto_6c

    .line 775
    :pswitch_4c
    const/4 p1, 0x1

    iput p1, p0, Landroid/widget/TextView$Drawables;->mDrawableSaved:I

    .line 777
    iget-object p1, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object p1, p1, v2

    iput-object p1, p0, Landroid/widget/TextView$Drawables;->mDrawableTemp:Landroid/graphics/drawable/Drawable;

    .line 778
    iget p1, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    iput p1, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeTemp:I

    .line 779
    iget p1, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    iput p1, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightTemp:I

    .line 781
    iget-object p1, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    aput-object v0, p1, v2

    .line 782
    iget p1, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeError:I

    iput p1, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    .line 783
    iget p1, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightError:I

    iput p1, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    .line 784
    nop

    .line 799
    :cond_6c
    :goto_6c
    return-void

    nop

    :pswitch_data_6e
    .packed-switch 0x0
        :pswitch_17
        :pswitch_8
    .end packed-switch

    :pswitch_data_76
    .packed-switch 0x1
        :pswitch_4c
    .end packed-switch
.end method


# virtual methods
.method public greylist-max-o hasMetadata()Z
    .registers 2

    .line 667
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    if-nez v0, :cond_f

    iget-boolean v0, p0, Landroid/widget/TextView$Drawables;->mHasTintMode:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, Landroid/widget/TextView$Drawables;->mHasTint:Z

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public greylist-max-o resolveWithLayoutDirection(I)Z
    .registers 8

    .line 678
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 679
    iget-object v2, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    .line 682
    iget-object v4, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Landroid/widget/TextView$Drawables;->mDrawableLeftInitial:Landroid/graphics/drawable/Drawable;

    aput-object v5, v4, v1

    .line 683
    iget-object v4, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Landroid/widget/TextView$Drawables;->mDrawableRightInitial:Landroid/graphics/drawable/Drawable;

    aput-object v5, v4, v3

    .line 685
    iget-boolean v4, p0, Landroid/widget/TextView$Drawables;->mIsRtlCompatibilityMode:Z

    if-eqz v4, :cond_4b

    .line 687
    iget-object v4, p0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_32

    iget-object v4, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v1

    if-nez v4, :cond_32

    .line 688
    iget-object v4, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    aput-object v5, v4, v1

    .line 689
    iget v4, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    iput v4, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    .line 690
    iget v4, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    iput v4, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    .line 693
    :cond_32
    iget-object v4, p0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_8f

    iget-object v4, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v3

    if-nez v4, :cond_8f

    .line 694
    iget-object v4, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    aput-object v5, v4, v3

    .line 695
    iget v4, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    iput v4, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    .line 696
    iget v4, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    iput v4, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    goto :goto_8f

    .line 701
    :cond_4b
    packed-switch p1, :pswitch_data_a0

    .line 716
    iget-boolean v4, p0, Landroid/widget/TextView$Drawables;->mOverride:Z

    if-eqz v4, :cond_8f

    .line 717
    iget-object v4, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    aput-object v5, v4, v1

    .line 718
    iget v4, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    iput v4, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    .line 719
    iget v4, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    iput v4, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    .line 721
    iget-object v4, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    aput-object v5, v4, v3

    .line 722
    iget v4, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    iput v4, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    .line 723
    iget v4, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    iput v4, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    goto :goto_8f

    .line 703
    :pswitch_6f
    iget-boolean v4, p0, Landroid/widget/TextView$Drawables;->mOverride:Z

    if-eqz v4, :cond_8f

    .line 704
    iget-object v4, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    aput-object v5, v4, v3

    .line 705
    iget v4, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    iput v4, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    .line 706
    iget v4, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    iput v4, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    .line 708
    iget-object v4, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    aput-object v5, v4, v1

    .line 709
    iget v4, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    iput v4, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    .line 710
    iget v4, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    iput v4, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    .line 729
    :cond_8f
    :goto_8f
    invoke-direct {p0, p1}, Landroid/widget/TextView$Drawables;->applyErrorDrawableIfNeeded(I)V

    .line 731
    iget-object p1, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object p1, p1, v1

    if-ne p1, v0, :cond_9e

    iget-object p1, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object p1, p1, v3

    if-eq p1, v2, :cond_9f

    :cond_9e
    const/4 v1, 0x1

    :cond_9f
    return v1

    :pswitch_data_a0
    .packed-switch 0x1
        :pswitch_6f
    .end packed-switch
.end method

.method public greylist-max-o setErrorDrawable(Landroid/graphics/drawable/Drawable;Landroid/widget/TextView;)V
    .registers 5

    .line 736
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_e

    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_e

    .line 737
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 739
    :cond_e
    iput-object p1, p0, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    .line 741
    iget-object p1, p0, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_36

    .line 742
    iget-object p1, p0, Landroid/widget/TextView$Drawables;->mCompoundRect:Landroid/graphics/Rect;

    .line 743
    invoke-virtual {p2}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v0

    .line 745
    iget-object v1, p0, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 746
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 747
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 748
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p2

    iput p2, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeError:I

    .line 749
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iput p1, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightError:I

    .line 750
    goto :goto_3b

    .line 751
    :cond_36
    const/4 p1, 0x0

    iput p1, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightError:I

    iput p1, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeError:I

    .line 753
    :goto_3b
    return-void
.end method
