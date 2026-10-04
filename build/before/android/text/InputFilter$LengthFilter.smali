.class public Landroid/text/InputFilter$LengthFilter;
.super Ljava/lang/Object;
.source "InputFilter.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/InputFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LengthFilter"
.end annotation


# instance fields
.field private final greylist mMax:I


# direct methods
.method public constructor whitelist <init>(I)V
    .registers 2

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    iput p1, p0, Landroid/text/InputFilter$LengthFilter;->mMax:I

    .line 174
    return-void
.end method


# virtual methods
.method public whitelist filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .registers 8

    .line 178
    iget v0, p0, Landroid/text/InputFilter$LengthFilter;->mMax:I

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result p4

    sub-int/2addr p6, p5

    sub-int/2addr p4, p6

    sub-int/2addr v0, p4

    .line 179
    const-string p4, ""

    if-gtz v0, :cond_e

    .line 180
    return-object p4

    .line 181
    :cond_e
    sub-int/2addr p3, p2

    if-lt v0, p3, :cond_13

    .line 182
    const/4 p1, 0x0

    return-object p1

    .line 184
    :cond_13
    add-int/2addr v0, p2

    .line 185
    add-int/lit8 p3, v0, -0x1

    invoke-interface {p1, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p3

    invoke-static {p3}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result p3

    if-eqz p3, :cond_25

    .line 186
    add-int/lit8 v0, v0, -0x1

    .line 187
    if-ne v0, p2, :cond_25

    .line 188
    return-object p4

    .line 191
    :cond_25
    invoke-interface {p1, p2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public whitelist getMax()I
    .registers 2

    .line 199
    iget v0, p0, Landroid/text/InputFilter$LengthFilter;->mMax:I

    return v0
.end method
