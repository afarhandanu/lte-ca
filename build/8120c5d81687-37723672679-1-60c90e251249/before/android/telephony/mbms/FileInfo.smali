.class public final Landroid/telephony/mbms/FileInfo;
.super Ljava/lang/Object;
.source "FileInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/mbms/FileInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mimeType:Ljava/lang/String;

.field private final greylist-max-o uri:Landroid/net/Uri;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 35
    new-instance v0, Landroid/telephony/mbms/FileInfo$1;

    invoke-direct {v0}, Landroid/telephony/mbms/FileInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/mbms/FileInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/net/Uri;Ljava/lang/String;)V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Landroid/telephony/mbms/FileInfo;->uri:Landroid/net/Uri;

    .line 54
    iput-object p2, p0, Landroid/telephony/mbms/FileInfo;->mimeType:Ljava/lang/String;

    .line 55
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x0

    const-class v1, Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/telephony/mbms/FileInfo;->uri:Landroid/net/Uri;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/telephony/mbms/FileInfo;->mimeType:Ljava/lang/String;

    .line 60
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/mbms/FileInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/mbms/FileInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 90
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 91
    return v0

    .line 93
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2b

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2b

    .line 97
    :cond_12
    check-cast p1, Landroid/telephony/mbms/FileInfo;

    .line 98
    iget-object v2, p0, Landroid/telephony/mbms/FileInfo;->uri:Landroid/net/Uri;

    iget-object v3, p1, Landroid/telephony/mbms/FileInfo;->uri:Landroid/net/Uri;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object v2, p0, Landroid/telephony/mbms/FileInfo;->mimeType:Ljava/lang/String;

    iget-object p1, p1, Landroid/telephony/mbms/FileInfo;->mimeType:Ljava/lang/String;

    .line 99
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_29

    goto :goto_2a

    :cond_29
    move v0, v1

    .line 98
    :goto_2a
    return v0

    .line 94
    :cond_2b
    :goto_2b
    return v1
.end method

.method public whitelist getMimeType()Ljava/lang/String;
    .registers 2

    .line 85
    iget-object v0, p0, Landroid/telephony/mbms/FileInfo;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getUri()Landroid/net/Uri;
    .registers 2

    .line 78
    iget-object v0, p0, Landroid/telephony/mbms/FileInfo;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 104
    iget-object v0, p0, Landroid/telephony/mbms/FileInfo;->uri:Landroid/net/Uri;

    iget-object v1, p0, Landroid/telephony/mbms/FileInfo;->mimeType:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 64
    iget-object v0, p0, Landroid/telephony/mbms/FileInfo;->uri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 65
    iget-object p2, p0, Landroid/telephony/mbms/FileInfo;->mimeType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 66
    return-void
.end method
