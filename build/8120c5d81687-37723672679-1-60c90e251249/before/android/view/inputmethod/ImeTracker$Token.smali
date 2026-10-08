.class public final Landroid/view/inputmethod/ImeTracker$Token;
.super Ljava/lang/Object;
.source "ImeTracker.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/ImeTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Token"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/inputmethod/ImeTracker$Token;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sCounter:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final blacklist mId:J

.field private final blacklist mTag:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmTag(Landroid/view/inputmethod/ImeTracker$Token;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/view/inputmethod/ImeTracker$Token;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smcreateToken(Ljava/lang/String;)Landroid/view/inputmethod/ImeTracker$Token;
    .registers 1

    invoke-static {p0}, Landroid/view/inputmethod/ImeTracker$Token;->createToken(Ljava/lang/String;)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 745
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Landroid/view/inputmethod/ImeTracker$Token;->sCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 827
    new-instance v0, Landroid/view/inputmethod/ImeTracker$Token$1;

    invoke-direct {v0}, Landroid/view/inputmethod/ImeTracker$Token$1;-><init>()V

    sput-object v0, Landroid/view/inputmethod/ImeTracker$Token;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(JLjava/lang/String;)V
    .registers 4

    .line 755
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 756
    iput-wide p1, p0, Landroid/view/inputmethod/ImeTracker$Token;->mId:J

    .line 757
    iput-object p3, p0, Landroid/view/inputmethod/ImeTracker$Token;->mTag:Ljava/lang/String;

    .line 758
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 760
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 761
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/inputmethod/ImeTracker$Token;->mId:J

    .line 762
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/view/inputmethod/ImeTracker$Token;->mTag:Ljava/lang/String;

    .line 763
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/view/inputmethod/ImeTracker-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/inputmethod/ImeTracker$Token;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static blacklist createTag(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 792
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist createToken(Ljava/lang/String;)Landroid/view/inputmethod/ImeTracker$Token;
    .registers 5

    .line 781
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    sget-object v2, Landroid/view/inputmethod/ImeTracker$Token;->sCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    int-to-long v2, v2

    or-long/2addr v0, v2

    .line 782
    new-instance v2, Landroid/view/inputmethod/ImeTracker$Token;

    invoke-static {p0}, Landroid/view/inputmethod/ImeTracker$Token;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, v0, v1, p0}, Landroid/view/inputmethod/ImeTracker$Token;-><init>(JLjava/lang/String;)V

    return-object v2
.end method

.method public static blacklist empty()Landroid/view/inputmethod/ImeTracker$Token;
    .registers 1

    .line 799
    invoke-static {}, Landroid/os/Process;->myProcessName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/view/inputmethod/ImeTracker$Token;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 800
    invoke-static {v0}, Landroid/view/inputmethod/ImeTracker$Token;->empty(Ljava/lang/String;)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v0

    return-object v0
.end method

.method static blacklist empty(Ljava/lang/String;)Landroid/view/inputmethod/ImeTracker$Token;
    .registers 4

    .line 806
    new-instance v0, Landroid/view/inputmethod/ImeTracker$Token;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, p0}, Landroid/view/inputmethod/ImeTracker$Token;-><init>(JLjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 817
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getId()J
    .registers 3

    .line 767
    iget-wide v0, p0, Landroid/view/inputmethod/ImeTracker$Token;->mId:J

    return-wide v0
.end method

.method public blacklist getTag()Ljava/lang/String;
    .registers 2

    .line 773
    iget-object v0, p0, Landroid/view/inputmethod/ImeTracker$Token;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 811
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(tag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/ImeTracker$Token;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 822
    iget-wide v0, p0, Landroid/view/inputmethod/ImeTracker$Token;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 823
    iget-object p2, p0, Landroid/view/inputmethod/ImeTracker$Token;->mTag:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 824
    return-void
.end method
