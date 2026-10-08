.class Landroid/text/util/Linkify$2;
.super Ljava/lang/Object;
.source "Linkify.java"

# interfaces
.implements Landroid/text/util/Linkify$MatchFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/util/Linkify;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist acceptMatch(Ljava/lang/CharSequence;II)Z
    .registers 7

    .line 171
    nop

    .line 173
    const/4 v0, 0x0

    move v1, v0

    :goto_3
    if-ge p2, p3, :cond_19

    .line 174
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 175
    add-int/lit8 v1, v1, 0x1

    .line 176
    const/4 v2, 0x5

    if-lt v1, v2, :cond_16

    .line 177
    const/4 p1, 0x1

    return p1

    .line 173
    :cond_16
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    .line 181
    :cond_19
    return v0
.end method
