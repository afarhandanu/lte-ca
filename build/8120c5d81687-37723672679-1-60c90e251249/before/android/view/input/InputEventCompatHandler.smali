.class public Landroid/view/input/InputEventCompatHandler;
.super Ljava/lang/Object;
.source "InputEventCompatHandler.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mNext:Landroid/view/input/InputEventCompatHandler;

.field private final blacklist mProcessor:Landroid/view/InputEventCompatProcessor;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 45
    const-class v0, Landroid/view/input/InputEventCompatHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/input/InputEventCompatHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/InputEventCompatProcessor;Landroid/view/input/InputEventCompatHandler;)V
    .registers 3

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Landroid/view/input/InputEventCompatHandler;->mProcessor:Landroid/view/InputEventCompatProcessor;

    .line 53
    iput-object p2, p0, Landroid/view/input/InputEventCompatHandler;->mNext:Landroid/view/input/InputEventCompatHandler;

    .line 54
    return-void
.end method

.method public static blacklist buildChain(Landroid/content/Context;Landroid/os/Handler;)Landroid/view/input/InputEventCompatHandler;
    .registers 7

    .line 118
    nop

    .line 120
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104029a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 122
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_43

    .line 124
    nop

    .line 125
    :try_start_14
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 127
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const-class v3, Landroid/os/Handler;

    const/4 v4, 0x1

    aput-object v3, v1, v4

    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object v1

    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/InputEventCompatProcessor;

    .line 130
    new-instance v1, Landroid/view/input/InputEventCompatHandler;

    invoke-direct {v1, v0, v2}, Landroid/view/input/InputEventCompatHandler;-><init>(Landroid/view/InputEventCompatProcessor;Landroid/view/input/InputEventCompatHandler;)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_38} :catch_3a

    .line 134
    move-object v2, v1

    goto :goto_43

    .line 131
    :catch_3a
    move-exception v0

    .line 132
    sget-object v1, Landroid/view/input/InputEventCompatHandler;->TAG:Ljava/lang/String;

    const-string v3, "Unable to create the InputEventCompatProcessor. "

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 133
    nop

    .line 137
    :cond_43
    :goto_43
    invoke-static {p0}, Landroid/view/input/MouseToTouchProcessor;->isCompatibilityNeeded(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 138
    new-instance v0, Landroid/view/input/InputEventCompatHandler;

    new-instance v1, Landroid/view/input/MouseToTouchProcessor;

    invoke-direct {v1, p0, p1}, Landroid/view/input/MouseToTouchProcessor;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-direct {v0, v1, v2}, Landroid/view/input/InputEventCompatHandler;-><init>(Landroid/view/InputEventCompatProcessor;Landroid/view/input/InputEventCompatHandler;)V

    move-object v2, v0

    .line 142
    :cond_54
    invoke-static {}, Landroid/view/input/LetterboxScrollProcessor;->isCompatibilityNeeded()Z

    move-result v0

    if-eqz v0, :cond_65

    .line 143
    new-instance v0, Landroid/view/input/InputEventCompatHandler;

    new-instance v1, Landroid/view/input/LetterboxScrollProcessor;

    invoke-direct {v1, p0, p1}, Landroid/view/input/LetterboxScrollProcessor;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-direct {v0, v1, v2}, Landroid/view/input/InputEventCompatHandler;-><init>(Landroid/view/InputEventCompatProcessor;Landroid/view/input/InputEventCompatHandler;)V

    move-object v2, v0

    .line 147
    :cond_65
    invoke-static {p0}, Landroid/view/input/StylusButtonCompatibility;->isCompatibilityNeeded(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 148
    new-instance v0, Landroid/view/input/InputEventCompatHandler;

    new-instance v1, Landroid/view/input/StylusButtonCompatibility;

    invoke-direct {v1, p0, p1}, Landroid/view/input/StylusButtonCompatibility;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-direct {v0, v1, v2}, Landroid/view/input/InputEventCompatHandler;-><init>(Landroid/view/InputEventCompatProcessor;Landroid/view/input/InputEventCompatHandler;)V

    move-object v2, v0

    .line 152
    :cond_76
    return-object v2
.end method

.method static blacklist isPcInputCompatibilityNeeded(Landroid/content/Context;J)Z
    .registers 9

    .line 161
    invoke-static {}, Landroid/app/ActivityThread;->isSystem()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_67

    invoke-static {p1, p2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_67

    .line 167
    :cond_e
    :try_start_e
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 168
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x4000

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 169
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->reqFeatures:[Landroid/content/pm/FeatureInfo;

    if-eqz v2, :cond_36

    .line 170
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->reqFeatures:[Landroid/content/pm/FeatureInfo;

    array-length v2, v0

    move v3, v1

    :goto_24
    if-ge v3, v2, :cond_36

    aget-object v4, v0, v3

    .line 171
    iget-object v4, v4, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    const-string v5, "android.hardware.type.pc"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_30
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e .. :try_end_30} :catch_37

    if-eqz v4, :cond_33

    .line 172
    return v1

    .line 170
    :cond_33
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 179
    :cond_36
    goto :goto_3f

    .line 176
    :catch_37
    move-exception v0

    .line 177
    sget-object v1, Landroid/view/input/InputEventCompatHandler;->TAG:Ljava/lang/String;

    const-string v2, "Cannot obtain package info."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 181
    :goto_3f
    sget-object v0, Landroid/view/input/InputEventCompatHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Input compatibility "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " is enabled for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 182
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 181
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const/4 p0, 0x1

    return p0

    .line 162
    :cond_67
    :goto_67
    return v1
.end method


# virtual methods
.method public blacklist processInputEvent(Landroid/view/InputEvent;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/InputEvent;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/InputEvent;",
            ">;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Landroid/view/input/InputEventCompatHandler;->mProcessor:Landroid/view/InputEventCompatProcessor;

    invoke-virtual {v0, p1}, Landroid/view/InputEventCompatProcessor;->processInputEventForCompatibility(Landroid/view/InputEvent;)Ljava/util/List;

    move-result-object v0

    .line 66
    iget-object v1, p0, Landroid/view/input/InputEventCompatHandler;->mNext:Landroid/view/input/InputEventCompatHandler;

    if-nez v1, :cond_b

    .line 68
    return-object v0

    .line 69
    :cond_b
    if-nez v0, :cond_14

    .line 71
    iget-object v0, p0, Landroid/view/input/InputEventCompatHandler;->mNext:Landroid/view/input/InputEventCompatHandler;

    invoke-virtual {v0, p1}, Landroid/view/input/InputEventCompatHandler;->processInputEvent(Landroid/view/InputEvent;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 72
    :cond_14
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 74
    return-object v0

    .line 75
    :cond_1b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_34

    .line 77
    iget-object p1, p0, Landroid/view/input/InputEventCompatHandler;->mNext:Landroid/view/input/InputEventCompatHandler;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InputEvent;

    invoke-virtual {p1, v1}, Landroid/view/input/InputEventCompatHandler;->processInputEvent(Landroid/view/InputEvent;)Ljava/util/List;

    move-result-object p1

    .line 78
    if-nez p1, :cond_32

    goto :goto_33

    :cond_32
    move-object v0, p1

    :goto_33
    return-object v0

    .line 81
    :cond_34
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 82
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_41
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InputEvent;

    .line 83
    iget-object v2, p0, Landroid/view/input/InputEventCompatHandler;->mNext:Landroid/view/input/InputEventCompatHandler;

    invoke-virtual {v2, v1}, Landroid/view/input/InputEventCompatHandler;->processInputEvent(Landroid/view/InputEvent;)Ljava/util/List;

    move-result-object v2

    .line 84
    if-eqz v2, :cond_59

    .line 85
    invoke-interface {p1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_5c

    .line 87
    :cond_59
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    :goto_5c
    goto :goto_41

    .line 90
    :cond_5d
    return-object p1
.end method

.method public blacklist processInputEventBeforeFinish(Landroid/view/InputEvent;)Landroid/view/InputEvent;
    .registers 3

    .line 103
    iget-object v0, p0, Landroid/view/input/InputEventCompatHandler;->mNext:Landroid/view/input/InputEventCompatHandler;

    if-eqz v0, :cond_e

    .line 104
    iget-object v0, p0, Landroid/view/input/InputEventCompatHandler;->mNext:Landroid/view/input/InputEventCompatHandler;

    invoke-virtual {v0, p1}, Landroid/view/input/InputEventCompatHandler;->processInputEventBeforeFinish(Landroid/view/InputEvent;)Landroid/view/InputEvent;

    move-result-object p1

    .line 105
    if-nez p1, :cond_e

    .line 106
    const/4 p1, 0x0

    return-object p1

    .line 109
    :cond_e
    iget-object v0, p0, Landroid/view/input/InputEventCompatHandler;->mProcessor:Landroid/view/InputEventCompatProcessor;

    invoke-virtual {v0, p1}, Landroid/view/InputEventCompatProcessor;->processInputEventBeforeFinish(Landroid/view/InputEvent;)Landroid/view/InputEvent;

    move-result-object p1

    return-object p1
.end method
