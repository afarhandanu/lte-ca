.class public abstract Landroid/telephony/CellBroadcastService;
.super Landroid/app/Service;
.source "CellBroadcastService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/CellBroadcastService$ICellBroadcastServiceWrapper;
    }
.end annotation


# static fields
.field public static final whitelist CELL_BROADCAST_SERVICE_INTERFACE:Ljava/lang/String; = "android.telephony.CellBroadcastService"


# instance fields
.field private final blacklist mStubWrapper:Landroid/telephony/ICellBroadcastService$Stub;


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 73
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 74
    new-instance v0, Landroid/telephony/CellBroadcastService$ICellBroadcastServiceWrapper;

    invoke-direct {v0, p0}, Landroid/telephony/CellBroadcastService$ICellBroadcastServiceWrapper;-><init>(Landroid/telephony/CellBroadcastService;)V

    iput-object v0, p0, Landroid/telephony/CellBroadcastService;->mStubWrapper:Landroid/telephony/ICellBroadcastService$Stub;

    .line 75
    return-void
.end method

.method static synthetic blacklist access$000(Landroid/telephony/CellBroadcastService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    .line 66
    invoke-virtual {p0, p1, p2, p3}, Landroid/telephony/CellBroadcastService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$100(Landroid/telephony/CellBroadcastService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    .line 66
    invoke-virtual {p0, p1, p2, p3}, Landroid/telephony/CellBroadcastService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public abstract whitelist getCellBroadcastAreaInfo(I)Ljava/lang/CharSequence;
.end method

.method public whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    .line 132
    iget-object p1, p0, Landroid/telephony/CellBroadcastService;->mStubWrapper:Landroid/telephony/ICellBroadcastService$Stub;

    return-object p1
.end method

.method public whitelist onCdmaCellBroadcastSms(I[BI)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 95
    return-void
.end method

.method public whitelist onCdmaScpMessage(ILjava/util/List;Ljava/lang/String;Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/telephony/cdma/CdmaSmsCbProgramData;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/function/Consumer<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 112
    return-void
.end method

.method public abstract whitelist onGsmCellBroadcastSms(I[B)V
.end method
