.class final Landroid/widget/ActivityChooserModel$DefaultSorter;
.super Ljava/lang/Object;
.source "ActivityChooserModel.java"

# interfaces
.implements Landroid/widget/ActivityChooserModel$ActivitySorter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ActivityChooserModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DefaultSorter"
.end annotation


# static fields
.field private static final greylist-max-o WEIGHT_DECAY_COEFFICIENT:F = 0.95f


# instance fields
.field private final greylist-max-o mPackageNameToActivityMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/ComponentName;",
            "Landroid/widget/ActivityChooserModel$ActivityResolveInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>(Landroid/widget/ActivityChooserModel;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 948
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 951
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroid/widget/ActivityChooserModel$DefaultSorter;->mPackageNameToActivityMap:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/ActivityChooserModel;Landroid/widget/ActivityChooserModel-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/ActivityChooserModel$DefaultSorter;-><init>(Landroid/widget/ActivityChooserModel;)V

    return-void
.end method


# virtual methods
.method public greylist-max-o sort(Landroid/content/Intent;Ljava/util/List;Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Landroid/widget/ActivityChooserModel$ActivityResolveInfo;",
            ">;",
            "Ljava/util/List<",
            "Landroid/widget/ActivityChooserModel$HistoricalRecord;",
            ">;)V"
        }
    .end annotation

    .line 956
    iget-object p1, p0, Landroid/widget/ActivityChooserModel$DefaultSorter;->mPackageNameToActivityMap:Ljava/util/Map;

    .line 958
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 960
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 961
    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_2c

    .line 962
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;

    .line 963
    const/4 v3, 0x0

    iput v3, v2, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    .line 964
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v2, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, v2, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 967
    invoke-interface {p1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 961
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 970
    :cond_2c
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 971
    nop

    .line 972
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_35
    if-ltz v0, :cond_56

    .line 973
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ActivityChooserModel$HistoricalRecord;

    .line 974
    iget-object v3, v2, Landroid/widget/ActivityChooserModel$HistoricalRecord;->activity:Landroid/content/ComponentName;

    .line 975
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;

    .line 976
    if-eqz v3, :cond_53

    .line 977
    iget v4, v3, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    iget v2, v2, Landroid/widget/ActivityChooserModel$HistoricalRecord;->weight:F

    mul-float/2addr v2, v1

    add-float/2addr v4, v2

    iput v4, v3, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    .line 978
    const v2, 0x3f733333    # 0.95f

    mul-float/2addr v1, v2

    .line 972
    :cond_53
    add-int/lit8 v0, v0, -0x1

    goto :goto_35

    .line 982
    :cond_56
    invoke-static {p2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 989
    return-void
.end method
