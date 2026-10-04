.class public final Landroid/view/translation/UiTranslationSpec;
.super Ljava/lang/Object;
.source "UiTranslationSpec.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/translation/UiTranslationSpec$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/translation/UiTranslationSpec;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mShouldPadContentForCompat:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 168
    new-instance v0, Landroid/view/translation/UiTranslationSpec$1;

    invoke-direct {v0}, Landroid/view/translation/UiTranslationSpec$1;-><init>()V

    sput-object v0, Landroid/view/translation/UiTranslationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/translation/UiTranslationSpec;->mShouldPadContentForCompat:Z

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 160
    const/4 v1, 0x1

    and-int/2addr p1, v1

    if-eqz p1, :cond_f

    move v0, v1

    .line 162
    :cond_f
    iput-boolean v0, p0, Landroid/view/translation/UiTranslationSpec;->mShouldPadContentForCompat:Z

    .line 165
    return-void
.end method

.method constructor blacklist <init>(Z)V
    .registers 3

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/translation/UiTranslationSpec;->mShouldPadContentForCompat:Z

    .line 94
    iput-boolean p1, p0, Landroid/view/translation/UiTranslationSpec;->mShouldPadContentForCompat:Z

    .line 97
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 246
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 150
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 117
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 118
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_1d

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_1d

    .line 120
    :cond_12
    check-cast p1, Landroid/view/translation/UiTranslationSpec;

    .line 122
    iget-boolean v2, p0, Landroid/view/translation/UiTranslationSpec;->mShouldPadContentForCompat:Z

    iget-boolean p1, p1, Landroid/view/translation/UiTranslationSpec;->mShouldPadContentForCompat:Z

    if-ne v2, p1, :cond_1b

    goto :goto_1c

    :cond_1b
    move v0, v1

    :goto_1c
    return v0

    .line 118
    :cond_1d
    :goto_1d
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 132
    nop

    .line 133
    iget-boolean v0, p0, Landroid/view/translation/UiTranslationSpec;->mShouldPadContentForCompat:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v1, v0

    .line 134
    return v1
.end method

.method public whitelist shouldPadContentForCompat()Z
    .registers 2

    .line 73
    iget-boolean v0, p0, Landroid/view/translation/UiTranslationSpec;->mShouldPadContentForCompat:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UiTranslationSpec { shouldPadContentForCompat = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/view/translation/UiTranslationSpec;->mShouldPadContentForCompat:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

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

    .line 143
    nop

    .line 144
    iget-boolean p2, p0, Landroid/view/translation/UiTranslationSpec;->mShouldPadContentForCompat:Z

    if-eqz p2, :cond_8

    const/4 p2, 0x1

    int-to-byte p2, p2

    goto :goto_9

    :cond_8
    const/4 p2, 0x0

    .line 145
    :goto_9
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 146
    return-void
.end method
