.class public abstract Landroid/text/LoginFilter;
.super Ljava/lang/Object;
.source "LoginFilter.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/LoginFilter$PasswordFilterGMail;,
        Landroid/text/LoginFilter$UsernameFilterGeneric;,
        Landroid/text/LoginFilter$UsernameFilterGMail;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private greylist-max-o mAppendInvalid:Z


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/text/LoginFilter;->mAppendInvalid:Z

    .line 42
    return-void
.end method

.method constructor greylist-max-o <init>(Z)V
    .registers 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-boolean p1, p0, Landroid/text/LoginFilter;->mAppendInvalid:Z

    .line 35
    return-void
.end method


# virtual methods
.method public whitelist filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .registers 11

    .line 56
    invoke-virtual {p0}, Landroid/text/LoginFilter;->onStart()V

    .line 60
    const/4 v0, 0x0

    move v1, v0

    :goto_5
    if-ge v1, p5, :cond_17

    .line 61
    invoke-interface {p4, v1}, Landroid/text/Spanned;->charAt(I)C

    move-result v2

    .line 62
    invoke-virtual {p0, v2}, Landroid/text/LoginFilter;->isAllowed(C)Z

    move-result v3

    if-nez v3, :cond_14

    invoke-virtual {p0, v2}, Landroid/text/LoginFilter;->onInvalidCharacter(C)V

    .line 60
    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 66
    :cond_17
    nop

    .line 67
    nop

    .line 69
    const/4 p5, 0x0

    move v1, p2

    :goto_1b
    if-ge v1, p3, :cond_45

    .line 70
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 71
    invoke-virtual {p0, v2}, Landroid/text/LoginFilter;->isAllowed(C)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 73
    add-int/lit8 v0, v0, 0x1

    goto :goto_42

    .line 75
    :cond_2a
    iget-boolean v3, p0, Landroid/text/LoginFilter;->mAppendInvalid:Z

    if-eqz v3, :cond_31

    .line 76
    add-int/lit8 v0, v0, 0x1

    goto :goto_3f

    .line 78
    :cond_31
    if-nez p5, :cond_3a

    .line 79
    new-instance p5, Landroid/text/SpannableStringBuilder;

    invoke-direct {p5, p1, p2, p3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;II)V

    .line 80
    sub-int v0, v1, p2

    .line 83
    :cond_3a
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p5, v0, v3}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 86
    :goto_3f
    invoke-virtual {p0, v2}, Landroid/text/LoginFilter;->onInvalidCharacter(C)V

    .line 69
    :goto_42
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 92
    :cond_45
    nop

    :goto_46
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result p1

    if-ge p6, p1, :cond_5c

    .line 93
    invoke-interface {p4, p6}, Landroid/text/Spanned;->charAt(I)C

    move-result p1

    .line 94
    invoke-virtual {p0, p1}, Landroid/text/LoginFilter;->isAllowed(C)Z

    move-result p2

    if-nez p2, :cond_59

    invoke-virtual {p0, p1}, Landroid/text/LoginFilter;->onInvalidCharacter(C)V

    .line 92
    :cond_59
    add-int/lit8 p6, p6, 0x1

    goto :goto_46

    .line 97
    :cond_5c
    invoke-virtual {p0}, Landroid/text/LoginFilter;->onStop()V

    .line 101
    return-object p5
.end method

.method public abstract whitelist isAllowed(C)Z
.end method

.method public whitelist onInvalidCharacter(C)V
    .registers 2

    .line 117
    return-void
.end method

.method public whitelist onStart()V
    .registers 1

    .line 109
    return-void
.end method

.method public whitelist onStop()V
    .registers 1

    .line 124
    return-void
.end method
