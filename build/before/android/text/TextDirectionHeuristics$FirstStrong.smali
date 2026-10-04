.class Landroid/text/TextDirectionHeuristics$FirstStrong;
.super Ljava/lang/Object;
.source "TextDirectionHeuristics.java"

# interfaces
.implements Landroid/text/TextDirectionHeuristics$TextDirectionAlgorithm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/TextDirectionHeuristics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FirstStrong"
.end annotation


# static fields
.field public static final greylist-max-o INSTANCE:Landroid/text/TextDirectionHeuristics$FirstStrong;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 230
    new-instance v0, Landroid/text/TextDirectionHeuristics$FirstStrong;

    invoke-direct {v0}, Landroid/text/TextDirectionHeuristics$FirstStrong;-><init>()V

    sput-object v0, Landroid/text/TextDirectionHeuristics$FirstStrong;->INSTANCE:Landroid/text/TextDirectionHeuristics$FirstStrong;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    return-void
.end method


# virtual methods
.method public greylist-max-o checkRtl(Ljava/lang/CharSequence;II)I
    .registers 9

    .line 209
    nop

    .line 210
    nop

    .line 211
    add-int/2addr p3, p2

    const/4 v0, 0x2

    const/4 v1, 0x0

    move v2, v0

    .line 212
    :goto_6
    if-ge p2, p3, :cond_2e

    if-ne v2, v0, :cond_2e

    .line 214
    invoke-static {p1, p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 215
    const/16 v4, 0x2066

    if-gt v4, v3, :cond_19

    const/16 v4, 0x2068

    if-gt v3, v4, :cond_19

    .line 216
    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    .line 217
    :cond_19
    const/16 v4, 0x2069

    if-ne v3, v4, :cond_22

    .line 218
    if-lez v1, :cond_28

    add-int/lit8 v1, v1, -0x1

    goto :goto_28

    .line 219
    :cond_22
    if-nez v1, :cond_28

    .line 221
    invoke-static {v3}, Landroid/text/TextDirectionHeuristics;->-$$Nest$smisRtlCodePoint(I)I

    move-result v2

    .line 213
    :cond_28
    :goto_28
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr p2, v3

    goto :goto_6

    .line 224
    :cond_2e
    return v2
.end method
