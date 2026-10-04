.class public final Landroid/window/TransitionRequestInfo;
.super Ljava/lang/Object;
.source "TransitionRequestInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/TransitionRequestInfo$PipChange;,
        Landroid/window/TransitionRequestInfo$RemoteTransitionInfo;,
        Landroid/window/TransitionRequestInfo$DisplayChange;,
        Landroid/window/TransitionRequestInfo$RequestedLocation;,
        Landroid/window/TransitionRequestInfo$UserChange;,
        Landroid/window/TransitionRequestInfo$WindowingLayerChange;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/TransitionRequestInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mDebugId:I

.field private blacklist mDisplayChange:Landroid/window/TransitionRequestInfo$DisplayChange;

.field private final blacklist mFlags:I

.field private blacklist mPipChange:Landroid/window/TransitionRequestInfo$PipChange;

.field private blacklist mRemoteTransitionInfo:Landroid/window/TransitionRequestInfo$RemoteTransitionInfo;

.field private blacklist mRequestedLocation:Landroid/window/TransitionRequestInfo$RequestedLocation;

.field private blacklist mTriggerTask:Landroid/app/ActivityManager$RunningTaskInfo;

.field private final blacklist mType:I

.field private blacklist mUserChange:Landroid/window/TransitionRequestInfo$UserChange;

.field private blacklist mWindowingLayerChange:Landroid/window/TransitionRequestInfo$WindowingLayerChange;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1279
    new-instance v0, Landroid/window/TransitionRequestInfo$1;

    invoke-direct {v0}, Landroid/window/TransitionRequestInfo$1;-><init>()V

    sput-object v0, Landroid/window/TransitionRequestInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(ILandroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/window/TransitionRequestInfo$RemoteTransitionInfo;Landroid/window/TransitionRequestInfo$DisplayChange;I)V
    .registers 20

    .line 128
    move-object/from16 v0, p3

    .line 129
    if-eqz v0, :cond_a

    new-instance v1, Landroid/window/TransitionRequestInfo$PipChange;

    invoke-direct {v1, v0}, Landroid/window/TransitionRequestInfo$PipChange;-><init>(Landroid/app/ActivityManager$RunningTaskInfo;)V

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    move-object v5, v1

    .line 128
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, -0x1

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v11, p6

    invoke-direct/range {v2 .. v12}, Landroid/window/TransitionRequestInfo;-><init>(ILandroid/app/ActivityManager$RunningTaskInfo;Landroid/window/TransitionRequestInfo$PipChange;Landroid/window/TransitionRequestInfo$RemoteTransitionInfo;Landroid/window/TransitionRequestInfo$DisplayChange;Landroid/window/TransitionRequestInfo$RequestedLocation;Landroid/window/TransitionRequestInfo$UserChange;Landroid/window/TransitionRequestInfo$WindowingLayerChange;II)V

    .line 132
    return-void
.end method

.method public constructor blacklist <init>(ILandroid/app/ActivityManager$RunningTaskInfo;Landroid/window/TransitionRequestInfo$PipChange;Landroid/window/TransitionRequestInfo$RemoteTransitionInfo;Landroid/window/TransitionRequestInfo$DisplayChange;Landroid/window/TransitionRequestInfo$RequestedLocation;Landroid/window/TransitionRequestInfo$UserChange;Landroid/window/TransitionRequestInfo$WindowingLayerChange;II)V
    .registers 13

    .line 1022
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1023
    iput p1, p0, Landroid/window/TransitionRequestInfo;->mType:I

    .line 1024
    const-class p1, Landroid/view/WindowManager$TransitionType;

    const/4 v0, 0x0

    iget v1, p0, Landroid/window/TransitionRequestInfo;->mType:I

    invoke-static {p1, v0, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 1026
    iput-object p2, p0, Landroid/window/TransitionRequestInfo;->mTriggerTask:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1027
    iput-object p3, p0, Landroid/window/TransitionRequestInfo;->mPipChange:Landroid/window/TransitionRequestInfo$PipChange;

    .line 1028
    iput-object p4, p0, Landroid/window/TransitionRequestInfo;->mRemoteTransitionInfo:Landroid/window/TransitionRequestInfo$RemoteTransitionInfo;

    .line 1029
    iput-object p5, p0, Landroid/window/TransitionRequestInfo;->mDisplayChange:Landroid/window/TransitionRequestInfo$DisplayChange;

    .line 1030
    iput-object p6, p0, Landroid/window/TransitionRequestInfo;->mRequestedLocation:Landroid/window/TransitionRequestInfo$RequestedLocation;

    .line 1031
    iput-object p7, p0, Landroid/window/TransitionRequestInfo;->mUserChange:Landroid/window/TransitionRequestInfo$UserChange;

    .line 1032
    iput-object p8, p0, Landroid/window/TransitionRequestInfo;->mWindowingLayerChange:Landroid/window/TransitionRequestInfo$WindowingLayerChange;

    .line 1033
    iput p9, p0, Landroid/window/TransitionRequestInfo;->mFlags:I

    .line 1034
    iput p10, p0, Landroid/window/TransitionRequestInfo;->mDebugId:I

    .line 1037
    return-void
.end method

.method public constructor blacklist <init>(ILandroid/app/ActivityManager$RunningTaskInfo;Landroid/window/TransitionRequestInfo$RemoteTransitionInfo;)V
    .registers 15

    .line 92
    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v10}, Landroid/window/TransitionRequestInfo;-><init>(ILandroid/app/ActivityManager$RunningTaskInfo;Landroid/window/TransitionRequestInfo$PipChange;Landroid/window/TransitionRequestInfo$RemoteTransitionInfo;Landroid/window/TransitionRequestInfo$DisplayChange;Landroid/window/TransitionRequestInfo$RequestedLocation;Landroid/window/TransitionRequestInfo$UserChange;Landroid/window/TransitionRequestInfo$WindowingLayerChange;II)V

    .line 95
    return-void
.end method

.method public constructor blacklist <init>(ILandroid/app/ActivityManager$RunningTaskInfo;Landroid/window/TransitionRequestInfo$RemoteTransitionInfo;I)V
    .registers 16

    .line 103
    const/4 v8, 0x0

    const/4 v10, -0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    move v9, p4

    invoke-direct/range {v0 .. v10}, Landroid/window/TransitionRequestInfo;-><init>(ILandroid/app/ActivityManager$RunningTaskInfo;Landroid/window/TransitionRequestInfo$PipChange;Landroid/window/TransitionRequestInfo$RemoteTransitionInfo;Landroid/window/TransitionRequestInfo$DisplayChange;Landroid/window/TransitionRequestInfo$RequestedLocation;Landroid/window/TransitionRequestInfo$UserChange;Landroid/window/TransitionRequestInfo$WindowingLayerChange;II)V

    .line 106
    return-void
.end method

.method public constructor blacklist <init>(ILandroid/app/ActivityManager$RunningTaskInfo;Landroid/window/TransitionRequestInfo$RemoteTransitionInfo;Landroid/window/TransitionRequestInfo$DisplayChange;I)V
    .registers 17

    .line 115
    const/4 v8, 0x0

    const/4 v10, -0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move/from16 v9, p5

    invoke-direct/range {v0 .. v10}, Landroid/window/TransitionRequestInfo;-><init>(ILandroid/app/ActivityManager$RunningTaskInfo;Landroid/window/TransitionRequestInfo$PipChange;Landroid/window/TransitionRequestInfo$RemoteTransitionInfo;Landroid/window/TransitionRequestInfo$DisplayChange;Landroid/window/TransitionRequestInfo$RequestedLocation;Landroid/window/TransitionRequestInfo$UserChange;Landroid/window/TransitionRequestInfo$WindowingLayerChange;II)V

    .line 118
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 13

    .line 1246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1250
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1251
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1252
    and-int/lit8 v2, v0, 0x2

    const/4 v3, 0x0

    if-nez v2, :cond_12

    move-object v2, v3

    goto :goto_1a

    :cond_12
    sget-object v2, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1253
    :goto_1a
    and-int/lit8 v4, v0, 0x4

    if-nez v4, :cond_20

    move-object v4, v3

    goto :goto_28

    :cond_20
    sget-object v4, Landroid/window/TransitionRequestInfo$PipChange;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/window/TransitionRequestInfo$PipChange;

    .line 1254
    :goto_28
    and-int/lit8 v5, v0, 0x8

    if-nez v5, :cond_2e

    move-object v5, v3

    goto :goto_36

    :cond_2e
    sget-object v5, Landroid/window/TransitionRequestInfo$RemoteTransitionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/window/TransitionRequestInfo$RemoteTransitionInfo;

    .line 1255
    :goto_36
    and-int/lit8 v6, v0, 0x10

    if-nez v6, :cond_3c

    move-object v6, v3

    goto :goto_44

    :cond_3c
    sget-object v6, Landroid/window/TransitionRequestInfo$DisplayChange;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/window/TransitionRequestInfo$DisplayChange;

    .line 1256
    :goto_44
    and-int/lit8 v7, v0, 0x20

    if-nez v7, :cond_4a

    move-object v7, v3

    goto :goto_52

    :cond_4a
    sget-object v7, Landroid/window/TransitionRequestInfo$RequestedLocation;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/window/TransitionRequestInfo$RequestedLocation;

    .line 1257
    :goto_52
    and-int/lit8 v8, v0, 0x40

    if-nez v8, :cond_58

    move-object v8, v3

    goto :goto_60

    :cond_58
    sget-object v8, Landroid/window/TransitionRequestInfo$UserChange;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/window/TransitionRequestInfo$UserChange;

    .line 1258
    :goto_60
    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_66

    move-object v0, v3

    goto :goto_6e

    :cond_66
    sget-object v0, Landroid/window/TransitionRequestInfo$WindowingLayerChange;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/TransitionRequestInfo$WindowingLayerChange;

    .line 1259
    :goto_6e
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1260
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1262
    iput v1, p0, Landroid/window/TransitionRequestInfo;->mType:I

    .line 1263
    const-class v1, Landroid/view/WindowManager$TransitionType;

    iget v10, p0, Landroid/window/TransitionRequestInfo;->mType:I

    invoke-static {v1, v3, v10}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 1265
    iput-object v2, p0, Landroid/window/TransitionRequestInfo;->mTriggerTask:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1266
    iput-object v4, p0, Landroid/window/TransitionRequestInfo;->mPipChange:Landroid/window/TransitionRequestInfo$PipChange;

    .line 1267
    iput-object v5, p0, Landroid/window/TransitionRequestInfo;->mRemoteTransitionInfo:Landroid/window/TransitionRequestInfo$RemoteTransitionInfo;

    .line 1268
    iput-object v6, p0, Landroid/window/TransitionRequestInfo;->mDisplayChange:Landroid/window/TransitionRequestInfo$DisplayChange;

    .line 1269
    iput-object v7, p0, Landroid/window/TransitionRequestInfo;->mRequestedLocation:Landroid/window/TransitionRequestInfo$RequestedLocation;

    .line 1270
    iput-object v8, p0, Landroid/window/TransitionRequestInfo;->mUserChange:Landroid/window/TransitionRequestInfo$UserChange;

    .line 1271
    iput-object v0, p0, Landroid/window/TransitionRequestInfo;->mWindowingLayerChange:Landroid/window/TransitionRequestInfo$WindowingLayerChange;

    .line 1272
    iput v9, p0, Landroid/window/TransitionRequestInfo;->mFlags:I

    .line 1273
    iput p1, p0, Landroid/window/TransitionRequestInfo;->mDebugId:I

    .line 1276
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1298
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 1241
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getDebugId()I
    .registers 2

    .line 1121
    iget v0, p0, Landroid/window/TransitionRequestInfo;->mDebugId:I

    return v0
.end method

.method public blacklist getDisplayChange()Landroid/window/TransitionRequestInfo$DisplayChange;
    .registers 2

    .line 1080
    iget-object v0, p0, Landroid/window/TransitionRequestInfo;->mDisplayChange:Landroid/window/TransitionRequestInfo$DisplayChange;

    return-object v0
.end method

.method public blacklist getFlags()I
    .registers 2

    .line 1113
    iget v0, p0, Landroid/window/TransitionRequestInfo;->mFlags:I

    return v0
.end method

.method public blacklist getPipChange()Landroid/window/TransitionRequestInfo$PipChange;
    .registers 2

    .line 1062
    iget-object v0, p0, Landroid/window/TransitionRequestInfo;->mPipChange:Landroid/window/TransitionRequestInfo$PipChange;

    return-object v0
.end method

.method public blacklist getRemoteTransition()Landroid/window/RemoteTransition;
    .registers 4

    .line 141
    iget-object v0, p0, Landroid/window/TransitionRequestInfo;->mRemoteTransitionInfo:Landroid/window/TransitionRequestInfo$RemoteTransitionInfo;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 142
    :cond_6
    new-instance v0, Landroid/window/RemoteTransition;

    iget-object v1, p0, Landroid/window/TransitionRequestInfo;->mRemoteTransitionInfo:Landroid/window/TransitionRequestInfo$RemoteTransitionInfo;

    invoke-virtual {v1}, Landroid/window/TransitionRequestInfo$RemoteTransitionInfo;->getRemoteTransition()Landroid/window/IRemoteTransition;

    move-result-object v1

    iget-object v2, p0, Landroid/window/TransitionRequestInfo;->mRemoteTransitionInfo:Landroid/window/TransitionRequestInfo$RemoteTransitionInfo;

    .line 143
    invoke-virtual {v2}, Landroid/window/TransitionRequestInfo$RemoteTransitionInfo;->getDebugName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/window/RemoteTransition;-><init>(Landroid/window/IRemoteTransition;Ljava/lang/String;)V

    .line 142
    return-object v0
.end method

.method public blacklist getRemoteTransitionInfo()Landroid/window/TransitionRequestInfo$RemoteTransitionInfo;
    .registers 2

    .line 1070
    iget-object v0, p0, Landroid/window/TransitionRequestInfo;->mRemoteTransitionInfo:Landroid/window/TransitionRequestInfo$RemoteTransitionInfo;

    return-object v0
.end method

.method public blacklist getRequestedLocation()Landroid/window/TransitionRequestInfo$RequestedLocation;
    .registers 2

    .line 1088
    iget-object v0, p0, Landroid/window/TransitionRequestInfo;->mRequestedLocation:Landroid/window/TransitionRequestInfo$RequestedLocation;

    return-object v0
.end method

.method public blacklist getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;
    .registers 2

    .line 1053
    iget-object v0, p0, Landroid/window/TransitionRequestInfo;->mTriggerTask:Landroid/app/ActivityManager$RunningTaskInfo;

    return-object v0
.end method

.method public blacklist getType()I
    .registers 2

    .line 1044
    iget v0, p0, Landroid/window/TransitionRequestInfo;->mType:I

    return v0
.end method

.method public blacklist getUserChange()Landroid/window/TransitionRequestInfo$UserChange;
    .registers 2

    .line 1096
    iget-object v0, p0, Landroid/window/TransitionRequestInfo;->mUserChange:Landroid/window/TransitionRequestInfo$UserChange;

    return-object v0
.end method

.method public blacklist getWindowingLayerChange()Landroid/window/TransitionRequestInfo$WindowingLayerChange;
    .registers 2

    .line 1105
    iget-object v0, p0, Landroid/window/TransitionRequestInfo;->mWindowingLayerChange:Landroid/window/TransitionRequestInfo$WindowingLayerChange;

    return-object v0
.end method

.method public blacklist setDisplayChange(Landroid/window/TransitionRequestInfo$DisplayChange;)Landroid/window/TransitionRequestInfo;
    .registers 2

    .line 1160
    iput-object p1, p0, Landroid/window/TransitionRequestInfo;->mDisplayChange:Landroid/window/TransitionRequestInfo$DisplayChange;

    .line 1161
    return-object p0
.end method

.method public blacklist setPipChange(Landroid/window/TransitionRequestInfo$PipChange;)Landroid/window/TransitionRequestInfo;
    .registers 2

    .line 1140
    iput-object p1, p0, Landroid/window/TransitionRequestInfo;->mPipChange:Landroid/window/TransitionRequestInfo$PipChange;

    .line 1141
    return-object p0
.end method

.method public blacklist setRemoteTransition(Landroid/window/RemoteTransition;)V
    .registers 3

    .line 148
    if-nez p1, :cond_6

    .line 149
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/window/TransitionRequestInfo;->mRemoteTransitionInfo:Landroid/window/TransitionRequestInfo$RemoteTransitionInfo;

    .line 150
    return-void

    .line 152
    :cond_6
    new-instance v0, Landroid/window/TransitionRequestInfo$RemoteTransitionInfo;

    invoke-direct {v0, p1}, Landroid/window/TransitionRequestInfo$RemoteTransitionInfo;-><init>(Landroid/window/RemoteTransition;)V

    iput-object v0, p0, Landroid/window/TransitionRequestInfo;->mRemoteTransitionInfo:Landroid/window/TransitionRequestInfo$RemoteTransitionInfo;

    .line 153
    return-void
.end method

.method public blacklist setRemoteTransitionInfo(Landroid/window/TransitionRequestInfo$RemoteTransitionInfo;)Landroid/window/TransitionRequestInfo;
    .registers 2

    .line 1149
    iput-object p1, p0, Landroid/window/TransitionRequestInfo;->mRemoteTransitionInfo:Landroid/window/TransitionRequestInfo$RemoteTransitionInfo;

    .line 1150
    return-object p0
.end method

.method public blacklist setRequestedLocation(Landroid/window/TransitionRequestInfo$RequestedLocation;)Landroid/window/TransitionRequestInfo;
    .registers 2

    .line 1169
    iput-object p1, p0, Landroid/window/TransitionRequestInfo;->mRequestedLocation:Landroid/window/TransitionRequestInfo$RequestedLocation;

    .line 1170
    return-object p0
.end method

.method public blacklist setTriggerTask(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/window/TransitionRequestInfo;
    .registers 2

    .line 1130
    iput-object p1, p0, Landroid/window/TransitionRequestInfo;->mTriggerTask:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1131
    return-object p0
.end method

.method public blacklist setUserChange(Landroid/window/TransitionRequestInfo$UserChange;)Landroid/window/TransitionRequestInfo;
    .registers 2

    .line 1178
    iput-object p1, p0, Landroid/window/TransitionRequestInfo;->mUserChange:Landroid/window/TransitionRequestInfo$UserChange;

    .line 1179
    return-object p0
.end method

.method public blacklist setWindowingLayerChange(Landroid/window/TransitionRequestInfo$WindowingLayerChange;)Landroid/window/TransitionRequestInfo;
    .registers 2

    .line 1188
    iput-object p1, p0, Landroid/window/TransitionRequestInfo;->mWindowingLayerChange:Landroid/window/TransitionRequestInfo$WindowingLayerChange;

    .line 1189
    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TransitionRequestInfo { type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1199
    invoke-virtual {p0}, Landroid/window/TransitionRequestInfo;->typeToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", triggerTask = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TransitionRequestInfo;->mTriggerTask:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pipChange = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TransitionRequestInfo;->mPipChange:Landroid/window/TransitionRequestInfo$PipChange;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", remoteTransitionInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TransitionRequestInfo;->mRemoteTransitionInfo:Landroid/window/TransitionRequestInfo$RemoteTransitionInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", displayChange = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TransitionRequestInfo;->mDisplayChange:Landroid/window/TransitionRequestInfo$DisplayChange;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", requestedLocation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TransitionRequestInfo;->mRequestedLocation:Landroid/window/TransitionRequestInfo$RequestedLocation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userChange = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TransitionRequestInfo;->mUserChange:Landroid/window/TransitionRequestInfo$UserChange;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", windowingLayerChange = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TransitionRequestInfo;->mWindowingLayerChange:Landroid/window/TransitionRequestInfo$WindowingLayerChange;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", flags = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/TransitionRequestInfo;->mFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", debugId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/TransitionRequestInfo;->mDebugId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1198
    return-object v0
.end method

.method blacklist typeToString()Ljava/lang/String;
    .registers 2

    .line 136
    iget v0, p0, Landroid/window/TransitionRequestInfo;->mType:I

    invoke-static {v0}, Landroid/view/WindowManager;->transitTypeToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 1218
    nop

    .line 1219
    iget-object v0, p0, Landroid/window/TransitionRequestInfo;->mTriggerTask:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 1220
    :goto_8
    iget-object v1, p0, Landroid/window/TransitionRequestInfo;->mPipChange:Landroid/window/TransitionRequestInfo$PipChange;

    if-eqz v1, :cond_e

    or-int/lit8 v0, v0, 0x4

    .line 1221
    :cond_e
    iget-object v1, p0, Landroid/window/TransitionRequestInfo;->mRemoteTransitionInfo:Landroid/window/TransitionRequestInfo$RemoteTransitionInfo;

    if-eqz v1, :cond_14

    or-int/lit8 v0, v0, 0x8

    .line 1222
    :cond_14
    iget-object v1, p0, Landroid/window/TransitionRequestInfo;->mDisplayChange:Landroid/window/TransitionRequestInfo$DisplayChange;

    if-eqz v1, :cond_1a

    or-int/lit8 v0, v0, 0x10

    .line 1223
    :cond_1a
    iget-object v1, p0, Landroid/window/TransitionRequestInfo;->mRequestedLocation:Landroid/window/TransitionRequestInfo$RequestedLocation;

    if-eqz v1, :cond_20

    or-int/lit8 v0, v0, 0x20

    .line 1224
    :cond_20
    iget-object v1, p0, Landroid/window/TransitionRequestInfo;->mUserChange:Landroid/window/TransitionRequestInfo$UserChange;

    if-eqz v1, :cond_26

    or-int/lit8 v0, v0, 0x40

    .line 1225
    :cond_26
    iget-object v1, p0, Landroid/window/TransitionRequestInfo;->mWindowingLayerChange:Landroid/window/TransitionRequestInfo$WindowingLayerChange;

    if-eqz v1, :cond_2c

    or-int/lit16 v0, v0, 0x80

    .line 1226
    :cond_2c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1227
    iget v0, p0, Landroid/window/TransitionRequestInfo;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1228
    iget-object v0, p0, Landroid/window/TransitionRequestInfo;->mTriggerTask:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v0, :cond_3d

    iget-object v0, p0, Landroid/window/TransitionRequestInfo;->mTriggerTask:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1229
    :cond_3d
    iget-object v0, p0, Landroid/window/TransitionRequestInfo;->mPipChange:Landroid/window/TransitionRequestInfo$PipChange;

    if-eqz v0, :cond_46

    iget-object v0, p0, Landroid/window/TransitionRequestInfo;->mPipChange:Landroid/window/TransitionRequestInfo$PipChange;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1230
    :cond_46
    iget-object v0, p0, Landroid/window/TransitionRequestInfo;->mRemoteTransitionInfo:Landroid/window/TransitionRequestInfo$RemoteTransitionInfo;

    if-eqz v0, :cond_4f

    iget-object v0, p0, Landroid/window/TransitionRequestInfo;->mRemoteTransitionInfo:Landroid/window/TransitionRequestInfo$RemoteTransitionInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1231
    :cond_4f
    iget-object v0, p0, Landroid/window/TransitionRequestInfo;->mDisplayChange:Landroid/window/TransitionRequestInfo$DisplayChange;

    if-eqz v0, :cond_58

    iget-object v0, p0, Landroid/window/TransitionRequestInfo;->mDisplayChange:Landroid/window/TransitionRequestInfo$DisplayChange;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1232
    :cond_58
    iget-object v0, p0, Landroid/window/TransitionRequestInfo;->mRequestedLocation:Landroid/window/TransitionRequestInfo$RequestedLocation;

    if-eqz v0, :cond_61

    iget-object v0, p0, Landroid/window/TransitionRequestInfo;->mRequestedLocation:Landroid/window/TransitionRequestInfo$RequestedLocation;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1233
    :cond_61
    iget-object v0, p0, Landroid/window/TransitionRequestInfo;->mUserChange:Landroid/window/TransitionRequestInfo$UserChange;

    if-eqz v0, :cond_6a

    iget-object v0, p0, Landroid/window/TransitionRequestInfo;->mUserChange:Landroid/window/TransitionRequestInfo$UserChange;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1234
    :cond_6a
    iget-object v0, p0, Landroid/window/TransitionRequestInfo;->mWindowingLayerChange:Landroid/window/TransitionRequestInfo$WindowingLayerChange;

    if-eqz v0, :cond_73

    iget-object v0, p0, Landroid/window/TransitionRequestInfo;->mWindowingLayerChange:Landroid/window/TransitionRequestInfo$WindowingLayerChange;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1235
    :cond_73
    iget p2, p0, Landroid/window/TransitionRequestInfo;->mFlags:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1236
    iget p2, p0, Landroid/window/TransitionRequestInfo;->mDebugId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1237
    return-void
.end method
