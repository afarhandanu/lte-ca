.class public interface abstract Landroid/view/textclassifier/TextClassifier;
.super Ljava/lang/Object;
.source "TextClassifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/textclassifier/TextClassifier$Utils;,
        Landroid/view/textclassifier/TextClassifier$EntityConfig;,
        Landroid/view/textclassifier/TextClassifier$WidgetType;,
        Landroid/view/textclassifier/TextClassifier$Hints;,
        Landroid/view/textclassifier/TextClassifier$EntityType;,
        Landroid/view/textclassifier/TextClassifier$TextClassifierType;
    }
.end annotation


# static fields
.field public static final whitelist CLASSIFIER_TYPE_ANDROID_DEFAULT:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CLASSIFIER_TYPE_DEVICE_DEFAULT:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CLASSIFIER_TYPE_SELF_PROVIDED:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist DEFAULT_SYSTEM:I = 0x2

.field public static final whitelist EXTRA_FROM_TEXT_CLASSIFIER:Ljava/lang/String; = "android.view.textclassifier.extra.FROM_TEXT_CLASSIFIER"

.field public static final blacklist EXTRA_SMS_RETRIEVER_HASH_MATCHED_PACKAGE:Ljava/lang/String; = "sms-retriever-hash-matched-package"

.field public static final whitelist EXTRA_TEXT_ORIGIN_PACKAGE:Ljava/lang/String; = "android.view.textclassifier.extra.TEXT_ORIGIN_PACKAGE"

.field public static final whitelist HINT_TEXT_IS_EDITABLE:Ljava/lang/String; = "android.text_is_editable"

.field public static final whitelist HINT_TEXT_IS_NOT_EDITABLE:Ljava/lang/String; = "android.text_is_not_editable"

.field public static final greylist-max-o LOCAL:I = 0x0

.field public static final blacklist LOG_TAG:Ljava/lang/String; = "androidtc"

.field public static final whitelist NO_OP:Landroid/view/textclassifier/TextClassifier;

.field public static final greylist-max-o SYSTEM:I = 0x1

.field public static final whitelist TYPE_ADDRESS:Ljava/lang/String; = "address"

.field public static final whitelist TYPE_DATE:Ljava/lang/String; = "date"

.field public static final whitelist TYPE_DATE_TIME:Ljava/lang/String; = "datetime"

.field public static final blacklist TYPE_DICTIONARY:Ljava/lang/String; = "dictionary"

.field public static final whitelist TYPE_EMAIL:Ljava/lang/String; = "email"

.field public static final whitelist TYPE_FLIGHT_NUMBER:Ljava/lang/String; = "flight"

.field public static final whitelist TYPE_OTHER:Ljava/lang/String; = "other"

.field public static final whitelist TYPE_OTP:Ljava/lang/String; = "otp"

.field public static final whitelist TYPE_PHONE:Ljava/lang/String; = "phone"

.field public static final whitelist TYPE_SMS_RETRIEVER_OTP:Ljava/lang/String; = "sms_retriever_otp"

.field public static final whitelist TYPE_UNKNOWN:Ljava/lang/String; = ""

.field public static final whitelist TYPE_URL:Ljava/lang/String; = "url"

.field public static final whitelist WIDGET_TYPE_CLIPBOARD:Ljava/lang/String; = "clipboard"

.field public static final whitelist WIDGET_TYPE_CUSTOM_EDITTEXT:Ljava/lang/String; = "customedit"

.field public static final whitelist WIDGET_TYPE_CUSTOM_TEXTVIEW:Ljava/lang/String; = "customview"

.field public static final whitelist WIDGET_TYPE_CUSTOM_UNSELECTABLE_TEXTVIEW:Ljava/lang/String; = "nosel-customview"

.field public static final whitelist WIDGET_TYPE_EDITTEXT:Ljava/lang/String; = "edittext"

.field public static final whitelist WIDGET_TYPE_EDIT_WEBVIEW:Ljava/lang/String; = "edit-webview"

.field public static final whitelist WIDGET_TYPE_NOTIFICATION:Ljava/lang/String; = "notification"

.field public static final whitelist WIDGET_TYPE_TEXTVIEW:Ljava/lang/String; = "textview"

.field public static final whitelist WIDGET_TYPE_UNKNOWN:Ljava/lang/String; = "unknown"

.field public static final whitelist WIDGET_TYPE_UNSELECTABLE_TEXTVIEW:Ljava/lang/String; = "nosel-textview"

.field public static final whitelist WIDGET_TYPE_WEBVIEW:Ljava/lang/String; = "webview"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 216
    new-instance v0, Landroid/view/textclassifier/TextClassifier$1;

    invoke-direct {v0}, Landroid/view/textclassifier/TextClassifier$1;-><init>()V

    sput-object v0, Landroid/view/textclassifier/TextClassifier;->NO_OP:Landroid/view/textclassifier/TextClassifier;

    return-void
.end method

.method public static blacklist typeToString(I)Ljava/lang/String;
    .registers 1

    .line 103
    nop

    .line 104
    packed-switch p0, :pswitch_data_10

    .line 112
    const-string p0, "Unknown"

    return-object p0

    .line 110
    :pswitch_7
    const-string p0, "Default system"

    return-object p0

    .line 108
    :pswitch_a
    const-string p0, "System"

    return-object p0

    .line 106
    :pswitch_d
    const-string p0, "Local"

    return-object p0

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_d
        :pswitch_a
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public whitelist classifyText(Landroid/view/textclassifier/TextClassification$Request;)Landroid/view/textclassifier/TextClassification;
    .registers 2

    .line 325
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    invoke-static {}, Landroid/view/textclassifier/TextClassifier$Utils;->checkMainThread()V

    .line 327
    sget-object p1, Landroid/view/textclassifier/TextClassification;->EMPTY:Landroid/view/textclassifier/TextClassification;

    return-object p1
.end method

.method public whitelist classifyText(Ljava/lang/CharSequence;IILandroid/os/LocaleList;)Landroid/view/textclassifier/TextClassification;
    .registers 6

    .line 363
    new-instance v0, Landroid/view/textclassifier/TextClassification$Request$Builder;

    invoke-direct {v0, p1, p2, p3}, Landroid/view/textclassifier/TextClassification$Request$Builder;-><init>(Ljava/lang/CharSequence;II)V

    .line 365
    invoke-virtual {v0, p4}, Landroid/view/textclassifier/TextClassification$Request$Builder;->setDefaultLocales(Landroid/os/LocaleList;)Landroid/view/textclassifier/TextClassification$Request$Builder;

    move-result-object p1

    .line 366
    invoke-virtual {p1}, Landroid/view/textclassifier/TextClassification$Request$Builder;->build()Landroid/view/textclassifier/TextClassification$Request;

    move-result-object p1

    .line 367
    invoke-interface {p0, p1}, Landroid/view/textclassifier/TextClassifier;->classifyText(Landroid/view/textclassifier/TextClassification$Request;)Landroid/view/textclassifier/TextClassification;

    move-result-object p1

    return-object p1
.end method

.method public whitelist destroy()V
    .registers 1

    .line 466
    return-void
.end method

.method public whitelist detectLanguage(Landroid/view/textclassifier/TextLanguage$Request;)Landroid/view/textclassifier/TextLanguage;
    .registers 2

    .line 419
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    invoke-static {}, Landroid/view/textclassifier/TextClassifier$Utils;->checkMainThread()V

    .line 421
    sget-object p1, Landroid/view/textclassifier/TextLanguage;->EMPTY:Landroid/view/textclassifier/TextLanguage;

    return-object p1
.end method

.method public blacklist dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 2

    .line 482
    return-void
.end method

.method public whitelist generateLinks(Landroid/view/textclassifier/TextLinks$Request;)Landroid/view/textclassifier/TextLinks;
    .registers 3

    .line 386
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    invoke-static {}, Landroid/view/textclassifier/TextClassifier$Utils;->checkMainThread()V

    .line 388
    new-instance v0, Landroid/view/textclassifier/TextLinks$Builder;

    invoke-virtual {p1}, Landroid/view/textclassifier/TextLinks$Request;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/view/textclassifier/TextLinks$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/textclassifier/TextLinks$Builder;->build()Landroid/view/textclassifier/TextLinks;

    move-result-object p1

    return-object p1
.end method

.method public whitelist getMaxGenerateLinksTextLength()I
    .registers 2

    .line 401
    const v0, 0x7fffffff

    return v0
.end method

.method public whitelist isDestroyed()Z
    .registers 2

    .line 478
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onSelectionEvent(Landroid/view/textclassifier/SelectionEvent;)V
    .registers 2

    .line 446
    return-void
.end method

.method public whitelist onTextClassifierEvent(Landroid/view/textclassifier/TextClassifierEvent;)V
    .registers 2

    .line 456
    return-void
.end method

.method public whitelist suggestConversationActions(Landroid/view/textclassifier/ConversationActions$Request;)Landroid/view/textclassifier/ConversationActions;
    .registers 4

    .line 431
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    invoke-static {}, Landroid/view/textclassifier/TextClassifier$Utils;->checkMainThread()V

    .line 433
    new-instance p1, Landroid/view/textclassifier/ConversationActions;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Landroid/view/textclassifier/ConversationActions;-><init>(Ljava/util/List;Ljava/lang/String;)V

    return-object p1
.end method

.method public whitelist suggestSelection(Landroid/view/textclassifier/TextSelection$Request;)Landroid/view/textclassifier/TextSelection;
    .registers 4

    .line 266
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    invoke-static {}, Landroid/view/textclassifier/TextClassifier$Utils;->checkMainThread()V

    .line 268
    new-instance v0, Landroid/view/textclassifier/TextSelection$Builder;

    invoke-virtual {p1}, Landroid/view/textclassifier/TextSelection$Request;->getStartIndex()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/textclassifier/TextSelection$Request;->getEndIndex()I

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/view/textclassifier/TextSelection$Builder;-><init>(II)V

    invoke-virtual {v0}, Landroid/view/textclassifier/TextSelection$Builder;->build()Landroid/view/textclassifier/TextSelection;

    move-result-object p1

    return-object p1
.end method

.method public whitelist suggestSelection(Ljava/lang/CharSequence;IILandroid/os/LocaleList;)Landroid/view/textclassifier/TextSelection;
    .registers 6

    .line 304
    new-instance v0, Landroid/view/textclassifier/TextSelection$Request$Builder;

    invoke-direct {v0, p1, p2, p3}, Landroid/view/textclassifier/TextSelection$Request$Builder;-><init>(Ljava/lang/CharSequence;II)V

    .line 306
    invoke-virtual {v0, p4}, Landroid/view/textclassifier/TextSelection$Request$Builder;->setDefaultLocales(Landroid/os/LocaleList;)Landroid/view/textclassifier/TextSelection$Request$Builder;

    move-result-object p1

    .line 307
    invoke-virtual {p1}, Landroid/view/textclassifier/TextSelection$Request$Builder;->build()Landroid/view/textclassifier/TextSelection$Request;

    move-result-object p1

    .line 308
    invoke-interface {p0, p1}, Landroid/view/textclassifier/TextClassifier;->suggestSelection(Landroid/view/textclassifier/TextSelection$Request;)Landroid/view/textclassifier/TextSelection;

    move-result-object p1

    return-object p1
.end method
