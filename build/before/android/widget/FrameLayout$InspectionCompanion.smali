.class public final Landroid/widget/FrameLayout$InspectionCompanion;
.super Ljava/lang/Object;
.source "FrameLayout$InspectionCompanion.java"

# interfaces
.implements Landroid/view/inspector/InspectionCompanion;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/view/inspector/InspectionCompanion<",
        "Landroid/widget/FrameLayout;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist mMeasureAllChildrenId:I

.field private blacklist mPropertiesMapped:Z


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/FrameLayout$InspectionCompanion;->mPropertiesMapped:Z

    return-void
.end method


# virtual methods
.method public whitelist mapProperties(Landroid/view/inspector/PropertyMapper;)V
    .registers 4

    .line 28
    const-string/jumbo v0, "measureAllChildren"

    const v1, 0x101010a

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Landroid/widget/FrameLayout$InspectionCompanion;->mMeasureAllChildrenId:I

    .line 29
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/widget/FrameLayout$InspectionCompanion;->mPropertiesMapped:Z

    .line 30
    return-void
.end method

.method public blacklist readProperties(Landroid/widget/FrameLayout;Landroid/view/inspector/PropertyReader;)V
    .registers 4

    .line 34
    iget-boolean v0, p0, Landroid/widget/FrameLayout$InspectionCompanion;->mPropertiesMapped:Z

    if-eqz v0, :cond_e

    .line 37
    iget v0, p0, Landroid/widget/FrameLayout$InspectionCompanion;->mMeasureAllChildrenId:I

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasureAllChildren()Z

    move-result p1

    invoke-interface {p2, v0, p1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    .line 38
    return-void

    .line 35
    :cond_e
    new-instance p1, Landroid/view/inspector/InspectionCompanion$UninitializedPropertyMapException;

    invoke-direct {p1}, Landroid/view/inspector/InspectionCompanion$UninitializedPropertyMapException;-><init>()V

    throw p1
.end method

.method public bridge synthetic whitelist readProperties(Ljava/lang/Object;Landroid/view/inspector/PropertyReader;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 15
    check-cast p1, Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout$InspectionCompanion;->readProperties(Landroid/widget/FrameLayout;Landroid/view/inspector/PropertyReader;)V

    return-void
.end method
