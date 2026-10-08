.class public Landroid/text/method/PasswordTransformationMethod;
.super Ljava/lang/Object;
.source "PasswordTransformationMethod.java"

# interfaces
.implements Landroid/text/method/TransformationMethod;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/method/PasswordTransformationMethod$ViewReference;,
        Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;,
        Landroid/text/method/PasswordTransformationMethod$Visible;
    }
.end annotation


# static fields
.field private static greylist-max-p DOT:C

.field private static greylist sInstance:Landroid/text/method/PasswordTransformationMethod;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetDOT()C
    .registers 1

    sget-char v0, Landroid/text/method/PasswordTransformationMethod;->DOT:C

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 270
    const/16 v0, 0x2022

    sput-char v0, Landroid/text/method/PasswordTransformationMethod;->DOT:C

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist getInstance()Landroid/text/method/PasswordTransformationMethod;
    .registers 1

    .line 66
    sget-object v0, Landroid/text/method/PasswordTransformationMethod;->sInstance:Landroid/text/method/PasswordTransformationMethod;

    if-eqz v0, :cond_7

    .line 67
    sget-object v0, Landroid/text/method/PasswordTransformationMethod;->sInstance:Landroid/text/method/PasswordTransformationMethod;

    return-object v0

    .line 69
    :cond_7
    new-instance v0, Landroid/text/method/PasswordTransformationMethod;

    invoke-direct {v0}, Landroid/text/method/PasswordTransformationMethod;-><init>()V

    sput-object v0, Landroid/text/method/PasswordTransformationMethod;->sInstance:Landroid/text/method/PasswordTransformationMethod;

    .line 70
    sget-object v0, Landroid/text/method/PasswordTransformationMethod;->sInstance:Landroid/text/method/PasswordTransformationMethod;

    return-object v0
.end method

.method private static greylist-max-o removeVisibleSpans(Landroid/text/Spannable;)V
    .registers 4

    .line 135
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v0

    const-class v1, Landroid/text/method/PasswordTransformationMethod$Visible;

    const/4 v2, 0x0

    invoke-interface {p0, v2, v0, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/method/PasswordTransformationMethod$Visible;

    .line 136
    nop

    :goto_e
    array-length v1, v0

    if-ge v2, v1, :cond_19

    .line 137
    aget-object v1, v0, v2

    invoke-interface {p0, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 136
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 139
    :cond_19
    return-void
.end method


# virtual methods
.method public whitelist afterTextChanged(Landroid/text/Editable;)V
    .registers 2

    .line 120
    return-void
.end method

.method public whitelist beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 76
    return-void
.end method

.method public whitelist getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;
    .registers 8

    .line 41
    instance-of v0, p1, Landroid/text/Spannable;

    if-eqz v0, :cond_2d

    .line 42
    move-object v0, p1

    check-cast v0, Landroid/text/Spannable;

    .line 50
    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v1

    const-class v2, Landroid/text/method/PasswordTransformationMethod$ViewReference;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/method/PasswordTransformationMethod$ViewReference;

    .line 52
    move v2, v3

    :goto_15
    array-length v4, v1

    if-ge v2, v4, :cond_20

    .line 53
    aget-object v4, v1, v2

    invoke-interface {v0, v4}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 52
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 56
    :cond_20
    invoke-static {v0}, Landroid/text/method/PasswordTransformationMethod;->removeVisibleSpans(Landroid/text/Spannable;)V

    .line 58
    new-instance v1, Landroid/text/method/PasswordTransformationMethod$ViewReference;

    invoke-direct {v1, p2}, Landroid/text/method/PasswordTransformationMethod$ViewReference;-><init>(Landroid/view/View;)V

    const/16 p2, 0x22

    invoke-interface {v0, v1, v3, v3, p2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 62
    :cond_2d
    new-instance p2, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;

    invoke-direct {p2, p1}, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;-><init>(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method public whitelist onFocusChanged(Landroid/view/View;Ljava/lang/CharSequence;ZILandroid/graphics/Rect;)V
    .registers 6

    .line 125
    if-nez p3, :cond_b

    .line 126
    instance-of p1, p2, Landroid/text/Spannable;

    if-eqz p1, :cond_b

    .line 127
    check-cast p2, Landroid/text/Spannable;

    .line 129
    invoke-static {p2}, Landroid/text/method/PasswordTransformationMethod;->removeVisibleSpans(Landroid/text/Spannable;)V

    .line 132
    :cond_b
    return-void
.end method

.method public whitelist onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 8

    .line 80
    instance-of p3, p1, Landroid/text/Spannable;

    if-eqz p3, :cond_50

    .line 81
    move-object p3, p1

    check-cast p3, Landroid/text/Spannable;

    .line 82
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const-class v0, Landroid/text/method/PasswordTransformationMethod$ViewReference;

    const/4 v1, 0x0

    invoke-interface {p3, v1, p1, v0}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/text/method/PasswordTransformationMethod$ViewReference;

    .line 84
    array-length v0, p1

    if-nez v0, :cond_18

    .line 85
    return-void

    .line 95
    :cond_18
    nop

    .line 96
    const/4 v0, 0x0

    :goto_1a
    if-nez v0, :cond_2a

    array-length v2, p1

    if-ge v1, v2, :cond_2a

    .line 97
    aget-object v0, p1, v1

    invoke-virtual {v0}, Landroid/text/method/PasswordTransformationMethod$ViewReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 96
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 100
    :cond_2a
    if-nez v0, :cond_2d

    .line 101
    return-void

    .line 104
    :cond_2d
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object p1

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/text/method/TextKeyListener;->getPrefs(Landroid/content/Context;)I

    move-result p1

    .line 105
    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_50

    .line 106
    if-lez p4, :cond_50

    .line 107
    invoke-static {p3}, Landroid/text/method/PasswordTransformationMethod;->removeVisibleSpans(Landroid/text/Spannable;)V

    .line 109
    const/4 p1, 0x1

    if-ne p4, p1, :cond_50

    .line 110
    new-instance p1, Landroid/text/method/PasswordTransformationMethod$Visible;

    invoke-direct {p1, p3, p0}, Landroid/text/method/PasswordTransformationMethod$Visible;-><init>(Landroid/text/Spannable;Landroid/text/method/PasswordTransformationMethod;)V

    add-int/2addr p4, p2

    const/16 v0, 0x21

    invoke-interface {p3, p1, p2, p4, v0}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 116
    :cond_50
    return-void
.end method
