.class Landroid/webkit/LegacyErrorStrings;
.super Ljava/lang/Object;
.source "LegacyErrorStrings.java"


# static fields
.field private static final blacklist LOGTAG:Ljava/lang/String; = "Http"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist getResource(I)I
    .registers 4

    .line 45
    const v0, 0x10404b7

    packed-switch p0, :pswitch_data_5c

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Using generic message for unknown error code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Http"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    return v0

    .line 47
    :pswitch_1f
    const p0, 0x10404bf

    return p0

    .line 50
    :pswitch_23
    return v0

    .line 53
    :pswitch_24
    const p0, 0x10404be

    return p0

    .line 56
    :pswitch_28
    const p0, 0x10404c4

    return p0

    .line 59
    :pswitch_2c
    const p0, 0x10404b8

    return p0

    .line 62
    :pswitch_30
    const p0, 0x10404c0

    return p0

    .line 65
    :pswitch_34
    const p0, 0x10404b9

    return p0

    .line 68
    :pswitch_38
    const p0, 0x10404bd

    return p0

    .line 71
    :pswitch_3c
    const p0, 0x10404c2

    return p0

    .line 74
    :pswitch_40
    const p0, 0x10404c1

    return p0

    .line 77
    :pswitch_44
    const p0, 0x1040008

    return p0

    .line 80
    :pswitch_48
    const p0, 0x10404ba

    return p0

    .line 83
    :pswitch_4c
    const p0, 0x1040007

    return p0

    .line 86
    :pswitch_50
    const p0, 0x10404bb

    return p0

    .line 89
    :pswitch_54
    const p0, 0x10404bc

    return p0

    .line 92
    :pswitch_58
    const p0, 0x10404c3

    return p0

    :pswitch_data_5c
    .packed-switch -0xf
        :pswitch_58
        :pswitch_54
        :pswitch_50
        :pswitch_4c
        :pswitch_48
        :pswitch_44
        :pswitch_40
        :pswitch_3c
        :pswitch_38
        :pswitch_34
        :pswitch_30
        :pswitch_2c
        :pswitch_28
        :pswitch_24
        :pswitch_23
        :pswitch_1f
    .end packed-switch
.end method

.method static blacklist getString(ILandroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 37
    invoke-static {p0}, Landroid/webkit/LegacyErrorStrings;->getResource(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
