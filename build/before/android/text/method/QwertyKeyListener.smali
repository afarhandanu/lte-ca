.class public Landroid/text/method/QwertyKeyListener;
.super Landroid/text/method/BaseKeyListener;
.source "QwertyKeyListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/method/QwertyKeyListener$Replaced;
    }
.end annotation


# static fields
.field private static greylist-max-o PICKER_SETS:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static greylist-max-o sFullKeyboardInstance:Landroid/text/method/QwertyKeyListener;

.field private static greylist-max-o sInstance:[Landroid/text/method/QwertyKeyListener;


# instance fields
.field private greylist-max-o mAutoCap:Landroid/text/method/TextKeyListener$Capitalize;

.field private greylist-max-o mAutoText:Z

.field private greylist-max-o mFullKeyboard:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 43
    invoke-static {}, Landroid/text/method/TextKeyListener$Capitalize;->values()[Landroid/text/method/TextKeyListener$Capitalize;

    move-result-object v0

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Landroid/text/method/QwertyKeyListener;

    sput-object v0, Landroid/text/method/QwertyKeyListener;->sInstance:[Landroid/text/method/QwertyKeyListener;

    .line 451
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    .line 454
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x41

    const-string/jumbo v2, "\u00c0\u00c1\u00c2\u00c4\u00c6\u00c3\u00c5\u0104\u0100"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 455
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x43

    const-string/jumbo v2, "\u00c7\u0106\u010c"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 456
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x44

    const-string/jumbo v2, "\u010e"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 457
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x45

    const-string/jumbo v2, "\u00c8\u00c9\u00ca\u00cb\u0118\u011a\u0112"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 458
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x47

    const-string/jumbo v2, "\u011e"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 459
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x4c

    const-string/jumbo v2, "\u0141"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 460
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x49

    const-string/jumbo v2, "\u00cc\u00cd\u00ce\u00cf\u012a\u0130"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 461
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x4e

    const-string/jumbo v2, "\u00d1\u0143\u0147"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 462
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x4f

    const-string/jumbo v2, "\u00d8\u0152\u00d5\u00d2\u00d3\u00d4\u00d6\u014c"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 463
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x52

    const-string/jumbo v2, "\u0158"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 464
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x53

    const-string/jumbo v2, "\u015a\u0160\u015e"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 465
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x54

    const-string/jumbo v2, "\u0164"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 466
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x55

    const-string/jumbo v2, "\u00d9\u00da\u00db\u00dc\u016e\u016a"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 467
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x59

    const-string/jumbo v2, "\u00dd\u0178"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 468
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x5a

    const-string/jumbo v2, "\u0179\u017b\u017d"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 469
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x61

    const-string/jumbo v2, "\u00e0\u00e1\u00e2\u00e4\u00e6\u00e3\u00e5\u0105\u0101"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 470
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x63

    const-string/jumbo v2, "\u00e7\u0107\u010d"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 471
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x64

    const-string/jumbo v2, "\u010f"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 472
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x65

    const-string/jumbo v2, "\u00e8\u00e9\u00ea\u00eb\u0119\u011b\u0113"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 473
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x67

    const-string/jumbo v2, "\u011f"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 474
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x69

    const-string/jumbo v2, "\u00ec\u00ed\u00ee\u00ef\u012b\u0131"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 475
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x6c

    const-string/jumbo v2, "\u0142"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 476
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x6e

    const-string/jumbo v2, "\u00f1\u0144\u0148"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 477
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x6f

    const-string/jumbo v2, "\u00f8\u0153\u00f5\u00f2\u00f3\u00f4\u00f6\u014d"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 478
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x72

    const-string/jumbo v2, "\u0159"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 479
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x73

    const-string/jumbo v2, "\u00a7\u00df\u015b\u0161\u015f"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 480
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x74

    const-string/jumbo v2, "\u0165"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 481
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x75

    const-string/jumbo v2, "\u00f9\u00fa\u00fb\u00fc\u016f\u016b"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 482
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x79

    const-string/jumbo v2, "\u00fd\u00ff"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 483
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x7a

    const-string/jumbo v2, "\u017a\u017c\u017e"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 484
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const v1, 0xef01

    const-string/jumbo v2, "\u2026\u00a5\u2022\u00ae\u00a9\u00b1[]{}\\|"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 486
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x2f

    const-string v2, "\\"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 490
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x31

    const-string/jumbo v2, "\u00b9\u00bd\u2153\u00bc\u215b"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 491
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x32

    const-string/jumbo v2, "\u00b2\u2154"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 492
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x33

    const-string/jumbo v2, "\u00b3\u00be\u215c"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 493
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x34

    const-string/jumbo v2, "\u2074"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 494
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x35

    const-string/jumbo v2, "\u215d"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 495
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x37

    const-string/jumbo v2, "\u215e"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 496
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x30

    const-string/jumbo v2, "\u207f\u2205"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 497
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x24

    const-string/jumbo v2, "\u00a2\u00a3\u20ac\u00a5\u20a3\u20a4\u20b1"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 498
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x25

    const-string/jumbo v2, "\u2030"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 499
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x2a

    const-string/jumbo v2, "\u2020\u2021"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 500
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x2d

    const-string/jumbo v2, "\u2013\u2014"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 501
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x2b

    const-string/jumbo v2, "\u00b1"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 502
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x28

    const-string v2, "[{<"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 503
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x29

    const-string v2, "]}>"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 504
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x21

    const-string/jumbo v2, "\u00a1"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 505
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x22

    const-string/jumbo v2, "\u201c\u201d\u00ab\u00bb\u02dd"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 506
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x3f

    const-string/jumbo v2, "\u00bf"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 507
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x2c

    const-string/jumbo v2, "\u201a\u201e"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 511
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x3d

    const-string/jumbo v2, "\u2260\u2248\u221e"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 512
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x3c

    const-string/jumbo v2, "\u2264\u00ab\u2039"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 513
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x3e

    const-string/jumbo v2, "\u2265\u00bb\u203a"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 514
    return-void
.end method

.method public constructor whitelist <init>(Landroid/text/method/TextKeyListener$Capitalize;Z)V
    .registers 4

    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/text/method/QwertyKeyListener;-><init>(Landroid/text/method/TextKeyListener$Capitalize;ZZ)V

    .line 58
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/text/method/TextKeyListener$Capitalize;ZZ)V
    .registers 4

    .line 50
    invoke-direct {p0}, Landroid/text/method/BaseKeyListener;-><init>()V

    .line 51
    iput-object p1, p0, Landroid/text/method/QwertyKeyListener;->mAutoCap:Landroid/text/method/TextKeyListener$Capitalize;

    .line 52
    iput-boolean p2, p0, Landroid/text/method/QwertyKeyListener;->mAutoText:Z

    .line 53
    iput-boolean p3, p0, Landroid/text/method/QwertyKeyListener;->mFullKeyboard:Z

    .line 54
    return-void
.end method

.method public static whitelist getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/QwertyKeyListener;
    .registers 5

    .line 65
    invoke-virtual {p1}, Landroid/text/method/TextKeyListener$Capitalize;->ordinal()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p0

    .line 67
    sget-object v1, Landroid/text/method/QwertyKeyListener;->sInstance:[Landroid/text/method/QwertyKeyListener;

    aget-object v1, v1, v0

    if-nez v1, :cond_16

    .line 68
    sget-object v1, Landroid/text/method/QwertyKeyListener;->sInstance:[Landroid/text/method/QwertyKeyListener;

    new-instance v2, Landroid/text/method/QwertyKeyListener;

    invoke-direct {v2, p1, p0}, Landroid/text/method/QwertyKeyListener;-><init>(Landroid/text/method/TextKeyListener$Capitalize;Z)V

    aput-object v2, v1, v0

    .line 71
    :cond_16
    sget-object p0, Landroid/text/method/QwertyKeyListener;->sInstance:[Landroid/text/method/QwertyKeyListener;

    aget-object p0, p0, v0

    return-object p0
.end method

.method public static whitelist getInstanceForFullKeyboard()Landroid/text/method/QwertyKeyListener;
    .registers 4

    .line 80
    sget-object v0, Landroid/text/method/QwertyKeyListener;->sFullKeyboardInstance:Landroid/text/method/QwertyKeyListener;

    if-nez v0, :cond_f

    .line 81
    new-instance v0, Landroid/text/method/QwertyKeyListener;

    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->NONE:Landroid/text/method/TextKeyListener$Capitalize;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/text/method/QwertyKeyListener;-><init>(Landroid/text/method/TextKeyListener$Capitalize;ZZ)V

    sput-object v0, Landroid/text/method/QwertyKeyListener;->sFullKeyboardInstance:Landroid/text/method/QwertyKeyListener;

    .line 83
    :cond_f
    sget-object v0, Landroid/text/method/QwertyKeyListener;->sFullKeyboardInstance:Landroid/text/method/QwertyKeyListener;

    return-object v0
.end method

.method private greylist-max-o getReplacement(Ljava/lang/CharSequence;IILandroid/view/View;)Ljava/lang/String;
    .registers 12

    .line 382
    sub-int v0, p3, p2

    .line 383
    nop

    .line 385
    invoke-static {p1, p2, p3, p4}, Landroid/text/AutoText;->get(Ljava/lang/CharSequence;IILandroid/view/View;)Ljava/lang/String;

    move-result-object v1

    .line 387
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_1e

    .line 388
    invoke-static {p1, p2, p3}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 389
    invoke-static {v1, v4, v0, p4}, Landroid/text/AutoText;->get(Ljava/lang/CharSequence;IILandroid/view/View;)Ljava/lang/String;

    move-result-object v1

    .line 390
    nop

    .line 392
    if-nez v1, :cond_1c

    .line 393
    return-object v2

    .line 392
    :cond_1c
    move p4, v3

    goto :goto_1f

    .line 387
    :cond_1e
    move p4, v4

    .line 396
    :goto_1f
    nop

    .line 398
    if-eqz p4, :cond_35

    .line 399
    move p4, p2

    move v5, v4

    :goto_24
    if-ge p4, p3, :cond_36

    .line 400
    invoke-interface {p1, p4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v6

    if-eqz v6, :cond_32

    .line 401
    add-int/lit8 v5, v5, 0x1

    .line 399
    :cond_32
    add-int/lit8 p4, p4, 0x1

    goto :goto_24

    .line 398
    :cond_35
    move v5, v4

    .line 407
    :cond_36
    if-nez v5, :cond_39

    .line 408
    goto :goto_4b

    .line 409
    :cond_39
    if-ne v5, v3, :cond_40

    .line 410
    invoke-static {v1}, Landroid/text/method/QwertyKeyListener;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4b

    .line 411
    :cond_40
    if-ne v5, v0, :cond_47

    .line 412
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    goto :goto_4b

    .line 414
    :cond_47
    invoke-static {v1}, Landroid/text/method/QwertyKeyListener;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 416
    :goto_4b
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p3

    if-ne p3, v0, :cond_58

    .line 417
    invoke-static {p1, p2, v1, v4, v0}, Landroid/text/TextUtils;->regionMatches(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result p1

    if-eqz p1, :cond_58

    .line 418
    return-object v2

    .line 420
    :cond_58
    return-object v1
.end method

.method public static whitelist markAsReplaced(Landroid/text/Spannable;IILjava/lang/String;)V
    .registers 8

    .line 438
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v0

    const-class v1, Landroid/text/method/QwertyKeyListener$Replaced;

    const/4 v2, 0x0

    invoke-interface {p0, v2, v0, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/method/QwertyKeyListener$Replaced;

    .line 439
    move v1, v2

    :goto_e
    array-length v3, v0

    if-ge v1, v3, :cond_19

    .line 440
    aget-object v3, v0, v1

    invoke-interface {p0, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 439
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 443
    :cond_19
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    .line 444
    new-array v1, v0, [C

    .line 445
    invoke-virtual {p3, v2, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 447
    new-instance p3, Landroid/text/method/QwertyKeyListener$Replaced;

    invoke-direct {p3, v1}, Landroid/text/method/QwertyKeyListener$Replaced;-><init>([C)V

    const/16 v0, 0x21

    invoke-interface {p0, p3, p1, p2, v0}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 449
    return-void
.end method

.method private greylist-max-o showCharacterPicker(Landroid/view/View;Landroid/text/Editable;CZI)Z
    .registers 12

    .line 518
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    move-object v4, p3

    check-cast v4, Ljava/lang/String;

    .line 519
    if-nez v4, :cond_d

    .line 520
    const/4 p1, 0x0

    return p1

    .line 523
    :cond_d
    const/4 p3, 0x1

    if-ne p5, p3, :cond_1f

    .line 524
    new-instance v0, Landroid/text/method/CharacterPickerDialog;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/text/method/CharacterPickerDialog;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/text/Editable;Ljava/lang/String;Z)V

    .line 525
    invoke-virtual {v0}, Landroid/text/method/CharacterPickerDialog;->show()V

    .line 528
    :cond_1f
    return p3
.end method

.method private static greylist-max-o toTitleCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 532
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public whitelist getInputType()I
    .registers 3

    .line 87
    iget-object v0, p0, Landroid/text/method/QwertyKeyListener;->mAutoCap:Landroid/text/method/TextKeyListener$Capitalize;

    iget-boolean v1, p0, Landroid/text/method/QwertyKeyListener;->mAutoText:Z

    invoke-static {v0, v1}, Landroid/text/method/QwertyKeyListener;->makeTextContentType(Landroid/text/method/TextKeyListener$Capitalize;Z)I

    move-result v0

    return v0
.end method

.method public whitelist onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .registers 24

    .line 93
    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move/from16 v7, p3

    move-object/from16 v8, p4

    .line 95
    const/4 v9, 0x0

    if-eqz p1, :cond_19

    .line 96
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/method/TextKeyListener;->getPrefs(Landroid/content/Context;)I

    move-result v0

    move v10, v0

    goto :goto_1a

    .line 95
    :cond_19
    move v10, v9

    .line 100
    :goto_1a
    invoke-static {v3}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 101
    invoke-static {v3}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    .line 103
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 104
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 106
    if-ltz v4, :cond_32

    if-gez v0, :cond_2f

    goto :goto_32

    :cond_2f
    move v11, v0

    move v12, v4

    goto :goto_38

    .line 107
    :cond_32
    :goto_32
    nop

    .line 108
    invoke-static {v3, v9, v9}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    move v11, v9

    move v12, v11

    .line 112
    :goto_38
    sget-object v0, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    invoke-interface {v3, v0}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v13

    .line 113
    sget-object v0, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    invoke-interface {v3, v0}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v14

    .line 117
    invoke-static {v3, v8}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;Landroid/view/KeyEvent;)I

    move-result v0

    invoke-virtual {v8, v0}, Landroid/view/KeyEvent;->getUnicodeChar(I)I

    move-result v0

    .line 119
    iget-boolean v2, v1, Landroid/text/method/QwertyKeyListener;->mFullKeyboard:Z

    const/4 v15, 0x1

    if-nez v2, :cond_78

    .line 120
    invoke-virtual {v8}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    .line 121
    if-lez v6, :cond_78

    if-ne v12, v11, :cond_78

    if-lez v12, :cond_78

    .line 122
    add-int/lit8 v2, v12, -0x1

    invoke-interface {v3, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v4

    .line 124
    if-eq v4, v0, :cond_69

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v2

    if-ne v4, v2, :cond_78

    :cond_69
    if-eqz p1, :cond_78

    .line 125
    const/4 v5, 0x0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v6}, Landroid/text/method/QwertyKeyListener;->showCharacterPicker(Landroid/view/View;Landroid/text/Editable;CZI)Z

    move-result v4

    if-eqz v4, :cond_78

    .line 126
    invoke-static/range {p2 .. p2}, Landroid/text/method/QwertyKeyListener;->resetMetaState(Landroid/text/Spannable;)V

    .line 127
    return v15

    .line 133
    :cond_78
    const v1, 0xef01

    if-ne v0, v1, :cond_94

    .line 134
    if-eqz p1, :cond_8e

    .line 135
    const/4 v5, 0x1

    const/4 v6, 0x1

    const v4, 0xef01

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Landroid/text/method/QwertyKeyListener;->showCharacterPicker(Landroid/view/View;Landroid/text/Editable;CZI)Z

    goto :goto_90

    .line 134
    :cond_8e
    move-object/from16 v3, p2

    .line 138
    :goto_90
    invoke-static {v3}, Landroid/text/method/QwertyKeyListener;->resetMetaState(Landroid/text/Spannable;)V

    .line 139
    return v15

    .line 142
    :cond_94
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const v4, 0xef00

    const/4 v5, 0x4

    const/16 v6, 0x10

    if-ne v0, v4, :cond_d2

    .line 145
    if-ne v12, v11, :cond_bc

    .line 146
    move v0, v11

    .line 148
    :goto_a5
    if-lez v0, :cond_ba

    sub-int v4, v11, v0

    if-ge v4, v5, :cond_ba

    add-int/lit8 v4, v0, -0x1

    .line 149
    invoke-interface {v3, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v4

    invoke-static {v4, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    if-ltz v4, :cond_ba

    .line 150
    add-int/lit8 v0, v0, -0x1

    goto :goto_a5

    .line 156
    :cond_ba
    move v4, v0

    goto :goto_bd

    .line 153
    :cond_bc
    move v4, v12

    .line 156
    :goto_bd
    nop

    .line 158
    :try_start_be
    invoke-static {v3, v4, v11}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v0

    .line 159
    invoke-static {v0, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_c6
    .catch Ljava/lang/NumberFormatException; {:try_start_be .. :try_end_c6} :catch_c7

    .line 160
    goto :goto_c9

    :catch_c7
    move-exception v0

    const/4 v0, -0x1

    .line 162
    :goto_c9
    if-ltz v0, :cond_d1

    .line 163
    nop

    .line 164
    invoke-static {v3, v4, v11}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 165
    move v12, v4

    goto :goto_d2

    .line 167
    :cond_d1
    move v0, v9

    .line 171
    :cond_d2
    :goto_d2
    const/16 v4, 0xa

    move/from16 v16, v5

    const/16 v5, 0x22

    move/from16 v17, v6

    move/from16 v18, v15

    const/16 v15, 0x21

    if-eqz v0, :cond_269

    .line 172
    nop

    .line 174
    const/high16 v7, -0x80000000

    and-int/2addr v7, v0

    if-eqz v7, :cond_ee

    .line 175
    nop

    .line 176
    const v7, 0x7fffffff

    and-int/2addr v0, v7

    move/from16 v7, v18

    goto :goto_ef

    .line 174
    :cond_ee
    move v7, v9

    .line 179
    :goto_ef
    if-ne v13, v12, :cond_120

    if-ne v14, v11, :cond_120

    .line 180
    nop

    .line 182
    sub-int v13, v11, v12

    add-int/lit8 v13, v13, -0x1

    if-nez v13, :cond_114

    .line 183
    invoke-interface {v3, v12}, Landroid/text/Editable;->charAt(I)C

    move-result v13

    .line 184
    invoke-static {v13, v0}, Landroid/view/KeyEvent;->getDeadChar(II)I

    move-result v13

    .line 187
    if-ne v0, v13, :cond_10b

    invoke-virtual {v8}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v8

    if-lez v8, :cond_10b

    .line 188
    return v18

    .line 191
    :cond_10b
    if-eqz v13, :cond_114

    .line 192
    nop

    .line 193
    nop

    .line 194
    move v7, v9

    move v0, v13

    move/from16 v8, v18

    goto :goto_115

    .line 198
    :cond_114
    move v8, v9

    :goto_115
    if-nez v8, :cond_120

    .line 199
    invoke-static {v3, v11}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 200
    sget-object v8, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    invoke-interface {v3, v8}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 201
    move v12, v11

    .line 205
    :cond_120
    and-int/lit8 v8, v10, 0x1

    const/16 v13, 0x11

    if-eqz v8, :cond_174

    .line 206
    invoke-static {v0}, Ljava/lang/Character;->isLowerCase(I)Z

    move-result v8

    if-eqz v8, :cond_171

    iget-object v8, v1, Landroid/text/method/QwertyKeyListener;->mAutoCap:Landroid/text/method/TextKeyListener$Capitalize;

    .line 207
    invoke-static {v8, v3, v12}, Landroid/text/method/TextKeyListener;->shouldCap(Landroid/text/method/TextKeyListener$Capitalize;Ljava/lang/CharSequence;I)Z

    move-result v8

    if-eqz v8, :cond_16e

    .line 208
    sget-object v8, Landroid/text/method/TextKeyListener;->CAPPED:Ljava/lang/Object;

    invoke-interface {v3, v8}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v8

    .line 209
    sget-object v14, Landroid/text/method/TextKeyListener;->CAPPED:Ljava/lang/Object;

    invoke-interface {v3, v14}, Landroid/text/Editable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v14

    .line 211
    if-ne v8, v12, :cond_152

    shr-int/lit8 v8, v14, 0x10

    const v14, 0xffff

    and-int/2addr v8, v14

    if-ne v8, v0, :cond_152

    .line 212
    sget-object v8, Landroid/text/method/TextKeyListener;->CAPPED:Ljava/lang/Object;

    invoke-interface {v3, v8}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    const/16 v17, 0x2

    goto :goto_176

    .line 214
    :cond_152
    shl-int/lit8 v8, v0, 0x10

    .line 215
    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v0

    .line 217
    if-nez v12, :cond_163

    .line 218
    sget-object v14, Landroid/text/method/TextKeyListener;->CAPPED:Ljava/lang/Object;

    or-int/2addr v8, v13

    invoke-interface {v3, v14, v9, v9, v8}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    const/16 v17, 0x2

    goto :goto_176

    .line 221
    :cond_163
    sget-object v14, Landroid/text/method/TextKeyListener;->CAPPED:Ljava/lang/Object;

    const/16 v17, 0x2

    add-int/lit8 v6, v12, -0x1

    or-int/2addr v8, v15

    invoke-interface {v3, v14, v6, v12, v8}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_176

    .line 207
    :cond_16e
    const/16 v17, 0x2

    goto :goto_176

    .line 206
    :cond_171
    const/16 v17, 0x2

    goto :goto_176

    .line 205
    :cond_174
    const/16 v17, 0x2

    .line 228
    :goto_176
    if-eq v12, v11, :cond_17b

    .line 229
    invoke-static {v3, v11}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 231
    :cond_17b
    sget-object v6, Landroid/text/method/QwertyKeyListener;->OLD_SEL_START:Ljava/lang/Object;

    invoke-interface {v3, v6, v12, v12, v13}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 234
    int-to-char v6, v0

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v12, v11, v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 236
    sget-object v6, Landroid/text/method/QwertyKeyListener;->OLD_SEL_START:Ljava/lang/Object;

    invoke-interface {v3, v6}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .line 237
    invoke-static {v3}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v8

    .line 239
    if-ge v6, v8, :cond_1a3

    .line 240
    sget-object v11, Landroid/text/method/TextKeyListener;->LAST_TYPED:Ljava/lang/Object;

    invoke-interface {v3, v11, v6, v8, v15}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 244
    if-eqz v7, :cond_1a3

    .line 245
    invoke-static {v3, v6, v8}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 246
    sget-object v7, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    invoke-interface {v3, v7, v6, v8, v15}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 251
    :cond_1a3
    invoke-static {v3}, Landroid/text/method/QwertyKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    .line 256
    and-int/lit8 v7, v10, 0x2

    const/16 v8, 0x16

    const/16 v11, 0x20

    if-eqz v7, :cond_21f

    iget-boolean v7, v1, Landroid/text/method/QwertyKeyListener;->mAutoText:Z

    if-eqz v7, :cond_21f

    if-eq v0, v11, :cond_1d0

    const/16 v7, 0x9

    if-eq v0, v7, :cond_1d0

    if-eq v0, v4, :cond_1d0

    const/16 v4, 0x2c

    if-eq v0, v4, :cond_1d0

    const/16 v4, 0x2e

    if-eq v0, v4, :cond_1d0

    if-eq v0, v15, :cond_1d0

    const/16 v4, 0x3f

    if-eq v0, v4, :cond_1d0

    if-eq v0, v5, :cond_1d0

    .line 259
    invoke-static {v0}, Ljava/lang/Character;->getType(I)I

    move-result v0

    if-ne v0, v8, :cond_21f

    :cond_1d0
    sget-object v0, Landroid/text/method/TextKeyListener;->INHIBIT_REPLACEMENT:Ljava/lang/Object;

    .line 260
    invoke-interface {v3, v0}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    if-eq v0, v6, :cond_21f

    .line 264
    move v0, v6

    :goto_1d9
    if-lez v0, :cond_1ef

    .line 265
    add-int/lit8 v4, v0, -0x1

    invoke-interface {v3, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v4

    .line 266
    const/16 v7, 0x27

    if-eq v4, v7, :cond_1ec

    invoke-static {v4}, Ljava/lang/Character;->isLetter(C)Z

    move-result v4

    if-nez v4, :cond_1ec

    .line 267
    goto :goto_1ef

    .line 264
    :cond_1ec
    add-int/lit8 v0, v0, -0x1

    goto :goto_1d9

    .line 271
    :cond_1ef
    :goto_1ef
    invoke-direct {v1, v3, v0, v6, v2}, Landroid/text/method/QwertyKeyListener;->getReplacement(Ljava/lang/CharSequence;IILandroid/view/View;)Ljava/lang/String;

    move-result-object v2

    .line 273
    if-eqz v2, :cond_21f

    .line 274
    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v4

    const-class v7, Landroid/text/method/QwertyKeyListener$Replaced;

    invoke-interface {v3, v9, v4, v7}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/method/QwertyKeyListener$Replaced;

    .line 276
    move v7, v9

    :goto_202
    array-length v12, v4

    if-ge v7, v12, :cond_20d

    .line 277
    aget-object v12, v4, v7

    invoke-interface {v3, v12}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 276
    add-int/lit8 v7, v7, 0x1

    goto :goto_202

    .line 279
    :cond_20d
    sub-int v4, v6, v0

    new-array v4, v4, [C

    .line 280
    invoke-static {v3, v0, v6, v4, v9}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 282
    new-instance v7, Landroid/text/method/QwertyKeyListener$Replaced;

    invoke-direct {v7, v4}, Landroid/text/method/QwertyKeyListener$Replaced;-><init>([C)V

    invoke-interface {v3, v7, v0, v6, v15}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 284
    invoke-interface {v3, v0, v6, v2}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 290
    :cond_21f
    and-int/lit8 v0, v10, 0x4

    if-eqz v0, :cond_268

    iget-boolean v0, v1, Landroid/text/method/QwertyKeyListener;->mAutoText:Z

    if-eqz v0, :cond_268

    .line 291
    invoke-static {v3}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 292
    add-int/lit8 v1, v0, -0x3

    if-ltz v1, :cond_268

    .line 293
    add-int/lit8 v2, v0, -0x1

    invoke-interface {v3, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v4

    if-ne v4, v11, :cond_268

    add-int/lit8 v0, v0, -0x2

    .line 294
    invoke-interface {v3, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v4

    if-ne v4, v11, :cond_268

    .line 295
    invoke-interface {v3, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v4

    .line 297
    nop

    :goto_244
    if-lez v1, :cond_257

    .line 298
    if-eq v4, v5, :cond_24e

    .line 299
    invoke-static {v4}, Ljava/lang/Character;->getType(C)I

    move-result v6

    if-ne v6, v8, :cond_257

    .line 300
    :cond_24e
    add-int/lit8 v4, v1, -0x1

    invoke-interface {v3, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v4

    .line 297
    add-int/lit8 v1, v1, -0x1

    goto :goto_244

    .line 306
    :cond_257
    invoke-static {v4}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    if-nez v1, :cond_263

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_268

    .line 307
    :cond_263
    const-string v1, "."

    invoke-interface {v3, v0, v2, v1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 313
    :cond_268
    return v18

    .line 314
    :cond_269
    const/16 v17, 0x2

    const/16 v0, 0x43

    if-ne v7, v0, :cond_2eb

    .line 315
    invoke-virtual {v8}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-nez v0, :cond_27e

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v6

    if-eqz v6, :cond_2eb

    goto :goto_280

    :cond_27e
    move/from16 v0, v17

    :goto_280
    if-ne v12, v11, :cond_2eb

    .line 319
    nop

    .line 326
    sget-object v6, Landroid/text/method/TextKeyListener;->LAST_TYPED:Ljava/lang/Object;

    invoke-interface {v3, v6}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    if-ne v6, v12, :cond_295

    .line 327
    add-int/lit8 v6, v12, -0x1

    invoke-interface {v3, v6}, Landroid/text/Editable;->charAt(I)C

    move-result v6

    if-eq v6, v4, :cond_295

    .line 328
    move v6, v0

    goto :goto_297

    .line 331
    :cond_295
    move/from16 v6, v18

    :goto_297
    sub-int v0, v12, v6

    const-class v4, Landroid/text/method/QwertyKeyListener$Replaced;

    invoke-interface {v3, v0, v12, v4}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/method/QwertyKeyListener$Replaced;

    .line 334
    array-length v4, v0

    if-lez v4, :cond_302

    .line 335
    aget-object v4, v0, v9

    invoke-interface {v3, v4}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .line 336
    aget-object v6, v0, v9

    invoke-interface {v3, v6}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    .line 337
    new-instance v10, Ljava/lang/String;

    aget-object v11, v0, v9

    invoke-static {v11}, Landroid/text/method/QwertyKeyListener$Replaced;->-$$Nest$fgetmText(Landroid/text/method/QwertyKeyListener$Replaced;)[C

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/String;-><init>([C)V

    .line 339
    aget-object v0, v0, v9

    invoke-interface {v3, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 345
    if-lt v12, v6, :cond_2e3

    .line 346
    sget-object v0, Landroid/text/method/TextKeyListener;->INHIBIT_REPLACEMENT:Ljava/lang/Object;

    invoke-interface {v3, v0, v6, v6, v5}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 348
    invoke-interface {v3, v4, v6, v10}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 350
    sget-object v0, Landroid/text/method/TextKeyListener;->INHIBIT_REPLACEMENT:Ljava/lang/Object;

    invoke-interface {v3, v0}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    .line 351
    add-int/lit8 v1, v0, -0x1

    if-ltz v1, :cond_2da

    .line 352
    sget-object v2, Landroid/text/method/TextKeyListener;->INHIBIT_REPLACEMENT:Ljava/lang/Object;

    invoke-interface {v3, v2, v1, v0, v15}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2df

    .line 356
    :cond_2da
    sget-object v0, Landroid/text/method/TextKeyListener;->INHIBIT_REPLACEMENT:Ljava/lang/Object;

    invoke-interface {v3, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 358
    :goto_2df
    invoke-static {v3}, Landroid/text/method/QwertyKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    .line 364
    return v18

    .line 360
    :cond_2e3
    invoke-static {v3}, Landroid/text/method/QwertyKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    .line 361
    invoke-super/range {p0 .. p4}, Landroid/text/method/BaseKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 366
    :cond_2eb
    const/16 v0, 0x6f

    if-ne v7, v0, :cond_302

    invoke-virtual {v8}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_302

    .line 370
    if-ne v13, v12, :cond_303

    if-ne v14, v11, :cond_303

    .line 371
    invoke-static {v3, v11}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 372
    sget-object v0, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    invoke-interface {v3, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 373
    return v18

    .line 366
    :cond_302
    nop

    .line 377
    :cond_303
    invoke-super/range {p0 .. p4}, Landroid/text/method/BaseKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
