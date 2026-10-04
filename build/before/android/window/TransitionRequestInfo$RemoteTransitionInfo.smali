.class public final Landroid/window/TransitionRequestInfo$RemoteTransitionInfo;
.super Ljava/lang/Object;
.source "TransitionRequestInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/TransitionRequestInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RemoteTransitionInfo"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/TransitionRequestInfo$RemoteTransitionInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mDebugName:Ljava/lang/String;

.field private final blacklist mRemoteTransition:Landroid/window/IRemoteTransition;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 939
    new-instance v0, Landroid/window/TransitionRequestInfo$RemoteTransitionInfo$1;

    invoke-direct {v0}, Landroid/window/TransitionRequestInfo$RemoteTransitionInfo$1;-><init>()V

    sput-object v0, Landroid/window/TransitionRequestInfo$RemoteTransitionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 5

    .line 922
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 926
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 927
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/window/IRemoteTransition$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/IRemoteTransition;

    move-result-object v1

    .line 928
    and-int/lit8 v0, v0, 0x2

    const/4 v2, 0x0

    if-nez v0, :cond_16

    move-object p1, v2

    goto :goto_1a

    :cond_16
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 930
    :goto_1a
    iput-object v1, p0, Landroid/window/TransitionRequestInfo$RemoteTransitionInfo;->mRemoteTransition:Landroid/window/IRemoteTransition;

    .line 931
    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/window/TransitionRequestInfo$RemoteTransitionInfo;->mRemoteTransition:Landroid/window/IRemoteTransition;

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 933
    iput-object p1, p0, Landroid/window/TransitionRequestInfo$RemoteTransitionInfo;->mDebugName:Ljava/lang/String;

    .line 936
    return-void
.end method

.method public constructor blacklist <init>(Landroid/window/RemoteTransition;)V
    .registers 3

    .line 860
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 861
    invoke-virtual {p1}, Landroid/window/RemoteTransition;->getRemoteTransition()Landroid/window/IRemoteTransition;

    move-result-object v0

    iput-object v0, p0, Landroid/window/TransitionRequestInfo$RemoteTransitionInfo;->mRemoteTransition:Landroid/window/IRemoteTransition;

    .line 862
    invoke-virtual {p1}, Landroid/window/RemoteTransition;->getDebugName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/window/TransitionRequestInfo$RemoteTransitionInfo;->mDebugName:Ljava/lang/String;

    .line 863
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 958
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 917
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getDebugName()Ljava/lang/String;
    .registers 2

    .line 887
    iget-object v0, p0, Landroid/window/TransitionRequestInfo$RemoteTransitionInfo;->mDebugName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getRemoteTransition()Landroid/window/IRemoteTransition;
    .registers 2

    .line 882
    iget-object v0, p0, Landroid/window/TransitionRequestInfo$RemoteTransitionInfo;->mRemoteTransition:Landroid/window/IRemoteTransition;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 896
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoteTransitionInfo { remoteTransition = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TransitionRequestInfo$RemoteTransitionInfo;->mRemoteTransition:Landroid/window/IRemoteTransition;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", debugName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TransitionRequestInfo$RemoteTransitionInfo;->mDebugName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 908
    nop

    .line 909
    iget-object p2, p0, Landroid/window/TransitionRequestInfo$RemoteTransitionInfo;->mDebugName:Ljava/lang/String;

    if-eqz p2, :cond_8

    const/4 p2, 0x2

    int-to-byte p2, p2

    goto :goto_9

    :cond_8
    const/4 p2, 0x0

    .line 910
    :goto_9
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 911
    iget-object p2, p0, Landroid/window/TransitionRequestInfo$RemoteTransitionInfo;->mRemoteTransition:Landroid/window/IRemoteTransition;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 912
    iget-object p2, p0, Landroid/window/TransitionRequestInfo$RemoteTransitionInfo;->mDebugName:Ljava/lang/String;

    if-eqz p2, :cond_1a

    iget-object p2, p0, Landroid/window/TransitionRequestInfo$RemoteTransitionInfo;->mDebugName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 913
    :cond_1a
    return-void
.end method
