.class public Landroid/view/input/StylusButtonCompatibility;
.super Landroid/view/InputEventCompatProcessor;
.source "StylusButtonCompatibility.java"


# static fields
.field private static final blacklist STYLUS_BUTTONS_MASK:I = 0x60


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 3

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/view/InputEventCompatProcessor;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 48
    return-void
.end method

.method public static blacklist isCompatibilityNeeded(Landroid/content/Context;)Z
    .registers 2

    .line 43
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v0, 0x17

    if-ge p0, v0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method


# virtual methods
.method public blacklist processInputEventForCompatibility(Landroid/view/InputEvent;)Ljava/util/List;
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

    .line 53
    instance-of v0, p1, Landroid/view/MotionEvent;

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    check-cast p1, Landroid/view/MotionEvent;

    .line 56
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v0

    .line 59
    and-int/lit8 v2, v0, 0x60

    shr-int/lit8 v2, v2, 0x4

    .line 60
    if-nez v2, :cond_12

    .line 62
    return-object v1

    .line 64
    :cond_12
    or-int/2addr v0, v2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setButtonState(I)V

    .line 65
    invoke-static {p1}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 54
    :cond_1b
    return-object v1
.end method
