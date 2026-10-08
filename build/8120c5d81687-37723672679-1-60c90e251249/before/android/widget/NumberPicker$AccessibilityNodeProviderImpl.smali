.class Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;
.super Landroid/view/accessibility/AccessibilityNodeProvider;
.source "NumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AccessibilityNodeProviderImpl"
.end annotation


# static fields
.field private static final greylist-max-o UNDEFINED:I = -0x80000000

.field private static final greylist-max-o VIRTUAL_VIEW_ID_DECREMENT:I = 0x3

.field private static final greylist-max-o VIRTUAL_VIEW_ID_INCREMENT:I = 0x1

.field private static final greylist-max-o VIRTUAL_VIEW_ID_INPUT:I = 0x2


# instance fields
.field private greylist-max-o mAccessibilityFocusedView:I

.field private final greylist-max-o mTempArray:[I

.field private final greylist-max-o mTempRect:Landroid/graphics/Rect;

.field final synthetic blacklist this$0:Landroid/widget/NumberPicker;


# direct methods
.method constructor blacklist <init>(Landroid/widget/NumberPicker;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2484
    iput-object p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeProvider;-><init>()V

    .line 2493
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    .line 2495
    const/4 p1, 0x2

    new-array p1, p1, [I

    iput-object p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempArray:[I

    .line 2497
    const/high16 p1, -0x80000000

    iput p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    return-void
.end method

.method private greylist-max-o createAccessibilityNodeInfoForNumberPicker(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 11

    .line 2844
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 2845
    const-class v1, Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 2846
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/widget/NumberPicker;->access$4500(Landroid/widget/NumberPicker;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 2847
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;)V

    .line 2849
    invoke-direct {p0}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->hasVirtualDecrementButton()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 2850
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 2852
    :cond_2b
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 2853
    invoke-direct {p0}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->hasVirtualIncrementButton()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3d

    .line 2854
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 2857
    :cond_3d
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getParentForAccessibility()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 2858
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 2859
    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 2860
    iget v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-ne v1, v4, :cond_5c

    move v1, v2

    goto :goto_5d

    :cond_5c
    move v1, v3

    :goto_5d
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    .line 2862
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 2863
    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 2865
    iget-object v5, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    .line 2866
    invoke-virtual {v5, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2867
    invoke-virtual {v5, v1}, Landroid/graphics/Rect;->scale(F)V

    .line 2868
    invoke-virtual {v0, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 2870
    iget-object p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {p1}, Landroid/widget/NumberPicker;->isVisibleToUser()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 2872
    nop

    .line 2873
    iget-object p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempArray:[I

    .line 2874
    iget-object p2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {p2, p1}, Landroid/widget/NumberPicker;->getLocationOnScreen([I)V

    .line 2875
    aget p2, p1, v3

    aget p1, p1, v2

    invoke-virtual {v5, p2, p1}, Landroid/graphics/Rect;->offset(II)V

    .line 2876
    invoke-virtual {v5, v1}, Landroid/graphics/Rect;->scale(F)V

    .line 2877
    invoke-virtual {v0, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 2879
    iget p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq p1, v4, :cond_a2

    .line 2880
    const/16 p1, 0x40

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2882
    :cond_a2
    iget p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne p1, v4, :cond_ab

    .line 2883
    const/16 p1, 0x80

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2885
    :cond_ab
    iget-object p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {p1}, Landroid/widget/NumberPicker;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_f3

    .line 2886
    iget-object p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {p1}, Landroid/widget/NumberPicker;->getWrapSelectorWheel()Z

    move-result p1

    if-nez p1, :cond_c9

    iget-object p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {p1}, Landroid/widget/NumberPicker;->getValue()I

    move-result p1

    iget-object p2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {p2}, Landroid/widget/NumberPicker;->getMaxValue()I

    move-result p2

    if-ge p1, p2, :cond_d3

    .line 2887
    :cond_c9
    sget-object p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 2888
    sget-object p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_DOWN:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 2890
    :cond_d3
    iget-object p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {p1}, Landroid/widget/NumberPicker;->getWrapSelectorWheel()Z

    move-result p1

    if-nez p1, :cond_e9

    iget-object p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {p1}, Landroid/widget/NumberPicker;->getValue()I

    move-result p1

    iget-object p2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {p2}, Landroid/widget/NumberPicker;->getMinValue()I

    move-result p2

    if-le p1, p2, :cond_f3

    .line 2891
    :cond_e9
    sget-object p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 2893
    sget-object p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_UP:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 2897
    :cond_f3
    return-object v0
.end method

.method private greylist-max-o createAccessibilityNodeInfoForVirtualButton(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 10

    .line 2809
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 2810
    const-class v1, Landroid/widget/Button;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 2811
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/widget/NumberPicker;->access$4300(Landroid/widget/NumberPicker;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 2812
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v1, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    .line 2813
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 2814
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 2815
    const/4 p2, 0x1

    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 2816
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    .line 2817
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 2818
    iget v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    const/4 v2, 0x0

    if-ne v1, p1, :cond_3e

    move v1, p2

    goto :goto_3f

    :cond_3e
    move v1, v2

    :goto_3f
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    .line 2819
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    .line 2820
    invoke-virtual {v1, p3, p4, p5, p6}, Landroid/graphics/Rect;->set(IIII)V

    .line 2821
    iget-object p3, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    # invokes: Landroid/widget/NumberPicker;->isVisibleToUser(Landroid/graphics/Rect;)Z
    invoke-static {p3, v1}, Landroid/widget/NumberPicker;->access$4400(Landroid/widget/NumberPicker;Landroid/graphics/Rect;)Z

    move-result p3

    invoke-virtual {v0, p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 2822
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 2823
    nop

    .line 2824
    iget-object p3, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempArray:[I

    .line 2825
    iget-object p4, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {p4, p3}, Landroid/widget/NumberPicker;->getLocationOnScreen([I)V

    .line 2826
    aget p4, p3, v2

    aget p2, p3, p2

    invoke-virtual {v1, p4, p2}, Landroid/graphics/Rect;->offset(II)V

    .line 2827
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 2829
    iget p2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq p2, p1, :cond_6e

    .line 2830
    const/16 p2, 0x40

    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2832
    :cond_6e
    iget p2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne p2, p1, :cond_77

    .line 2833
    const/16 p1, 0x80

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2835
    :cond_77
    iget-object p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {p1}, Landroid/widget/NumberPicker;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_84

    .line 2836
    const/16 p1, 0x10

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2839
    :cond_84
    return-object v0
.end method

.method private greylist-max-o createAccessibiltyNodeInfoForInputText(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 10

    .line 2786
    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v0}, Landroid/widget/NumberPicker;->-$$Nest$fgetmInputText(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 2787
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    .line 2788
    iget v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_18

    move v1, v3

    goto :goto_19

    :cond_18
    move v1, v4

    :goto_19
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    .line 2789
    iget v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq v1, v2, :cond_25

    .line 2790
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2792
    :cond_25
    iget v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne v1, v2, :cond_2e

    .line 2793
    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2795
    :cond_2e
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    .line 2796
    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2797
    iget-object p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    # invokes: Landroid/widget/NumberPicker;->isVisibleToUser(Landroid/graphics/Rect;)Z
    invoke-static {p1, v1}, Landroid/widget/NumberPicker;->access$4200(Landroid/widget/NumberPicker;Landroid/graphics/Rect;)Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 2798
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 2799
    nop

    .line 2800
    iget-object p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempArray:[I

    .line 2801
    iget-object p2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {p2, p1}, Landroid/widget/NumberPicker;->getLocationOnScreen([I)V

    .line 2802
    aget p2, p1, v4

    aget p1, p1, v3

    invoke-virtual {v1, p2, p1}, Landroid/graphics/Rect;->offset(II)V

    .line 2803
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 2804
    return-object v0
.end method

.method private greylist-max-o findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)V"
        }
    .end annotation

    .line 2752
    packed-switch p2, :pswitch_data_96

    goto/16 :goto_95

    .line 2754
    :pswitch_5
    invoke-direct {p0}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->getVirtualDecrementButtonText()Ljava/lang/String;

    move-result-object p2

    .line 2755
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 2756
    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_25

    .line 2757
    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2759
    :cond_25
    return-void

    .line 2761
    :pswitch_26
    iget-object p2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {p2}, Landroid/widget/NumberPicker;->-$$Nest$fgetmInputText(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    .line 2762
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_4d

    .line 2763
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4d

    .line 2764
    invoke-virtual {p0, v1}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2765
    return-void

    .line 2767
    :cond_4d
    iget-object p2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {p2}, Landroid/widget/NumberPicker;->-$$Nest$fgetmInputText(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    .line 2768
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_73

    .line 2769
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_73

    .line 2770
    invoke-virtual {p0, v1}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2771
    return-void

    .line 2773
    :cond_73
    goto :goto_95

    .line 2775
    :pswitch_74
    invoke-direct {p0}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->getVirtualIncrementButtonText()Ljava/lang/String;

    move-result-object p2

    .line 2776
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_94

    .line 2777
    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_94

    .line 2778
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2780
    :cond_94
    return-void

    .line 2782
    :goto_95
    return-void

    :pswitch_data_96
    .packed-switch 0x1
        :pswitch_74
        :pswitch_26
        :pswitch_5
    .end packed-switch
.end method

.method private greylist-max-o getVirtualDecrementButtonText()Ljava/lang/String;
    .registers 4

    .line 2909
    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v0}, Landroid/widget/NumberPicker;->-$$Nest$fgetmValue(Landroid/widget/NumberPicker;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 2910
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1}, Landroid/widget/NumberPicker;->-$$Nest$fgetmWrapSelectorWheel(Landroid/widget/NumberPicker;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 2911
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1, v0}, Landroid/widget/NumberPicker;->-$$Nest$mgetWrappedSelectorIndex(Landroid/widget/NumberPicker;I)I

    move-result v0

    .line 2913
    :cond_16
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1}, Landroid/widget/NumberPicker;->-$$Nest$fgetmMinValue(Landroid/widget/NumberPicker;)I

    move-result v1

    if-lt v0, v1, :cond_3d

    .line 2914
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1}, Landroid/widget/NumberPicker;->-$$Nest$fgetmDisplayedValues(Landroid/widget/NumberPicker;)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2d

    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1, v0}, Landroid/widget/NumberPicker;->-$$Nest$mformatNumber(Landroid/widget/NumberPicker;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3c

    .line 2915
    :cond_2d
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1}, Landroid/widget/NumberPicker;->-$$Nest$fgetmDisplayedValues(Landroid/widget/NumberPicker;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v2}, Landroid/widget/NumberPicker;->-$$Nest$fgetmMinValue(Landroid/widget/NumberPicker;)I

    move-result v2

    sub-int/2addr v0, v2

    aget-object v0, v1, v0

    .line 2914
    :goto_3c
    return-object v0

    .line 2917
    :cond_3d
    const/4 v0, 0x0

    return-object v0
.end method

.method private greylist-max-o getVirtualIncrementButtonText()Ljava/lang/String;
    .registers 4

    .line 2921
    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v0}, Landroid/widget/NumberPicker;->-$$Nest$fgetmValue(Landroid/widget/NumberPicker;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 2922
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1}, Landroid/widget/NumberPicker;->-$$Nest$fgetmWrapSelectorWheel(Landroid/widget/NumberPicker;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 2923
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1, v0}, Landroid/widget/NumberPicker;->-$$Nest$mgetWrappedSelectorIndex(Landroid/widget/NumberPicker;I)I

    move-result v0

    .line 2925
    :cond_16
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1}, Landroid/widget/NumberPicker;->-$$Nest$fgetmMaxValue(Landroid/widget/NumberPicker;)I

    move-result v1

    if-gt v0, v1, :cond_3d

    .line 2926
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1}, Landroid/widget/NumberPicker;->-$$Nest$fgetmDisplayedValues(Landroid/widget/NumberPicker;)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2d

    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1, v0}, Landroid/widget/NumberPicker;->-$$Nest$mformatNumber(Landroid/widget/NumberPicker;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3c

    .line 2927
    :cond_2d
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1}, Landroid/widget/NumberPicker;->-$$Nest$fgetmDisplayedValues(Landroid/widget/NumberPicker;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v2}, Landroid/widget/NumberPicker;->-$$Nest$fgetmMinValue(Landroid/widget/NumberPicker;)I

    move-result v2

    sub-int/2addr v0, v2

    aget-object v0, v1, v0

    .line 2926
    :goto_3c
    return-object v0

    .line 2929
    :cond_3d
    const/4 v0, 0x0

    return-object v0
.end method

.method private greylist-max-o hasVirtualDecrementButton()Z
    .registers 3

    .line 2901
    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getWrapSelectorWheel()Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMinValue()I

    move-result v1

    if-le v0, v1, :cond_17

    goto :goto_19

    :cond_17
    const/4 v0, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 v0, 0x1

    :goto_1a
    return v0
.end method

.method private greylist-max-o hasVirtualIncrementButton()Z
    .registers 3

    .line 2905
    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getWrapSelectorWheel()Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMaxValue()I

    move-result v1

    if-ge v0, v1, :cond_17

    goto :goto_19

    :cond_17
    const/4 v0, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 v0, 0x1

    :goto_1a
    return v0
.end method

.method private greylist-max-o sendAccessibilityEventForVirtualButton(IILjava/lang/String;)V
    .registers 5

    .line 2739
    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/widget/NumberPicker;->access$4000(Landroid/widget/NumberPicker;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 2740
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p2

    .line 2741
    const-class v0, Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 2742
    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/widget/NumberPicker;->access$4100(Landroid/widget/NumberPicker;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 2743
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2744
    iget-object p3, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {p3}, Landroid/widget/NumberPicker;->isEnabled()Z

    move-result p3

    invoke-virtual {p2, p3}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 2745
    iget-object p3, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {p2, p3, p1}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    .line 2746
    iget-object p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    iget-object p3, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {p1, p3, p2}, Landroid/widget/NumberPicker;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 2748
    :cond_46
    return-void
.end method

.method private greylist-max-o sendAccessibilityEventForVirtualText(I)V
    .registers 4

    .line 2728
    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/widget/NumberPicker;->access$3900(Landroid/widget/NumberPicker;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 2729
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    .line 2730
    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v0}, Landroid/widget/NumberPicker;->-$$Nest$fgetmInputText(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2731
    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v0}, Landroid/widget/NumberPicker;->-$$Nest$fgetmInputText(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2732
    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    .line 2733
    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v1, p1}, Landroid/widget/NumberPicker;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 2735
    :cond_33
    return-void
.end method


# virtual methods
.method public whitelist createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 9

    .line 2501
    packed-switch p1, :pswitch_data_102

    .line 2521
    :pswitch_3
    move-object v0, p0

    invoke-super {p0, p1}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1

    .line 2506
    :pswitch_9
    nop

    .line 2507
    invoke-direct {p0}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->getVirtualDecrementButtonText()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mScrollX:I
    invoke-static {p1}, Landroid/widget/NumberPicker;->access$1700(Landroid/widget/NumberPicker;)I

    move-result v3

    iget-object p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mScrollY:I
    invoke-static {p1}, Landroid/widget/NumberPicker;->access$1800(Landroid/widget/NumberPicker;)I

    move-result v4

    iget-object p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 2508
    # getter for: Landroid/widget/NumberPicker;->mScrollX:I
    invoke-static {p1}, Landroid/widget/NumberPicker;->access$1900(Landroid/widget/NumberPicker;)I

    move-result p1

    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mRight:I
    invoke-static {v0}, Landroid/widget/NumberPicker;->access$2000(Landroid/widget/NumberPicker;)I

    move-result v0

    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mLeft:I
    invoke-static {v1}, Landroid/widget/NumberPicker;->access$2100(Landroid/widget/NumberPicker;)I

    move-result v1

    sub-int/2addr v0, v1

    add-int v5, p1, v0

    iget-object p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {p1}, Landroid/widget/NumberPicker;->-$$Nest$fgetmTopSelectionDividerTop(Landroid/widget/NumberPicker;)I

    move-result p1

    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v0}, Landroid/widget/NumberPicker;->-$$Nest$fgetmSelectionDividerHeight(Landroid/widget/NumberPicker;)I

    move-result v0

    add-int v6, p1, v0

    .line 2506
    const/4 v1, 0x3

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfoForVirtualButton(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1

    .line 2511
    :pswitch_44
    move-object v0, p0

    iget-object p1, v0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mScrollX:I
    invoke-static {p1}, Landroid/widget/NumberPicker;->access$2200(Landroid/widget/NumberPicker;)I

    move-result p1

    iget-object v1, v0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1}, Landroid/widget/NumberPicker;->-$$Nest$fgetmTopSelectionDividerTop(Landroid/widget/NumberPicker;)I

    move-result v1

    iget-object v2, v0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v2}, Landroid/widget/NumberPicker;->-$$Nest$fgetmSelectionDividerHeight(Landroid/widget/NumberPicker;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, v0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 2513
    # getter for: Landroid/widget/NumberPicker;->mScrollX:I
    invoke-static {v2}, Landroid/widget/NumberPicker;->access$2300(Landroid/widget/NumberPicker;)I

    move-result v2

    iget-object v3, v0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mRight:I
    invoke-static {v3}, Landroid/widget/NumberPicker;->access$2400(Landroid/widget/NumberPicker;)I

    move-result v3

    iget-object v4, v0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mLeft:I
    invoke-static {v4}, Landroid/widget/NumberPicker;->access$2500(Landroid/widget/NumberPicker;)I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr v2, v3

    iget-object v3, v0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v3}, Landroid/widget/NumberPicker;->-$$Nest$fgetmBottomSelectionDividerBottom(Landroid/widget/NumberPicker;)I

    move-result v3

    iget-object v4, v0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v4}, Landroid/widget/NumberPicker;->-$$Nest$fgetmSelectionDividerHeight(Landroid/widget/NumberPicker;)I

    move-result v4

    sub-int/2addr v3, v4

    .line 2511
    invoke-direct {p0, p1, v1, v2, v3}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibiltyNodeInfoForInputText(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1

    .line 2516
    :pswitch_7e
    move-object v0, p0

    .line 2517
    invoke-direct {p0}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->getVirtualIncrementButtonText()Ljava/lang/String;

    move-result-object v2

    iget-object p1, v0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mScrollX:I
    invoke-static {p1}, Landroid/widget/NumberPicker;->access$2600(Landroid/widget/NumberPicker;)I

    move-result v3

    iget-object p1, v0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {p1}, Landroid/widget/NumberPicker;->-$$Nest$fgetmBottomSelectionDividerBottom(Landroid/widget/NumberPicker;)I

    move-result p1

    iget-object v1, v0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1}, Landroid/widget/NumberPicker;->-$$Nest$fgetmSelectionDividerHeight(Landroid/widget/NumberPicker;)I

    move-result v1

    sub-int v4, p1, v1

    iget-object p1, v0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 2519
    # getter for: Landroid/widget/NumberPicker;->mScrollX:I
    invoke-static {p1}, Landroid/widget/NumberPicker;->access$2700(Landroid/widget/NumberPicker;)I

    move-result p1

    iget-object v1, v0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mRight:I
    invoke-static {v1}, Landroid/widget/NumberPicker;->access$2800(Landroid/widget/NumberPicker;)I

    move-result v1

    iget-object v5, v0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mLeft:I
    invoke-static {v5}, Landroid/widget/NumberPicker;->access$2900(Landroid/widget/NumberPicker;)I

    move-result v5

    sub-int/2addr v1, v5

    add-int v5, p1, v1

    iget-object p1, v0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mScrollY:I
    invoke-static {p1}, Landroid/widget/NumberPicker;->access$3000(Landroid/widget/NumberPicker;)I

    move-result p1

    iget-object v1, v0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mBottom:I
    invoke-static {v1}, Landroid/widget/NumberPicker;->access$3100(Landroid/widget/NumberPicker;)I

    move-result v1

    iget-object v6, v0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mTop:I
    invoke-static {v6}, Landroid/widget/NumberPicker;->access$3200(Landroid/widget/NumberPicker;)I

    move-result v6

    sub-int/2addr v1, v6

    add-int v6, p1, v1

    .line 2516
    const/4 v1, 0x1

    invoke-direct/range {v0 .. v6}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfoForVirtualButton(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1

    .line 2503
    :pswitch_c7
    move-object v0, p0

    iget-object p1, v0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mScrollX:I
    invoke-static {p1}, Landroid/widget/NumberPicker;->access$900(Landroid/widget/NumberPicker;)I

    move-result p1

    iget-object v1, v0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mScrollY:I
    invoke-static {v1}, Landroid/widget/NumberPicker;->access$1000(Landroid/widget/NumberPicker;)I

    move-result v1

    iget-object v2, v0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 2504
    # getter for: Landroid/widget/NumberPicker;->mScrollX:I
    invoke-static {v2}, Landroid/widget/NumberPicker;->access$1100(Landroid/widget/NumberPicker;)I

    move-result v2

    iget-object v3, v0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mRight:I
    invoke-static {v3}, Landroid/widget/NumberPicker;->access$1200(Landroid/widget/NumberPicker;)I

    move-result v3

    iget-object v4, v0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mLeft:I
    invoke-static {v4}, Landroid/widget/NumberPicker;->access$1300(Landroid/widget/NumberPicker;)I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr v2, v3

    iget-object v3, v0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mScrollY:I
    invoke-static {v3}, Landroid/widget/NumberPicker;->access$1400(Landroid/widget/NumberPicker;)I

    move-result v3

    iget-object v4, v0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mBottom:I
    invoke-static {v4}, Landroid/widget/NumberPicker;->access$1500(Landroid/widget/NumberPicker;)I

    move-result v4

    iget-object v5, v0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mTop:I
    invoke-static {v5}, Landroid/widget/NumberPicker;->access$1600(Landroid/widget/NumberPicker;)I

    move-result v5

    sub-int/2addr v4, v5

    add-int/2addr v3, v4

    .line 2503
    invoke-direct {p0, p1, v1, v2, v3}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfoForNumberPicker(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_102
    .packed-switch -0x1
        :pswitch_c7
        :pswitch_3
        :pswitch_7e
        :pswitch_44
        :pswitch_9
    .end packed-switch
.end method

.method public whitelist findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    .line 2527
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2528
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 2530
    :cond_b
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 2531
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2532
    packed-switch p2, :pswitch_data_2e

    .line 2550
    :pswitch_17
    invoke-super {p0, p1, p2}, Landroid/view/accessibility/AccessibilityNodeProvider;->findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 2545
    :pswitch_1c
    invoke-direct {p0, v0, p2, v1}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    .line 2547
    return-object v1

    .line 2534
    :pswitch_20
    const/4 p1, 0x3

    invoke-direct {p0, v0, p1, v1}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    .line 2536
    const/4 p1, 0x2

    invoke-direct {p0, v0, p1, v1}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    .line 2538
    const/4 p1, 0x1

    invoke-direct {p0, v0, p1, v1}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    .line 2540
    return-object v1

    nop

    :pswitch_data_2e
    .packed-switch -0x1
        :pswitch_20
        :pswitch_17
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
    .end packed-switch
.end method

.method public whitelist performAction(IILandroid/os/Bundle;)Z
    .registers 9

    .line 2555
    const/high16 v0, 0x10000

    const v1, 0x8000

    const/high16 v2, -0x80000000

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_1ba

    :pswitch_c
    goto/16 :goto_1b4

    .line 2673
    :pswitch_e
    sparse-switch p2, :sswitch_data_1c8

    .line 2702
    return v4

    .line 2693
    :sswitch_12
    iget p2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne p2, p1, :cond_2d

    .line 2694
    iput v2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2695
    invoke-virtual {p0, p1, v0}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 2697
    iget-object p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    iget-object p2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mRight:I
    invoke-static {p2}, Landroid/widget/NumberPicker;->access$3800(Landroid/widget/NumberPicker;)I

    move-result p2

    iget-object p3, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {p3}, Landroid/widget/NumberPicker;->-$$Nest$fgetmTopSelectionDividerTop(Landroid/widget/NumberPicker;)I

    move-result p3

    invoke-virtual {p1, v4, v4, p2, p3}, Landroid/widget/NumberPicker;->invalidate(IIII)V

    .line 2698
    return v3

    .line 2700
    :cond_2d
    return v4

    .line 2684
    :sswitch_2e
    iget p2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq p2, p1, :cond_49

    .line 2685
    iput p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2686
    invoke-virtual {p0, p1, v1}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 2688
    iget-object p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    iget-object p2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mRight:I
    invoke-static {p2}, Landroid/widget/NumberPicker;->access$3700(Landroid/widget/NumberPicker;)I

    move-result p2

    iget-object p3, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {p3}, Landroid/widget/NumberPicker;->-$$Nest$fgetmTopSelectionDividerTop(Landroid/widget/NumberPicker;)I

    move-result p3

    invoke-virtual {p1, v4, v4, p2, p3}, Landroid/widget/NumberPicker;->invalidate(IIII)V

    .line 2689
    return v3

    .line 2691
    :cond_49
    return v4

    .line 2675
    :sswitch_4a
    iget-object p2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {p2}, Landroid/widget/NumberPicker;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_5e

    .line 2676
    if-ne p1, v3, :cond_55

    move v4, v3

    .line 2677
    :cond_55
    iget-object p2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {p2, v4}, Landroid/widget/NumberPicker;->-$$Nest$mchangeValueByOne(Landroid/widget/NumberPicker;Z)V

    .line 2678
    invoke-virtual {p0, p1, v3}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 2680
    return v3

    .line 2682
    :cond_5e
    return v4

    .line 2592
    :pswitch_5f
    sparse-switch p2, :sswitch_data_1d6

    .line 2638
    iget-object p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {p1}, Landroid/widget/NumberPicker;->-$$Nest$fgetmInputText(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Landroid/widget/EditText;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p1

    return p1

    .line 2629
    :sswitch_6d
    iget p2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne p2, p1, :cond_80

    .line 2630
    iput v2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2631
    invoke-virtual {p0, p1, v0}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 2633
    iget-object p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {p1}, Landroid/widget/NumberPicker;->-$$Nest$fgetmInputText(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->invalidate()V

    .line 2634
    return v3

    .line 2636
    :cond_80
    return v4

    .line 2620
    :sswitch_81
    iget p2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq p2, p1, :cond_94

    .line 2621
    iput p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2622
    invoke-virtual {p0, p1, v1}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 2624
    iget-object p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {p1}, Landroid/widget/NumberPicker;->-$$Nest$fgetmInputText(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->invalidate()V

    .line 2625
    return v3

    .line 2627
    :cond_94
    return v4

    .line 2613
    :sswitch_95
    iget-object p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {p1}, Landroid/widget/NumberPicker;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_a3

    .line 2614
    iget-object p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {p1}, Landroid/widget/NumberPicker;->performLongClick()Z

    .line 2615
    return v3

    .line 2617
    :cond_a3
    return v4

    .line 2606
    :sswitch_a4
    iget-object p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {p1}, Landroid/widget/NumberPicker;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_b2

    .line 2607
    iget-object p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {p1}, Landroid/widget/NumberPicker;->performClick()Z

    .line 2608
    return v3

    .line 2610
    :cond_b2
    return v4

    .line 2599
    :sswitch_b3
    iget-object p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {p1}, Landroid/widget/NumberPicker;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_d1

    iget-object p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {p1}, Landroid/widget/NumberPicker;->-$$Nest$fgetmInputText(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_d1

    .line 2600
    iget-object p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {p1}, Landroid/widget/NumberPicker;->-$$Nest$fgetmInputText(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->clearFocus()V

    .line 2601
    return v3

    .line 2603
    :cond_d1
    return v4

    .line 2594
    :sswitch_d2
    iget-object p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {p1}, Landroid/widget/NumberPicker;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_f1

    iget-object p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {p1}, Landroid/widget/NumberPicker;->-$$Nest$fgetmInputText(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->isFocused()Z

    move-result p1

    if-nez p1, :cond_f1

    .line 2595
    iget-object p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {p1}, Landroid/widget/NumberPicker;->-$$Nest$fgetmInputText(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    move-result p1

    return p1

    .line 2641
    :cond_f1
    return v4

    .line 2643
    :pswitch_f2
    sparse-switch p2, :sswitch_data_1f0

    .line 2671
    return v4

    .line 2662
    :sswitch_f6
    iget p2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne p2, p1, :cond_117

    .line 2663
    iput v2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2664
    invoke-virtual {p0, p1, v0}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 2666
    iget-object p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    iget-object p2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {p2}, Landroid/widget/NumberPicker;->-$$Nest$fgetmBottomSelectionDividerBottom(Landroid/widget/NumberPicker;)I

    move-result p2

    iget-object p3, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mRight:I
    invoke-static {p3}, Landroid/widget/NumberPicker;->access$3500(Landroid/widget/NumberPicker;)I

    move-result p3

    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mBottom:I
    invoke-static {v0}, Landroid/widget/NumberPicker;->access$3600(Landroid/widget/NumberPicker;)I

    move-result v0

    invoke-virtual {p1, v4, p2, p3, v0}, Landroid/widget/NumberPicker;->invalidate(IIII)V

    .line 2667
    return v3

    .line 2669
    :cond_117
    return v4

    .line 2653
    :sswitch_118
    iget p2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq p2, p1, :cond_139

    .line 2654
    iput p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2655
    invoke-virtual {p0, p1, v1}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 2657
    iget-object p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    iget-object p2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {p2}, Landroid/widget/NumberPicker;->-$$Nest$fgetmBottomSelectionDividerBottom(Landroid/widget/NumberPicker;)I

    move-result p2

    iget-object p3, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mRight:I
    invoke-static {p3}, Landroid/widget/NumberPicker;->access$3300(Landroid/widget/NumberPicker;)I

    move-result p3

    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mBottom:I
    invoke-static {v0}, Landroid/widget/NumberPicker;->access$3400(Landroid/widget/NumberPicker;)I

    move-result v0

    invoke-virtual {p1, v4, p2, p3, v0}, Landroid/widget/NumberPicker;->invalidate(IIII)V

    .line 2658
    return v3

    .line 2660
    :cond_139
    return v4

    .line 2645
    :sswitch_13a
    iget-object p2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {p2}, Landroid/widget/NumberPicker;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_14b

    .line 2646
    iget-object p2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {p2, v3}, Landroid/widget/NumberPicker;->-$$Nest$mchangeValueByOne(Landroid/widget/NumberPicker;Z)V

    .line 2647
    invoke-virtual {p0, p1, v3}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 2649
    return v3

    .line 2651
    :cond_14b
    return v4

    .line 2557
    :pswitch_14c
    sparse-switch p2, :sswitch_data_1fe

    .line 2590
    goto :goto_1b4

    .line 2583
    :sswitch_150
    iget-object p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {p1}, Landroid/widget/NumberPicker;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_174

    iget-object p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 2584
    invoke-virtual {p1}, Landroid/widget/NumberPicker;->getWrapSelectorWheel()Z

    move-result p1

    if-nez p1, :cond_16e

    iget-object p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {p1}, Landroid/widget/NumberPicker;->getValue()I

    move-result p1

    iget-object p2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {p2}, Landroid/widget/NumberPicker;->getMinValue()I

    move-result p2

    if-le p1, p2, :cond_174

    .line 2585
    :cond_16e
    iget-object p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {p1, v4}, Landroid/widget/NumberPicker;->-$$Nest$mchangeValueByOne(Landroid/widget/NumberPicker;Z)V

    .line 2586
    return v3

    .line 2588
    :cond_174
    return v4

    .line 2575
    :sswitch_175
    iget-object p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {p1}, Landroid/widget/NumberPicker;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_199

    iget-object p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 2576
    invoke-virtual {p1}, Landroid/widget/NumberPicker;->getWrapSelectorWheel()Z

    move-result p1

    if-nez p1, :cond_193

    iget-object p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {p1}, Landroid/widget/NumberPicker;->getValue()I

    move-result p1

    iget-object p2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {p2}, Landroid/widget/NumberPicker;->getMaxValue()I

    move-result p2

    if-ge p1, p2, :cond_199

    .line 2577
    :cond_193
    iget-object p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {p1, v3}, Landroid/widget/NumberPicker;->-$$Nest$mchangeValueByOne(Landroid/widget/NumberPicker;Z)V

    .line 2578
    return v3

    .line 2580
    :cond_199
    return v4

    .line 2566
    :sswitch_19a
    iget p2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne p2, p1, :cond_1a6

    .line 2567
    iput v2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2568
    iget-object p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {p1}, Landroid/widget/NumberPicker;->clearAccessibilityFocus()V

    .line 2569
    return v3

    .line 2571
    :cond_1a6
    return v4

    .line 2559
    :sswitch_1a7
    iget p2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq p2, p1, :cond_1b3

    .line 2560
    iput p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2561
    iget-object p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {p1}, Landroid/widget/NumberPicker;->requestAccessibilityFocus()Z

    .line 2562
    return v3

    .line 2564
    :cond_1b3
    return v4

    .line 2704
    :goto_1b4
    invoke-super {p0, p1, p2, p3}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_1ba
    .packed-switch -0x1
        :pswitch_14c
        :pswitch_c
        :pswitch_f2
        :pswitch_5f
        :pswitch_e
    .end packed-switch

    :sswitch_data_1c8
    .sparse-switch
        0x10 -> :sswitch_4a
        0x40 -> :sswitch_2e
        0x80 -> :sswitch_12
    .end sparse-switch

    :sswitch_data_1d6
    .sparse-switch
        0x1 -> :sswitch_d2
        0x2 -> :sswitch_b3
        0x10 -> :sswitch_a4
        0x20 -> :sswitch_95
        0x40 -> :sswitch_81
        0x80 -> :sswitch_6d
    .end sparse-switch

    :sswitch_data_1f0
    .sparse-switch
        0x10 -> :sswitch_13a
        0x40 -> :sswitch_118
        0x80 -> :sswitch_f6
    .end sparse-switch

    :sswitch_data_1fe
    .sparse-switch
        0x40 -> :sswitch_1a7
        0x80 -> :sswitch_19a
        0x1000 -> :sswitch_175
        0x2000 -> :sswitch_150
        0x1020038 -> :sswitch_150
        0x102003a -> :sswitch_175
    .end sparse-switch
.end method

.method public greylist-max-o sendAccessibilityEventForVirtualView(II)V
    .registers 4

    .line 2708
    packed-switch p1, :pswitch_data_26

    goto :goto_25

    .line 2710
    :pswitch_4
    invoke-direct {p0}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->hasVirtualDecrementButton()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 2711
    nop

    .line 2712
    invoke-direct {p0}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->getVirtualDecrementButtonText()Ljava/lang/String;

    move-result-object v0

    .line 2711
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualButton(IILjava/lang/String;)V

    goto :goto_25

    .line 2716
    :pswitch_13
    invoke-direct {p0, p2}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualText(I)V

    .line 2717
    goto :goto_25

    .line 2719
    :pswitch_17
    invoke-direct {p0}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->hasVirtualIncrementButton()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 2720
    nop

    .line 2721
    invoke-direct {p0}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->getVirtualIncrementButtonText()Ljava/lang/String;

    move-result-object v0

    .line 2720
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualButton(IILjava/lang/String;)V

    .line 2725
    :cond_25
    :goto_25
    return-void

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_17
        :pswitch_13
        :pswitch_4
    .end packed-switch
.end method
