.class Landroid/widget/AbsListView$DeviceConfigChangeListener;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeviceConfigChangeListener"
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 905
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/AbsListView-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/widget/AbsListView$DeviceConfigChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .registers 5

    .line 910
    const-string v0, "content_capture"

    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 911
    return-void

    .line 914
    :cond_d
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 915
    nop

    .line 916
    const-string/jumbo v2, "report_list_view_children"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    .line 917
    goto :goto_15

    .line 920
    :cond_2c
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Landroid/widget/AbsListView;->-$$Nest$sfputsContentCaptureReportingEnabledByDeviceConfig(Z)V

    .line 922
    goto :goto_15

    .line 923
    :cond_35
    return-void
.end method
