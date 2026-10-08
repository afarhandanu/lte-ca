.class public final Landroid/view/InputMonitor;
.super Ljava/lang/Object;
.source "InputMonitor.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/InputMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "InputMonitor"


# instance fields
.field private final blacklist mHost:Landroid/view/IInputMonitorHost;

.field private final blacklist mInputChannel:Landroid/view/InputChannel;

.field private final blacklist mSurface:Landroid/view/SurfaceControl;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 185
    new-instance v0, Landroid/view/InputMonitor$1;

    invoke-direct {v0}, Landroid/view/InputMonitor$1;-><init>()V

    sput-object v0, Landroid/view/InputMonitor;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 6

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    sget-object v0, Landroid/view/InputChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/InputChannel;

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IInputMonitorHost$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IInputMonitorHost;

    move-result-object v1

    .line 169
    sget-object v2, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/SurfaceControl;

    .line 171
    iput-object v0, p0, Landroid/view/InputMonitor;->mInputChannel:Landroid/view/InputChannel;

    .line 172
    const-class v0, Landroid/annotation/NonNull;

    iget-object v2, p0, Landroid/view/InputMonitor;->mInputChannel:Landroid/view/InputChannel;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 174
    iput-object v1, p0, Landroid/view/InputMonitor;->mHost:Landroid/view/IInputMonitorHost;

    .line 175
    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/view/InputMonitor;->mHost:Landroid/view/IInputMonitorHost;

    invoke-static {v0, v3, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 177
    iput-object p1, p0, Landroid/view/InputMonitor;->mSurface:Landroid/view/SurfaceControl;

    .line 178
    const-class p1, Landroid/annotation/NonNull;

    iget-object v0, p0, Landroid/view/InputMonitor;->mSurface:Landroid/view/SurfaceControl;

    invoke-static {p1, v3, v0}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 182
    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/InputChannel;Landroid/view/IInputMonitorHost;Landroid/view/SurfaceControl;)V
    .registers 6

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Landroid/view/InputMonitor;->mInputChannel:Landroid/view/InputChannel;

    .line 105
    const-class p1, Landroid/annotation/NonNull;

    iget-object v0, p0, Landroid/view/InputMonitor;->mInputChannel:Landroid/view/InputChannel;

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 107
    iput-object p2, p0, Landroid/view/InputMonitor;->mHost:Landroid/view/IInputMonitorHost;

    .line 108
    const-class p1, Landroid/annotation/NonNull;

    iget-object p2, p0, Landroid/view/InputMonitor;->mHost:Landroid/view/IInputMonitorHost;

    invoke-static {p1, v1, p2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 110
    iput-object p3, p0, Landroid/view/InputMonitor;->mSurface:Landroid/view/SurfaceControl;

    .line 111
    const-class p1, Landroid/annotation/NonNull;

    iget-object p2, p0, Landroid/view/InputMonitor;->mSurface:Landroid/view/SurfaceControl;

    invoke-static {p1, v1, p2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 115
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 204
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 158
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dispose()V
    .registers 2

    .line 75
    iget-object v0, p0, Landroid/view/InputMonitor;->mInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 76
    iget-object v0, p0, Landroid/view/InputMonitor;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->release()V

    .line 78
    :try_start_a
    iget-object v0, p0, Landroid/view/InputMonitor;->mHost:Landroid/view/IInputMonitorHost;

    invoke-interface {v0}, Landroid/view/IInputMonitorHost;->dispose()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    .line 81
    goto :goto_14

    .line 79
    :catch_10
    move-exception v0

    .line 80
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 82
    :goto_14
    return-void
.end method

.method public blacklist getHost()Landroid/view/IInputMonitorHost;
    .registers 2

    .line 124
    iget-object v0, p0, Landroid/view/InputMonitor;->mHost:Landroid/view/IInputMonitorHost;

    return-object v0
.end method

.method public blacklist getInputChannel()Landroid/view/InputChannel;
    .registers 2

    .line 119
    iget-object v0, p0, Landroid/view/InputMonitor;->mInputChannel:Landroid/view/InputChannel;

    return-object v0
.end method

.method public blacklist getSurface()Landroid/view/SurfaceControl;
    .registers 2

    .line 129
    iget-object v0, p0, Landroid/view/InputMonitor;->mSurface:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method public blacklist pilferPointers()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 61
    :try_start_0
    iget-object v0, p0, Landroid/view/InputMonitor;->mHost:Landroid/view/IInputMonitorHost;

    invoke-interface {v0}, Landroid/view/IInputMonitorHost;->pilferPointers()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 64
    goto :goto_a

    .line 62
    :catch_6
    move-exception v0

    .line 63
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 65
    :goto_a
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InputMonitor { inputChannel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/InputMonitor;->mInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", host = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/InputMonitor;->mHost:Landroid/view/IInputMonitorHost;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", surface = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/InputMonitor;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 151
    iget-object v0, p0, Landroid/view/InputMonitor;->mInputChannel:Landroid/view/InputChannel;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 152
    iget-object v0, p0, Landroid/view/InputMonitor;->mHost:Landroid/view/IInputMonitorHost;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 153
    iget-object v0, p0, Landroid/view/InputMonitor;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 154
    return-void
.end method
