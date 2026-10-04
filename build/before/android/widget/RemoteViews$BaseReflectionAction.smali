.class abstract Landroid/widget/RemoteViews$BaseReflectionAction;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "BaseReflectionAction"
.end annotation


# static fields
.field static final blacklist BITMAP:I = 0xc

.field static final blacklist BLEND_MODE:I = 0x11

.field static final blacklist BOOLEAN:I = 0x1

.field static final blacklist BUNDLE:I = 0xd

.field static final blacklist BYTE:I = 0x2

.field static final blacklist CHAR:I = 0x8

.field static final blacklist CHAR_SEQUENCE:I = 0xa

.field static final blacklist COLOR_STATE_LIST:I = 0xf

.field static final blacklist DOUBLE:I = 0x7

.field static final blacklist DURATION:I = 0x13

.field static final blacklist FLOAT:I = 0x6

.field static final blacklist ICON:I = 0x10

.field static final blacklist INSTANT:I = 0x12

.field static final blacklist INT:I = 0x4

.field static final blacklist INTENT:I = 0xe

.field static final blacklist LONG:I = 0x5

.field static final blacklist SHORT:I = 0x3

.field static final blacklist STRING:I = 0x9

.field static final blacklist URI:I = 0xb


# instance fields
.field greylist mMethodName:Ljava/lang/String;

.field blacklist mType:I


# direct methods
.method constructor blacklist <init>(ILjava/lang/String;I)V
    .registers 5

    .line 2751
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews-IA;)V

    .line 2752
    iput p1, p0, Landroid/widget/RemoteViews$BaseReflectionAction;->mViewId:I

    .line 2753
    iput-object p2, p0, Landroid/widget/RemoteViews$BaseReflectionAction;->mMethodName:Ljava/lang/String;

    .line 2754
    iput p3, p0, Landroid/widget/RemoteViews$BaseReflectionAction;->mType:I

    .line 2755
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 2757
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews-IA;)V

    .line 2758
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$BaseReflectionAction;->mViewId:I

    .line 2759
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews$BaseReflectionAction;->mMethodName:Ljava/lang/String;

    .line 2760
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$BaseReflectionAction;->mType:I

    .line 2766
    return-void
.end method


# virtual methods
.method public final blacklist apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$ActionApplyParams;)V
    .registers 6

    .line 2786
    iget p2, p0, Landroid/widget/RemoteViews$BaseReflectionAction;->mViewId:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 2787
    if-nez p1, :cond_9

    return-void

    .line 2789
    :cond_9
    iget p2, p0, Landroid/widget/RemoteViews$BaseReflectionAction;->mType:I

    invoke-static {p2}, Landroid/widget/RemoteViews;->-$$Nest$smgetParameterType(I)Ljava/lang/Class;

    move-result-object p2

    .line 2790
    if-eqz p2, :cond_29

    .line 2793
    invoke-virtual {p0, p1}, Landroid/widget/RemoteViews$BaseReflectionAction;->getParameterValue(Landroid/view/View;)Ljava/lang/Object;

    move-result-object p3

    .line 2795
    :try_start_15
    iget-object v0, p0, Landroid/widget/RemoteViews$BaseReflectionAction;->mMethodName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, v0, p2, v1}, Landroid/widget/RemoteViews;->-$$Nest$smgetMethod(Landroid/view/View;Ljava/lang/String;Ljava/lang/Class;Z)Ljava/lang/invoke/MethodHandle;

    move-result-object p2

    invoke-polymorphic {p2, p1, p3}, Ljava/lang/invoke/MethodHandle;->invoke([Ljava/lang/Object;)Ljava/lang/Object;, (Landroid/view/View;Ljava/lang/Object;)V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_22

    .line 2798
    nop

    .line 2799
    return-void

    .line 2796
    :catchall_22
    move-exception p1

    .line 2797
    new-instance p2, Landroid/widget/RemoteViews$ActionException;

    invoke-direct {p2, p1}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 2791
    :cond_29
    new-instance p1, Landroid/widget/RemoteViews$ActionException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "bad type: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p3, p0, Landroid/widget/RemoteViews$BaseReflectionAction;->mType:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected abstract blacklist getParameterValue(Landroid/view/View;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/widget/RemoteViews$ActionException;
        }
    .end annotation
.end method

.method public final blacklist getUniqueKey()Ljava/lang/String;
    .registers 3

    .line 2865
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Landroid/widget/RemoteViews$Action;->getUniqueKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/RemoteViews$BaseReflectionAction;->mMethodName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/RemoteViews$BaseReflectionAction;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist initActionAsync(Landroid/widget/RemoteViews$ViewTree;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$ActionApplyParams;)Landroid/widget/RemoteViews$Action;
    .registers 8

    .line 2804
    iget p2, p0, Landroid/widget/RemoteViews$BaseReflectionAction;->mViewId:I

    invoke-virtual {p1, p2}, Landroid/widget/RemoteViews$ViewTree;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 2805
    if-nez p2, :cond_d

    invoke-static {}, Landroid/widget/RemoteViews;->-$$Nest$sfgetACTION_NOOP()Landroid/widget/RemoteViews$Action;

    move-result-object p1

    return-object p1

    .line 2807
    :cond_d
    iget p3, p0, Landroid/widget/RemoteViews$BaseReflectionAction;->mType:I

    invoke-static {p3}, Landroid/widget/RemoteViews;->-$$Nest$smgetParameterType(I)Ljava/lang/Class;

    move-result-object p3

    .line 2808
    if-eqz p3, :cond_79

    .line 2812
    invoke-virtual {p0, p2}, Landroid/widget/RemoteViews$BaseReflectionAction;->getParameterValue(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v0

    .line 2814
    :try_start_19
    iget-object v1, p0, Landroid/widget/RemoteViews$BaseReflectionAction;->mMethodName:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {p2, v1, p3, v2}, Landroid/widget/RemoteViews;->-$$Nest$smgetMethod(Landroid/view/View;Ljava/lang/String;Ljava/lang/Class;Z)Ljava/lang/invoke/MethodHandle;

    move-result-object p3

    .line 2818
    instance-of v1, v0, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2a

    move-object v1, v0

    check-cast v1, Landroid/graphics/Bitmap;

    .line 2819
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->prepareToDraw()V

    .line 2822
    :cond_2a
    instance-of v1, v0, Landroid/graphics/drawable/Icon;

    if-eqz v1, :cond_47

    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/Icon;

    .line 2823
    invoke-virtual {v1}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v3

    if-eq v3, v2, :cond_3e

    .line 2824
    invoke-virtual {v1}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_47

    .line 2825
    :cond_3e
    invoke-virtual {v1}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2826
    if-eqz v1, :cond_47

    .line 2827
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->prepareToDraw()V

    .line 2831
    :cond_47
    if-eqz p3, :cond_70

    .line 2832
    invoke-polymorphic {p3, p2, v0}, Ljava/lang/invoke/MethodHandle;->invoke([Ljava/lang/Object;)Ljava/lang/Object;, (Landroid/view/View;Ljava/lang/Object;)Ljava/lang/Runnable;

    move-result-object p2

    .line 2833
    if-nez p2, :cond_55

    .line 2834
    invoke-static {}, Landroid/widget/RemoteViews;->-$$Nest$sfgetACTION_NOOP()Landroid/widget/RemoteViews$Action;

    move-result-object p1

    return-object p1

    .line 2837
    :cond_55
    instance-of p3, p2, Landroid/view/ViewStub$ViewReplaceRunnable;

    if-eqz p3, :cond_6a

    .line 2838
    invoke-virtual {p1}, Landroid/widget/RemoteViews$ViewTree;->createTree()V

    .line 2840
    iget p3, p0, Landroid/widget/RemoteViews$BaseReflectionAction;->mViewId:I

    invoke-virtual {p1, p3}, Landroid/widget/RemoteViews$ViewTree;->findViewTreeById(I)Landroid/widget/RemoteViews$ViewTree;

    move-result-object p1

    move-object p3, p2

    check-cast p3, Landroid/view/ViewStub$ViewReplaceRunnable;

    iget-object p3, p3, Landroid/view/ViewStub$ViewReplaceRunnable;->view:Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/widget/RemoteViews$ViewTree;->replaceView(Landroid/view/View;)V

    .line 2843
    :cond_6a
    new-instance p1, Landroid/widget/RemoteViews$RunnableAction;

    invoke-direct {p1, p2}, Landroid/widget/RemoteViews$RunnableAction;-><init>(Ljava/lang/Runnable;)V
    :try_end_6f
    .catchall {:try_start_19 .. :try_end_6f} :catchall_72

    return-object p1

    .line 2847
    :cond_70
    nop

    .line 2849
    return-object p0

    .line 2845
    :catchall_72
    move-exception p1

    .line 2846
    new-instance p2, Landroid/widget/RemoteViews$ActionException;

    invoke-direct {p2, p1}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 2809
    :cond_79
    new-instance p1, Landroid/widget/RemoteViews$ActionException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "bad type: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p3, p0, Landroid/widget/RemoteViews$BaseReflectionAction;->mType:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final blacklist mergeBehavior()I
    .registers 3

    .line 2854
    iget-object v0, p0, Landroid/widget/RemoteViews$BaseReflectionAction;->mMethodName:Ljava/lang/String;

    const-string/jumbo v1, "smoothScrollBy"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2855
    const/4 v0, 0x1

    return v0

    .line 2857
    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public final blacklist prefersAsyncApply()Z
    .registers 3

    .line 2870
    iget v0, p0, Landroid/widget/RemoteViews$BaseReflectionAction;->mType:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_f

    iget v0, p0, Landroid/widget/RemoteViews$BaseReflectionAction;->mType:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_d

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

.method public blacklist visitIcons(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/drawable/Icon;",
            ">;)V"
        }
    .end annotation

    .line 2890
    iget v0, p0, Landroid/widget/RemoteViews$BaseReflectionAction;->mType:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_14

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/RemoteViews$BaseReflectionAction;->getParameterValue(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroid/graphics/drawable/Icon;

    if-eqz v1, :cond_14

    check-cast v0, Landroid/graphics/drawable/Icon;

    .line 2891
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 2893
    :cond_14
    return-void
.end method

.method public blacklist visitUris(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 2875
    iget v0, p0, Landroid/widget/RemoteViews$BaseReflectionAction;->mType:I

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_20

    goto :goto_1e

    .line 2881
    :sswitch_7
    invoke-virtual {p0, v1}, Landroid/widget/RemoteViews$BaseReflectionAction;->getParameterValue(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    .line 2882
    if-eqz v0, :cond_1e

    invoke-static {v0, p1}, Landroid/widget/RemoteViews;->-$$Nest$smvisitIconUri(Landroid/graphics/drawable/Icon;Ljava/util/function/Consumer;)V

    goto :goto_1e

    .line 2877
    :sswitch_13
    invoke-virtual {p0, v1}, Landroid/widget/RemoteViews$BaseReflectionAction;->getParameterValue(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 2878
    if-eqz v0, :cond_1e

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 2886
    :cond_1e
    :goto_1e
    return-void

    nop

    :sswitch_data_20
    .sparse-switch
        0xb -> :sswitch_13
        0x10 -> :sswitch_7
    .end sparse-switch
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 2769
    iget p2, p0, Landroid/widget/RemoteViews$BaseReflectionAction;->mViewId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2770
    iget-object p2, p0, Landroid/widget/RemoteViews$BaseReflectionAction;->mMethodName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 2771
    iget p2, p0, Landroid/widget/RemoteViews$BaseReflectionAction;->mType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2772
    return-void
.end method
