.class public final Landroid/view/translation/TranslationResponseValue;
.super Ljava/lang/Object;
.source "TranslationResponseValue.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/translation/TranslationResponseValue$Builder;,
        Landroid/view/translation/TranslationResponseValue$Status;,
        Landroid/view/translation/TranslationResponseValue$BaseBuilder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/translation/TranslationResponseValue;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist EXTRA_DEFINITIONS:Ljava/lang/String; = "android.view.translation.extra.DEFINITIONS"

.field public static final whitelist STATUS_ERROR:I = 0x1

.field public static final whitelist STATUS_SUCCESS:I


# instance fields
.field private final blacklist mExtras:Landroid/os/Bundle;

.field private final blacklist mStatusCode:I

.field private final blacklist mText:Ljava/lang/CharSequence;

.field private final blacklist mTransliteration:Ljava/lang/CharSequence;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smdefaultExtras()Landroid/os/Bundle;
    .registers 1

    invoke-static {}, Landroid/view/translation/TranslationResponseValue;->defaultExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smdefaultText()Ljava/lang/CharSequence;
    .registers 1

    invoke-static {}, Landroid/view/translation/TranslationResponseValue;->defaultText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smdefaultTransliteration()Ljava/lang/CharSequence;
    .registers 1

    invoke-static {}, Landroid/view/translation/TranslationResponseValue;->defaultTransliteration()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 336
    new-instance v0, Landroid/view/translation/TranslationResponseValue$1;

    invoke-direct {v0}, Landroid/view/translation/TranslationResponseValue$1;-><init>()V

    sput-object v0, Landroid/view/translation/TranslationResponseValue;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(ILjava/lang/CharSequence;Landroid/os/Bundle;Ljava/lang/CharSequence;)V
    .registers 6

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iput p1, p0, Landroid/view/translation/TranslationResponseValue;->mStatusCode:I

    .line 179
    iget p1, p0, Landroid/view/translation/TranslationResponseValue;->mStatusCode:I

    if-eqz p1, :cond_46

    iget p1, p0, Landroid/view/translation/TranslationResponseValue;->mStatusCode:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_f

    goto :goto_46

    .line 181
    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "statusCode was "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p3, p0, Landroid/view/translation/TranslationResponseValue;->mStatusCode:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " but must be one of: STATUS_SUCCESS("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "), STATUS_ERROR("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ")"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 187
    :cond_46
    :goto_46
    iput-object p2, p0, Landroid/view/translation/TranslationResponseValue;->mText:Ljava/lang/CharSequence;

    .line 188
    iput-object p3, p0, Landroid/view/translation/TranslationResponseValue;->mExtras:Landroid/os/Bundle;

    .line 189
    const-class p1, Landroid/annotation/NonNull;

    const/4 p2, 0x0

    iget-object p3, p0, Landroid/view/translation/TranslationResponseValue;->mExtras:Landroid/os/Bundle;

    invoke-static {p1, p2, p3}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 191
    iput-object p4, p0, Landroid/view/translation/TranslationResponseValue;->mTransliteration:Ljava/lang/CharSequence;

    .line 194
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 7

    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 310
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 311
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 312
    and-int/lit8 v2, v0, 0x2

    const/4 v3, 0x0

    if-nez v2, :cond_12

    move-object v2, v3

    goto :goto_16

    :cond_12
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v2

    .line 313
    :goto_16
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v4

    .line 314
    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_20

    move-object p1, v3

    goto :goto_24

    :cond_20
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object p1

    .line 316
    :goto_24
    iput v1, p0, Landroid/view/translation/TranslationResponseValue;->mStatusCode:I

    .line 318
    iget v0, p0, Landroid/view/translation/TranslationResponseValue;->mStatusCode:I

    if-eqz v0, :cond_67

    iget v0, p0, Landroid/view/translation/TranslationResponseValue;->mStatusCode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_30

    goto :goto_67

    .line 320
    :cond_30
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "statusCode was "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/view/translation/TranslationResponseValue;->mStatusCode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " but must be one of: STATUS_SUCCESS("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "), STATUS_ERROR("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 326
    :cond_67
    :goto_67
    iput-object v2, p0, Landroid/view/translation/TranslationResponseValue;->mText:Ljava/lang/CharSequence;

    .line 327
    iput-object v4, p0, Landroid/view/translation/TranslationResponseValue;->mExtras:Landroid/os/Bundle;

    .line 328
    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/view/translation/TranslationResponseValue;->mExtras:Landroid/os/Bundle;

    invoke-static {v0, v3, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 330
    iput-object p1, p0, Landroid/view/translation/TranslationResponseValue;->mTransliteration:Ljava/lang/CharSequence;

    .line 333
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 460
    return-void
.end method

.method private static blacklist defaultExtras()Landroid/os/Bundle;
    .registers 1

    .line 118
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    return-object v0
.end method

.method private static blacklist defaultText()Ljava/lang/CharSequence;
    .registers 1

    .line 114
    const/4 v0, 0x0

    return-object v0
.end method

.method private static blacklist defaultTransliteration()Ljava/lang/CharSequence;
    .registers 1

    .line 127
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist extrasEquals(Landroid/os/Bundle;)Z
    .registers 3

    .line 123
    iget-object v0, p0, Landroid/view/translation/TranslationResponseValue;->mExtras:Landroid/os/Bundle;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Landroid/view/translation/TranslationResponseValue;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_17

    goto :goto_19

    :cond_17
    const/4 p1, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 p1, 0x1

    :goto_1a
    return p1
.end method

.method public static whitelist forError()Landroid/view/translation/TranslationResponseValue;
    .registers 4

    .line 110
    new-instance v0, Landroid/view/translation/TranslationResponseValue;

    const/4 v1, 0x0

    sget-object v2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    const/4 v3, 0x1

    invoke-direct {v0, v3, v1, v2, v1}, Landroid/view/translation/TranslationResponseValue;-><init>(ILjava/lang/CharSequence;Landroid/os/Bundle;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static blacklist statusToString(I)Ljava/lang/String;
    .registers 1

    .line 162
    packed-switch p0, :pswitch_data_e

    .line 167
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 166
    :pswitch_8
    const-string p0, "STATUS_ERROR"

    return-object p0

    .line 164
    :pswitch_b
    const-string p0, "STATUS_SUCCESS"

    return-object p0

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 301
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 257
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 258
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_39

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_39

    .line 260
    :cond_12
    check-cast p1, Landroid/view/translation/TranslationResponseValue;

    .line 262
    iget v2, p0, Landroid/view/translation/TranslationResponseValue;->mStatusCode:I

    iget v3, p1, Landroid/view/translation/TranslationResponseValue;->mStatusCode:I

    if-ne v2, v3, :cond_37

    iget-object v2, p0, Landroid/view/translation/TranslationResponseValue;->mText:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroid/view/translation/TranslationResponseValue;->mText:Ljava/lang/CharSequence;

    .line 264
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    iget-object v2, p1, Landroid/view/translation/TranslationResponseValue;->mExtras:Landroid/os/Bundle;

    .line 265
    invoke-direct {p0, v2}, Landroid/view/translation/TranslationResponseValue;->extrasEquals(Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_37

    iget-object v2, p0, Landroid/view/translation/TranslationResponseValue;->mTransliteration:Ljava/lang/CharSequence;

    iget-object p1, p1, Landroid/view/translation/TranslationResponseValue;->mTransliteration:Ljava/lang/CharSequence;

    .line 266
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_37

    goto :goto_38

    :cond_37
    move v0, v1

    .line 262
    :goto_38
    return v0

    .line 258
    :cond_39
    :goto_39
    return v1
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .registers 2

    .line 223
    iget-object v0, p0, Landroid/view/translation/TranslationResponseValue;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getStatusCode()I
    .registers 2

    .line 204
    iget v0, p0, Landroid/view/translation/TranslationResponseValue;->mStatusCode:I

    return v0
.end method

.method public whitelist getText()Ljava/lang/CharSequence;
    .registers 2

    .line 212
    iget-object v0, p0, Landroid/view/translation/TranslationResponseValue;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getTransliteration()Ljava/lang/CharSequence;
    .registers 2

    .line 233
    iget-object v0, p0, Landroid/view/translation/TranslationResponseValue;->mTransliteration:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 275
    nop

    .line 276
    iget v0, p0, Landroid/view/translation/TranslationResponseValue;->mStatusCode:I

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    .line 277
    mul-int/2addr v0, v1

    iget-object v2, p0, Landroid/view/translation/TranslationResponseValue;->mText:Ljava/lang/CharSequence;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 278
    mul-int/2addr v0, v1

    iget-object v2, p0, Landroid/view/translation/TranslationResponseValue;->mExtras:Landroid/os/Bundle;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 279
    mul-int/2addr v0, v1

    iget-object v1, p0, Landroid/view/translation/TranslationResponseValue;->mTransliteration:Ljava/lang/CharSequence;

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 280
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TranslationResponseValue { statusCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/translation/TranslationResponseValue;->mStatusCode:I

    .line 243
    invoke-static {v1}, Landroid/view/translation/TranslationResponseValue;->statusToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", text = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/translation/TranslationResponseValue;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", extras = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/translation/TranslationResponseValue;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", transliteration = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/translation/TranslationResponseValue;->mTransliteration:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 242
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 289
    nop

    .line 290
    iget-object p2, p0, Landroid/view/translation/TranslationResponseValue;->mText:Ljava/lang/CharSequence;

    if-eqz p2, :cond_8

    const/4 p2, 0x2

    int-to-byte p2, p2

    goto :goto_9

    :cond_8
    const/4 p2, 0x0

    .line 291
    :goto_9
    iget-object v0, p0, Landroid/view/translation/TranslationResponseValue;->mTransliteration:Ljava/lang/CharSequence;

    if-eqz v0, :cond_10

    or-int/lit8 p2, p2, 0x8

    int-to-byte p2, p2

    .line 292
    :cond_10
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 293
    iget p2, p0, Landroid/view/translation/TranslationResponseValue;->mStatusCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 294
    iget-object p2, p0, Landroid/view/translation/TranslationResponseValue;->mText:Ljava/lang/CharSequence;

    if-eqz p2, :cond_21

    iget-object p2, p0, Landroid/view/translation/TranslationResponseValue;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 295
    :cond_21
    iget-object p2, p0, Landroid/view/translation/TranslationResponseValue;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 296
    iget-object p2, p0, Landroid/view/translation/TranslationResponseValue;->mTransliteration:Ljava/lang/CharSequence;

    if-eqz p2, :cond_2f

    iget-object p2, p0, Landroid/view/translation/TranslationResponseValue;->mTransliteration:Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 297
    :cond_2f
    return-void
.end method
