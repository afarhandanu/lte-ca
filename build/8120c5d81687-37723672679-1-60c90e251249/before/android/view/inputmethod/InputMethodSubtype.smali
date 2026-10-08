.class public final Landroid/view/inputmethod/InputMethodSubtype;
.super Ljava/lang/Object;
.source "InputMethodSubtype.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o EXTRA_KEY_UNTRANSLATABLE_STRING_IN_SUBTYPE_NAME:Ljava/lang/String; = "UntranslatableReplacementStringInSubtypeName"

.field private static final greylist-max-o EXTRA_VALUE_KEY_VALUE_SEPARATOR:Ljava/lang/String; = "="

.field private static final greylist-max-o EXTRA_VALUE_PAIR_SEPARATOR:Ljava/lang/String; = ","

.field private static final greylist-max-o LANGUAGE_TAG_NONE:Ljava/lang/String; = ""

.field public static final greylist-max-o SUBTYPE_ID_NONE:I = 0x0

.field private static final blacklist SUBTYPE_MODE_KEYBOARD:Ljava/lang/String; = "keyboard"

.field private static final greylist-max-o TAG:Ljava/lang/String;

.field private static final blacklist UNDEFINED_LANGUAGE_TAG:Ljava/lang/String; = "und"


# instance fields
.field private volatile blacklist mCachedCanonicalizedLanguageTag:Ljava/lang/String;

.field private volatile greylist-max-o mCachedLocaleObj:Ljava/util/Locale;

.field private volatile greylist-max-o mExtraValueHashMapCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mIsAsciiCapable:Z

.field private final greylist-max-o mIsAuxiliary:Z

.field private final blacklist mLayoutLabelNonLocalized:Ljava/lang/CharSequence;

.field private final blacklist mLayoutLabelResId:I

.field private final greylist-max-o mLock:Ljava/lang/Object;

.field private final greylist-max-o mOverridesImplicitlyEnabledSubtype:Z

.field private final blacklist mPkLanguageTag:Ljava/lang/String;

.field private final blacklist mPkLayoutType:Ljava/lang/String;

.field private final greylist-max-o mSubtypeExtraValue:Ljava/lang/String;

.field private final greylist-max-o mSubtypeHashCode:I

.field private final greylist-max-o mSubtypeIconResId:I

.field private final greylist-max-o mSubtypeId:I

.field private final greylist-max-o mSubtypeLanguageTag:Ljava/lang/String;

.field private final greylist-max-o mSubtypeLocale:Ljava/lang/String;

.field private final greylist-max-o mSubtypeMode:Ljava/lang/String;

.field private final blacklist mSubtypeNameOverride:Ljava/lang/CharSequence;

.field private final greylist-max-o mSubtypeNameResId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 72
    const-class v0, Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/inputmethod/InputMethodSubtype;->TAG:Ljava/lang/String;

    .line 917
    new-instance v0, Landroid/view/inputmethod/InputMethodSubtype$1;

    invoke-direct {v0}, Landroid/view/inputmethod/InputMethodSubtype$1;-><init>()V

    sput-object v0, Landroid/view/inputmethod/InputMethodSubtype;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .registers 17
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 354
    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Landroid/view/inputmethod/InputMethodSubtype;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZI)V

    .line 356
    return-void
.end method

.method public constructor whitelist <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZI)V
    .registers 18
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 392
    const/4 v8, 0x0

    move v0, p1

    move v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-static/range {v0 .. v8}, Landroid/view/inputmethod/InputMethodSubtype;->getBuilder(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZIZ)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodSubtype;-><init>(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)V

    .line 394
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 5

    .line 426
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mLock:Ljava/lang/Object;

    .line 428
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeNameResId:I

    .line 429
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 430
    const-string v1, ""

    if-eqz v0, :cond_1d

    goto :goto_1e

    :cond_1d
    move-object v0, v1

    :goto_1e
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeNameOverride:Ljava/lang/CharSequence;

    .line 431
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mLayoutLabelResId:I

    .line 432
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 433
    if-eqz v0, :cond_31

    goto :goto_32

    :cond_31
    move-object v0, v1

    :goto_32
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mLayoutLabelNonLocalized:Ljava/lang/CharSequence;

    .line 434
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    .line 435
    if-eqz v0, :cond_3b

    goto :goto_3c

    :cond_3b
    move-object v0, v1

    :goto_3c
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mPkLanguageTag:Ljava/lang/String;

    .line 436
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    .line 437
    if-eqz v0, :cond_45

    goto :goto_46

    :cond_45
    move-object v0, v1

    :goto_46
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mPkLayoutType:Ljava/lang/String;

    .line 438
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeIconResId:I

    .line 439
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 440
    if-eqz v0, :cond_55

    goto :goto_56

    :cond_55
    move-object v0, v1

    :goto_56
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeLocale:Ljava/lang/String;

    .line 441
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 442
    if-eqz v0, :cond_5f

    goto :goto_60

    :cond_5f
    move-object v0, v1

    :goto_60
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeLanguageTag:Ljava/lang/String;

    .line 443
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 444
    if-eqz v0, :cond_69

    goto :goto_6a

    :cond_69
    move-object v0, v1

    :goto_6a
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeMode:Ljava/lang/String;

    .line 445
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 446
    if-eqz v0, :cond_73

    move-object v1, v0

    :cond_73
    iput-object v1, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeExtraValue:Ljava/lang/String;

    .line 447
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_7f

    move v0, v2

    goto :goto_80

    :cond_7f
    move v0, v1

    :goto_80
    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mIsAuxiliary:Z

    .line 448
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_8a

    move v0, v2

    goto :goto_8b

    :cond_8a
    move v0, v1

    :goto_8b
    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mOverridesImplicitlyEnabledSubtype:Z

    .line 449
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeHashCode:I

    .line 450
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeId:I

    .line 451
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-ne p1, v2, :cond_a0

    move v1, v2

    :cond_a0
    iput-boolean v1, p0, Landroid/view/inputmethod/InputMethodSubtype;->mIsAsciiCapable:Z

    .line 452
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)V
    .registers 8

    .line 400
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mLock:Ljava/lang/Object;

    .line 401
    invoke-static {p1}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->-$$Nest$fgetmSubtypeNameResId(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeNameResId:I

    .line 402
    invoke-static {p1}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->-$$Nest$fgetmSubtypeNameOverride(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeNameOverride:Ljava/lang/CharSequence;

    .line 403
    invoke-static {p1}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->-$$Nest$fgetmLayoutLabelResId(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mLayoutLabelResId:I

    .line 404
    invoke-static {p1}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->-$$Nest$fgetmLayoutLabelNonLocalized(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mLayoutLabelNonLocalized:Ljava/lang/CharSequence;

    .line 405
    invoke-static {p1}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->-$$Nest$fgetmPkLanguageTag(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mPkLanguageTag:Ljava/lang/String;

    .line 406
    invoke-static {p1}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->-$$Nest$fgetmPkLayoutType(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mPkLayoutType:Ljava/lang/String;

    .line 407
    invoke-static {p1}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->-$$Nest$fgetmSubtypeIconResId(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeIconResId:I

    .line 408
    invoke-static {p1}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->-$$Nest$fgetmSubtypeLocale(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeLocale:Ljava/lang/String;

    .line 409
    invoke-static {p1}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->-$$Nest$fgetmSubtypeLanguageTag(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeLanguageTag:Ljava/lang/String;

    .line 410
    invoke-static {p1}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->-$$Nest$fgetmSubtypeMode(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeMode:Ljava/lang/String;

    .line 411
    invoke-static {p1}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->-$$Nest$fgetmSubtypeExtraValue(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeExtraValue:Ljava/lang/String;

    .line 412
    invoke-static {p1}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->-$$Nest$fgetmIsAuxiliary(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mIsAuxiliary:Z

    .line 413
    invoke-static {p1}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->-$$Nest$fgetmOverridesImplicitlyEnabledSubtype(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mOverridesImplicitlyEnabledSubtype:Z

    .line 414
    invoke-static {p1}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->-$$Nest$fgetmSubtypeId(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeId:I

    .line 415
    invoke-static {p1}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->-$$Nest$fgetmIsAsciiCapable(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)Z

    move-result p1

    iput-boolean p1, p0, Landroid/view/inputmethod/InputMethodSubtype;->mIsAsciiCapable:Z

    .line 418
    iget p1, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeId:I

    if-eqz p1, :cond_6d

    .line 419
    iget p1, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeId:I

    iput p1, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeHashCode:I

    goto :goto_7f

    .line 421
    :cond_6d
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeLocale:Ljava/lang/String;

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeMode:Ljava/lang/String;

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeExtraValue:Ljava/lang/String;

    iget-boolean v3, p0, Landroid/view/inputmethod/InputMethodSubtype;->mIsAuxiliary:Z

    iget-boolean v4, p0, Landroid/view/inputmethod/InputMethodSubtype;->mOverridesImplicitlyEnabledSubtype:Z

    iget-boolean v5, p0, Landroid/view/inputmethod/InputMethodSubtype;->mIsAsciiCapable:Z

    invoke-static/range {v0 .. v5}, Landroid/view/inputmethod/InputMethodSubtype;->hashCodeInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)I

    move-result p1

    iput p1, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeHashCode:I

    .line 424
    :goto_7f
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;Landroid/view/inputmethod/InputMethodSubtype-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodSubtype;-><init>(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)V

    return-void
.end method

.method private static greylist-max-o getBuilder(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZIZ)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;
    .registers 10

    .line 331
    new-instance v0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    invoke-direct {v0}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;-><init>()V

    .line 332
    invoke-static {v0, p0}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->-$$Nest$fputmSubtypeNameResId(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;I)V

    .line 333
    invoke-static {v0, p1}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->-$$Nest$fputmSubtypeIconResId(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;I)V

    .line 334
    invoke-static {v0, p2}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->-$$Nest$fputmSubtypeLocale(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;Ljava/lang/String;)V

    .line 335
    invoke-static {v0, p3}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->-$$Nest$fputmSubtypeMode(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;Ljava/lang/String;)V

    .line 336
    invoke-static {v0, p4}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->-$$Nest$fputmSubtypeExtraValue(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;Ljava/lang/String;)V

    .line 337
    invoke-static {v0, p5}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->-$$Nest$fputmIsAuxiliary(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;Z)V

    .line 338
    invoke-static {v0, p6}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->-$$Nest$fputmOverridesImplicitlyEnabledSubtype(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;Z)V

    .line 339
    invoke-static {v0, p7}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->-$$Nest$fputmSubtypeId(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;I)V

    .line 340
    invoke-static {v0, p8}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->-$$Nest$fputmIsAsciiCapable(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;Z)V

    .line 341
    return-object v0
.end method

.method private greylist-max-o getExtraValueHashMap()Ljava/util/HashMap;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 793
    monitor-enter p0

    .line 794
    :try_start_1
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mExtraValueHashMapCache:Ljava/util/HashMap;

    .line 795
    if-eqz v0, :cond_7

    .line 796
    monitor-exit p0

    return-object v0

    .line 798
    :cond_7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 799
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeExtraValue:Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 800
    const/4 v2, 0x0

    move v3, v2

    :goto_16
    array-length v4, v1

    if-ge v3, v4, :cond_44

    .line 801
    aget-object v4, v1, v3

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 802
    array-length v5, v4

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2c

    .line 803
    aget-object v4, v4, v2

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_41

    .line 804
    :cond_2c
    array-length v5, v4

    if-le v5, v6, :cond_41

    .line 805
    array-length v5, v4

    const/4 v7, 0x2

    if-le v5, v7, :cond_3a

    .line 806
    sget-object v5, Landroid/view/inputmethod/InputMethodSubtype;->TAG:Ljava/lang/String;

    const-string v7, "ExtraValue has two or more \'=\'s"

    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    :cond_3a
    aget-object v5, v4, v2

    aget-object v4, v4, v6

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 800
    :cond_41
    :goto_41
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 811
    :cond_44
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mExtraValueHashMapCache:Ljava/util/HashMap;

    .line 812
    monitor-exit p0

    return-object v0

    .line 813
    :catchall_48
    move-exception v0

    monitor-exit p0
    :try_end_4a
    .catchall {:try_start_1 .. :try_end_4a} :catchall_48

    throw v0
.end method

.method private static greylist-max-o getLocaleDisplayName(Ljava/util/Locale;Ljava/util/Locale;Landroid/icu/text/DisplayContext;)Ljava/lang/String;
    .registers 5

    .line 782
    if-nez p1, :cond_5

    .line 783
    const-string p0, ""

    return-object p0

    .line 786
    :cond_5
    if-eqz p0, :cond_8

    goto :goto_c

    :cond_8
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    .line 787
    :goto_c
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/icu/text/DisplayContext;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 788
    invoke-static {p0, v0}, Landroid/icu/text/LocaleDisplayNames;->getInstance(Ljava/util/Locale;[Landroid/icu/text/DisplayContext;)Landroid/icu/text/LocaleDisplayNames;

    move-result-object p0

    .line 789
    invoke-virtual {p0, p1}, Landroid/icu/text/LocaleDisplayNames;->localeDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 787
    return-object p0
.end method

.method private static greylist-max-o getLocaleFromContext(Landroid/content/Context;)Ljava/util/Locale;
    .registers 3

    .line 758
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 759
    return-object v0

    .line 761
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-nez v1, :cond_b

    .line 762
    return-object v0

    .line 764
    :cond_b
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    .line 765
    if-nez p0, :cond_16

    .line 766
    return-object v0

    .line 768
    :cond_16
    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p0

    return-object p0
.end method

.method private static greylist-max-o hashCodeInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)I
    .registers 12

    .line 935
    nop

    .line 936
    if-nez p5, :cond_14

    .line 937
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    .line 938
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    filled-new-array {p0, p1, p2, p3, p4}, [Ljava/lang/Object;

    move-result-object p0

    .line 937
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0

    .line 940
    :cond_14
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 941
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object p0

    .line 940
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static blacklist sort(Landroid/view/inputmethod/InputMethodInfo;Ljava/util/List;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/inputmethod/InputMethodInfo;",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation

    .line 953
    if-nez p0, :cond_3

    return-object p1

    .line 954
    :cond_3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 956
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 957
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v1

    .line 958
    const/4 v2, 0x0

    :goto_12
    if-ge v2, v1, :cond_27

    .line 959
    invoke-virtual {p0, v2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v3

    .line 960
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 961
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 962
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 958
    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 967
    :cond_27
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodSubtype;

    .line 968
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 969
    goto :goto_2b

    .line 970
    :cond_3b
    return-object p1
.end method


# virtual methods
.method public whitelist containsExtraValueKey(Ljava/lang/String;)Z
    .registers 3

    .line 823
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodSubtype;->getExtraValueHashMap()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 879
    const/4 v0, 0x0

    return v0
.end method

.method blacklist dump(Landroid/util/Printer;Ljava/lang/String;)V
    .registers 4

    .line 903
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "mSubtypeNameOverride="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeNameOverride:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " mLayoutLabelNonLocalized="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mLayoutLabelNonLocalized:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " mPkLanguageTag="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mPkLanguageTag:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " mPkLayoutType="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mPkLayoutType:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " mSubtypeId="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeId:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " mSubtypeLocale="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeLocale:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " mSubtypeLanguageTag="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeLanguageTag:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " mSubtypeMode="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeMode:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " mIsAuxiliary="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mIsAuxiliary:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " mOverridesImplicitlyEnabledSubtype="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mOverridesImplicitlyEnabledSubtype:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " mIsAsciiCapable="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mIsAsciiCapable:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " mSubtypeHashCode="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeHashCode:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 915
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 859
    instance-of v0, p1, Landroid/view/inputmethod/InputMethodSubtype;

    const/4 v1, 0x0

    if-eqz v0, :cond_81

    .line 860
    check-cast p1, Landroid/view/inputmethod/InputMethodSubtype;

    .line 861
    iget v0, p1, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeId:I

    const/4 v2, 0x1

    if-nez v0, :cond_75

    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeId:I

    if-eqz v0, :cond_11

    goto :goto_75

    .line 864
    :cond_11
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v3

    if-ne v0, v3, :cond_73

    .line 865
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 866
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodSubtype;->getLanguageTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodSubtype;->getLanguageTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 867
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 868
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodSubtype;->getExtraValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodSubtype;->getExtraValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 869
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v0

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v3

    if-ne v0, v3, :cond_73

    .line 870
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result v0

    .line 871
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result v3

    if-ne v0, v3, :cond_73

    .line 872
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodSubtype;->isAsciiCapable()Z

    move-result p1

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodSubtype;->isAsciiCapable()Z

    move-result v0

    if-ne p1, v0, :cond_73

    move v1, v2

    goto :goto_74

    :cond_73
    nop

    .line 864
    :goto_74
    return v1

    .line 862
    :cond_75
    :goto_75
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v0

    if-ne p1, v0, :cond_80

    move v1, v2

    :cond_80
    return v1

    .line 874
    :cond_81
    return v1
.end method

.method public blacklist getCanonicalizedLanguageTag()Ljava/lang/String;
    .registers 3

    .line 575
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mCachedCanonicalizedLanguageTag:Ljava/lang/String;

    .line 576
    if-eqz v0, :cond_5

    .line 577
    return-object v0

    .line 580
    :cond_5
    nop

    .line 581
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodSubtype;->getLocaleObject()Ljava/util/Locale;

    move-result-object v0

    .line 582
    if-eqz v0, :cond_23

    .line 583
    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    .line 584
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 585
    invoke-static {v0}, Landroid/icu/util/ULocale;->forLanguageTag(Ljava/lang/String;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/util/ULocale;->createCanonical(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/util/ULocale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    goto :goto_24

    .line 588
    :cond_23
    const/4 v0, 0x0

    :goto_24
    invoke-static {v0}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 589
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mCachedCanonicalizedLanguageTag:Ljava/lang/String;

    .line 590
    return-object v0
.end method

.method public whitelist getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    .registers 7

    .line 681
    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeNameResId:I

    if-nez v0, :cond_1f

    .line 682
    iget-object p2, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeNameOverride:Ljava/lang/CharSequence;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1c

    .line 683
    nop

    .line 684
    invoke-static {p1}, Landroid/view/inputmethod/InputMethodSubtype;->getLocaleFromContext(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodSubtype;->getLocaleObject()Ljava/util/Locale;

    move-result-object p2

    sget-object p3, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_UI_LIST_OR_MENU:Landroid/icu/text/DisplayContext;

    .line 683
    invoke-static {p1, p2, p3}, Landroid/view/inputmethod/InputMethodSubtype;->getLocaleDisplayName(Ljava/util/Locale;Ljava/util/Locale;Landroid/icu/text/DisplayContext;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1e

    .line 686
    :cond_1c
    iget-object p1, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeNameOverride:Ljava/lang/CharSequence;

    .line 682
    :goto_1e
    return-object p1

    .line 689
    :cond_1f
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget v1, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeNameResId:I

    invoke-virtual {v0, p2, v1, p3}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p2

    .line 691
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    const-string v0, ""

    if-eqz p3, :cond_32

    .line 692
    return-object v0

    .line 694
    :cond_32
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    .line 696
    const-string v1, "UntranslatableReplacementStringInSubtypeName"

    invoke-virtual {p0, v1}, Landroid/view/inputmethod/InputMethodSubtype;->containsExtraValueKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 697
    invoke-virtual {p0, v1}, Landroid/view/inputmethod/InputMethodSubtype;->getExtraValueOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_65

    .line 701
    :cond_43
    const-string v1, "%s"

    invoke-static {p3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 702
    sget-object v1, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_UI_LIST_OR_MENU:Landroid/icu/text/DisplayContext;

    goto :goto_59

    .line 703
    :cond_4e
    invoke-virtual {p3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_57

    .line 704
    sget-object v1, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE:Landroid/icu/text/DisplayContext;

    goto :goto_59

    .line 706
    :cond_57
    sget-object v1, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_MIDDLE_OF_SENTENCE:Landroid/icu/text/DisplayContext;

    .line 708
    :goto_59
    invoke-static {p1}, Landroid/view/inputmethod/InputMethodSubtype;->getLocaleFromContext(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object p1

    .line 709
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodSubtype;->getLocaleObject()Ljava/util/Locale;

    move-result-object v2

    .line 708
    invoke-static {p1, v2, v1}, Landroid/view/inputmethod/InputMethodSubtype;->getLocaleDisplayName(Ljava/util/Locale;Ljava/util/Locale;Landroid/icu/text/DisplayContext;)Ljava/lang/String;

    move-result-object p1

    .line 711
    :goto_65
    if-nez p1, :cond_68

    .line 712
    move-object p1, v0

    .line 715
    :cond_68
    :try_start_68
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_70
    .catch Ljava/util/IllegalFormatException; {:try_start_68 .. :try_end_70} :catch_71

    return-object p1

    .line 716
    :catch_71
    move-exception p1

    .line 717
    sget-object p3, Landroid/view/inputmethod/InputMethodSubtype;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found illegal format in subtype name("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, "): "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    return-object v0
.end method

.method public whitelist getExtraValue()Ljava/lang/String;
    .registers 2

    .line 625
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeExtraValue:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getExtraValueOf(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 833
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodSubtype;->getExtraValueHashMap()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public whitelist getIconResId()I
    .registers 2

    .line 511
    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeIconResId:I

    return v0
.end method

.method public whitelist getLanguageTag()Ljava/lang/String;
    .registers 2

    .line 534
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeLanguageTag:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getLayoutDisplayName(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    .registers 5

    .line 742
    const-string v0, "context cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 743
    const-string v0, "imeAppInfo cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 744
    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mLayoutLabelResId:I

    if-nez v0, :cond_11

    .line 745
    iget-object p1, p0, Landroid/view/inputmethod/InputMethodSubtype;->mLayoutLabelNonLocalized:Ljava/lang/CharSequence;

    return-object p1

    .line 748
    :cond_11
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object v0, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v1, p0, Landroid/view/inputmethod/InputMethodSubtype;->mLayoutLabelResId:I

    invoke-virtual {p1, v0, v1, p2}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 750
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_26

    .line 751
    const-string p1, ""

    return-object p1

    .line 753
    :cond_26
    return-object p1
.end method

.method public whitelist getLayoutLabelNonLocalized()Ljava/lang/CharSequence;
    .registers 2

    .line 482
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mLayoutLabelNonLocalized:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getLayoutLabelResource()I
    .registers 2

    .line 474
    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mLayoutLabelResId:I

    return v0
.end method

.method public whitelist getLocale()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 523
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeLocale:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getLocaleObject()Ljava/util/Locale;
    .registers 3

    .line 546
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mCachedLocaleObj:Ljava/util/Locale;

    if-eqz v0, :cond_7

    .line 547
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mCachedLocaleObj:Ljava/util/Locale;

    return-object v0

    .line 549
    :cond_7
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 550
    :try_start_a
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodSubtype;->mCachedLocaleObj:Ljava/util/Locale;

    if-eqz v1, :cond_12

    .line 551
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodSubtype;->mCachedLocaleObj:Ljava/util/Locale;

    monitor-exit v0

    return-object v1

    .line 553
    :cond_12
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeLanguageTag:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 554
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeLanguageTag:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    iput-object v1, p0, Landroid/view/inputmethod/InputMethodSubtype;->mCachedLocaleObj:Ljava/util/Locale;

    goto :goto_2b

    .line 556
    :cond_23
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeLocale:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/inputmethod/SubtypeLocaleUtils;->constructLocaleFromString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    iput-object v1, p0, Landroid/view/inputmethod/InputMethodSubtype;->mCachedLocaleObj:Ljava/util/Locale;

    .line 558
    :goto_2b
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodSubtype;->mCachedLocaleObj:Ljava/util/Locale;

    monitor-exit v0

    return-object v1

    .line 559
    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_a .. :try_end_31} :catchall_2f

    throw v1
.end method

.method public whitelist getMode()Ljava/lang/String;
    .registers 2

    .line 618
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeMode:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getNameOverride()Ljava/lang/CharSequence;
    .registers 2

    .line 466
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeNameOverride:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getNameResId()I
    .registers 2

    .line 458
    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeNameResId:I

    return v0
.end method

.method public whitelist getPhysicalKeyboardHintLanguageTag()Landroid/icu/util/ULocale;
    .registers 2

    .line 493
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mPkLanguageTag:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    goto :goto_10

    :cond_a
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mPkLanguageTag:Ljava/lang/String;

    invoke-static {v0}, Landroid/icu/util/ULocale;->forLanguageTag(Ljava/lang/String;)Landroid/icu/util/ULocale;

    move-result-object v0

    :goto_10
    return-object v0
.end method

.method public whitelist getPhysicalKeyboardHintLayoutType()Ljava/lang/String;
    .registers 2

    .line 504
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mPkLayoutType:Ljava/lang/String;

    return-object v0
.end method

.method public final greylist-max-o getSubtypeId()I
    .registers 2

    .line 854
    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeId:I

    return v0
.end method

.method public final greylist-max-o hasSubtypeId()Z
    .registers 2

    .line 846
    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeId:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 838
    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeHashCode:I

    return v0
.end method

.method public whitelist isAsciiCapable()Z
    .registers 2

    .line 658
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mIsAsciiCapable:Z

    return v0
.end method

.method public whitelist isAuxiliary()Z
    .registers 2

    .line 639
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mIsAuxiliary:Z

    return v0
.end method

.method public blacklist isSuitableForPhysicalKeyboardLayoutMapping()Z
    .registers 4

    .line 605
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 606
    return v1

    .line 608
    :cond_8
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v0

    const-string v2, "keyboard"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 609
    return v1

    .line 611
    :cond_15
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public whitelist overridesImplicitlyEnabledSubtype()Z
    .registers 2

    .line 649
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mOverridesImplicitlyEnabledSubtype:Z

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 884
    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeNameResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 885
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeNameOverride:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 886
    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mLayoutLabelResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 887
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mLayoutLabelNonLocalized:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 888
    iget-object p2, p0, Landroid/view/inputmethod/InputMethodSubtype;->mPkLanguageTag:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 889
    iget-object p2, p0, Landroid/view/inputmethod/InputMethodSubtype;->mPkLayoutType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 890
    iget p2, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeIconResId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 891
    iget-object p2, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeLocale:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 892
    iget-object p2, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeLanguageTag:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 893
    iget-object p2, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeMode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 894
    iget-object p2, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeExtraValue:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 895
    iget-boolean p2, p0, Landroid/view/inputmethod/InputMethodSubtype;->mIsAuxiliary:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 896
    iget-boolean p2, p0, Landroid/view/inputmethod/InputMethodSubtype;->mOverridesImplicitlyEnabledSubtype:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 897
    iget p2, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeHashCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 898
    iget p2, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 899
    iget-boolean p2, p0, Landroid/view/inputmethod/InputMethodSubtype;->mIsAsciiCapable:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 900
    return-void
.end method
