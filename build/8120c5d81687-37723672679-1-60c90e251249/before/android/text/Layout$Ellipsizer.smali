.class Landroid/text/Layout$Ellipsizer;
.super Ljava/lang/Object;
.source "Layout.java"

# interfaces
.implements Ljava/lang/CharSequence;
.implements Landroid/text/GetChars;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/Layout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Ellipsizer"
.end annotation


# instance fields
.field greylist-max-o mLayout:Landroid/text/Layout;

.field greylist-max-o mMethod:Landroid/text/TextUtils$TruncateAt;

.field greylist-max-o mText:Ljava/lang/CharSequence;

.field greylist-max-o mWidth:I


# direct methods
.method public constructor greylist-max-o <init>(Ljava/lang/CharSequence;)V
    .registers 2

    .line 3653
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3654
    iput-object p1, p0, Landroid/text/Layout$Ellipsizer;->mText:Ljava/lang/CharSequence;

    .line 3655
    return-void
.end method


# virtual methods
.method public whitelist test-api charAt(I)C
    .registers 5

    .line 3658
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v0

    .line 3659
    add-int/lit8 v1, p1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v0, v2}, Landroid/text/Layout$Ellipsizer;->getChars(II[CI)V

    .line 3660
    aget-char p1, v0, v2

    .line 3662
    invoke-static {v0}, Landroid/text/TextUtils;->recycle([C)V

    .line 3663
    return p1
.end method

.method public whitelist getChars(II[CI)V
    .registers 15

    .line 3667
    iget-object v0, p0, Landroid/text/Layout$Ellipsizer;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 3668
    iget-object v1, p0, Landroid/text/Layout$Ellipsizer;->mLayout:Landroid/text/Layout;

    invoke-virtual {v1, p2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 3670
    iget-object v2, p0, Landroid/text/Layout$Ellipsizer;->mText:Ljava/lang/CharSequence;

    invoke-static {v2, p1, p2, p3, p4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 3672
    move v6, v0

    :goto_12
    if-gt v6, v1, :cond_22

    .line 3673
    iget-object v3, p0, Landroid/text/Layout$Ellipsizer;->mLayout:Landroid/text/Layout;

    iget-object v9, p0, Landroid/text/Layout$Ellipsizer;->mMethod:Landroid/text/TextUtils$TruncateAt;

    move v4, p1

    move v5, p2

    move-object v7, p3

    move v8, p4

    invoke-static/range {v3 .. v9}, Landroid/text/Layout;->-$$Nest$mellipsize(Landroid/text/Layout;III[CILandroid/text/TextUtils$TruncateAt;)V

    .line 3672
    add-int/lit8 v6, v6, 0x1

    goto :goto_12

    .line 3675
    :cond_22
    return-void
.end method

.method public whitelist test-api length()I
    .registers 2

    .line 3678
    iget-object v0, p0, Landroid/text/Layout$Ellipsizer;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    return v0
.end method

.method public whitelist test-api subSequence(II)Ljava/lang/CharSequence;
    .registers 5

    .line 3682
    sub-int v0, p2, p1

    new-array v0, v0, [C

    .line 3683
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/text/Layout$Ellipsizer;->getChars(II[CI)V

    .line 3684
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([C)V

    return-object p1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 3689
    invoke-virtual {p0}, Landroid/text/Layout$Ellipsizer;->length()I

    move-result v0

    new-array v0, v0, [C

    .line 3690
    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/text/Layout$Ellipsizer;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2, v0, v1}, Landroid/text/Layout$Ellipsizer;->getChars(II[CI)V

    .line 3691
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method
