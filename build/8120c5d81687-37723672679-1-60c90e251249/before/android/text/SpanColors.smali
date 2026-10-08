.class public Landroid/text/SpanColors;
.super Ljava/lang/Object;
.source "SpanColors.java"


# static fields
.field public static final blacklist NO_COLOR_FOUND:I


# instance fields
.field private final blacklist mCharacterStyleSpanSet:Landroid/text/SpanSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/text/SpanSet<",
            "Landroid/text/style/CharacterStyle;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mWorkPaint:Landroid/text/TextPaint;


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Landroid/text/SpanSet;

    const-class v1, Landroid/text/style/CharacterStyle;

    invoke-direct {v0, v1}, Landroid/text/SpanSet;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Landroid/text/SpanColors;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    .line 38
    return-void
.end method

.method private blacklist calculateFinalColor(Landroid/text/TextPaint;)I
    .registers 2

    .line 88
    invoke-virtual {p1}, Landroid/text/TextPaint;->getColor()I

    move-result p1

    return p1
.end method


# virtual methods
.method public blacklist getColorAt(I)I
    .registers 5

    .line 69
    nop

    .line 72
    iget-object v0, p0, Landroid/text/SpanColors;->mWorkPaint:Landroid/text/TextPaint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 73
    move v0, v1

    :goto_8
    iget-object v2, p0, Landroid/text/SpanColors;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget v2, v2, Landroid/text/SpanSet;->numberOfSpans:I

    if-ge v1, v2, :cond_34

    .line 74
    iget-object v2, p0, Landroid/text/SpanColors;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget-object v2, v2, Landroid/text/SpanSet;->spanStarts:[I

    aget v2, v2, v1

    if-lt p1, v2, :cond_31

    iget-object v2, p0, Landroid/text/SpanColors;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget-object v2, v2, Landroid/text/SpanSet;->spanEnds:[I

    aget v2, v2, v1

    if-ge p1, v2, :cond_31

    .line 76
    iget-object v0, p0, Landroid/text/SpanColors;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget-object v0, v0, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    check-cast v0, [Landroid/text/style/CharacterStyle;

    aget-object v0, v0, v1

    .line 77
    iget-object v2, p0, Landroid/text/SpanColors;->mWorkPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v2}, Landroid/text/style/CharacterStyle;->updateDrawState(Landroid/text/TextPaint;)V

    .line 79
    iget-object v0, p0, Landroid/text/SpanColors;->mWorkPaint:Landroid/text/TextPaint;

    invoke-direct {p0, v0}, Landroid/text/SpanColors;->calculateFinalColor(Landroid/text/TextPaint;)I

    move-result v0

    .line 73
    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 82
    :cond_34
    return v0
.end method

.method public blacklist init(Landroid/text/TextPaint;Landroid/text/Spanned;II)V
    .registers 5

    .line 51
    iput-object p1, p0, Landroid/text/SpanColors;->mWorkPaint:Landroid/text/TextPaint;

    .line 52
    iget-object p1, p0, Landroid/text/SpanColors;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    invoke-virtual {p1, p2, p3, p4}, Landroid/text/SpanSet;->init(Landroid/text/Spanned;II)V

    .line 53
    return-void
.end method

.method public blacklist recycle()V
    .registers 2

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/text/SpanColors;->mWorkPaint:Landroid/text/TextPaint;

    .line 60
    iget-object v0, p0, Landroid/text/SpanColors;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    invoke-virtual {v0}, Landroid/text/SpanSet;->recycle()V

    .line 61
    return-void
.end method
