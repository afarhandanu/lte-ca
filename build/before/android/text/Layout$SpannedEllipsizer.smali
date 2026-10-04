.class Landroid/text/Layout$SpannedEllipsizer;
.super Landroid/text/Layout$Ellipsizer;
.source "Layout.java"

# interfaces
.implements Landroid/text/Spanned;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/Layout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SpannedEllipsizer"
.end annotation


# instance fields
.field private greylist-max-o mSpanned:Landroid/text/Spanned;


# direct methods
.method public constructor greylist-max-o <init>(Ljava/lang/CharSequence;)V
    .registers 2

    .line 3700
    invoke-direct {p0, p1}, Landroid/text/Layout$Ellipsizer;-><init>(Ljava/lang/CharSequence;)V

    .line 3701
    check-cast p1, Landroid/text/Spanned;

    iput-object p1, p0, Landroid/text/Layout$SpannedEllipsizer;->mSpanned:Landroid/text/Spanned;

    .line 3702
    return-void
.end method


# virtual methods
.method public whitelist getSpanEnd(Ljava/lang/Object;)I
    .registers 3

    .line 3713
    iget-object v0, p0, Landroid/text/Layout$SpannedEllipsizer;->mSpanned:Landroid/text/Spanned;

    invoke-interface {v0, p1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public whitelist getSpanFlags(Ljava/lang/Object;)I
    .registers 3

    .line 3717
    iget-object v0, p0, Landroid/text/Layout$SpannedEllipsizer;->mSpanned:Landroid/text/Spanned;

    invoke-interface {v0, p1}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public whitelist getSpanStart(Ljava/lang/Object;)I
    .registers 3

    .line 3709
    iget-object v0, p0, Landroid/text/Layout$SpannedEllipsizer;->mSpanned:Landroid/text/Spanned;

    invoke-interface {v0, p1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public whitelist getSpans(IILjava/lang/Class;)[Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    .line 3705
    iget-object v0, p0, Landroid/text/Layout$SpannedEllipsizer;->mSpanned:Landroid/text/Spanned;

    invoke-interface {v0, p1, p2, p3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public whitelist nextSpanTransition(IILjava/lang/Class;)I
    .registers 5

    .line 3722
    iget-object v0, p0, Landroid/text/Layout$SpannedEllipsizer;->mSpanned:Landroid/text/Spanned;

    invoke-interface {v0, p1, p2, p3}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result p1

    return p1
.end method

.method public whitelist test-api subSequence(II)Ljava/lang/CharSequence;
    .registers 11

    .line 3727
    sub-int v0, p2, p1

    new-array v0, v0, [C

    .line 3728
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/text/Layout$SpannedEllipsizer;->getChars(II[CI)V

    .line 3730
    new-instance v6, Landroid/text/SpannableString;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-direct {v6, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 3731
    iget-object v2, p0, Landroid/text/Layout$SpannedEllipsizer;->mSpanned:Landroid/text/Spanned;

    const-class v5, Ljava/lang/Object;

    const/4 v7, 0x0

    move v3, p1

    move v4, p2

    invoke-static/range {v2 .. v7}, Landroid/text/TextUtils;->copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V

    .line 3732
    return-object v6
.end method
