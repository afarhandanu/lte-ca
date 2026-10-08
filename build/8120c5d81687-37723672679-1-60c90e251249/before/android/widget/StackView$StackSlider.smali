.class Landroid/widget/StackView$StackSlider;
.super Ljava/lang/Object;
.source "StackView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/StackView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StackSlider"
.end annotation


# static fields
.field static final greylist-max-o BEGINNING_OF_STACK_MODE:I = 0x1

.field static final greylist-max-o END_OF_STACK_MODE:I = 0x2

.field static final greylist-max-o NORMAL_MODE:I


# instance fields
.field greylist-max-o mMode:I

.field greylist-max-o mView:Landroid/view/View;

.field greylist-max-o mXProgress:F

.field greylist-max-o mYProgress:F

.field final synthetic blacklist this$0:Landroid/widget/StackView;


# direct methods
.method public constructor blacklist <init>(Landroid/widget/StackView;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 909
    iput-object p1, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 907
    const/4 p1, 0x0

    iput p1, p0, Landroid/widget/StackView$StackSlider;->mMode:I

    .line 910
    return-void
.end method

.method public constructor blacklist <init>(Landroid/widget/StackView;Landroid/widget/StackView$StackSlider;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 912
    iput-object p1, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 907
    const/4 p1, 0x0

    iput p1, p0, Landroid/widget/StackView$StackSlider;->mMode:I

    .line 913
    iget-object p1, p2, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    iput-object p1, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    .line 914
    iget p1, p2, Landroid/widget/StackView$StackSlider;->mYProgress:F

    iput p1, p0, Landroid/widget/StackView$StackSlider;->mYProgress:F

    .line 915
    iget p1, p2, Landroid/widget/StackView$StackSlider;->mXProgress:F

    iput p1, p0, Landroid/widget/StackView$StackSlider;->mXProgress:F

    .line 916
    iget p1, p2, Landroid/widget/StackView$StackSlider;->mMode:I

    iput p1, p0, Landroid/widget/StackView$StackSlider;->mMode:I

    .line 917
    return-void
.end method

.method private greylist-max-o cubic(F)F
    .registers 7

    .line 920
    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p1, v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr p1, v1

    float-to-double v1, p1

    const-wide/high16 v3, 0x4008000000000000L    # 3.0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    add-double/2addr v1, v3

    double-to-float p1, v1

    div-float/2addr p1, v0

    return p1
.end method

.method private greylist-max-o getDuration(ZF)F
    .registers 9

    .line 1052
    iget-object v0, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_66

    .line 1053
    iget-object v0, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/StackView$LayoutParams;

    .line 1055
    iget v2, v0, Landroid/widget/StackView$LayoutParams;->horizontalOffset:I

    int-to-double v2, v2

    iget v0, v0, Landroid/widget/StackView$LayoutParams;->verticalOffset:I

    int-to-double v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v0, v2

    .line 1056
    iget-object v2, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    invoke-static {v2}, Landroid/widget/StackView;->-$$Nest$fgetmSlideAmount(Landroid/widget/StackView;)I

    move-result v2

    int-to-double v2, v2

    iget-object v4, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    invoke-static {v4}, Landroid/widget/StackView;->-$$Nest$fgetmSlideAmount(Landroid/widget/StackView;)I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3ecccccd    # 0.4f

    mul-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v2, v2

    .line 1057
    cmpl-float v3, v0, v2

    if-lez v3, :cond_35

    .line 1060
    move v0, v2

    .line 1063
    :cond_35
    cmpl-float v3, p2, v1

    const/high16 v4, 0x43c80000    # 400.0f

    if-nez v3, :cond_46

    .line 1064
    if-eqz p1, :cond_42

    const/high16 p1, 0x3f800000    # 1.0f

    div-float/2addr v0, v2

    sub-float/2addr p1, v0

    goto :goto_44

    :cond_42
    div-float p1, v0, v2

    :goto_44
    mul-float/2addr p1, v4

    return p1

    .line 1066
    :cond_46
    if-eqz p1, :cond_4e

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    div-float/2addr v0, p2

    goto :goto_55

    .line 1067
    :cond_4e
    sub-float/2addr v2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    div-float v0, v2, p2

    .line 1068
    :goto_55
    const/high16 p2, 0x42480000    # 50.0f

    cmpg-float p2, v0, p2

    if-ltz p2, :cond_61

    cmpl-float p2, v0, v4

    if-lez p2, :cond_60

    goto :goto_61

    .line 1072
    :cond_60
    return v0

    .line 1070
    :cond_61
    :goto_61
    invoke-direct {p0, p1, v1}, Landroid/widget/StackView$StackSlider;->getDuration(ZF)F

    move-result p1

    return p1

    .line 1076
    :cond_66
    return v1
.end method

.method private greylist-max-o highlightAlphaInterpolator(F)F
    .registers 5

    .line 924
    nop

    .line 925
    const v0, 0x3ecccccd    # 0.4f

    cmpg-float v1, p1, v0

    const v2, 0x3f59999a    # 0.85f

    if-gez v1, :cond_12

    .line 926
    div-float/2addr p1, v0

    invoke-direct {p0, p1}, Landroid/widget/StackView$StackSlider;->cubic(F)F

    move-result p1

    mul-float/2addr p1, v2

    return p1

    .line 928
    :cond_12
    sub-float/2addr p1, v0

    const v0, 0x3f19999a    # 0.6f

    div-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    invoke-direct {p0, v0}, Landroid/widget/StackView$StackSlider;->cubic(F)F

    move-result p1

    mul-float/2addr p1, v2

    return p1
.end method

.method private greylist-max-o rotationInterpolator(F)F
    .registers 4

    .line 942
    nop

    .line 943
    const v0, 0x3e4ccccd    # 0.2f

    cmpg-float v1, p1, v0

    if-gez v1, :cond_a

    .line 944
    const/4 p1, 0x0

    return p1

    .line 946
    :cond_a
    sub-float/2addr p1, v0

    const v0, 0x3f4ccccd    # 0.8f

    div-float/2addr p1, v0

    return p1
.end method

.method private greylist-max-o viewAlphaInterpolator(F)F
    .registers 4

    .line 933
    nop

    .line 934
    const v0, 0x3e99999a    # 0.3f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_e

    .line 935
    sub-float/2addr p1, v0

    const v0, 0x3f333333    # 0.7f

    div-float/2addr p1, v0

    return p1

    .line 937
    :cond_e
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method greylist-max-o getDurationForNeutralPosition()F
    .registers 3

    .line 1036
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/widget/StackView$StackSlider;->getDuration(ZF)F

    move-result v0

    return v0
.end method

.method greylist-max-o getDurationForNeutralPosition(F)F
    .registers 3

    .line 1044
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/widget/StackView$StackSlider;->getDuration(ZF)F

    move-result p1

    return p1
.end method

.method greylist-max-o getDurationForOffscreenPosition()F
    .registers 3

    .line 1040
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/widget/StackView$StackSlider;->getDuration(ZF)F

    move-result v0

    return v0
.end method

.method greylist-max-o getDurationForOffscreenPosition(F)F
    .registers 3

    .line 1048
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/widget/StackView$StackSlider;->getDuration(ZF)F

    move-result p1

    return p1
.end method

.method public greylist-max-o getXProgress()F
    .registers 2

    .line 1088
    iget v0, p0, Landroid/widget/StackView$StackSlider;->mXProgress:F

    return v0
.end method

.method public greylist-max-o getYProgress()F
    .registers 2

    .line 1082
    iget v0, p0, Landroid/widget/StackView$StackSlider;->mYProgress:F

    return v0
.end method

.method greylist-max-o setMode(I)V
    .registers 2

    .line 1032
    iput p1, p0, Landroid/widget/StackView$StackSlider;->mMode:I

    .line 1033
    return-void
.end method

.method greylist-max-o setView(Landroid/view/View;)V
    .registers 2

    .line 951
    iput-object p1, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    .line 952
    return-void
.end method

.method public greylist-max-o setXProgress(F)V
    .registers 5

    .line 1017
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 1018
    const/high16 v0, -0x40000000    # -2.0f

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 1020
    iput p1, p0, Landroid/widget/StackView$StackSlider;->mXProgress:F

    .line 1022
    iget-object v0, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    if-nez v0, :cond_13

    return-void

    .line 1023
    :cond_13
    iget-object v0, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/StackView$LayoutParams;

    .line 1024
    iget-object v1, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    invoke-static {v1}, Landroid/widget/StackView;->-$$Nest$fgetmHighlight(Landroid/widget/StackView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/StackView$LayoutParams;

    .line 1026
    const v2, 0x3e4ccccd    # 0.2f

    mul-float/2addr p1, v2

    .line 1027
    iget-object v2, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    invoke-static {v2}, Landroid/widget/StackView;->-$$Nest$fgetmSlideAmount(Landroid/widget/StackView;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/StackView$LayoutParams;->setHorizontalOffset(I)V

    .line 1028
    iget-object v0, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    invoke-static {v0}, Landroid/widget/StackView;->-$$Nest$fgetmSlideAmount(Landroid/widget/StackView;)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/StackView$LayoutParams;->setHorizontalOffset(I)V

    .line 1029
    return-void
.end method

.method public greylist-max-o setYProgress(F)V
    .registers 11

    .line 956
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 957
    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 959
    iput p1, p0, Landroid/widget/StackView$StackSlider;->mYProgress:F

    .line 960
    iget-object v2, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    if-nez v2, :cond_12

    return-void

    .line 962
    :cond_12
    iget-object v2, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/StackView$LayoutParams;

    .line 963
    iget-object v3, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    invoke-static {v3}, Landroid/widget/StackView;->-$$Nest$fgetmHighlight(Landroid/widget/StackView;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/StackView$LayoutParams;

    .line 965
    iget-object v4, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    invoke-static {v4}, Landroid/widget/StackView;->-$$Nest$fgetmStackMode(Landroid/widget/StackView;)I

    move-result v4

    if-nez v4, :cond_30

    const/4 v4, 0x1

    goto :goto_31

    :cond_30
    const/4 v4, -0x1

    .line 969
    :goto_31
    iget v5, p0, Landroid/widget/StackView$StackSlider;->mYProgress:F

    invoke-static {v1, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v5, :cond_52

    iget v5, p0, Landroid/widget/StackView$StackSlider;->mYProgress:F

    invoke-static {v0, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v5

    if-eqz v5, :cond_52

    .line 970
    iget-object v5, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayerType()I

    move-result v5

    if-nez v5, :cond_5f

    .line 971
    iget-object v5, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    const/4 v8, 0x2

    invoke-virtual {v5, v8, v6}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_5f

    .line 974
    :cond_52
    iget-object v5, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayerType()I

    move-result v5

    if-eqz v5, :cond_5f

    .line 975
    iget-object v5, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    invoke-virtual {v5, v7, v6}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 979
    :cond_5f
    :goto_5f
    iget v5, p0, Landroid/widget/StackView$StackSlider;->mMode:I

    const v6, 0x3e4ccccd    # 0.2f

    packed-switch v5, :pswitch_data_158

    goto/16 :goto_157

    .line 1001
    :pswitch_69
    mul-float/2addr p1, v6

    .line 1002
    neg-int v0, v4

    int-to-float v0, v0

    mul-float/2addr v0, p1

    iget-object v1, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    invoke-static {v1}, Landroid/widget/StackView;->-$$Nest$fgetmSlideAmount(Landroid/widget/StackView;)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/StackView$LayoutParams;->setVerticalOffset(I)V

    .line 1003
    iget-object v1, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    invoke-static {v1}, Landroid/widget/StackView;->-$$Nest$fgetmSlideAmount(Landroid/widget/StackView;)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/widget/StackView$LayoutParams;->setVerticalOffset(I)V

    .line 1004
    iget-object v0, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    invoke-static {v0}, Landroid/widget/StackView;->-$$Nest$fgetmHighlight(Landroid/widget/StackView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-direct {p0, p1}, Landroid/widget/StackView$StackSlider;->highlightAlphaInterpolator(F)F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1005
    goto/16 :goto_157

    .line 1007
    :pswitch_9a
    sub-float/2addr v0, p1

    mul-float/2addr v0, v6

    .line 1008
    int-to-float p1, v4

    mul-float/2addr p1, v0

    iget-object v1, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    invoke-static {v1}, Landroid/widget/StackView;->-$$Nest$fgetmSlideAmount(Landroid/widget/StackView;)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/StackView$LayoutParams;->setVerticalOffset(I)V

    .line 1009
    iget-object v1, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    invoke-static {v1}, Landroid/widget/StackView;->-$$Nest$fgetmSlideAmount(Landroid/widget/StackView;)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {v3, p1}, Landroid/widget/StackView$LayoutParams;->setVerticalOffset(I)V

    .line 1010
    iget-object p1, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    invoke-static {p1}, Landroid/widget/StackView;->-$$Nest$fgetmHighlight(Landroid/widget/StackView;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-direct {p0, v0}, Landroid/widget/StackView$StackSlider;->highlightAlphaInterpolator(F)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    goto/16 :goto_157

    .line 981
    :pswitch_cb
    neg-float v5, p1

    int-to-float v4, v4

    mul-float/2addr v5, v4

    iget-object v6, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    invoke-static {v6}, Landroid/widget/StackView;->-$$Nest$fgetmSlideAmount(Landroid/widget/StackView;)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v5

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/widget/StackView$LayoutParams;->setVerticalOffset(I)V

    .line 982
    iget-object v2, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    invoke-static {v2}, Landroid/widget/StackView;->-$$Nest$fgetmSlideAmount(Landroid/widget/StackView;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/StackView$LayoutParams;->setVerticalOffset(I)V

    .line 983
    iget-object v2, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    invoke-static {v2}, Landroid/widget/StackView;->-$$Nest$fgetmHighlight(Landroid/widget/StackView;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-direct {p0, p1}, Landroid/widget/StackView$StackSlider;->highlightAlphaInterpolator(F)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 985
    sub-float/2addr v0, p1

    invoke-direct {p0, v0}, Landroid/widget/StackView$StackSlider;->viewAlphaInterpolator(F)F

    move-result v0

    .line 989
    iget-object v2, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v2

    cmpl-float v2, v2, v1

    if-nez v2, :cond_11a

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_11a

    iget-object v2, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_11a

    .line 990
    iget-object v1, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_136

    .line 991
    :cond_11a
    cmpl-float v2, v0, v1

    if-nez v2, :cond_136

    iget-object v2, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v2

    cmpl-float v1, v2, v1

    if-eqz v1, :cond_136

    iget-object v1, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    .line 992
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_136

    .line 993
    iget-object v1, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 996
    :cond_136
    :goto_136
    iget-object v1, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 997
    iget-object v0, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    const/high16 v1, 0x42b40000    # 90.0f

    mul-float/2addr v4, v1

    invoke-direct {p0, p1}, Landroid/widget/StackView$StackSlider;->rotationInterpolator(F)F

    move-result v1

    mul-float/2addr v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotationX(F)V

    .line 998
    iget-object v0, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    invoke-static {v0}, Landroid/widget/StackView;->-$$Nest$fgetmHighlight(Landroid/widget/StackView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-direct {p0, p1}, Landroid/widget/StackView$StackSlider;->rotationInterpolator(F)F

    move-result p1

    mul-float/2addr v4, p1

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setRotationX(F)V

    .line 999
    nop

    .line 1013
    :goto_157
    return-void

    :pswitch_data_158
    .packed-switch 0x0
        :pswitch_cb
        :pswitch_9a
        :pswitch_69
    .end packed-switch
.end method
