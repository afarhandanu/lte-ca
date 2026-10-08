.class public Landroid/window/DesktopExperienceFlags$DesktopExperienceFlag;
.super Ljava/lang/Object;
.source "DesktopExperienceFlags.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/DesktopExperienceFlags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DesktopExperienceFlag"
.end annotation


# instance fields
.field private final blacklist mFlagFunction:Ljava/util/function/BooleanSupplier;

.field private final blacklist mFlagName:Ljava/lang/String;

.field private final blacklist mShouldOverrideByDevOption:Z


# direct methods
.method public constructor blacklist <init>(Ljava/util/function/BooleanSupplier;ZLjava/lang/String;)V
    .registers 4

    .line 412
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 413
    iput-object p1, p0, Landroid/window/DesktopExperienceFlags$DesktopExperienceFlag;->mFlagFunction:Ljava/util/function/BooleanSupplier;

    .line 414
    iput-object p3, p0, Landroid/window/DesktopExperienceFlags$DesktopExperienceFlag;->mFlagName:Ljava/lang/String;

    .line 415
    iput-boolean p2, p0, Landroid/window/DesktopExperienceFlags$DesktopExperienceFlag;->mShouldOverrideByDevOption:Z

    .line 416
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/Flags;->showDesktopExperienceDevOption()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 417
    invoke-static {p3, p0}, Landroid/window/DesktopExperienceFlags;->-$$Nest$smregisterFlag(Ljava/lang/String;Landroid/window/DesktopExperienceFlags$DesktopExperienceFlag;)V

    .line 419
    :cond_12
    return-void
.end method


# virtual methods
.method public blacklist getFlagName()Ljava/lang/String;
    .registers 2

    .line 433
    iget-object v0, p0, Landroid/window/DesktopExperienceFlags$DesktopExperienceFlag;->mFlagName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getFlagValue()Z
    .registers 2

    .line 437
    iget-object v0, p0, Landroid/window/DesktopExperienceFlags$DesktopExperienceFlag;->mFlagFunction:Ljava/util/function/BooleanSupplier;

    invoke-interface {v0}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result v0

    return v0
.end method

.method public blacklist isOverridable()Z
    .registers 2

    .line 441
    iget-boolean v0, p0, Landroid/window/DesktopExperienceFlags$DesktopExperienceFlag;->mShouldOverrideByDevOption:Z

    return v0
.end method

.method public blacklist isTrue()Z
    .registers 3

    .line 429
    iget-object v0, p0, Landroid/window/DesktopExperienceFlags$DesktopExperienceFlag;->mFlagFunction:Ljava/util/function/BooleanSupplier;

    iget-boolean v1, p0, Landroid/window/DesktopExperienceFlags$DesktopExperienceFlag;->mShouldOverrideByDevOption:Z

    invoke-static {v0, v1}, Landroid/window/DesktopExperienceFlags;->-$$Nest$smisFlagTrue(Ljava/util/function/BooleanSupplier;Z)Z

    move-result v0

    return v0
.end method
