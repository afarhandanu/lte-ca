.class public final Landroid/view/translation/TranslationRequestValue;
.super Ljava/lang/Object;
.source "TranslationRequestValue.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/translation/TranslationRequestValue;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mText:Ljava/lang/CharSequence;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 155
    new-instance v0, Landroid/view/translation/TranslationRequestValue$1;

    invoke-direct {v0}, Landroid/view/translation/TranslationRequestValue$1;-><init>()V

    sput-object v0, Landroid/view/translation/TranslationRequestValue;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 147
    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_d

    const/4 p1, 0x0

    goto :goto_11

    :cond_d
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object p1

    .line 149
    :goto_11
    iput-object p1, p0, Landroid/view/translation/TranslationRequestValue;->mText:Ljava/lang/CharSequence;

    .line 152
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/CharSequence;)V
    .registers 2

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Landroid/view/translation/TranslationRequestValue;->mText:Ljava/lang/CharSequence;

    .line 83
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 174
    return-void
.end method

.method public static whitelist forText(Ljava/lang/CharSequence;)Landroid/view/translation/TranslationRequestValue;
    .registers 2

    .line 44
    const-string/jumbo v0, "text should not be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 45
    new-instance v0, Landroid/view/translation/TranslationRequestValue;

    invoke-direct {v0, p0}, Landroid/view/translation/TranslationRequestValue;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4

    .line 103
    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    .line 104
    :cond_4
    if-eqz p1, :cond_1c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_11

    goto :goto_1c

    .line 106
    :cond_11
    check-cast p1, Landroid/view/translation/TranslationRequestValue;

    .line 108
    iget-object v0, p0, Landroid/view/translation/TranslationRequestValue;->mText:Ljava/lang/CharSequence;

    iget-object p1, p1, Landroid/view/translation/TranslationRequestValue;->mText:Ljava/lang/CharSequence;

    .line 109
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    .line 108
    return p1

    .line 104
    :cond_1c
    :goto_1c
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist getText()Ljava/lang/CharSequence;
    .registers 2

    .line 54
    iget-object v0, p0, Landroid/view/translation/TranslationRequestValue;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 118
    nop

    .line 119
    iget-object v0, p0, Landroid/view/translation/TranslationRequestValue;->mText:Ljava/lang/CharSequence;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v1, v0

    .line 120
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TranslationRequestValue { text = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/translation/TranslationRequestValue;->mText:Ljava/lang/CharSequence;

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
    .registers 3

    .line 129
    nop

    .line 130
    iget-object p2, p0, Landroid/view/translation/TranslationRequestValue;->mText:Ljava/lang/CharSequence;

    if-eqz p2, :cond_8

    const/4 p2, 0x1

    int-to-byte p2, p2

    goto :goto_9

    :cond_8
    const/4 p2, 0x0

    .line 131
    :goto_9
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 132
    iget-object p2, p0, Landroid/view/translation/TranslationRequestValue;->mText:Ljava/lang/CharSequence;

    if-eqz p2, :cond_15

    iget-object p2, p0, Landroid/view/translation/TranslationRequestValue;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 133
    :cond_15
    return-void
.end method
