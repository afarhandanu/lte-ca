.class Landroid/view/Display$HdrSdrRatioListenerWrapper;
.super Ljava/lang/Object;
.source "Display.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/Display;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HdrSdrRatioListenerWrapper"
.end annotation


# instance fields
.field blacklist mLastReportedRatio:F

.field blacklist mListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/view/Display;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Landroid/view/Display;


# direct methods
.method private constructor blacklist <init>(Landroid/view/Display;Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/view/Display;",
            ">;)V"
        }
    .end annotation

    .line 3111
    iput-object p1, p0, Landroid/view/Display$HdrSdrRatioListenerWrapper;->this$0:Landroid/view/Display;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3109
    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Landroid/view/Display$HdrSdrRatioListenerWrapper;->mLastReportedRatio:F

    .line 3112
    iput-object p2, p0, Landroid/view/Display$HdrSdrRatioListenerWrapper;->mListener:Ljava/util/function/Consumer;

    .line 3113
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/Display;Ljava/util/function/Consumer;Landroid/view/Display-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/view/Display$HdrSdrRatioListenerWrapper;-><init>(Landroid/view/Display;Ljava/util/function/Consumer;)V

    return-void
.end method


# virtual methods
.method public whitelist onDisplayAdded(I)V
    .registers 2

    .line 3118
    return-void
.end method

.method public whitelist onDisplayChanged(I)V
    .registers 3

    .line 3127
    iget-object v0, p0, Landroid/view/Display$HdrSdrRatioListenerWrapper;->this$0:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-ne p1, v0, :cond_1d

    .line 3128
    iget-object p1, p0, Landroid/view/Display$HdrSdrRatioListenerWrapper;->this$0:Landroid/view/Display;

    invoke-virtual {p1}, Landroid/view/Display;->getHdrSdrRatio()F

    move-result p1

    .line 3129
    iget v0, p0, Landroid/view/Display$HdrSdrRatioListenerWrapper;->mLastReportedRatio:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1d

    .line 3130
    iput p1, p0, Landroid/view/Display$HdrSdrRatioListenerWrapper;->mLastReportedRatio:F

    .line 3131
    iget-object p1, p0, Landroid/view/Display$HdrSdrRatioListenerWrapper;->mListener:Ljava/util/function/Consumer;

    iget-object v0, p0, Landroid/view/Display$HdrSdrRatioListenerWrapper;->this$0:Landroid/view/Display;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 3134
    :cond_1d
    return-void
.end method

.method public whitelist onDisplayRemoved(I)V
    .registers 2

    .line 3123
    return-void
.end method
