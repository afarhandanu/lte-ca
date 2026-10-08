.class public Landroid/text/style/TtsSpan$MoneyBuilder;
.super Landroid/text/style/TtsSpan$SemioticClassBuilder;
.source "TtsSpan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/style/TtsSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MoneyBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/text/style/TtsSpan$SemioticClassBuilder<",
        "Landroid/text/style/TtsSpan$MoneyBuilder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 1317
    const-string v0, "android.type.money"

    invoke-direct {p0, v0}, Landroid/text/style/TtsSpan$SemioticClassBuilder;-><init>(Ljava/lang/String;)V

    .line 1318
    return-void
.end method


# virtual methods
.method public whitelist setCurrency(Ljava/lang/String;)Landroid/text/style/TtsSpan$MoneyBuilder;
    .registers 3

    .line 1355
    const-string v0, "android.arg.money"

    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$MoneyBuilder;->setStringArgument(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$Builder;

    move-result-object p1

    check-cast p1, Landroid/text/style/TtsSpan$MoneyBuilder;

    return-object p1
.end method

.method public whitelist setFractionalPart(Ljava/lang/String;)Landroid/text/style/TtsSpan$MoneyBuilder;
    .registers 3

    .line 1346
    const-string v0, "android.arg.fractional_part"

    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$MoneyBuilder;->setStringArgument(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$Builder;

    move-result-object p1

    check-cast p1, Landroid/text/style/TtsSpan$MoneyBuilder;

    return-object p1
.end method

.method public whitelist setIntegerPart(J)Landroid/text/style/TtsSpan$MoneyBuilder;
    .registers 3

    .line 1327
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/text/style/TtsSpan$MoneyBuilder;->setIntegerPart(Ljava/lang/String;)Landroid/text/style/TtsSpan$MoneyBuilder;

    move-result-object p1

    return-object p1
.end method

.method public whitelist setIntegerPart(Ljava/lang/String;)Landroid/text/style/TtsSpan$MoneyBuilder;
    .registers 3

    .line 1337
    const-string v0, "android.arg.integer_part"

    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$MoneyBuilder;->setStringArgument(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$Builder;

    move-result-object p1

    check-cast p1, Landroid/text/style/TtsSpan$MoneyBuilder;

    return-object p1
.end method

.method public whitelist setQuantity(Ljava/lang/String;)Landroid/text/style/TtsSpan$MoneyBuilder;
    .registers 3

    .line 1364
    const-string v0, "android.arg.quantity"

    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$MoneyBuilder;->setStringArgument(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$Builder;

    move-result-object p1

    check-cast p1, Landroid/text/style/TtsSpan$MoneyBuilder;

    return-object p1
.end method
