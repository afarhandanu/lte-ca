.class Landroid/view/View$SensitiveAutofillHintsHelper;
.super Ljava/lang/Object;
.source "View.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SensitiveAutofillHintsHelper"
.end annotation


# static fields
.field private static final blacklist SENSITIVE_CONTENT_AUTOFILL_HINTS:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 33517
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Landroid/view/View$SensitiveAutofillHintsHelper;->SENSITIVE_CONTENT_AUTOFILL_HINTS:Landroid/util/ArraySet;

    .line 33519
    sget-object v0, Landroid/view/View$SensitiveAutofillHintsHelper;->SENSITIVE_CONTENT_AUTOFILL_HINTS:Landroid/util/ArraySet;

    const-string/jumbo v1, "username"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 33520
    sget-object v0, Landroid/view/View$SensitiveAutofillHintsHelper;->SENSITIVE_CONTENT_AUTOFILL_HINTS:Landroid/util/ArraySet;

    const-string/jumbo v1, "passwordAuto"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 33521
    sget-object v0, Landroid/view/View$SensitiveAutofillHintsHelper;->SENSITIVE_CONTENT_AUTOFILL_HINTS:Landroid/util/ArraySet;

    const-string/jumbo v1, "password"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 33522
    sget-object v0, Landroid/view/View$SensitiveAutofillHintsHelper;->SENSITIVE_CONTENT_AUTOFILL_HINTS:Landroid/util/ArraySet;

    const-string v1, "creditCardNumber"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 33523
    sget-object v0, Landroid/view/View$SensitiveAutofillHintsHelper;->SENSITIVE_CONTENT_AUTOFILL_HINTS:Landroid/util/ArraySet;

    const-string v1, "creditCardSecurityCode"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 33524
    sget-object v0, Landroid/view/View$SensitiveAutofillHintsHelper;->SENSITIVE_CONTENT_AUTOFILL_HINTS:Landroid/util/ArraySet;

    const-string v1, "creditCardExpirationDate"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 33525
    sget-object v0, Landroid/view/View$SensitiveAutofillHintsHelper;->SENSITIVE_CONTENT_AUTOFILL_HINTS:Landroid/util/ArraySet;

    const-string v1, "creditCardExpirationDay"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 33526
    sget-object v0, Landroid/view/View$SensitiveAutofillHintsHelper;->SENSITIVE_CONTENT_AUTOFILL_HINTS:Landroid/util/ArraySet;

    const-string v1, "creditCardExpirationMonth"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 33527
    sget-object v0, Landroid/view/View$SensitiveAutofillHintsHelper;->SENSITIVE_CONTENT_AUTOFILL_HINTS:Landroid/util/ArraySet;

    const-string v1, "creditCardExpirationYear"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 33528
    sget-object v0, Landroid/view/View$SensitiveAutofillHintsHelper;->SENSITIVE_CONTENT_AUTOFILL_HINTS:Landroid/util/ArraySet;

    const-string v1, "credential"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 33529
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 33513
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist containsSensitiveAutofillHint([Ljava/lang/String;)Z
    .registers 6

    .line 33537
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 33538
    return v0

    .line 33541
    :cond_4
    array-length v1, p0

    .line 33542
    move v2, v0

    :goto_6
    if-ge v2, v1, :cond_17

    .line 33543
    sget-object v3, Landroid/view/View$SensitiveAutofillHintsHelper;->SENSITIVE_CONTENT_AUTOFILL_HINTS:Landroid/util/ArraySet;

    aget-object v4, p0, v2

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 33544
    const/4 p0, 0x1

    return p0

    .line 33542
    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 33547
    :cond_17
    return v0
.end method
