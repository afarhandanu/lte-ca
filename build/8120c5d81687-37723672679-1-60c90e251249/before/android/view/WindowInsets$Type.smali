.class public final Landroid/view/WindowInsets$Type;
.super Ljava/lang/Object;
.source "WindowInsets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/WindowInsets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/WindowInsets$Type$InsetsType;
    }
.end annotation


# static fields
.field static final blacklist ALL:I = 0x1ff

.field static final blacklist CAPTION_BAR:I = 0x4

.field static final blacklist DEFAULT_VISIBLE:I = 0x1f7

.field static final blacklist DISPLAY_CUTOUT:I = 0x80

.field static final blacklist IME:I = 0x8

.field static final blacklist MANDATORY_SYSTEM_GESTURES:I = 0x20

.field static final blacklist NAVIGATION_BARS:I = 0x2

.field static final blacklist STATUS_BARS:I = 0x1

.field static final blacklist SYSTEM_GESTURES:I = 0x10

.field static final blacklist SYSTEM_OVERLAYS:I = 0x100

.field static final blacklist TAPPABLE_ELEMENT:I = 0x40

.field public static final blacklist TYPES:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1909
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Landroid/view/WindowInsets$Type;->TYPES:[I

    return-void

    :array_a
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
        0x100
    .end array-data
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 2004
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2005
    return-void
.end method

.method public static blacklist all()I
    .registers 1

    .line 2157
    const/16 v0, 0x1ff

    return v0
.end method

.method public static whitelist captionBar()I
    .registers 1

    .line 2044
    const/4 v0, 0x4

    return v0
.end method

.method public static blacklist defaultVisible()I
    .registers 1

    .line 2147
    const/16 v0, 0x1f7

    return v0
.end method

.method public static whitelist displayCutout()I
    .registers 1

    .line 2111
    const/16 v0, 0x80

    return v0
.end method

.method public static blacklist hasCompatSystemBars(I)Z
    .registers 1

    .line 2166
    and-int/lit8 p0, p0, 0x3

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public static whitelist ime()I
    .registers 1

    .line 2052
    const/16 v0, 0x8

    return v0
.end method

.method public static blacklist indexOf(I)I
    .registers 4

    .line 1938
    sparse-switch p0, :sswitch_data_30

    .line 1958
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown insets type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1956
    :sswitch_1c
    const/16 p0, 0x8

    return p0

    .line 1954
    :sswitch_1f
    const/4 p0, 0x7

    return p0

    .line 1952
    :sswitch_21
    const/4 p0, 0x6

    return p0

    .line 1950
    :sswitch_23
    const/4 p0, 0x5

    return p0

    .line 1948
    :sswitch_25
    const/4 p0, 0x4

    return p0

    .line 1946
    :sswitch_27
    const/4 p0, 0x3

    return p0

    .line 1944
    :sswitch_29
    const/4 p0, 0x2

    return p0

    .line 1942
    :sswitch_2b
    const/4 p0, 0x1

    return p0

    .line 1940
    :sswitch_2d
    const/4 p0, 0x0

    return p0

    nop

    :sswitch_data_30
    .sparse-switch
        0x1 -> :sswitch_2d
        0x2 -> :sswitch_2b
        0x4 -> :sswitch_29
        0x8 -> :sswitch_27
        0x10 -> :sswitch_25
        0x20 -> :sswitch_23
        0x40 -> :sswitch_21
        0x80 -> :sswitch_1f
        0x100 -> :sswitch_1c
    .end sparse-switch
.end method

.method public static whitelist mandatorySystemGestures()I
    .registers 1

    .line 2082
    const/16 v0, 0x20

    return v0
.end method

.method public static whitelist navigationBars()I
    .registers 1

    .line 2036
    const/4 v0, 0x2

    return v0
.end method

.method public static whitelist statusBars()I
    .registers 1

    .line 2028
    const/4 v0, 0x1

    return v0
.end method

.method public static whitelist systemBars()I
    .registers 1

    .line 2137
    const/16 v0, 0x107

    return v0
.end method

.method public static whitelist systemGestures()I
    .registers 1

    .line 2074
    const/16 v0, 0x10

    return v0
.end method

.method public static whitelist systemOverlays()I
    .registers 1

    .line 2128
    const/16 v0, 0x100

    return v0
.end method

.method public static whitelist tappableElement()I
    .registers 1

    .line 2090
    const/16 v0, 0x40

    return v0
.end method

.method public static blacklist toString(I)Ljava/lang/String;
    .registers 3

    .line 1967
    if-nez p0, :cond_5

    .line 1968
    const-string p0, ""

    return-object p0

    .line 1970
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1971
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_14

    .line 1972
    const-string/jumbo v1, "statusBars "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1974
    :cond_14
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_1e

    .line 1975
    const-string/jumbo v1, "navigationBars "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1977
    :cond_1e
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_27

    .line 1978
    const-string v1, "captionBar "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1980
    :cond_27
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_30

    .line 1981
    const-string v1, "ime "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1983
    :cond_30
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_3a

    .line 1984
    const-string/jumbo v1, "systemGestures "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1986
    :cond_3a
    and-int/lit8 v1, p0, 0x20

    if-eqz v1, :cond_44

    .line 1987
    const-string/jumbo v1, "mandatorySystemGestures "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1989
    :cond_44
    and-int/lit8 v1, p0, 0x40

    if-eqz v1, :cond_4e

    .line 1990
    const-string/jumbo v1, "tappableElement "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1992
    :cond_4e
    and-int/lit16 v1, p0, 0x80

    if-eqz v1, :cond_57

    .line 1993
    const-string v1, "displayCutout "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1995
    :cond_57
    and-int/lit16 p0, p0, 0x100

    if-eqz p0, :cond_61

    .line 1996
    const-string/jumbo p0, "systemOverlays "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1998
    :cond_61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_74

    .line 1999
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 2001
    :cond_74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
