.class public final Landroid/view/inputmethod/InlineSuggestionInfo;
.super Ljava/lang/Object;
.source "InlineSuggestionInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/inputmethod/InlineSuggestionInfo$Type;,
        Landroid/view/inputmethod/InlineSuggestionInfo$Source;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/inputmethod/InlineSuggestionInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SOURCE_AUTOFILL:Ljava/lang/String; = "android:autofill"

.field public static final whitelist SOURCE_PLATFORM:Ljava/lang/String; = "android:platform"

.field public static final whitelist TYPE_ACTION:Ljava/lang/String; = "android:autofill:action"

.field public static final whitelist TYPE_SUGGESTION:Ljava/lang/String; = "android:autofill:suggestion"


# instance fields
.field private final blacklist mAutofillHints:[Ljava/lang/String;

.field private final blacklist mInlinePresentationSpec:Landroid/widget/inline/InlinePresentationSpec;

.field private final blacklist mPinned:Z

.field private final blacklist mSource:Ljava/lang/String;

.field private final blacklist mTooltip:Landroid/view/inputmethod/InlineSuggestion;

.field private final blacklist mType:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 376
    new-instance v0, Landroid/view/inputmethod/InlineSuggestionInfo$1;

    invoke-direct {v0}, Landroid/view/inputmethod/InlineSuggestionInfo$1;-><init>()V

    sput-object v0, Landroid/view/inputmethod/InlineSuggestionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 10

    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 333
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 334
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    .line 335
    :goto_e
    sget-object v2, Landroid/widget/inline/InlinePresentationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/inline/InlinePresentationSpec;

    .line 336
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 337
    and-int/lit8 v4, v0, 0x4

    const/4 v5, 0x0

    if-nez v4, :cond_21

    move-object v4, v5

    goto :goto_25

    :cond_21
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v4

    .line 338
    :goto_25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 339
    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_2f

    move-object p1, v5

    goto :goto_37

    :cond_2f
    sget-object v0, Landroid/view/inputmethod/InlineSuggestion;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InlineSuggestion;

    .line 341
    :goto_37
    iput-object v2, p0, Landroid/view/inputmethod/InlineSuggestionInfo;->mInlinePresentationSpec:Landroid/widget/inline/InlinePresentationSpec;

    .line 342
    const-class v0, Landroid/annotation/NonNull;

    iget-object v2, p0, Landroid/view/inputmethod/InlineSuggestionInfo;->mInlinePresentationSpec:Landroid/widget/inline/InlinePresentationSpec;

    invoke-static {v0, v5, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 344
    iput-object v3, p0, Landroid/view/inputmethod/InlineSuggestionInfo;->mSource:Ljava/lang/String;

    .line 346
    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestionInfo;->mSource:Ljava/lang/String;

    const-string v2, "android:autofill"

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v3, ")"

    if-nez v0, :cond_8d

    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestionInfo;->mSource:Ljava/lang/String;

    .line 347
    const-string v7, "android:platform"

    invoke-static {v0, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59

    goto :goto_8d

    .line 348
    :cond_59
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "source was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/InlineSuggestionInfo;->mSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " but must be one of: SOURCE_AUTOFILL("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), SOURCE_PLATFORM("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 354
    :cond_8d
    :goto_8d
    const-class v0, Landroid/annotation/NonNull;

    iget-object v2, p0, Landroid/view/inputmethod/InlineSuggestionInfo;->mSource:Ljava/lang/String;

    invoke-static {v0, v5, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 356
    iput-object v4, p0, Landroid/view/inputmethod/InlineSuggestionInfo;->mAutofillHints:[Ljava/lang/String;

    .line 357
    iput-object v6, p0, Landroid/view/inputmethod/InlineSuggestionInfo;->mType:Ljava/lang/String;

    .line 359
    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestionInfo;->mType:Ljava/lang/String;

    const-string v2, "android:autofill:suggestion"

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e1

    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestionInfo;->mType:Ljava/lang/String;

    .line 360
    const-string v4, "android:autofill:action"

    invoke-static {v0, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ad

    goto :goto_e1

    .line 361
    :cond_ad
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "type was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/InlineSuggestionInfo;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " but must be one of: TYPE_SUGGESTION("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), TYPE_ACTION("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 367
    :cond_e1
    :goto_e1
    const-class v0, Landroid/annotation/NonNull;

    iget-object v2, p0, Landroid/view/inputmethod/InlineSuggestionInfo;->mType:Ljava/lang/String;

    invoke-static {v0, v5, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 369
    iput-boolean v1, p0, Landroid/view/inputmethod/InlineSuggestionInfo;->mPinned:Z

    .line 370
    iput-object p1, p0, Landroid/view/inputmethod/InlineSuggestionInfo;->mTooltip:Landroid/view/inputmethod/InlineSuggestion;

    .line 373
    return-void
.end method

.method public constructor blacklist <init>(Landroid/widget/inline/InlinePresentationSpec;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ZLandroid/view/inputmethod/InlineSuggestion;)V
    .registers 10

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    iput-object p1, p0, Landroid/view/inputmethod/InlineSuggestionInfo;->mInlinePresentationSpec:Landroid/widget/inline/InlinePresentationSpec;

    .line 170
    const-class p1, Landroid/annotation/NonNull;

    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestionInfo;->mInlinePresentationSpec:Landroid/widget/inline/InlinePresentationSpec;

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 172
    iput-object p2, p0, Landroid/view/inputmethod/InlineSuggestionInfo;->mSource:Ljava/lang/String;

    .line 174
    iget-object p1, p0, Landroid/view/inputmethod/InlineSuggestionInfo;->mSource:Ljava/lang/String;

    const-string p2, "android:autofill"

    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const-string v0, ")"

    if-nez p1, :cond_5a

    iget-object p1, p0, Landroid/view/inputmethod/InlineSuggestionInfo;->mSource:Ljava/lang/String;

    .line 175
    const-string v2, "android:platform"

    invoke-static {p1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_26

    goto :goto_5a

    .line 176
    :cond_26
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "source was "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object p4, p0, Landroid/view/inputmethod/InlineSuggestionInfo;->mSource:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, " but must be one of: SOURCE_AUTOFILL("

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "), SOURCE_PLATFORM("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 182
    :cond_5a
    :goto_5a
    const-class p1, Landroid/annotation/NonNull;

    iget-object p2, p0, Landroid/view/inputmethod/InlineSuggestionInfo;->mSource:Ljava/lang/String;

    invoke-static {p1, v1, p2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 184
    iput-object p3, p0, Landroid/view/inputmethod/InlineSuggestionInfo;->mAutofillHints:[Ljava/lang/String;

    .line 185
    iput-object p4, p0, Landroid/view/inputmethod/InlineSuggestionInfo;->mType:Ljava/lang/String;

    .line 187
    iget-object p1, p0, Landroid/view/inputmethod/InlineSuggestionInfo;->mType:Ljava/lang/String;

    const-string p2, "android:autofill:suggestion"

    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_ae

    iget-object p1, p0, Landroid/view/inputmethod/InlineSuggestionInfo;->mType:Ljava/lang/String;

    .line 188
    const-string p3, "android:autofill:action"

    invoke-static {p1, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7a

    goto :goto_ae

    .line 189
    :cond_7a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p5, "type was "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    iget-object p5, p0, Landroid/view/inputmethod/InlineSuggestionInfo;->mType:Ljava/lang/String;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string p5, " but must be one of: TYPE_SUGGESTION("

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p4, "), TYPE_ACTION("

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 195
    :cond_ae
    :goto_ae
    const-class p1, Landroid/annotation/NonNull;

    iget-object p2, p0, Landroid/view/inputmethod/InlineSuggestionInfo;->mType:Ljava/lang/String;

    invoke-static {p1, v1, p2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 197
    iput-boolean p5, p0, Landroid/view/inputmethod/InlineSuggestionInfo;->mPinned:Z

    .line 198
    iput-object p6, p0, Landroid/view/inputmethod/InlineSuggestionInfo;->mTooltip:Landroid/view/inputmethod/InlineSuggestion;

    .line 201
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 395
    return-void
.end method

.method public static blacklist newInlineSuggestionInfo(Landroid/widget/inline/InlinePresentationSpec;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InlineSuggestionInfo;
    .registers 12

    .line 92
    new-instance v0, Landroid/view/inputmethod/InlineSuggestionInfo;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v6}, Landroid/view/inputmethod/InlineSuggestionInfo;-><init>(Landroid/widget/inline/InlinePresentationSpec;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ZLandroid/view/inputmethod/InlineSuggestion;)V

    return-object v0
.end method

.method public static blacklist newInlineSuggestionInfo(Landroid/widget/inline/InlinePresentationSpec;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ZLandroid/view/inputmethod/InlineSuggestion;)Landroid/view/inputmethod/InlineSuggestionInfo;
    .registers 13

    .line 107
    new-instance v0, Landroid/view/inputmethod/InlineSuggestionInfo;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/view/inputmethod/InlineSuggestionInfo;-><init>(Landroid/widget/inline/InlinePresentationSpec;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ZLandroid/view/inputmethod/InlineSuggestion;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 324
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 274
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 275
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_4f

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_4f

    .line 277
    :cond_12
    check-cast p1, Landroid/view/inputmethod/InlineSuggestionInfo;

    .line 279
    iget-object v2, p0, Landroid/view/inputmethod/InlineSuggestionInfo;->mInlinePresentationSpec:Landroid/widget/inline/InlinePresentationSpec;

    iget-object v3, p1, Landroid/view/inputmethod/InlineSuggestionInfo;->mInlinePresentationSpec:Landroid/widget/inline/InlinePresentationSpec;

    .line 280
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    iget-object v2, p0, Landroid/view/inputmethod/InlineSuggestionInfo;->mSource:Ljava/lang/String;

    iget-object v3, p1, Landroid/view/inputmethod/InlineSuggestionInfo;->mSource:Ljava/lang/String;

    .line 281
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    iget-object v2, p0, Landroid/view/inputmethod/InlineSuggestionInfo;->mAutofillHints:[Ljava/lang/String;

    iget-object v3, p1, Landroid/view/inputmethod/InlineSuggestionInfo;->mAutofillHints:[Ljava/lang/String;

    .line 282
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    iget-object v2, p0, Landroid/view/inputmethod/InlineSuggestionInfo;->mType:Ljava/lang/String;

    iget-object v3, p1, Landroid/view/inputmethod/InlineSuggestionInfo;->mType:Ljava/lang/String;

    .line 283
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    iget-boolean v2, p0, Landroid/view/inputmethod/InlineSuggestionInfo;->mPinned:Z

    iget-boolean v3, p1, Landroid/view/inputmethod/InlineSuggestionInfo;->mPinned:Z

    if-ne v2, v3, :cond_4d

    iget-object v2, p0, Landroid/view/inputmethod/InlineSuggestionInfo;->mTooltip:Landroid/view/inputmethod/InlineSuggestion;

    iget-object p1, p1, Landroid/view/inputmethod/InlineSuggestionInfo;->mTooltip:Landroid/view/inputmethod/InlineSuggestion;

    .line 285
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4d

    goto :goto_4e

    :cond_4d
    move v0, v1

    .line 279
    :goto_4e
    return v0

    .line 275
    :cond_4f
    :goto_4f
    return v1
.end method

.method public whitelist getAutofillHints()[Ljava/lang/String;
    .registers 2

    .line 224
    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestionInfo;->mAutofillHints:[Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getInlinePresentationSpec()Landroid/widget/inline/InlinePresentationSpec;
    .registers 2

    .line 208
    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestionInfo;->mInlinePresentationSpec:Landroid/widget/inline/InlinePresentationSpec;

    return-object v0
.end method

.method public whitelist getSource()Ljava/lang/String;
    .registers 2

    .line 216
    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestionInfo;->mSource:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getTooltip()Landroid/view/inputmethod/InlineSuggestion;
    .registers 2

    .line 248
    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestionInfo;->mTooltip:Landroid/view/inputmethod/InlineSuggestion;

    return-object v0
.end method

.method public whitelist getType()Ljava/lang/String;
    .registers 2

    .line 232
    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestionInfo;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 294
    nop

    .line 295
    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestionInfo;->mInlinePresentationSpec:Landroid/widget/inline/InlinePresentationSpec;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    .line 296
    mul-int/2addr v0, v1

    iget-object v2, p0, Landroid/view/inputmethod/InlineSuggestionInfo;->mSource:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 297
    mul-int/2addr v0, v1

    iget-object v2, p0, Landroid/view/inputmethod/InlineSuggestionInfo;->mAutofillHints:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 298
    mul-int/2addr v0, v1

    iget-object v2, p0, Landroid/view/inputmethod/InlineSuggestionInfo;->mType:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 299
    mul-int/2addr v0, v1

    iget-boolean v2, p0, Landroid/view/inputmethod/InlineSuggestionInfo;->mPinned:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    .line 300
    mul-int/2addr v0, v1

    iget-object v1, p0, Landroid/view/inputmethod/InlineSuggestionInfo;->mTooltip:Landroid/view/inputmethod/InlineSuggestion;

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 301
    return v0
.end method

.method public whitelist isPinned()Z
    .registers 2

    .line 240
    iget-boolean v0, p0, Landroid/view/inputmethod/InlineSuggestionInfo;->mPinned:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InlineSuggestionInfo { inlinePresentationSpec = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/InlineSuggestionInfo;->mInlinePresentationSpec:Landroid/widget/inline/InlinePresentationSpec;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", source = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/InlineSuggestionInfo;->mSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", autofillHints = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/InlineSuggestionInfo;->mAutofillHints:[Ljava/lang/String;

    .line 260
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/InlineSuggestionInfo;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pinned = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/view/inputmethod/InlineSuggestionInfo;->mPinned:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tooltip = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/InlineSuggestionInfo;->mTooltip:Landroid/view/inputmethod/InlineSuggestion;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 257
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 310
    nop

    .line 311
    iget-boolean v0, p0, Landroid/view/inputmethod/InlineSuggestionInfo;->mPinned:Z

    if-eqz v0, :cond_9

    const/16 v0, 0x10

    int-to-byte v0, v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 312
    :goto_a
    iget-object v1, p0, Landroid/view/inputmethod/InlineSuggestionInfo;->mAutofillHints:[Ljava/lang/String;

    if-eqz v1, :cond_11

    or-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    .line 313
    :cond_11
    iget-object v1, p0, Landroid/view/inputmethod/InlineSuggestionInfo;->mTooltip:Landroid/view/inputmethod/InlineSuggestion;

    if-eqz v1, :cond_18

    or-int/lit8 v0, v0, 0x20

    int-to-byte v0, v0

    .line 314
    :cond_18
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 315
    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestionInfo;->mInlinePresentationSpec:Landroid/widget/inline/InlinePresentationSpec;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 316
    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestionInfo;->mSource:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestionInfo;->mAutofillHints:[Ljava/lang/String;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestionInfo;->mAutofillHints:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 318
    :cond_2e
    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestionInfo;->mType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 319
    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestionInfo;->mTooltip:Landroid/view/inputmethod/InlineSuggestion;

    if-eqz v0, :cond_3c

    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestionInfo;->mTooltip:Landroid/view/inputmethod/InlineSuggestion;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 320
    :cond_3c
    return-void
.end method
