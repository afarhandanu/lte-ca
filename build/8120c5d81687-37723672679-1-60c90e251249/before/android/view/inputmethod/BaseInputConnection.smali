.class public Landroid/view/inputmethod/BaseInputConnection;
.super Ljava/lang/Object;
.source "BaseInputConnection.java"

# interfaces
.implements Landroid/view/inputmethod/InputConnection;


# static fields
.field static final greylist-max-o COMPOSING:Ljava/lang/Object;

.field private static final greylist-max-o DEBUG:Z = false

.field private static greylist-max-o INVALID_INDEX:I = 0x0

.field private static final greylist-max-o TAG:Ljava/lang/String; = "BaseInputConnection"


# instance fields
.field private greylist-max-o mDefaultComposingSpans:[Ljava/lang/Object;

.field greylist-max-o mEditable:Landroid/text/Editable;

.field final blacklist mFallbackMode:Z

.field protected final greylist-max-o mIMM:Landroid/view/inputmethod/InputMethodManager;

.field greylist-max-o mKeyCharacterMap:Landroid/view/KeyCharacterMap;

.field final greylist-max-o mTargetView:Landroid/view/View;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 62
    new-instance v0, Landroid/view/inputmethod/ComposingText;

    invoke-direct {v0}, Landroid/view/inputmethod/ComposingText;-><init>()V

    sput-object v0, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    .line 327
    const/4 v0, -0x1

    sput v0, Landroid/view/inputmethod/BaseInputConnection;->INVALID_INDEX:I

    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/View;Z)V
    .registers 5

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    .line 90
    iput-object p1, p0, Landroid/view/inputmethod/BaseInputConnection;->mTargetView:Landroid/view/View;

    .line 91
    xor-int/lit8 p1, p2, 0x1

    iput-boolean p1, p0, Landroid/view/inputmethod/BaseInputConnection;->mFallbackMode:Z

    .line 92
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/view/inputmethod/InputMethodManager;Z)V
    .registers 3

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    .line 83
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/view/inputmethod/BaseInputConnection;->mTargetView:Landroid/view/View;

    .line 84
    xor-int/lit8 p1, p2, 0x1

    iput-boolean p1, p0, Landroid/view/inputmethod/BaseInputConnection;->mFallbackMode:Z

    .line 85
    return-void
.end method

.method private greylist-max-o ensureDefaultComposingSpans()V
    .registers 5

    .line 871
    iget-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    if-nez v0, :cond_43

    .line 873
    iget-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mTargetView:Landroid/view/View;

    if-eqz v0, :cond_f

    .line 874
    iget-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mTargetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_15

    .line 876
    :cond_f
    iget-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getFallbackContextFromServedView()Landroid/content/Context;

    move-result-object v0

    .line 878
    :goto_15
    if-eqz v0, :cond_43

    .line 879
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v1, 0x1010230

    filled-new-array {v1}, [I

    move-result-object v1

    .line 880
    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 883
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 884
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 885
    if-eqz v2, :cond_43

    instance-of v0, v2, Landroid/text/Spanned;

    if-eqz v0, :cond_43

    .line 886
    move-object v0, v2

    check-cast v0, Landroid/text/Spanned;

    .line 887
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const-class v3, Ljava/lang/Object;

    .line 886
    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    .line 891
    :cond_43
    return-void
.end method

.method private static greylist-max-o findIndexBackward(Ljava/lang/CharSequence;II)I
    .registers 7

    .line 330
    nop

    .line 331
    nop

    .line 332
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 333
    if-ltz p1, :cond_48

    if-ge v0, p1, :cond_b

    goto :goto_48

    .line 336
    :cond_b
    if-gez p2, :cond_10

    .line 337
    sget p0, Landroid/view/inputmethod/BaseInputConnection;->INVALID_INDEX:I

    return p0

    .line 339
    :cond_10
    const/4 v0, 0x0

    move v1, v0

    .line 341
    :goto_12
    if-nez p2, :cond_15

    .line 342
    return p1

    .line 345
    :cond_15
    add-int/lit8 p1, p1, -0x1

    .line 346
    if-gez p1, :cond_1f

    .line 347
    if-eqz v1, :cond_1e

    .line 348
    sget p0, Landroid/view/inputmethod/BaseInputConnection;->INVALID_INDEX:I

    return p0

    .line 350
    :cond_1e
    return v0

    .line 352
    :cond_1f
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 353
    if-eqz v1, :cond_33

    .line 354
    invoke-static {v2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 355
    sget p0, Landroid/view/inputmethod/BaseInputConnection;->INVALID_INDEX:I

    return p0

    .line 357
    :cond_2e
    nop

    .line 358
    add-int/lit8 p2, p2, -0x1

    .line 359
    move v1, v0

    goto :goto_12

    .line 361
    :cond_33
    invoke-static {v2}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v3

    if-nez v3, :cond_3c

    .line 362
    add-int/lit8 p2, p2, -0x1

    .line 363
    goto :goto_12

    .line 365
    :cond_3c
    invoke-static {v2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 366
    sget p0, Landroid/view/inputmethod/BaseInputConnection;->INVALID_INDEX:I

    return p0

    .line 368
    :cond_45
    nop

    .line 369
    const/4 v1, 0x1

    goto :goto_12

    .line 334
    :cond_48
    :goto_48
    sget p0, Landroid/view/inputmethod/BaseInputConnection;->INVALID_INDEX:I

    return p0
.end method

.method private static greylist-max-o findIndexForward(Ljava/lang/CharSequence;II)I
    .registers 8

    .line 374
    nop

    .line 375
    nop

    .line 376
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 377
    if-ltz p1, :cond_4c

    if-ge v0, p1, :cond_b

    goto :goto_4c

    .line 380
    :cond_b
    if-gez p2, :cond_10

    .line 381
    sget p0, Landroid/view/inputmethod/BaseInputConnection;->INVALID_INDEX:I

    return p0

    .line 383
    :cond_10
    const/4 v1, 0x0

    move v2, v1

    .line 386
    :goto_12
    if-nez p2, :cond_15

    .line 387
    return p1

    .line 390
    :cond_15
    if-lt p1, v0, :cond_1d

    .line 391
    if-eqz v2, :cond_1c

    .line 392
    sget p0, Landroid/view/inputmethod/BaseInputConnection;->INVALID_INDEX:I

    return p0

    .line 394
    :cond_1c
    return v0

    .line 396
    :cond_1d
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 397
    if-eqz v2, :cond_33

    .line 398
    invoke-static {v3}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v2

    if-nez v2, :cond_2c

    .line 399
    sget p0, Landroid/view/inputmethod/BaseInputConnection;->INVALID_INDEX:I

    return p0

    .line 401
    :cond_2c
    add-int/lit8 p2, p2, -0x1

    .line 402
    nop

    .line 403
    add-int/lit8 p1, p1, 0x1

    .line 404
    move v2, v1

    goto :goto_12

    .line 406
    :cond_33
    invoke-static {v3}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v4

    if-nez v4, :cond_3e

    .line 407
    add-int/lit8 p2, p2, -0x1

    .line 408
    add-int/lit8 p1, p1, 0x1

    .line 409
    goto :goto_12

    .line 411
    :cond_3e
    invoke-static {v3}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 412
    sget p0, Landroid/view/inputmethod/BaseInputConnection;->INVALID_INDEX:I

    return p0

    .line 414
    :cond_47
    nop

    .line 415
    add-int/lit8 p1, p1, 0x1

    .line 416
    const/4 v2, 0x1

    goto :goto_12

    .line 378
    :cond_4c
    :goto_4c
    sget p0, Landroid/view/inputmethod/BaseInputConnection;->INVALID_INDEX:I

    return p0
.end method

.method public static whitelist getComposingSpanEnd(Landroid/text/Spannable;)I
    .registers 2

    .line 157
    sget-object v0, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static whitelist getComposingSpanStart(Landroid/text/Spannable;)I
    .registers 2

    .line 152
    sget-object v0, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static final whitelist removeComposingSpans(Landroid/text/Spannable;)V
    .registers 5

    .line 100
    sget-object v0, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 101
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v0

    const-class v1, Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {p0, v2, v0, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    .line 102
    if-eqz v0, :cond_27

    .line 103
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    :goto_15
    if-ltz v1, :cond_27

    .line 104
    aget-object v2, v0, v1

    .line 105
    invoke-interface {p0, v2}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v3

    and-int/lit16 v3, v3, 0x100

    if-eqz v3, :cond_24

    .line 106
    invoke-interface {p0, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 103
    :cond_24
    add-int/lit8 v1, v1, -0x1

    goto :goto_15

    .line 110
    :cond_27
    return-void
.end method

.method private greylist-max-o replaceText(Ljava/lang/CharSequence;IZ)V
    .registers 13

    .line 930
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 931
    if-nez v0, :cond_7

    .line 932
    return-void

    .line 935
    :cond_7
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->beginBatchEdit()Z

    .line 938
    invoke-static {v0}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v1

    .line 939
    invoke-static {v0}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v2

    .line 943
    if-ge v2, v1, :cond_19

    .line 944
    nop

    .line 945
    nop

    .line 946
    move v8, v2

    move v2, v1

    move v1, v8

    .line 949
    :cond_19
    const/4 v3, -0x1

    if-eq v1, v3, :cond_24

    if-eq v2, v3, :cond_24

    .line 950
    invoke-static {v0}, Landroid/view/inputmethod/BaseInputConnection;->removeComposingSpans(Landroid/text/Spannable;)V

    move v3, v1

    move v4, v2

    goto :goto_3c

    .line 952
    :cond_24
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    .line 953
    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 954
    const/4 v2, 0x0

    if-gez v1, :cond_30

    move v1, v2

    .line 955
    :cond_30
    if-gez v0, :cond_33

    move v0, v2

    .line 956
    :cond_33
    if-ge v0, v1, :cond_3a

    .line 957
    nop

    .line 958
    nop

    .line 959
    move v3, v0

    move v4, v1

    goto :goto_3c

    .line 956
    :cond_3a
    move v4, v0

    move v3, v1

    .line 962
    :goto_3c
    move-object v2, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    invoke-direct/range {v2 .. v7}, Landroid/view/inputmethod/BaseInputConnection;->replaceTextInternal(IILjava/lang/CharSequence;IZ)V

    .line 963
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->endBatchEdit()Z

    .line 964
    return-void
.end method

.method private blacklist replaceTextInternal(IILjava/lang/CharSequence;IZ)V
    .registers 11

    .line 968
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 969
    if-nez v0, :cond_7

    .line 970
    return-void

    .line 973
    :cond_7
    const/4 v1, 0x0

    if-eqz p5, :cond_3a

    .line 974
    nop

    .line 975
    instance-of p5, p3, Landroid/text/Spannable;

    if-nez p5, :cond_34

    .line 976
    new-instance p5, Landroid/text/SpannableStringBuilder;

    invoke-direct {p5, p3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 977
    nop

    .line 978
    invoke-direct {p0}, Landroid/view/inputmethod/BaseInputConnection;->ensureDefaultComposingSpans()V

    .line 979
    iget-object p3, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    if-eqz p3, :cond_32

    .line 980
    move p3, v1

    :goto_1d
    iget-object v2, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    array-length v2, v2

    if-ge p3, v2, :cond_32

    .line 981
    iget-object v2, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    aget-object v2, v2, p3

    invoke-interface {p5}, Landroid/text/Spannable;->length()I

    move-result v3

    const/16 v4, 0x121

    invoke-interface {p5, v2, v1, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 980
    add-int/lit8 p3, p3, 0x1

    goto :goto_1d

    .line 988
    :cond_32
    move-object p3, p5

    goto :goto_37

    .line 986
    :cond_34
    move-object p5, p3

    check-cast p5, Landroid/text/Spannable;

    .line 988
    :goto_37
    invoke-static {p5}, Landroid/view/inputmethod/BaseInputConnection;->setComposingSpans(Landroid/text/Spannable;)V

    .line 1017
    :cond_3a
    nop

    .line 1018
    if-lez p4, :cond_41

    .line 1019
    add-int/lit8 p5, p2, -0x1

    add-int/2addr p5, p4

    goto :goto_43

    .line 1021
    :cond_41
    add-int p5, p4, p1

    .line 1023
    :goto_43
    if-gez p5, :cond_46

    goto :goto_47

    :cond_46
    move v1, p5

    .line 1024
    :goto_47
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result p5

    if-le v1, p5, :cond_51

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    .line 1025
    :cond_51
    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 1026
    invoke-interface {v0, p1, p2, p3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1031
    if-nez p4, :cond_5e

    if-ne p1, p2, :cond_5e

    .line 1032
    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 1040
    :cond_5e
    return-void
.end method

.method private greylist-max-o sendCurrentText()V
    .registers 11

    .line 832
    iget-boolean v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mFallbackMode:Z

    if-nez v0, :cond_5

    .line 833
    return-void

    .line 836
    :cond_5
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 837
    if-eqz v0, :cond_53

    .line 838
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    .line 839
    if-nez v1, :cond_12

    .line 840
    return-void

    .line 842
    :cond_12
    const/4 v2, 0x1

    if-ne v1, v2, :cond_3e

    .line 845
    iget-object v1, p0, Landroid/view/inputmethod/BaseInputConnection;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    if-nez v1, :cond_20

    .line 846
    const/4 v1, -0x1

    invoke-static {v1}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v1

    iput-object v1, p0, Landroid/view/inputmethod/BaseInputConnection;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    .line 848
    :cond_20
    new-array v1, v2, [C

    .line 849
    const/4 v3, 0x0

    invoke-interface {v0, v3, v2, v1, v3}, Landroid/text/Editable;->getChars(II[CI)V

    .line 850
    iget-object v2, p0, Landroid/view/inputmethod/BaseInputConnection;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    invoke-virtual {v2, v1}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v1

    .line 851
    if-eqz v1, :cond_3e

    .line 852
    nop

    :goto_2f
    array-length v2, v1

    if-ge v3, v2, :cond_3a

    .line 854
    aget-object v2, v1, v3

    invoke-virtual {p0, v2}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 852
    add-int/lit8 v3, v3, 0x1

    goto :goto_2f

    .line 856
    :cond_3a
    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 857
    return-void

    .line 863
    :cond_3e
    new-instance v4, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 864
    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, -0x1

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v9}, Landroid/view/KeyEvent;-><init>(JLjava/lang/String;II)V

    .line 865
    invoke-virtual {p0, v4}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 866
    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 868
    :cond_53
    return-void
.end method

.method public static whitelist setComposingSpans(Landroid/text/Spannable;)V
    .registers 3

    .line 118
    const/4 v0, 0x0

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v1

    invoke-static {p0, v0, v1}, Landroid/view/inputmethod/BaseInputConnection;->setComposingSpans(Landroid/text/Spannable;II)V

    .line 119
    return-void
.end method

.method public static greylist-max-o setComposingSpans(Landroid/text/Spannable;II)V
    .registers 10

    .line 123
    const-class v0, Ljava/lang/Object;

    invoke-interface {p0, p1, p2, v0}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    .line 124
    const/16 v1, 0x121

    if-eqz v0, :cond_36

    .line 125
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    :goto_d
    if-ltz v2, :cond_36

    .line 126
    aget-object v3, v0, v2

    .line 127
    sget-object v4, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    if-ne v3, v4, :cond_19

    .line 128
    invoke-interface {p0, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 129
    goto :goto_33

    .line 132
    :cond_19
    invoke-interface {p0, v3}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v4

    .line 133
    and-int/lit16 v5, v4, 0x133

    if-eq v5, v1, :cond_33

    .line 135
    nop

    .line 137
    invoke-interface {p0, v3}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 138
    invoke-interface {p0, v3}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    and-int/lit8 v4, v4, -0x34

    or-int/lit16 v4, v4, 0x100

    or-int/lit8 v4, v4, 0x21

    .line 135
    invoke-interface {p0, v3, v5, v6, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 125
    :cond_33
    :goto_33
    add-int/lit8 v2, v2, -0x1

    goto :goto_d

    .line 146
    :cond_36
    sget-object v0, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    invoke-interface {p0, v0, p1, p2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 148
    return-void
.end method


# virtual methods
.method public whitelist beginBatchEdit()Z
    .registers 2

    .line 179
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist clearMetaKeyStates(I)Z
    .registers 3

    .line 215
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 216
    if-nez v0, :cond_8

    const/4 p1, 0x0

    return p1

    .line 217
    :cond_8
    invoke-static {v0, p1}, Landroid/text/method/MetaKeyKeyListener;->clearMetaKeyState(Landroid/text/Editable;I)V

    .line 218
    const/4 p1, 0x1

    return p1
.end method

.method public whitelist closeConnection()V
    .registers 2

    .line 205
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->finishComposingText()Z

    .line 206
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/inputmethod/BaseInputConnection;->setImeConsumesInput(Z)Z

    .line 207
    return-void
.end method

.method public whitelist commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z
    .registers 2

    .line 224
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist commitContent(Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;)Z
    .registers 9

    .line 1049
    iget-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mTargetView:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1050
    return v1

    .line 1053
    :cond_6
    invoke-virtual {p1}, Landroid/view/inputmethod/InputContentInfo;->getDescription()Landroid/content/ClipDescription;

    .line 1054
    iget-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mTargetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getReceiveContentMimeTypes()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_12

    .line 1058
    return v1

    .line 1060
    :cond_12
    const/4 v0, 0x1

    and-int/2addr p2, v0

    if-eqz p2, :cond_23

    .line 1062
    :try_start_16
    invoke-virtual {p1}, Landroid/view/inputmethod/InputContentInfo;->requestPermission()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_19} :catch_1a

    .line 1066
    goto :goto_23

    .line 1063
    :catch_1a
    move-exception p1

    .line 1064
    const-string p2, "BaseInputConnection"

    const-string p3, "Can\'t insert content from IME; requestPermission() failed"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1065
    return v1

    .line 1068
    :cond_23
    :goto_23
    new-instance p2, Landroid/content/ClipData;

    invoke-virtual {p1}, Landroid/view/inputmethod/InputContentInfo;->getDescription()Landroid/content/ClipDescription;

    move-result-object v2

    new-instance v3, Landroid/content/ClipData$Item;

    .line 1069
    invoke-virtual {p1}, Landroid/view/inputmethod/InputContentInfo;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    invoke-direct {p2, v2, v3}, Landroid/content/ClipData;-><init>(Landroid/content/ClipDescription;Landroid/content/ClipData$Item;)V

    .line 1070
    new-instance v2, Landroid/view/ContentInfo$Builder;

    const/4 v3, 0x2

    invoke-direct {v2, p2, v3}, Landroid/view/ContentInfo$Builder;-><init>(Landroid/content/ClipData;I)V

    .line 1071
    invoke-virtual {p1}, Landroid/view/inputmethod/InputContentInfo;->getLinkUri()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {v2, p2}, Landroid/view/ContentInfo$Builder;->setLinkUri(Landroid/net/Uri;)Landroid/view/ContentInfo$Builder;

    move-result-object p2

    .line 1072
    invoke-virtual {p2, p3}, Landroid/view/ContentInfo$Builder;->setExtras(Landroid/os/Bundle;)Landroid/view/ContentInfo$Builder;

    move-result-object p2

    .line 1073
    invoke-virtual {p2, p1}, Landroid/view/ContentInfo$Builder;->setInputContentInfo(Landroid/view/inputmethod/InputContentInfo;)Landroid/view/ContentInfo$Builder;

    move-result-object p1

    .line 1074
    invoke-virtual {p1}, Landroid/view/ContentInfo$Builder;->build()Landroid/view/ContentInfo;

    move-result-object p1

    .line 1075
    iget-object p2, p0, Landroid/view/inputmethod/BaseInputConnection;->mTargetView:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->performReceiveContent(Landroid/view/ContentInfo;)Landroid/view/ContentInfo;

    move-result-object p1

    if-nez p1, :cond_58

    move v1, v0

    :cond_58
    return v1
.end method

.method public whitelist commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z
    .registers 2

    .line 230
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist commitText(Ljava/lang/CharSequence;I)Z
    .registers 4

    .line 241
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/inputmethod/BaseInputConnection;->replaceText(Ljava/lang/CharSequence;IZ)V

    .line 242
    invoke-direct {p0}, Landroid/view/inputmethod/BaseInputConnection;->sendCurrentText()V

    .line 243
    const/4 p1, 0x1

    return p1
.end method

.method public whitelist deleteSurroundingText(II)Z
    .registers 11

    .line 264
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 265
    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 267
    :cond_8
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->beginBatchEdit()Z

    .line 269
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    .line 270
    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v3

    .line 272
    if-le v2, v3, :cond_1a

    .line 273
    nop

    .line 274
    nop

    .line 275
    move v7, v3

    move v3, v2

    move v2, v7

    .line 279
    :cond_1a
    const/4 v4, -0x1

    if-eq v2, v4, :cond_67

    if-ne v3, v4, :cond_20

    goto :goto_67

    .line 285
    :cond_20
    invoke-static {v0}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v5

    .line 286
    invoke-static {v0}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v6

    .line 287
    if-ge v6, v5, :cond_2f

    .line 288
    nop

    .line 289
    nop

    .line 290
    move v7, v6

    move v6, v5

    move v5, v7

    .line 292
    :cond_2f
    if-eq v5, v4, :cond_39

    if-eq v6, v4, :cond_39

    .line 293
    if-ge v5, v2, :cond_36

    move v2, v5

    .line 294
    :cond_36
    if-le v6, v3, :cond_39

    move v3, v6

    .line 297
    :cond_39
    nop

    .line 299
    if-lez p1, :cond_4b

    .line 300
    sub-int p1, v2, p1

    .line 301
    if-gez p1, :cond_41

    move p1, v1

    .line 303
    :cond_41
    sub-int v4, v2, p1

    .line 304
    if-ltz v2, :cond_4b

    if-lez v4, :cond_4b

    .line 305
    invoke-interface {v0, p1, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 306
    move v1, v4

    .line 310
    :cond_4b
    if-lez p2, :cond_62

    .line 311
    sub-int/2addr v3, v1

    .line 313
    add-int/2addr p2, v3

    .line 314
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result p1

    if-le p2, p1, :cond_59

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result p2

    .line 316
    :cond_59
    sub-int p1, p2, v3

    .line 317
    if-ltz v3, :cond_62

    if-lez p1, :cond_62

    .line 318
    invoke-interface {v0, v3, p2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 322
    :cond_62
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->endBatchEdit()Z

    .line 324
    const/4 p1, 0x1

    return p1

    .line 280
    :cond_67
    :goto_67
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->endBatchEdit()Z

    .line 281
    return v1
.end method

.method public whitelist deleteSurroundingTextInCodePoints(II)Z
    .registers 11

    .line 434
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 435
    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 437
    :cond_8
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->beginBatchEdit()Z

    .line 439
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    .line 440
    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v3

    .line 442
    if-le v2, v3, :cond_1a

    .line 443
    nop

    .line 444
    nop

    .line 445
    move v7, v3

    move v3, v2

    move v2, v7

    .line 449
    :cond_1a
    invoke-static {v0}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v4

    .line 450
    invoke-static {v0}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v5

    .line 451
    if-ge v5, v4, :cond_29

    .line 452
    nop

    .line 453
    nop

    .line 454
    move v7, v5

    move v5, v4

    move v4, v7

    .line 456
    :cond_29
    const/4 v6, -0x1

    if-eq v4, v6, :cond_34

    if-eq v5, v6, :cond_34

    .line 457
    if-ge v4, v2, :cond_31

    move v2, v4

    .line 458
    :cond_31
    if-le v5, v3, :cond_34

    move v3, v5

    .line 461
    :cond_34
    if-ltz v2, :cond_60

    if-ltz v3, :cond_60

    .line 462
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {v0, v2, p1}, Landroid/view/inputmethod/BaseInputConnection;->findIndexBackward(Ljava/lang/CharSequence;II)I

    move-result p1

    .line 463
    sget v4, Landroid/view/inputmethod/BaseInputConnection;->INVALID_INDEX:I

    if-eq p1, v4, :cond_60

    .line 464
    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {v0, v3, p2}, Landroid/view/inputmethod/BaseInputConnection;->findIndexForward(Ljava/lang/CharSequence;II)I

    move-result p2

    .line 465
    sget v1, Landroid/view/inputmethod/BaseInputConnection;->INVALID_INDEX:I

    if-eq p2, v1, :cond_60

    .line 466
    sub-int v1, v2, p1

    .line 467
    if-lez v1, :cond_57

    .line 468
    invoke-interface {v0, p1, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 470
    :cond_57
    sub-int p1, p2, v3

    .line 471
    if-lez p1, :cond_60

    .line 472
    sub-int/2addr v3, v1

    sub-int/2addr p2, v1

    invoke-interface {v0, v3, p2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 483
    :cond_60
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->endBatchEdit()Z

    .line 485
    const/4 p1, 0x1

    return p1
.end method

.method public whitelist endBatchEdit()Z
    .registers 2

    .line 185
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist endComposingRegionEditInternal()V
    .registers 1

    .line 196
    return-void
.end method

.method public whitelist finishComposingText()Z
    .registers 2

    .line 496
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 497
    if-eqz v0, :cond_15

    .line 498
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->beginBatchEdit()Z

    .line 499
    invoke-static {v0}, Landroid/view/inputmethod/BaseInputConnection;->removeComposingSpans(Landroid/text/Spannable;)V

    .line 501
    invoke-direct {p0}, Landroid/view/inputmethod/BaseInputConnection;->sendCurrentText()V

    .line 502
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->endBatchEdit()Z

    .line 503
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->endComposingRegionEditInternal()V

    .line 505
    :cond_15
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist getCursorCapsMode(I)I
    .registers 5

    .line 515
    iget-boolean v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mFallbackMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    .line 517
    :cond_6
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 518
    if-nez v0, :cond_d

    return v1

    .line 520
    :cond_d
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    .line 521
    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    .line 523
    if-le v1, v2, :cond_1a

    .line 524
    nop

    .line 525
    nop

    .line 526
    move v1, v2

    .line 529
    :cond_1a
    invoke-static {v0, v1, p1}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result p1

    return p1
.end method

.method public whitelist getEditable()Landroid/text/Editable;
    .registers 3

    .line 169
    iget-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mEditable:Landroid/text/Editable;

    if-nez v0, :cond_16

    .line 170
    invoke-static {}, Landroid/text/Editable$Factory;->getInstance()Landroid/text/Editable$Factory;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mEditable:Landroid/text/Editable;

    .line 171
    iget-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mEditable:Landroid/text/Editable;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 173
    :cond_16
    iget-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mEditable:Landroid/text/Editable;

    return-object v0
.end method

.method public whitelist getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .registers 3

    .line 536
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist getHandler()Landroid/os/Handler;
    .registers 2

    .line 733
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getSelectedText(I)Ljava/lang/CharSequence;
    .registers 7

    .line 580
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 581
    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 583
    :cond_8
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    .line 584
    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v3

    .line 586
    if-le v2, v3, :cond_17

    .line 587
    nop

    .line 588
    nop

    .line 589
    move v4, v3

    move v3, v2

    move v2, v4

    .line 592
    :cond_17
    if-eq v2, v3, :cond_2a

    if-gez v2, :cond_1c

    goto :goto_2a

    .line 594
    :cond_1c
    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_25

    .line 595
    invoke-interface {v0, v2, v3}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    .line 597
    :cond_25
    invoke-static {v0, v2, v3}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 592
    :cond_2a
    :goto_2a
    return-object v1
.end method

.method public whitelist getSurroundingText(III)Landroid/view/inputmethod/SurroundingText;
    .registers 12

    .line 640
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 641
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 643
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 647
    if-eqz v0, :cond_50

    iget-object v1, p0, Landroid/view/inputmethod/BaseInputConnection;->mEditable:Landroid/text/Editable;

    if-ne v1, v0, :cond_11

    goto :goto_50

    .line 651
    :cond_11
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    .line 652
    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    .line 655
    if-ltz v1, :cond_4e

    if-gez v2, :cond_1e

    goto :goto_4e

    .line 659
    :cond_1e
    if-le v1, v2, :cond_25

    .line 660
    nop

    .line 661
    nop

    .line 662
    move v7, v2

    move v2, v1

    move v1, v7

    .line 666
    :cond_25
    const/4 v3, 0x0

    sub-int p1, v1, p1

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 667
    int-to-long v3, v2

    int-to-long v5, p2

    add-long/2addr v3, v5

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result p2

    int-to-long v5, p2

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int p2, v3

    .line 670
    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_42

    .line 671
    invoke-interface {v0, p1, p2}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_46

    .line 673
    :cond_42
    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object p2

    .line 675
    :goto_46
    new-instance p3, Landroid/view/inputmethod/SurroundingText;

    sub-int/2addr v1, p1

    sub-int/2addr v2, p1

    invoke-direct {p3, p2, v1, v2, p1}, Landroid/view/inputmethod/SurroundingText;-><init>(Ljava/lang/CharSequence;III)V

    return-object p3

    .line 656
    :cond_4e
    :goto_4e
    const/4 p1, 0x0

    return-object p1

    .line 648
    :cond_50
    :goto_50
    invoke-super {p0, p1, p2, p3}, Landroid/view/inputmethod/InputConnection;->getSurroundingText(III)Landroid/view/inputmethod/SurroundingText;

    move-result-object p1

    return-object p1
.end method

.method public whitelist getTextAfterCursor(II)Ljava/lang/CharSequence;
    .registers 9

    .line 607
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 609
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 610
    if-nez v0, :cond_b

    const/4 p1, 0x0

    return-object p1

    .line 612
    :cond_b
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    .line 613
    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    .line 615
    if-le v1, v2, :cond_18

    .line 616
    nop

    .line 617
    nop

    .line 618
    goto :goto_19

    .line 615
    :cond_18
    move v1, v2

    .line 622
    :goto_19
    if-gez v1, :cond_1c

    .line 623
    const/4 v1, 0x0

    .line 625
    :cond_1c
    int-to-long v2, v1

    int-to-long v4, p1

    add-long/2addr v2, v4

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result p1

    int-to-long v4, p1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int p1, v2

    .line 626
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_32

    .line 627
    invoke-interface {v0, v1, p1}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    .line 629
    :cond_32
    invoke-static {v0, v1, p1}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist getTextBeforeCursor(II)Ljava/lang/CharSequence;
    .registers 6

    .line 546
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 548
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 549
    if-nez v0, :cond_b

    const/4 p1, 0x0

    return-object p1

    .line 551
    :cond_b
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    .line 552
    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    .line 554
    if-le v1, v2, :cond_18

    .line 555
    nop

    .line 556
    nop

    .line 557
    move v1, v2

    .line 560
    :cond_18
    if-gtz v1, :cond_1d

    .line 561
    const-string p1, ""

    return-object p1

    .line 564
    :cond_1d
    if-le p1, v1, :cond_20

    .line 565
    move p1, v1

    .line 568
    :cond_20
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_2b

    .line 569
    sub-int p1, v1, p1

    invoke-interface {v0, p1, v1}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    .line 571
    :cond_2b
    sub-int p1, v1, p1

    invoke-static {v0, p1, v1}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist performContextMenuAction(I)Z
    .registers 2

    .line 715
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist performEditorAction(I)Z
    .registers 14

    .line 682
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 683
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v10, 0x0

    const/16 v11, 0x16

    const/4 v5, 0x0

    const/16 v6, 0x42

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    move-wide v3, v1

    invoke-direct/range {v0 .. v11}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-virtual {p0, v0}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 696
    new-instance v0, Landroid/view/KeyEvent;

    .line 698
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v11}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    .line 696
    invoke-virtual {p0, v0}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 709
    const/4 p1, 0x1

    return p1
.end method

.method public whitelist performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 3

    .line 721
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist replaceText(IILjava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)Z
    .registers 12

    .line 900
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 901
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 909
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object p5

    .line 910
    if-nez p5, :cond_e

    .line 911
    const/4 p1, 0x0

    return p1

    .line 913
    :cond_e
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->beginBatchEdit()Z

    .line 914
    invoke-static {p5}, Landroid/view/inputmethod/BaseInputConnection;->removeComposingSpans(Landroid/text/Spannable;)V

    .line 916
    invoke-interface {p5}, Landroid/text/Editable;->length()I

    move-result p5

    .line 917
    invoke-static {p1, p5}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 918
    invoke-static {p2, p5}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 919
    if-ge p2, p1, :cond_27

    .line 920
    nop

    .line 921
    nop

    .line 922
    move v2, p1

    move v1, p2

    goto :goto_29

    .line 919
    :cond_27
    move v1, p1

    move v2, p2

    .line 924
    :goto_29
    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/view/inputmethod/BaseInputConnection;->replaceTextInternal(IILjava/lang/CharSequence;IZ)V

    .line 925
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->endBatchEdit()Z

    .line 926
    const/4 p1, 0x1

    return p1
.end method

.method public whitelist reportFullscreenMode(Z)Z
    .registers 2

    .line 828
    const/4 p1, 0x1

    return p1
.end method

.method public whitelist requestCursorUpdates(I)Z
    .registers 2

    .line 727
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist sendKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 4

    .line 821
    iget-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Landroid/view/inputmethod/BaseInputConnection;->mTargetView:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Landroid/view/inputmethod/InputMethodManager;->dispatchKeyEventFromInputMethod(Landroid/view/View;Landroid/view/KeyEvent;)V

    .line 822
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist setComposingRegion(II)Z
    .registers 8

    .line 750
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 751
    if-eqz v0, :cond_4e

    .line 752
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->beginBatchEdit()Z

    .line 753
    invoke-static {v0}, Landroid/view/inputmethod/BaseInputConnection;->removeComposingSpans(Landroid/text/Spannable;)V

    .line 754
    nop

    .line 755
    nop

    .line 756
    if-le p1, p2, :cond_15

    .line 757
    nop

    .line 758
    nop

    .line 759
    move v4, p2

    move p2, p1

    move p1, v4

    .line 762
    :cond_15
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    .line 763
    const/4 v2, 0x0

    if-gez p1, :cond_1d

    move p1, v2

    .line 764
    :cond_1d
    if-gez p2, :cond_20

    move p2, v2

    .line 765
    :cond_20
    if-le p1, v1, :cond_23

    move p1, v1

    .line 766
    :cond_23
    if-le p2, v1, :cond_26

    goto :goto_27

    :cond_26
    move v1, p2

    .line 768
    :goto_27
    invoke-direct {p0}, Landroid/view/inputmethod/BaseInputConnection;->ensureDefaultComposingSpans()V

    .line 769
    iget-object p2, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    const/16 v3, 0x121

    if-eqz p2, :cond_40

    .line 770
    nop

    :goto_31
    iget-object p2, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    array-length p2, p2

    if-ge v2, p2, :cond_40

    .line 771
    iget-object p2, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    aget-object p2, p2, v2

    invoke-interface {v0, p2, p1, v1, v3}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 770
    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    .line 779
    :cond_40
    sget-object p2, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    invoke-interface {v0, p2, p1, v1, v3}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 783
    invoke-direct {p0}, Landroid/view/inputmethod/BaseInputConnection;->sendCurrentText()V

    .line 784
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->endBatchEdit()Z

    .line 785
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->endComposingRegionEditInternal()V

    .line 787
    :cond_4e
    const/4 p1, 0x1

    return p1
.end method

.method public whitelist setComposingText(Ljava/lang/CharSequence;I)Z
    .registers 4

    .line 743
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/view/inputmethod/BaseInputConnection;->replaceText(Ljava/lang/CharSequence;IZ)V

    .line 744
    return v0
.end method

.method public whitelist setSelection(II)Z
    .registers 6

    .line 794
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 795
    if-nez v0, :cond_8

    const/4 p1, 0x0

    return p1

    .line 796
    :cond_8
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    .line 797
    const/4 v2, 0x1

    if-gt p1, v1, :cond_28

    if-gt p2, v1, :cond_28

    if-ltz p1, :cond_28

    if-gez p2, :cond_16

    goto :goto_28

    .line 804
    :cond_16
    if-ne p1, p2, :cond_24

    const/16 v1, 0x800

    invoke-static {v0, v1}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v1

    if-eqz v1, :cond_24

    .line 808
    invoke-static {v0, p1}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    goto :goto_27

    .line 810
    :cond_24
    invoke-static {v0, p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 812
    :goto_27
    return v2

    .line 802
    :cond_28
    :goto_28
    return v2
.end method

.method public whitelist takeSnapshot()Landroid/view/inputmethod/TextSnapshot;
    .registers 7

    .line 1087
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 1088
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1089
    return-object v1

    .line 1091
    :cond_8
    invoke-static {v0}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v2

    .line 1092
    invoke-static {v0}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v0

    .line 1093
    if-ge v0, v2, :cond_17

    .line 1094
    nop

    .line 1095
    nop

    .line 1096
    move v5, v2

    move v2, v0

    move v0, v5

    .line 1099
    :cond_17
    const/4 v3, 0x1

    const/16 v4, 0x400

    invoke-virtual {p0, v4, v4, v3}, Landroid/view/inputmethod/BaseInputConnection;->getSurroundingText(III)Landroid/view/inputmethod/SurroundingText;

    move-result-object v3

    .line 1102
    if-nez v3, :cond_21

    .line 1103
    return-object v1

    .line 1106
    :cond_21
    const/16 v1, 0x7000

    invoke-virtual {p0, v1}, Landroid/view/inputmethod/BaseInputConnection;->getCursorCapsMode(I)I

    move-result v1

    .line 1109
    new-instance v4, Landroid/view/inputmethod/TextSnapshot;

    invoke-direct {v4, v3, v2, v0, v1}, Landroid/view/inputmethod/TextSnapshot;-><init>(Landroid/view/inputmethod/SurroundingText;III)V

    return-object v4
.end method
