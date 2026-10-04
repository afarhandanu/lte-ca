.class public abstract Landroid/text/method/ReplacementTransformationMethod;
.super Ljava/lang/Object;
.source "ReplacementTransformationMethod.java"

# interfaces
.implements Landroid/text/method/TransformationMethod;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/method/ReplacementTransformationMethod$SpannedReplacementCharSequence;,
        Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;
    }
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract whitelist getOriginal()[C
.end method

.method protected abstract whitelist getReplacement()[C
.end method

.method public whitelist getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;
    .registers 8

    .line 54
    invoke-virtual {p0}, Landroid/text/method/ReplacementTransformationMethod;->getOriginal()[C

    move-result-object p2

    .line 55
    invoke-virtual {p0}, Landroid/text/method/ReplacementTransformationMethod;->getReplacement()[C

    move-result-object v0

    .line 60
    instance-of v1, p1, Landroid/text/Editable;

    if-nez v1, :cond_42

    .line 65
    nop

    .line 66
    array-length v1, p2

    .line 67
    const/4 v2, 0x0

    move v3, v2

    :goto_10
    if-ge v3, v1, :cond_1f

    .line 68
    aget-char v4, p2, v3

    invoke-static {p1, v4}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v4

    if-ltz v4, :cond_1c

    .line 69
    nop

    .line 70
    goto :goto_20

    .line 67
    :cond_1c
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_1f
    const/4 v2, 0x1

    .line 73
    :goto_20
    if-eqz v2, :cond_23

    .line 74
    return-object p1

    .line 77
    :cond_23
    instance-of v1, p1, Landroid/text/Spannable;

    if-nez v1, :cond_42

    .line 83
    instance-of v1, p1, Landroid/text/Spanned;

    if-eqz v1, :cond_38

    .line 84
    new-instance v1, Landroid/text/SpannedString;

    new-instance v2, Landroid/text/method/ReplacementTransformationMethod$SpannedReplacementCharSequence;

    check-cast p1, Landroid/text/Spanned;

    invoke-direct {v2, p1, p2, v0}, Landroid/text/method/ReplacementTransformationMethod$SpannedReplacementCharSequence;-><init>(Landroid/text/Spanned;[C[C)V

    invoke-direct {v1, v2}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    return-object v1

    .line 88
    :cond_38
    new-instance v1, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;

    invoke-direct {v1, p1, p2, v0}, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;-><init>(Ljava/lang/CharSequence;[C[C)V

    .line 90
    invoke-virtual {v1}, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 88
    return-object p1

    .line 95
    :cond_42
    instance-of v1, p1, Landroid/text/Spanned;

    if-eqz v1, :cond_4e

    .line 96
    new-instance v1, Landroid/text/method/ReplacementTransformationMethod$SpannedReplacementCharSequence;

    check-cast p1, Landroid/text/Spanned;

    invoke-direct {v1, p1, p2, v0}, Landroid/text/method/ReplacementTransformationMethod$SpannedReplacementCharSequence;-><init>(Landroid/text/Spanned;[C[C)V

    return-object v1

    .line 99
    :cond_4e
    new-instance v1, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;

    invoke-direct {v1, p1, p2, v0}, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;-><init>(Ljava/lang/CharSequence;[C[C)V

    return-object v1
.end method

.method public whitelist onFocusChanged(Landroid/view/View;Ljava/lang/CharSequence;ZILandroid/graphics/Rect;)V
    .registers 6

    .line 107
    return-void
.end method
