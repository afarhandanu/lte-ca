.class public Landroid/text/TextShaper;
.super Ljava/lang/Object;
.source "TextShaper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/TextShaper$GlyphsConsumer;
    }
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist shapeText(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/TextPaint;Landroid/text/TextShaper$GlyphsConsumer;)V
    .registers 19

    .line 217
    add-int v5, p1, p2

    const/4 v0, 0x0

    move-object/from16 v1, p3

    invoke-static {p0, p1, v5, v1, v0}, Landroid/text/MeasuredParagraph;->buildForBidi(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/MeasuredParagraph;)Landroid/text/MeasuredParagraph;

    move-result-object v0

    .line 219
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v1

    .line 221
    nop

    .line 222
    :try_start_e
    invoke-virtual {v0}, Landroid/text/MeasuredParagraph;->getParagraphDir()I

    move-result v6

    .line 223
    const/4 v2, 0x0

    invoke-virtual {v0, v2, p2}, Landroid/text/MeasuredParagraph;->getDirections(II)Landroid/text/Layout$Directions;

    move-result-object v7

    .line 221
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/4 v12, 0x0

    move-object v3, p0

    move v4, p1

    move-object/from16 v2, p4

    invoke-virtual/range {v1 .. v12}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;IIZ)V

    .line 229
    move-object/from16 p0, p5

    invoke-virtual {v1, p0}, Landroid/text/TextLine;->shape(Landroid/text/TextShaper$GlyphsConsumer;)V
    :try_end_28
    .catchall {:try_start_e .. :try_end_28} :catchall_2d

    .line 231
    invoke-static {v1}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 232
    nop

    .line 233
    return-void

    .line 231
    :catchall_2d
    move-exception v0

    move-object p0, v0

    invoke-static {v1}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 232
    throw p0
.end method
