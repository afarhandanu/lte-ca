.class public Landroid/view/inputmethod/EditorInfo;
.super Ljava/lang/Object;
.source "EditorInfo.java"

# interfaces
.implements Landroid/text/InputType;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/inputmethod/EditorInfo$TrimPolicy;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/inputmethod/EditorInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist IME_ACTION_DONE:I = 0x6

.field public static final whitelist IME_ACTION_GO:I = 0x2

.field public static final whitelist IME_ACTION_NEXT:I = 0x5

.field public static final whitelist IME_ACTION_NONE:I = 0x1

.field public static final whitelist IME_ACTION_PREVIOUS:I = 0x7

.field public static final whitelist IME_ACTION_SEARCH:I = 0x3

.field public static final whitelist IME_ACTION_SEND:I = 0x4

.field public static final whitelist IME_ACTION_UNSPECIFIED:I = 0x0

.field public static final whitelist IME_FLAG_FORCE_ASCII:I = -0x80000000

.field public static final whitelist IME_FLAG_NAVIGATE_NEXT:I = 0x8000000

.field public static final whitelist IME_FLAG_NAVIGATE_PREVIOUS:I = 0x4000000

.field public static final whitelist IME_FLAG_NO_ACCESSORY_ACTION:I = 0x20000000

.field public static final whitelist IME_FLAG_NO_ENTER_ACTION:I = 0x40000000

.field public static final whitelist IME_FLAG_NO_EXTRACT_UI:I = 0x10000000

.field public static final whitelist IME_FLAG_NO_FULLSCREEN:I = 0x2000000

.field public static final whitelist IME_FLAG_NO_PERSONALIZED_LEARNING:I = 0x1000000

.field public static final blacklist IME_INTERNAL_FLAG_APP_WINDOW_PORTRAIT:I = 0x1

.field public static final whitelist IME_MASK_ACTION:I = 0xff

.field public static final whitelist IME_NULL:I = 0x0

.field static final blacklist MAX_INITIAL_SELECTION_LENGTH:I = 0x400

.field static final blacklist MEMORY_EFFICIENT_TEXT_LENGTH:I = 0x800

.field public static final blacklist STYLUS_HANDWRITING_ENABLED_ANDROIDX_EXTRAS_KEY:Ljava/lang/String; = "androidx.core.view.inputmethod.EditorInfoCompat.STYLUS_HANDWRITING_ENABLED"


# instance fields
.field public whitelist actionId:I

.field public whitelist actionLabel:Ljava/lang/CharSequence;

.field private blacklist autofillId:Landroid/view/autofill/AutofillId;

.field public whitelist contentMimeTypes:[Ljava/lang/String;

.field public whitelist extras:Landroid/os/Bundle;

.field public whitelist fieldId:I

.field public whitelist fieldName:Ljava/lang/String;

.field public whitelist hintLocales:Landroid/os/LocaleList;

.field public whitelist hintText:Ljava/lang/CharSequence;

.field public whitelist imeOptions:I

.field public whitelist initialCapsMode:I

.field public whitelist initialSelEnd:I

.field public whitelist initialSelStart:I

.field public whitelist inputType:I

.field public blacklist internalImeOptions:I

.field public whitelist label:Ljava/lang/CharSequence;

.field private blacklist mInitialSurroundingText:Landroid/view/inputmethod/SurroundingText;

.field private blacklist mInitialToolType:I

.field private blacklist mIsStylusHandwritingEnabled:Z

.field private blacklist mSupportedHandwritingGesturePreviewTypes:I

.field private blacklist mSupportedHandwritingGestureTypes:I

.field private blacklist mWritingToolsEnabled:Z

.field public whitelist packageName:Ljava/lang/String;

.field public whitelist privateImeOptions:Ljava/lang/String;

.field public blacklist targetDevicePolicyUser:Landroid/os/UserHandle;

.field public blacklist targetInputMethodUser:Landroid/os/UserHandle;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputautofillId(Landroid/view/inputmethod/EditorInfo;Landroid/view/autofill/AutofillId;)V
    .registers 2

    iput-object p1, p0, Landroid/view/inputmethod/EditorInfo;->autofillId:Landroid/view/autofill/AutofillId;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmInitialSurroundingText(Landroid/view/inputmethod/EditorInfo;Landroid/view/inputmethod/SurroundingText;)V
    .registers 2

    iput-object p1, p0, Landroid/view/inputmethod/EditorInfo;->mInitialSurroundingText:Landroid/view/inputmethod/SurroundingText;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmInitialToolType(Landroid/view/inputmethod/EditorInfo;I)V
    .registers 2

    iput p1, p0, Landroid/view/inputmethod/EditorInfo;->mInitialToolType:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsStylusHandwritingEnabled(Landroid/view/inputmethod/EditorInfo;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/view/inputmethod/EditorInfo;->mIsStylusHandwritingEnabled:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSupportedHandwritingGesturePreviewTypes(Landroid/view/inputmethod/EditorInfo;I)V
    .registers 2

    iput p1, p0, Landroid/view/inputmethod/EditorInfo;->mSupportedHandwritingGesturePreviewTypes:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSupportedHandwritingGestureTypes(Landroid/view/inputmethod/EditorInfo;I)V
    .registers 2

    iput p1, p0, Landroid/view/inputmethod/EditorInfo;->mSupportedHandwritingGestureTypes:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmWritingToolsEnabled(Landroid/view/inputmethod/EditorInfo;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/view/inputmethod/EditorInfo;->mWritingToolsEnabled:Z

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1406
    new-instance v0, Landroid/view/inputmethod/EditorInfo$1;

    invoke-direct {v0}, Landroid/view/inputmethod/EditorInfo$1;-><init>()V

    sput-object v0, Landroid/view/inputmethod/EditorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 4

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 352
    iput v0, p0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 365
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    .line 379
    iput v0, p0, Landroid/view/inputmethod/EditorInfo;->internalImeOptions:I

    .line 391
    iput-object v1, p0, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    .line 399
    iput v0, p0, Landroid/view/inputmethod/EditorInfo;->actionId:I

    .line 415
    const/4 v2, -0x1

    iput v2, p0, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    .line 431
    iput v2, p0, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    .line 442
    iput v0, p0, Landroid/view/inputmethod/EditorInfo;->initialCapsMode:I

    .line 523
    iput-object v1, p0, Landroid/view/inputmethod/EditorInfo;->hintLocales:Landroid/os/LocaleList;

    .line 534
    iput-object v1, p0, Landroid/view/inputmethod/EditorInfo;->contentMimeTypes:[Ljava/lang/String;

    .line 760
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/view/inputmethod/EditorInfo;->mWritingToolsEnabled:Z

    .line 792
    iput-object v1, p0, Landroid/view/inputmethod/EditorInfo;->targetInputMethodUser:Landroid/os/UserHandle;

    .line 808
    iput-object v1, p0, Landroid/view/inputmethod/EditorInfo;->targetDevicePolicyUser:Landroid/os/UserHandle;

    .line 835
    iput-object v1, p0, Landroid/view/inputmethod/EditorInfo;->mInitialSurroundingText:Landroid/view/inputmethod/SurroundingText;

    .line 842
    iput v0, p0, Landroid/view/inputmethod/EditorInfo;->mInitialToolType:I

    return-void
.end method

.method private static blacklist isCutOnSurrogate(Ljava/lang/CharSequence;II)Z
    .registers 3

    .line 1159
    packed-switch p2, :pswitch_data_18

    .line 1165
    const/4 p0, 0x0

    return p0

    .line 1163
    :pswitch_5
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result p0

    return p0

    .line 1161
    :pswitch_e
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result p0

    return p0

    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_e
        :pswitch_5
    .end packed-switch
.end method

.method private static blacklist isPasswordInputType(I)Z
    .registers 2

    .line 1170
    and-int/lit16 p0, p0, 0xfff

    .line 1172
    const/16 v0, 0x81

    if-eq p0, v0, :cond_11

    const/16 v0, 0xe1

    if-eq p0, v0, :cond_11

    const/16 v0, 0x12

    if-ne p0, v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 p0, 0x1

    :goto_12
    return p0
.end method

.method private blacklist trimLongSurroundingText(Ljava/lang/CharSequence;III)V
    .registers 14

    .line 943
    sub-int v0, p3, p2

    .line 945
    const/16 v1, 0x400

    const/4 v2, 0x0

    if-le v0, v1, :cond_9

    .line 946
    move v1, v2

    goto :goto_a

    :cond_9
    move v1, v0

    .line 949
    :goto_a
    nop

    .line 950
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    sub-int/2addr v3, p3

    .line 951
    rsub-int v4, v1, 0x800

    .line 952
    const-wide v5, 0x3fe999999999999aL    # 0.8

    int-to-double v7, v4

    mul-double/2addr v7, v5

    double-to-int v5, v7

    .line 953
    invoke-static {p2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 954
    sub-int v5, v4, v5

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 956
    sub-int/2addr v4, v3

    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 960
    sub-int v5, p2, v4

    .line 963
    invoke-static {p1, v5, v2}, Landroid/view/inputmethod/EditorInfo;->isCutOnSurrogate(Ljava/lang/CharSequence;II)Z

    move-result v6

    if-eqz v6, :cond_35

    .line 965
    add-int/lit8 v5, v5, 0x1

    .line 966
    add-int/lit8 v4, v4, -0x1

    .line 968
    :cond_35
    add-int v6, p3, v3

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    invoke-static {p1, v6, v7}, Landroid/view/inputmethod/EditorInfo;->isCutOnSurrogate(Ljava/lang/CharSequence;II)Z

    move-result v6

    if-eqz v6, :cond_41

    .line 970
    add-int/lit8 v3, v3, -0x1

    .line 974
    :cond_41
    add-int v6, v4, v1

    add-int/2addr v6, v3

    .line 976
    if-eq v1, v0, :cond_5d

    .line 977
    add-int v0, v5, v4

    invoke-interface {p1, v5, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 979
    add-int/2addr v3, p3

    invoke-interface {p1, p3, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    .line 982
    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/CharSequence;

    aput-object v0, p3, v2

    aput-object p1, p3, v7

    invoke-static {p3}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 983
    goto :goto_62

    .line 984
    :cond_5d
    add-int/2addr v6, v5

    .line 985
    invoke-interface {p1, v5, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    .line 990
    :goto_62
    nop

    .line 991
    add-int/2addr v4, v2

    .line 992
    add-int/2addr p4, p2

    sub-int/2addr p4, v4

    .line 993
    new-instance p2, Landroid/view/inputmethod/SurroundingText;

    add-int/2addr v1, v4

    invoke-direct {p2, p1, v4, v1, p4}, Landroid/view/inputmethod/SurroundingText;-><init>(Ljava/lang/CharSequence;III)V

    iput-object p2, p0, Landroid/view/inputmethod/EditorInfo;->mInitialSurroundingText:Landroid/view/inputmethod/SurroundingText;

    .line 996
    return-void
.end method


# virtual methods
.method public final blacklist createCopyInternal()Landroid/view/inputmethod/EditorInfo;
    .registers 3

    .line 1331
    new-instance v0, Landroid/view/inputmethod/EditorInfo;

    invoke-direct {v0}, Landroid/view/inputmethod/EditorInfo;-><init>()V

    .line 1332
    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    iput v1, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 1333
    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    iput v1, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 1334
    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    iput-object v1, v0, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    .line 1335
    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->internalImeOptions:I

    iput v1, v0, Landroid/view/inputmethod/EditorInfo;->internalImeOptions:I

    .line 1336
    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    .line 1337
    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->actionId:I

    iput v1, v0, Landroid/view/inputmethod/EditorInfo;->actionId:I

    .line 1338
    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    iput v1, v0, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    .line 1339
    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    iput v1, v0, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    .line 1340
    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->initialCapsMode:I

    iput v1, v0, Landroid/view/inputmethod/EditorInfo;->initialCapsMode:I

    .line 1341
    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->mInitialToolType:I

    iput v1, v0, Landroid/view/inputmethod/EditorInfo;->mInitialToolType:I

    .line 1342
    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    .line 1343
    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->label:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/view/inputmethod/EditorInfo;->label:Ljava/lang/CharSequence;

    .line 1344
    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    iput-object v1, v0, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    .line 1345
    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->autofillId:Landroid/view/autofill/AutofillId;

    iput-object v1, v0, Landroid/view/inputmethod/EditorInfo;->autofillId:Landroid/view/autofill/AutofillId;

    .line 1346
    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->fieldId:I

    iput v1, v0, Landroid/view/inputmethod/EditorInfo;->fieldId:I

    .line 1347
    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->fieldName:Ljava/lang/String;

    iput-object v1, v0, Landroid/view/inputmethod/EditorInfo;->fieldName:Ljava/lang/String;

    .line 1348
    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    if-eqz v1, :cond_5c

    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->deepCopy()Landroid/os/Bundle;

    move-result-object v1

    goto :goto_5d

    :cond_5c
    const/4 v1, 0x0

    :goto_5d
    iput-object v1, v0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    .line 1349
    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->mInitialSurroundingText:Landroid/view/inputmethod/SurroundingText;

    iput-object v1, v0, Landroid/view/inputmethod/EditorInfo;->mInitialSurroundingText:Landroid/view/inputmethod/SurroundingText;

    .line 1350
    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->hintLocales:Landroid/os/LocaleList;

    iput-object v1, v0, Landroid/view/inputmethod/EditorInfo;->hintLocales:Landroid/os/LocaleList;

    .line 1351
    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->contentMimeTypes:[Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->cloneOrNull([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v0, Landroid/view/inputmethod/EditorInfo;->contentMimeTypes:[Ljava/lang/String;

    .line 1352
    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->targetInputMethodUser:Landroid/os/UserHandle;

    iput-object v1, v0, Landroid/view/inputmethod/EditorInfo;->targetInputMethodUser:Landroid/os/UserHandle;

    .line 1353
    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->mSupportedHandwritingGestureTypes:I

    iput v1, v0, Landroid/view/inputmethod/EditorInfo;->mSupportedHandwritingGestureTypes:I

    .line 1354
    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->mSupportedHandwritingGesturePreviewTypes:I

    iput v1, v0, Landroid/view/inputmethod/EditorInfo;->mSupportedHandwritingGesturePreviewTypes:I

    .line 1356
    return-object v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 1452
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist dump(Landroid/util/Printer;Ljava/lang/String;)V
    .registers 4

    .line 1286
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/view/inputmethod/EditorInfo;->dump(Landroid/util/Printer;Ljava/lang/String;Z)V

    .line 1287
    return-void
.end method

.method public blacklist dump(Landroid/util/Printer;Ljava/lang/String;Z)V
    .registers 6

    .line 1291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "inputType=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " imeOptions=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 1292
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " privateImeOptions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1291
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "actionLabel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " actionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->actionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "initialSelStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " initialSelEnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " initialToolType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->mInitialToolType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " initialCapsMode=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->initialCapsMode:I

    .line 1300
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1296
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "hintText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " label="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->label:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " autofillId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->autofillId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " fieldId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->fieldId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " fieldName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->fieldName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1307
    if-eqz p3, :cond_12f

    .line 1308
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, "extras="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1310
    :cond_12f
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, "hintLocales="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->hintLocales:Landroid/os/LocaleList;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1311
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string/jumbo v0, "supportedHandwritingGestureTypes="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->mSupportedHandwritingGestureTypes:I

    .line 1312
    invoke-static {v0}, Lcom/android/internal/inputmethod/InputMethodDebug;->handwritingGestureTypeFlagsToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1311
    invoke-interface {p1, p3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1314
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string/jumbo v0, "supportedHandwritingGesturePreviewTypes="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->mSupportedHandwritingGesturePreviewTypes:I

    .line 1315
    invoke-static {v0}, Lcom/android/internal/inputmethod/InputMethodDebug;->handwritingGestureTypeFlagsToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1314
    invoke-interface {p1, p3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1317
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, "isStylusHandwritingEnabled="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-boolean v0, p0, Landroid/view/inputmethod/EditorInfo;->mIsStylusHandwritingEnabled:Z

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1318
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string/jumbo v0, "writingToolsEnabled="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-boolean v0, p0, Landroid/view/inputmethod/EditorInfo;->mWritingToolsEnabled:Z

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1319
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, "contentMimeTypes="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->contentMimeTypes:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1320
    iget-object p3, p0, Landroid/view/inputmethod/EditorInfo;->targetInputMethodUser:Landroid/os/UserHandle;

    if-eqz p3, :cond_20b

    .line 1321
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string/jumbo p3, "targetInputMethodUserId="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Landroid/view/inputmethod/EditorInfo;->targetInputMethodUser:Landroid/os/UserHandle;

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1323
    :cond_20b
    return-void
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 7

    .line 1270
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 1271
    const-wide v0, 0x10500000001L

    iget v2, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1272
    const-wide v0, 0x10500000002L

    iget v2, p0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1273
    const-wide v0, 0x10900000003L

    iget-object v2, p0, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1274
    const-wide v0, 0x10900000004L

    iget-object v2, p0, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1275
    const-wide v0, 0x10500000005L

    iget v2, p0, Landroid/view/inputmethod/EditorInfo;->fieldId:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1276
    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->targetInputMethodUser:Landroid/os/UserHandle;

    if-eqz v0, :cond_48

    .line 1277
    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->targetInputMethodUser:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    const-wide v1, 0x10500000006L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1279
    :cond_48
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1280
    return-void
.end method

.method public whitelist getAutofillId()Landroid/view/autofill/AutofillId;
    .registers 2

    .line 1253
    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->autofillId:Landroid/view/autofill/AutofillId;

    return-object v0
.end method

.method public whitelist getInitialSelectedText(I)Ljava/lang/CharSequence;
    .registers 9

    .line 1039
    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->mInitialSurroundingText:Landroid/view/inputmethod/SurroundingText;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1040
    return-object v1

    .line 1044
    :cond_6
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    iget v2, p0, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    if-le v0, v2, :cond_f

    .line 1045
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    goto :goto_11

    :cond_f
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    .line 1046
    :goto_11
    iget v2, p0, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    iget v3, p0, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    if-le v2, v3, :cond_1a

    .line 1047
    iget v2, p0, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    goto :goto_1c

    :cond_1a
    iget v2, p0, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    .line 1049
    :goto_1c
    sub-int/2addr v2, v0

    .line 1050
    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->mInitialSurroundingText:Landroid/view/inputmethod/SurroundingText;

    invoke-virtual {v0}, Landroid/view/inputmethod/SurroundingText;->getSelectionStart()I

    move-result v0

    .line 1051
    iget-object v3, p0, Landroid/view/inputmethod/EditorInfo;->mInitialSurroundingText:Landroid/view/inputmethod/SurroundingText;

    invoke-virtual {v3}, Landroid/view/inputmethod/SurroundingText;->getSelectionEnd()I

    move-result v3

    .line 1052
    if-le v0, v3, :cond_2e

    .line 1053
    nop

    .line 1054
    nop

    .line 1055
    goto :goto_31

    .line 1052
    :cond_2e
    move v6, v3

    move v3, v0

    move v0, v6

    .line 1057
    :goto_31
    sub-int v4, v0, v3

    .line 1058
    iget v5, p0, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    if-ltz v5, :cond_58

    iget v5, p0, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    if-ltz v5, :cond_58

    if-eq v4, v2, :cond_3e

    goto :goto_58

    .line 1062
    :cond_3e
    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_4d

    .line 1063
    iget-object p1, p0, Landroid/view/inputmethod/EditorInfo;->mInitialSurroundingText:Landroid/view/inputmethod/SurroundingText;

    invoke-virtual {p1}, Landroid/view/inputmethod/SurroundingText;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1, v3, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_57

    .line 1064
    :cond_4d
    iget-object p1, p0, Landroid/view/inputmethod/EditorInfo;->mInitialSurroundingText:Landroid/view/inputmethod/SurroundingText;

    invoke-virtual {p1}, Landroid/view/inputmethod/SurroundingText;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1, v3, v0}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object p1

    .line 1062
    :goto_57
    return-object p1

    .line 1059
    :cond_58
    :goto_58
    return-object v1
.end method

.method public whitelist getInitialSurroundingText(III)Landroid/view/inputmethod/SurroundingText;
    .registers 8

    .line 1130
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 1131
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 1133
    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->mInitialSurroundingText:Landroid/view/inputmethod/SurroundingText;

    if-nez v0, :cond_c

    .line 1134
    const/4 p1, 0x0

    return-object p1

    .line 1137
    :cond_c
    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->mInitialSurroundingText:Landroid/view/inputmethod/SurroundingText;

    invoke-virtual {v0}, Landroid/view/inputmethod/SurroundingText;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 1138
    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->mInitialSurroundingText:Landroid/view/inputmethod/SurroundingText;

    invoke-virtual {v1}, Landroid/view/inputmethod/SurroundingText;->getSelectionStart()I

    move-result v1

    .line 1139
    iget-object v2, p0, Landroid/view/inputmethod/EditorInfo;->mInitialSurroundingText:Landroid/view/inputmethod/SurroundingText;

    invoke-virtual {v2}, Landroid/view/inputmethod/SurroundingText;->getSelectionEnd()I

    move-result v2

    .line 1140
    if-le v1, v2, :cond_29

    .line 1141
    nop

    .line 1142
    nop

    .line 1143
    move v3, v2

    move v2, v1

    move v1, v3

    .line 1146
    :cond_29
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1147
    add-int/2addr p2, v2

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 1148
    sub-int/2addr v1, p1

    .line 1149
    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_42

    .line 1150
    iget-object p3, p0, Landroid/view/inputmethod/EditorInfo;->mInitialSurroundingText:Landroid/view/inputmethod/SurroundingText;

    invoke-virtual {p3}, Landroid/view/inputmethod/SurroundingText;->getText()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-interface {p3, v1, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_4c

    .line 1151
    :cond_42
    iget-object p3, p0, Landroid/view/inputmethod/EditorInfo;->mInitialSurroundingText:Landroid/view/inputmethod/SurroundingText;

    invoke-virtual {p3}, Landroid/view/inputmethod/SurroundingText;->getText()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-static {p3, v1, p2}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object p2

    .line 1152
    :goto_4c
    sub-int/2addr v2, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 1153
    new-instance v0, Landroid/view/inputmethod/SurroundingText;

    iget-object v2, p0, Landroid/view/inputmethod/EditorInfo;->mInitialSurroundingText:Landroid/view/inputmethod/SurroundingText;

    .line 1154
    invoke-virtual {v2}, Landroid/view/inputmethod/SurroundingText;->getOffset()I

    move-result v2

    add-int/2addr v2, v1

    invoke-direct {v0, p2, p1, p3, v2}, Landroid/view/inputmethod/SurroundingText;-><init>(Ljava/lang/CharSequence;III)V

    .line 1153
    return-object v0
.end method

.method public whitelist getInitialTextAfterCursor(II)Ljava/lang/CharSequence;
    .registers 6

    .line 1082
    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->mInitialSurroundingText:Landroid/view/inputmethod/SurroundingText;

    if-nez v0, :cond_6

    .line 1083
    const/4 p1, 0x0

    return-object p1

    .line 1086
    :cond_6
    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->mInitialSurroundingText:Landroid/view/inputmethod/SurroundingText;

    invoke-virtual {v0}, Landroid/view/inputmethod/SurroundingText;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 1087
    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->mInitialSurroundingText:Landroid/view/inputmethod/SurroundingText;

    invoke-virtual {v1}, Landroid/view/inputmethod/SurroundingText;->getSelectionStart()I

    move-result v1

    iget-object v2, p0, Landroid/view/inputmethod/EditorInfo;->mInitialSurroundingText:Landroid/view/inputmethod/SurroundingText;

    .line 1088
    invoke-virtual {v2}, Landroid/view/inputmethod/SurroundingText;->getSelectionEnd()I

    move-result v2

    .line 1087
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1089
    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1090
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_35

    .line 1091
    iget-object p2, p0, Landroid/view/inputmethod/EditorInfo;->mInitialSurroundingText:Landroid/view/inputmethod/SurroundingText;

    invoke-virtual {p2}, Landroid/view/inputmethod/SurroundingText;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    add-int/2addr p1, v1

    invoke-interface {p2, v1, p1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_40

    .line 1092
    :cond_35
    iget-object p2, p0, Landroid/view/inputmethod/EditorInfo;->mInitialSurroundingText:Landroid/view/inputmethod/SurroundingText;

    invoke-virtual {p2}, Landroid/view/inputmethod/SurroundingText;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    add-int/2addr p1, v1

    invoke-static {p2, v1, p1}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object p1

    .line 1090
    :goto_40
    return-object p1
.end method

.method public whitelist getInitialTextBeforeCursor(II)Ljava/lang/CharSequence;
    .registers 5

    .line 1014
    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->mInitialSurroundingText:Landroid/view/inputmethod/SurroundingText;

    if-nez v0, :cond_6

    .line 1015
    const/4 p1, 0x0

    return-object p1

    .line 1018
    :cond_6
    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->mInitialSurroundingText:Landroid/view/inputmethod/SurroundingText;

    invoke-virtual {v0}, Landroid/view/inputmethod/SurroundingText;->getSelectionStart()I

    move-result v0

    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->mInitialSurroundingText:Landroid/view/inputmethod/SurroundingText;

    .line 1019
    invoke-virtual {v1}, Landroid/view/inputmethod/SurroundingText;->getSelectionEnd()I

    move-result v1

    .line 1018
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1020
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1021
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_2b

    .line 1022
    iget-object p2, p0, Landroid/view/inputmethod/EditorInfo;->mInitialSurroundingText:Landroid/view/inputmethod/SurroundingText;

    invoke-virtual {p2}, Landroid/view/inputmethod/SurroundingText;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    sub-int p1, v0, p1

    invoke-interface {p2, p1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_37

    .line 1023
    :cond_2b
    iget-object p2, p0, Landroid/view/inputmethod/EditorInfo;->mInitialSurroundingText:Landroid/view/inputmethod/SurroundingText;

    invoke-virtual {p2}, Landroid/view/inputmethod/SurroundingText;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    sub-int p1, v0, p1

    invoke-static {p2, p1, v0}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object p1

    .line 1021
    :goto_37
    return-object p1
.end method

.method public whitelist getInitialToolType()I
    .registers 2

    .line 1225
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->mInitialToolType:I

    return v0
.end method

.method public whitelist getSupportedHandwritingGesturePreviews()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Landroid/view/inputmethod/PreviewableHandwritingGesture;",
            ">;>;"
        }
    .end annotation

    .line 694
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 695
    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->mSupportedHandwritingGesturePreviewTypes:I

    if-nez v1, :cond_a

    .line 696
    return-object v0

    .line 698
    :cond_a
    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->mSupportedHandwritingGesturePreviewTypes:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_15

    .line 700
    const-class v1, Landroid/view/inputmethod/SelectGesture;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 702
    :cond_15
    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->mSupportedHandwritingGesturePreviewTypes:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_21

    .line 705
    const-class v1, Landroid/view/inputmethod/SelectRangeGesture;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 707
    :cond_21
    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->mSupportedHandwritingGesturePreviewTypes:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2c

    .line 709
    const-class v1, Landroid/view/inputmethod/DeleteGesture;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 711
    :cond_2c
    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->mSupportedHandwritingGesturePreviewTypes:I

    const/16 v2, 0x40

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_38

    .line 714
    const-class v1, Landroid/view/inputmethod/DeleteRangeGesture;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 716
    :cond_38
    return-object v0
.end method

.method public whitelist getSupportedHandwritingGestures()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Landroid/view/inputmethod/HandwritingGesture;",
            ">;>;"
        }
    .end annotation

    .line 600
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 601
    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->mSupportedHandwritingGestureTypes:I

    if-nez v1, :cond_a

    .line 602
    return-object v0

    .line 604
    :cond_a
    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->mSupportedHandwritingGestureTypes:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_15

    .line 606
    const-class v1, Landroid/view/inputmethod/SelectGesture;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 608
    :cond_15
    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->mSupportedHandwritingGestureTypes:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_21

    .line 610
    const-class v1, Landroid/view/inputmethod/SelectRangeGesture;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 612
    :cond_21
    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->mSupportedHandwritingGestureTypes:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2c

    .line 614
    const-class v1, Landroid/view/inputmethod/InsertGesture;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 616
    :cond_2c
    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->mSupportedHandwritingGestureTypes:I

    const/16 v2, 0x80

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_38

    .line 618
    const-class v1, Landroid/view/inputmethod/InsertModeGesture;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 620
    :cond_38
    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->mSupportedHandwritingGestureTypes:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_43

    .line 622
    const-class v1, Landroid/view/inputmethod/DeleteGesture;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 624
    :cond_43
    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->mSupportedHandwritingGestureTypes:I

    const/16 v2, 0x40

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_4f

    .line 626
    const-class v1, Landroid/view/inputmethod/DeleteRangeGesture;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 628
    :cond_4f
    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->mSupportedHandwritingGestureTypes:I

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5b

    .line 630
    const-class v1, Landroid/view/inputmethod/RemoveSpaceGesture;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 632
    :cond_5b
    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->mSupportedHandwritingGestureTypes:I

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_67

    .line 634
    const-class v1, Landroid/view/inputmethod/JoinOrSplitGesture;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 636
    :cond_67
    return-object v0
.end method

.method public whitelist isStylusHandwritingEnabled()Z
    .registers 2

    .line 757
    iget-boolean v0, p0, Landroid/view/inputmethod/EditorInfo;->mIsStylusHandwritingEnabled:Z

    return v0
.end method

.method public whitelist isWritingToolsEnabled()Z
    .registers 2

    .line 770
    iget-boolean v0, p0, Landroid/view/inputmethod/EditorInfo;->mWritingToolsEnabled:Z

    return v0
.end method

.method public blacklist kindofEquals(Landroid/view/inputmethod/EditorInfo;)Z
    .registers 6

    .line 1466
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 1467
    :cond_4
    const/4 v1, 0x1

    if-ne p0, p1, :cond_8

    return v1

    .line 1468
    :cond_8
    iget v2, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    iget v3, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-ne v2, v3, :cond_d2

    iget v2, p0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    iget v3, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    if-ne v2, v3, :cond_d2

    iget v2, p0, Landroid/view/inputmethod/EditorInfo;->internalImeOptions:I

    iget v3, p1, Landroid/view/inputmethod/EditorInfo;->internalImeOptions:I

    if-ne v2, v3, :cond_d2

    iget v2, p0, Landroid/view/inputmethod/EditorInfo;->actionId:I

    iget v3, p1, Landroid/view/inputmethod/EditorInfo;->actionId:I

    if-ne v2, v3, :cond_d2

    iget v2, p0, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    iget v3, p1, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    if-ne v2, v3, :cond_d2

    iget v2, p0, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    iget v3, p1, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    if-ne v2, v3, :cond_d2

    iget v2, p0, Landroid/view/inputmethod/EditorInfo;->initialCapsMode:I

    iget v3, p1, Landroid/view/inputmethod/EditorInfo;->initialCapsMode:I

    if-ne v2, v3, :cond_d2

    iget v2, p0, Landroid/view/inputmethod/EditorInfo;->fieldId:I

    iget v3, p1, Landroid/view/inputmethod/EditorInfo;->fieldId:I

    if-ne v2, v3, :cond_d2

    iget v2, p0, Landroid/view/inputmethod/EditorInfo;->mSupportedHandwritingGestureTypes:I

    iget v3, p1, Landroid/view/inputmethod/EditorInfo;->mSupportedHandwritingGestureTypes:I

    if-ne v2, v3, :cond_d2

    iget v2, p0, Landroid/view/inputmethod/EditorInfo;->mSupportedHandwritingGesturePreviewTypes:I

    iget v3, p1, Landroid/view/inputmethod/EditorInfo;->mSupportedHandwritingGesturePreviewTypes:I

    if-ne v2, v3, :cond_d2

    iget-object v2, p0, Landroid/view/inputmethod/EditorInfo;->autofillId:Landroid/view/autofill/AutofillId;

    iget-object v3, p1, Landroid/view/inputmethod/EditorInfo;->autofillId:Landroid/view/autofill/AutofillId;

    .line 1479
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d2

    iget-object v2, p0, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    iget-object v3, p1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    .line 1480
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d2

    iget-object v2, p0, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    .line 1481
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d2

    iget-object v2, p0, Landroid/view/inputmethod/EditorInfo;->fieldName:Ljava/lang/String;

    iget-object v3, p1, Landroid/view/inputmethod/EditorInfo;->fieldName:Ljava/lang/String;

    .line 1482
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d2

    iget-object v2, p0, Landroid/view/inputmethod/EditorInfo;->hintLocales:Landroid/os/LocaleList;

    iget-object v3, p1, Landroid/view/inputmethod/EditorInfo;->hintLocales:Landroid/os/LocaleList;

    .line 1483
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d2

    iget-object v2, p0, Landroid/view/inputmethod/EditorInfo;->targetInputMethodUser:Landroid/os/UserHandle;

    iget-object v3, p1, Landroid/view/inputmethod/EditorInfo;->targetInputMethodUser:Landroid/os/UserHandle;

    .line 1484
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d2

    iget-object v2, p0, Landroid/view/inputmethod/EditorInfo;->contentMimeTypes:[Ljava/lang/String;

    iget-object v3, p1, Landroid/view/inputmethod/EditorInfo;->contentMimeTypes:[Ljava/lang/String;

    .line 1485
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d2

    iget-object v2, p0, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    .line 1486
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d2

    iget-object v2, p0, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    .line 1487
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d2

    iget-object v2, p0, Landroid/view/inputmethod/EditorInfo;->label:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroid/view/inputmethod/EditorInfo;->label:Ljava/lang/CharSequence;

    .line 1488
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d2

    iget-object v2, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    iget-object v3, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    if-eq v2, v3, :cond_bc

    iget-object v2, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    if-eqz v2, :cond_d2

    iget-object v2, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    iget-object v3, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    .line 1489
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->kindofEquals(Landroid/os/BaseBundle;)Z

    move-result v2

    if-eqz v2, :cond_d2

    :cond_bc
    iget-object v2, p0, Landroid/view/inputmethod/EditorInfo;->mInitialSurroundingText:Landroid/view/inputmethod/SurroundingText;

    iget-object v3, p1, Landroid/view/inputmethod/EditorInfo;->mInitialSurroundingText:Landroid/view/inputmethod/SurroundingText;

    if-eq v2, v3, :cond_d0

    iget-object v2, p0, Landroid/view/inputmethod/EditorInfo;->mInitialSurroundingText:Landroid/view/inputmethod/SurroundingText;

    if-eqz v2, :cond_d2

    iget-object v2, p0, Landroid/view/inputmethod/EditorInfo;->mInitialSurroundingText:Landroid/view/inputmethod/SurroundingText;

    iget-object p1, p1, Landroid/view/inputmethod/EditorInfo;->mInitialSurroundingText:Landroid/view/inputmethod/SurroundingText;

    .line 1492
    invoke-virtual {v2, p1}, Landroid/view/inputmethod/SurroundingText;->isEqualTo(Landroid/view/inputmethod/SurroundingText;)Z

    move-result p1

    if-eqz p1, :cond_d2

    :cond_d0
    move v0, v1

    goto :goto_d3

    :cond_d2
    nop

    .line 1468
    :goto_d3
    return v0
.end method

.method public final whitelist makeCompatible(I)V
    .registers 3

    .line 1196
    const/16 v0, 0xb

    if-ge p1, v0, :cond_26

    .line 1197
    iget p1, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 p1, p1, 0xfff

    const v0, 0xfff000

    sparse-switch p1, :sswitch_data_28

    goto :goto_26

    .line 1203
    :sswitch_f
    iget p1, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/2addr p1, v0

    or-int/lit16 p1, p1, 0x81

    iput p1, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 1205
    goto :goto_26

    .line 1199
    :sswitch_17
    iget p1, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/2addr p1, v0

    or-int/lit8 p1, p1, 0x21

    iput p1, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 1201
    goto :goto_26

    .line 1208
    :sswitch_1f
    iget p1, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/2addr p1, v0

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 1213
    :cond_26
    :goto_26
    return-void

    nop

    :sswitch_data_28
    .sparse-switch
        0x2 -> :sswitch_1f
        0x12 -> :sswitch_1f
        0xd1 -> :sswitch_17
        0xe1 -> :sswitch_f
    .end sparse-switch
.end method

.method public whitelist setAutofillId(Landroid/view/autofill/AutofillId;)V
    .registers 2

    .line 1259
    iput-object p1, p0, Landroid/view/inputmethod/EditorInfo;->autofillId:Landroid/view/autofill/AutofillId;

    .line 1260
    return-void
.end method

.method public whitelist setInitialSurroundingSubText(Ljava/lang/CharSequence;I)V
    .registers 7

    .line 893
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 896
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-static {v0}, Landroid/view/inputmethod/EditorInfo;->isPasswordInputType(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 897
    iput-object v1, p0, Landroid/view/inputmethod/EditorInfo;->mInitialSurroundingText:Landroid/view/inputmethod/SurroundingText;

    .line 898
    return-void

    .line 902
    :cond_f
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    iget v2, p0, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    if-le v0, v2, :cond_18

    .line 903
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    goto :goto_1a

    :cond_18
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    :goto_1a
    sub-int/2addr v0, p2

    .line 904
    iget v2, p0, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    iget v3, p0, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    if-le v2, v3, :cond_24

    .line 905
    iget v2, p0, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    goto :goto_26

    :cond_24
    iget v2, p0, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    :goto_26
    sub-int/2addr v2, p2

    .line 907
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 909
    if-ltz p2, :cond_42

    if-ltz v0, :cond_42

    if-le v2, v3, :cond_32

    goto :goto_42

    .line 914
    :cond_32
    const/16 v1, 0x800

    if-gt v3, v1, :cond_3e

    .line 915
    new-instance v1, Landroid/view/inputmethod/SurroundingText;

    invoke-direct {v1, p1, v0, v2, p2}, Landroid/view/inputmethod/SurroundingText;-><init>(Ljava/lang/CharSequence;III)V

    iput-object v1, p0, Landroid/view/inputmethod/EditorInfo;->mInitialSurroundingText:Landroid/view/inputmethod/SurroundingText;

    .line 917
    return-void

    .line 920
    :cond_3e
    invoke-direct {p0, p1, v0, v2, p2}, Landroid/view/inputmethod/EditorInfo;->trimLongSurroundingText(Ljava/lang/CharSequence;III)V

    .line 921
    return-void

    .line 910
    :cond_42
    :goto_42
    iput-object v1, p0, Landroid/view/inputmethod/EditorInfo;->mInitialSurroundingText:Landroid/view/inputmethod/SurroundingText;

    .line 911
    return-void
.end method

.method public whitelist setInitialSurroundingText(Ljava/lang/CharSequence;)V
    .registers 3

    .line 862
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/inputmethod/EditorInfo;->setInitialSurroundingSubText(Ljava/lang/CharSequence;I)V

    .line 863
    return-void
.end method

.method public final blacklist setInitialSurroundingTextInternal(Landroid/view/inputmethod/SurroundingText;)V
    .registers 2

    .line 872
    iput-object p1, p0, Landroid/view/inputmethod/EditorInfo;->mInitialSurroundingText:Landroid/view/inputmethod/SurroundingText;

    .line 873
    return-void
.end method

.method public whitelist setInitialToolType(I)V
    .registers 2

    .line 1237
    iput p1, p0, Landroid/view/inputmethod/EditorInfo;->mInitialToolType:I

    .line 1238
    return-void
.end method

.method public whitelist setStylusHandwritingEnabled(Z)V
    .registers 2

    .line 746
    iput-boolean p1, p0, Landroid/view/inputmethod/EditorInfo;->mIsStylusHandwritingEnabled:Z

    .line 747
    return-void
.end method

.method public whitelist setSupportedHandwritingGesturePreviews(Ljava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Landroid/view/inputmethod/PreviewableHandwritingGesture;",
            ">;>;)V"
        }
    .end annotation

    .line 653
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 655
    iput v1, p0, Landroid/view/inputmethod/EditorInfo;->mSupportedHandwritingGesturePreviewTypes:I

    .line 656
    return-void

    .line 659
    :cond_d
    nop

    .line 660
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 661
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    const-class v2, Landroid/view/inputmethod/SelectGesture;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 663
    or-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_50

    .line 664
    :cond_2d
    const-class v2, Landroid/view/inputmethod/SelectRangeGesture;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 665
    or-int/lit8 v0, v1, 0x20

    move v1, v0

    goto :goto_50

    .line 666
    :cond_39
    const-class v2, Landroid/view/inputmethod/DeleteGesture;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 667
    or-int/lit8 v0, v1, 0x4

    move v1, v0

    goto :goto_50

    .line 668
    :cond_45
    const-class v2, Landroid/view/inputmethod/DeleteRangeGesture;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 669
    or-int/lit8 v0, v1, 0x40

    move v1, v0

    .line 674
    :goto_50
    goto :goto_12

    .line 671
    :cond_51
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported gesture type for preview: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 676
    :cond_6a
    iput v1, p0, Landroid/view/inputmethod/EditorInfo;->mSupportedHandwritingGesturePreviewTypes:I

    .line 677
    return-void
.end method

.method public whitelist setSupportedHandwritingGestures(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Landroid/view/inputmethod/HandwritingGesture;",
            ">;>;)V"
        }
    .end annotation

    .line 556
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 558
    iput v1, p0, Landroid/view/inputmethod/EditorInfo;->mSupportedHandwritingGestureTypes:I

    .line 559
    return-void

    .line 562
    :cond_d
    nop

    .line 563
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 564
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    const-class v2, Landroid/view/inputmethod/SelectGesture;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 566
    or-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_80

    .line 567
    :cond_2d
    const-class v2, Landroid/view/inputmethod/SelectRangeGesture;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 568
    or-int/lit8 v0, v1, 0x20

    move v1, v0

    goto :goto_80

    .line 569
    :cond_39
    const-class v2, Landroid/view/inputmethod/InsertGesture;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 570
    or-int/lit8 v0, v1, 0x2

    move v1, v0

    goto :goto_80

    .line 571
    :cond_45
    const-class v2, Landroid/view/inputmethod/InsertModeGesture;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 572
    or-int/lit16 v0, v1, 0x80

    move v1, v0

    goto :goto_80

    .line 573
    :cond_51
    const-class v2, Landroid/view/inputmethod/DeleteGesture;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 574
    or-int/lit8 v0, v1, 0x4

    move v1, v0

    goto :goto_80

    .line 575
    :cond_5d
    const-class v2, Landroid/view/inputmethod/DeleteRangeGesture;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_69

    .line 576
    or-int/lit8 v0, v1, 0x40

    move v1, v0

    goto :goto_80

    .line 577
    :cond_69
    const-class v2, Landroid/view/inputmethod/RemoveSpaceGesture;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_75

    .line 578
    or-int/lit8 v0, v1, 0x8

    move v1, v0

    goto :goto_80

    .line 579
    :cond_75
    const-class v2, Landroid/view/inputmethod/JoinOrSplitGesture;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_81

    .line 580
    or-int/lit8 v0, v1, 0x10

    move v1, v0

    .line 584
    :goto_80
    goto :goto_12

    .line 582
    :cond_81
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown gesture type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 586
    :cond_9a
    iput v1, p0, Landroid/view/inputmethod/EditorInfo;->mSupportedHandwritingGestureTypes:I

    .line 587
    return-void
.end method

.method public whitelist setWritingToolsEnabled(Z)V
    .registers 2

    .line 781
    iput-boolean p1, p0, Landroid/view/inputmethod/EditorInfo;->mWritingToolsEnabled:Z

    .line 782
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 1366
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1367
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1368
    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1369
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->internalImeOptions:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1370
    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 1371
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->actionId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1372
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1373
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1374
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->initialCapsMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1375
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->mInitialToolType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1376
    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 1377
    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->label:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 1378
    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1379
    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->autofillId:Landroid/view/autofill/AutofillId;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1380
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->fieldId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1381
    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->fieldName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1382
    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 1383
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->mSupportedHandwritingGestureTypes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1384
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->mSupportedHandwritingGesturePreviewTypes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1385
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/view/inputmethod/Flags;->editorinfoHandwritingEnabled()Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 1386
    iget-boolean v0, p0, Landroid/view/inputmethod/EditorInfo;->mIsStylusHandwritingEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1388
    :cond_6a
    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->mInitialSurroundingText:Landroid/view/inputmethod/SurroundingText;

    if-eqz v0, :cond_70

    const/4 v0, 0x1

    goto :goto_71

    :cond_70
    const/4 v0, 0x0

    :goto_71
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1389
    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->mInitialSurroundingText:Landroid/view/inputmethod/SurroundingText;

    if-eqz v0, :cond_7d

    .line 1390
    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->mInitialSurroundingText:Landroid/view/inputmethod/SurroundingText;

    invoke-virtual {v0, p1, p2}, Landroid/view/inputmethod/SurroundingText;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1392
    :cond_7d
    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->hintLocales:Landroid/os/LocaleList;

    if-eqz v0, :cond_87

    .line 1393
    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->hintLocales:Landroid/os/LocaleList;

    invoke-virtual {v0, p1, p2}, Landroid/os/LocaleList;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_8e

    .line 1395
    :cond_87
    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/os/LocaleList;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1397
    :goto_8e
    iget-object p2, p0, Landroid/view/inputmethod/EditorInfo;->contentMimeTypes:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1398
    iget-object p2, p0, Landroid/view/inputmethod/EditorInfo;->targetInputMethodUser:Landroid/os/UserHandle;

    invoke-static {p2, p1}, Landroid/os/UserHandle;->writeToParcel(Landroid/os/UserHandle;Landroid/os/Parcel;)V

    .line 1399
    iget-boolean p2, p0, Landroid/view/inputmethod/EditorInfo;->mWritingToolsEnabled:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1400
    iget-object p2, p0, Landroid/view/inputmethod/EditorInfo;->targetDevicePolicyUser:Landroid/os/UserHandle;

    invoke-static {p2, p1}, Landroid/os/UserHandle;->writeToParcel(Landroid/os/UserHandle;Landroid/os/Parcel;)V

    .line 1401
    return-void
.end method
