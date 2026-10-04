.class public final Landroid/view/contentcapture/ContentCaptureCondition;
.super Ljava/lang/Object;
.source "ContentCaptureCondition.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/contentcapture/ContentCaptureCondition$Flags;
    }
.end annotation


# static fields
.field public static final blacklist CONDITION_ENABLE_EXPORTING_VIRTUAL_CHILDREN:Landroid/view/contentcapture/ContentCaptureCondition;

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/contentcapture/ContentCaptureCondition;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist FLAG_ENABLE_EXPORTING_VIRTUAL_CHILDREN:I = 0x4

.field public static final whitelist FLAG_IS_REGEX:I = 0x2

.field private static final blacklist LOCUS_ID_NOT_EXIST:Landroid/content/LocusId;


# instance fields
.field private final blacklist mFlags:I

.field private final blacklist mLocusId:Landroid/content/LocusId;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 46
    new-instance v0, Landroid/content/LocusId;

    const-string v1, "__NOT_EXIST"

    invoke-direct {v0, v1}, Landroid/content/LocusId;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/view/contentcapture/ContentCaptureCondition;->LOCUS_ID_NOT_EXIST:Landroid/content/LocusId;

    .line 49
    new-instance v0, Landroid/view/contentcapture/ContentCaptureCondition;

    sget-object v1, Landroid/view/contentcapture/ContentCaptureCondition;->LOCUS_ID_NOT_EXIST:Landroid/content/LocusId;

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Landroid/view/contentcapture/ContentCaptureCondition;-><init>(Landroid/content/LocusId;I)V

    sput-object v0, Landroid/view/contentcapture/ContentCaptureCondition;->CONDITION_ENABLE_EXPORTING_VIRTUAL_CHILDREN:Landroid/view/contentcapture/ContentCaptureCondition;

    .line 141
    new-instance v0, Landroid/view/contentcapture/ContentCaptureCondition$1;

    invoke-direct {v0}, Landroid/view/contentcapture/ContentCaptureCondition$1;-><init>()V

    sput-object v0, Landroid/view/contentcapture/ContentCaptureCondition;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/LocusId;I)V
    .registers 3

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/LocusId;

    iput-object p1, p0, Landroid/view/contentcapture/ContentCaptureCondition;->mLocusId:Landroid/content/LocusId;

    .line 74
    iput p2, p0, Landroid/view/contentcapture/ContentCaptureCondition;->mFlags:I

    .line 75
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 105
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 106
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 107
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    return v1

    .line 108
    :cond_13
    check-cast p1, Landroid/view/contentcapture/ContentCaptureCondition;

    .line 109
    iget v2, p0, Landroid/view/contentcapture/ContentCaptureCondition;->mFlags:I

    iget v3, p1, Landroid/view/contentcapture/ContentCaptureCondition;->mFlags:I

    if-eq v2, v3, :cond_1c

    return v1

    .line 110
    :cond_1c
    iget-object v2, p0, Landroid/view/contentcapture/ContentCaptureCondition;->mLocusId:Landroid/content/LocusId;

    if-nez v2, :cond_25

    .line 111
    iget-object p1, p1, Landroid/view/contentcapture/ContentCaptureCondition;->mLocusId:Landroid/content/LocusId;

    if-eqz p1, :cond_30

    return v1

    .line 113
    :cond_25
    iget-object v2, p0, Landroid/view/contentcapture/ContentCaptureCondition;->mLocusId:Landroid/content/LocusId;

    iget-object p1, p1, Landroid/view/contentcapture/ContentCaptureCondition;->mLocusId:Landroid/content/LocusId;

    invoke-virtual {v2, p1}, Landroid/content/LocusId;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_30

    return v1

    .line 115
    :cond_30
    return v0
.end method

.method public whitelist getFlags()I
    .registers 2

    .line 91
    iget v0, p0, Landroid/view/contentcapture/ContentCaptureCondition;->mFlags:I

    return v0
.end method

.method public whitelist getLocusId()Landroid/content/LocusId;
    .registers 2

    .line 82
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureCondition;->mLocusId:Landroid/content/LocusId;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 97
    nop

    .line 98
    iget v0, p0, Landroid/view/contentcapture/ContentCaptureCondition;->mFlags:I

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    .line 99
    mul-int/2addr v0, v1

    iget-object v1, p0, Landroid/view/contentcapture/ContentCaptureCondition;->mLocusId:Landroid/content/LocusId;

    if-nez v1, :cond_d

    const/4 v1, 0x0

    goto :goto_13

    :cond_d
    iget-object v1, p0, Landroid/view/contentcapture/ContentCaptureCondition;->mLocusId:Landroid/content/LocusId;

    invoke-virtual {v1}, Landroid/content/LocusId;->hashCode()I

    move-result v1

    :goto_13
    add-int/2addr v0, v1

    .line 100
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 7

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/view/contentcapture/ContentCaptureCondition;->mLocusId:Landroid/content/LocusId;

    invoke-virtual {v1}, Landroid/content/LocusId;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    iget v1, p0, Landroid/view/contentcapture/ContentCaptureCondition;->mFlags:I

    if-eqz v1, :cond_2a

    .line 122
    nop

    .line 123
    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/contentcapture/ContentCaptureCondition;->mFlags:I

    int-to-long v2, v2

    .line 124
    const-class v4, Landroid/view/contentcapture/ContentCaptureCondition;

    const-string v5, "FLAG_"

    invoke-static {v4, v5, v2, v3}, Landroid/util/DebugUtils;->flagsToString(Ljava/lang/Class;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 125
    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 127
    :cond_2a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 137
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureCondition;->mLocusId:Landroid/content/LocusId;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 138
    iget p2, p0, Landroid/view/contentcapture/ContentCaptureCondition;->mFlags:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    return-void
.end method
