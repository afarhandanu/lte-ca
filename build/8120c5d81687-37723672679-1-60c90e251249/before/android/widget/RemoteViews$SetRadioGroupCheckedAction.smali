.class Landroid/widget/RemoteViews$SetRadioGroupCheckedAction;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SetRadioGroupCheckedAction"
.end annotation


# instance fields
.field private final blacklist mCheckedId:I


# direct methods
.method constructor blacklist <init>(II)V
    .registers 4

    .line 5730
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews-IA;)V

    .line 5731
    iput p1, p0, Landroid/widget/RemoteViews$SetRadioGroupCheckedAction;->mViewId:I

    .line 5732
    iput p2, p0, Landroid/widget/RemoteViews$SetRadioGroupCheckedAction;->mCheckedId:I

    .line 5733
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 5735
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews-IA;)V

    .line 5736
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$SetRadioGroupCheckedAction;->mViewId:I

    .line 5737
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$SetRadioGroupCheckedAction;->mCheckedId:I

    .line 5738
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

    .line 5809
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    .line 5811
    const-wide v1, 0x10b0000000dL

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v1

    .line 5812
    :goto_e
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v3

    const/4 v4, -0x1

    const-wide v5, 0x10900000001L

    if-eq v3, v4, :cond_55

    .line 5813
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v3

    packed-switch v3, :pswitch_data_68

    .line 5824
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unhandled field while reading RemoteViews proto!\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5825
    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5824
    const-string v4, "RemoteViews"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 5819
    :pswitch_3e
    nop

    .line 5820
    const-wide v3, 0x10900000002L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v5

    .line 5819
    invoke-virtual {v0, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 5822
    goto :goto_e

    .line 5815
    :pswitch_4c
    nop

    .line 5816
    invoke-virtual {p0, v5, v6}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v3

    .line 5815
    invoke-virtual {v0, v5, v6, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 5817
    goto :goto_e

    .line 5828
    :cond_55
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 5830
    const/4 p0, 0x1

    new-array p0, p0, [J

    const/4 v1, 0x0

    aput-wide v5, p0, v1

    invoke-static {v0, p0}, Landroid/widget/RemoteViews;->-$$Nest$smcheckContainsKeys(Landroid/util/LongSparseArray;[J)V

    .line 5833
    new-instance p0, Landroid/widget/RemoteViews$SetRadioGroupCheckedAction$$ExternalSyntheticLambda0;

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$SetRadioGroupCheckedAction$$ExternalSyntheticLambda0;-><init>(Landroid/util/LongSparseArray;)V

    return-object p0

    nop

    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_4c
        :pswitch_3e
    .end packed-switch
.end method

.method static synthetic blacklist lambda$createFromProto$0(Landroid/util/LongSparseArray;Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/RemoteViews$HierarchyRootData;I)Landroid/widget/RemoteViews$Action;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5834
    const-wide p3, 0x10900000001L

    invoke-static {p2, p0, p3, p4}, Landroid/widget/RemoteViews;->-$$Nest$smgetAsIdentifier(Landroid/content/res/Resources;Landroid/util/LongSparseArray;J)I

    move-result p1

    .line 5837
    const-wide p3, 0x10900000002L

    invoke-virtual {p0, p3, p4}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    move-result v0

    if-ltz v0, :cond_19

    .line 5839
    invoke-static {p2, p0, p3, p4}, Landroid/widget/RemoteViews;->-$$Nest$smgetAsIdentifier(Landroid/content/res/Resources;Landroid/util/LongSparseArray;J)I

    move-result p0

    goto :goto_1a

    .line 5840
    :cond_19
    const/4 p0, -0x1

    .line 5841
    :goto_1a
    new-instance p2, Landroid/widget/RemoteViews$SetRadioGroupCheckedAction;

    invoke-direct {p2, p1, p0}, Landroid/widget/RemoteViews$SetRadioGroupCheckedAction;-><init>(II)V

    return-object p2
.end method


# virtual methods
.method public blacklist apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$ActionApplyParams;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/widget/RemoteViews$ActionException;
        }
    .end annotation

    .line 5749
    iget p2, p0, Landroid/widget/RemoteViews$SetRadioGroupCheckedAction;->mViewId:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 5750
    if-nez p1, :cond_9

    return-void

    .line 5752
    :cond_9
    instance-of p2, p1, Landroid/widget/RadioGroup;

    if-nez p2, :cond_2e

    .line 5753
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cannot check "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Landroid/widget/RemoteViews$SetRadioGroupCheckedAction;->mViewId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " because it\'s not a RadioGroup"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RemoteViews"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5754
    return-void

    .line 5757
    :cond_2e
    check-cast p1, Landroid/widget/RadioGroup;

    .line 5760
    const/4 p2, 0x0

    move p3, p2

    :goto_32
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v0

    const v1, 0x10204b5

    if-ge p3, v0, :cond_56

    .line 5761
    invoke-virtual {p1, p3}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5762
    instance-of v2, v0, Landroid/widget/CompoundButton;

    if-nez v2, :cond_44

    goto :goto_53

    .line 5764
    :cond_44
    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 5765
    instance-of v1, v1, Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-nez v1, :cond_4d

    goto :goto_53

    .line 5768
    :cond_4d
    check-cast v0, Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 5760
    :goto_53
    add-int/lit8 p3, p3, 0x1

    goto :goto_32

    .line 5771
    :cond_56
    iget p3, p0, Landroid/widget/RemoteViews$SetRadioGroupCheckedAction;->mCheckedId:I

    invoke-virtual {p1, p3}, Landroid/widget/RadioGroup;->check(I)V

    .line 5774
    nop

    :goto_5c
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result p3

    if-ge p2, p3, :cond_7e

    .line 5775
    invoke-virtual {p1, p2}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 5776
    instance-of v0, p3, Landroid/widget/CompoundButton;

    if-nez v0, :cond_6b

    goto :goto_7b

    .line 5778
    :cond_6b
    invoke-virtual {p3, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 5779
    instance-of v2, v0, Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-nez v2, :cond_74

    goto :goto_7b

    .line 5781
    :cond_74
    check-cast p3, Landroid/widget/CompoundButton;

    check-cast v0, Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p3, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 5774
    :goto_7b
    add-int/lit8 p2, p2, 0x1

    goto :goto_5c

    .line 5783
    :cond_7e
    return-void
.end method

.method public blacklist canWriteToProto()Z
    .registers 2

    .line 5792
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getActionTag()I
    .registers 2

    .line 5787
    const/16 v0, 0x1b

    return v0
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 5742
    iget p2, p0, Landroid/widget/RemoteViews$SetRadioGroupCheckedAction;->mViewId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5743
    iget p2, p0, Landroid/widget/RemoteViews$SetRadioGroupCheckedAction;->mCheckedId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5744
    return-void
.end method

.method public blacklist writeToProto(Landroid/util/proto/ProtoOutputStream;Landroid/content/Context;Landroid/content/res/Resources;)V
    .registers 8

    .line 5797
    const-wide v0, 0x10b0000000dL

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 5798
    iget p2, p0, Landroid/widget/RemoteViews$SetRadioGroupCheckedAction;->mViewId:I

    .line 5799
    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p2

    .line 5798
    const-wide v2, 0x10900000001L

    invoke-virtual {p1, v2, v3, p2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 5800
    iget p2, p0, Landroid/widget/RemoteViews$SetRadioGroupCheckedAction;->mCheckedId:I

    const/4 v2, -0x1

    if-eq p2, v2, :cond_2a

    .line 5801
    iget p2, p0, Landroid/widget/RemoteViews$SetRadioGroupCheckedAction;->mCheckedId:I

    .line 5802
    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p2

    .line 5801
    const-wide v2, 0x10900000002L

    invoke-virtual {p1, v2, v3, p2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 5804
    :cond_2a
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 5805
    return-void
.end method
