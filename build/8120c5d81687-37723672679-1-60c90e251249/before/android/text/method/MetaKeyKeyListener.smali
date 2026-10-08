.class public abstract Landroid/text/method/MetaKeyKeyListener;
.super Ljava/lang/Object;
.source "MetaKeyKeyListener.java"


# static fields
.field private static final greylist-max-o ALT:Ljava/lang/Object;

.field private static final greylist-max-o CAP:Ljava/lang/Object;

.field private static final greylist-max-o LOCKED:I = 0x4000011

.field private static final greylist-max-o LOCKED_RETURN_VALUE:I = 0x2

.field public static final whitelist META_ALT_LOCKED:I = 0x200

.field private static final greylist-max-o META_ALT_MASK:J = 0x2020200000202L

.field public static final whitelist META_ALT_ON:I = 0x2

.field private static final greylist-max-o META_ALT_PRESSED:J = 0x20000000000L

.field private static final greylist-max-o META_ALT_RELEASED:J = 0x2000000000000L

.field private static final greylist-max-o META_ALT_USED:J = 0x200000000L

.field public static final whitelist META_CAP_LOCKED:I = 0x100

.field private static final greylist-max-o META_CAP_PRESSED:J = 0x10000000000L

.field private static final greylist-max-o META_CAP_RELEASED:J = 0x1000000000000L

.field private static final greylist-max-o META_CAP_USED:J = 0x100000000L

.field public static final greylist-max-o META_SELECTING:I = 0x800

.field private static final greylist-max-o META_SHIFT_MASK:J = 0x1010100000101L

.field public static final whitelist META_SHIFT_ON:I = 0x1

.field public static final whitelist META_SYM_LOCKED:I = 0x400

.field private static final greylist-max-o META_SYM_MASK:J = 0x4040400000404L

.field public static final whitelist META_SYM_ON:I = 0x4

.field private static final greylist-max-o META_SYM_PRESSED:J = 0x40000000000L

.field private static final greylist-max-o META_SYM_RELEASED:J = 0x4000000000000L

.field private static final greylist-max-o META_SYM_USED:J = 0x400000000L

.field private static final greylist-max-o PRESSED:I = 0x1000011

.field private static final greylist-max-o PRESSED_RETURN_VALUE:I = 0x1

.field private static final greylist-max-o RELEASED:I = 0x2000011

.field private static final greylist-max-o SELECTING:Ljava/lang/Object;

.field private static final greylist-max-o SYM:Ljava/lang/Object;

.field private static final greylist-max-o USED:I = 0x3000011


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 135
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    .line 136
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    .line 137
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    .line 138
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static greylist-max-o adjust(Landroid/text/Spannable;Ljava/lang/Object;)V
    .registers 4

    .line 298
    invoke-interface {p0, p1}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    .line 300
    const v1, 0x1000011

    if-ne v0, v1, :cond_11

    .line 301
    const v0, 0x3000011

    const/4 v1, 0x0

    invoke-interface {p0, p1, v1, v1, v0}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_19

    .line 302
    :cond_11
    const v1, 0x2000011

    if-ne v0, v1, :cond_19

    .line 303
    invoke-interface {p0, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 304
    :cond_19
    :goto_19
    return-void
.end method

.method public static whitelist adjustMetaAfterKeypress(J)J
    .registers 8

    .line 520
    const-wide v0, 0x10000000000L

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const-wide v4, -0x1010100000102L

    if-eqz v0, :cond_1c

    .line 521
    and-long/2addr p0, v4

    const-wide/16 v0, 0x1

    or-long/2addr p0, v0

    const-wide v0, 0x100000000L

    or-long/2addr p0, v0

    goto :goto_24

    .line 522
    :cond_1c
    const-wide/high16 v0, 0x1000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_24

    .line 523
    and-long/2addr p0, v4

    .line 526
    :cond_24
    :goto_24
    const-wide v0, 0x20000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    const-wide v4, -0x2020200000203L

    if-eqz v0, :cond_3e

    .line 527
    and-long/2addr p0, v4

    const-wide/16 v0, 0x2

    or-long/2addr p0, v0

    const-wide v0, 0x200000000L

    or-long/2addr p0, v0

    goto :goto_46

    .line 528
    :cond_3e
    const-wide/high16 v0, 0x2000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_46

    .line 529
    and-long/2addr p0, v4

    .line 532
    :cond_46
    :goto_46
    const-wide v0, 0x40000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    const-wide v4, -0x4040400000405L

    if-eqz v0, :cond_60

    .line 533
    and-long/2addr p0, v4

    const-wide/16 v0, 0x4

    or-long/2addr p0, v0

    const-wide v0, 0x400000000L

    or-long/2addr p0, v0

    goto :goto_68

    .line 534
    :cond_60
    const-wide/high16 v0, 0x4000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_68

    .line 535
    and-long/2addr p0, v4

    .line 537
    :cond_68
    :goto_68
    return-wide p0
.end method

.method public static whitelist adjustMetaAfterKeypress(Landroid/text/Spannable;)V
    .registers 2

    .line 275
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->adjust(Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 276
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->adjust(Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 277
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->adjust(Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 278
    return-void
.end method

.method public static whitelist clearMetaKeyState(Landroid/text/Editable;I)V
    .registers 3

    .line 424
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_9

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 425
    :cond_9
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_12

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 426
    :cond_12
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_1b

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 427
    :cond_1b
    and-int/lit16 p1, p1, 0x800

    if-eqz p1, :cond_24

    sget-object p1, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    invoke-interface {p0, p1}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 428
    :cond_24
    return-void
.end method

.method private static greylist-max-o getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I
    .registers 6

    .line 253
    instance-of v0, p0, Landroid/text/Spanned;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 254
    return v1

    .line 257
    :cond_6
    check-cast p0, Landroid/text/Spanned;

    .line 258
    invoke-interface {p0, p1}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result p0

    .line 260
    const p1, 0x4000011

    if-ne p0, p1, :cond_12

    .line 261
    return p3

    .line 262
    :cond_12
    if-eqz p0, :cond_15

    .line 263
    return p2

    .line 265
    :cond_15
    return v1
.end method

.method public static final whitelist getMetaState(J)I
    .registers 8

    .line 460
    nop

    .line 462
    const-wide/16 v0, 0x100

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_d

    .line 463
    const/16 v0, 0x100

    goto :goto_17

    .line 464
    :cond_d
    const-wide/16 v0, 0x1

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_16

    .line 465
    const/4 v0, 0x1

    goto :goto_17

    .line 464
    :cond_16
    const/4 v0, 0x0

    .line 468
    :goto_17
    const-wide/16 v4, 0x200

    and-long/2addr v4, p0

    cmp-long v1, v4, v2

    if-eqz v1, :cond_21

    .line 469
    or-int/lit16 v0, v0, 0x200

    goto :goto_2a

    .line 470
    :cond_21
    const-wide/16 v4, 0x2

    and-long/2addr v4, p0

    cmp-long v1, v4, v2

    if-eqz v1, :cond_2a

    .line 471
    or-int/lit8 v0, v0, 0x2

    .line 474
    :cond_2a
    :goto_2a
    const-wide/16 v4, 0x400

    and-long/2addr v4, p0

    cmp-long v1, v4, v2

    if-eqz v1, :cond_34

    .line 475
    or-int/lit16 v0, v0, 0x400

    goto :goto_3d

    .line 476
    :cond_34
    const-wide/16 v4, 0x4

    and-long/2addr p0, v4

    cmp-long p0, p0, v2

    if-eqz p0, :cond_3d

    .line 477
    or-int/lit8 v0, v0, 0x4

    .line 480
    :cond_3d
    :goto_3d
    return v0
.end method

.method public static final whitelist getMetaState(JI)I
    .registers 10

    .line 492
    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    packed-switch p2, :pswitch_data_3c

    .line 509
    :pswitch_8
    return v2

    .line 504
    :pswitch_9
    const-wide/16 v5, 0x400

    and-long/2addr v5, p0

    cmp-long p2, v5, v3

    if-eqz p2, :cond_11

    return v1

    .line 505
    :cond_11
    const-wide/16 v5, 0x4

    and-long/2addr p0, v5

    cmp-long p0, p0, v3

    if-eqz p0, :cond_19

    return v0

    .line 506
    :cond_19
    return v2

    .line 499
    :pswitch_1a
    const-wide/16 v5, 0x200

    and-long/2addr v5, p0

    cmp-long p2, v5, v3

    if-eqz p2, :cond_22

    return v1

    .line 500
    :cond_22
    const-wide/16 v5, 0x2

    and-long/2addr p0, v5

    cmp-long p0, p0, v3

    if-eqz p0, :cond_2a

    return v0

    .line 501
    :cond_2a
    return v2

    .line 494
    :pswitch_2b
    const-wide/16 v5, 0x100

    and-long/2addr v5, p0

    cmp-long p2, v5, v3

    if-eqz p2, :cond_33

    return v1

    .line 495
    :cond_33
    const-wide/16 v5, 0x1

    and-long/2addr p0, v5

    cmp-long p0, p0, v3

    if-eqz p0, :cond_3b

    return v0

    .line 496
    :cond_3b
    return v2

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_1a
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public static final whitelist getMetaState(Ljava/lang/CharSequence;)I
    .registers 5

    .line 162
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    const/4 v1, 0x1

    const/16 v2, 0x100

    invoke-static {p0, v0, v1, v2}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result v0

    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    .line 163
    const/4 v2, 0x2

    const/16 v3, 0x200

    invoke-static {p0, v1, v2, v3}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result v1

    or-int/2addr v0, v1

    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    .line 164
    const/4 v2, 0x4

    const/16 v3, 0x400

    invoke-static {p0, v1, v2, v3}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result v1

    or-int/2addr v0, v1

    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    .line 165
    const/16 v2, 0x800

    invoke-static {p0, v1, v2, v2}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result p0

    or-int/2addr p0, v0

    .line 162
    return p0
.end method

.method public static final whitelist getMetaState(Ljava/lang/CharSequence;I)I
    .registers 4

    .line 202
    const/4 v0, 0x2

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_24

    .line 216
    const/4 p0, 0x0

    return p0

    .line 213
    :sswitch_7
    sget-object p1, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    invoke-static {p0, p1, v1, v0}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result p0

    return p0

    .line 210
    :sswitch_e
    sget-object p1, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    invoke-static {p0, p1, v1, v0}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result p0

    return p0

    .line 207
    :sswitch_15
    sget-object p1, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-static {p0, p1, v1, v0}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result p0

    return p0

    .line 204
    :sswitch_1c
    sget-object p1, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-static {p0, p1, v1, v0}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result p0

    return p0

    nop

    :sswitch_data_24
    .sparse-switch
        0x1 -> :sswitch_1c
        0x2 -> :sswitch_15
        0x4 -> :sswitch_e
        0x800 -> :sswitch_7
    .end sparse-switch
.end method

.method public static final whitelist getMetaState(Ljava/lang/CharSequence;ILandroid/view/KeyEvent;)I
    .registers 5

    .line 234
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    .line 235
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/KeyCharacterMap;->getModifierBehavior()I

    move-result p2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_14

    .line 237
    invoke-static {p0}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;)I

    move-result p0

    or-int/2addr v0, p0

    .line 239
    :cond_14
    const/16 p0, 0x800

    if-ne p0, p1, :cond_1e

    .line 242
    and-int/2addr p0, v0

    if-eqz p0, :cond_1c

    .line 244
    return v1

    .line 246
    :cond_1c
    const/4 p0, 0x0

    return p0

    .line 248
    :cond_1e
    int-to-long v0, v0

    invoke-static {v0, v1, p1}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(JI)I

    move-result p0

    return p0
.end method

.method public static final whitelist getMetaState(Ljava/lang/CharSequence;Landroid/view/KeyEvent;)I
    .registers 4

    .line 183
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    .line 184
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/KeyCharacterMap;->getModifierBehavior()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_14

    .line 186
    invoke-static {p0}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;)I

    move-result p0

    or-int/2addr v0, p0

    .line 188
    :cond_14
    return v0
.end method

.method public static whitelist handleKeyDown(JILandroid/view/KeyEvent;)J
    .registers 19

    .line 544
    move/from16 v0, p2

    const/16 v1, 0x3b

    if-eq v0, v1, :cond_51

    const/16 v1, 0x3c

    if-ne v0, v1, :cond_b

    goto :goto_51

    .line 549
    :cond_b
    const/16 v1, 0x39

    if-eq v0, v1, :cond_37

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_37

    const/16 v1, 0x4e

    if-ne v0, v1, :cond_18

    goto :goto_37

    .line 555
    :cond_18
    const/16 v1, 0x3f

    if-ne v0, v1, :cond_36

    .line 556
    const-wide/high16 v11, 0x4000000000000L

    const-wide v13, 0x400000000L

    const/4 v4, 0x4

    const-wide v5, 0x4040400000404L

    const-wide/16 v7, 0x400

    const-wide v9, 0x40000000000L

    move-wide v2, p0

    invoke-static/range {v2 .. v14}, Landroid/text/method/MetaKeyKeyListener;->press(JIJJJJJ)J

    move-result-wide v0

    return-wide v0

    .line 559
    :cond_36
    return-wide p0

    .line 551
    :cond_37
    :goto_37
    const-wide/high16 v11, 0x2000000000000L

    const-wide v13, 0x200000000L

    const/4 v4, 0x2

    const-wide v5, 0x2020200000202L

    const-wide/16 v7, 0x200

    const-wide v9, 0x20000000000L

    move-wide v2, p0

    invoke-static/range {v2 .. v14}, Landroid/text/method/MetaKeyKeyListener;->press(JIJJJJJ)J

    move-result-wide v0

    return-wide v0

    .line 545
    :cond_51
    :goto_51
    const-wide/high16 v11, 0x1000000000000L

    const-wide v13, 0x100000000L

    const/4 v4, 0x1

    const-wide v5, 0x1010100000101L

    const-wide/16 v7, 0x100

    const-wide v9, 0x10000000000L

    move-wide v2, p0

    invoke-static/range {v2 .. v14}, Landroid/text/method/MetaKeyKeyListener;->press(JIJJJJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist handleKeyUp(JILandroid/view/KeyEvent;)J
    .registers 18

    .line 582
    move/from16 v0, p2

    const/16 v1, 0x3b

    if-eq v0, v1, :cond_51

    const/16 v1, 0x3c

    if-ne v0, v1, :cond_b

    goto :goto_51

    .line 587
    :cond_b
    const/16 v1, 0x39

    if-eq v0, v1, :cond_37

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_37

    const/16 v1, 0x4e

    if-ne v0, v1, :cond_18

    goto :goto_37

    .line 593
    :cond_18
    const/16 v1, 0x3f

    if-ne v0, v1, :cond_36

    .line 594
    const-wide/high16 v9, 0x4000000000000L

    const-wide v11, 0x400000000L

    const/4 v4, 0x4

    const-wide v5, 0x4040400000404L

    const-wide v7, 0x40000000000L

    move-wide v2, p0

    move-object/from16 v13, p3

    invoke-static/range {v2 .. v13}, Landroid/text/method/MetaKeyKeyListener;->release(JIJJJJLandroid/view/KeyEvent;)J

    move-result-wide p0

    return-wide p0

    .line 597
    :cond_36
    return-wide p0

    .line 589
    :cond_37
    :goto_37
    const-wide/high16 v7, 0x2000000000000L

    const-wide v9, 0x200000000L

    const/4 v2, 0x2

    const-wide v3, 0x2020200000202L

    const-wide v5, 0x20000000000L

    move-wide v0, p0

    move-object/from16 v11, p3

    invoke-static/range {v0 .. v11}, Landroid/text/method/MetaKeyKeyListener;->release(JIJJJJLandroid/view/KeyEvent;)J

    move-result-wide p0

    return-wide p0

    .line 583
    :cond_51
    :goto_51
    const-wide/high16 v7, 0x1000000000000L

    const-wide v9, 0x100000000L

    const/4 v2, 0x1

    const-wide v3, 0x1010100000101L

    const-wide v5, 0x10000000000L

    move-wide v0, p0

    move-object/from16 v11, p3

    invoke-static/range {v0 .. v11}, Landroid/text/method/MetaKeyKeyListener;->release(JIJJJJLandroid/view/KeyEvent;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static whitelist isMetaTracker(Ljava/lang/CharSequence;Ljava/lang/Object;)Z
    .registers 2

    .line 285
    sget-object p0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    if-eq p1, p0, :cond_13

    sget-object p0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    if-eq p1, p0, :cond_13

    sget-object p0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    if-eq p1, p0, :cond_13

    sget-object p0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    if-ne p1, p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method

.method public static whitelist isSelectingMetaTracker(Ljava/lang/CharSequence;Ljava/lang/Object;)Z
    .registers 2

    .line 294
    sget-object p0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    if-ne p1, p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method private static greylist-max-o press(JIJJJJJ)J
    .registers 17

    .line 564
    and-long v0, p0, p7

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_9

    goto :goto_27

    .line 566
    :cond_9
    and-long v0, p0, p9

    cmp-long v0, v0, v2

    if-eqz v0, :cond_15

    .line 567
    not-long p3, p3

    and-long/2addr p0, p3

    int-to-long p2, p2

    or-long/2addr p0, p2

    or-long/2addr p0, p5

    goto :goto_27

    .line 568
    :cond_15
    and-long v0, p0, p11

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1c

    goto :goto_27

    .line 570
    :cond_1c
    and-long/2addr p5, p0

    cmp-long p5, p5, v2

    if-eqz p5, :cond_24

    .line 571
    not-long p2, p3

    and-long/2addr p0, p2

    goto :goto_27

    .line 573
    :cond_24
    int-to-long p2, p2

    or-long/2addr p2, p7

    or-long/2addr p0, p2

    .line 575
    :goto_27
    return-wide p0
.end method

.method private greylist-max-o press(Landroid/text/Editable;Ljava/lang/Object;)V
    .registers 6

    .line 348
    invoke-interface {p1, p2}, Landroid/text/Editable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    .line 350
    const v1, 0x1000011

    if-ne v0, v1, :cond_a

    .line 351
    goto :goto_1d

    .line 352
    :cond_a
    const v2, 0x3000011

    if-ne v0, v2, :cond_10

    .line 353
    goto :goto_1d

    .line 354
    :cond_10
    const v2, 0x4000011

    if-ne v0, v2, :cond_19

    .line 355
    invoke-interface {p1, p2}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_1d

    .line 357
    :cond_19
    const/4 v0, 0x0

    invoke-interface {p1, p2, v0, v0, v1}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 358
    :goto_1d
    return-void
.end method

.method private static greylist-max-o release(JIJJJJLandroid/view/KeyEvent;)J
    .registers 14

    .line 602
    invoke-virtual {p11}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object p11

    invoke-virtual {p11}, Landroid/view/KeyCharacterMap;->getModifierBehavior()I

    move-result p11

    packed-switch p11, :pswitch_data_22

    .line 612
    not-long p2, p3

    and-long/2addr p0, p2

    goto :goto_21

    .line 604
    :pswitch_e
    and-long/2addr p9, p0

    const-wide/16 v0, 0x0

    cmp-long p9, p9, v0

    if-eqz p9, :cond_18

    .line 605
    not-long p2, p3

    and-long/2addr p0, p2

    goto :goto_21

    .line 606
    :cond_18
    and-long p3, p0, p5

    cmp-long p3, p3, v0

    if-eqz p3, :cond_21

    .line 607
    int-to-long p2, p2

    or-long/2addr p2, p7

    or-long/2addr p0, p2

    .line 615
    :cond_21
    :goto_21
    return-wide p0

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_e
    .end packed-switch
.end method

.method private greylist-max-o release(Landroid/text/Editable;Ljava/lang/Object;Landroid/view/KeyEvent;)V
    .registers 5

    .line 403
    invoke-interface {p1, p2}, Landroid/text/Editable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    .line 405
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/KeyCharacterMap;->getModifierBehavior()I

    move-result p3

    packed-switch p3, :pswitch_data_2a

    .line 414
    invoke-interface {p1, p2}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_28

    .line 407
    :pswitch_13
    const p3, 0x3000011

    if-ne v0, p3, :cond_1c

    .line 408
    invoke-interface {p1, p2}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_28

    .line 409
    :cond_1c
    const p3, 0x1000011

    if-ne v0, p3, :cond_28

    .line 410
    const p3, 0x2000011

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0, v0, p3}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 417
    :cond_28
    :goto_28
    return-void

    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_13
    .end packed-switch
.end method

.method private static greylist-max-o resetLock(Landroid/text/Spannable;Ljava/lang/Object;)V
    .registers 4

    .line 318
    invoke-interface {p0, p1}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    .line 320
    const v1, 0x4000011

    if-ne v0, v1, :cond_c

    .line 321
    invoke-interface {p0, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 322
    :cond_c
    return-void
.end method

.method public static whitelist resetLockedMeta(J)J
    .registers 6

    .line 435
    const-wide/16 v0, 0x100

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    .line 436
    const-wide v0, -0x1010100000102L

    and-long/2addr p0, v0

    .line 438
    :cond_f
    const-wide/16 v0, 0x200

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1c

    .line 439
    const-wide v0, -0x2020200000203L

    and-long/2addr p0, v0

    .line 441
    :cond_1c
    const-wide/16 v0, 0x400

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_29

    .line 442
    const-wide v0, -0x4040400000405L

    and-long/2addr p0, v0

    .line 444
    :cond_29
    return-wide p0
.end method

.method protected static whitelist resetLockedMeta(Landroid/text/Spannable;)V
    .registers 2

    .line 311
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->resetLock(Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 312
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->resetLock(Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 313
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->resetLock(Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 314
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->resetLock(Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 315
    return-void
.end method

.method public static whitelist resetMetaState(Landroid/text/Spannable;)V
    .registers 2

    .line 147
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 148
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 149
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 150
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 151
    return-void
.end method

.method public static greylist startSelecting(Landroid/view/View;Landroid/text/Spannable;)V
    .registers 4

    .line 366
    sget-object p0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    const/4 v0, 0x0

    const v1, 0x1000011

    invoke-interface {p1, p0, v0, v0, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 367
    return-void
.end method

.method public static greylist stopSelecting(Landroid/view/View;Landroid/text/Spannable;)V
    .registers 2

    .line 376
    sget-object p0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    invoke-interface {p1, p0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 377
    return-void
.end method


# virtual methods
.method public whitelist clearMetaKeyState(JI)J
    .registers 9

    .line 625
    and-int/lit8 v0, p3, 0x1

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_13

    const-wide/16 v3, 0x100

    and-long/2addr v3, p1

    cmp-long v0, v3, v1

    if-eqz v0, :cond_13

    .line 626
    const-wide v3, -0x1010100000102L

    and-long/2addr p1, v3

    .line 628
    :cond_13
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_24

    const-wide/16 v3, 0x200

    and-long/2addr v3, p1

    cmp-long v0, v3, v1

    if-eqz v0, :cond_24

    .line 629
    const-wide v3, -0x2020200000203L

    and-long/2addr p1, v3

    .line 631
    :cond_24
    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_35

    const-wide/16 v3, 0x400

    and-long/2addr v3, p1

    cmp-long p3, v3, v1

    if-eqz p3, :cond_35

    .line 632
    const-wide v0, -0x4040400000405L

    and-long/2addr p1, v0

    .line 634
    :cond_35
    return-wide p1
.end method

.method public whitelist clearMetaKeyState(Landroid/view/View;Landroid/text/Editable;I)V
    .registers 4

    .line 420
    invoke-static {p2, p3}, Landroid/text/method/MetaKeyKeyListener;->clearMetaKeyState(Landroid/text/Editable;I)V

    .line 421
    return-void
.end method

.method public whitelist onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .registers 5

    .line 328
    const/16 p1, 0x3b

    const/4 p4, 0x1

    if-eq p3, p1, :cond_29

    const/16 p1, 0x3c

    if-ne p3, p1, :cond_a

    goto :goto_29

    .line 333
    :cond_a
    const/16 p1, 0x39

    if-eq p3, p1, :cond_23

    const/16 p1, 0x3a

    if-eq p3, p1, :cond_23

    const/16 p1, 0x4e

    if-ne p3, p1, :cond_17

    goto :goto_23

    .line 339
    :cond_17
    const/16 p1, 0x3f

    if-ne p3, p1, :cond_21

    .line 340
    sget-object p1, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    invoke-direct {p0, p2, p1}, Landroid/text/method/MetaKeyKeyListener;->press(Landroid/text/Editable;Ljava/lang/Object;)V

    .line 341
    return p4

    .line 344
    :cond_21
    const/4 p1, 0x0

    return p1

    .line 335
    :cond_23
    :goto_23
    sget-object p1, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-direct {p0, p2, p1}, Landroid/text/method/MetaKeyKeyListener;->press(Landroid/text/Editable;Ljava/lang/Object;)V

    .line 336
    return p4

    .line 329
    :cond_29
    :goto_29
    sget-object p1, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-direct {p0, p2, p1}, Landroid/text/method/MetaKeyKeyListener;->press(Landroid/text/Editable;Ljava/lang/Object;)V

    .line 330
    return p4
.end method

.method public whitelist onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .registers 6

    .line 383
    const/16 p1, 0x3b

    const/4 v0, 0x1

    if-eq p3, p1, :cond_29

    const/16 p1, 0x3c

    if-ne p3, p1, :cond_a

    goto :goto_29

    .line 388
    :cond_a
    const/16 p1, 0x39

    if-eq p3, p1, :cond_23

    const/16 p1, 0x3a

    if-eq p3, p1, :cond_23

    const/16 p1, 0x4e

    if-ne p3, p1, :cond_17

    goto :goto_23

    .line 394
    :cond_17
    const/16 p1, 0x3f

    if-ne p3, p1, :cond_21

    .line 395
    sget-object p1, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    invoke-direct {p0, p2, p1, p4}, Landroid/text/method/MetaKeyKeyListener;->release(Landroid/text/Editable;Ljava/lang/Object;Landroid/view/KeyEvent;)V

    .line 396
    return v0

    .line 399
    :cond_21
    const/4 p1, 0x0

    return p1

    .line 390
    :cond_23
    :goto_23
    sget-object p1, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-direct {p0, p2, p1, p4}, Landroid/text/method/MetaKeyKeyListener;->release(Landroid/text/Editable;Ljava/lang/Object;Landroid/view/KeyEvent;)V

    .line 391
    return v0

    .line 384
    :cond_29
    :goto_29
    sget-object p1, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-direct {p0, p2, p1, p4}, Landroid/text/method/MetaKeyKeyListener;->release(Landroid/text/Editable;Ljava/lang/Object;Landroid/view/KeyEvent;)V

    .line 385
    return v0
.end method
