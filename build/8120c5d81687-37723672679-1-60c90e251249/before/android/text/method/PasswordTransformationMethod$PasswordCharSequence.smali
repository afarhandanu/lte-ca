.class Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;
.super Ljava/lang/Object;
.source "PasswordTransformationMethod.java"

# interfaces
.implements Ljava/lang/CharSequence;
.implements Landroid/text/GetChars;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/method/PasswordTransformationMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PasswordCharSequence"
.end annotation


# instance fields
.field private greylist-max-o mSource:Ljava/lang/CharSequence;


# direct methods
.method public constructor greylist-max-o <init>(Ljava/lang/CharSequence;)V
    .registers 2

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput-object p1, p0, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->mSource:Ljava/lang/CharSequence;

    .line 146
    return-void
.end method


# virtual methods
.method public whitelist test-api charAt(I)C
    .registers 7

    .line 153
    iget-object v0, p0, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->mSource:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_58

    .line 154
    iget-object v0, p0, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->mSource:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spanned;

    .line 156
    sget-object v1, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    .line 157
    sget-object v2, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    invoke-interface {v0, v2}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    .line 159
    if-lt p1, v1, :cond_21

    if-ge p1, v2, :cond_21

    .line 160
    iget-object v0, p0, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->mSource:Ljava/lang/CharSequence;

    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    return p1

    .line 163
    :cond_21
    invoke-interface {v0}, Landroid/text/Spanned;->length()I

    move-result v1

    const-class v2, Landroid/text/method/PasswordTransformationMethod$Visible;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/method/PasswordTransformationMethod$Visible;

    .line 165
    nop

    :goto_2f
    array-length v2, v1

    if-ge v3, v2, :cond_58

    .line 166
    aget-object v2, v1, v3

    invoke-static {v2}, Landroid/text/method/PasswordTransformationMethod$Visible;->-$$Nest$fgetmTransformer(Landroid/text/method/PasswordTransformationMethod$Visible;)Landroid/text/method/PasswordTransformationMethod;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_55

    .line 167
    aget-object v2, v1, v3

    invoke-interface {v0, v2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 168
    aget-object v4, v1, v3

    invoke-interface {v0, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    .line 170
    if-lt p1, v2, :cond_55

    if-ge p1, v4, :cond_55

    .line 171
    iget-object v0, p0, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->mSource:Ljava/lang/CharSequence;

    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    return p1

    .line 165
    :cond_55
    add-int/lit8 v3, v3, 0x1

    goto :goto_2f

    .line 177
    :cond_58
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->-$$Nest$sfgetDOT()C

    move-result p1

    return p1
.end method

.method public whitelist getChars(II[CI)V
    .registers 15

    .line 192
    iget-object v0, p0, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->mSource:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2, p3, p4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 194
    nop

    .line 195
    nop

    .line 196
    nop

    .line 198
    iget-object v0, p0, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->mSource:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spanned;

    const/4 v1, 0x0

    if-eqz v0, :cond_52

    .line 199
    iget-object v0, p0, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->mSource:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spanned;

    .line 201
    sget-object v2, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    invoke-interface {v0, v2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 202
    sget-object v3, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    invoke-interface {v0, v3}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    .line 204
    invoke-interface {v0}, Landroid/text/Spanned;->length()I

    move-result v4

    const-class v5, Landroid/text/method/PasswordTransformationMethod$Visible;

    invoke-interface {v0, v1, v4, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/method/PasswordTransformationMethod$Visible;

    .line 205
    array-length v5, v4

    .line 206
    new-array v6, v5, [I

    .line 207
    new-array v7, v5, [I

    .line 209
    move v8, v1

    :goto_31
    if-ge v8, v5, :cond_57

    .line 210
    aget-object v9, v4, v8

    invoke-static {v9}, Landroid/text/method/PasswordTransformationMethod$Visible;->-$$Nest$fgetmTransformer(Landroid/text/method/PasswordTransformationMethod$Visible;)Landroid/text/method/PasswordTransformationMethod;

    move-result-object v9

    invoke-interface {v0, v9}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v9

    if-ltz v9, :cond_4f

    .line 211
    aget-object v9, v4, v8

    invoke-interface {v0, v9}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v9

    aput v9, v6, v8

    .line 212
    aget-object v9, v4, v8

    invoke-interface {v0, v9}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v9

    aput v9, v7, v8

    .line 209
    :cond_4f
    add-int/lit8 v8, v8, 0x1

    goto :goto_31

    .line 198
    :cond_52
    const/4 v2, -0x1

    const/4 v6, 0x0

    move v5, v1

    move v3, v2

    move-object v7, v6

    .line 217
    :cond_57
    move v0, p1

    :goto_58
    if-ge v0, p2, :cond_7f

    .line 218
    if-lt v0, v2, :cond_5e

    if-lt v0, v3, :cond_7c

    .line 219
    :cond_5e
    nop

    .line 221
    move v4, v1

    :goto_60
    if-ge v4, v5, :cond_70

    .line 222
    aget v8, v6, v4

    if-lt v0, v8, :cond_6d

    aget v8, v7, v4

    if-ge v0, v8, :cond_6d

    .line 223
    nop

    .line 224
    const/4 v4, 0x1

    goto :goto_71

    .line 221
    :cond_6d
    add-int/lit8 v4, v4, 0x1

    goto :goto_60

    :cond_70
    move v4, v1

    .line 228
    :goto_71
    if-nez v4, :cond_7c

    .line 229
    sub-int v4, v0, p1

    add-int/2addr v4, p4

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->-$$Nest$sfgetDOT()C

    move-result v8

    aput-char v8, p3, v4

    .line 217
    :cond_7c
    add-int/lit8 v0, v0, 0x1

    goto :goto_58

    .line 233
    :cond_7f
    return-void
.end method

.method public whitelist test-api length()I
    .registers 2

    .line 149
    iget-object v0, p0, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->mSource:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    return v0
.end method

.method public whitelist test-api subSequence(II)Ljava/lang/CharSequence;
    .registers 5

    .line 181
    sub-int v0, p2, p1

    new-array v0, v0, [C

    .line 183
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->getChars(II[CI)V

    .line 184
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([C)V

    return-object p1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 188
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
