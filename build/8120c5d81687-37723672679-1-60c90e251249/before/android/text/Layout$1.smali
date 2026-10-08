.class Landroid/text/Layout$1;
.super Ljava/lang/Object;
.source "Layout.java"

# interfaces
.implements Landroid/text/Layout$CharacterBoundsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/text/Layout;->drawHighContrastBackground(Landroid/graphics/Canvas;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field blacklist mLastColor:I

.field blacklist mLastLineNum:I

.field final blacklist mLineBackground:Landroid/graphics/RectF;

.field blacklist mNumCharactersToSkip:I

.field final synthetic blacklist this$0:Landroid/text/Layout;

.field final synthetic blacklist val$bgPaint:Landroid/graphics/Paint;

.field final synthetic blacklist val$black:I

.field final synthetic blacklist val$canvas:Landroid/graphics/Canvas;

.field final synthetic blacklist val$cornerRadius:F

.field final synthetic blacklist val$originalTextColor:I

.field final synthetic blacklist val$padding:F

.field final synthetic blacklist val$white:I


# direct methods
.method constructor blacklist <init>(Landroid/text/Layout;ILandroid/graphics/Paint;FLandroid/graphics/Canvas;FII)V
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1104
    iput-object p1, p0, Landroid/text/Layout$1;->this$0:Landroid/text/Layout;

    iput p2, p0, Landroid/text/Layout$1;->val$originalTextColor:I

    iput-object p3, p0, Landroid/text/Layout$1;->val$bgPaint:Landroid/graphics/Paint;

    iput p4, p0, Landroid/text/Layout$1;->val$padding:F

    iput-object p5, p0, Landroid/text/Layout$1;->val$canvas:Landroid/graphics/Canvas;

    iput p6, p0, Landroid/text/Layout$1;->val$cornerRadius:F

    iput p7, p0, Landroid/text/Layout$1;->val$white:I

    iput p8, p0, Landroid/text/Layout$1;->val$black:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1105
    const/4 p1, -0x1

    iput p1, p0, Landroid/text/Layout$1;->mLastLineNum:I

    .line 1106
    const/4 p1, 0x0

    iput p1, p0, Landroid/text/Layout$1;->mNumCharactersToSkip:I

    .line 1107
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Landroid/text/Layout$1;->mLineBackground:Landroid/graphics/RectF;

    .line 1109
    iget p1, p0, Landroid/text/Layout$1;->val$originalTextColor:I

    iput p1, p0, Landroid/text/Layout$1;->mLastColor:I

    return-void
.end method

.method private blacklist determineContrastingBackgroundColor(I)I
    .registers 3

    .line 1182
    iget-object v0, p0, Landroid/text/Layout$1;->this$0:Landroid/text/Layout;

    invoke-static {v0}, Landroid/text/Layout;->-$$Nest$fgetmSpannedText(Landroid/text/Layout;)Z

    move-result v0

    if-eqz v0, :cond_3f

    iget-object v0, p0, Landroid/text/Layout$1;->this$0:Landroid/text/Layout;

    invoke-static {v0}, Landroid/text/Layout;->-$$Nest$fgetmSpanColors(Landroid/text/Layout;)Landroid/text/SpanColors;

    move-result-object v0

    if-nez v0, :cond_11

    goto :goto_3f

    .line 1191
    :cond_11
    iget-object v0, p0, Landroid/text/Layout$1;->this$0:Landroid/text/Layout;

    invoke-static {v0}, Landroid/text/Layout;->-$$Nest$fgetmSpanColors(Landroid/text/Layout;)Landroid/text/SpanColors;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/SpanColors;->getColorAt(I)I

    move-result p1

    .line 1192
    if-nez p1, :cond_1f

    .line 1193
    iget p1, p0, Landroid/text/Layout$1;->val$originalTextColor:I

    .line 1195
    :cond_1f
    iget v0, p0, Landroid/text/Layout$1;->mLastColor:I

    if-eq p1, v0, :cond_25

    const/4 v0, 0x1

    goto :goto_26

    :cond_25
    const/4 v0, 0x0

    .line 1196
    :goto_26
    if-eqz v0, :cond_38

    .line 1197
    iput p1, p0, Landroid/text/Layout$1;->mLastColor:I

    .line 1199
    iget-object v0, p0, Landroid/text/Layout$1;->this$0:Landroid/text/Layout;

    invoke-static {v0, p1}, Landroid/text/Layout;->-$$Nest$misHighContrastTextDark(Landroid/text/Layout;I)Z

    move-result p1

    if-eqz p1, :cond_35

    iget p1, p0, Landroid/text/Layout$1;->val$white:I

    goto :goto_37

    :cond_35
    iget p1, p0, Landroid/text/Layout$1;->val$black:I

    :goto_37
    return p1

    .line 1202
    :cond_38
    iget-object p1, p0, Landroid/text/Layout$1;->val$bgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result p1

    return p1

    .line 1184
    :cond_3f
    :goto_3f
    iget-object p1, p0, Landroid/text/Layout$1;->val$bgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result p1

    return p1
.end method

.method private blacklist drawRect()V
    .registers 6

    .line 1170
    iget-object v0, p0, Landroid/text/Layout$1;->mLineBackground:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_20

    .line 1171
    iget-object v0, p0, Landroid/text/Layout$1;->mLineBackground:Landroid/graphics/RectF;

    iget v1, p0, Landroid/text/Layout$1;->val$padding:F

    neg-float v1, v1

    iget v2, p0, Landroid/text/Layout$1;->val$padding:F

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 1172
    iget-object v0, p0, Landroid/text/Layout$1;->val$canvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Landroid/text/Layout$1;->mLineBackground:Landroid/graphics/RectF;

    iget v2, p0, Landroid/text/Layout$1;->val$cornerRadius:F

    iget v3, p0, Landroid/text/Layout$1;->val$cornerRadius:F

    iget-object v4, p0, Landroid/text/Layout$1;->val$bgPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1179
    :cond_20
    return-void
.end method

.method private blacklist isStandardNumber(I)Z
    .registers 6

    .line 1160
    iget-object v0, p0, Landroid/text/Layout$1;->this$0:Landroid/text/Layout;

    invoke-static {v0}, Landroid/text/Layout;->-$$Nest$fgetmText(Landroid/text/Layout;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 1161
    const/16 v1, 0x30

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v0, v1, :cond_14

    const/16 v1, 0x39

    if-le v0, v1, :cond_1f

    :cond_14
    const/16 v1, 0x23

    if-eq v0, v1, :cond_1f

    const/16 v1, 0x2a

    if-ne v0, v1, :cond_1d

    goto :goto_1f

    :cond_1d
    move v0, v2

    goto :goto_20

    :cond_1f
    :goto_1f
    move v0, v3

    .line 1163
    :goto_20
    add-int/2addr p1, v3

    iget-object v1, p0, Landroid/text/Layout$1;->this$0:Landroid/text/Layout;

    invoke-static {v1}, Landroid/text/Layout;->-$$Nest$fgetmText(Landroid/text/Layout;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge p1, v1, :cond_3e

    iget-object v1, p0, Landroid/text/Layout$1;->this$0:Landroid/text/Layout;

    invoke-static {v1}, Landroid/text/Layout;->-$$Nest$fgetmText(Landroid/text/Layout;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1164
    invoke-static {v1, p1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result p1

    const v1, 0xfe0f

    if-ne p1, v1, :cond_3e

    move p1, v3

    goto :goto_3f

    :cond_3e
    move p1, v2

    .line 1166
    :goto_3f
    if-eqz v0, :cond_44

    if-nez p1, :cond_44

    move v2, v3

    :cond_44
    return v2
.end method


# virtual methods
.method public blacklist onCharacterBounds(IIFFFF)V
    .registers 11

    .line 1116
    iget-object v0, p0, Landroid/text/Layout$1;->this$0:Landroid/text/Layout;

    invoke-static {v0}, Landroid/text/Layout;->-$$Nest$fgetmText(Landroid/text/Layout;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Landroid/text/TextLine;->isLineEndSpace(C)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_6e

    iget v0, p0, Landroid/text/Layout$1;->mNumCharactersToSkip:I

    if-lez v0, :cond_16

    goto :goto_6e

    .line 1129
    :cond_16
    iget-object v0, p0, Landroid/text/Layout$1;->this$0:Landroid/text/Layout;

    invoke-static {v0}, Landroid/text/Layout;->-$$Nest$fgetmText(Landroid/text/Layout;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 1130
    invoke-static {v0}, Ljava/lang/Character;->isEmojiComponent(I)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_30

    .line 1131
    invoke-static {v0}, Ljava/lang/Character;->isExtendedPictographic(I)Z

    move-result v2

    if-eqz v2, :cond_2e

    goto :goto_30

    :cond_2e
    move v2, v3

    goto :goto_31

    :cond_30
    :goto_30
    move v2, v1

    .line 1132
    :goto_31
    if-eqz v2, :cond_41

    invoke-direct {p0, p1}, Landroid/text/Layout$1;->isStandardNumber(I)Z

    move-result v2

    if-nez v2, :cond_41

    .line 1133
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result p1

    sub-int/2addr p1, v1

    iput p1, p0, Landroid/text/Layout$1;->mNumCharactersToSkip:I

    .line 1134
    return-void

    .line 1137
    :cond_41
    invoke-direct {p0, p1}, Landroid/text/Layout$1;->determineContrastingBackgroundColor(I)I

    move-result p1

    .line 1138
    iget-object v0, p0, Landroid/text/Layout$1;->val$bgPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-eq p1, v0, :cond_4e

    goto :goto_4f

    :cond_4e
    move v1, v3

    .line 1140
    :goto_4f
    iget v0, p0, Landroid/text/Layout$1;->mLastLineNum:I

    if-ne p2, v0, :cond_5c

    if-eqz v1, :cond_56

    goto :goto_5c

    .line 1150
    :cond_56
    iget-object p1, p0, Landroid/text/Layout$1;->mLineBackground:Landroid/graphics/RectF;

    invoke-virtual {p1, p3, p4, p5, p6}, Landroid/graphics/RectF;->union(FFFF)V

    goto :goto_6d

    .line 1142
    :cond_5c
    :goto_5c
    invoke-direct {p0}, Landroid/text/Layout$1;->drawRect()V

    .line 1143
    iget-object v0, p0, Landroid/text/Layout$1;->mLineBackground:Landroid/graphics/RectF;

    invoke-virtual {v0, p3, p4, p5, p6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1144
    iput p2, p0, Landroid/text/Layout$1;->mLastLineNum:I

    .line 1146
    if-eqz v1, :cond_6d

    .line 1147
    iget-object p2, p0, Landroid/text/Layout$1;->val$bgPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1152
    :cond_6d
    :goto_6d
    return-void

    .line 1118
    :cond_6e
    :goto_6e
    iget p1, p0, Landroid/text/Layout$1;->mNumCharactersToSkip:I

    sub-int/2addr p1, v1

    iput p1, p0, Landroid/text/Layout$1;->mNumCharactersToSkip:I

    .line 1119
    return-void
.end method

.method public blacklist onEnd()V
    .registers 1

    .line 1156
    invoke-direct {p0}, Landroid/text/Layout$1;->drawRect()V

    .line 1157
    return-void
.end method
