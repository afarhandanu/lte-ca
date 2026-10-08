.class public final Landroid/view/textclassifier/ExtrasUtils;
.super Ljava/lang/Object;
.source "ExtrasUtils.java"


# static fields
.field private static final blacklist ACTIONS_INTENTS:Ljava/lang/String; = "actions-intents"

.field private static final blacklist ACTION_INTENT:Ljava/lang/String; = "action-intent"

.field private static final blacklist ENTITY_TYPE:Ljava/lang/String; = "entity-type"

.field private static final blacklist FOREIGN_LANGUAGE:Ljava/lang/String; = "foreign-language"

.field private static final blacklist MODEL_NAME:Ljava/lang/String; = "model-name"

.field private static final blacklist SCORE:Ljava/lang/String; = "score"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method private static blacklist findAction(Landroid/view/textclassifier/TextClassification;Ljava/lang/String;)Landroid/app/RemoteAction;
    .registers 7

    .line 82
    const/4 v0, 0x0

    if-eqz p0, :cond_34

    if-nez p1, :cond_6

    goto :goto_34

    .line 85
    :cond_6
    invoke-static {p0}, Landroid/view/textclassifier/ExtrasUtils;->getActionsIntents(Landroid/view/textclassifier/TextClassification;)Ljava/util/ArrayList;

    move-result-object v1

    .line 86
    if-eqz v1, :cond_33

    .line 87
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 88
    const/4 v3, 0x0

    :goto_11
    if-ge v3, v2, :cond_33

    .line 89
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    .line 90
    if-eqz v4, :cond_30

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 91
    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassification;->getActions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/RemoteAction;

    return-object p0

    .line 88
    :cond_30
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 95
    :cond_33
    return-object v0

    .line 83
    :cond_34
    :goto_34
    return-object v0
.end method

.method public static blacklist findTranslateAction(Landroid/view/textclassifier/TextClassification;)Landroid/app/RemoteAction;
    .registers 2

    .line 103
    const-string v0, "android.intent.action.TRANSLATE"

    invoke-static {p0, v0}, Landroid/view/textclassifier/ExtrasUtils;->findAction(Landroid/view/textclassifier/TextClassification;Ljava/lang/String;)Landroid/app/RemoteAction;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getActionIntent(Landroid/os/Bundle;)Landroid/content/Intent;
    .registers 3

    .line 61
    const-string v0, "action-intent"

    const-class v1, Landroid/content/Intent;

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Intent;

    return-object p0
.end method

.method public static blacklist getActionsIntents(Landroid/view/textclassifier/TextClassification;)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/textclassifier/TextClassification;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .line 69
    if-nez p0, :cond_4

    .line 70
    const/4 p0, 0x0

    return-object p0

    .line 72
    :cond_4
    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassification;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "actions-intents"

    const-class v1, Landroid/content/Intent;

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getEntityType(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 2

    .line 111
    if-nez p0, :cond_4

    .line 112
    const/4 p0, 0x0

    return-object p0

    .line 114
    :cond_4
    const-string v0, "entity-type"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getForeignLanguageExtra(Landroid/view/textclassifier/TextClassification;)Landroid/os/Bundle;
    .registers 2

    .line 50
    if-nez p0, :cond_4

    .line 51
    const/4 p0, 0x0

    return-object p0

    .line 53
    :cond_4
    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassification;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "foreign-language"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getModelName(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 2

    .line 134
    if-nez p0, :cond_4

    .line 135
    const/4 p0, 0x0

    return-object p0

    .line 137
    :cond_4
    const-string/jumbo v0, "model-name"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getScore(Landroid/os/Bundle;)F
    .registers 3

    .line 123
    const/high16 v0, -0x40800000    # -1.0f

    if-nez p0, :cond_5

    .line 124
    return v0

    .line 126
    :cond_5
    const-string/jumbo v1, "score"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result p0

    return p0
.end method
