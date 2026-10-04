.class public Landroid/telephony/ims/ImsCallSession$State;
.super Ljava/lang/Object;
.source "ImsCallSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/ImsCallSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "State"
.end annotation


# static fields
.field public static final greylist-max-o ESTABLISHED:I = 0x4

.field public static final greylist-max-o ESTABLISHING:I = 0x3

.field public static final greylist-max-o IDLE:I = 0x0

.field public static final greylist-max-o INITIATED:I = 0x1

.field public static final greylist-max-o INVALID:I = -0x1

.field public static final greylist-max-o NEGOTIATING:I = 0x2

.field public static final greylist-max-o REESTABLISHING:I = 0x6

.field public static final greylist-max-o RENEGOTIATING:I = 0x5

.field public static final greylist-max-o TERMINATED:I = 0x8

.field public static final greylist-max-o TERMINATING:I = 0x7


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    return-void
.end method

.method public static greylist-max-o toString(I)Ljava/lang/String;
    .registers 1

    .line 72
    packed-switch p0, :pswitch_data_22

    .line 92
    const-string p0, "UNKNOWN"

    return-object p0

    .line 90
    :pswitch_6
    const-string p0, "TERMINATED"

    return-object p0

    .line 88
    :pswitch_9
    const-string p0, "TERMINATING"

    return-object p0

    .line 86
    :pswitch_c
    const-string p0, "REESTABLISHING"

    return-object p0

    .line 84
    :pswitch_f
    const-string p0, "RENEGOTIATING"

    return-object p0

    .line 82
    :pswitch_12
    const-string p0, "ESTABLISHED"

    return-object p0

    .line 80
    :pswitch_15
    const-string p0, "ESTABLISHING"

    return-object p0

    .line 78
    :pswitch_18
    const-string p0, "NEGOTIATING"

    return-object p0

    .line 76
    :pswitch_1b
    const-string p0, "INITIATED"

    return-object p0

    .line 74
    :pswitch_1e
    const-string p0, "IDLE"

    return-object p0

    nop

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method
