.class public Landroid/view/animation/AnimationUtils;
.super Ljava/lang/Object;
.source "AnimationUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/animation/AnimationUtils$AnimationState;
    }
.end annotation


# static fields
.field private static final greylist-max-o SEQUENTIALLY:I = 0x1

.field private static final greylist-max-o TOGETHER:I

.field private static greylist-max-o sAnimationState:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/view/animation/AnimationUtils$AnimationState;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sExpectedPresentationTimeFlagValue:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 62
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/Flags;->expectedPresentationTimeReadOnly()Z

    move-result v0

    sput-boolean v0, Landroid/view/animation/AnimationUtils;->sExpectedPresentationTimeFlagValue:Z

    .line 72
    new-instance v0, Landroid/view/animation/AnimationUtils$1;

    invoke-direct {v0}, Landroid/view/animation/AnimationUtils$1;-><init>()V

    sput-object v0, Landroid/view/animation/AnimationUtils;->sAnimationState:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static greylist-max-o createAnimationFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/animation/Animation;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 242
    const/4 v0, 0x0

    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    invoke-static {p0, p1, v0, v1}, Landroid/view/animation/AnimationUtils;->createAnimationFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/view/animation/AnimationSet;Landroid/util/AttributeSet;)Landroid/view/animation/Animation;

    move-result-object p0

    return-object p0
.end method

.method private static greylist createAnimationFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/view/animation/AnimationSet;Landroid/util/AttributeSet;)Landroid/view/animation/Animation;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Landroid/view/InflateException;
        }
    .end annotation

    .line 250
    nop

    .line 254
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    const/4 v1, 0x0

    .line 256
    :goto_6
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_13

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_ad

    :cond_13
    const/4 v3, 0x1

    if-eq v2, v3, :cond_ad

    .line 259
    const/4 v3, 0x2

    if-eq v2, v3, :cond_1a

    .line 260
    goto :goto_6

    .line 263
    :cond_1a
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 265
    const-string/jumbo v2, "set"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 266
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, p0, p3}, Landroid/view/animation/AnimationSet;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 267
    move-object v2, v1

    check-cast v2, Landroid/view/animation/AnimationSet;

    invoke-static {p0, p1, v1, p3}, Landroid/view/animation/AnimationUtils;->createAnimationFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/view/animation/AnimationSet;Landroid/util/AttributeSet;)Landroid/view/animation/Animation;

    goto :goto_89

    .line 268
    :cond_33
    const-string v2, "alpha"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 269
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, p0, p3}, Landroid/view/animation/AlphaAnimation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_89

    .line 270
    :cond_41
    const-string/jumbo v2, "scale"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_50

    .line 271
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    invoke-direct {v1, p0, p3}, Landroid/view/animation/ScaleAnimation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_89

    .line 272
    :cond_50
    const-string/jumbo v2, "rotate"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 273
    new-instance v1, Landroid/view/animation/RotateAnimation;

    invoke-direct {v1, p0, p3}, Landroid/view/animation/RotateAnimation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_89

    .line 274
    :cond_5f
    const-string/jumbo v2, "translate"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 275
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v1, p0, p3}, Landroid/view/animation/TranslateAnimation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_89

    .line 276
    :cond_6e
    const-string v2, "cliprect"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 277
    new-instance v1, Landroid/view/animation/ClipRectAnimation;

    invoke-direct {v1, p0, p3}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_89

    .line 278
    :cond_7c
    const-string v2, "extend"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_90

    .line 279
    new-instance v1, Landroid/view/animation/ExtendAnimation;

    invoke-direct {v1, p0, p3}, Landroid/view/animation/ExtendAnimation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 284
    :goto_89
    if-eqz p2, :cond_8e

    .line 285
    invoke-virtual {p2, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 287
    :cond_8e
    goto/16 :goto_6

    .line 281
    :cond_90
    new-instance p0, Landroid/view/InflateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown animation name: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 289
    :cond_ad
    return-object v1
.end method

.method private static greylist-max-o createInterpolatorFromXml(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/animation/Interpolator;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Landroid/view/InflateException;
        }
    .end annotation

    .line 464
    nop

    .line 468
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    const/4 v1, 0x0

    .line 470
    :goto_6
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_13

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_d8

    :cond_13
    const/4 v3, 0x1

    if-eq v2, v3, :cond_d8

    .line 473
    const/4 v3, 0x2

    if-eq v2, v3, :cond_1a

    .line 474
    goto :goto_6

    .line 477
    :cond_1a
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    .line 479
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 481
    const-string v3, "linearInterpolator"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 482
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    goto/16 :goto_b9

    .line 483
    :cond_31
    const-string v3, "accelerateInterpolator"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_41

    .line 484
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2, p0, p1, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)V

    move-object v1, v2

    goto/16 :goto_b9

    .line 485
    :cond_41
    const-string v3, "decelerateInterpolator"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_51

    .line 486
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2, p0, p1, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)V

    move-object v1, v2

    goto/16 :goto_b9

    .line 487
    :cond_51
    const-string v3, "accelerateDecelerateInterpolator"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5f

    .line 488
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    goto :goto_b9

    .line 489
    :cond_5f
    const-string v3, "cycleInterpolator"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6e

    .line 490
    new-instance v2, Landroid/view/animation/CycleInterpolator;

    invoke-direct {v2, p0, p1, v1}, Landroid/view/animation/CycleInterpolator;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)V

    move-object v1, v2

    goto :goto_b9

    .line 491
    :cond_6e
    const-string v3, "anticipateInterpolator"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7d

    .line 492
    new-instance v2, Landroid/view/animation/AnticipateInterpolator;

    invoke-direct {v2, p0, p1, v1}, Landroid/view/animation/AnticipateInterpolator;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)V

    move-object v1, v2

    goto :goto_b9

    .line 493
    :cond_7d
    const-string/jumbo v3, "overshootInterpolator"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8d

    .line 494
    new-instance v2, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v2, p0, p1, v1}, Landroid/view/animation/OvershootInterpolator;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)V

    move-object v1, v2

    goto :goto_b9

    .line 495
    :cond_8d
    const-string v3, "anticipateOvershootInterpolator"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9c

    .line 496
    new-instance v2, Landroid/view/animation/AnticipateOvershootInterpolator;

    invoke-direct {v2, p0, p1, v1}, Landroid/view/animation/AnticipateOvershootInterpolator;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)V

    move-object v1, v2

    goto :goto_b9

    .line 497
    :cond_9c
    const-string v3, "bounceInterpolator"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_aa

    .line 498
    new-instance v1, Landroid/view/animation/BounceInterpolator;

    invoke-direct {v1}, Landroid/view/animation/BounceInterpolator;-><init>()V

    goto :goto_b9

    .line 499
    :cond_aa
    const-string/jumbo v3, "pathInterpolator"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_bb

    .line 500
    new-instance v2, Landroid/view/animation/PathInterpolator;

    invoke-direct {v2, p0, p1, v1}, Landroid/view/animation/PathInterpolator;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)V

    move-object v1, v2

    .line 504
    :goto_b9
    goto/16 :goto_6

    .line 502
    :cond_bb
    new-instance p0, Landroid/view/InflateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown interpolator name: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 505
    :cond_d8
    return-object v1
.end method

.method private static greylist-max-o createLayoutAnimationFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/animation/LayoutAnimationController;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Landroid/view/InflateException;
        }
    .end annotation

    .line 320
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/view/animation/AnimationUtils;->createLayoutAnimationFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/view/animation/LayoutAnimationController;

    move-result-object p0

    return-object p0
.end method

.method private static greylist-max-o createLayoutAnimationFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/view/animation/LayoutAnimationController;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Landroid/view/InflateException;
        }
    .end annotation

    .line 327
    nop

    .line 330
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    const/4 v1, 0x0

    .line 332
    :goto_6
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_13

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_53

    :cond_13
    const/4 v3, 0x1

    if-eq v2, v3, :cond_53

    .line 335
    const/4 v3, 0x2

    if-eq v2, v3, :cond_1a

    .line 336
    goto :goto_6

    .line 339
    :cond_1a
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 341
    const-string v2, "layoutAnimation"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 342
    new-instance v1, Landroid/view/animation/LayoutAnimationController;

    invoke-direct {v1, p0, p2}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_39

    .line 343
    :cond_2c
    const-string v2, "gridLayoutAnimation"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 344
    new-instance v1, Landroid/view/animation/GridLayoutAnimationController;

    invoke-direct {v1, p0, p2}, Landroid/view/animation/GridLayoutAnimationController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 348
    :goto_39
    goto :goto_6

    .line 346
    :cond_3a
    new-instance p0, Landroid/view/InflateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown layout animation name: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 350
    :cond_53
    return-object v1
.end method

.method public static whitelist currentAnimationTimeMillis()J
    .registers 5

    .line 175
    sget-object v0, Landroid/view/animation/AnimationUtils;->sAnimationState:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/AnimationUtils$AnimationState;

    .line 176
    iget-boolean v1, v0, Landroid/view/animation/AnimationUtils$AnimationState;->animationClockLocked:Z

    if-eqz v1, :cond_15

    .line 178
    iget-wide v1, v0, Landroid/view/animation/AnimationUtils$AnimationState;->currentVsyncTimeMillis:J

    iget-wide v3, v0, Landroid/view/animation/AnimationUtils$AnimationState;->lastReportedTimeMillis:J

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0

    .line 181
    :cond_15
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/view/animation/AnimationUtils$AnimationState;->lastReportedTimeMillis:J

    .line 182
    iget-wide v0, v0, Landroid/view/animation/AnimationUtils$AnimationState;->lastReportedTimeMillis:J

    return-wide v0
.end method

.method public static blacklist getExpectedPresentationTimeMillis()J
    .registers 4

    .line 213
    invoke-static {}, Landroid/view/animation/AnimationUtils;->getExpectedPresentationTimeNanos()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public static blacklist getExpectedPresentationTimeNanos()J
    .registers 4

    .line 195
    sget-boolean v0, Landroid/view/animation/AnimationUtils;->sExpectedPresentationTimeFlagValue:Z

    if-nez v0, :cond_d

    .line 196
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    return-wide v0

    .line 199
    :cond_d
    sget-object v0, Landroid/view/animation/AnimationUtils;->sAnimationState:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/AnimationUtils$AnimationState;

    .line 200
    iget-wide v0, v0, Landroid/view/animation/AnimationUtils$AnimationState;->mExpectedPresentationTimeNanos:J

    return-wide v0
.end method

.method public static whitelist loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 227
    nop

    .line 229
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 230
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->createAnimationFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/animation/Animation;

    move-result-object p0
    :try_end_e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_e} :catch_16
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_e} :catch_16
    .catchall {:try_start_2 .. :try_end_e} :catchall_14

    .line 235
    if-eqz v0, :cond_13

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    .line 230
    :cond_13
    return-object p0

    .line 235
    :catchall_14
    move-exception p0

    goto :goto_34

    .line 231
    :catch_16
    move-exception p0

    .line 232
    :try_start_17
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t load animation resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 233
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, p0}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
    :try_end_34
    .catchall {:try_start_17 .. :try_end_34} :catchall_14

    .line 235
    :goto_34
    if-eqz v0, :cond_39

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    .line 236
    :cond_39
    throw p0
.end method

.method public static whitelist loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 421
    nop

    .line 423
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 424
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    invoke-static {v1, p0, v0}, Landroid/view/animation/AnimationUtils;->createInterpolatorFromXml(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/animation/Interpolator;

    move-result-object p0
    :try_end_16
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_16} :catch_1e
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_16} :catch_1e
    .catch Landroid/view/InflateException; {:try_start_2 .. :try_end_16} :catch_1e
    .catchall {:try_start_2 .. :try_end_16} :catchall_1c

    .line 429
    if-eqz v0, :cond_1b

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    .line 424
    :cond_1b
    return-object p0

    .line 429
    :catchall_1c
    move-exception p0

    goto :goto_3c

    .line 425
    :catch_1e
    move-exception p0

    .line 426
    :try_start_1f
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t load animation resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 427
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, p0}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
    :try_end_3c
    .catchall {:try_start_1f .. :try_end_3c} :catchall_1c

    .line 429
    :goto_3c
    if-eqz v0, :cond_41

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    .line 430
    :cond_41
    throw p0
.end method

.method public static greylist-max-o loadInterpolator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;I)Landroid/view/animation/Interpolator;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 445
    nop

    .line 447
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 448
    invoke-static {p0, p1, v0}, Landroid/view/animation/AnimationUtils;->createInterpolatorFromXml(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/animation/Interpolator;

    move-result-object p0
    :try_end_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_a} :catch_12
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_a} :catch_12
    .catch Landroid/view/InflateException; {:try_start_2 .. :try_end_a} :catch_12
    .catchall {:try_start_2 .. :try_end_a} :catchall_10

    .line 453
    if-eqz v0, :cond_f

    .line 454
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    .line 448
    :cond_f
    return-object p0

    .line 453
    :catchall_10
    move-exception p0

    goto :goto_30

    .line 449
    :catch_12
    move-exception p0

    .line 450
    :try_start_13
    new-instance p1, Landroid/content/res/Resources$NotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t load animation resource ID #0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 451
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1
    :try_end_30
    .catchall {:try_start_13 .. :try_end_30} :catchall_10

    .line 453
    :goto_30
    if-eqz v0, :cond_35

    .line 454
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    .line 456
    :cond_35
    throw p0
.end method

.method public static whitelist loadLayoutAnimation(Landroid/content/Context;I)Landroid/view/animation/LayoutAnimationController;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 304
    nop

    .line 306
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 307
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->createLayoutAnimationFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/animation/LayoutAnimationController;

    move-result-object p0
    :try_end_e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_e} :catch_16
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_e} :catch_16
    .catch Landroid/view/InflateException; {:try_start_2 .. :try_end_e} :catch_16
    .catchall {:try_start_2 .. :try_end_e} :catchall_14

    .line 312
    if-eqz v0, :cond_13

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    .line 307
    :cond_13
    return-object p0

    .line 312
    :catchall_14
    move-exception p0

    goto :goto_34

    .line 308
    :catch_16
    move-exception p0

    .line 309
    :try_start_17
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t load animation resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 310
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, p0}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
    :try_end_34
    .catchall {:try_start_17 .. :try_end_34} :catchall_14

    .line 312
    :goto_34
    if-eqz v0, :cond_39

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    .line 313
    :cond_39
    throw p0
.end method

.method public static blacklist lockAnimationClock(J)V
    .registers 4

    .line 147
    sget-object v0, Landroid/view/animation/AnimationUtils;->sAnimationState:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/AnimationUtils$AnimationState;

    .line 148
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/animation/AnimationUtils$AnimationState;->animationClockLocked:Z

    .line 149
    iput-wide p0, v0, Landroid/view/animation/AnimationUtils$AnimationState;->currentVsyncTimeMillis:J

    .line 150
    return-void
.end method

.method public static blacklist lockAnimationClock(JJ)V
    .registers 6

    .line 109
    sget-object v0, Landroid/view/animation/AnimationUtils;->sAnimationState:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/AnimationUtils$AnimationState;

    .line 110
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/animation/AnimationUtils$AnimationState;->animationClockLocked:Z

    .line 111
    iput-wide p0, v0, Landroid/view/animation/AnimationUtils$AnimationState;->currentVsyncTimeMillis:J

    .line 112
    sget-boolean p0, Landroid/view/animation/AnimationUtils;->sExpectedPresentationTimeFlagValue:Z

    if-nez p0, :cond_13

    .line 113
    iput-wide p2, v0, Landroid/view/animation/AnimationUtils$AnimationState;->mExpectedPresentationTimeNanos:J

    .line 115
    :cond_13
    return-void
.end method

.method public static whitelist makeInAnimation(Landroid/content/Context;Z)Landroid/view/animation/Animation;
    .registers 4

    .line 363
    if-eqz p1, :cond_a

    .line 364
    const p1, 0x10a0002

    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p0

    goto :goto_11

    .line 366
    :cond_a
    const p1, 0x10a00a7

    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p0

    .line 369
    :goto_11
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p0, p1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 370
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 371
    return-object p0
.end method

.method public static whitelist makeInChildBottomAnimation(Landroid/content/Context;)Landroid/view/animation/Animation;
    .registers 3

    .line 405
    const v0, 0x10a00a4

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p0

    .line 406
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 407
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 408
    return-object p0
.end method

.method public static whitelist makeOutAnimation(Landroid/content/Context;Z)Landroid/view/animation/Animation;
    .registers 4

    .line 384
    if-eqz p1, :cond_a

    .line 385
    const p1, 0x10a0003

    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p0

    goto :goto_11

    .line 387
    :cond_a
    const p1, 0x10a00aa

    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p0

    .line 390
    :goto_11
    new-instance p1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {p0, p1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 391
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 392
    return-object p0
.end method

.method public static blacklist unlockAnimationClock()V
    .registers 2

    .line 161
    sget-object v0, Landroid/view/animation/AnimationUtils;->sAnimationState:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/AnimationUtils$AnimationState;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/view/animation/AnimationUtils$AnimationState;->animationClockLocked:Z

    .line 162
    return-void
.end method
