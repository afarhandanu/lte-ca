.class public Landroid/text/style/TextAppearanceSpan;
.super Landroid/text/style/MetricAffectingSpan;
.source "TextAppearanceSpan.java"

# interfaces
.implements Landroid/text/ParcelableSpan;


# instance fields
.field private final blacklist mElegantTextHeight:Z

.field private final greylist-max-o mFamilyName:Ljava/lang/String;

.field private final blacklist mFontFeatureSettings:Ljava/lang/String;

.field private final blacklist mFontVariationSettings:Ljava/lang/String;

.field private final blacklist mHasElegantTextHeight:Z

.field private final blacklist mHasLetterSpacing:Z

.field private final blacklist mLetterSpacing:F

.field private final blacklist mShadowColor:I

.field private final blacklist mShadowDx:F

.field private final blacklist mShadowDy:F

.field private final blacklist mShadowRadius:F

.field private final greylist-max-o mStyle:I

.field private final greylist-max-o mTextColor:Landroid/content/res/ColorStateList;

.field private final greylist-max-o mTextColorLink:Landroid/content/res/ColorStateList;

.field private final blacklist mTextFontWeight:I

.field private final blacklist mTextLocales:Landroid/os/LocaleList;

.field private final greylist-max-o mTextSize:I

.field private final greylist-max-o mTypeface:Landroid/graphics/Typeface;


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;I)V
    .registers 4

    .line 92
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;II)V

    .line 93
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;II)V
    .registers 10

    .line 103
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 106
    sget-object v0, Lcom/android/internal/R$styleable;->TextAppearance:[I

    .line 107
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 110
    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 112
    const/4 v1, 0x6

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/text/style/TextAppearanceSpan;->mTextColorLink:Landroid/content/res/ColorStateList;

    .line 114
    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Landroid/text/style/TextAppearanceSpan;->mTextSize:I

    .line 117
    const/4 v3, 0x2

    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroid/text/style/TextAppearanceSpan;->mStyle:I

    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->isRestricted()Z

    move-result v3

    const/16 v4, 0xc

    const/4 v5, 0x0

    if-nez v3, :cond_3a

    invoke-virtual {p1}, Landroid/content/Context;->canLoadUnsafeResources()Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 119
    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->getFont(I)Landroid/graphics/Typeface;

    move-result-object v3

    iput-object v3, p0, Landroid/text/style/TextAppearanceSpan;->mTypeface:Landroid/graphics/Typeface;

    goto :goto_3c

    .line 121
    :cond_3a
    iput-object v5, p0, Landroid/text/style/TextAppearanceSpan;->mTypeface:Landroid/graphics/Typeface;

    .line 123
    :goto_3c
    iget-object v3, p0, Landroid/text/style/TextAppearanceSpan;->mTypeface:Landroid/graphics/Typeface;

    if-eqz v3, :cond_43

    .line 124
    iput-object v5, p0, Landroid/text/style/TextAppearanceSpan;->mFamilyName:Ljava/lang/String;

    goto :goto_69

    .line 126
    :cond_43
    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 127
    if-eqz v3, :cond_4c

    .line 128
    iput-object v3, p0, Landroid/text/style/TextAppearanceSpan;->mFamilyName:Ljava/lang/String;

    goto :goto_69

    .line 130
    :cond_4c
    const/4 v3, 0x1

    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 132
    packed-switch v3, :pswitch_data_f0

    .line 146
    iput-object v5, p0, Landroid/text/style/TextAppearanceSpan;->mFamilyName:Ljava/lang/String;

    goto :goto_69

    .line 142
    :pswitch_57
    const-string/jumbo v3, "monospace"

    iput-object v3, p0, Landroid/text/style/TextAppearanceSpan;->mFamilyName:Ljava/lang/String;

    .line 143
    goto :goto_69

    .line 138
    :pswitch_5d
    const-string/jumbo v3, "serif"

    iput-object v3, p0, Landroid/text/style/TextAppearanceSpan;->mFamilyName:Ljava/lang/String;

    .line 139
    goto :goto_69

    .line 134
    :pswitch_63
    const-string/jumbo v3, "sans"

    iput-object v3, p0, Landroid/text/style/TextAppearanceSpan;->mFamilyName:Ljava/lang/String;

    .line 135
    nop

    .line 152
    :goto_69
    const/16 v3, 0x12

    invoke-virtual {p2, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroid/text/style/TextAppearanceSpan;->mTextFontWeight:I

    .line 155
    const/16 v2, 0x13

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 157
    if-eqz v2, :cond_89

    .line 158
    invoke-static {v2}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v2

    .line 159
    invoke-virtual {v2}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_86

    .line 160
    iput-object v2, p0, Landroid/text/style/TextAppearanceSpan;->mTextLocales:Landroid/os/LocaleList;

    goto :goto_88

    .line 162
    :cond_86
    iput-object v5, p0, Landroid/text/style/TextAppearanceSpan;->mTextLocales:Landroid/os/LocaleList;

    .line 164
    :goto_88
    goto :goto_8b

    .line 165
    :cond_89
    iput-object v5, p0, Landroid/text/style/TextAppearanceSpan;->mTextLocales:Landroid/os/LocaleList;

    .line 168
    :goto_8b
    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Landroid/text/style/TextAppearanceSpan;->mShadowRadius:F

    .line 170
    const/16 v2, 0x8

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Landroid/text/style/TextAppearanceSpan;->mShadowDx:F

    .line 172
    const/16 v2, 0x9

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Landroid/text/style/TextAppearanceSpan;->mShadowDy:F

    .line 174
    const/4 v2, 0x7

    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroid/text/style/TextAppearanceSpan;->mShadowColor:I

    .line 177
    const/16 v2, 0xd

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    iput-boolean v4, p0, Landroid/text/style/TextAppearanceSpan;->mHasElegantTextHeight:Z

    .line 179
    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/text/style/TextAppearanceSpan;->mElegantTextHeight:Z

    .line 182
    const/16 v1, 0xe

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    iput-boolean v2, p0, Landroid/text/style/TextAppearanceSpan;->mHasLetterSpacing:Z

    .line 184
    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroid/text/style/TextAppearanceSpan;->mLetterSpacing:F

    .line 187
    const/16 v1, 0xf

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/text/style/TextAppearanceSpan;->mFontFeatureSettings:Ljava/lang/String;

    .line 190
    const/16 v1, 0x10

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/text/style/TextAppearanceSpan;->mFontVariationSettings:Ljava/lang/String;

    .line 193
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 195
    if-ltz p3, :cond_ec

    .line 196
    const p2, 0x1030005

    sget-object v0, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 199
    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 200
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 203
    :cond_ec
    iput-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColor:Landroid/content/res/ColorStateList;

    .line 204
    return-void

    nop

    :pswitch_data_f0
    .packed-switch 0x1
        :pswitch_63
        :pswitch_5d
        :pswitch_57
    .end packed-switch
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .registers 21

    .line 237
    move-object/from16 v0, p1

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 238
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 239
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 240
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1e

    .line 241
    sget-object v4, Landroid/content/res/ColorStateList;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/res/ColorStateList;

    goto :goto_1f

    :cond_1e
    move-object v4, v5

    .line 242
    :goto_1f
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2e

    .line 243
    sget-object v5, Landroid/content/res/ColorStateList;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/res/ColorStateList;

    goto :goto_2f

    :cond_2e
    nop

    .line 244
    :goto_2f
    invoke-static {v0}, Landroid/graphics/LeakyTypefaceStorage;->readTypefaceFromParcel(Landroid/os/Parcel;)Landroid/graphics/Typeface;

    move-result-object v6

    .line 245
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v7

    const-class v8, Landroid/os/LocaleList;

    .line 247
    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    const-class v9, Landroid/os/LocaleList;

    invoke-virtual {v0, v8, v9}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/LocaleList;

    .line 248
    invoke-virtual {v0}, Landroid/os/Parcel;->readFloat()F

    move-result v9

    .line 249
    invoke-virtual {v0}, Landroid/os/Parcel;->readFloat()F

    move-result v10

    .line 250
    invoke-virtual {v0}, Landroid/os/Parcel;->readFloat()F

    move-result v11

    .line 251
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 252
    invoke-virtual {v0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v13

    .line 253
    invoke-virtual {v0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v14

    .line 254
    invoke-virtual {v0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v15

    .line 255
    invoke-virtual {v0}, Landroid/os/Parcel;->readFloat()F

    move-result v16

    .line 256
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 257
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 237
    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v18}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Landroid/graphics/Typeface;ILandroid/os/LocaleList;FFFIZZZFLjava/lang/String;Ljava/lang/String;)V

    .line 258
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V
    .registers 6

    .line 211
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 212
    iput-object p1, p0, Landroid/text/style/TextAppearanceSpan;->mFamilyName:Ljava/lang/String;

    .line 213
    iput p2, p0, Landroid/text/style/TextAppearanceSpan;->mStyle:I

    .line 214
    iput p3, p0, Landroid/text/style/TextAppearanceSpan;->mTextSize:I

    .line 215
    iput-object p4, p0, Landroid/text/style/TextAppearanceSpan;->mTextColor:Landroid/content/res/ColorStateList;

    .line 216
    iput-object p5, p0, Landroid/text/style/TextAppearanceSpan;->mTextColorLink:Landroid/content/res/ColorStateList;

    .line 217
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/text/style/TextAppearanceSpan;->mTypeface:Landroid/graphics/Typeface;

    .line 219
    const/4 p2, -0x1

    iput p2, p0, Landroid/text/style/TextAppearanceSpan;->mTextFontWeight:I

    .line 220
    iput-object p1, p0, Landroid/text/style/TextAppearanceSpan;->mTextLocales:Landroid/os/LocaleList;

    .line 222
    const/4 p2, 0x0

    iput p2, p0, Landroid/text/style/TextAppearanceSpan;->mShadowRadius:F

    .line 223
    iput p2, p0, Landroid/text/style/TextAppearanceSpan;->mShadowDx:F

    .line 224
    iput p2, p0, Landroid/text/style/TextAppearanceSpan;->mShadowDy:F

    .line 225
    const/4 p3, 0x0

    iput p3, p0, Landroid/text/style/TextAppearanceSpan;->mShadowColor:I

    .line 227
    iput-boolean p3, p0, Landroid/text/style/TextAppearanceSpan;->mHasElegantTextHeight:Z

    .line 228
    iput-boolean p3, p0, Landroid/text/style/TextAppearanceSpan;->mElegantTextHeight:Z

    .line 229
    iput-boolean p3, p0, Landroid/text/style/TextAppearanceSpan;->mHasLetterSpacing:Z

    .line 230
    iput p2, p0, Landroid/text/style/TextAppearanceSpan;->mLetterSpacing:F

    .line 232
    iput-object p1, p0, Landroid/text/style/TextAppearanceSpan;->mFontFeatureSettings:Ljava/lang/String;

    .line 233
    iput-object p1, p0, Landroid/text/style/TextAppearanceSpan;->mFontVariationSettings:Ljava/lang/String;

    .line 234
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Landroid/graphics/Typeface;ILandroid/os/LocaleList;FFFIZZZFLjava/lang/String;Ljava/lang/String;)V
    .registers 19

    .line 267
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 268
    iput-object p1, p0, Landroid/text/style/TextAppearanceSpan;->mFamilyName:Ljava/lang/String;

    .line 269
    iput p2, p0, Landroid/text/style/TextAppearanceSpan;->mStyle:I

    .line 270
    iput p3, p0, Landroid/text/style/TextAppearanceSpan;->mTextSize:I

    .line 271
    iput-object p4, p0, Landroid/text/style/TextAppearanceSpan;->mTextColor:Landroid/content/res/ColorStateList;

    .line 272
    iput-object p5, p0, Landroid/text/style/TextAppearanceSpan;->mTextColorLink:Landroid/content/res/ColorStateList;

    .line 273
    iput-object p6, p0, Landroid/text/style/TextAppearanceSpan;->mTypeface:Landroid/graphics/Typeface;

    .line 275
    iput p7, p0, Landroid/text/style/TextAppearanceSpan;->mTextFontWeight:I

    .line 276
    iput-object p8, p0, Landroid/text/style/TextAppearanceSpan;->mTextLocales:Landroid/os/LocaleList;

    .line 278
    iput p9, p0, Landroid/text/style/TextAppearanceSpan;->mShadowRadius:F

    .line 279
    iput p10, p0, Landroid/text/style/TextAppearanceSpan;->mShadowDx:F

    .line 280
    iput p11, p0, Landroid/text/style/TextAppearanceSpan;->mShadowDy:F

    .line 281
    iput p12, p0, Landroid/text/style/TextAppearanceSpan;->mShadowColor:I

    .line 283
    iput-boolean p13, p0, Landroid/text/style/TextAppearanceSpan;->mHasElegantTextHeight:Z

    .line 284
    iput-boolean p14, p0, Landroid/text/style/TextAppearanceSpan;->mElegantTextHeight:Z

    .line 285
    iput-boolean p15, p0, Landroid/text/style/TextAppearanceSpan;->mHasLetterSpacing:Z

    .line 286
    move/from16 p1, p16

    iput p1, p0, Landroid/text/style/TextAppearanceSpan;->mLetterSpacing:F

    .line 288
    move-object/from16 p1, p17

    iput-object p1, p0, Landroid/text/style/TextAppearanceSpan;->mFontFeatureSettings:Ljava/lang/String;

    .line 289
    move-object/from16 p1, p18

    iput-object p1, p0, Landroid/text/style/TextAppearanceSpan;->mFontVariationSettings:Ljava/lang/String;

    .line 290
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 302
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getFamily()Ljava/lang/String;
    .registers 2

    .line 350
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mFamilyName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getFontFeatureSettings()Ljava/lang/String;
    .registers 2

    .line 449
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mFontFeatureSettings:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getFontVariationSettings()Ljava/lang/String;
    .registers 2

    .line 458
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mFontVariationSettings:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getLetterSpacing()F
    .registers 2

    .line 474
    iget v0, p0, Landroid/text/style/TextAppearanceSpan;->mLetterSpacing:F

    return v0
.end method

.method public whitelist getLinkTextColor()Landroid/content/res/ColorStateList;
    .registers 2

    .line 366
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColorLink:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public whitelist getShadowColor()I
    .registers 2

    .line 416
    iget v0, p0, Landroid/text/style/TextAppearanceSpan;->mShadowColor:I

    return v0
.end method

.method public whitelist getShadowDx()F
    .registers 2

    .line 424
    iget v0, p0, Landroid/text/style/TextAppearanceSpan;->mShadowDx:F

    return v0
.end method

.method public whitelist getShadowDy()F
    .registers 2

    .line 432
    iget v0, p0, Landroid/text/style/TextAppearanceSpan;->mShadowDy:F

    return v0
.end method

.method public whitelist getShadowRadius()F
    .registers 2

    .line 440
    iget v0, p0, Landroid/text/style/TextAppearanceSpan;->mShadowRadius:F

    return v0
.end method

.method public whitelist getSpanTypeId()I
    .registers 2

    .line 293
    invoke-virtual {p0}, Landroid/text/style/TextAppearanceSpan;->getSpanTypeIdInternal()I

    move-result v0

    return v0
.end method

.method public greylist-max-o getSpanTypeIdInternal()I
    .registers 2

    .line 298
    const/16 v0, 0x11

    return v0
.end method

.method public whitelist getTextColor()Landroid/content/res/ColorStateList;
    .registers 2

    .line 358
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public whitelist getTextFontWeight()I
    .registers 2

    .line 390
    iget v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextFontWeight:I

    return v0
.end method

.method public whitelist getTextLocales()Landroid/os/LocaleList;
    .registers 2

    .line 399
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextLocales:Landroid/os/LocaleList;

    return-object v0
.end method

.method public whitelist getTextSize()I
    .registers 2

    .line 374
    iget v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextSize:I

    return v0
.end method

.method public whitelist getTextStyle()I
    .registers 2

    .line 382
    iget v0, p0, Landroid/text/style/TextAppearanceSpan;->mStyle:I

    return v0
.end method

.method public whitelist getTypeface()Landroid/graphics/Typeface;
    .registers 2

    .line 408
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public blacklist hasElegantTextHeight()Z
    .registers 2

    .line 594
    iget-boolean v0, p0, Landroid/text/style/TextAppearanceSpan;->mHasElegantTextHeight:Z

    return v0
.end method

.method public blacklist hasLetterSpacing()Z
    .registers 2

    .line 599
    iget-boolean v0, p0, Landroid/text/style/TextAppearanceSpan;->mHasLetterSpacing:Z

    return v0
.end method

.method public whitelist isElegantTextHeight()Z
    .registers 2

    .line 466
    iget-boolean v0, p0, Landroid/text/style/TextAppearanceSpan;->mElegantTextHeight:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 572
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TextAppearanceSpan{familyName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 573
    invoke-virtual {p0}, Landroid/text/style/TextAppearanceSpan;->getFamily()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", style="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 574
    invoke-virtual {p0}, Landroid/text/style/TextAppearanceSpan;->getTextStyle()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", textSize="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 575
    invoke-virtual {p0}, Landroid/text/style/TextAppearanceSpan;->getTextSize()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", textColor="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 576
    invoke-virtual {p0}, Landroid/text/style/TextAppearanceSpan;->getTextColor()Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", textColorLink="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 577
    invoke-virtual {p0}, Landroid/text/style/TextAppearanceSpan;->getLinkTextColor()Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", typeface="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 578
    invoke-virtual {p0}, Landroid/text/style/TextAppearanceSpan;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", textFontWeight="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 579
    invoke-virtual {p0}, Landroid/text/style/TextAppearanceSpan;->getTextFontWeight()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", textLocales="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 580
    invoke-virtual {p0}, Landroid/text/style/TextAppearanceSpan;->getTextLocales()Landroid/os/LocaleList;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", shadowRadius="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 581
    invoke-virtual {p0}, Landroid/text/style/TextAppearanceSpan;->getShadowRadius()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", shadowDx="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 582
    invoke-virtual {p0}, Landroid/text/style/TextAppearanceSpan;->getShadowDx()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", shadowDy="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 583
    invoke-virtual {p0}, Landroid/text/style/TextAppearanceSpan;->getShadowDy()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", shadowColor="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 584
    invoke-virtual {p0}, Landroid/text/style/TextAppearanceSpan;->getShadowColor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "#%08X"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", elegantTextHeight="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 585
    invoke-virtual {p0}, Landroid/text/style/TextAppearanceSpan;->isElegantTextHeight()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", letterSpacing="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 586
    invoke-virtual {p0}, Landroid/text/style/TextAppearanceSpan;->getLetterSpacing()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", fontFeatureSettings=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 587
    invoke-virtual {p0}, Landroid/text/style/TextAppearanceSpan;->getFontFeatureSettings()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", fontVariationSettings=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 588
    invoke-virtual {p0}, Landroid/text/style/TextAppearanceSpan;->getFontVariationSettings()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 572
    return-object v0
.end method

.method public whitelist updateDrawState(Landroid/text/TextPaint;)V
    .registers 6

    .line 479
    invoke-virtual {p0, p1}, Landroid/text/style/TextAppearanceSpan;->updateMeasureState(Landroid/text/TextPaint;)V

    .line 481
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColor:Landroid/content/res/ColorStateList;

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    .line 482
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColor:Landroid/content/res/ColorStateList;

    iget-object v2, p1, Landroid/text/TextPaint;->drawableState:[I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 485
    :cond_13
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColorLink:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_21

    .line 486
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColorLink:Landroid/content/res/ColorStateList;

    iget-object v2, p1, Landroid/text/TextPaint;->drawableState:[I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iput v0, p1, Landroid/text/TextPaint;->linkColor:I

    .line 489
    :cond_21
    iget v0, p0, Landroid/text/style/TextAppearanceSpan;->mShadowColor:I

    if-eqz v0, :cond_30

    .line 490
    iget v0, p0, Landroid/text/style/TextAppearanceSpan;->mShadowRadius:F

    iget v1, p0, Landroid/text/style/TextAppearanceSpan;->mShadowDx:F

    iget v2, p0, Landroid/text/style/TextAppearanceSpan;->mShadowDy:F

    iget v3, p0, Landroid/text/style/TextAppearanceSpan;->mShadowColor:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 492
    :cond_30
    return-void
.end method

.method public whitelist updateMeasureState(Landroid/text/TextPaint;)V
    .registers 9

    .line 497
    nop

    .line 499
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTypeface:Landroid/graphics/Typeface;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 500
    iget v0, p0, Landroid/text/style/TextAppearanceSpan;->mStyle:I

    .line 501
    iget-object v2, p0, Landroid/text/style/TextAppearanceSpan;->mTypeface:Landroid/graphics/Typeface;

    invoke-static {v2, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v2

    goto :goto_43

    .line 502
    :cond_f
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mFamilyName:Ljava/lang/String;

    if-nez v0, :cond_1b

    iget v0, p0, Landroid/text/style/TextAppearanceSpan;->mStyle:I

    if-eqz v0, :cond_18

    goto :goto_1b

    .line 519
    :cond_18
    const/4 v2, 0x0

    move v0, v1

    goto :goto_43

    .line 503
    :cond_1b
    :goto_1b
    invoke-virtual {p1}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    .line 505
    if-eqz v0, :cond_26

    .line 506
    invoke-virtual {v0}, Landroid/graphics/Typeface;->getStyle()I

    move-result v2

    goto :goto_27

    .line 505
    :cond_26
    move v2, v1

    .line 509
    :goto_27
    iget v3, p0, Landroid/text/style/TextAppearanceSpan;->mStyle:I

    or-int/2addr v2, v3

    .line 511
    iget-object v3, p0, Landroid/text/style/TextAppearanceSpan;->mFamilyName:Ljava/lang/String;

    if-eqz v3, :cond_35

    .line 512
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mFamilyName:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_40

    .line 513
    :cond_35
    if-nez v0, :cond_3c

    .line 514
    invoke-static {v2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_40

    .line 516
    :cond_3c
    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 518
    :goto_40
    move v6, v2

    move-object v2, v0

    move v0, v6

    .line 522
    :goto_43
    if-eqz v2, :cond_7a

    .line 524
    iget v3, p0, Landroid/text/style/TextAppearanceSpan;->mTextFontWeight:I

    const/4 v4, 0x1

    if-ltz v3, :cond_60

    .line 525
    const/16 v3, 0x3e8

    iget v5, p0, Landroid/text/style/TextAppearanceSpan;->mTextFontWeight:I

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 526
    and-int/lit8 v5, v0, 0x2

    if-eqz v5, :cond_57

    move v1, v4

    .line 527
    :cond_57
    invoke-static {v2, v3, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 528
    goto :goto_61

    .line 529
    :cond_60
    nop

    .line 532
    :goto_61
    invoke-virtual {v2}, Landroid/graphics/Typeface;->getStyle()I

    move-result v1

    not-int v1, v1

    and-int/2addr v0, v1

    .line 534
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_6e

    .line 535
    invoke-virtual {p1, v4}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 538
    :cond_6e
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_77

    .line 539
    const/high16 v0, -0x41800000    # -0.25f

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 542
    :cond_77
    invoke-virtual {p1, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 545
    :cond_7a
    iget v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextSize:I

    if-lez v0, :cond_84

    .line 546
    iget v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextSize:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 549
    :cond_84
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextLocales:Landroid/os/LocaleList;

    if-eqz v0, :cond_8d

    .line 550
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextLocales:Landroid/os/LocaleList;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextLocales(Landroid/os/LocaleList;)V

    .line 553
    :cond_8d
    iget-boolean v0, p0, Landroid/text/style/TextAppearanceSpan;->mHasElegantTextHeight:Z

    if-eqz v0, :cond_96

    .line 554
    iget-boolean v0, p0, Landroid/text/style/TextAppearanceSpan;->mElegantTextHeight:Z

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setElegantTextHeight(Z)V

    .line 557
    :cond_96
    iget-boolean v0, p0, Landroid/text/style/TextAppearanceSpan;->mHasLetterSpacing:Z

    if-eqz v0, :cond_9f

    .line 558
    iget v0, p0, Landroid/text/style/TextAppearanceSpan;->mLetterSpacing:F

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    .line 561
    :cond_9f
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mFontFeatureSettings:Ljava/lang/String;

    if-eqz v0, :cond_a8

    .line 562
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mFontFeatureSettings:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setFontFeatureSettings(Ljava/lang/String;)V

    .line 565
    :cond_a8
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mFontVariationSettings:Ljava/lang/String;

    if-eqz v0, :cond_b1

    .line 566
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mFontVariationSettings:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setFontVariationSettings(Ljava/lang/String;)Z

    .line 568
    :cond_b1
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 306
    invoke-virtual {p0, p1, p2}, Landroid/text/style/TextAppearanceSpan;->writeToParcelInternal(Landroid/os/Parcel;I)V

    .line 307
    return-void
.end method

.method public greylist-max-o writeToParcelInternal(Landroid/os/Parcel;I)V
    .registers 6

    .line 311
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mFamilyName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 312
    iget v0, p0, Landroid/text/style/TextAppearanceSpan;->mStyle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 313
    iget v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 314
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColor:Landroid/content/res/ColorStateList;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1e

    .line 315
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 316
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/ColorStateList;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_21

    .line 318
    :cond_1e
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 320
    :goto_21
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColorLink:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2e

    .line 321
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 322
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColorLink:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/ColorStateList;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_31

    .line 324
    :cond_2e
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 326
    :goto_31
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTypeface:Landroid/graphics/Typeface;

    invoke-static {v0, p1}, Landroid/graphics/LeakyTypefaceStorage;->writeTypefaceToParcel(Landroid/graphics/Typeface;Landroid/os/Parcel;)V

    .line 328
    iget v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextFontWeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 329
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextLocales:Landroid/os/LocaleList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 331
    iget p2, p0, Landroid/text/style/TextAppearanceSpan;->mShadowRadius:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 332
    iget p2, p0, Landroid/text/style/TextAppearanceSpan;->mShadowDx:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 333
    iget p2, p0, Landroid/text/style/TextAppearanceSpan;->mShadowDy:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 334
    iget p2, p0, Landroid/text/style/TextAppearanceSpan;->mShadowColor:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 336
    iget-boolean p2, p0, Landroid/text/style/TextAppearanceSpan;->mHasElegantTextHeight:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 337
    iget-boolean p2, p0, Landroid/text/style/TextAppearanceSpan;->mElegantTextHeight:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 338
    iget-boolean p2, p0, Landroid/text/style/TextAppearanceSpan;->mHasLetterSpacing:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 339
    iget p2, p0, Landroid/text/style/TextAppearanceSpan;->mLetterSpacing:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 341
    iget-object p2, p0, Landroid/text/style/TextAppearanceSpan;->mFontFeatureSettings:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 342
    iget-object p2, p0, Landroid/text/style/TextAppearanceSpan;->mFontVariationSettings:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 343
    return-void
.end method
