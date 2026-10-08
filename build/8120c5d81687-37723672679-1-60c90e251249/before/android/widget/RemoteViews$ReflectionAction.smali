.class final Landroid/widget/RemoteViews$ReflectionAction;
.super Landroid/widget/RemoteViews$BaseReflectionAction;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ReflectionAction"
.end annotation


# instance fields
.field greylist mValue:Ljava/lang/Object;


# direct methods
.method constructor blacklist <init>(ILjava/lang/String;ILjava/lang/Object;)V
    .registers 5

    .line 2902
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RemoteViews$BaseReflectionAction;-><init>(ILjava/lang/String;I)V

    .line 2903
    iput-object p4, p0, Landroid/widget/RemoteViews$ReflectionAction;->mValue:Ljava/lang/Object;

    .line 2904
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 6

    .line 2907
    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$BaseReflectionAction;-><init>(Landroid/os/Parcel;)V

    .line 2910
    iget v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->mType:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_10a

    goto/16 :goto_109

    .line 2981
    :pswitch_c
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_23

    .line 2982
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    int-to-long v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/time/Duration;->ofSeconds(JJ)Ljava/time/Duration;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/RemoteViews$ReflectionAction;->mValue:Ljava/lang/Object;

    goto/16 :goto_109

    .line 2984
    :cond_23
    iput-object v2, p0, Landroid/widget/RemoteViews$ReflectionAction;->mValue:Ljava/lang/Object;

    .line 2986
    goto/16 :goto_109

    .line 2974
    :pswitch_27
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_3e

    .line 2975
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    int-to-long v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/time/Instant;->ofEpochSecond(JJ)Ljava/time/Instant;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/RemoteViews$ReflectionAction;->mValue:Ljava/lang/Object;

    goto/16 :goto_109

    .line 2977
    :cond_3e
    iput-object v2, p0, Landroid/widget/RemoteViews$ReflectionAction;->mValue:Ljava/lang/Object;

    .line 2979
    goto/16 :goto_109

    .line 2971
    :pswitch_42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Landroid/graphics/BlendMode;->fromValue(I)Landroid/graphics/BlendMode;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/RemoteViews$ReflectionAction;->mValue:Ljava/lang/Object;

    .line 2972
    goto/16 :goto_109

    .line 2968
    :pswitch_4e
    sget-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/RemoteViews$ReflectionAction;->mValue:Ljava/lang/Object;

    .line 2969
    goto/16 :goto_109

    .line 2965
    :pswitch_58
    sget-object v0, Landroid/content/res/ColorStateList;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/RemoteViews$ReflectionAction;->mValue:Ljava/lang/Object;

    .line 2966
    goto/16 :goto_109

    .line 2962
    :pswitch_62
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/RemoteViews$ReflectionAction;->mValue:Ljava/lang/Object;

    .line 2963
    goto/16 :goto_109

    .line 2953
    :pswitch_6c
    invoke-virtual {p1}, Landroid/os/Parcel;->hasReadWriteHelper()Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 2954
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/RemoteViews$ReflectionAction;->mValue:Ljava/lang/Object;

    goto/16 :goto_109

    .line 2956
    :cond_7a
    invoke-static {}, Landroid/widget/RemoteViews;->-$$Nest$sfgetALTERNATIVE_DEFAULT()Landroid/os/Parcel$ReadWriteHelper;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setReadWriteHelper(Landroid/os/Parcel$ReadWriteHelper;)V

    .line 2957
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->mValue:Ljava/lang/Object;

    .line 2958
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setReadWriteHelper(Landroid/os/Parcel$ReadWriteHelper;)V

    .line 2960
    goto/16 :goto_109

    .line 2945
    :pswitch_8c
    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/RemoteViews$ReflectionAction;->mValue:Ljava/lang/Object;

    .line 2946
    goto/16 :goto_109

    .line 2942
    :pswitch_96
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/RemoteViews$ReflectionAction;->mValue:Ljava/lang/Object;

    .line 2943
    goto :goto_109

    .line 2939
    :pswitch_9f
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/RemoteViews$ReflectionAction;->mValue:Ljava/lang/Object;

    .line 2940
    goto :goto_109

    .line 2936
    :pswitch_a8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/RemoteViews$ReflectionAction;->mValue:Ljava/lang/Object;

    .line 2937
    goto :goto_109

    .line 2933
    :pswitch_af
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    int-to-char p1, p1

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/RemoteViews$ReflectionAction;->mValue:Ljava/lang/Object;

    .line 2934
    goto :goto_109

    .line 2930
    :pswitch_bb
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/RemoteViews$ReflectionAction;->mValue:Ljava/lang/Object;

    .line 2931
    goto :goto_109

    .line 2927
    :pswitch_c6
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/RemoteViews$ReflectionAction;->mValue:Ljava/lang/Object;

    .line 2928
    goto :goto_109

    .line 2924
    :pswitch_d1
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/RemoteViews$ReflectionAction;->mValue:Ljava/lang/Object;

    .line 2925
    goto :goto_109

    .line 2921
    :pswitch_dc
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/RemoteViews$ReflectionAction;->mValue:Ljava/lang/Object;

    .line 2922
    goto :goto_109

    .line 2918
    :pswitch_e7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    int-to-short p1, p1

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/RemoteViews$ReflectionAction;->mValue:Ljava/lang/Object;

    .line 2919
    goto :goto_109

    .line 2915
    :pswitch_f3
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/RemoteViews$ReflectionAction;->mValue:Ljava/lang/Object;

    .line 2916
    goto :goto_109

    .line 2912
    :pswitch_fe
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/RemoteViews$ReflectionAction;->mValue:Ljava/lang/Object;

    .line 2913
    nop

    .line 2990
    :goto_109
    return-void

    :pswitch_data_10a
    .packed-switch 0x1
        :pswitch_fe
        :pswitch_f3
        :pswitch_e7
        :pswitch_dc
        :pswitch_d1
        :pswitch_c6
        :pswitch_bb
        :pswitch_af
        :pswitch_a8
        :pswitch_9f
        :pswitch_96
        :pswitch_8c
        :pswitch_6c
        :pswitch_62
        :pswitch_58
        :pswitch_4e
        :pswitch_42
        :pswitch_27
        :pswitch_c
    .end packed-switch
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

    .line 3172
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    .line 3174
    const-wide v1, 0x10b00000006L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v1

    .line 3175
    :goto_e
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_18b

    .line 3176
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v3

    packed-switch v3, :pswitch_data_19e

    .line 3266
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unhandled field while reading RemoteViews proto!\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3267
    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3266
    const-string v4, "RemoteViews"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 3261
    :pswitch_39
    nop

    .line 3262
    const-wide v3, 0x10b00000014L

    invoke-static {p0, v3, v4}, Landroid/widget/RemoteViews;->-$$Nest$smcreateDurationFromProto(Landroid/util/proto/ProtoInputStream;J)Ljava/time/Duration;

    move-result-object v5

    .line 3261
    invoke-virtual {v0, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 3264
    goto :goto_e

    .line 3256
    :pswitch_47
    nop

    .line 3257
    const-wide v3, 0x10b00000013L

    invoke-static {p0, v3, v4}, Landroid/widget/RemoteViews;->-$$Nest$smcreateInstantFromProto(Landroid/util/proto/ProtoInputStream;J)Ljava/time/Instant;

    move-result-object v5

    .line 3256
    invoke-virtual {v0, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 3259
    goto :goto_e

    .line 3251
    :pswitch_55
    nop

    .line 3252
    const-wide v3, 0x10500000012L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v5

    invoke-static {v5}, Landroid/graphics/BlendMode;->fromValue(I)Landroid/graphics/BlendMode;

    move-result-object v5

    .line 3251
    invoke-virtual {v0, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 3254
    goto :goto_e

    .line 3246
    :pswitch_67
    nop

    .line 3247
    const-wide v3, 0x10b00000011L

    invoke-static {p0, v3, v4}, Landroid/widget/RemoteViews;->-$$Nest$smcreateIconFromProto(Landroid/util/proto/ProtoInputStream;J)Landroid/widget/RemoteViews$PendingResources;

    move-result-object v5

    .line 3246
    invoke-virtual {v0, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 3249
    goto :goto_e

    .line 3241
    :pswitch_75
    nop

    .line 3242
    const-wide v3, 0x10b00000010L

    invoke-static {p0, v3, v4}, Landroid/widget/RemoteViews;->-$$Nest$smcreateColorStateListFromProto(Landroid/util/proto/ProtoInputStream;J)Landroid/content/res/ColorStateList;

    move-result-object v5

    .line 3241
    invoke-virtual {v0, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 3244
    goto :goto_e

    .line 3235
    :pswitch_83
    const-wide v3, 0x10c0000000fL

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readBytes(J)[B

    move-result-object v5

    .line 3237
    array-length v6, v5

    .line 3238
    const/4 v7, 0x0

    invoke-static {v5, v7, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 3237
    invoke-virtual {v0, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 3239
    goto/16 :goto_e

    .line 3231
    :pswitch_97
    nop

    .line 3232
    const-wide v3, 0x1090000000eL

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v5

    .line 3231
    invoke-virtual {v0, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 3233
    goto/16 :goto_e

    .line 3226
    :pswitch_a6
    nop

    .line 3227
    const-wide v3, 0x10b0000000dL

    invoke-static {p0, v3, v4}, Landroid/widget/RemoteViews;->-$$Nest$smcreateCharSequenceFromProto(Landroid/util/proto/ProtoInputStream;J)Ljava/lang/CharSequence;

    move-result-object v5

    .line 3226
    invoke-virtual {v0, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 3229
    goto/16 :goto_e

    .line 3222
    :pswitch_b5
    nop

    .line 3223
    const-wide v3, 0x1090000000cL

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v5

    .line 3222
    invoke-virtual {v0, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 3224
    goto/16 :goto_e

    .line 3218
    :pswitch_c4
    nop

    .line 3219
    const-wide v3, 0x1050000000bL

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v5

    int-to-char v5, v5

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    .line 3218
    invoke-virtual {v0, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 3220
    goto/16 :goto_e

    .line 3214
    :pswitch_d8
    nop

    .line 3215
    const-wide v3, 0x1010000000aL

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readDouble(J)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    .line 3214
    invoke-virtual {v0, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 3216
    goto/16 :goto_e

    .line 3210
    :pswitch_eb
    nop

    .line 3211
    const-wide v3, 0x10200000009L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readFloat(J)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    .line 3210
    invoke-virtual {v0, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 3212
    goto/16 :goto_e

    .line 3206
    :pswitch_fe
    nop

    .line 3207
    const-wide v3, 0x10300000008L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 3206
    invoke-virtual {v0, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 3208
    goto/16 :goto_e

    .line 3202
    :pswitch_111
    nop

    .line 3203
    const-wide v3, 0x10500000007L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 3202
    invoke-virtual {v0, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 3204
    goto/16 :goto_e

    .line 3198
    :pswitch_124
    nop

    .line 3199
    const-wide v3, 0x10500000006L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v5

    int-to-short v5, v5

    invoke-static {v5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    .line 3198
    invoke-virtual {v0, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 3200
    goto/16 :goto_e

    .line 3194
    :pswitch_138
    nop

    .line 3195
    const-wide v3, 0x10c00000005L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readBytes(J)[B

    move-result-object v5

    .line 3194
    invoke-virtual {v0, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 3196
    goto/16 :goto_e

    .line 3190
    :pswitch_147
    nop

    .line 3191
    const-wide v3, 0x10800000004L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readBoolean(J)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 3190
    invoke-virtual {v0, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 3192
    goto/16 :goto_e

    .line 3186
    :pswitch_15a
    nop

    .line 3187
    const-wide v3, 0x10500000003L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 3186
    invoke-virtual {v0, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 3188
    goto/16 :goto_e

    .line 3182
    :pswitch_16d
    nop

    .line 3183
    const-wide v3, 0x10900000002L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v5

    .line 3182
    invoke-virtual {v0, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 3184
    goto/16 :goto_e

    .line 3178
    :pswitch_17c
    nop

    .line 3179
    const-wide v3, 0x10900000001L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v5

    .line 3178
    invoke-virtual {v0, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 3180
    goto/16 :goto_e

    .line 3270
    :cond_18b
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 3272
    const/4 p0, 0x3

    new-array p0, p0, [J

    fill-array-data p0, :array_1ca

    invoke-static {v0, p0}, Landroid/widget/RemoteViews;->-$$Nest$smcheckContainsKeys(Landroid/util/LongSparseArray;[J)V

    .line 3276
    new-instance p0, Landroid/widget/RemoteViews$ReflectionAction$$ExternalSyntheticLambda0;

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$ReflectionAction$$ExternalSyntheticLambda0;-><init>(Landroid/util/LongSparseArray;)V

    return-object p0

    nop

    :pswitch_data_19e
    .packed-switch 0x1
        :pswitch_17c
        :pswitch_16d
        :pswitch_15a
        :pswitch_147
        :pswitch_138
        :pswitch_124
        :pswitch_111
        :pswitch_fe
        :pswitch_eb
        :pswitch_d8
        :pswitch_c4
        :pswitch_b5
        :pswitch_a6
        :pswitch_97
        :pswitch_83
        :pswitch_75
        :pswitch_67
        :pswitch_55
        :pswitch_47
        :pswitch_39
    .end packed-switch

    :array_1ca
    .array-data 8
        0x10900000001L
        0x10900000002L
        0x10500000003L
    .end array-data
.end method

.method static synthetic blacklist lambda$createFromProto$0(Landroid/util/LongSparseArray;Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/RemoteViews$HierarchyRootData;I)Landroid/widget/RemoteViews$Action;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3277
    const-wide v0, 0x10900000001L

    invoke-static {p2, p0, v0, v1}, Landroid/widget/RemoteViews;->-$$Nest$smgetAsIdentifier(Landroid/content/res/Resources;Landroid/util/LongSparseArray;J)I

    move-result v0

    .line 3279
    nop

    .line 3280
    const-wide v1, 0x10500000003L

    invoke-virtual {p0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 3282
    const/4 v2, 0x0

    .line 3296
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 3282
    const/4 v4, 0x0

    packed-switch v1, :pswitch_data_16a

    .line 3354
    :pswitch_22
    return-object v4

    .line 3347
    :pswitch_23
    const-wide p1, 0x10b00000014L

    invoke-virtual {p0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Ljava/time/Duration;

    .line 3349
    goto/16 :goto_158

    .line 3343
    :pswitch_31
    const-wide p1, 0x10b00000013L

    invoke-virtual {p0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Ljava/time/Instant;

    .line 3345
    goto/16 :goto_158

    .line 3330
    :pswitch_3f
    const-wide p1, 0x10500000012L

    invoke-virtual {p0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Landroid/graphics/BlendMode;

    .line 3332
    goto/16 :goto_158

    .line 3338
    :pswitch_4d
    const-wide v2, 0x10b00000011L

    invoke-virtual {p0, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews$PendingResources;

    .line 3339
    invoke-interface {v2, p1, p2, p3, p4}, Landroid/widget/RemoteViews$PendingResources;->create(Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/RemoteViews$HierarchyRootData;I)Ljava/lang/Object;

    move-result-object v4

    .line 3341
    goto/16 :goto_158

    .line 3334
    :pswitch_5e
    const-wide p1, 0x10b00000010L

    invoke-virtual {p0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Landroid/content/res/ColorStateList;

    .line 3336
    goto/16 :goto_158

    .line 3327
    :pswitch_6c
    const-wide p1, 0x10c0000000fL

    invoke-virtual {p0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Landroid/graphics/Bitmap;

    .line 3328
    goto/16 :goto_158

    .line 3323
    :pswitch_7a
    nop

    .line 3324
    const-wide p1, 0x1090000000eL

    invoke-virtual {p0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 3323
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 3325
    goto/16 :goto_158

    .line 3319
    :pswitch_8c
    const-wide p1, 0x10b0000000dL

    invoke-virtual {p0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Ljava/lang/CharSequence;

    .line 3321
    goto/16 :goto_158

    .line 3316
    :pswitch_9a
    const-wide p1, 0x1090000000cL

    invoke-virtual {p0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Ljava/lang/String;

    .line 3317
    goto/16 :goto_158

    .line 3313
    :pswitch_a8
    const-wide p1, 0x1050000000bL

    invoke-virtual {p0, p1, p2, v3}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    .line 3314
    goto/16 :goto_158

    .line 3309
    :pswitch_bd
    nop

    .line 3310
    nop

    .line 3309
    const-wide p1, 0x1010000000aL

    invoke-virtual {p0, p1, p2, v3}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    .line 3311
    goto/16 :goto_158

    .line 3305
    :pswitch_d4
    nop

    .line 3306
    nop

    .line 3305
    const-wide p1, 0x10200000009L

    invoke-virtual {p0, p1, p2, v3}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    .line 3307
    goto :goto_158

    .line 3302
    :pswitch_ea
    const-wide p1, 0x10300000008L

    invoke-virtual {p0, p1, p2, v3}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 3303
    goto :goto_158

    .line 3299
    :pswitch_fe
    const-wide p1, 0x10500000007L

    invoke-virtual {p0, p1, p2, v3}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 3300
    goto :goto_158

    .line 3295
    :pswitch_112
    nop

    .line 3296
    nop

    .line 3295
    const-wide p1, 0x10500000006L

    invoke-virtual {p0, p1, p2, v3}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    .line 3297
    goto :goto_158

    .line 3288
    :pswitch_128
    const-wide p1, 0x10c00000005L

    invoke-virtual {p0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    .line 3290
    if-eqz p1, :cond_158

    array-length p2, p1

    if-lez p2, :cond_158

    .line 3291
    aget-byte p1, p1, v2

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    goto :goto_158

    .line 3284
    :pswitch_13f
    nop

    .line 3285
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 3284
    const-wide p2, 0x10800000004L

    invoke-virtual {p0, p2, p3, p1}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 3286
    nop

    .line 3356
    :cond_158
    :goto_158
    new-instance p1, Landroid/widget/RemoteViews$ReflectionAction;

    .line 3357
    const-wide p2, 0x10900000002L

    invoke-virtual {p0, p2, p3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-direct {p1, v0, p0, v1, v4}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(ILjava/lang/String;ILjava/lang/Object;)V

    .line 3356
    return-object p1

    nop

    :pswitch_data_16a
    .packed-switch 0x1
        :pswitch_13f
        :pswitch_128
        :pswitch_112
        :pswitch_fe
        :pswitch_ea
        :pswitch_d4
        :pswitch_bd
        :pswitch_a8
        :pswitch_9a
        :pswitch_8c
        :pswitch_7a
        :pswitch_6c
        :pswitch_22
        :pswitch_22
        :pswitch_5e
        :pswitch_4d
        :pswitch_3f
        :pswitch_31
        :pswitch_23
    .end packed-switch
.end method


# virtual methods
.method public blacklist canWriteToProto()Z
    .registers 2

    .line 3076
    const/4 v0, 0x1

    return v0
.end method

.method public greylist-max-o getActionTag()I
    .registers 2

    .line 3071
    const/4 v0, 0x2

    return v0
.end method

.method protected blacklist getParameterValue(Landroid/view/View;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/widget/RemoteViews$ActionException;
        }
    .end annotation

    .line 3066
    iget-object p1, p0, Landroid/widget/RemoteViews$ReflectionAction;->mValue:Ljava/lang/Object;

    return-object p1
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    .line 2993
    invoke-super {p0, p1, p2}, Landroid/widget/RemoteViews$BaseReflectionAction;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2996
    iget v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->mType:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_e4

    goto/16 :goto_e3

    .line 3050
    :pswitch_c
    iget-object p2, p0, Landroid/widget/RemoteViews$ReflectionAction;->mValue:Ljava/lang/Object;

    if-eqz p2, :cond_2b

    .line 3051
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3052
    iget-object p2, p0, Landroid/widget/RemoteViews$ReflectionAction;->mValue:Ljava/lang/Object;

    check-cast p2, Ljava/time/Duration;

    invoke-virtual {p2}, Ljava/time/Duration;->getSeconds()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3053
    iget-object p2, p0, Landroid/widget/RemoteViews$ReflectionAction;->mValue:Ljava/lang/Object;

    check-cast p2, Ljava/time/Duration;

    invoke-virtual {p2}, Ljava/time/Duration;->getNano()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_e3

    .line 3055
    :cond_2b
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3057
    goto/16 :goto_e3

    .line 3041
    :pswitch_30
    iget-object p2, p0, Landroid/widget/RemoteViews$ReflectionAction;->mValue:Ljava/lang/Object;

    if-eqz p2, :cond_4f

    .line 3042
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3043
    iget-object p2, p0, Landroid/widget/RemoteViews$ReflectionAction;->mValue:Ljava/lang/Object;

    check-cast p2, Ljava/time/Instant;

    invoke-virtual {p2}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3044
    iget-object p2, p0, Landroid/widget/RemoteViews$ReflectionAction;->mValue:Ljava/lang/Object;

    check-cast p2, Ljava/time/Instant;

    invoke-virtual {p2}, Ljava/time/Instant;->getNano()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_e3

    .line 3046
    :cond_4f
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3048
    goto/16 :goto_e3

    .line 3031
    :pswitch_54
    iget-object p2, p0, Landroid/widget/RemoteViews$ReflectionAction;->mValue:Ljava/lang/Object;

    check-cast p2, Landroid/graphics/BlendMode;

    invoke-static {p2}, Landroid/graphics/BlendMode;->toValue(Landroid/graphics/BlendMode;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3032
    goto/16 :goto_e3

    .line 3028
    :pswitch_61
    iget-object p2, p0, Landroid/widget/RemoteViews$ReflectionAction;->mValue:Ljava/lang/Object;

    check-cast p2, Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 3029
    goto/16 :goto_e3

    .line 3038
    :pswitch_6a
    iget-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->mValue:Ljava/lang/Object;

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3039
    goto/16 :goto_e3

    .line 3025
    :pswitch_73
    iget-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 3026
    goto :goto_e3

    .line 3022
    :pswitch_7b
    iget-object p2, p0, Landroid/widget/RemoteViews$ReflectionAction;->mValue:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 3023
    goto :goto_e3

    .line 3019
    :pswitch_83
    iget-object p2, p0, Landroid/widget/RemoteViews$ReflectionAction;->mValue:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Character;

    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3020
    goto :goto_e3

    .line 3016
    :pswitch_8f
    iget-object p2, p0, Landroid/widget/RemoteViews$ReflectionAction;->mValue:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 3017
    goto :goto_e3

    .line 3013
    :pswitch_9b
    iget-object p2, p0, Landroid/widget/RemoteViews$ReflectionAction;->mValue:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 3014
    goto :goto_e3

    .line 3010
    :pswitch_a7
    iget-object p2, p0, Landroid/widget/RemoteViews$ReflectionAction;->mValue:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3011
    goto :goto_e3

    .line 3007
    :pswitch_b3
    iget-object p2, p0, Landroid/widget/RemoteViews$ReflectionAction;->mValue:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3008
    goto :goto_e3

    .line 3004
    :pswitch_bf
    iget-object p2, p0, Landroid/widget/RemoteViews$ReflectionAction;->mValue:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Short;

    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3005
    goto :goto_e3

    .line 3001
    :pswitch_cb
    iget-object p2, p0, Landroid/widget/RemoteViews$ReflectionAction;->mValue:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Byte;

    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 3002
    goto :goto_e3

    .line 2998
    :pswitch_d7
    iget-object p2, p0, Landroid/widget/RemoteViews$ReflectionAction;->mValue:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2999
    nop

    .line 3061
    :goto_e3
    return-void

    :pswitch_data_e4
    .packed-switch 0x1
        :pswitch_d7
        :pswitch_cb
        :pswitch_bf
        :pswitch_b3
        :pswitch_a7
        :pswitch_9b
        :pswitch_8f
        :pswitch_83
        :pswitch_7b
        :pswitch_73
        :pswitch_6a
        :pswitch_6a
        :pswitch_61
        :pswitch_6a
        :pswitch_6a
        :pswitch_6a
        :pswitch_54
        :pswitch_30
        :pswitch_c
    .end packed-switch
.end method

.method public blacklist writeToProto(Landroid/util/proto/ProtoOutputStream;Landroid/content/Context;Landroid/content/res/Resources;)V
    .registers 8

    .line 3081
    const-wide v0, 0x10b00000006L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 3082
    iget p2, p0, Landroid/widget/RemoteViews$ReflectionAction;->mViewId:I

    .line 3083
    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p2

    .line 3082
    const-wide v2, 0x10900000001L

    invoke-virtual {p1, v2, v3, p2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 3084
    const-wide v2, 0x10900000002L

    iget-object p2, p0, Landroid/widget/RemoteViews$ReflectionAction;->mMethodName:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, p2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 3085
    const-wide v2, 0x10500000003L

    iget p2, p0, Landroid/widget/RemoteViews$ReflectionAction;->mType:I

    invoke-virtual {p1, v2, v3, p2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3086
    iget-object p2, p0, Landroid/widget/RemoteViews$ReflectionAction;->mValue:Ljava/lang/Object;

    if-eqz p2, :cond_163

    .line 3087
    iget p2, p0, Landroid/widget/RemoteViews$ReflectionAction;->mType:I

    packed-switch p2, :pswitch_data_168

    :pswitch_34
    goto/16 :goto_163

    .line 3158
    :pswitch_36
    iget-object p2, p0, Landroid/widget/RemoteViews$ReflectionAction;->mValue:Ljava/lang/Object;

    check-cast p2, Ljava/time/Duration;

    const-wide v2, 0x10b00000014L

    invoke-static {p1, p2, v2, v3}, Landroid/widget/RemoteViews;->-$$Nest$smwriteDurationToProto(Landroid/util/proto/ProtoOutputStream;Ljava/time/Duration;J)V

    .line 3160
    goto/16 :goto_163

    .line 3154
    :pswitch_44
    iget-object p2, p0, Landroid/widget/RemoteViews$ReflectionAction;->mValue:Ljava/lang/Object;

    check-cast p2, Ljava/time/Instant;

    const-wide v2, 0x10b00000013L

    invoke-static {p1, p2, v2, v3}, Landroid/widget/RemoteViews;->-$$Nest$smwriteInstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/time/Instant;J)V

    .line 3156
    goto/16 :goto_163

    .line 3142
    :pswitch_52
    iget-object p2, p0, Landroid/widget/RemoteViews$ReflectionAction;->mValue:Ljava/lang/Object;

    check-cast p2, Landroid/graphics/BlendMode;

    .line 3143
    invoke-static {p2}, Landroid/graphics/BlendMode;->toValue(Landroid/graphics/BlendMode;)I

    move-result p2

    .line 3142
    const-wide v2, 0x10500000012L

    invoke-virtual {p1, v2, v3, p2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3144
    goto/16 :goto_163

    .line 3150
    :pswitch_64
    iget-object p2, p0, Landroid/widget/RemoteViews$ReflectionAction;->mValue:Ljava/lang/Object;

    check-cast p2, Landroid/graphics/drawable/Icon;

    const-wide v2, 0x10b00000011L

    invoke-static {p1, p3, p2, v2, v3}, Landroid/widget/RemoteViews;->-$$Nest$smwriteIconToProto(Landroid/util/proto/ProtoOutputStream;Landroid/content/res/Resources;Landroid/graphics/drawable/Icon;J)V

    .line 3152
    goto/16 :goto_163

    .line 3146
    :pswitch_72
    iget-object p2, p0, Landroid/widget/RemoteViews$ReflectionAction;->mValue:Ljava/lang/Object;

    check-cast p2, Landroid/content/res/ColorStateList;

    const-wide v2, 0x10b00000010L

    invoke-static {p1, p2, v2, v3}, Landroid/widget/RemoteViews;->-$$Nest$smwriteColorStateListToProto(Landroid/util/proto/ProtoOutputStream;Landroid/content/res/ColorStateList;J)V

    .line 3148
    goto/16 :goto_163

    .line 3135
    :pswitch_80
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 3136
    iget-object p3, p0, Landroid/widget/RemoteViews$ReflectionAction;->mValue:Ljava/lang/Object;

    check-cast p3, Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->WEBP_LOSSLESS:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p3, v2, v3, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 3138
    nop

    .line 3139
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    .line 3138
    const-wide v2, 0x10c0000000fL

    invoke-virtual {p1, v2, v3, p2}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V

    .line 3140
    goto/16 :goto_163

    .line 3131
    :pswitch_9f
    iget-object p2, p0, Landroid/widget/RemoteViews$ReflectionAction;->mValue:Ljava/lang/Object;

    check-cast p2, Landroid/net/Uri;

    .line 3132
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    .line 3131
    const-wide v2, 0x1090000000eL

    invoke-virtual {p1, v2, v3, p2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 3133
    goto/16 :goto_163

    .line 3124
    :pswitch_b1
    const-wide p2, 0x10b0000000dL

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 3126
    iget-object v2, p0, Landroid/widget/RemoteViews$ReflectionAction;->mValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {p1, v2}, Landroid/widget/RemoteViewsSerializers;->writeCharSequenceToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/CharSequence;)V

    .line 3128
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 3129
    goto/16 :goto_163

    .line 3120
    :pswitch_c6
    iget-object p2, p0, Landroid/widget/RemoteViews$ReflectionAction;->mValue:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    const-wide v2, 0x1090000000cL

    invoke-virtual {p1, v2, v3, p2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 3122
    goto/16 :goto_163

    .line 3116
    :pswitch_d4
    iget-object p2, p0, Landroid/widget/RemoteViews$ReflectionAction;->mValue:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Character;

    .line 3117
    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result p2

    .line 3116
    const-wide v2, 0x1050000000bL

    invoke-virtual {p1, v2, v3, p2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3118
    goto/16 :goto_163

    .line 3112
    :pswitch_e6
    iget-object p2, p0, Landroid/widget/RemoteViews$ReflectionAction;->mValue:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Double;

    .line 3113
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p2

    .line 3112
    const-wide v2, 0x1010000000aL

    invoke-virtual {p1, v2, v3, p2, p3}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    .line 3114
    goto :goto_163

    .line 3108
    :pswitch_f7
    iget-object p2, p0, Landroid/widget/RemoteViews$ReflectionAction;->mValue:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Float;

    .line 3109
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    .line 3108
    const-wide v2, 0x10200000009L

    invoke-virtual {p1, v2, v3, p2}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 3110
    goto :goto_163

    .line 3105
    :pswitch_108
    iget-object p2, p0, Landroid/widget/RemoteViews$ReflectionAction;->mValue:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    const-wide v2, 0x10300000008L

    invoke-virtual {p1, v2, v3, p2, p3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3106
    goto :goto_163

    .line 3102
    :pswitch_119
    iget-object p2, p0, Landroid/widget/RemoteViews$ReflectionAction;->mValue:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const-wide v2, 0x10500000007L

    invoke-virtual {p1, v2, v3, p2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3103
    goto :goto_163

    .line 3098
    :pswitch_12a
    iget-object p2, p0, Landroid/widget/RemoteViews$ReflectionAction;->mValue:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Short;

    .line 3099
    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result p2

    .line 3098
    const-wide v2, 0x10500000006L

    invoke-virtual {p1, v2, v3, p2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3100
    goto :goto_163

    .line 3094
    :pswitch_13b
    iget-object p2, p0, Landroid/widget/RemoteViews$ReflectionAction;->mValue:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Byte;

    .line 3095
    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result p2

    const/4 p3, 0x1

    new-array p3, p3, [B

    const/4 v2, 0x0

    aput-byte p2, p3, v2

    .line 3094
    const-wide v2, 0x10c00000005L

    invoke-virtual {p1, v2, v3, p3}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V

    .line 3096
    goto :goto_163

    .line 3090
    :pswitch_152
    iget-object p2, p0, Landroid/widget/RemoteViews$ReflectionAction;->mValue:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Boolean;

    .line 3091
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 3090
    const-wide v2, 0x10800000004L

    invoke-virtual {p1, v2, v3, p2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3092
    nop

    .line 3167
    :cond_163
    :goto_163
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 3168
    return-void

    nop

    :pswitch_data_168
    .packed-switch 0x1
        :pswitch_152
        :pswitch_13b
        :pswitch_12a
        :pswitch_119
        :pswitch_108
        :pswitch_f7
        :pswitch_e6
        :pswitch_d4
        :pswitch_c6
        :pswitch_b1
        :pswitch_9f
        :pswitch_80
        :pswitch_34
        :pswitch_34
        :pswitch_72
        :pswitch_64
        :pswitch_52
        :pswitch_44
        :pswitch_36
    .end packed-switch
.end method
