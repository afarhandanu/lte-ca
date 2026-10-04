.class Landroid/text/util/Linkify$1;
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

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist acceptMatch(Ljava/lang/CharSequence;II)Z
    .registers 4

    .line 153
    const/4 p3, 0x1

    if-nez p2, :cond_4

    .line 154
    return p3

    .line 157
    :cond_4
    sub-int/2addr p2, p3

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    const/16 p2, 0x40

    if-ne p1, p2, :cond_f

    .line 158
    const/4 p1, 0x0

    return p1

    .line 161
    :cond_f
    return p3
.end method
