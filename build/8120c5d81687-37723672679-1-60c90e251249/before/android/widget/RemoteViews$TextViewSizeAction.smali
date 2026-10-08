.class Landroid/widget/RemoteViews$TextViewSizeAction;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TextViewSizeAction"
.end annotation


# instance fields
.field blacklist mSize:F

.field blacklist mUnits:I


# direct methods
.method constructor blacklist <init>(IIF)V
    .registers 5

    .line 5066
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews-IA;)V

    .line 5067
    iput p1, p0, Landroid/widget/RemoteViews$TextViewSizeAction;->mViewId:I

    .line 5068
    iput p2, p0, Landroid/widget/RemoteViews$TextViewSizeAction;->mUnits:I

    .line 5069
    iput p3, p0, Landroid/widget/RemoteViews$TextViewSizeAction;->mSize:F

    .line 5070
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 5072
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews-IA;)V

    .line 5073
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$TextViewSizeAction;->mViewId:I

    .line 5074
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$TextViewSizeAction;->mUnits:I

    .line 5075
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$TextViewSizeAction;->mSize:F

    .line 5076
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

    .line 5113
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    .line 5115
    const-wide v1, 0x10b00000012L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v1

    .line 5116
    :goto_e
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v3

    const/4 v4, -0x1

    const-wide v5, 0x10900000001L

    if-eq v3, v4, :cond_6b

    .line 5117
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v3

    packed-switch v3, :pswitch_data_7e

    .line 5131
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unhandled field while reading RemoteViews proto!\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5132
    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5131
    const-string v4, "RemoteViews"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 5127
    :pswitch_3e
    nop

    .line 5128
    const-wide v3, 0x10200000003L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readFloat(J)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    .line 5127
    invoke-virtual {v0, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 5129
    goto :goto_e

    .line 5123
    :pswitch_50
    nop

    .line 5124
    const-wide v3, 0x10500000002L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 5123
    invoke-virtual {v0, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 5125
    goto :goto_e

    .line 5119
    :pswitch_62
    nop

    .line 5120
    invoke-virtual {p0, v5, v6}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v3

    .line 5119
    invoke-virtual {v0, v5, v6, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 5121
    goto :goto_e

    .line 5135
    :cond_6b
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 5137
    const/4 p0, 0x1

    new-array p0, p0, [J

    const/4 v1, 0x0

    aput-wide v5, p0, v1

    invoke-static {v0, p0}, Landroid/widget/RemoteViews;->-$$Nest$smcheckContainsKeys(Landroid/util/LongSparseArray;[J)V

    .line 5139
    new-instance p0, Landroid/widget/RemoteViews$TextViewSizeAction$$ExternalSyntheticLambda0;

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$TextViewSizeAction$$ExternalSyntheticLambda0;-><init>(Landroid/util/LongSparseArray;)V

    return-object p0

    nop

    :pswitch_data_7e
    .packed-switch 0x1
        :pswitch_62
        :pswitch_50
        :pswitch_3e
    .end packed-switch
.end method

.method static synthetic blacklist lambda$createFromProto$0(Landroid/util/LongSparseArray;Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/RemoteViews$HierarchyRootData;I)Landroid/widget/RemoteViews$Action;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5140
    const-wide p3, 0x10900000001L

    invoke-static {p2, p0, p3, p4}, Landroid/widget/RemoteViews;->-$$Nest$smgetAsIdentifier(Landroid/content/res/Resources;Landroid/util/LongSparseArray;J)I

    move-result p1

    .line 5142
    new-instance p2, Landroid/widget/RemoteViews$TextViewSizeAction;

    .line 5143
    const/4 p3, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-wide v0, 0x10500000002L

    invoke-virtual {p0, v0, v1, p3}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    .line 5144
    const-wide v0, 0x10200000003L

    invoke-virtual {p0, v0, v1, p3}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-direct {p2, p1, p4, p0}, Landroid/widget/RemoteViews$TextViewSizeAction;-><init>(IIF)V

    .line 5142
    return-object p2
.end method


# virtual methods
.method public blacklist apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$ActionApplyParams;)V
    .registers 4

    .line 5086
    iget p2, p0, Landroid/widget/RemoteViews$TextViewSizeAction;->mViewId:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 5087
    if-nez p1, :cond_b

    return-void

    .line 5088
    :cond_b
    iget p2, p0, Landroid/widget/RemoteViews$TextViewSizeAction;->mUnits:I

    iget p3, p0, Landroid/widget/RemoteViews$TextViewSizeAction;->mSize:F

    invoke-virtual {p1, p2, p3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 5089
    return-void
.end method

.method public blacklist canWriteToProto()Z
    .registers 2

    .line 5098
    const/4 v0, 0x1

    return v0
.end method

.method public greylist-max-o getActionTag()I
    .registers 2

    .line 5093
    const/16 v0, 0xd

    return v0
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 5079
    iget p2, p0, Landroid/widget/RemoteViews$TextViewSizeAction;->mViewId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5080
    iget p2, p0, Landroid/widget/RemoteViews$TextViewSizeAction;->mUnits:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5081
    iget p2, p0, Landroid/widget/RemoteViews$TextViewSizeAction;->mSize:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 5082
    return-void
.end method

.method public blacklist writeToProto(Landroid/util/proto/ProtoOutputStream;Landroid/content/Context;Landroid/content/res/Resources;)V
    .registers 8

    .line 5103
    const-wide v0, 0x10b00000012L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 5104
    iget p2, p0, Landroid/widget/RemoteViews$TextViewSizeAction;->mViewId:I

    .line 5105
    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p2

    .line 5104
    const-wide v2, 0x10900000001L

    invoke-virtual {p1, v2, v3, p2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 5106
    const-wide p2, 0x10500000002L

    iget v2, p0, Landroid/widget/RemoteViews$TextViewSizeAction;->mUnits:I

    invoke-virtual {p1, p2, p3, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 5107
    const-wide p2, 0x10200000003L

    iget v2, p0, Landroid/widget/RemoteViews$TextViewSizeAction;->mSize:F

    invoke-virtual {p1, p2, p3, v2}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 5108
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 5109
    return-void
.end method
