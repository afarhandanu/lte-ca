.class public final Landroid/text/FontConfig$Alias;
.super Ljava/lang/Object;
.source "FontConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/FontConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Alias"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/text/FontConfig$Alias;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mName:Ljava/lang/String;

.field private final blacklist mOriginal:Ljava/lang/String;

.field private final greylist-max-o mWeight:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 529
    new-instance v0, Landroid/text/FontConfig$Alias$1;

    invoke-direct {v0}, Landroid/text/FontConfig$Alias$1;-><init>()V

    sput-object v0, Landroid/text/FontConfig$Alias;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4

    .line 488
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 489
    iput-object p1, p0, Landroid/text/FontConfig$Alias;->mName:Ljava/lang/String;

    .line 490
    iput-object p2, p0, Landroid/text/FontConfig$Alias;->mOriginal:Ljava/lang/String;

    .line 491
    iput p3, p0, Landroid/text/FontConfig$Alias;->mWeight:I

    .line 492
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 519
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 547
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 548
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_31

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_31

    .line 549
    :cond_12
    check-cast p1, Landroid/text/FontConfig$Alias;

    .line 550
    iget v2, p0, Landroid/text/FontConfig$Alias;->mWeight:I

    iget v3, p1, Landroid/text/FontConfig$Alias;->mWeight:I

    if-ne v2, v3, :cond_2f

    iget-object v2, p0, Landroid/text/FontConfig$Alias;->mName:Ljava/lang/String;

    iget-object v3, p1, Landroid/text/FontConfig$Alias;->mName:Ljava/lang/String;

    .line 551
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    iget-object v2, p0, Landroid/text/FontConfig$Alias;->mOriginal:Ljava/lang/String;

    iget-object p1, p1, Landroid/text/FontConfig$Alias;->mOriginal:Ljava/lang/String;

    .line 552
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2f

    goto :goto_30

    :cond_2f
    move v0, v1

    .line 550
    :goto_30
    return v0

    .line 548
    :cond_31
    :goto_31
    return v1
.end method

.method public whitelist getName()Ljava/lang/String;
    .registers 2

    .line 498
    iget-object v0, p0, Landroid/text/FontConfig$Alias;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getOriginal()Ljava/lang/String;
    .registers 2

    .line 505
    iget-object v0, p0, Landroid/text/FontConfig$Alias;->mOriginal:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getWeight()I
    .registers 2

    .line 514
    iget v0, p0, Landroid/text/FontConfig$Alias;->mWeight:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 557
    iget-object v0, p0, Landroid/text/FontConfig$Alias;->mName:Ljava/lang/String;

    iget-object v1, p0, Landroid/text/FontConfig$Alias;->mOriginal:Ljava/lang/String;

    iget v2, p0, Landroid/text/FontConfig$Alias;->mWeight:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 562
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Alias{mName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/text/FontConfig$Alias;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mOriginal=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/text/FontConfig$Alias;->mOriginal:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mWeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/text/FontConfig$Alias;->mWeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 524
    iget-object p2, p0, Landroid/text/FontConfig$Alias;->mName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 525
    iget-object p2, p0, Landroid/text/FontConfig$Alias;->mOriginal:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 526
    iget p2, p0, Landroid/text/FontConfig$Alias;->mWeight:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 527
    return-void
.end method
