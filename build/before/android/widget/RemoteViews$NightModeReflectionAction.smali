.class final Landroid/widget/RemoteViews$NightModeReflectionAction;
.super Landroid/widget/RemoteViews$BaseReflectionAction;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NightModeReflectionAction"
.end annotation


# instance fields
.field private final blacklist mDarkValue:Ljava/lang/Object;

.field private final blacklist mLightValue:Ljava/lang/Object;


# direct methods
.method constructor blacklist <init>(ILjava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V
    .registers 6

    .line 3858
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RemoteViews$BaseReflectionAction;-><init>(ILjava/lang/String;I)V

    .line 3859
    iput-object p4, p0, Landroid/widget/RemoteViews$NightModeReflectionAction;->mLightValue:Ljava/lang/Object;

    .line 3860
    iput-object p5, p0, Landroid/widget/RemoteViews$NightModeReflectionAction;->mDarkValue:Ljava/lang/Object;

    .line 3861
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 3864
    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$BaseReflectionAction;-><init>(Landroid/os/Parcel;)V

    .line 3865
    iget v0, p0, Landroid/widget/RemoteViews$NightModeReflectionAction;->mType:I

    sparse-switch v0, :sswitch_data_5c

    .line 3879
    new-instance p1, Landroid/widget/RemoteViews$ActionException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected night mode action type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/RemoteViews$NightModeReflectionAction;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3867
    :sswitch_23
    sget-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews$NightModeReflectionAction;->mLightValue:Ljava/lang/Object;

    .line 3868
    sget-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/RemoteViews$NightModeReflectionAction;->mDarkValue:Ljava/lang/Object;

    .line 3869
    goto :goto_5a

    .line 3871
    :sswitch_34
    sget-object v0, Landroid/content/res/ColorStateList;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews$NightModeReflectionAction;->mLightValue:Ljava/lang/Object;

    .line 3872
    sget-object v0, Landroid/content/res/ColorStateList;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/RemoteViews$NightModeReflectionAction;->mDarkValue:Ljava/lang/Object;

    .line 3873
    goto :goto_5a

    .line 3875
    :sswitch_45
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews$NightModeReflectionAction;->mLightValue:Ljava/lang/Object;

    .line 3876
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/RemoteViews$NightModeReflectionAction;->mDarkValue:Ljava/lang/Object;

    .line 3877
    nop

    .line 3881
    :goto_5a
    return-void

    nop

    :sswitch_data_5c
    .sparse-switch
        0x4 -> :sswitch_45
        0xf -> :sswitch_34
        0x10 -> :sswitch_23
    .end sparse-switch
.end method

.method public static blacklist createFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/widget/RemoteViews$PendingResources;
    .registers 9
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

    .line 3958
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    .line 3960
    const-wide v1, 0x10b00000005L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v3

    .line 3961
    :goto_e
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_c2

    .line 3962
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v5

    packed-switch v5, :pswitch_data_d4

    .line 4009
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unhandled field while reading RemoteViews proto!\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4010
    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4009
    const-string v6, "RemoteViews"

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 4005
    :pswitch_39
    nop

    .line 4006
    const-wide v5, 0x10500000009L

    invoke-virtual {p0, v5, v6}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 4005
    invoke-virtual {v0, v5, v6, v7}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 4007
    goto :goto_e

    .line 3999
    :pswitch_4b
    nop

    .line 4000
    const-wide v5, 0x10b00000008L

    invoke-static {p0, v5, v6}, Landroid/widget/RemoteViews;->-$$Nest$smcreateColorStateListFromProto(Landroid/util/proto/ProtoInputStream;J)Landroid/content/res/ColorStateList;

    move-result-object v7

    .line 3999
    invoke-virtual {v0, v5, v6, v7}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 4003
    goto :goto_e

    .line 3994
    :pswitch_59
    nop

    .line 3995
    const-wide v5, 0x10b00000007L

    invoke-static {p0, v5, v6}, Landroid/widget/RemoteViews;->-$$Nest$smcreateIconFromProto(Landroid/util/proto/ProtoInputStream;J)Landroid/widget/RemoteViews$PendingResources;

    move-result-object v7

    .line 3994
    invoke-virtual {v0, v5, v6, v7}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 3997
    goto :goto_e

    .line 3990
    :pswitch_67
    nop

    .line 3991
    const-wide v5, 0x10500000006L

    invoke-virtual {p0, v5, v6}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 3990
    invoke-virtual {v0, v5, v6, v7}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 3992
    goto :goto_e

    .line 3983
    :pswitch_79
    nop

    .line 3985
    invoke-static {p0, v1, v2}, Landroid/widget/RemoteViews;->-$$Nest$smcreateColorStateListFromProto(Landroid/util/proto/ProtoInputStream;J)Landroid/content/res/ColorStateList;

    move-result-object v5

    .line 3983
    invoke-virtual {v0, v1, v2, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 3988
    goto :goto_e

    .line 3978
    :pswitch_82
    nop

    .line 3979
    const-wide v5, 0x10b00000004L

    invoke-static {p0, v5, v6}, Landroid/widget/RemoteViews;->-$$Nest$smcreateIconFromProto(Landroid/util/proto/ProtoInputStream;J)Landroid/widget/RemoteViews$PendingResources;

    move-result-object v7

    .line 3978
    invoke-virtual {v0, v5, v6, v7}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 3981
    goto/16 :goto_e

    .line 3973
    :pswitch_91
    nop

    .line 3974
    const-wide v5, 0x10500000003L

    invoke-virtual {p0, v5, v6}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 3973
    invoke-virtual {v0, v5, v6, v7}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 3976
    goto/16 :goto_e

    .line 3968
    :pswitch_a4
    nop

    .line 3969
    const-wide v5, 0x10900000002L

    invoke-virtual {p0, v5, v6}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v7

    .line 3968
    invoke-virtual {v0, v5, v6, v7}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 3971
    goto/16 :goto_e

    .line 3964
    :pswitch_b3
    nop

    .line 3965
    const-wide v5, 0x10900000001L

    invoke-virtual {p0, v5, v6}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v7

    .line 3964
    invoke-virtual {v0, v5, v6, v7}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 3966
    goto/16 :goto_e

    .line 4013
    :cond_c2
    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 4015
    const/4 p0, 0x3

    new-array p0, p0, [J

    fill-array-data p0, :array_ea

    invoke-static {v0, p0}, Landroid/widget/RemoteViews;->-$$Nest$smcheckContainsKeys(Landroid/util/LongSparseArray;[J)V

    .line 4019
    new-instance p0, Landroid/widget/RemoteViews$NightModeReflectionAction$$ExternalSyntheticLambda0;

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$NightModeReflectionAction$$ExternalSyntheticLambda0;-><init>(Landroid/util/LongSparseArray;)V

    return-object p0

    :pswitch_data_d4
    .packed-switch 0x1
        :pswitch_b3
        :pswitch_a4
        :pswitch_91
        :pswitch_82
        :pswitch_79
        :pswitch_67
        :pswitch_59
        :pswitch_4b
        :pswitch_39
    .end packed-switch

    :array_ea
    .array-data 8
        0x10900000001L
        0x10900000002L
        0x10500000003L
    .end array-data
.end method

.method static synthetic blacklist lambda$createFromProto$0(Landroid/util/LongSparseArray;Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/RemoteViews$HierarchyRootData;I)Landroid/widget/RemoteViews$Action;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4020
    const-wide v0, 0x10900000001L

    invoke-static {p2, p0, v0, v1}, Landroid/widget/RemoteViews;->-$$Nest$smgetAsIdentifier(Landroid/content/res/Resources;Landroid/util/LongSparseArray;J)I

    move-result v3

    .line 4022
    const-wide v0, 0x10900000002L

    invoke-virtual {p0, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    .line 4024
    const-wide v0, 0x10500000003L

    invoke-virtual {p0, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 4026
    sparse-switch v5, :sswitch_data_ca

    .line 4055
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown parameterType: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4028
    :sswitch_40
    nop

    .line 4029
    const-wide v0, 0x10b00000004L

    invoke-virtual {p0, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews$PendingResources;

    .line 4031
    nop

    .line 4032
    const-wide v1, 0x10b00000007L

    invoke-virtual {p0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/RemoteViews$PendingResources;

    .line 4034
    const/4 v1, 0x0

    if-eqz v0, :cond_63

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/RemoteViews$PendingResources;->create(Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/RemoteViews$HierarchyRootData;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    move-object v6, v0

    goto :goto_64

    .line 4035
    :cond_63
    move-object v6, v1

    .line 4036
    :goto_64
    if-eqz p0, :cond_6f

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/widget/RemoteViews$PendingResources;->create(Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/RemoteViews$HierarchyRootData;I)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Landroid/graphics/drawable/Icon;

    move-object v7, v1

    goto :goto_70

    .line 4037
    :cond_6f
    move-object v7, v1

    .line 4038
    :goto_70
    new-instance v2, Landroid/widget/RemoteViews$NightModeReflectionAction;

    invoke-direct/range {v2 .. v7}, Landroid/widget/RemoteViews$NightModeReflectionAction;-><init>(ILjava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    .line 4041
    :sswitch_76
    new-instance v2, Landroid/widget/RemoteViews$NightModeReflectionAction;

    .line 4042
    const-wide p1, 0x10b00000005L

    invoke-virtual {p0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Landroid/content/res/ColorStateList;

    .line 4045
    const-wide p1, 0x10b00000008L

    invoke-virtual {p0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p0

    move-object v7, p0

    check-cast v7, Landroid/content/res/ColorStateList;

    invoke-direct/range {v2 .. v7}, Landroid/widget/RemoteViews$NightModeReflectionAction;-><init>(ILjava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    .line 4041
    return-object v2

    .line 4049
    :sswitch_94
    new-instance v2, Landroid/widget/RemoteViews$NightModeReflectionAction;

    .line 4051
    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 4050
    const-wide p3, 0x10500000006L

    invoke-virtual {p0, p3, p4, p2}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 4053
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 4052
    const-wide p2, 0x10500000009L

    invoke-virtual {p0, p2, p3, p1}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct/range {v2 .. v7}, Landroid/widget/RemoteViews$NightModeReflectionAction;-><init>(ILjava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    .line 4049
    return-object v2

    nop

    :sswitch_data_ca
    .sparse-switch
        0x4 -> :sswitch_94
        0xf -> :sswitch_76
        0x10 -> :sswitch_40
    .end sparse-switch
.end method


# virtual methods
.method public blacklist canWriteToProto()Z
    .registers 2

    .line 3923
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getActionTag()I
    .registers 2

    .line 3910
    const/16 v0, 0x1e

    return v0
.end method

.method protected blacklist getParameterValue(Landroid/view/View;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/widget/RemoteViews$ActionException;
        }
    .end annotation

    .line 3902
    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 3904
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 3905
    invoke-virtual {p1}, Landroid/content/res/Configuration;->isNightModeActive()Z

    move-result p1

    if-eqz p1, :cond_15

    iget-object p1, p0, Landroid/widget/RemoteViews$NightModeReflectionAction;->mDarkValue:Ljava/lang/Object;

    goto :goto_17

    :cond_15
    iget-object p1, p0, Landroid/widget/RemoteViews$NightModeReflectionAction;->mLightValue:Ljava/lang/Object;

    :goto_17
    return-object p1
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

    .line 3915
    iget v0, p0, Landroid/widget/RemoteViews$NightModeReflectionAction;->mType:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_14

    .line 3916
    iget-object v0, p0, Landroid/widget/RemoteViews$NightModeReflectionAction;->mDarkValue:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/drawable/Icon;

    invoke-static {v0, p1}, Landroid/widget/RemoteViews;->-$$Nest$smvisitIconUri(Landroid/graphics/drawable/Icon;Ljava/util/function/Consumer;)V

    .line 3917
    iget-object v0, p0, Landroid/widget/RemoteViews$NightModeReflectionAction;->mLightValue:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/drawable/Icon;

    invoke-static {v0, p1}, Landroid/widget/RemoteViews;->-$$Nest$smvisitIconUri(Landroid/graphics/drawable/Icon;Ljava/util/function/Consumer;)V

    .line 3919
    :cond_14
    return-void
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 3885
    invoke-super {p0, p1, p2}, Landroid/widget/RemoteViews$BaseReflectionAction;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3886
    iget v0, p0, Landroid/widget/RemoteViews$NightModeReflectionAction;->mType:I

    sparse-switch v0, :sswitch_data_30

    goto :goto_2e

    .line 3889
    :sswitch_9
    iget-object v0, p0, Landroid/widget/RemoteViews$NightModeReflectionAction;->mLightValue:Ljava/lang/Object;

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3890
    iget-object v0, p0, Landroid/widget/RemoteViews$NightModeReflectionAction;->mDarkValue:Ljava/lang/Object;

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3891
    goto :goto_2e

    .line 3893
    :sswitch_18
    iget-object p2, p0, Landroid/widget/RemoteViews$NightModeReflectionAction;->mLightValue:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3894
    iget-object p2, p0, Landroid/widget/RemoteViews$NightModeReflectionAction;->mDarkValue:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3897
    :goto_2e
    return-void

    nop

    :sswitch_data_30
    .sparse-switch
        0x4 -> :sswitch_18
        0xf -> :sswitch_9
        0x10 -> :sswitch_9
    .end sparse-switch
.end method

.method public blacklist writeToProto(Landroid/util/proto/ProtoOutputStream;Landroid/content/Context;Landroid/content/res/Resources;)V
    .registers 10

    .line 3928
    const-wide v0, 0x10b00000005L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 3929
    iget p2, p0, Landroid/widget/RemoteViews$NightModeReflectionAction;->mViewId:I

    .line 3930
    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p2

    .line 3929
    const-wide v4, 0x10900000001L

    invoke-virtual {p1, v4, v5, p2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 3931
    const-wide v4, 0x10900000002L

    iget-object p2, p0, Landroid/widget/RemoteViews$NightModeReflectionAction;->mMethodName:Ljava/lang/String;

    invoke-virtual {p1, v4, v5, p2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 3932
    const-wide v4, 0x10500000003L

    iget p2, p0, Landroid/widget/RemoteViews$NightModeReflectionAction;->mType:I

    invoke-virtual {p1, v4, v5, p2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3933
    iget p2, p0, Landroid/widget/RemoteViews$NightModeReflectionAction;->mType:I

    sparse-switch p2, :sswitch_data_82

    goto :goto_7e

    .line 3935
    :sswitch_31
    iget-object p2, p0, Landroid/widget/RemoteViews$NightModeReflectionAction;->mLightValue:Ljava/lang/Object;

    check-cast p2, Landroid/graphics/drawable/Icon;

    const-wide v0, 0x10b00000004L

    invoke-static {p1, p3, p2, v0, v1}, Landroid/widget/RemoteViews;->-$$Nest$smwriteIconToProto(Landroid/util/proto/ProtoOutputStream;Landroid/content/res/Resources;Landroid/graphics/drawable/Icon;J)V

    .line 3937
    iget-object p2, p0, Landroid/widget/RemoteViews$NightModeReflectionAction;->mDarkValue:Ljava/lang/Object;

    check-cast p2, Landroid/graphics/drawable/Icon;

    const-wide v0, 0x10b00000007L

    invoke-static {p1, p3, p2, v0, v1}, Landroid/widget/RemoteViews;->-$$Nest$smwriteIconToProto(Landroid/util/proto/ProtoOutputStream;Landroid/content/res/Resources;Landroid/graphics/drawable/Icon;J)V

    .line 3939
    goto :goto_7e

    .line 3941
    :sswitch_4a
    iget-object p2, p0, Landroid/widget/RemoteViews$NightModeReflectionAction;->mLightValue:Ljava/lang/Object;

    check-cast p2, Landroid/content/res/ColorStateList;

    invoke-static {p1, p2, v0, v1}, Landroid/widget/RemoteViews;->-$$Nest$smwriteColorStateListToProto(Landroid/util/proto/ProtoOutputStream;Landroid/content/res/ColorStateList;J)V

    .line 3943
    iget-object p2, p0, Landroid/widget/RemoteViews$NightModeReflectionAction;->mDarkValue:Ljava/lang/Object;

    check-cast p2, Landroid/content/res/ColorStateList;

    const-wide v0, 0x10b00000008L

    invoke-static {p1, p2, v0, v1}, Landroid/widget/RemoteViews;->-$$Nest$smwriteColorStateListToProto(Landroid/util/proto/ProtoOutputStream;Landroid/content/res/ColorStateList;J)V

    .line 3945
    goto :goto_7e

    .line 3947
    :sswitch_5e
    iget-object p2, p0, Landroid/widget/RemoteViews$NightModeReflectionAction;->mLightValue:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    .line 3948
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 3947
    const-wide v0, 0x10500000006L

    invoke-virtual {p1, v0, v1, p2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3949
    iget-object p2, p0, Landroid/widget/RemoteViews$NightModeReflectionAction;->mDarkValue:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    .line 3950
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 3949
    const-wide v0, 0x10500000009L

    invoke-virtual {p1, v0, v1, p2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3953
    :goto_7e
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 3954
    return-void

    :sswitch_data_82
    .sparse-switch
        0x4 -> :sswitch_5e
        0xf -> :sswitch_4a
        0x10 -> :sswitch_31
    .end sparse-switch
.end method
