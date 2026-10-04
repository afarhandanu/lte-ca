.class public Landroid/text/method/InsertModeTransformationMethod$SingleLinePlaceholderSpan;
.super Landroid/text/style/ReplacementSpan;
.source "InsertModeTransformationMethod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/method/InsertModeTransformationMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingleLinePlaceholderSpan"
.end annotation


# instance fields
.field private final blacklist mWidth:I


# direct methods
.method constructor blacklist <init>(I)V
    .registers 2

    .line 479
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 480
    iput p1, p0, Landroid/text/method/InsertModeTransformationMethod$SingleLinePlaceholderSpan;->mWidth:I

    .line 481
    return-void
.end method


# virtual methods
.method public whitelist draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .registers 10

    .line 490
    return-void
.end method

.method public whitelist getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .registers 6

    .line 485
    iget p1, p0, Landroid/text/method/InsertModeTransformationMethod$SingleLinePlaceholderSpan;->mWidth:I

    return p1
.end method
