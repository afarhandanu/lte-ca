.class Landroid/text/TextDirectionHeuristics$AnyStrong;
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
    name = "AnyStrong"
.end annotation


# static fields
.field public static final greylist-max-o INSTANCE_LTR:Landroid/text/TextDirectionHeuristics$AnyStrong;

.field public static final greylist-max-o INSTANCE_RTL:Landroid/text/TextDirectionHeuristics$AnyStrong;


# instance fields
.field private final greylist-max-o mLookForRtl:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 282
    new-instance v0, Landroid/text/TextDirectionHeuristics$AnyStrong;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextDirectionHeuristics$AnyStrong;-><init>(Z)V

    sput-object v0, Landroid/text/TextDirectionHeuristics$AnyStrong;->INSTANCE_RTL:Landroid/text/TextDirectionHeuristics$AnyStrong;

    .line 283
    new-instance v0, Landroid/text/TextDirectionHeuristics$AnyStrong;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/text/TextDirectionHeuristics$AnyStrong;-><init>(Z)V

    sput-object v0, Landroid/text/TextDirectionHeuristics$AnyStrong;->INSTANCE_LTR:Landroid/text/TextDirectionHeuristics$AnyStrong;

    return-void
.end method

.method private constructor greylist-max-o <init>(Z)V
    .registers 2

    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    iput-boolean p1, p0, Landroid/text/TextDirectionHeuristics$AnyStrong;->mLookForRtl:Z

    .line 280
    return-void
.end method


# virtual methods
.method public greylist-max-o checkRtl(Ljava/lang/CharSequence;II)I
    .registers 10

    .line 244
    nop

    .line 245
    nop

    .line 246
    add-int/2addr p3, p2

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_6
    if-ge p2, p3, :cond_40

    .line 247
    invoke-static {p1, p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 248
    const/16 v4, 0x2066

    if-gt v4, v3, :cond_17

    const/16 v4, 0x2068

    if-gt v3, v4, :cond_17

    .line 249
    add-int/lit8 v2, v2, 0x1

    goto :goto_3a

    .line 250
    :cond_17
    const/16 v4, 0x2069

    if-ne v3, v4, :cond_20

    .line 251
    if-lez v2, :cond_3a

    add-int/lit8 v2, v2, -0x1

    goto :goto_3a

    .line 252
    :cond_20
    if-nez v2, :cond_3a

    .line 254
    invoke-static {v3}, Landroid/text/TextDirectionHeuristics;->-$$Nest$smisRtlCodePoint(I)I

    move-result v4

    const/4 v5, 0x1

    packed-switch v4, :pswitch_data_48

    goto :goto_3a

    .line 262
    :pswitch_2b
    iget-boolean v1, p0, Landroid/text/TextDirectionHeuristics$AnyStrong;->mLookForRtl:Z

    if-nez v1, :cond_30

    .line 263
    return v5

    .line 265
    :cond_30
    nop

    .line 266
    move v1, v5

    goto :goto_3a

    .line 256
    :pswitch_33
    iget-boolean v1, p0, Landroid/text/TextDirectionHeuristics$AnyStrong;->mLookForRtl:Z

    if-eqz v1, :cond_38

    .line 257
    return v0

    .line 259
    :cond_38
    nop

    .line 260
    move v1, v5

    .line 246
    :cond_3a
    :goto_3a
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr p2, v3

    goto :goto_6

    .line 272
    :cond_40
    if-eqz v1, :cond_45

    .line 273
    iget-boolean p1, p0, Landroid/text/TextDirectionHeuristics$AnyStrong;->mLookForRtl:Z

    return p1

    .line 275
    :cond_45
    const/4 p1, 0x2

    return p1

    nop

    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_33
        :pswitch_2b
    .end packed-switch
.end method
