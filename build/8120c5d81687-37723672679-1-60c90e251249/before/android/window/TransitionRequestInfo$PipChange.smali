.class public final Landroid/window/TransitionRequestInfo$PipChange;
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
    name = "PipChange"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/TransitionRequestInfo$PipChange;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mTaskFragmentToken:Landroid/window/WindowContainerToken;

.field private blacklist mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 485
    new-instance v0, Landroid/window/TransitionRequestInfo$PipChange$1;

    invoke-direct {v0}, Landroid/window/TransitionRequestInfo$PipChange$1;-><init>()V

    sput-object v0, Landroid/window/TransitionRequestInfo$PipChange;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 3

    .line 385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 386
    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iput-object v0, p0, Landroid/window/TransitionRequestInfo$PipChange;->mTaskFragmentToken:Landroid/window/WindowContainerToken;

    .line 387
    iput-object p1, p0, Landroid/window/TransitionRequestInfo$PipChange;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 388
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 5

    .line 467
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 471
    sget-object v0, Landroid/window/WindowContainerToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/WindowContainerToken;

    .line 472
    sget-object v1, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 474
    iput-object v0, p0, Landroid/window/TransitionRequestInfo$PipChange;->mTaskFragmentToken:Landroid/window/WindowContainerToken;

    .line 475
    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/window/TransitionRequestInfo$PipChange;->mTaskFragmentToken:Landroid/window/WindowContainerToken;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 477
    iput-object p1, p0, Landroid/window/TransitionRequestInfo$PipChange;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 478
    const-class p1, Landroid/annotation/NonNull;

    iget-object v0, p0, Landroid/window/TransitionRequestInfo$PipChange;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-static {p1, v2, v0}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 482
    return-void
.end method

.method public constructor blacklist <init>(Landroid/window/WindowContainerToken;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 3

    .line 392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 393
    iput-object p1, p0, Landroid/window/TransitionRequestInfo$PipChange;->mTaskFragmentToken:Landroid/window/WindowContainerToken;

    .line 394
    iput-object p2, p0, Landroid/window/TransitionRequestInfo$PipChange;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 395
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 504
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 462
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getTaskFragmentToken()Landroid/window/WindowContainerToken;
    .registers 2

    .line 414
    iget-object v0, p0, Landroid/window/TransitionRequestInfo$PipChange;->mTaskFragmentToken:Landroid/window/WindowContainerToken;

    return-object v0
.end method

.method public blacklist getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;
    .registers 2

    .line 419
    iget-object v0, p0, Landroid/window/TransitionRequestInfo$PipChange;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    return-object v0
.end method

.method public blacklist setTaskFragmentToken(Landroid/window/WindowContainerToken;)Landroid/window/TransitionRequestInfo$PipChange;
    .registers 4

    .line 424
    iput-object p1, p0, Landroid/window/TransitionRequestInfo$PipChange;->mTaskFragmentToken:Landroid/window/WindowContainerToken;

    .line 425
    const-class p1, Landroid/annotation/NonNull;

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/window/TransitionRequestInfo$PipChange;->mTaskFragmentToken:Landroid/window/WindowContainerToken;

    invoke-static {p1, v0, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 427
    return-object p0
.end method

.method public blacklist setTaskInfo(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/window/TransitionRequestInfo$PipChange;
    .registers 4

    .line 432
    iput-object p1, p0, Landroid/window/TransitionRequestInfo$PipChange;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 433
    const-class p1, Landroid/annotation/NonNull;

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/window/TransitionRequestInfo$PipChange;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-static {p1, v0, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 435
    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PipChange { taskFragmentToken = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TransitionRequestInfo$PipChange;->mTaskFragmentToken:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", taskInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TransitionRequestInfo$PipChange;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

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

    .line 456
    iget-object v0, p0, Landroid/window/TransitionRequestInfo$PipChange;->mTaskFragmentToken:Landroid/window/WindowContainerToken;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 457
    iget-object v0, p0, Landroid/window/TransitionRequestInfo$PipChange;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 458
    return-void
.end method
