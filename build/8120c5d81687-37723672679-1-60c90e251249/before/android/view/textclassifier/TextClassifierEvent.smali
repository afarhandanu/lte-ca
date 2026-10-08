.class public abstract Landroid/view/textclassifier/TextClassifierEvent;
.super Ljava/lang/Object;
.source "TextClassifierEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/textclassifier/TextClassifierEvent$Builder;,
        Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent;,
        Landroid/view/textclassifier/TextClassifierEvent$TextLinkifyEvent;,
        Landroid/view/textclassifier/TextClassifierEvent$LanguageDetectionEvent;,
        Landroid/view/textclassifier/TextClassifierEvent$ConversationActionsEvent;,
        Landroid/view/textclassifier/TextClassifierEvent$Type;,
        Landroid/view/textclassifier/TextClassifierEvent$Category;
    }
.end annotation


# static fields
.field public static final whitelist CATEGORY_CONVERSATION_ACTIONS:I = 0x3

.field public static final whitelist CATEGORY_LANGUAGE_DETECTION:I = 0x4

.field public static final whitelist CATEGORY_LINKIFY:I = 0x2

.field public static final whitelist CATEGORY_SELECTION:I = 0x1

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/textclassifier/TextClassifierEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist PARCEL_TOKEN_CONVERSATION_ACTION_EVENT:I = 0x3

.field private static final blacklist PARCEL_TOKEN_LANGUAGE_DETECTION_EVENT:I = 0x4

.field private static final blacklist PARCEL_TOKEN_TEXT_LINKIFY_EVENT:I = 0x2

.field private static final blacklist PARCEL_TOKEN_TEXT_SELECTION_EVENT:I = 0x1

.field public static final whitelist TYPE_ACTIONS_GENERATED:I = 0x14

.field public static final whitelist TYPE_ACTIONS_SHOWN:I = 0x6

.field public static final whitelist TYPE_AUTO_SELECTION:I = 0x5

.field public static final whitelist TYPE_COPY_ACTION:I = 0x9

.field public static final whitelist TYPE_CUT_ACTION:I = 0xb

.field public static final whitelist TYPE_LINKS_GENERATED:I = 0x15

.field public static final whitelist TYPE_LINK_CLICKED:I = 0x7

.field public static final whitelist TYPE_MANUAL_REPLY:I = 0x13

.field public static final whitelist TYPE_OTHER_ACTION:I = 0x10

.field public static final whitelist TYPE_OVERTYPE:I = 0x8

.field public static final whitelist TYPE_PASTE_ACTION:I = 0xa

.field public static final blacklist TYPE_READ_CLIPBOARD:I = 0x16

.field public static final whitelist TYPE_SELECTION_DESTROYED:I = 0xf

.field public static final whitelist TYPE_SELECTION_DRAG:I = 0xe

.field public static final whitelist TYPE_SELECTION_MODIFIED:I = 0x2

.field public static final whitelist TYPE_SELECTION_RESET:I = 0x12

.field public static final whitelist TYPE_SELECTION_STARTED:I = 0x1

.field public static final whitelist TYPE_SELECT_ALL:I = 0x11

.field public static final whitelist TYPE_SHARE_ACTION:I = 0xc

.field public static final whitelist TYPE_SMART_ACTION:I = 0xd

.field public static final whitelist TYPE_SMART_SELECTION_MULTI:I = 0x4

.field public static final whitelist TYPE_SMART_SELECTION_SINGLE:I = 0x3


# instance fields
.field private final blacklist mActionIndices:[I

.field private final blacklist mEntityTypes:[Ljava/lang/String;

.field private final blacklist mEventCategory:I

.field private blacklist mEventContext:Landroid/view/textclassifier/TextClassificationContext;

.field private final blacklist mEventIndex:I

.field private final blacklist mEventType:I

.field private final blacklist mExtras:Landroid/os/Bundle;

.field public blacklist mHiddenTempSessionId:Landroid/view/textclassifier/TextClassificationSessionId;

.field private final blacklist mLocale:Landroid/icu/util/ULocale;

.field private final blacklist mModelName:Ljava/lang/String;

.field private final blacklist mResultId:Ljava/lang/String;

.field private final blacklist mScores:[F


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 211
    new-instance v0, Landroid/view/textclassifier/TextClassifierEvent$1;

    invoke-direct {v0}, Landroid/view/textclassifier/TextClassifierEvent$1;-><init>()V

    sput-object v0, Landroid/view/textclassifier/TextClassifierEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mEventCategory:I

    .line 190
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mEventType:I

    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mEntityTypes:[Ljava/lang/String;

    .line 192
    const-class v0, Landroid/view/textclassifier/TextClassificationContext;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textclassifier/TextClassificationContext;

    iput-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mEventContext:Landroid/view/textclassifier/TextClassificationContext;

    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mResultId:Ljava/lang/String;

    .line 194
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mEventIndex:I

    .line 195
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 196
    new-array v0, v0, [F

    iput-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mScores:[F

    .line 197
    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mScores:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readFloatArray([F)V

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mModelName:Ljava/lang/String;

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mActionIndices:[I

    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 201
    if-nez v0, :cond_4c

    goto :goto_50

    :cond_4c
    invoke-static {v0}, Landroid/icu/util/ULocale;->forLanguageTag(Ljava/lang/String;)Landroid/icu/util/ULocale;

    move-result-object v1

    :goto_50
    iput-object v1, p0, Landroid/view/textclassifier/TextClassifierEvent;->mLocale:Landroid/icu/util/ULocale;

    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Landroid/view/textclassifier/TextClassifierEvent;->mExtras:Landroid/os/Bundle;

    .line 203
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/view/textclassifier/TextClassifierEvent-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/textclassifier/TextClassifierEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/view/textclassifier/TextClassifierEvent$Builder;)V
    .registers 3

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    invoke-static {p1}, Landroid/view/textclassifier/TextClassifierEvent$Builder;->-$$Nest$fgetmEventCategory(Landroid/view/textclassifier/TextClassifierEvent$Builder;)I

    move-result v0

    iput v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mEventCategory:I

    .line 176
    invoke-static {p1}, Landroid/view/textclassifier/TextClassifierEvent$Builder;->-$$Nest$fgetmEventType(Landroid/view/textclassifier/TextClassifierEvent$Builder;)I

    move-result v0

    iput v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mEventType:I

    .line 177
    invoke-static {p1}, Landroid/view/textclassifier/TextClassifierEvent$Builder;->-$$Nest$fgetmEntityTypes(Landroid/view/textclassifier/TextClassifierEvent$Builder;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mEntityTypes:[Ljava/lang/String;

    .line 178
    invoke-static {p1}, Landroid/view/textclassifier/TextClassifierEvent$Builder;->-$$Nest$fgetmEventContext(Landroid/view/textclassifier/TextClassifierEvent$Builder;)Landroid/view/textclassifier/TextClassificationContext;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mEventContext:Landroid/view/textclassifier/TextClassificationContext;

    .line 179
    invoke-static {p1}, Landroid/view/textclassifier/TextClassifierEvent$Builder;->-$$Nest$fgetmResultId(Landroid/view/textclassifier/TextClassifierEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mResultId:Ljava/lang/String;

    .line 180
    invoke-static {p1}, Landroid/view/textclassifier/TextClassifierEvent$Builder;->-$$Nest$fgetmEventIndex(Landroid/view/textclassifier/TextClassifierEvent$Builder;)I

    move-result v0

    iput v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mEventIndex:I

    .line 181
    invoke-static {p1}, Landroid/view/textclassifier/TextClassifierEvent$Builder;->-$$Nest$fgetmScores(Landroid/view/textclassifier/TextClassifierEvent$Builder;)[F

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mScores:[F

    .line 182
    invoke-static {p1}, Landroid/view/textclassifier/TextClassifierEvent$Builder;->-$$Nest$fgetmModelName(Landroid/view/textclassifier/TextClassifierEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mModelName:Ljava/lang/String;

    .line 183
    invoke-static {p1}, Landroid/view/textclassifier/TextClassifierEvent$Builder;->-$$Nest$fgetmActionIndices(Landroid/view/textclassifier/TextClassifierEvent$Builder;)[I

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mActionIndices:[I

    .line 184
    invoke-static {p1}, Landroid/view/textclassifier/TextClassifierEvent$Builder;->-$$Nest$fgetmLocale(Landroid/view/textclassifier/TextClassifierEvent$Builder;)Landroid/icu/util/ULocale;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mLocale:Landroid/icu/util/ULocale;

    .line 185
    invoke-static {p1}, Landroid/view/textclassifier/TextClassifierEvent$Builder;->-$$Nest$fgetmExtras(Landroid/view/textclassifier/TextClassifierEvent$Builder;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_48

    sget-object p1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    goto :goto_4c

    :cond_48
    invoke-static {p1}, Landroid/view/textclassifier/TextClassifierEvent$Builder;->-$$Nest$fgetmExtras(Landroid/view/textclassifier/TextClassifierEvent$Builder;)Landroid/os/Bundle;

    move-result-object p1

    :goto_4c
    iput-object p1, p0, Landroid/view/textclassifier/TextClassifierEvent;->mExtras:Landroid/os/Bundle;

    .line 186
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/textclassifier/TextClassifierEvent$Builder;Landroid/view/textclassifier/TextClassifierEvent-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/textclassifier/TextClassifierEvent;-><init>(Landroid/view/textclassifier/TextClassifierEvent$Builder;)V

    return-void
.end method

.method private blacklist getParcelToken()I
    .registers 4

    .line 254
    instance-of v0, p0, Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent;

    if-eqz v0, :cond_6

    .line 255
    const/4 v0, 0x1

    return v0

    .line 257
    :cond_6
    instance-of v0, p0, Landroid/view/textclassifier/TextClassifierEvent$TextLinkifyEvent;

    if-eqz v0, :cond_c

    .line 258
    const/4 v0, 0x2

    return v0

    .line 260
    :cond_c
    instance-of v0, p0, Landroid/view/textclassifier/TextClassifierEvent$LanguageDetectionEvent;

    if-eqz v0, :cond_12

    .line 261
    const/4 v0, 0x4

    return v0

    .line 263
    :cond_12
    instance-of v0, p0, Landroid/view/textclassifier/TextClassifierEvent$ConversationActionsEvent;

    if-eqz v0, :cond_18

    .line 264
    const/4 v0, 0x3

    return v0

    .line 266
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 207
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getActionIndices()[I
    .registers 2

    .line 353
    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mActionIndices:[I

    return-object v0
.end method

.method public whitelist getEntityTypes()[Ljava/lang/String;
    .registers 2

    .line 292
    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mEntityTypes:[Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getEventCategory()I
    .registers 2

    .line 274
    iget v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mEventCategory:I

    return v0
.end method

.method public whitelist getEventContext()Landroid/view/textclassifier/TextClassificationContext;
    .registers 2

    .line 300
    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mEventContext:Landroid/view/textclassifier/TextClassificationContext;

    return-object v0
.end method

.method public whitelist getEventIndex()I
    .registers 2

    .line 324
    iget v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mEventIndex:I

    return v0
.end method

.method public whitelist getEventType()I
    .registers 2

    .line 282
    iget v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mEventType:I

    return v0
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .registers 2

    .line 371
    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getLocale()Landroid/icu/util/ULocale;
    .registers 2

    .line 361
    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mLocale:Landroid/icu/util/ULocale;

    return-object v0
.end method

.method public whitelist getModelName()Ljava/lang/String;
    .registers 2

    .line 340
    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mModelName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getResultId()Ljava/lang/String;
    .registers 2

    .line 317
    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mResultId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getScores()[F
    .registers 2

    .line 332
    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mScores:[F

    return-object v0
.end method

.method blacklist setEventContext(Landroid/view/textclassifier/TextClassificationContext;)V
    .registers 2

    .line 309
    iput-object p1, p0, Landroid/view/textclassifier/TextClassifierEvent;->mEventContext:Landroid/view/textclassifier/TextClassificationContext;

    .line 310
    return-void
.end method

.method public final blacklist toSelectionEvent()Landroid/view/textclassifier/SelectionEvent;
    .registers 14

    .line 410
    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassifierEvent;->getEventCategory()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_be

    .line 419
    const/4 v0, 0x0

    return-object v0

    .line 415
    :pswitch_b
    nop

    .line 416
    move v0, v1

    goto :goto_10

    .line 412
    :pswitch_e
    nop

    .line 413
    move v0, v2

    .line 422
    :goto_10
    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassifierEvent;->getEntityTypes()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    const/4 v4, 0x0

    const-string v5, ""

    if-lez v3, :cond_22

    .line 423
    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassifierEvent;->getEntityTypes()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v4

    move-object v10, v3

    goto :goto_23

    :cond_22
    move-object v10, v5

    .line 424
    :goto_23
    new-instance v6, Landroid/view/textclassifier/SelectionEvent;

    const/4 v11, 0x0

    const-string v12, ""

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v6 .. v12}, Landroid/view/textclassifier/SelectionEvent;-><init>(IIILjava/lang/String;ILjava/lang/String;)V

    .line 431
    invoke-virtual {v6, v0}, Landroid/view/textclassifier/SelectionEvent;->setInvocationMethod(I)V

    .line 433
    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassifierEvent;->getEventContext()Landroid/view/textclassifier/TextClassificationContext;

    move-result-object v0

    .line 434
    if-eqz v0, :cond_3e

    .line 435
    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassifierEvent;->getEventContext()Landroid/view/textclassifier/TextClassificationContext;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/view/textclassifier/SelectionEvent;->setTextClassificationSessionContext(Landroid/view/textclassifier/TextClassificationContext;)V

    .line 437
    :cond_3e
    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mHiddenTempSessionId:Landroid/view/textclassifier/TextClassificationSessionId;

    invoke-virtual {v6, v0}, Landroid/view/textclassifier/SelectionEvent;->setSessionId(Landroid/view/textclassifier/TextClassificationSessionId;)Landroid/view/textclassifier/SelectionEvent;

    .line 438
    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassifierEvent;->getResultId()Ljava/lang/String;

    move-result-object v0

    .line 439
    if-nez v0, :cond_4a

    goto :goto_4b

    :cond_4a
    move-object v5, v0

    :goto_4b
    invoke-virtual {v6, v5}, Landroid/view/textclassifier/SelectionEvent;->setResultId(Ljava/lang/String;)Landroid/view/textclassifier/SelectionEvent;

    .line 440
    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassifierEvent;->getEventIndex()I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/view/textclassifier/SelectionEvent;->setEventIndex(I)Landroid/view/textclassifier/SelectionEvent;

    .line 444
    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassifierEvent;->getEventType()I

    move-result v0

    packed-switch v0, :pswitch_data_c6

    .line 494
    :pswitch_5c
    move v1, v4

    goto :goto_97

    .line 491
    :pswitch_5e
    nop

    .line 492
    const/16 v1, 0xc9

    goto :goto_97

    .line 488
    :pswitch_62
    nop

    .line 489
    const/16 v1, 0xc8

    goto :goto_97

    .line 485
    :pswitch_66
    nop

    .line 486
    const/16 v1, 0x6c

    goto :goto_97

    .line 482
    :pswitch_6a
    nop

    .line 483
    const/16 v1, 0x6b

    goto :goto_97

    .line 479
    :pswitch_6e
    nop

    .line 480
    const/16 v1, 0x6a

    goto :goto_97

    .line 476
    :pswitch_72
    nop

    .line 477
    const/16 v1, 0x69

    goto :goto_97

    .line 473
    :pswitch_76
    nop

    .line 474
    const/16 v1, 0x68

    goto :goto_97

    .line 470
    :pswitch_7a
    nop

    .line 471
    const/16 v1, 0x67

    goto :goto_97

    .line 467
    :pswitch_7e
    nop

    .line 468
    const/16 v1, 0x66

    goto :goto_97

    .line 464
    :pswitch_82
    nop

    .line 465
    const/16 v1, 0x65

    goto :goto_97

    .line 461
    :pswitch_86
    nop

    .line 462
    const/16 v1, 0x64

    goto :goto_97

    .line 458
    :pswitch_8a
    nop

    .line 459
    const/4 v1, 0x5

    goto :goto_97

    .line 455
    :pswitch_8d
    nop

    .line 456
    const/4 v1, 0x4

    goto :goto_97

    .line 452
    :pswitch_90
    nop

    .line 453
    const/4 v1, 0x3

    goto :goto_97

    .line 449
    :pswitch_93
    nop

    .line 450
    goto :goto_97

    .line 446
    :pswitch_95
    nop

    .line 447
    move v1, v2

    .line 497
    :goto_97
    invoke-virtual {v6, v1}, Landroid/view/textclassifier/SelectionEvent;->setEventType(I)V

    .line 499
    instance-of v0, p0, Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent;

    if-eqz v0, :cond_bd

    .line 500
    move-object v0, p0

    check-cast v0, Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent;

    .line 506
    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent;->getRelativeWordStartIndex()I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/view/textclassifier/SelectionEvent;->setStart(I)Landroid/view/textclassifier/SelectionEvent;

    .line 507
    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent;->getRelativeWordEndIndex()I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/view/textclassifier/SelectionEvent;->setEnd(I)Landroid/view/textclassifier/SelectionEvent;

    .line 508
    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent;->getRelativeSuggestedWordStartIndex()I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/view/textclassifier/SelectionEvent;->setSmartStart(I)Landroid/view/textclassifier/SelectionEvent;

    .line 509
    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent;->getRelativeSuggestedWordEndIndex()I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/view/textclassifier/SelectionEvent;->setSmartEnd(I)Landroid/view/textclassifier/SelectionEvent;

    .line 512
    :cond_bd
    return-object v6

    :pswitch_data_be
    .packed-switch 0x1
        :pswitch_e
        :pswitch_b
    .end packed-switch

    :pswitch_data_c6
    .packed-switch 0x1
        :pswitch_95
        :pswitch_93
        :pswitch_90
        :pswitch_8d
        :pswitch_8a
        :pswitch_5c
        :pswitch_5c
        :pswitch_86
        :pswitch_82
        :pswitch_7e
        :pswitch_7a
        :pswitch_76
        :pswitch_72
        :pswitch_6e
        :pswitch_6a
        :pswitch_66
        :pswitch_62
        :pswitch_5e
    .end packed-switch
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 376
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 377
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    const-string v1, "mEventCategory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/textclassifier/TextClassifierEvent;->mEventCategory:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 380
    const-string v1, ", mEventType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/textclassifier/TextClassifierEvent;->mEventType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 381
    const-string v1, ", mEntityTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/textclassifier/TextClassifierEvent;->mEntityTypes:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    const-string v1, ", mEventContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/textclassifier/TextClassifierEvent;->mEventContext:Landroid/view/textclassifier/TextClassificationContext;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 383
    const-string v1, ", mResultId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/textclassifier/TextClassifierEvent;->mResultId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    const-string v1, ", mEventIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/textclassifier/TextClassifierEvent;->mEventIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 385
    const-string v1, ", mExtras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/textclassifier/TextClassifierEvent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 386
    const-string v1, ", mScores="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/textclassifier/TextClassifierEvent;->mScores:[F

    invoke-static {v2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    const-string v1, ", mModelName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/textclassifier/TextClassifierEvent;->mModelName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    const-string v1, ", mActionIndices="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/textclassifier/TextClassifierEvent;->mActionIndices:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    invoke-virtual {p0, v0}, Landroid/view/textclassifier/TextClassifierEvent;->toString(Ljava/lang/StringBuilder;)V

    .line 390
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method blacklist toString(Ljava/lang/StringBuilder;)V
    .registers 2

    .line 399
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 238
    invoke-direct {p0}, Landroid/view/textclassifier/TextClassifierEvent;->getParcelToken()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 239
    iget v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mEventCategory:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 240
    iget v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mEventType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 241
    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mEntityTypes:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mEventContext:Landroid/view/textclassifier/TextClassificationContext;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 243
    iget-object p2, p0, Landroid/view/textclassifier/TextClassifierEvent;->mResultId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 244
    iget p2, p0, Landroid/view/textclassifier/TextClassifierEvent;->mEventIndex:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 245
    iget-object p2, p0, Landroid/view/textclassifier/TextClassifierEvent;->mScores:[F

    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 246
    iget-object p2, p0, Landroid/view/textclassifier/TextClassifierEvent;->mScores:[F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 247
    iget-object p2, p0, Landroid/view/textclassifier/TextClassifierEvent;->mModelName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 248
    iget-object p2, p0, Landroid/view/textclassifier/TextClassifierEvent;->mActionIndices:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 249
    iget-object p2, p0, Landroid/view/textclassifier/TextClassifierEvent;->mLocale:Landroid/icu/util/ULocale;

    if-nez p2, :cond_40

    const/4 p2, 0x0

    goto :goto_46

    :cond_40
    iget-object p2, p0, Landroid/view/textclassifier/TextClassifierEvent;->mLocale:Landroid/icu/util/ULocale;

    invoke-virtual {p2}, Landroid/icu/util/ULocale;->toLanguageTag()Ljava/lang/String;

    move-result-object p2

    :goto_46
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 250
    iget-object p2, p0, Landroid/view/textclassifier/TextClassifierEvent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 251
    return-void
.end method
