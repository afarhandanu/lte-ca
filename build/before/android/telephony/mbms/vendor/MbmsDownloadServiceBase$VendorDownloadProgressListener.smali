.class abstract Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$VendorDownloadProgressListener;
.super Landroid/telephony/mbms/DownloadProgressListener;
.source "MbmsDownloadServiceBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "VendorDownloadProgressListener"
.end annotation


# instance fields
.field private final greylist-max-o mListener:Landroid/telephony/mbms/IDownloadProgressListener;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/telephony/mbms/IDownloadProgressListener;)V
    .registers 2

    .line 76
    invoke-direct {p0}, Landroid/telephony/mbms/DownloadProgressListener;-><init>()V

    .line 77
    iput-object p1, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$VendorDownloadProgressListener;->mListener:Landroid/telephony/mbms/IDownloadProgressListener;

    .line 78
    return-void
.end method


# virtual methods
.method public whitelist onProgressUpdated(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/FileInfo;IIII)V
    .registers 14

    .line 85
    :try_start_0
    iget-object v0, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$VendorDownloadProgressListener;->mListener:Landroid/telephony/mbms/IDownloadProgressListener;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/telephony/mbms/IDownloadProgressListener;->onProgressUpdated(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/FileInfo;IIII)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 89
    goto :goto_11

    .line 87
    :catch_c
    move-exception v0

    move-object p1, v0

    .line 88
    invoke-virtual {p0, p1}, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$VendorDownloadProgressListener;->onRemoteException(Landroid/os/RemoteException;)V

    .line 90
    :goto_11
    return-void
.end method

.method protected abstract greylist-max-o onRemoteException(Landroid/os/RemoteException;)V
.end method
