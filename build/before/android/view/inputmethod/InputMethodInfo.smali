.class public final Landroid/view/inputmethod/InputMethodInfo;
.super Ljava/lang/Object;
.source "InputMethodInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/inputmethod/InputMethodInfo$MetadataReadBytesTracker;,
        Landroid/view/inputmethod/InputMethodInfo$TypedArrayWrapper;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_IME_LANGUAGE_SETTINGS:Ljava/lang/String; = "android.view.inputmethod.action.IME_LANGUAGE_SETTINGS"

.field public static final whitelist ACTION_STYLUS_HANDWRITING_SETTINGS:Ljava/lang/String; = "android.view.inputmethod.action.STYLUS_HANDWRITING_SETTINGS"

.field public static final blacklist COMPONENT_NAME_MAX_LENGTH:I = 0x3e8

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist MAX_IMES_PER_PACKAGE:I = 0x14

.field private static final blacklist MAX_METADATA_SIZE_BYTES:I = 0x32000

.field static final greylist-max-o TAG:Ljava/lang/String; = "InputMethodInfo"


# instance fields
.field private final greylist-max-o mForceDefault:Z

.field private final blacklist mHandledConfigChanges:I

.field final greylist-max-o mId:Ljava/lang/String;

.field private final blacklist mInlineSuggestionsEnabled:Z

.field private final greylist-max-o mIsAuxIme:Z

.field final greylist-max-o mIsDefaultResId:I

.field final blacklist mIsVirtualDeviceOnly:Z

.field final greylist-max-o mIsVrOnly:Z

.field private final blacklist mLanguageSettingsActivityName:Ljava/lang/String;

.field final greylist-max-o mService:Landroid/content/pm/ResolveInfo;

.field final greylist-max-o mSettingsActivityName:Ljava/lang/String;

.field private final blacklist mShowInInputMethodPicker:Z

.field private final blacklist mStylusHandwritingSettingsActivityAttr:Ljava/lang/String;

.field private final greylist mSubtypes:Landroid/view/inputmethod/InputMethodSubtypeArray;

.field private final blacklist mSupportsConnectionlessStylusHandwriting:Z

.field private final blacklist mSupportsInlineSuggestionsWithTouchExploration:Z

.field private final blacklist mSupportsStylusHandwriting:Z

.field private final greylist-max-o mSupportsSwitchingToNextInputMethod:Z

.field private final blacklist mSuppressesSpellChecker:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1122
    new-instance v0, Landroid/view/inputmethod/InputMethodInfo$1;

    invoke-direct {v0}, Landroid/view/inputmethod/InputMethodInfo$1;-><init>()V

    sput-object v0, Landroid/view/inputmethod/InputMethodInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 260
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/inputmethod/InputMethodInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Ljava/util/List;)V

    .line 261
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Ljava/util/List;)V
    .registers 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/pm/ResolveInfo;",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 274
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 275
    iput-object v1, v0, Landroid/view/inputmethod/InputMethodInfo;->mService:Landroid/content/pm/ResolveInfo;

    .line 276
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 277
    invoke-static {v1}, Landroid/view/inputmethod/InputMethodInfo;->computeId(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/inputmethod/InputMethodInfo;->mId:Ljava/lang/String;

    .line 278
    nop

    .line 279
    nop

    .line 280
    nop

    .line 281
    nop

    .line 282
    nop

    .line 283
    nop

    .line 284
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/view/inputmethod/InputMethodInfo;->mForceDefault:Z

    .line 286
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 287
    nop

    .line 288
    nop

    .line 289
    nop

    .line 292
    nop

    .line 294
    nop

    .line 295
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 297
    :try_start_2a
    iget-object v7, v3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v7}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v7

    .line 298
    invoke-static {v3, v7}, Landroid/view/inputmethod/InputMethodInfo;->validateXmlMetaData(Landroid/content/pm/ServiceInfo;Landroid/content/res/Resources;)V

    .line 299
    const-string v8, "android.view.im"

    invoke-virtual {v3, v4, v8}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v4
    :try_end_39
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2a .. :try_end_39} :catch_280
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2a .. :try_end_39} :catch_280
    .catch Ljava/lang/NumberFormatException; {:try_start_2a .. :try_end_39} :catch_280
    .catchall {:try_start_2a .. :try_end_39} :catchall_27d

    .line 300
    if-eqz v4, :cond_26d

    .line 305
    :try_start_3b
    invoke-static {v4}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v8

    .line 308
    :goto_3f
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v9

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-eq v9, v11, :cond_4a

    if-eq v9, v10, :cond_4a

    goto :goto_3f

    .line 312
    :cond_4a
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 313
    const-string v12, "input-method"

    invoke-virtual {v12, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_253

    .line 318
    new-instance v9, Landroid/view/inputmethod/InputMethodInfo$MetadataReadBytesTracker;

    invoke-direct {v9}, Landroid/view/inputmethod/InputMethodInfo$MetadataReadBytesTracker;-><init>()V

    .line 319
    sget-object v12, Lcom/android/internal/R$styleable;->InputMethod:[I

    .line 320
    invoke-virtual {v7, v8, v12}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v12

    .line 319
    invoke-static {v12, v9}, Landroid/view/inputmethod/InputMethodInfo$TypedArrayWrapper;->createForMethod(Landroid/content/res/TypedArray;Landroid/view/inputmethod/InputMethodInfo$MetadataReadBytesTracker;)Landroid/view/inputmethod/InputMethodInfo$TypedArrayWrapper;

    move-result-object v12
    :try_end_65
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3b .. :try_end_65} :catch_265
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3b .. :try_end_65} :catch_265
    .catch Ljava/lang/NumberFormatException; {:try_start_3b .. :try_end_65} :catch_265
    .catchall {:try_start_3b .. :try_end_65} :catchall_25f

    .line 322
    :try_start_65
    invoke-virtual {v12, v10}, Landroid/view/inputmethod/InputMethodInfo$TypedArrayWrapper;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 324
    const/16 v14, 0xd

    invoke-virtual {v12, v14}, Landroid/view/inputmethod/InputMethodInfo$TypedArrayWrapper;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 326
    const/4 v15, 0x4

    invoke-virtual {v12, v15, v1}, Landroid/view/inputmethod/InputMethodInfo$TypedArrayWrapper;->getBoolean(IZ)Z

    move-result v6

    .line 328
    const/16 v15, 0xb

    invoke-virtual {v12, v15, v1}, Landroid/view/inputmethod/InputMethodInfo$TypedArrayWrapper;->getBoolean(IZ)Z

    move-result v10

    .line 330
    invoke-virtual {v12, v11, v1}, Landroid/view/inputmethod/InputMethodInfo$TypedArrayWrapper;->getResourceId(II)I

    move-result v15
    :try_end_7e
    .catchall {:try_start_65 .. :try_end_7e} :catchall_242

    .line 332
    const/4 v11, 0x3

    move-object/from16 v18, v4

    :try_start_81
    invoke-virtual {v12, v11, v1}, Landroid/view/inputmethod/InputMethodInfo$TypedArrayWrapper;->getBoolean(IZ)Z

    move-result v4
    :try_end_85
    .catchall {:try_start_81 .. :try_end_85} :catchall_23e

    .line 336
    const/4 v11, 0x5

    move-object/from16 v19, v3

    :try_start_88
    invoke-virtual {v12, v11, v1}, Landroid/view/inputmethod/InputMethodInfo$TypedArrayWrapper;->getBoolean(IZ)Z

    move-result v3

    .line 339
    const/16 v11, 0x9

    move/from16 v20, v10

    invoke-virtual {v12, v11, v1}, Landroid/view/inputmethod/InputMethodInfo$TypedArrayWrapper;->getBoolean(IZ)Z

    move-result v10

    .line 342
    const/4 v11, 0x6

    move/from16 v21, v6

    invoke-virtual {v12, v11, v1}, Landroid/view/inputmethod/InputMethodInfo$TypedArrayWrapper;->getBoolean(IZ)Z

    move-result v6

    .line 344
    const/4 v11, 0x7

    move/from16 v22, v6

    const/4 v1, 0x1

    invoke-virtual {v12, v11, v1}, Landroid/view/inputmethod/InputMethodInfo$TypedArrayWrapper;->getBoolean(IZ)Z

    move-result v6

    .line 346
    const/4 v1, 0x0

    invoke-virtual {v12, v1, v1}, Landroid/view/inputmethod/InputMethodInfo$TypedArrayWrapper;->getInt(II)I

    move-result v11

    iput v11, v0, Landroid/view/inputmethod/InputMethodInfo;->mHandledConfigChanges:I

    .line 348
    const/16 v11, 0x8

    move/from16 v23, v6

    invoke-virtual {v12, v11, v1}, Landroid/view/inputmethod/InputMethodInfo$TypedArrayWrapper;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, v0, Landroid/view/inputmethod/InputMethodInfo;->mSupportsStylusHandwriting:Z

    .line 351
    const/16 v6, 0xc

    invoke-virtual {v12, v6, v1}, Landroid/view/inputmethod/InputMethodInfo$TypedArrayWrapper;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, v0, Landroid/view/inputmethod/InputMethodInfo;->mSupportsConnectionlessStylusHandwriting:Z

    .line 354
    const/16 v1, 0xa

    invoke-virtual {v12, v1}, Landroid/view/inputmethod/InputMethodInfo$TypedArrayWrapper;->getString(I)Ljava/lang/String;

    move-result-object v6
    :try_end_c2
    .catchall {:try_start_88 .. :try_end_c2} :catchall_23c

    .line 357
    if-eqz v12, :cond_c7

    :try_start_c4
    invoke-virtual {v12}, Landroid/view/inputmethod/InputMethodInfo$TypedArrayWrapper;->close()V

    .line 359
    :cond_c7
    invoke-interface/range {v18 .. v18}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v12

    const/16 v24, 0x1

    .line 361
    :goto_cd
    invoke-interface/range {v18 .. v18}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v11

    const/4 v1, 0x3

    if-ne v11, v1, :cond_de

    invoke-interface/range {v18 .. v18}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v1

    if-le v1, v12, :cond_db

    goto :goto_de

    :cond_db
    const/4 v9, 0x0

    goto/16 :goto_1bf

    :cond_de
    :goto_de
    const/4 v1, 0x1

    if-eq v11, v1, :cond_1be

    .line 363
    const/4 v1, 0x2

    if-eq v11, v1, :cond_e9

    .line 364
    const/16 v1, 0xa

    const/16 v11, 0x8

    goto :goto_cd

    .line 366
    :cond_e9
    invoke-interface/range {v18 .. v18}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 367
    const-string/jumbo v11, "subtype"

    invoke-virtual {v11, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b6

    .line 373
    sget-object v1, Lcom/android/internal/R$styleable;->InputMethod_Subtype:[I

    .line 374
    invoke-virtual {v7, v8, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 373
    invoke-static {v1, v9}, Landroid/view/inputmethod/InputMethodInfo$TypedArrayWrapper;->createForSubtype(Landroid/content/res/TypedArray;Landroid/view/inputmethod/InputMethodInfo$MetadataReadBytesTracker;)Landroid/view/inputmethod/InputMethodInfo$TypedArrayWrapper;

    move-result-object v1
    :try_end_100
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c4 .. :try_end_100} :catch_27b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_c4 .. :try_end_100} :catch_27b
    .catch Ljava/lang/NumberFormatException; {:try_start_c4 .. :try_end_100} :catch_27b
    .catchall {:try_start_c4 .. :try_end_100} :catchall_279

    .line 377
    move-object/from16 v25, v7

    const/16 v11, 0xa

    :try_start_104
    invoke-virtual {v1, v11}, Landroid/view/inputmethod/InputMethodInfo$TypedArrayWrapper;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 379
    const/16 v11, 0xb

    invoke-virtual {v1, v11}, Landroid/view/inputmethod/InputMethodInfo$TypedArrayWrapper;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 381
    new-instance v11, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    invoke-direct {v11}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;-><init>()V

    .line 382
    move-object/from16 v26, v8

    move-object/from16 v27, v9

    const/4 v8, 0x0

    invoke-virtual {v1, v8, v8}, Landroid/view/inputmethod/InputMethodInfo$TypedArrayWrapper;->getResourceId(II)I

    move-result v9

    invoke-virtual {v11, v9}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setSubtypeNameResId(I)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v9

    .line 384
    move/from16 v17, v12

    const/4 v11, 0x1

    invoke-virtual {v1, v11, v8}, Landroid/view/inputmethod/InputMethodInfo$TypedArrayWrapper;->getResourceId(II)I

    move-result v12

    invoke-virtual {v9, v12}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setSubtypeIconResId(I)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v8

    .line 387
    if-nez v7, :cond_12f

    const/4 v9, 0x0

    goto :goto_134

    :cond_12f
    new-instance v9, Landroid/icu/util/ULocale;

    invoke-direct {v9, v7}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    .line 388
    :goto_134
    if-nez v16, :cond_138

    const-string v16, ""

    :cond_138
    move-object/from16 v7, v16

    .line 386
    invoke-virtual {v8, v9, v7}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setPhysicalKeyboardHint(Landroid/icu/util/ULocale;Ljava/lang/String;)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v7

    .line 389
    const/16 v8, 0x9

    invoke-virtual {v1, v8}, Landroid/view/inputmethod/InputMethodInfo$TypedArrayWrapper;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setLanguageTag(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v7

    .line 391
    const/4 v9, 0x2

    invoke-virtual {v1, v9}, Landroid/view/inputmethod/InputMethodInfo$TypedArrayWrapper;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setSubtypeLocale(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v7

    .line 393
    const/4 v12, 0x3

    invoke-virtual {v1, v12}, Landroid/view/inputmethod/InputMethodInfo$TypedArrayWrapper;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setSubtypeMode(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v7

    .line 395
    const/4 v8, 0x4

    invoke-virtual {v1, v8}, Landroid/view/inputmethod/InputMethodInfo$TypedArrayWrapper;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setSubtypeExtraValue(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v7

    .line 397
    const/4 v8, 0x5

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9}, Landroid/view/inputmethod/InputMethodInfo$TypedArrayWrapper;->getBoolean(IZ)Z

    move-result v11

    invoke-virtual {v7, v11}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setIsAuxiliary(Z)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v7

    .line 399
    const/4 v11, 0x6

    invoke-virtual {v1, v11, v9}, Landroid/view/inputmethod/InputMethodInfo$TypedArrayWrapper;->getBoolean(IZ)Z

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setOverridesImplicitlyEnabledSubtype(Z)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v7

    .line 402
    const/4 v8, 0x7

    invoke-virtual {v1, v8, v9}, Landroid/view/inputmethod/InputMethodInfo$TypedArrayWrapper;->getInt(II)I

    move-result v11

    invoke-virtual {v7, v11}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setSubtypeId(I)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v7

    .line 404
    const/16 v11, 0x8

    invoke-virtual {v1, v11, v9}, Landroid/view/inputmethod/InputMethodInfo$TypedArrayWrapper;->getBoolean(IZ)Z

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setIsAsciiCapable(Z)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v7

    .line 405
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->build()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v7
    :try_end_18d
    .catchall {:try_start_104 .. :try_end_18d} :catchall_1a9

    .line 406
    if-eqz v1, :cond_192

    :try_start_18f
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo$TypedArrayWrapper;->close()V

    .line 407
    :cond_192
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v1

    if-nez v1, :cond_19a

    .line 408
    move/from16 v24, v9

    .line 410
    :cond_19a
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_19d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_18f .. :try_end_19d} :catch_27b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_18f .. :try_end_19d} :catch_27b
    .catch Ljava/lang/NumberFormatException; {:try_start_18f .. :try_end_19d} :catch_27b
    .catchall {:try_start_18f .. :try_end_19d} :catchall_279

    .line 411
    move/from16 v12, v17

    move-object/from16 v7, v25

    move-object/from16 v8, v26

    move-object/from16 v9, v27

    const/16 v1, 0xa

    goto/16 :goto_cd

    .line 373
    :catchall_1a9
    move-exception v0

    move-object v2, v0

    if-eqz v1, :cond_1b5

    :try_start_1ad
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo$TypedArrayWrapper;->close()V
    :try_end_1b0
    .catchall {:try_start_1ad .. :try_end_1b0} :catchall_1b1

    goto :goto_1b5

    :catchall_1b1
    move-exception v0

    :try_start_1b2
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1b5
    :goto_1b5
    throw v2

    .line 368
    :cond_1b6
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Meta-data in input-method does not start with subtype tag"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1be
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1b2 .. :try_end_1be} :catch_27b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1b2 .. :try_end_1be} :catch_27b
    .catch Ljava/lang/NumberFormatException; {:try_start_1b2 .. :try_end_1be} :catch_27b
    .catchall {:try_start_1b2 .. :try_end_1be} :catchall_279

    .line 361
    :cond_1be
    const/4 v9, 0x0

    .line 416
    :goto_1bf
    if-eqz v18, :cond_1c4

    invoke-interface/range {v18 .. v18}, Landroid/content/res/XmlResourceParser;->close()V

    .line 419
    :cond_1c4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1cc

    .line 420
    move v1, v9

    goto :goto_1ce

    .line 419
    :cond_1cc
    move/from16 v1, v24

    .line 423
    :goto_1ce
    if-eqz v2, :cond_214

    .line 424
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    .line 425
    nop

    :goto_1d5
    if-ge v9, v7, :cond_214

    .line 426
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/inputmethod/InputMethodSubtype;

    .line 427
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1e7

    .line 428
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_211

    .line 430
    :cond_1e7
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Duplicated subtype definition found: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 431
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 430
    const-string v11, "InputMethodInfo"

    invoke-static {v11, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    :goto_211
    add-int/lit8 v9, v9, 0x1

    goto :goto_1d5

    .line 435
    :cond_214
    new-instance v2, Landroid/view/inputmethod/InputMethodSubtypeArray;

    invoke-direct {v2, v5}, Landroid/view/inputmethod/InputMethodSubtypeArray;-><init>(Ljava/util/List;)V

    iput-object v2, v0, Landroid/view/inputmethod/InputMethodInfo;->mSubtypes:Landroid/view/inputmethod/InputMethodSubtypeArray;

    .line 436
    iput-object v13, v0, Landroid/view/inputmethod/InputMethodInfo;->mSettingsActivityName:Ljava/lang/String;

    .line 437
    iput-object v14, v0, Landroid/view/inputmethod/InputMethodInfo;->mLanguageSettingsActivityName:Ljava/lang/String;

    .line 438
    iput-object v6, v0, Landroid/view/inputmethod/InputMethodInfo;->mStylusHandwritingSettingsActivityAttr:Ljava/lang/String;

    .line 439
    iput v15, v0, Landroid/view/inputmethod/InputMethodInfo;->mIsDefaultResId:I

    .line 440
    iput-boolean v1, v0, Landroid/view/inputmethod/InputMethodInfo;->mIsAuxIme:Z

    .line 441
    iput-boolean v4, v0, Landroid/view/inputmethod/InputMethodInfo;->mSupportsSwitchingToNextInputMethod:Z

    .line 442
    iput-boolean v3, v0, Landroid/view/inputmethod/InputMethodInfo;->mInlineSuggestionsEnabled:Z

    .line 443
    iput-boolean v10, v0, Landroid/view/inputmethod/InputMethodInfo;->mSupportsInlineSuggestionsWithTouchExploration:Z

    .line 445
    move/from16 v1, v22

    iput-boolean v1, v0, Landroid/view/inputmethod/InputMethodInfo;->mSuppressesSpellChecker:Z

    .line 446
    move/from16 v1, v23

    iput-boolean v1, v0, Landroid/view/inputmethod/InputMethodInfo;->mShowInInputMethodPicker:Z

    .line 447
    move/from16 v1, v21

    iput-boolean v1, v0, Landroid/view/inputmethod/InputMethodInfo;->mIsVrOnly:Z

    .line 448
    move/from16 v1, v20

    iput-boolean v1, v0, Landroid/view/inputmethod/InputMethodInfo;->mIsVirtualDeviceOnly:Z

    .line 449
    return-void

    .line 319
    :catchall_23c
    move-exception v0

    goto :goto_247

    :catchall_23e
    move-exception v0

    move-object/from16 v19, v3

    goto :goto_247

    :catchall_242
    move-exception v0

    move-object/from16 v19, v3

    move-object/from16 v18, v4

    :goto_247
    move-object v1, v0

    if-eqz v12, :cond_252

    :try_start_24a
    invoke-virtual {v12}, Landroid/view/inputmethod/InputMethodInfo$TypedArrayWrapper;->close()V
    :try_end_24d
    .catchall {:try_start_24a .. :try_end_24d} :catchall_24e

    goto :goto_252

    :catchall_24e
    move-exception v0

    :try_start_24f
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_252
    :goto_252
    throw v1

    .line 314
    :cond_253
    move-object/from16 v19, v3

    move-object/from16 v18, v4

    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Meta-data does not start with input-method tag"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 416
    :catchall_25f
    move-exception v0

    move-object/from16 v18, v4

    :goto_262
    move-object/from16 v6, v18

    goto :goto_2a2

    .line 412
    :catch_265
    move-exception v0

    move-object/from16 v19, v3

    move-object/from16 v18, v4

    :goto_26a
    move-object/from16 v6, v18

    goto :goto_284

    .line 301
    :cond_26d
    move-object/from16 v19, v3

    move-object/from16 v18, v4

    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "No android.view.im meta-data"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_279
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_24f .. :try_end_279} :catch_27b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_24f .. :try_end_279} :catch_27b
    .catch Ljava/lang/NumberFormatException; {:try_start_24f .. :try_end_279} :catch_27b
    .catchall {:try_start_24f .. :try_end_279} :catchall_279

    .line 416
    :catchall_279
    move-exception v0

    goto :goto_262

    .line 412
    :catch_27b
    move-exception v0

    goto :goto_26a

    .line 416
    :catchall_27d
    move-exception v0

    const/4 v6, 0x0

    goto :goto_2a2

    .line 412
    :catch_280
    move-exception v0

    move-object/from16 v19, v3

    const/4 v6, 0x0

    .line 413
    :goto_284
    :try_start_284
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to create context for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v2, v19

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2a1
    .catchall {:try_start_284 .. :try_end_2a1} :catchall_2a1

    .line 416
    :catchall_2a1
    move-exception v0

    :goto_2a2
    if-eqz v6, :cond_2a7

    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    .line 417
    :cond_2a7
    throw v0
.end method

.method public constructor blacklist <init>(Landroid/content/pm/ResolveInfo;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;IZZZZZIZZLjava/lang/String;Z)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ResolveInfo;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;IZZZZZIZZ",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 714
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 715
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 716
    iput-object p1, p0, Landroid/view/inputmethod/InputMethodInfo;->mService:Landroid/content/pm/ResolveInfo;

    .line 717
    new-instance p1, Landroid/content/ComponentName;

    iget-object v1, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {p1, v1, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/view/inputmethod/InputMethodInfo;->mId:Ljava/lang/String;

    .line 718
    iput-object p3, p0, Landroid/view/inputmethod/InputMethodInfo;->mSettingsActivityName:Ljava/lang/String;

    .line 719
    iput-object p4, p0, Landroid/view/inputmethod/InputMethodInfo;->mLanguageSettingsActivityName:Ljava/lang/String;

    .line 720
    iput p6, p0, Landroid/view/inputmethod/InputMethodInfo;->mIsDefaultResId:I

    .line 721
    iput-boolean p2, p0, Landroid/view/inputmethod/InputMethodInfo;->mIsAuxIme:Z

    .line 722
    new-instance p1, Landroid/view/inputmethod/InputMethodSubtypeArray;

    invoke-direct {p1, p5}, Landroid/view/inputmethod/InputMethodSubtypeArray;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Landroid/view/inputmethod/InputMethodInfo;->mSubtypes:Landroid/view/inputmethod/InputMethodSubtypeArray;

    .line 723
    iput-boolean p7, p0, Landroid/view/inputmethod/InputMethodInfo;->mForceDefault:Z

    .line 724
    iput-boolean p8, p0, Landroid/view/inputmethod/InputMethodInfo;->mSupportsSwitchingToNextInputMethod:Z

    .line 725
    iput-boolean p9, p0, Landroid/view/inputmethod/InputMethodInfo;->mInlineSuggestionsEnabled:Z

    .line 726
    move/from16 p1, p16

    iput-boolean p1, p0, Landroid/view/inputmethod/InputMethodInfo;->mSupportsInlineSuggestionsWithTouchExploration:Z

    .line 728
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/view/inputmethod/InputMethodInfo;->mSuppressesSpellChecker:Z

    .line 729
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/view/inputmethod/InputMethodInfo;->mShowInInputMethodPicker:Z

    .line 730
    iput-boolean p10, p0, Landroid/view/inputmethod/InputMethodInfo;->mIsVrOnly:Z

    .line 731
    iput-boolean p11, p0, Landroid/view/inputmethod/InputMethodInfo;->mIsVirtualDeviceOnly:Z

    .line 732
    iput p12, p0, Landroid/view/inputmethod/InputMethodInfo;->mHandledConfigChanges:I

    .line 733
    iput-boolean p13, p0, Landroid/view/inputmethod/InputMethodInfo;->mSupportsStylusHandwriting:Z

    .line 734
    move/from16 p1, p14

    iput-boolean p1, p0, Landroid/view/inputmethod/InputMethodInfo;->mSupportsConnectionlessStylusHandwriting:Z

    .line 735
    move-object/from16 p1, p15

    iput-object p1, p0, Landroid/view/inputmethod/InputMethodInfo;->mStylusHandwritingSettingsActivityAttr:Ljava/lang/String;

    .line 736
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/pm/ResolveInfo;ZLjava/lang/String;Ljava/util/List;IZ)V
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ResolveInfo;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;IZ)V"
        }
    .end annotation

    .line 676
    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v0 .. v16}, Landroid/view/inputmethod/InputMethodInfo;-><init>(Landroid/content/pm/ResolveInfo;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;IZZZZZIZZLjava/lang/String;Z)V

    .line 684
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/pm/ResolveInfo;ZLjava/lang/String;Ljava/util/List;IZZZ)V
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ResolveInfo;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;IZZZ)V"
        }
    .end annotation

    .line 693
    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v4, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v10, p8

    invoke-direct/range {v0 .. v16}, Landroid/view/inputmethod/InputMethodInfo;-><init>(Landroid/content/pm/ResolveInfo;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;IZZZZZIZZLjava/lang/String;Z)V

    .line 701
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 5

    .line 551
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 552
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mId:Ljava/lang/String;

    .line 553
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSettingsActivityName:Ljava/lang/String;

    .line 554
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mLanguageSettingsActivityName:Ljava/lang/String;

    .line 555
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mIsDefaultResId:I

    .line 556
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_25

    move v0, v2

    goto :goto_26

    :cond_25
    move v0, v1

    :goto_26
    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mIsAuxIme:Z

    .line 557
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_30

    move v0, v2

    goto :goto_31

    :cond_30
    move v0, v1

    :goto_31
    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSupportsSwitchingToNextInputMethod:Z

    .line 558
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_3b

    move v0, v2

    goto :goto_3c

    :cond_3b
    move v0, v1

    :goto_3c
    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mInlineSuggestionsEnabled:Z

    .line 559
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_45

    goto :goto_46

    :cond_45
    move v2, v1

    :goto_46
    iput-boolean v2, p0, Landroid/view/inputmethod/InputMethodInfo;->mSupportsInlineSuggestionsWithTouchExploration:Z

    .line 560
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSuppressesSpellChecker:Z

    .line 561
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mShowInInputMethodPicker:Z

    .line 562
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mIsVrOnly:Z

    .line 563
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mIsVirtualDeviceOnly:Z

    .line 564
    sget-object v0, Landroid/content/pm/ResolveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mService:Landroid/content/pm/ResolveInfo;

    .line 565
    new-instance v0, Landroid/view/inputmethod/InputMethodSubtypeArray;

    invoke-direct {v0, p1}, Landroid/view/inputmethod/InputMethodSubtypeArray;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSubtypes:Landroid/view/inputmethod/InputMethodSubtypeArray;

    .line 566
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mHandledConfigChanges:I

    .line 567
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSupportsStylusHandwriting:Z

    .line 568
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSupportsConnectionlessStylusHandwriting:Z

    .line 569
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/view/inputmethod/InputMethodInfo;->mStylusHandwritingSettingsActivityAttr:Ljava/lang/String;

    .line 570
    iput-boolean v1, p0, Landroid/view/inputmethod/InputMethodInfo;->mForceDefault:Z

    .line 571
    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/inputmethod/InputMethodInfo;)V
    .registers 3

    .line 509
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/view/inputmethod/InputMethodInfo;-><init>(Landroid/view/inputmethod/InputMethodInfo;Ljava/util/List;)V

    .line 510
    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/inputmethod/InputMethodInfo;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/inputmethod/InputMethodInfo;",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;)V"
        }
    .end annotation

    .line 516
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 517
    iget-object v0, p1, Landroid/view/inputmethod/InputMethodInfo;->mId:Ljava/lang/String;

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mId:Ljava/lang/String;

    .line 518
    iget-object v0, p1, Landroid/view/inputmethod/InputMethodInfo;->mSettingsActivityName:Ljava/lang/String;

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSettingsActivityName:Ljava/lang/String;

    .line 519
    iget-object v0, p1, Landroid/view/inputmethod/InputMethodInfo;->mLanguageSettingsActivityName:Ljava/lang/String;

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mLanguageSettingsActivityName:Ljava/lang/String;

    .line 520
    iget v0, p1, Landroid/view/inputmethod/InputMethodInfo;->mIsDefaultResId:I

    iput v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mIsDefaultResId:I

    .line 521
    iget-boolean v0, p1, Landroid/view/inputmethod/InputMethodInfo;->mIsAuxIme:Z

    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mIsAuxIme:Z

    .line 522
    iget-boolean v0, p1, Landroid/view/inputmethod/InputMethodInfo;->mSupportsSwitchingToNextInputMethod:Z

    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSupportsSwitchingToNextInputMethod:Z

    .line 523
    iget-boolean v0, p1, Landroid/view/inputmethod/InputMethodInfo;->mInlineSuggestionsEnabled:Z

    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mInlineSuggestionsEnabled:Z

    .line 524
    iget-boolean v0, p1, Landroid/view/inputmethod/InputMethodInfo;->mSupportsInlineSuggestionsWithTouchExploration:Z

    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSupportsInlineSuggestionsWithTouchExploration:Z

    .line 526
    iget-boolean v0, p1, Landroid/view/inputmethod/InputMethodInfo;->mSuppressesSpellChecker:Z

    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSuppressesSpellChecker:Z

    .line 527
    iget-boolean v0, p1, Landroid/view/inputmethod/InputMethodInfo;->mShowInInputMethodPicker:Z

    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mShowInInputMethodPicker:Z

    .line 528
    iget-boolean v0, p1, Landroid/view/inputmethod/InputMethodInfo;->mIsVrOnly:Z

    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mIsVrOnly:Z

    .line 529
    iget-boolean v0, p1, Landroid/view/inputmethod/InputMethodInfo;->mIsVirtualDeviceOnly:Z

    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mIsVirtualDeviceOnly:Z

    .line 530
    iget-object v0, p1, Landroid/view/inputmethod/InputMethodInfo;->mService:Landroid/content/pm/ResolveInfo;

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mService:Landroid/content/pm/ResolveInfo;

    .line 531
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 532
    iget-object p2, p1, Landroid/view/inputmethod/InputMethodInfo;->mSubtypes:Landroid/view/inputmethod/InputMethodSubtypeArray;

    iput-object p2, p0, Landroid/view/inputmethod/InputMethodInfo;->mSubtypes:Landroid/view/inputmethod/InputMethodSubtypeArray;

    goto :goto_68

    .line 534
    :cond_42
    iget-object v0, p1, Landroid/view/inputmethod/InputMethodInfo;->mSubtypes:Landroid/view/inputmethod/InputMethodSubtypeArray;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtypeArray;->toList()Ljava/util/ArrayList;

    move-result-object v0

    .line 535
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    .line 536
    const/4 v2, 0x0

    :goto_4d
    if-ge v2, v1, :cond_61

    .line 537
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodSubtype;

    .line 538
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5e

    .line 539
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 536
    :cond_5e
    add-int/lit8 v2, v2, 0x1

    goto :goto_4d

    .line 542
    :cond_61
    new-instance p2, Landroid/view/inputmethod/InputMethodSubtypeArray;

    invoke-direct {p2, v0}, Landroid/view/inputmethod/InputMethodSubtypeArray;-><init>(Ljava/util/List;)V

    iput-object p2, p0, Landroid/view/inputmethod/InputMethodInfo;->mSubtypes:Landroid/view/inputmethod/InputMethodSubtypeArray;

    .line 544
    :goto_68
    iget p2, p1, Landroid/view/inputmethod/InputMethodInfo;->mHandledConfigChanges:I

    iput p2, p0, Landroid/view/inputmethod/InputMethodInfo;->mHandledConfigChanges:I

    .line 545
    iget-boolean p2, p1, Landroid/view/inputmethod/InputMethodInfo;->mSupportsStylusHandwriting:Z

    iput-boolean p2, p0, Landroid/view/inputmethod/InputMethodInfo;->mSupportsStylusHandwriting:Z

    .line 546
    iget-boolean p2, p1, Landroid/view/inputmethod/InputMethodInfo;->mSupportsConnectionlessStylusHandwriting:Z

    iput-boolean p2, p0, Landroid/view/inputmethod/InputMethodInfo;->mSupportsConnectionlessStylusHandwriting:Z

    .line 547
    iget-boolean p2, p1, Landroid/view/inputmethod/InputMethodInfo;->mForceDefault:Z

    iput-boolean p2, p0, Landroid/view/inputmethod/InputMethodInfo;->mForceDefault:Z

    .line 548
    iget-object p1, p1, Landroid/view/inputmethod/InputMethodInfo;->mStylusHandwritingSettingsActivityAttr:Ljava/lang/String;

    iput-object p1, p0, Landroid/view/inputmethod/InputMethodInfo;->mStylusHandwritingSettingsActivityAttr:Ljava/lang/String;

    .line 549
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;)V
    .registers 22

    .line 578
    invoke-static/range {p1 .. p3}, Landroid/view/inputmethod/InputMethodInfo;->buildFakeResolveInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-object/from16 v3, p4

    invoke-direct/range {v0 .. v16}, Landroid/view/inputmethod/InputMethodInfo;-><init>(Landroid/content/pm/ResolveInfo;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;IZZZZZIZZLjava/lang/String;Z)V

    .line 588
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;I)V
    .registers 23

    .line 657
    invoke-static/range {p1 .. p3}, Landroid/view/inputmethod/InputMethodInfo;->buildFakeResolveInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-object/from16 v3, p4

    move/from16 v12, p5

    invoke-direct/range {v0 .. v16}, Landroid/view/inputmethod/InputMethodInfo;-><init>(Landroid/content/pm/ResolveInfo;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;IZZZZZIZZLjava/lang/String;Z)V

    .line 667
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .registers 25

    .line 618
    invoke-static/range {p1 .. p3}, Landroid/view/inputmethod/InputMethodInfo;->buildFakeResolveInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move/from16 v13, p6

    move-object/from16 v15, p7

    invoke-direct/range {v0 .. v16}, Landroid/view/inputmethod/InputMethodInfo;-><init>(Landroid/content/pm/ResolveInfo;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;IZZZZZIZZLjava/lang/String;Z)V

    .line 626
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V
    .registers 26

    .line 639
    invoke-static/range {p1 .. p3}, Landroid/view/inputmethod/InputMethodInfo;->buildFakeResolveInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    const/4 v12, 0x0

    const/16 v16, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move/from16 v13, p6

    move/from16 v14, p7

    move-object/from16 v15, p8

    invoke-direct/range {v0 .. v16}, Landroid/view/inputmethod/InputMethodInfo;-><init>(Landroid/content/pm/ResolveInfo;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;IZZZZZIZZLjava/lang/String;Z)V

    .line 647
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;ZLjava/lang/String;)V
    .registers 24

    .line 599
    invoke-static/range {p1 .. p3}, Landroid/view/inputmethod/InputMethodInfo;->buildFakeResolveInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    move-object/from16 v3, p4

    move/from16 v13, p5

    move-object/from16 v15, p6

    invoke-direct/range {v0 .. v16}, Landroid/view/inputmethod/InputMethodInfo;-><init>(Landroid/content/pm/ResolveInfo;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;IZZZZZIZZLjava/lang/String;Z)V

    .line 607
    return-void
.end method

.method private static blacklist buildFakeResolveInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/pm/ResolveInfo;
    .registers 7

    .line 740
    new-instance v0, Landroid/content/pm/ResolveInfo;

    invoke-direct {v0}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 741
    new-instance v1, Landroid/content/pm/ServiceInfo;

    invoke-direct {v1}, Landroid/content/pm/ServiceInfo;-><init>()V

    .line 742
    new-instance v2, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v2}, Landroid/content/pm/ApplicationInfo;-><init>()V

    .line 743
    iput-object p0, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 744
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 745
    iput-object v2, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 746
    iput-boolean v3, v1, Landroid/content/pm/ServiceInfo;->enabled:Z

    .line 747
    iput-object p0, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 748
    iput-object p1, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 749
    iput-boolean v3, v1, Landroid/content/pm/ServiceInfo;->exported:Z

    .line 750
    iput-object p2, v1, Landroid/content/pm/ServiceInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 751
    iput-object v1, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 752
    return-object v0
.end method

.method public static greylist-max-o computeId(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;
    .registers 3

    .line 247
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 248
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist validateXmlMetaData(Landroid/content/pm/ServiceInfo;Landroid/content/res/Resources;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/content/pm/PackageManager$NameNotFoundException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 463
    iget-object v0, p0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 464
    if-nez v0, :cond_5

    .line 466
    return-void

    .line 468
    :cond_5
    const-string v1, "android.view.im"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 469
    if-nez v0, :cond_e

    .line 471
    return-void

    .line 474
    :cond_e
    iget-object v1, p0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    if-eqz v1, :cond_25

    iget-object v1, p0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x3e8

    if-gt v1, v2, :cond_1d

    goto :goto_25

    .line 475
    :cond_1d
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p1, "Input method name exceeds 1000 characters"

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 480
    :cond_25
    :goto_25
    nop

    .line 483
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1

    const-wide/16 v0, 0x0

    move-wide v2, v0

    .line 484
    :goto_2d
    const-wide/32 v4, 0x32000

    cmp-long v6, v2, v4

    if-gez v6, :cond_42

    .line 485
    sub-long/2addr v4, v2

    :try_start_35
    invoke-virtual {p1, v4, v5}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v4

    .line 486
    cmp-long v7, v4, v0

    if-gtz v7, :cond_3e

    .line 488
    goto :goto_42

    .line 490
    :cond_3e
    add-long/2addr v2, v4

    .line 491
    goto :goto_2d

    .line 483
    :catchall_40
    move-exception p0

    goto :goto_6d

    .line 494
    :cond_42
    :goto_42
    if-nez v6, :cond_78

    .line 496
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4c

    goto :goto_78

    .line 497
    :cond_4c
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Input method metadata exceeds maximum allowed limit of 200KB for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, ". InputMethod will not be loaded. "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6d
    .catchall {:try_start_35 .. :try_end_6d} :catchall_40

    .line 483
    :goto_6d
    if-eqz p1, :cond_77

    :try_start_6f
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_72
    .catchall {:try_start_6f .. :try_end_72} :catchall_73

    goto :goto_77

    :catchall_73
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_77
    :goto_77
    throw p0

    .line 502
    :cond_78
    :goto_78
    if-eqz p1, :cond_7d

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 503
    :cond_7d
    return-void
.end method


# virtual methods
.method public whitelist createImeLanguageSettingsActivityIntent()Landroid/content/Intent;
    .registers 5

    .line 969
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mLanguageSettingsActivityName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 970
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mLanguageSettingsActivityName:Ljava/lang/String;

    goto :goto_d

    :cond_b
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSettingsActivityName:Ljava/lang/String;

    .line 971
    :goto_d
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 972
    const/4 v0, 0x0

    return-object v0

    .line 974
    :cond_15
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.view.inputmethod.action.IME_LANGUAGE_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/content/ComponentName;

    .line 975
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-direct {v2, v3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 974
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public whitelist createStylusHandwritingSettingsActivityIntent()Landroid/content/Intent;
    .registers 5

    .line 942
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mStylusHandwritingSettingsActivityAttr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_26

    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSupportsStylusHandwriting:Z

    if-nez v0, :cond_d

    goto :goto_26

    .line 947
    :cond_d
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.view.inputmethod.action.STYLUS_HANDWRITING_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    .line 948
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodInfo;->mStylusHandwritingSettingsActivityAttr:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 947
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    .line 944
    :cond_26
    :goto_26
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 1137
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist dump(Landroid/util/Printer;Ljava/lang/String;)V
    .registers 6

    .line 980
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodInfo;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSettingsActivityName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodInfo;->mSettingsActivityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mLanguageSettingsActivityName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodInfo;->mLanguageSettingsActivityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mIsVrOnly="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/view/inputmethod/InputMethodInfo;->mIsVrOnly:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mIsVirtualDeviceOnly="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/view/inputmethod/InputMethodInfo;->mIsVirtualDeviceOnly:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSupportsSwitchingToNextInputMethod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/view/inputmethod/InputMethodInfo;->mSupportsSwitchingToNextInputMethod:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mInlineSuggestionsEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/view/inputmethod/InputMethodInfo;->mInlineSuggestionsEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSupportsInlineSuggestionsWithTouchExploration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/view/inputmethod/InputMethodInfo;->mSupportsInlineSuggestionsWithTouchExploration:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSuppressesSpellChecker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/view/inputmethod/InputMethodInfo;->mSuppressesSpellChecker:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mShowInInputMethodPicker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/view/inputmethod/InputMethodInfo;->mShowInInputMethodPicker:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSupportsStylusHandwriting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/view/inputmethod/InputMethodInfo;->mSupportsStylusHandwriting:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSupportsConnectionlessStylusHandwriting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/view/inputmethod/InputMethodInfo;->mSupportsConnectionlessStylusHandwriting:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mStylusHandwritingSettingsActivityAttr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodInfo;->mStylusHandwritingSettingsActivityAttr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 996
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mIsDefaultResId=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/inputmethod/InputMethodInfo;->mIsDefaultResId:I

    .line 997
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 996
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 998
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Service:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 999
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mService:Landroid/content/pm/ResolveInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/ResolveInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 1000
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "InputMethodSubtype array: count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodInfo;->mSubtypes:Landroid/view/inputmethod/InputMethodSubtypeArray;

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodSubtypeArray;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1001
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSubtypes:Landroid/view/inputmethod/InputMethodSubtypeArray;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/view/inputmethod/InputMethodSubtypeArray;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 1002
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4

    .line 1021
    if-ne p1, p0, :cond_4

    const/4 p1, 0x1

    return p1

    .line 1022
    :cond_4
    const/4 v0, 0x0

    if-nez p1, :cond_8

    return v0

    .line 1024
    :cond_8
    instance-of v1, p1, Landroid/view/inputmethod/InputMethodInfo;

    if-nez v1, :cond_d

    return v0

    .line 1026
    :cond_d
    check-cast p1, Landroid/view/inputmethod/InputMethodInfo;

    .line 1027
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mId:Ljava/lang/String;

    iget-object p1, p1, Landroid/view/inputmethod/InputMethodInfo;->mId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public whitelist getComponent()Landroid/content/ComponentName;
    .registers 4

    .line 792
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public whitelist getConfigChanges()I
    .registers 2

    .line 901
    iget v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mHandledConfigChanges:I

    return v0
.end method

.method public whitelist getId()Ljava/lang/String;
    .registers 2

    .line 761
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getIsDefaultResourceId()I
    .registers 2

    .line 870
    iget v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mIsDefaultResId:I

    return v0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .registers 2

    .line 768
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getServiceInfo()Landroid/content/pm/ServiceInfo;
    .registers 2

    .line 784
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    return-object v0
.end method

.method public whitelist getServiceName()Ljava/lang/String;
    .registers 2

    .line 776
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSettingsActivity()Ljava/lang/String;
    .registers 2

    .line 828
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSettingsActivityName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;
    .registers 3

    .line 861
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSubtypes:Landroid/view/inputmethod/InputMethodSubtypeArray;

    invoke-virtual {v0, p1}, Landroid/view/inputmethod/InputMethodSubtypeArray;->get(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object p1

    return-object p1
.end method

.method public whitelist getSubtypeCount()I
    .registers 2

    .line 852
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSubtypes:Landroid/view/inputmethod/InputMethodSubtypeArray;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtypeArray;->getCount()I

    move-result v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 1032
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public greylist-max-o isAuxiliaryIme()Z
    .registers 2

    .line 1047
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mIsAuxIme:Z

    return v0
.end method

.method public greylist isDefault(Landroid/content/Context;)Z
    .registers 4

    .line 879
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mForceDefault:Z

    if-eqz v0, :cond_6

    .line 880
    const/4 p1, 0x1

    return p1

    .line 883
    :cond_6
    const/4 v0, 0x0

    :try_start_7
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getIsDefaultResourceId()I

    move-result v1

    if-nez v1, :cond_e

    .line 884
    return v0

    .line 886
    :cond_e
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 887
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getIsDefaultResourceId()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1
    :try_end_22
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_22} :catch_23
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7 .. :try_end_22} :catch_23

    return p1

    .line 888
    :catch_23
    move-exception p1

    .line 889
    return v0
.end method

.method public blacklist isInlineSuggestionsEnabled()Z
    .registers 2

    .line 1063
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mInlineSuggestionsEnabled:Z

    return v0
.end method

.method public blacklist isSystem()Z
    .registers 3

    .line 1040
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_d

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    return v1
.end method

.method public whitelist isVirtualDeviceOnly()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 845
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mIsVirtualDeviceOnly:Z

    return v0
.end method

.method public greylist-max-o isVrOnly()Z
    .registers 2

    .line 836
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mIsVrOnly:Z

    return v0
.end method

.method public whitelist loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 813
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mService:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public whitelist loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .registers 3

    .line 803
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mService:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public whitelist shouldShowInInputMethodPicker()Z
    .registers 2

    .line 1088
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mShowInInputMethodPicker:Z

    return v0
.end method

.method public whitelist supportsConnectionlessStylusHandwriting()Z
    .registers 2

    .line 920
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSupportsConnectionlessStylusHandwriting:Z

    return v0
.end method

.method public blacklist supportsInlineSuggestionsWithTouchExploration()Z
    .registers 2

    .line 1072
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSupportsInlineSuggestionsWithTouchExploration:Z

    return v0
.end method

.method public whitelist supportsStylusHandwriting()Z
    .registers 2

    .line 910
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSupportsStylusHandwriting:Z

    return v0
.end method

.method public greylist-max-o supportsSwitchingToNextInputMethod()Z
    .registers 2

    .line 1055
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSupportsSwitchingToNextInputMethod:Z

    return v0
.end method

.method public whitelist suppressesSpellChecker()Z
    .registers 2

    .line 1079
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSuppressesSpellChecker:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1006
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InputMethodInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodInfo;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", settings: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodInfo;->mSettingsActivityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", languageSettings: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodInfo;->mLanguageSettingsActivityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 1099
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1100
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSettingsActivityName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1101
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mLanguageSettingsActivityName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 1102
    iget v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mIsDefaultResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1103
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mIsAuxIme:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1104
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSupportsSwitchingToNextInputMethod:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1105
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mInlineSuggestionsEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1106
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSupportsInlineSuggestionsWithTouchExploration:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1107
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSuppressesSpellChecker:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1108
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mShowInInputMethodPicker:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1109
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mIsVrOnly:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1110
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mIsVirtualDeviceOnly:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1111
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mService:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1112
    iget-object p2, p0, Landroid/view/inputmethod/InputMethodInfo;->mSubtypes:Landroid/view/inputmethod/InputMethodSubtypeArray;

    invoke-virtual {p2, p1}, Landroid/view/inputmethod/InputMethodSubtypeArray;->writeToParcel(Landroid/os/Parcel;)V

    .line 1113
    iget p2, p0, Landroid/view/inputmethod/InputMethodInfo;->mHandledConfigChanges:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1114
    iget-boolean p2, p0, Landroid/view/inputmethod/InputMethodInfo;->mSupportsStylusHandwriting:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1115
    iget-boolean p2, p0, Landroid/view/inputmethod/InputMethodInfo;->mSupportsConnectionlessStylusHandwriting:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1116
    iget-object p2, p0, Landroid/view/inputmethod/InputMethodInfo;->mStylusHandwritingSettingsActivityAttr:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 1117
    return-void
.end method
