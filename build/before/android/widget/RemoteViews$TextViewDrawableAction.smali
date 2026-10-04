.class Landroid/widget/RemoteViews$TextViewDrawableAction;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TextViewDrawableAction"
.end annotation


# instance fields
.field blacklist mD1:I

.field blacklist mD2:I

.field blacklist mD3:I

.field blacklist mD4:I

.field blacklist mDrawablesLoaded:Z

.field blacklist mI1:Landroid/graphics/drawable/Icon;

.field blacklist mI2:Landroid/graphics/drawable/Icon;

.field blacklist mI3:Landroid/graphics/drawable/Icon;

.field blacklist mI4:Landroid/graphics/drawable/Icon;

.field blacklist mId1:Landroid/graphics/drawable/Drawable;

.field blacklist mId2:Landroid/graphics/drawable/Drawable;

.field blacklist mId3:Landroid/graphics/drawable/Drawable;

.field blacklist mId4:Landroid/graphics/drawable/Drawable;

.field blacklist mIsRelative:Z

.field blacklist mUseIcons:Z


# direct methods
.method public constructor blacklist <init>(IZIIII)V
    .registers 8

    .line 4731
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews-IA;)V

    .line 4722
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mIsRelative:Z

    .line 4723
    iput-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mUseIcons:Z

    .line 4727
    iput-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mDrawablesLoaded:Z

    .line 4732
    iput p1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mViewId:I

    .line 4733
    iput-boolean p2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mIsRelative:Z

    .line 4734
    iput-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mUseIcons:Z

    .line 4735
    iput p3, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD1:I

    .line 4736
    iput p4, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD2:I

    .line 4737
    iput p5, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD3:I

    .line 4738
    iput p6, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD4:I

    .line 4739
    return-void
.end method

.method public constructor blacklist <init>(IZLandroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)V
    .registers 8

    .line 4742
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews-IA;)V

    .line 4722
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mIsRelative:Z

    .line 4723
    iput-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mUseIcons:Z

    .line 4727
    iput-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mDrawablesLoaded:Z

    .line 4743
    iput p1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mViewId:I

    .line 4744
    iput-boolean p2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mIsRelative:Z

    .line 4745
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mUseIcons:Z

    .line 4746
    iput-object p3, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI1:Landroid/graphics/drawable/Icon;

    .line 4747
    iput-object p4, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI2:Landroid/graphics/drawable/Icon;

    .line 4748
    iput-object p5, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI3:Landroid/graphics/drawable/Icon;

    .line 4749
    iput-object p6, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI4:Landroid/graphics/drawable/Icon;

    .line 4750
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 5

    .line 4752
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews-IA;)V

    .line 4722
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mIsRelative:Z

    .line 4723
    iput-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mUseIcons:Z

    .line 4727
    iput-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mDrawablesLoaded:Z

    .line 4753
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mViewId:I

    .line 4754
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1a

    move v1, v2

    goto :goto_1b

    :cond_1a
    move v1, v0

    :goto_1b
    iput-boolean v1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mIsRelative:Z

    .line 4755
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_24

    move v0, v2

    :cond_24
    iput-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mUseIcons:Z

    .line 4756
    iget-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mUseIcons:Z

    if-eqz v0, :cond_53

    .line 4757
    sget-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI1:Landroid/graphics/drawable/Icon;

    .line 4758
    sget-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI2:Landroid/graphics/drawable/Icon;

    .line 4759
    sget-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI3:Landroid/graphics/drawable/Icon;

    .line 4760
    sget-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Icon;

    iput-object p1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI4:Landroid/graphics/drawable/Icon;

    goto :goto_6b

    .line 4762
    :cond_53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD1:I

    .line 4763
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD2:I

    .line 4764
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD3:I

    .line 4765
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD4:I

    .line 4767
    :goto_6b
    return-void
.end method

.method public static blacklist createFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/widget/RemoteViews$PendingResources;
    .registers 19
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

    .line 4920
    move-object/from16 v0, p0

    new-instance v1, Landroid/util/LongSparseArray;

    invoke-direct {v1}, Landroid/util/LongSparseArray;-><init>()V

    .line 4922
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    const-wide v3, 0x10b00000004L

    invoke-virtual {v1, v3, v4, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 4924
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    const-wide v5, 0x10b00000003L

    invoke-virtual {v1, v5, v6, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 4926
    const-wide v7, 0x10b00000011L

    invoke-virtual {v0, v7, v8}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v7

    .line 4927
    :goto_2a
    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v2

    const/4 v9, 0x1

    const/4 v10, -0x1

    if-eq v2, v10, :cond_1d5

    .line 4928
    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v2

    const/4 v13, 0x4

    const-string v11, "Unhandled field while reading RemoteViews proto!\n"

    const-string v12, "RemoteViews"

    packed-switch v2, :pswitch_data_1ec

    .line 5023
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 5024
    invoke-static {v0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5023
    invoke-static {v12, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide v3, 0x10b00000004L

    const-wide v5, 0x10b00000003L

    goto :goto_2a

    .line 4982
    :pswitch_61
    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v14

    .line 4984
    :goto_65
    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v2

    if-eq v2, v10, :cond_f2

    .line 4985
    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v2

    packed-switch v2, :pswitch_data_1f8

    .line 5015
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 5017
    invoke-static {v0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5015
    invoke-static {v12, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide v3, 0x10b00000004L

    const-wide v5, 0x10b00000003L

    const/4 v10, -0x1

    const/4 v13, 0x4

    goto :goto_65

    .line 5008
    :pswitch_97
    invoke-virtual {v1, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 5010
    invoke-static {v0, v3, v4}, Landroid/widget/RemoteViews;->-$$Nest$smcreateIconFromProto(Landroid/util/proto/ProtoInputStream;J)Landroid/widget/RemoteViews$PendingResources;

    move-result-object v10

    .line 5009
    invoke-virtual {v2, v13, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5013
    const/4 v10, -0x1

    goto :goto_65

    .line 5001
    :pswitch_a6
    invoke-virtual {v1, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 5003
    invoke-static {v0, v5, v6}, Landroid/widget/RemoteViews;->-$$Nest$smcreateIconFromProto(Landroid/util/proto/ProtoInputStream;J)Landroid/widget/RemoteViews$PendingResources;

    move-result-object v10

    .line 5002
    const/4 v13, 0x3

    invoke-virtual {v2, v13, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5006
    const/4 v10, -0x1

    const/4 v13, 0x4

    goto :goto_65

    .line 4994
    :pswitch_b7
    invoke-virtual {v1, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/SparseArray;

    .line 4996
    const-wide v5, 0x10b00000002L

    invoke-static {v0, v5, v6}, Landroid/widget/RemoteViews;->-$$Nest$smcreateIconFromProto(Landroid/util/proto/ProtoInputStream;J)Landroid/widget/RemoteViews$PendingResources;

    move-result-object v5

    .line 4995
    const/4 v6, 0x2

    invoke-virtual {v10, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4999
    const-wide v5, 0x10b00000003L

    const/4 v10, -0x1

    const/4 v13, 0x4

    goto :goto_65

    .line 4987
    :pswitch_d2
    invoke-virtual {v1, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseArray;

    .line 4989
    const-wide v2, 0x10b00000001L

    invoke-static {v0, v2, v3}, Landroid/widget/RemoteViews;->-$$Nest$smcreateIconFromProto(Landroid/util/proto/ProtoInputStream;J)Landroid/widget/RemoteViews$PendingResources;

    move-result-object v2

    .line 4988
    invoke-virtual {v5, v9, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4992
    const-wide v3, 0x10b00000004L

    const-wide v5, 0x10b00000003L

    const/4 v10, -0x1

    const/4 v13, 0x4

    goto/16 :goto_65

    .line 5020
    :cond_f2
    invoke-virtual {v0, v14, v15}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 5021
    const-wide v3, 0x10b00000004L

    const-wide v5, 0x10b00000003L

    goto/16 :goto_2a

    .line 4939
    :pswitch_101
    const-wide v2, 0x10b00000003L

    invoke-virtual {v0, v2, v3}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v4

    .line 4941
    :goto_10a
    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v6

    const/4 v10, -0x1

    if-eq v6, v10, :cond_190

    .line 4942
    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v6

    packed-switch v6, :pswitch_data_204

    .line 4974
    const/4 v15, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4976
    invoke-static {v0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4974
    invoke-static {v12, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide v2, 0x10b00000003L

    goto :goto_10a

    .line 4966
    :pswitch_137
    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/SparseArray;

    .line 4968
    const-wide v14, 0x10900000004L

    invoke-virtual {v0, v14, v15}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v14

    .line 4967
    const/4 v15, 0x4

    invoke-virtual {v6, v15, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4972
    goto :goto_10a

    .line 4958
    :pswitch_14b
    const/4 v15, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/SparseArray;

    .line 4960
    const-wide v13, 0x10900000003L

    invoke-virtual {v0, v13, v14}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v13

    .line 4959
    const/4 v14, 0x3

    invoke-virtual {v6, v14, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4964
    goto :goto_10a

    .line 4951
    :pswitch_160
    const/4 v14, 0x3

    const/4 v15, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/SparseArray;

    .line 4953
    const-wide v14, 0x10900000002L

    invoke-virtual {v0, v14, v15}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v14

    .line 4952
    const/4 v15, 0x2

    invoke-virtual {v6, v15, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4956
    goto :goto_10a

    .line 4944
    :pswitch_176
    const/4 v15, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/SparseArray;

    .line 4946
    const-wide v2, 0x10900000001L

    invoke-virtual {v0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v14

    .line 4945
    invoke-virtual {v6, v9, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4949
    const-wide v2, 0x10b00000003L

    goto/16 :goto_10a

    .line 4979
    :cond_190
    invoke-virtual {v0, v4, v5}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 4980
    const-wide v3, 0x10b00000004L

    const-wide v5, 0x10b00000003L

    goto/16 :goto_2a

    .line 4934
    :pswitch_19f
    nop

    .line 4935
    const-wide v2, 0x10800000002L

    invoke-virtual {v0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readBoolean(J)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 4934
    invoke-virtual {v1, v2, v3, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 4937
    const-wide v3, 0x10b00000004L

    const-wide v5, 0x10b00000003L

    goto/16 :goto_2a

    .line 4930
    :pswitch_1bc
    nop

    .line 4931
    const-wide v2, 0x10900000001L

    invoke-virtual {v0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v4

    .line 4930
    invoke-virtual {v1, v2, v3, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 4932
    const-wide v3, 0x10b00000004L

    const-wide v5, 0x10b00000003L

    goto/16 :goto_2a

    .line 5027
    :cond_1d5
    invoke-virtual {v0, v7, v8}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 5029
    new-array v0, v9, [J

    const/4 v2, 0x0

    const-wide v16, 0x10900000001L

    aput-wide v16, v0, v2

    invoke-static {v1, v0}, Landroid/widget/RemoteViews;->-$$Nest$smcheckContainsKeys(Landroid/util/LongSparseArray;[J)V

    .line 5031
    new-instance v0, Landroid/widget/RemoteViews$TextViewDrawableAction$$ExternalSyntheticLambda0;

    invoke-direct {v0, v1}, Landroid/widget/RemoteViews$TextViewDrawableAction$$ExternalSyntheticLambda0;-><init>(Landroid/util/LongSparseArray;)V

    return-object v0

    nop

    :pswitch_data_1ec
    .packed-switch 0x1
        :pswitch_1bc
        :pswitch_19f
        :pswitch_101
        :pswitch_61
    .end packed-switch

    :pswitch_data_1f8
    .packed-switch 0x1
        :pswitch_d2
        :pswitch_b7
        :pswitch_a6
        :pswitch_97
    .end packed-switch

    :pswitch_data_204
    .packed-switch 0x1
        :pswitch_176
        :pswitch_160
        :pswitch_14b
        :pswitch_137
    .end packed-switch
.end method

.method static synthetic blacklist lambda$createFromProto$0(Landroid/util/LongSparseArray;Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/RemoteViews$HierarchyRootData;I)Landroid/widget/RemoteViews$Action;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5032
    const-wide v0, 0x10900000001L

    invoke-static {p2, p0, v0, v1}, Landroid/widget/RemoteViews;->-$$Nest$smgetAsIdentifier(Landroid/content/res/Resources;Landroid/util/LongSparseArray;J)I

    move-result v3

    .line 5034
    nop

    .line 5035
    const-wide v0, 0x10b00000004L

    invoke-virtual {p0, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 5037
    const-wide v1, 0x10b00000003L

    invoke-virtual {p0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 5039
    nop

    .line 5040
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 5039
    const-wide v5, 0x10800000002L

    invoke-virtual {p0, v5, v6, v4}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 5041
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result p0

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-lez p0, :cond_79

    .line 5042
    new-instance v2, Landroid/widget/RemoteViews$TextViewDrawableAction;

    .line 5043
    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/RemoteViews$PendingResources;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/widget/RemoteViews$PendingResources;->create(Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/RemoteViews$HierarchyRootData;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/Icon;

    .line 5044
    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViews$PendingResources;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/widget/RemoteViews$PendingResources;->create(Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/RemoteViews$HierarchyRootData;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Icon;

    .line 5045
    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/RemoteViews$PendingResources;

    invoke-interface {v6, p1, p2, p3, p4}, Landroid/widget/RemoteViews$PendingResources;->create(Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/RemoteViews$HierarchyRootData;I)Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Landroid/graphics/drawable/Icon;

    .line 5046
    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews$PendingResources;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/RemoteViews$PendingResources;->create(Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/RemoteViews$HierarchyRootData;I)Ljava/lang/Object;

    move-result-object p1

    move-object v8, p1

    check-cast v8, Landroid/graphics/drawable/Icon;

    move-object v5, p0

    move-object v6, v1

    invoke-direct/range {v2 .. v8}, Landroid/widget/RemoteViews$TextViewDrawableAction;-><init>(IZLandroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)V

    .line 5042
    return-object v2

    .line 5048
    :cond_79
    invoke-virtual {v1, v8}, Landroid/util/SparseArray;->contains(I)Z

    move-result p0

    if-eqz p0, :cond_84

    invoke-static {p2, v1, v8}, Landroid/widget/RemoteViews;->-$$Nest$smgetAsIdentifier(Landroid/content/res/Resources;Landroid/util/SparseArray;I)I

    move-result p0

    goto :goto_85

    :cond_84
    move p0, v2

    .line 5049
    :goto_85
    invoke-virtual {v1, v7}, Landroid/util/SparseArray;->contains(I)Z

    move-result p1

    if-eqz p1, :cond_90

    invoke-static {p2, v1, v7}, Landroid/widget/RemoteViews;->-$$Nest$smgetAsIdentifier(Landroid/content/res/Resources;Landroid/util/SparseArray;I)I

    move-result p1

    goto :goto_91

    :cond_90
    move p1, v2

    .line 5050
    :goto_91
    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->contains(I)Z

    move-result p3

    if-eqz p3, :cond_9d

    invoke-static {p2, v1, v6}, Landroid/widget/RemoteViews;->-$$Nest$smgetAsIdentifier(Landroid/content/res/Resources;Landroid/util/SparseArray;I)I

    move-result p3

    move v7, p3

    goto :goto_9e

    :cond_9d
    move v7, v2

    .line 5051
    :goto_9e
    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->contains(I)Z

    move-result p3

    if-eqz p3, :cond_a8

    invoke-static {p2, v1, v5}, Landroid/widget/RemoteViews;->-$$Nest$smgetAsIdentifier(Landroid/content/res/Resources;Landroid/util/SparseArray;I)I

    move-result v2

    :cond_a8
    move v8, v2

    .line 5052
    new-instance v2, Landroid/widget/RemoteViews$TextViewDrawableAction;

    move v5, p0

    move v6, p1

    invoke-direct/range {v2 .. v8}, Landroid/widget/RemoteViews$TextViewDrawableAction;-><init>(IZIIII)V

    return-object v2
.end method


# virtual methods
.method public blacklist apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$ActionApplyParams;)V
    .registers 8

    .line 4788
    iget p2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mViewId:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 4789
    if-nez p1, :cond_b

    return-void

    .line 4790
    :cond_b
    iget-boolean p2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mDrawablesLoaded:Z

    if-eqz p2, :cond_2c

    .line 4791
    iget-boolean p2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mIsRelative:Z

    if-eqz p2, :cond_20

    .line 4792
    iget-object p2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mId1:Landroid/graphics/drawable/Drawable;

    iget-object p3, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mId2:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mId3:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mId4:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_8b

    .line 4794
    :cond_20
    iget-object p2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mId1:Landroid/graphics/drawable/Drawable;

    iget-object p3, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mId2:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mId3:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mId4:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_8b

    .line 4796
    :cond_2c
    iget-boolean p2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mUseIcons:Z

    if-eqz p2, :cond_70

    .line 4797
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 4798
    iget-object p3, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI1:Landroid/graphics/drawable/Icon;

    const/4 v0, 0x0

    if-nez p3, :cond_3b

    move-object p3, v0

    goto :goto_41

    :cond_3b
    iget-object p3, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI1:Landroid/graphics/drawable/Icon;

    invoke-virtual {p3, p2}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 4799
    :goto_41
    iget-object v1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI2:Landroid/graphics/drawable/Icon;

    if-nez v1, :cond_47

    move-object v1, v0

    goto :goto_4d

    :cond_47
    iget-object v1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI2:Landroid/graphics/drawable/Icon;

    invoke-virtual {v1, p2}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 4800
    :goto_4d
    iget-object v2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI3:Landroid/graphics/drawable/Icon;

    if-nez v2, :cond_53

    move-object v2, v0

    goto :goto_59

    :cond_53
    iget-object v2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI3:Landroid/graphics/drawable/Icon;

    invoke-virtual {v2, p2}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 4801
    :goto_59
    iget-object v3, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI4:Landroid/graphics/drawable/Icon;

    if-nez v3, :cond_5e

    goto :goto_64

    :cond_5e
    iget-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI4:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 4802
    :goto_64
    iget-boolean p2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mIsRelative:Z

    if-eqz p2, :cond_6c

    .line 4803
    invoke-virtual {p1, p3, v1, v2, v0}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_6f

    .line 4805
    :cond_6c
    invoke-virtual {p1, p3, v1, v2, v0}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 4807
    :goto_6f
    goto :goto_8b

    .line 4808
    :cond_70
    iget-boolean p2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mIsRelative:Z

    if-eqz p2, :cond_80

    .line 4809
    iget p2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD1:I

    iget p3, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD2:I

    iget v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD3:I

    iget v1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD4:I

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    goto :goto_8b

    .line 4811
    :cond_80
    iget p2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD1:I

    iget p3, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD2:I

    iget v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD3:I

    iget v1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD4:I

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 4814
    :goto_8b
    return-void
.end method

.method public blacklist canWriteToProto()Z
    .registers 2

    .line 4866
    const/4 v0, 0x1

    return v0
.end method

.method public greylist-max-o getActionTag()I
    .registers 2

    .line 4851
    const/16 v0, 0xb

    return v0
.end method

.method public blacklist initActionAsync(Landroid/widget/RemoteViews$ViewTree;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$ActionApplyParams;)Landroid/widget/RemoteViews$Action;
    .registers 12

    .line 4819
    iget p2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mViewId:I

    invoke-virtual {p1, p2}, Landroid/widget/RemoteViews$ViewTree;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 4820
    if-nez p1, :cond_f

    invoke-static {}, Landroid/widget/RemoteViews;->-$$Nest$sfgetACTION_NOOP()Landroid/widget/RemoteViews$Action;

    move-result-object p1

    return-object p1

    .line 4822
    :cond_f
    iget-boolean p2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mUseIcons:Z

    if-eqz p2, :cond_25

    .line 4823
    new-instance v0, Landroid/widget/RemoteViews$TextViewDrawableAction;

    iget v1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mViewId:I

    iget-boolean v2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mIsRelative:Z

    iget-object v3, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI1:Landroid/graphics/drawable/Icon;

    iget-object v4, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI2:Landroid/graphics/drawable/Icon;

    iget-object v5, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI3:Landroid/graphics/drawable/Icon;

    iget-object v6, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI4:Landroid/graphics/drawable/Icon;

    invoke-direct/range {v0 .. v6}, Landroid/widget/RemoteViews$TextViewDrawableAction;-><init>(IZLandroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)V

    goto :goto_37

    .line 4824
    :cond_25
    new-instance v1, Landroid/widget/RemoteViews$TextViewDrawableAction;

    iget v2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mViewId:I

    iget-boolean v3, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mIsRelative:Z

    iget v4, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD1:I

    iget v5, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD2:I

    iget v6, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD3:I

    iget v7, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD4:I

    invoke-direct/range {v1 .. v7}, Landroid/widget/RemoteViews$TextViewDrawableAction;-><init>(IZIIII)V

    move-object v0, v1

    .line 4827
    :goto_37
    const/4 p2, 0x1

    iput-boolean p2, v0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mDrawablesLoaded:Z

    .line 4828
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 4830
    iget-boolean p2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mUseIcons:Z

    const/4 p3, 0x0

    if-eqz p2, :cond_7b

    .line 4831
    iget-object p2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI1:Landroid/graphics/drawable/Icon;

    if-nez p2, :cond_49

    move-object p2, p3

    goto :goto_4f

    :cond_49
    iget-object p2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI1:Landroid/graphics/drawable/Icon;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    :goto_4f
    iput-object p2, v0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mId1:Landroid/graphics/drawable/Drawable;

    .line 4832
    iget-object p2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI2:Landroid/graphics/drawable/Icon;

    if-nez p2, :cond_57

    move-object p2, p3

    goto :goto_5d

    :cond_57
    iget-object p2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI2:Landroid/graphics/drawable/Icon;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    :goto_5d
    iput-object p2, v0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mId2:Landroid/graphics/drawable/Drawable;

    .line 4833
    iget-object p2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI3:Landroid/graphics/drawable/Icon;

    if-nez p2, :cond_65

    move-object p2, p3

    goto :goto_6b

    :cond_65
    iget-object p2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI3:Landroid/graphics/drawable/Icon;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    :goto_6b
    iput-object p2, v0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mId3:Landroid/graphics/drawable/Drawable;

    .line 4834
    iget-object p2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI4:Landroid/graphics/drawable/Icon;

    if-nez p2, :cond_72

    goto :goto_78

    :cond_72
    iget-object p2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI4:Landroid/graphics/drawable/Icon;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    :goto_78
    iput-object p3, v0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mId4:Landroid/graphics/drawable/Drawable;

    goto :goto_b2

    .line 4836
    :cond_7b
    iget p2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD1:I

    if-nez p2, :cond_81

    move-object p2, p3

    goto :goto_87

    :cond_81
    iget p2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD1:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    :goto_87
    iput-object p2, v0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mId1:Landroid/graphics/drawable/Drawable;

    .line 4837
    iget p2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD2:I

    if-nez p2, :cond_8f

    move-object p2, p3

    goto :goto_95

    :cond_8f
    iget p2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD2:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    :goto_95
    iput-object p2, v0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mId2:Landroid/graphics/drawable/Drawable;

    .line 4838
    iget p2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD3:I

    if-nez p2, :cond_9d

    move-object p2, p3

    goto :goto_a3

    :cond_9d
    iget p2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD3:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    :goto_a3
    iput-object p2, v0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mId3:Landroid/graphics/drawable/Drawable;

    .line 4839
    iget p2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD4:I

    if-nez p2, :cond_aa

    goto :goto_b0

    :cond_aa
    iget p2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD4:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    :goto_b0
    iput-object p3, v0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mId4:Landroid/graphics/drawable/Drawable;

    .line 4841
    :goto_b2
    return-object v0
.end method

.method public greylist-max-o prefersAsyncApply()Z
    .registers 2

    .line 4846
    iget-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mUseIcons:Z

    return v0
.end method

.method public greylist-max-o visitUris(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 4856
    iget-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mUseIcons:Z

    if-eqz v0, :cond_18

    .line 4857
    iget-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI1:Landroid/graphics/drawable/Icon;

    invoke-static {v0, p1}, Landroid/widget/RemoteViews;->-$$Nest$smvisitIconUri(Landroid/graphics/drawable/Icon;Ljava/util/function/Consumer;)V

    .line 4858
    iget-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI2:Landroid/graphics/drawable/Icon;

    invoke-static {v0, p1}, Landroid/widget/RemoteViews;->-$$Nest$smvisitIconUri(Landroid/graphics/drawable/Icon;Ljava/util/function/Consumer;)V

    .line 4859
    iget-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI3:Landroid/graphics/drawable/Icon;

    invoke-static {v0, p1}, Landroid/widget/RemoteViews;->-$$Nest$smvisitIconUri(Landroid/graphics/drawable/Icon;Ljava/util/function/Consumer;)V

    .line 4860
    iget-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI4:Landroid/graphics/drawable/Icon;

    invoke-static {v0, p1}, Landroid/widget/RemoteViews;->-$$Nest$smvisitIconUri(Landroid/graphics/drawable/Icon;Ljava/util/function/Consumer;)V

    .line 4862
    :cond_18
    return-void
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 4770
    iget p2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mViewId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4771
    iget-boolean p2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mIsRelative:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4772
    iget-boolean p2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mUseIcons:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4773
    iget-boolean p2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mUseIcons:Z

    if-eqz p2, :cond_29

    .line 4774
    iget-object p2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI1:Landroid/graphics/drawable/Icon;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4775
    iget-object p2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI2:Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4776
    iget-object p2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI3:Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4777
    iget-object p2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI4:Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_3d

    .line 4779
    :cond_29
    iget p2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD1:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4780
    iget p2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD2:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4781
    iget p2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD3:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4782
    iget p2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD4:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4784
    :goto_3d
    return-void
.end method

.method public blacklist writeToProto(Landroid/util/proto/ProtoOutputStream;Landroid/content/Context;Landroid/content/res/Resources;)V
    .registers 14

    .line 4872
    const-wide v0, 0x10b00000011L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 4873
    iget p2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mViewId:I

    .line 4874
    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p2

    .line 4873
    const-wide v2, 0x10900000001L

    invoke-virtual {p1, v2, v3, p2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 4875
    const-wide v4, 0x10800000002L

    iget-boolean p2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mIsRelative:Z

    invoke-virtual {p1, v4, v5, p2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4876
    iget-boolean p2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mUseIcons:Z

    const-wide v4, 0x10b00000003L

    if-eqz p2, :cond_65

    .line 4877
    const-wide v2, 0x10b00000004L

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    .line 4878
    iget-object p2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI1:Landroid/graphics/drawable/Icon;

    if-eqz p2, :cond_41

    .line 4879
    iget-object p2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI1:Landroid/graphics/drawable/Icon;

    const-wide v8, 0x10b00000001L

    invoke-static {p1, p3, p2, v8, v9}, Landroid/widget/RemoteViews;->-$$Nest$smwriteIconToProto(Landroid/util/proto/ProtoOutputStream;Landroid/content/res/Resources;Landroid/graphics/drawable/Icon;J)V

    .line 4882
    :cond_41
    iget-object p2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI2:Landroid/graphics/drawable/Icon;

    if-eqz p2, :cond_4f

    .line 4883
    iget-object p2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI2:Landroid/graphics/drawable/Icon;

    const-wide v8, 0x10b00000002L

    invoke-static {p1, p3, p2, v8, v9}, Landroid/widget/RemoteViews;->-$$Nest$smwriteIconToProto(Landroid/util/proto/ProtoOutputStream;Landroid/content/res/Resources;Landroid/graphics/drawable/Icon;J)V

    .line 4886
    :cond_4f
    iget-object p2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI3:Landroid/graphics/drawable/Icon;

    if-eqz p2, :cond_58

    .line 4887
    iget-object p2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI3:Landroid/graphics/drawable/Icon;

    invoke-static {p1, p3, p2, v4, v5}, Landroid/widget/RemoteViews;->-$$Nest$smwriteIconToProto(Landroid/util/proto/ProtoOutputStream;Landroid/content/res/Resources;Landroid/graphics/drawable/Icon;J)V

    .line 4890
    :cond_58
    iget-object p2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI4:Landroid/graphics/drawable/Icon;

    if-eqz p2, :cond_61

    .line 4891
    iget-object p2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI4:Landroid/graphics/drawable/Icon;

    invoke-static {p1, p3, p2, v2, v3}, Landroid/widget/RemoteViews;->-$$Nest$smwriteIconToProto(Landroid/util/proto/ProtoOutputStream;Landroid/content/res/Resources;Landroid/graphics/drawable/Icon;J)V

    .line 4894
    :cond_61
    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 4895
    goto :goto_af

    .line 4896
    :cond_65
    invoke-virtual {p1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 4897
    iget p2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD1:I

    if-eqz p2, :cond_76

    .line 4898
    iget p2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD1:I

    .line 4899
    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p2

    .line 4898
    invoke-virtual {p1, v2, v3, p2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 4901
    :cond_76
    iget p2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD2:I

    if-eqz p2, :cond_88

    .line 4902
    iget p2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD2:I

    .line 4903
    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p2

    .line 4902
    const-wide v2, 0x10900000002L

    invoke-virtual {p1, v2, v3, p2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 4905
    :cond_88
    iget p2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD3:I

    if-eqz p2, :cond_9a

    .line 4906
    iget p2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD3:I

    .line 4907
    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p2

    .line 4906
    const-wide v2, 0x10900000003L

    invoke-virtual {p1, v2, v3, p2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 4909
    :cond_9a
    iget p2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD4:I

    if-eqz p2, :cond_ac

    .line 4910
    iget p2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD4:I

    .line 4911
    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p2

    .line 4910
    const-wide v2, 0x10900000004L

    invoke-virtual {p1, v2, v3, p2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 4913
    :cond_ac
    invoke-virtual {p1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 4915
    :goto_af
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 4916
    return-void
.end method
