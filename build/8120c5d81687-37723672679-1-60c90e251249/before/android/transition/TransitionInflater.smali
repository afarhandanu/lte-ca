.class public Landroid/transition/TransitionInflater;
.super Ljava/lang/Object;
.source "TransitionInflater.java"


# static fields
.field private static final greylist-max-o sConstructorSignature:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final greylist-max-o sConstructors:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mContext:Landroid/content/Context;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 49
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Landroid/util/AttributeSet;

    aput-object v2, v0, v1

    sput-object v0, Landroid/transition/TransitionInflater;->sConstructorSignature:[Ljava/lang/Class;

    .line 51
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/transition/TransitionInflater;->sConstructors:Landroid/util/ArrayMap;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/content/Context;)V
    .registers 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Landroid/transition/TransitionInflater;->mContext:Landroid/content/Context;

    .line 58
    return-void
.end method

.method private greylist-max-o createCustom(Landroid/util/AttributeSet;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .registers 7

    .line 200
    const/4 v0, 0x0

    const-string v1, "class"

    invoke-interface {p1, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 202
    if-eqz v0, :cond_f8

    .line 207
    :try_start_9
    sget-object p3, Landroid/transition/TransitionInflater;->sConstructors:Landroid/util/ArrayMap;

    monitor-enter p3
    :try_end_c
    .catch Ljava/lang/InstantiationException; {:try_start_9 .. :try_end_c} :catch_d4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_9 .. :try_end_c} :catch_b0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_9 .. :try_end_c} :catch_8c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_9 .. :try_end_c} :catch_68
    .catch Ljava/lang/IllegalAccessException; {:try_start_9 .. :try_end_c} :catch_44

    .line 208
    :try_start_c
    sget-object v1, Landroid/transition/TransitionInflater;->sConstructors:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Constructor;

    .line 209
    if-nez v1, :cond_35

    .line 210
    iget-object v2, p0, Landroid/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 211
    invoke-virtual {v2, p2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    .line 212
    if-eqz v2, :cond_35

    .line 213
    sget-object v1, Landroid/transition/TransitionInflater;->sConstructorSignature:[Ljava/lang/Class;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 214
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 215
    sget-object v2, Landroid/transition/TransitionInflater;->sConstructors:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    :cond_35
    iget-object v2, p0, Landroid/transition/TransitionInflater;->mContext:Landroid/content/Context;

    filled-new-array {v2, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit p3

    return-object p1

    .line 219
    :catchall_41
    move-exception p1

    monitor-exit p3
    :try_end_43
    .catchall {:try_start_c .. :try_end_43} :catchall_41

    :try_start_43
    throw p1
    :try_end_44
    .catch Ljava/lang/InstantiationException; {:try_start_43 .. :try_end_44} :catch_d4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_43 .. :try_end_44} :catch_b0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_43 .. :try_end_44} :catch_8c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_43 .. :try_end_44} :catch_68
    .catch Ljava/lang/IllegalAccessException; {:try_start_43 .. :try_end_44} :catch_44

    .line 232
    :catch_44
    move-exception p1

    .line 233
    new-instance p3, Landroid/view/InflateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not instantiate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " class "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2, p1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    .line 229
    :catch_68
    move-exception p1

    .line 230
    new-instance p3, Landroid/view/InflateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not instantiate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " class "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2, p1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    .line 226
    :catch_8c
    move-exception p1

    .line 227
    new-instance p3, Landroid/view/InflateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not instantiate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " class "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2, p1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    .line 223
    :catch_b0
    move-exception p1

    .line 224
    new-instance p3, Landroid/view/InflateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not instantiate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " class "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2, p1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    .line 220
    :catch_d4
    move-exception p1

    .line 221
    new-instance p3, Landroid/view/InflateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not instantiate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " class "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2, p1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    .line 203
    :cond_f8
    new-instance p1, Landroid/view/InflateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " tag must have a \'class\' attribute"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private greylist-max-o createTransitionFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/transition/Transition;)Landroid/transition/Transition;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    nop

    .line 135
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 137
    instance-of v1, p3, Landroid/transition/TransitionSet;

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    .line 138
    move-object v1, p3

    check-cast v1, Landroid/transition/TransitionSet;

    goto :goto_f

    :cond_e
    move-object v1, v2

    :goto_f
    move-object v3, v2

    .line 140
    :goto_10
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1d

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v0, :cond_17a

    :cond_1d
    const/4 v5, 0x1

    if-eq v4, v5, :cond_17a

    .line 143
    const/4 v5, 0x2

    if-eq v4, v5, :cond_24

    .line 144
    goto :goto_10

    .line 147
    :cond_24
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 148
    const-string v5, "fade"

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_39

    .line 149
    new-instance v3, Landroid/transition/Fade;

    iget-object v4, p0, Landroid/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, p2}, Landroid/transition/Fade;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_13e

    .line 150
    :cond_39
    const-string v5, "changeBounds"

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4a

    .line 151
    new-instance v3, Landroid/transition/ChangeBounds;

    iget-object v4, p0, Landroid/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, p2}, Landroid/transition/ChangeBounds;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_13e

    .line 152
    :cond_4a
    const-string/jumbo v5, "slide"

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5c

    .line 153
    new-instance v3, Landroid/transition/Slide;

    iget-object v4, p0, Landroid/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, p2}, Landroid/transition/Slide;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_13e

    .line 154
    :cond_5c
    const-string v5, "explode"

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6d

    .line 155
    new-instance v3, Landroid/transition/Explode;

    iget-object v4, p0, Landroid/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, p2}, Landroid/transition/Explode;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_13e

    .line 156
    :cond_6d
    const-string v5, "changeImageTransform"

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7e

    .line 157
    new-instance v3, Landroid/transition/ChangeImageTransform;

    iget-object v4, p0, Landroid/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, p2}, Landroid/transition/ChangeImageTransform;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_13e

    .line 158
    :cond_7e
    const-string v5, "changeTransform"

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8f

    .line 159
    new-instance v3, Landroid/transition/ChangeTransform;

    iget-object v4, p0, Landroid/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, p2}, Landroid/transition/ChangeTransform;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_13e

    .line 160
    :cond_8f
    const-string v5, "changeClipBounds"

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a0

    .line 161
    new-instance v3, Landroid/transition/ChangeClipBounds;

    iget-object v4, p0, Landroid/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, p2}, Landroid/transition/ChangeClipBounds;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_13e

    .line 162
    :cond_a0
    const-string v5, "autoTransition"

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b1

    .line 163
    new-instance v3, Landroid/transition/AutoTransition;

    iget-object v4, p0, Landroid/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, p2}, Landroid/transition/AutoTransition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_13e

    .line 164
    :cond_b1
    const-string/jumbo v5, "recolor"

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c3

    .line 165
    new-instance v3, Landroid/transition/Recolor;

    iget-object v4, p0, Landroid/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, p2}, Landroid/transition/Recolor;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_13e

    .line 166
    :cond_c3
    const-string v5, "changeScroll"

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d3

    .line 167
    new-instance v3, Landroid/transition/ChangeScroll;

    iget-object v4, p0, Landroid/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, p2}, Landroid/transition/ChangeScroll;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_13e

    .line 168
    :cond_d3
    const-string/jumbo v5, "transitionSet"

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e4

    .line 169
    new-instance v3, Landroid/transition/TransitionSet;

    iget-object v4, p0, Landroid/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, p2}, Landroid/transition/TransitionSet;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_13e

    .line 170
    :cond_e4
    const-string/jumbo v5, "transition"

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f6

    .line 171
    const-class v3, Landroid/transition/Transition;

    invoke-direct {p0, p2, v3, v5}, Landroid/transition/TransitionInflater;->createCustom(Landroid/util/AttributeSet;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/transition/Transition;

    goto :goto_13e

    .line 172
    :cond_f6
    const-string/jumbo v5, "targets"

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_103

    .line 173
    invoke-direct {p0, p1, p2, p3}, Landroid/transition/TransitionInflater;->getTargetIds(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/transition/Transition;)V

    goto :goto_13e

    .line 174
    :cond_103
    const-string v5, "arcMotion"

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_116

    .line 175
    new-instance v4, Landroid/transition/ArcMotion;

    iget-object v5, p0, Landroid/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, p2}, Landroid/transition/ArcMotion;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p3, v4}, Landroid/transition/Transition;->setPathMotion(Landroid/transition/PathMotion;)V

    goto :goto_13e

    .line 176
    :cond_116
    const-string/jumbo v5, "pathMotion"

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12b

    .line 177
    const-class v4, Landroid/transition/PathMotion;

    invoke-direct {p0, p2, v4, v5}, Landroid/transition/TransitionInflater;->createCustom(Landroid/util/AttributeSet;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/transition/PathMotion;

    invoke-virtual {p3, v4}, Landroid/transition/Transition;->setPathMotion(Landroid/transition/PathMotion;)V

    goto :goto_13e

    .line 178
    :cond_12b
    const-string/jumbo v5, "patternPathMotion"

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15d

    .line 179
    new-instance v4, Landroid/transition/PatternPathMotion;

    iget-object v5, p0, Landroid/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, p2}, Landroid/transition/PatternPathMotion;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p3, v4}, Landroid/transition/Transition;->setPathMotion(Landroid/transition/PathMotion;)V

    .line 183
    :goto_13e
    if-eqz v3, :cond_15b

    .line 184
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->isEmptyElementTag()Z

    move-result v4

    if-nez v4, :cond_149

    .line 185
    invoke-direct {p0, p1, p2, v3}, Landroid/transition/TransitionInflater;->createTransitionFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/transition/Transition;)Landroid/transition/Transition;

    .line 187
    :cond_149
    if-eqz v1, :cond_150

    .line 188
    invoke-virtual {v1, v3}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 189
    move-object v3, v2

    goto :goto_15b

    .line 190
    :cond_150
    if-nez p3, :cond_153

    goto :goto_15b

    .line 191
    :cond_153
    new-instance p1, Landroid/view/InflateException;

    const-string p2, "Could not add transition to another transition."

    invoke-direct {p1, p2}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 194
    :cond_15b
    :goto_15b
    goto/16 :goto_10

    .line 181
    :cond_15d
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown scene name: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 196
    :cond_17a
    return-object v3
.end method

.method private greylist-max-o createTransitionManagerFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/ViewGroup;)Landroid/transition/TransitionManager;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 299
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 300
    const/4 v1, 0x0

    .line 302
    :goto_5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_12

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_58

    :cond_12
    const/4 v3, 0x1

    if-eq v2, v3, :cond_58

    .line 305
    const/4 v3, 0x2

    if-eq v2, v3, :cond_19

    .line 306
    goto :goto_5

    .line 309
    :cond_19
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 310
    const-string/jumbo v3, "transitionManager"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 311
    new-instance v1, Landroid/transition/TransitionManager;

    invoke-direct {v1}, Landroid/transition/TransitionManager;-><init>()V

    goto :goto_3a

    .line 312
    :cond_2c
    const-string/jumbo v3, "transition"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    if-eqz v1, :cond_3b

    .line 313
    invoke-direct {p0, p2, p3, v1}, Landroid/transition/TransitionInflater;->loadTransition(Landroid/util/AttributeSet;Landroid/view/ViewGroup;Landroid/transition/TransitionManager;)V

    .line 317
    :goto_3a
    goto :goto_5

    .line 315
    :cond_3b
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown scene name: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 318
    :cond_58
    return-object v1
.end method

.method public static whitelist from(Landroid/content/Context;)Landroid/transition/TransitionInflater;
    .registers 2

    .line 64
    new-instance v0, Landroid/transition/TransitionInflater;

    invoke-direct {v0, p0}, Landroid/transition/TransitionInflater;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private greylist-max-o getTargetIds(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/transition/Transition;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 243
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 245
    :goto_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_11

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_b4

    :cond_11
    const/4 v3, 0x1

    if-eq v1, v3, :cond_b4

    .line 248
    const/4 v4, 0x2

    if-eq v1, v4, :cond_18

    .line 249
    goto :goto_4

    .line 252
    :cond_18
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 253
    const-string/jumbo v5, "target"

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_97

    .line 254
    iget-object v1, p0, Landroid/transition/TransitionInflater;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/android/internal/R$styleable;->TransitionTarget:[I

    invoke-virtual {v1, p2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 255
    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 257
    if-eqz v6, :cond_38

    .line 258
    invoke-virtual {p3, v6}, Landroid/transition/Transition;->addTarget(I)Landroid/transition/Transition;

    goto :goto_75

    .line 259
    :cond_38
    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    if-eqz v4, :cond_42

    .line 260
    invoke-virtual {p3, v4, v3}, Landroid/transition/Transition;->excludeTarget(IZ)Landroid/transition/Transition;

    goto :goto_75

    .line 261
    :cond_42
    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4d

    .line 263
    invoke-virtual {p3, v4}, Landroid/transition/Transition;->addTarget(Ljava/lang/String;)Landroid/transition/Transition;

    goto :goto_75

    .line 264
    :cond_4d
    const/4 v4, 0x5

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_58

    .line 266
    invoke-virtual {p3, v4, v3}, Landroid/transition/Transition;->excludeTarget(Ljava/lang/String;Z)Landroid/transition/Transition;

    goto :goto_75

    .line 268
    :cond_58
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 270
    if-eqz v2, :cond_66

    .line 271
    :try_start_5e
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 272
    invoke-virtual {p3, v4, v3}, Landroid/transition/Transition;->excludeTarget(Ljava/lang/Class;Z)Landroid/transition/Transition;

    .line 273
    goto :goto_74

    :cond_66
    nop

    .line 274
    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_74

    .line 275
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 276
    invoke-virtual {p3, v3}, Landroid/transition/Transition;->addTarget(Ljava/lang/Class;)Landroid/transition/Transition;
    :try_end_74
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5e .. :try_end_74} :catch_7a

    .line 281
    :cond_74
    :goto_74
    nop

    .line 283
    :goto_75
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 284
    nop

    .line 287
    goto :goto_4

    .line 278
    :catch_7a
    move-exception p1

    .line 279
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 280
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not create "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 285
    :cond_97
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown scene name: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 288
    :cond_b4
    return-void
.end method

.method private greylist-max-o loadTransition(Landroid/util/AttributeSet;Landroid/view/ViewGroup;Landroid/transition/TransitionManager;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 324
    iget-object v0, p0, Landroid/transition/TransitionInflater;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/internal/R$styleable;->TransitionManager:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 325
    const/4 v0, 0x2

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 326
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 327
    const/4 v3, 0x0

    if-gez v2, :cond_18

    move-object v2, v3

    goto :goto_1e

    :cond_18
    iget-object v4, p0, Landroid/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-static {p2, v2, v4}, Landroid/transition/Scene;->getSceneForLayout(Landroid/view/ViewGroup;ILandroid/content/Context;)Landroid/transition/Scene;

    move-result-object v2

    .line 328
    :goto_1e
    const/4 v4, 0x1

    invoke-virtual {p1, v4, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 329
    if-gez v1, :cond_26

    goto :goto_2c

    :cond_26
    iget-object v3, p0, Landroid/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-static {p2, v1, v3}, Landroid/transition/Scene;->getSceneForLayout(Landroid/view/ViewGroup;ILandroid/content/Context;)Landroid/transition/Scene;

    move-result-object v3

    .line 331
    :goto_2c
    if-ltz v0, :cond_59

    .line 332
    invoke-virtual {p0, v0}, Landroid/transition/TransitionInflater;->inflateTransition(I)Landroid/transition/Transition;

    move-result-object p2

    .line 333
    if-eqz p2, :cond_59

    .line 334
    if-eqz v3, :cond_40

    .line 337
    if-nez v2, :cond_3c

    .line 338
    invoke-virtual {p3, v3, p2}, Landroid/transition/TransitionManager;->setTransition(Landroid/transition/Scene;Landroid/transition/Transition;)V

    goto :goto_59

    .line 340
    :cond_3c
    invoke-virtual {p3, v2, v3, p2}, Landroid/transition/TransitionManager;->setTransition(Landroid/transition/Scene;Landroid/transition/Scene;Landroid/transition/Transition;)V

    goto :goto_59

    .line 335
    :cond_40
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No toScene for transition ID "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 344
    :cond_59
    :goto_59
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 345
    return-void
.end method


# virtual methods
.method public whitelist inflateTransition(I)Landroid/transition/Transition;
    .registers 6

    .line 77
    iget-object v0, p0, Landroid/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    .line 79
    :try_start_a
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/transition/TransitionInflater;->createTransitionFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/transition/Transition;)Landroid/transition/Transition;

    move-result-object v0
    :try_end_13
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_13} :catch_42
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_13} :catch_19
    .catchall {:try_start_a .. :try_end_13} :catchall_17

    .line 91
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 79
    return-object v0

    .line 91
    :catchall_17
    move-exception v0

    goto :goto_50

    .line 84
    :catch_19
    move-exception v0

    .line 85
    :try_start_1a
    new-instance v1, Landroid/view/InflateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 87
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v1, v0}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 89
    throw v1

    .line 80
    :catch_42
    move-exception v0

    .line 81
    new-instance v1, Landroid/view/InflateException;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v1, v0}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 83
    throw v1
    :try_end_50
    .catchall {:try_start_1a .. :try_end_50} :catchall_17

    .line 91
    :goto_50
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 92
    throw v0
.end method

.method public whitelist inflateTransitionManager(ILandroid/view/ViewGroup;)Landroid/transition/TransitionManager;
    .registers 6

    .line 106
    iget-object v0, p0, Landroid/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    .line 108
    :try_start_a
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Landroid/transition/TransitionInflater;->createTransitionManagerFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/ViewGroup;)Landroid/transition/TransitionManager;

    move-result-object p2
    :try_end_12
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_12} :catch_41
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_12} :catch_18
    .catchall {:try_start_a .. :try_end_12} :catchall_16

    .line 120
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 108
    return-object p2

    .line 120
    :catchall_16
    move-exception p2

    goto :goto_4f

    .line 113
    :catch_18
    move-exception p2

    .line 114
    :try_start_19
    new-instance v0, Landroid/view/InflateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 116
    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v0, p2}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 118
    throw v0

    .line 109
    :catch_41
    move-exception p2

    .line 110
    new-instance v0, Landroid/view/InflateException;

    invoke-virtual {p2}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v0, p2}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 112
    throw v0
    :try_end_4f
    .catchall {:try_start_19 .. :try_end_4f} :catchall_16

    .line 120
    :goto_4f
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 121
    throw p2
.end method
