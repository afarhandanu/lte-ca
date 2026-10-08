.class public Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;
.super Ljava/lang/Object;
.source "InputMethodSubtype.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/InputMethodSubtype;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputMethodSubtypeBuilder"
.end annotation


# instance fields
.field private greylist-max-o mIsAsciiCapable:Z

.field private greylist-max-o mIsAuxiliary:Z

.field private blacklist mLayoutLabelNonLocalized:Ljava/lang/CharSequence;

.field private blacklist mLayoutLabelResId:I

.field private greylist-max-o mOverridesImplicitlyEnabledSubtype:Z

.field private blacklist mPkLanguageTag:Ljava/lang/String;

.field private blacklist mPkLayoutType:Ljava/lang/String;

.field private greylist-max-o mSubtypeExtraValue:Ljava/lang/String;

.field private greylist-max-o mSubtypeIconResId:I

.field private greylist-max-o mSubtypeId:I

.field private greylist-max-o mSubtypeLanguageTag:Ljava/lang/String;

.field private greylist-max-o mSubtypeLocale:Ljava/lang/String;

.field private greylist-max-o mSubtypeMode:Ljava/lang/String;

.field private blacklist mSubtypeNameOverride:Ljava/lang/CharSequence;

.field private greylist-max-o mSubtypeNameResId:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmIsAsciiCapable(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mIsAsciiCapable:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsAuxiliary(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mIsAuxiliary:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLayoutLabelNonLocalized(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mLayoutLabelNonLocalized:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLayoutLabelResId(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)I
    .registers 1

    iget p0, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mLayoutLabelResId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOverridesImplicitlyEnabledSubtype(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mOverridesImplicitlyEnabledSubtype:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPkLanguageTag(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mPkLanguageTag:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPkLayoutType(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mPkLayoutType:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSubtypeExtraValue(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mSubtypeExtraValue:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSubtypeIconResId(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)I
    .registers 1

    iget p0, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mSubtypeIconResId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSubtypeId(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)I
    .registers 1

    iget p0, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mSubtypeId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSubtypeLanguageTag(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mSubtypeLanguageTag:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSubtypeLocale(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mSubtypeLocale:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSubtypeMode(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mSubtypeMode:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSubtypeNameOverride(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mSubtypeNameOverride:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSubtypeNameResId(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)I
    .registers 1

    iget p0, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mSubtypeNameResId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsAsciiCapable(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mIsAsciiCapable:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsAuxiliary(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mIsAuxiliary:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmOverridesImplicitlyEnabledSubtype(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mOverridesImplicitlyEnabledSubtype:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSubtypeExtraValue(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mSubtypeExtraValue:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSubtypeIconResId(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;I)V
    .registers 2

    iput p1, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mSubtypeIconResId:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSubtypeId(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;I)V
    .registers 2

    iput p1, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mSubtypeId:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSubtypeLocale(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mSubtypeLocale:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSubtypeMode(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mSubtypeMode:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSubtypeNameResId(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;I)V
    .registers 2

    iput p1, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mSubtypeNameResId:I

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 3

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mIsAuxiliary:Z

    .line 156
    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mOverridesImplicitlyEnabledSubtype:Z

    .line 168
    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mIsAsciiCapable:Z

    .line 177
    iput v0, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mSubtypeIconResId:I

    .line 190
    iput v0, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mSubtypeNameResId:I

    .line 206
    const-string v1, ""

    iput-object v1, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mSubtypeNameOverride:Ljava/lang/CharSequence;

    .line 223
    iput v0, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mLayoutLabelResId:I

    .line 243
    iput-object v1, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mLayoutLabelNonLocalized:Ljava/lang/CharSequence;

    .line 267
    iput-object v1, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mPkLanguageTag:Ljava/lang/String;

    .line 268
    iput-object v1, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mPkLayoutType:Ljava/lang/String;

    .line 281
    iput v0, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mSubtypeId:I

    .line 290
    iput-object v1, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mSubtypeLocale:Ljava/lang/String;

    .line 299
    iput-object v1, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mSubtypeLanguageTag:Ljava/lang/String;

    .line 308
    iput-object v1, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mSubtypeMode:Ljava/lang/String;

    .line 318
    iput-object v1, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mSubtypeExtraValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/view/inputmethod/InputMethodSubtype;
    .registers 3

    .line 324
    new-instance v0, Landroid/view/inputmethod/InputMethodSubtype;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/inputmethod/InputMethodSubtype;-><init>(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;Landroid/view/inputmethod/InputMethodSubtype-IA;)V

    return-object v0
.end method

.method public whitelist setIsAsciiCapable(Z)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;
    .registers 2

    .line 165
    iput-boolean p1, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mIsAsciiCapable:Z

    .line 166
    return-object p0
.end method

.method public whitelist setIsAuxiliary(Z)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;
    .registers 2

    .line 139
    iput-boolean p1, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mIsAuxiliary:Z

    .line 140
    return-object p0
.end method

.method public whitelist setLanguageTag(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;
    .registers 2

    .line 296
    if-nez p1, :cond_4

    const-string p1, ""

    :cond_4
    iput-object p1, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mSubtypeLanguageTag:Ljava/lang/String;

    .line 297
    return-object p0
.end method

.method public whitelist setLayoutLabelNonLocalized(Ljava/lang/CharSequence;)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;
    .registers 3

    .line 237
    const-string v0, "layoutLabelNonLocalized cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 239
    iput-object p1, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mLayoutLabelNonLocalized:Ljava/lang/CharSequence;

    .line 240
    return-object p0
.end method

.method public whitelist setLayoutLabelResource(I)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;
    .registers 2

    .line 219
    iput p1, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mLayoutLabelResId:I

    .line 220
    return-object p0
.end method

.method public whitelist setOverridesImplicitlyEnabledSubtype(Z)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;
    .registers 2

    .line 153
    iput-boolean p1, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mOverridesImplicitlyEnabledSubtype:Z

    .line 154
    return-object p0
.end method

.method public whitelist setPhysicalKeyboardHint(Landroid/icu/util/ULocale;Ljava/lang/String;)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;
    .registers 4

    .line 262
    const-string v0, "layoutType cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 263
    if-nez p1, :cond_a

    const-string p1, ""

    goto :goto_e

    :cond_a
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->toLanguageTag()Ljava/lang/String;

    move-result-object p1

    :goto_e
    iput-object p1, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mPkLanguageTag:Ljava/lang/String;

    .line 264
    iput-object p2, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mPkLayoutType:Ljava/lang/String;

    .line 265
    return-object p0
.end method

.method public whitelist setSubtypeExtraValue(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;
    .registers 2

    .line 315
    if-nez p1, :cond_4

    const-string p1, ""

    :cond_4
    iput-object p1, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mSubtypeExtraValue:Ljava/lang/String;

    .line 316
    return-object p0
.end method

.method public whitelist setSubtypeIconResId(I)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;
    .registers 2

    .line 174
    iput p1, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mSubtypeIconResId:I

    .line 175
    return-object p0
.end method

.method public whitelist setSubtypeId(I)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;
    .registers 2

    .line 278
    iput p1, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mSubtypeId:I

    .line 279
    return-object p0
.end method

.method public whitelist setSubtypeLocale(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;
    .registers 2

    .line 287
    if-nez p1, :cond_4

    const-string p1, ""

    :cond_4
    iput-object p1, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mSubtypeLocale:Ljava/lang/String;

    .line 288
    return-object p0
.end method

.method public whitelist setSubtypeMode(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;
    .registers 2

    .line 305
    if-nez p1, :cond_4

    const-string p1, ""

    :cond_4
    iput-object p1, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mSubtypeMode:Ljava/lang/String;

    .line 306
    return-object p0
.end method

.method public whitelist setSubtypeNameOverride(Ljava/lang/CharSequence;)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;
    .registers 2

    .line 202
    iput-object p1, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mSubtypeNameOverride:Ljava/lang/CharSequence;

    .line 203
    return-object p0
.end method

.method public whitelist setSubtypeNameResId(I)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;
    .registers 2

    .line 186
    iput p1, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mSubtypeNameResId:I

    .line 187
    return-object p0
.end method
