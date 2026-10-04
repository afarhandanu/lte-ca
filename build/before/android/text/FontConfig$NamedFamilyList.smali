.class public final Landroid/text/FontConfig$NamedFamilyList;
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
    name = "NamedFamilyList"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/text/FontConfig$NamedFamilyList;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mFallback:Ljava/lang/String;

.field private final blacklist mFamilies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/text/FontConfig$FontFamily;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 821
    new-instance v0, Landroid/text/FontConfig$NamedFamilyList$1;

    invoke-direct {v0}, Landroid/text/FontConfig$NamedFamilyList$1;-><init>()V

    sput-object v0, Landroid/text/FontConfig$NamedFamilyList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/text/FontConfig$FontFamily;)V
    .registers 3

    .line 775
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 776
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/text/FontConfig$NamedFamilyList;->mFamilies:Ljava/util/List;

    .line 777
    iget-object v0, p0, Landroid/text/FontConfig$NamedFamilyList;->mFamilies:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 778
    invoke-virtual {p1}, Landroid/text/FontConfig$FontFamily;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/text/FontConfig$NamedFamilyList;->mName:Ljava/lang/String;

    .line 779
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/text/FontConfig$NamedFamilyList;->mFallback:Ljava/lang/String;

    .line 780
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/text/FontConfig$FontFamily;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 768
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 769
    iput-object p1, p0, Landroid/text/FontConfig$NamedFamilyList;->mFamilies:Ljava/util/List;

    .line 770
    iput-object p2, p0, Landroid/text/FontConfig$NamedFamilyList;->mName:Ljava/lang/String;

    .line 771
    iput-object p3, p0, Landroid/text/FontConfig$NamedFamilyList;->mFallback:Ljava/lang/String;

    .line 772
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 811
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 840
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 841
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2b

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2b

    .line 842
    :cond_12
    check-cast p1, Landroid/text/FontConfig$NamedFamilyList;

    .line 843
    iget-object v2, p0, Landroid/text/FontConfig$NamedFamilyList;->mFamilies:Ljava/util/List;

    iget-object v3, p1, Landroid/text/FontConfig$NamedFamilyList;->mFamilies:Ljava/util/List;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object v2, p0, Landroid/text/FontConfig$NamedFamilyList;->mName:Ljava/lang/String;

    iget-object p1, p1, Landroid/text/FontConfig$NamedFamilyList;->mName:Ljava/lang/String;

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_29

    goto :goto_2a

    :cond_29
    move v0, v1

    :goto_2a
    return v0

    .line 841
    :cond_2b
    :goto_2b
    return v1
.end method

.method public blacklist getFallback()Ljava/lang/String;
    .registers 2

    .line 806
    iget-object v0, p0, Landroid/text/FontConfig$NamedFamilyList;->mFallback:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getFamilies()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/text/FontConfig$FontFamily;",
            ">;"
        }
    .end annotation

    .line 788
    iget-object v0, p0, Landroid/text/FontConfig$NamedFamilyList;->mFamilies:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getName()Ljava/lang/String;
    .registers 2

    .line 801
    iget-object v0, p0, Landroid/text/FontConfig$NamedFamilyList;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 849
    iget-object v0, p0, Landroid/text/FontConfig$NamedFamilyList;->mFamilies:Ljava/util/List;

    iget-object v1, p0, Landroid/text/FontConfig$NamedFamilyList;->mName:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 854
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NamedFamilyList{mFamilies="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/text/FontConfig$NamedFamilyList;->mFamilies:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/text/FontConfig$NamedFamilyList;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mFallback=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/text/FontConfig$NamedFamilyList;->mFallback:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 816
    iget-object v0, p0, Landroid/text/FontConfig$NamedFamilyList;->mFamilies:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 817
    iget-object p2, p0, Landroid/text/FontConfig$NamedFamilyList;->mName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 818
    iget-object p2, p0, Landroid/text/FontConfig$NamedFamilyList;->mFallback:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 819
    return-void
.end method
