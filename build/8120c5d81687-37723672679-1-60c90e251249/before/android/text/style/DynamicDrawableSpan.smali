.class public abstract Landroid/text/style/DynamicDrawableSpan;
.super Landroid/text/style/ReplacementSpan;
.source "DynamicDrawableSpan.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/style/DynamicDrawableSpan$AlignmentType;
    }
.end annotation


# static fields
.field public static final whitelist ALIGN_BASELINE:I = 0x1

.field public static final whitelist ALIGN_BOTTOM:I = 0x0

.field public static final whitelist ALIGN_CENTER:I = 0x2


# instance fields
.field private greylist mDrawableRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field protected final whitelist mVerticalAlignment:I


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 112
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 113
    const/4 v0, 0x0

    iput v0, p0, Landroid/text/style/DynamicDrawableSpan;->mVerticalAlignment:I

    .line 114
    return-void
.end method

.method protected constructor whitelist <init>(I)V
    .registers 2

    .line 122
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 123
    iput p1, p0, Landroid/text/style/DynamicDrawableSpan;->mVerticalAlignment:I

    .line 124
    return-void
.end method

.method private greylist-max-o getCachedDrawable()Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 179
    iget-object v0, p0, Landroid/text/style/DynamicDrawableSpan;->mDrawableRef:Ljava/lang/ref/WeakReference;

    .line 180
    nop

    .line 182
    if-eqz v0, :cond_c

    .line 183
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    goto :goto_d

    .line 182
    :cond_c
    const/4 v0, 0x0

    .line 186
    :goto_d
    if-nez v0, :cond_1a

    .line 187
    invoke-virtual {p0}, Landroid/text/style/DynamicDrawableSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 188
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Landroid/text/style/DynamicDrawableSpan;->mDrawableRef:Ljava/lang/ref/WeakReference;

    .line 191
    :cond_1a
    return-object v0
.end method


# virtual methods
.method public whitelist draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .registers 10

    .line 163
    invoke-direct {p0}, Landroid/text/style/DynamicDrawableSpan;->getCachedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 164
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 166
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p3

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    sub-int p3, p8, p3

    .line 167
    iget p4, p0, Landroid/text/style/DynamicDrawableSpan;->mVerticalAlignment:I

    const/4 p7, 0x1

    if-ne p4, p7, :cond_1c

    .line 168
    invoke-virtual {p9}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p4

    iget p4, p4, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    sub-int/2addr p3, p4

    goto :goto_2f

    .line 169
    :cond_1c
    iget p4, p0, Landroid/text/style/DynamicDrawableSpan;->mVerticalAlignment:I

    const/4 p7, 0x2

    if-ne p4, p7, :cond_2f

    .line 170
    sub-int/2addr p8, p6

    div-int/2addr p8, p7

    add-int/2addr p6, p8

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    div-int/2addr p3, p7

    sub-int p3, p6, p3

    .line 173
    :cond_2f
    :goto_2f
    int-to-float p3, p3

    invoke-virtual {p1, p5, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 174
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 175
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 176
    return-void
.end method

.method public abstract whitelist getDrawable()Landroid/graphics/drawable/Drawable;
.end method

.method public whitelist getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .registers 6

    .line 145
    invoke-direct {p0}, Landroid/text/style/DynamicDrawableSpan;->getCachedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 146
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    .line 148
    if-eqz p5, :cond_18

    .line 149
    iget p2, p1, Landroid/graphics/Rect;->bottom:I

    neg-int p2, p2

    iput p2, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 150
    const/4 p2, 0x0

    iput p2, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 152
    iget p3, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iput p3, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 153
    iput p2, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 156
    :cond_18
    iget p1, p1, Landroid/graphics/Rect;->right:I

    return p1
.end method

.method public whitelist getVerticalAlignment()I
    .registers 2

    .line 131
    iget v0, p0, Landroid/text/style/DynamicDrawableSpan;->mVerticalAlignment:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DynamicDrawableSpan{verticalAlignment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 197
    invoke-virtual {p0}, Landroid/text/style/DynamicDrawableSpan;->getVerticalAlignment()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", drawable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 198
    invoke-virtual {p0}, Landroid/text/style/DynamicDrawableSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 196
    return-object v0
.end method
