.class public final Landroid/view/translation/ViewTranslationRequest;
.super Ljava/lang/Object;
.source "ViewTranslationRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/translation/ViewTranslationRequest$Id;,
        Landroid/view/translation/ViewTranslationRequest$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/translation/ViewTranslationRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist ID_CONTENT_DESCRIPTION:Ljava/lang/String; = "android:content_description"

.field public static final whitelist ID_TEXT:Ljava/lang/String; = "android:text"


# instance fields
.field private final blacklist mAutofillId:Landroid/view/autofill/AutofillId;

.field private final blacklist mTranslationRequestValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/translation/TranslationRequestValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$smdefaultTranslationRequestValues()Ljava/util/Map;
    .registers 1

    invoke-static {}, Landroid/view/translation/ViewTranslationRequest;->defaultTranslationRequestValues()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 309
    new-instance v0, Landroid/view/translation/ViewTranslationRequest$1;

    invoke-direct {v0}, Landroid/view/translation/ViewTranslationRequest$1;-><init>()V

    sput-object v0, Landroid/view/translation/ViewTranslationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 5

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 294
    sget-object v0, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillId;

    .line 295
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 296
    const-class v2, Landroid/view/translation/TranslationRequestValue;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    .line 298
    iput-object v0, p0, Landroid/view/translation/ViewTranslationRequest;->mAutofillId:Landroid/view/autofill/AutofillId;

    .line 299
    const-class p1, Landroid/annotation/NonNull;

    iget-object v0, p0, Landroid/view/translation/ViewTranslationRequest;->mAutofillId:Landroid/view/autofill/AutofillId;

    const/4 v2, 0x0

    invoke-static {p1, v2, v0}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 301
    iput-object v1, p0, Landroid/view/translation/ViewTranslationRequest;->mTranslationRequestValues:Ljava/util/Map;

    .line 302
    const-class p1, Landroid/annotation/NonNull;

    iget-object v0, p0, Landroid/view/translation/ViewTranslationRequest;->mTranslationRequestValues:Ljava/util/Map;

    invoke-static {p1, v2, v0}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 306
    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/autofill/AutofillId;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/autofill/AutofillId;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/translation/TranslationRequestValue;",
            ">;)V"
        }
    .end annotation

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    iput-object p1, p0, Landroid/view/translation/ViewTranslationRequest;->mAutofillId:Landroid/view/autofill/AutofillId;

    .line 223
    const-class p1, Landroid/annotation/NonNull;

    iget-object v0, p0, Landroid/view/translation/ViewTranslationRequest;->mAutofillId:Landroid/view/autofill/AutofillId;

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 225
    iput-object p2, p0, Landroid/view/translation/ViewTranslationRequest;->mTranslationRequestValues:Ljava/util/Map;

    .line 226
    const-class p1, Landroid/annotation/NonNull;

    iget-object p2, p0, Landroid/view/translation/ViewTranslationRequest;->mTranslationRequestValues:Ljava/util/Map;

    invoke-static {p1, v1, p2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 230
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 328
    return-void
.end method

.method private static blacklist defaultTranslationRequestValues()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/translation/TranslationRequestValue;",
            ">;"
        }
    .end annotation

    .line 100
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 285
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 251
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 252
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2b

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2b

    .line 254
    :cond_12
    check-cast p1, Landroid/view/translation/ViewTranslationRequest;

    .line 256
    iget-object v2, p0, Landroid/view/translation/ViewTranslationRequest;->mAutofillId:Landroid/view/autofill/AutofillId;

    iget-object v3, p1, Landroid/view/translation/ViewTranslationRequest;->mAutofillId:Landroid/view/autofill/AutofillId;

    .line 257
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object v2, p0, Landroid/view/translation/ViewTranslationRequest;->mTranslationRequestValues:Ljava/util/Map;

    iget-object p1, p1, Landroid/view/translation/ViewTranslationRequest;->mTranslationRequestValues:Ljava/util/Map;

    .line 258
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_29

    goto :goto_2a

    :cond_29
    move v0, v1

    .line 256
    :goto_2a
    return v0

    .line 252
    :cond_2b
    :goto_2b
    return v1
.end method

.method public whitelist getAutofillId()Landroid/view/autofill/AutofillId;
    .registers 2

    .line 96
    iget-object v0, p0, Landroid/view/translation/ViewTranslationRequest;->mAutofillId:Landroid/view/autofill/AutofillId;

    return-object v0
.end method

.method public whitelist getKeys()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Landroid/view/translation/ViewTranslationRequest;->mTranslationRequestValues:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getValue(Ljava/lang/String;)Landroid/view/translation/TranslationRequestValue;
    .registers 5

    .line 74
    const-string v0, "key should not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 75
    iget-object v0, p0, Landroid/view/translation/ViewTranslationRequest;->mTranslationRequestValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 78
    iget-object v0, p0, Landroid/view/translation/ViewTranslationRequest;->mTranslationRequestValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/translation/TranslationRequestValue;

    return-object p1

    .line 76
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request does not contain value for key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 267
    nop

    .line 268
    iget-object v0, p0, Landroid/view/translation/ViewTranslationRequest;->mAutofillId:Landroid/view/autofill/AutofillId;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    .line 269
    mul-int/2addr v0, v1

    iget-object v1, p0, Landroid/view/translation/ViewTranslationRequest;->mTranslationRequestValues:Ljava/util/Map;

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 270
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ViewTranslationRequest { autofillId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/translation/ViewTranslationRequest;->mAutofillId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", translationRequestValues = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/translation/ViewTranslationRequest;->mTranslationRequestValues:Ljava/util/Map;

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

    .line 279
    iget-object v0, p0, Landroid/view/translation/ViewTranslationRequest;->mAutofillId:Landroid/view/autofill/AutofillId;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 280
    iget-object p2, p0, Landroid/view/translation/ViewTranslationRequest;->mTranslationRequestValues:Ljava/util/Map;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 281
    return-void
.end method
