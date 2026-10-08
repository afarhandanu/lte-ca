.class Landroid/widget/RemoteViews$RemoveFromParentAction;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RemoveFromParentAction"
.end annotation


# direct methods
.method constructor blacklist <init>(I)V
    .registers 3

    .line 4613
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews-IA;)V

    .line 4614
    iput p1, p0, Landroid/widget/RemoteViews$RemoveFromParentAction;->mViewId:I

    .line 4615
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 4617
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews-IA;)V

    .line 4618
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$RemoveFromParentAction;->mViewId:I

    .line 4619
    return-void
.end method

.method public static blacklist createFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/widget/RemoteViews$PendingResources;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoInputStream;",
            ")",
            "Landroid/widget/RemoteViews$PendingResources<",
            "Landroid/widget/RemoteViews$Action;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4691
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    .line 4693
    const-wide v1, 0x10b00000007L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v1

    .line 4694
    :goto_e
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v3

    const/4 v4, -0x1

    const-wide v5, 0x10900000001L

    if-eq v3, v4, :cond_47

    .line 4695
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v3

    packed-switch v3, :pswitch_data_5a

    .line 4701
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unhandled field while reading RemoteViews proto!\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4702
    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4701
    const-string v4, "RemoteViews"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 4697
    :pswitch_3e
    nop

    .line 4698
    invoke-virtual {p0, v5, v6}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v3

    .line 4697
    invoke-virtual {v0, v5, v6, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 4699
    goto :goto_e

    .line 4705
    :cond_47
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 4707
    const/4 p0, 0x1

    new-array p0, p0, [J

    const/4 v1, 0x0

    aput-wide v5, p0, v1

    invoke-static {v0, p0}, Landroid/widget/RemoteViews;->-$$Nest$smcheckContainsKeys(Landroid/util/LongSparseArray;[J)V

    .line 4709
    new-instance p0, Landroid/widget/RemoteViews$RemoveFromParentAction$$ExternalSyntheticLambda0;

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$RemoveFromParentAction$$ExternalSyntheticLambda0;-><init>(Landroid/util/LongSparseArray;)V

    return-object p0

    nop

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_3e
    .end packed-switch
.end method

.method static synthetic blacklist lambda$createFromProto$0(Landroid/util/LongSparseArray;Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/RemoteViews$HierarchyRootData;I)Landroid/widget/RemoteViews$Action;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4710
    const-wide p3, 0x10900000001L

    invoke-static {p2, p0, p3, p4}, Landroid/widget/RemoteViews;->-$$Nest$smgetAsIdentifier(Landroid/content/res/Resources;Landroid/util/LongSparseArray;J)I

    move-result p0

    .line 4712
    new-instance p1, Landroid/widget/RemoteViews$RemoveFromParentAction;

    invoke-direct {p1, p0}, Landroid/widget/RemoteViews$RemoveFromParentAction;-><init>(I)V

    return-object p1
.end method


# virtual methods
.method public blacklist apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$ActionApplyParams;)V
    .registers 4

    .line 4627
    iget p2, p0, Landroid/widget/RemoteViews$RemoveFromParentAction;->mViewId:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 4629
    if-eqz p2, :cond_19

    if-ne p2, p1, :cond_b

    goto :goto_19

    .line 4633
    :cond_b
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 4634
    instance-of p3, p1, Landroid/view/ViewManager;

    if-eqz p3, :cond_18

    .line 4635
    check-cast p1, Landroid/view/ViewManager;

    invoke-interface {p1, p2}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    .line 4637
    :cond_18
    return-void

    .line 4630
    :cond_19
    :goto_19
    return-void
.end method

.method public blacklist canWriteToProto()Z
    .registers 2

    .line 4678
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getActionTag()I
    .registers 2

    .line 4668
    const/16 v0, 0x17

    return v0
.end method

.method public blacklist initActionAsync(Landroid/widget/RemoteViews$ViewTree;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$ActionApplyParams;)Landroid/widget/RemoteViews$Action;
    .registers 4

    .line 4644
    invoke-virtual {p1}, Landroid/widget/RemoteViews$ViewTree;->createTree()V

    .line 4645
    iget p2, p0, Landroid/widget/RemoteViews$RemoveFromParentAction;->mViewId:I

    invoke-virtual {p1, p2}, Landroid/widget/RemoteViews$ViewTree;->findViewTreeById(I)Landroid/widget/RemoteViews$ViewTree;

    move-result-object p2

    .line 4647
    if-eqz p2, :cond_31

    if-ne p2, p1, :cond_e

    goto :goto_31

    .line 4651
    :cond_e
    invoke-virtual {p1, p2}, Landroid/widget/RemoteViews$ViewTree;->findViewTreeParentOf(Landroid/widget/RemoteViews$ViewTree;)Landroid/widget/RemoteViews$ViewTree;

    move-result-object p1

    .line 4652
    if-eqz p1, :cond_2c

    iget-object p3, p1, Landroid/widget/RemoteViews$ViewTree;->mRoot:Landroid/view/View;

    instance-of p3, p3, Landroid/view/ViewManager;

    if-nez p3, :cond_1b

    goto :goto_2c

    .line 4655
    :cond_1b
    iget-object p3, p1, Landroid/widget/RemoteViews$ViewTree;->mRoot:Landroid/view/View;

    check-cast p3, Landroid/view/ViewManager;

    .line 4657
    invoke-static {p1}, Landroid/widget/RemoteViews$ViewTree;->-$$Nest$fgetmChildren(Landroid/widget/RemoteViews$ViewTree;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4658
    new-instance p1, Landroid/widget/RemoteViews$RemoveFromParentAction$1;

    invoke-direct {p1, p0, p3, p2}, Landroid/widget/RemoteViews$RemoveFromParentAction$1;-><init>(Landroid/widget/RemoteViews$RemoveFromParentAction;Landroid/view/ViewManager;Landroid/widget/RemoteViews$ViewTree;)V

    return-object p1

    .line 4653
    :cond_2c
    :goto_2c
    invoke-static {}, Landroid/widget/RemoteViews;->-$$Nest$sfgetACTION_NOOP()Landroid/widget/RemoteViews$Action;

    move-result-object p1

    return-object p1

    .line 4648
    :cond_31
    :goto_31
    invoke-static {}, Landroid/widget/RemoteViews;->-$$Nest$sfgetACTION_NOOP()Landroid/widget/RemoteViews$Action;

    move-result-object p1

    return-object p1
.end method

.method public blacklist mergeBehavior()I
    .registers 2

    .line 4673
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 4622
    iget p2, p0, Landroid/widget/RemoteViews$RemoveFromParentAction;->mViewId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4623
    return-void
.end method

.method public blacklist writeToProto(Landroid/util/proto/ProtoOutputStream;Landroid/content/Context;Landroid/content/res/Resources;)V
    .registers 8

    .line 4683
    const-wide v0, 0x10b00000007L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 4684
    iget p2, p0, Landroid/widget/RemoteViews$RemoveFromParentAction;->mViewId:I

    .line 4685
    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p2

    .line 4684
    const-wide v2, 0x10900000001L

    invoke-virtual {p1, v2, v3, p2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 4686
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 4687
    return-void
.end method
