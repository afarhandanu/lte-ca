.class Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IImsCallSessionListener.java"

# interfaces
.implements Landroid/telephony/ims/aidl/IImsCallSessionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private blacklist mRemote:Landroid/os/IBinder;


# direct methods
.method constructor blacklist <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 813
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 814
    iput-object p1, p0, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 815
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 818
    iget-object v0, p0, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist callQualityChanged(Landroid/telephony/CallQuality;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1359
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1361
    :try_start_8
    const-string v1, "android.telephony.ims.aidl.IImsCallSessionListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1362
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1363
    iget-object p1, p0, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x29

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_1f

    .line 1366
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1367
    nop

    .line 1368
    return-void

    .line 1366
    :catchall_1f
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1367
    throw p1
.end method

.method public blacklist callSessionConferenceExtendFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1061
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1063
    :try_start_8
    const-string v1, "android.telephony.ims.aidl.IImsCallSessionListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1064
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1065
    iget-object p1, p0, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x14

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_1f

    .line 1068
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1069
    nop

    .line 1070
    return-void

    .line 1068
    :catchall_1f
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1069
    throw p1
.end method

.method public blacklist callSessionConferenceExtendReceived(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1073
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1075
    :try_start_8
    const-string v1, "android.telephony.ims.aidl.IImsCallSessionListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1076
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1077
    const/4 p1, 0x0

    invoke-virtual {v0, p2, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1078
    iget-object p1, p0, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x15

    invoke-interface {p1, v2, v0, p2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_22

    .line 1081
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1082
    nop

    .line 1083
    return-void

    .line 1081
    :catchall_22
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1082
    throw p1
.end method

.method public blacklist callSessionConferenceExtended(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1048
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1050
    :try_start_8
    const-string v1, "android.telephony.ims.aidl.IImsCallSessionListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1051
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1052
    const/4 p1, 0x0

    invoke-virtual {v0, p2, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1053
    iget-object p1, p0, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x13

    invoke-interface {p1, v2, v0, p2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_22

    .line 1056
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1057
    nop

    .line 1058
    return-void

    .line 1056
    :catchall_22
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1057
    throw p1
.end method

.method public blacklist callSessionConferenceStateUpdated(Landroid/telephony/ims/ImsConferenceState;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1134
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1136
    :try_start_8
    const-string v1, "android.telephony.ims.aidl.IImsCallSessionListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1137
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1138
    iget-object p1, p0, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x1a

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_1f

    .line 1141
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1142
    nop

    .line 1143
    return-void

    .line 1141
    :catchall_1f
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1142
    throw p1
.end method

.method public blacklist callSessionDtmfReceived(C)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1343
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1345
    :try_start_8
    const-string v1, "android.telephony.ims.aidl.IImsCallSessionListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1346
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1347
    iget-object p1, p0, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x28

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_1e

    .line 1350
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1351
    nop

    .line 1352
    return-void

    .line 1350
    :catchall_1e
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1351
    throw p1
.end method

.method public blacklist callSessionHandover(IILandroid/telephony/ims/ImsReasonInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1161
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1163
    :try_start_8
    const-string v1, "android.telephony.ims.aidl.IImsCallSessionListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1164
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1165
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1166
    const/4 p1, 0x0

    invoke-virtual {v0, p3, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1167
    iget-object p1, p0, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x0

    const/4 p3, 0x1

    const/16 v1, 0x1c

    invoke-interface {p1, v1, v0, p2, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_25

    .line 1170
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1171
    nop

    .line 1172
    return-void

    .line 1170
    :catchall_25
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1171
    throw p1
.end method

.method public blacklist callSessionHandoverFailed(IILandroid/telephony/ims/ImsReasonInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1175
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1177
    :try_start_8
    const-string v1, "android.telephony.ims.aidl.IImsCallSessionListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1178
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1179
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1180
    const/4 p1, 0x0

    invoke-virtual {v0, p3, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1181
    iget-object p1, p0, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x0

    const/4 p3, 0x1

    const/16 v1, 0x1d

    invoke-interface {p1, v1, v0, p2, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_25

    .line 1184
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1185
    nop

    .line 1186
    return-void

    .line 1184
    :catchall_25
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1185
    throw p1
.end method

.method public blacklist callSessionHeld(Landroid/telephony/ims/ImsCallProfile;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 900
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 902
    :try_start_8
    const-string v1, "android.telephony.ims.aidl.IImsCallSessionListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 903
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 904
    iget-object p1, p0, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x7

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_1e

    .line 907
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 908
    nop

    .line 909
    return-void

    .line 907
    :catchall_1e
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 908
    throw p1
.end method

.method public blacklist callSessionHoldFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 912
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 914
    :try_start_8
    const-string v1, "android.telephony.ims.aidl.IImsCallSessionListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 915
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 916
    iget-object p1, p0, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x8

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_1f

    .line 919
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 920
    nop

    .line 921
    return-void

    .line 919
    :catchall_1f
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 920
    throw p1
.end method

.method public blacklist callSessionHoldReceived(Landroid/telephony/ims/ImsCallProfile;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 924
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 926
    :try_start_8
    const-string v1, "android.telephony.ims.aidl.IImsCallSessionListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 927
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 928
    iget-object p1, p0, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x9

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_1f

    .line 931
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 932
    nop

    .line 933
    return-void

    .line 931
    :catchall_1f
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 932
    throw p1
.end method

.method public blacklist callSessionInitiated(Landroid/telephony/ims/ImsCallProfile;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 863
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 865
    :try_start_8
    const-string v1, "android.telephony.ims.aidl.IImsCallSessionListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 866
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 867
    iget-object p1, p0, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x4

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_1e

    .line 870
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 871
    nop

    .line 872
    return-void

    .line 870
    :catchall_1e
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 871
    throw p1
.end method

.method public blacklist callSessionInitiatedFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 875
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 877
    :try_start_8
    const-string v1, "android.telephony.ims.aidl.IImsCallSessionListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 878
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 879
    iget-object p1, p0, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x5

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_1e

    .line 882
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 883
    nop

    .line 884
    return-void

    .line 882
    :catchall_1e
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 883
    throw p1
.end method

.method public blacklist callSessionInitiating(Landroid/telephony/ims/ImsCallProfile;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 827
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 829
    :try_start_8
    const-string v1, "android.telephony.ims.aidl.IImsCallSessionListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 830
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 831
    iget-object p1, p0, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_1d

    .line 834
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 835
    nop

    .line 836
    return-void

    .line 834
    :catchall_1d
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 835
    throw p1
.end method

.method public blacklist callSessionInitiatingFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 839
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 841
    :try_start_8
    const-string v1, "android.telephony.ims.aidl.IImsCallSessionListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 842
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 843
    iget-object p1, p0, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_1e

    .line 846
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 847
    nop

    .line 848
    return-void

    .line 846
    :catchall_1e
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 847
    throw p1
.end method

.method public blacklist callSessionInviteParticipantsRequestDelivered()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1087
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1089
    :try_start_8
    const-string v1, "android.telephony.ims.aidl.IImsCallSessionListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1090
    iget-object v1, p0, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x16

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_1b

    .line 1093
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1094
    nop

    .line 1095
    return-void

    .line 1093
    :catchall_1b
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1094
    throw v1
.end method

.method public blacklist callSessionInviteParticipantsRequestFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1098
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1100
    :try_start_8
    const-string v1, "android.telephony.ims.aidl.IImsCallSessionListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1101
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1102
    iget-object p1, p0, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x17

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_1f

    .line 1105
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1106
    nop

    .line 1107
    return-void

    .line 1105
    :catchall_1f
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1106
    throw p1
.end method

.method public blacklist callSessionMayHandover(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1189
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1191
    :try_start_8
    const-string v1, "android.telephony.ims.aidl.IImsCallSessionListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1192
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1193
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1194
    iget-object p1, p0, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x1e

    invoke-interface {p1, v2, v0, p2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_21

    .line 1197
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1198
    nop

    .line 1199
    return-void

    .line 1197
    :catchall_21
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1198
    throw p1
.end method

.method public blacklist callSessionMergeComplete(Lcom/android/ims/internal/IImsCallSession;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 986
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 988
    :try_start_8
    const-string v1, "android.telephony.ims.aidl.IImsCallSessionListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 989
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 990
    iget-object p1, p0, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0xe

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_1e

    .line 993
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 994
    nop

    .line 995
    return-void

    .line 993
    :catchall_1e
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 994
    throw p1
.end method

.method public blacklist callSessionMergeFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 998
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1000
    :try_start_8
    const-string v1, "android.telephony.ims.aidl.IImsCallSessionListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1001
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1002
    iget-object p1, p0, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0xf

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_1f

    .line 1005
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1006
    nop

    .line 1007
    return-void

    .line 1005
    :catchall_1f
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1006
    throw p1
.end method

.method public blacklist callSessionMergeStarted(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 973
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 975
    :try_start_8
    const-string v1, "android.telephony.ims.aidl.IImsCallSessionListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 976
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 977
    const/4 p1, 0x0

    invoke-virtual {v0, p2, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 978
    iget-object p1, p0, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x0

    const/4 v1, 0x1

    const/16 v2, 0xd

    invoke-interface {p1, v2, v0, p2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_22

    .line 981
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 982
    nop

    .line 983
    return-void

    .line 981
    :catchall_22
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 982
    throw p1
.end method

.method public blacklist callSessionMultipartyStateChanged(Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1228
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1230
    :try_start_8
    const-string v1, "android.telephony.ims.aidl.IImsCallSessionListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1231
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1232
    iget-object p1, p0, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x20

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_1e

    .line 1235
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1236
    nop

    .line 1237
    return-void

    .line 1235
    :catchall_1e
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1236
    throw p1
.end method

.method public blacklist callSessionProgressing(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 851
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 853
    :try_start_8
    const-string v1, "android.telephony.ims.aidl.IImsCallSessionListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 854
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 855
    iget-object p1, p0, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x3

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_1e

    .line 858
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 859
    nop

    .line 860
    return-void

    .line 858
    :catchall_1e
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 859
    throw p1
.end method

.method public blacklist callSessionRemoveParticipantsRequestDelivered()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1110
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1112
    :try_start_8
    const-string v1, "android.telephony.ims.aidl.IImsCallSessionListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1113
    iget-object v1, p0, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x18

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_1b

    .line 1116
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1117
    nop

    .line 1118
    return-void

    .line 1116
    :catchall_1b
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1117
    throw v1
.end method

.method public blacklist callSessionRemoveParticipantsRequestFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1121
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1123
    :try_start_8
    const-string v1, "android.telephony.ims.aidl.IImsCallSessionListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1124
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1125
    iget-object p1, p0, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x19

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_1f

    .line 1128
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1129
    nop

    .line 1130
    return-void

    .line 1128
    :catchall_1f
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1129
    throw p1
.end method

.method public blacklist callSessionResumeFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 948
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 950
    :try_start_8
    const-string v1, "android.telephony.ims.aidl.IImsCallSessionListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 951
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 952
    iget-object p1, p0, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0xb

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_1f

    .line 955
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 956
    nop

    .line 957
    return-void

    .line 955
    :catchall_1f
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 956
    throw p1
.end method

.method public blacklist callSessionResumeReceived(Landroid/telephony/ims/ImsCallProfile;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 960
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 962
    :try_start_8
    const-string v1, "android.telephony.ims.aidl.IImsCallSessionListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 963
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 964
    iget-object p1, p0, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0xc

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_1f

    .line 967
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 968
    nop

    .line 969
    return-void

    .line 967
    :catchall_1f
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 968
    throw p1
.end method

.method public blacklist callSessionResumed(Landroid/telephony/ims/ImsCallProfile;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 936
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 938
    :try_start_8
    const-string v1, "android.telephony.ims.aidl.IImsCallSessionListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 939
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 940
    iget-object p1, p0, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0xa

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_1f

    .line 943
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 944
    nop

    .line 945
    return-void

    .line 943
    :catchall_1f
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 944
    throw p1
.end method

.method public blacklist callSessionRtpHeaderExtensionsReceived(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/ims/RtpHeaderExtension;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1375
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1377
    :try_start_8
    const-string v1, "android.telephony.ims.aidl.IImsCallSessionListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1378
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 1379
    iget-object p1, p0, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x2a

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_1f

    .line 1382
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1383
    nop

    .line 1384
    return-void

    .line 1382
    :catchall_1f
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1383
    throw p1
.end method

.method public blacklist callSessionRttAudioIndicatorChanged(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1307
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1309
    :try_start_8
    const-string v1, "android.telephony.ims.aidl.IImsCallSessionListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1310
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1311
    iget-object p1, p0, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x25

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_1f

    .line 1314
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1315
    nop

    .line 1316
    return-void

    .line 1314
    :catchall_1f
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1315
    throw p1
.end method

.method public blacklist callSessionRttMessageReceived(Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1291
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1293
    :try_start_8
    const-string v1, "android.telephony.ims.aidl.IImsCallSessionListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1294
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1295
    iget-object p1, p0, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x24

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_1e

    .line 1298
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1299
    nop

    .line 1300
    return-void

    .line 1298
    :catchall_1e
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1299
    throw p1
.end method

.method public blacklist callSessionRttModifyRequestReceived(Landroid/telephony/ims/ImsCallProfile;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1257
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1259
    :try_start_8
    const-string v1, "android.telephony.ims.aidl.IImsCallSessionListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1260
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1261
    iget-object p1, p0, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x22

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_1f

    .line 1264
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1265
    nop

    .line 1266
    return-void

    .line 1264
    :catchall_1f
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1265
    throw p1
.end method

.method public blacklist callSessionRttModifyResponseReceived(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1275
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1277
    :try_start_8
    const-string v1, "android.telephony.ims.aidl.IImsCallSessionListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1278
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1279
    iget-object p1, p0, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x23

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_1e

    .line 1282
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1283
    nop

    .line 1284
    return-void

    .line 1282
    :catchall_1e
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1283
    throw p1
.end method

.method public blacklist callSessionSendAnbrQuery(III)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1398
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1400
    :try_start_8
    const-string v1, "android.telephony.ims.aidl.IImsCallSessionListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1401
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1402
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1403
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1404
    iget-object p1, p0, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x0

    const/4 p3, 0x1

    const/16 v1, 0x2b

    invoke-interface {p1, v1, v0, p2, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_24

    .line 1407
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1408
    nop

    .line 1409
    return-void

    .line 1407
    :catchall_24
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1408
    throw p1
.end method

.method public blacklist callSessionSuppServiceReceived(Landroid/telephony/ims/ImsSuppServiceNotification;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1241
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1243
    :try_start_8
    const-string v1, "android.telephony.ims.aidl.IImsCallSessionListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1244
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1245
    iget-object p1, p0, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x21

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_1f

    .line 1248
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1249
    nop

    .line 1250
    return-void

    .line 1248
    :catchall_1f
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1249
    throw p1
.end method

.method public blacklist callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 887
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 889
    :try_start_8
    const-string v1, "android.telephony.ims.aidl.IImsCallSessionListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 890
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 891
    iget-object p1, p0, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x6

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_1e

    .line 894
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 895
    nop

    .line 896
    return-void

    .line 894
    :catchall_1e
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 895
    throw p1
.end method

.method public blacklist callSessionTransferFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1331
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1333
    :try_start_8
    const-string v1, "android.telephony.ims.aidl.IImsCallSessionListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1334
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1335
    iget-object p1, p0, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x27

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_1f

    .line 1338
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1339
    nop

    .line 1340
    return-void

    .line 1338
    :catchall_1f
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1339
    throw p1
.end method

.method public blacklist callSessionTransferred()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1320
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1322
    :try_start_8
    const-string v1, "android.telephony.ims.aidl.IImsCallSessionListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1323
    iget-object v1, p0, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x26

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_1b

    .line 1326
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1327
    nop

    .line 1328
    return-void

    .line 1326
    :catchall_1b
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1327
    throw v1
.end method

.method public blacklist callSessionTtyModeReceived(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1210
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1212
    :try_start_8
    const-string v1, "android.telephony.ims.aidl.IImsCallSessionListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1213
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1214
    iget-object p1, p0, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x1f

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_1e

    .line 1217
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1218
    nop

    .line 1219
    return-void

    .line 1217
    :catchall_1e
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1218
    throw p1
.end method

.method public blacklist callSessionUpdateFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1023
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1025
    :try_start_8
    const-string v1, "android.telephony.ims.aidl.IImsCallSessionListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1026
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1027
    iget-object p1, p0, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x11

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_1f

    .line 1030
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1031
    nop

    .line 1032
    return-void

    .line 1030
    :catchall_1f
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1031
    throw p1
.end method

.method public blacklist callSessionUpdateReceived(Landroid/telephony/ims/ImsCallProfile;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1035
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1037
    :try_start_8
    const-string v1, "android.telephony.ims.aidl.IImsCallSessionListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1038
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1039
    iget-object p1, p0, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x12

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_1f

    .line 1042
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1043
    nop

    .line 1044
    return-void

    .line 1042
    :catchall_1f
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1043
    throw p1
.end method

.method public blacklist callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1011
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1013
    :try_start_8
    const-string v1, "android.telephony.ims.aidl.IImsCallSessionListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1014
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1015
    iget-object p1, p0, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x10

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_1f

    .line 1018
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1019
    nop

    .line 1020
    return-void

    .line 1018
    :catchall_1f
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1019
    throw p1
.end method

.method public blacklist callSessionUssdMessageReceived(ILjava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1147
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1149
    :try_start_8
    const-string v1, "android.telephony.ims.aidl.IImsCallSessionListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1150
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1151
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1152
    iget-object p1, p0, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x1b

    invoke-interface {p1, v2, v0, p2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_21

    .line 1155
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1156
    nop

    .line 1157
    return-void

    .line 1155
    :catchall_21
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1156
    throw p1
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 822
    const-string v0, "android.telephony.ims.aidl.IImsCallSessionListener"

    return-object v0
.end method
