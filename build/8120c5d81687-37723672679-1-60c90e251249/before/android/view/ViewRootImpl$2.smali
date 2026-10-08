.class Landroid/view/ViewRootImpl$2;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"

# interfaces
.implements Landroid/graphics/BLASTBufferQueue$CornerRadiiCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/ViewRootImpl;


# direct methods
.method constructor blacklist <init>(Landroid/view/ViewRootImpl;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1225
    iput-object p1, p0, Landroid/view/ViewRootImpl$2;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onCornerRadiiChanged([F)V
    .registers 5

    .line 1228
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/Flags;->setClientDrawnCornerRadii()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1229
    return-void

    .line 1231
    :cond_7
    if-eqz p1, :cond_3d

    array-length v0, p1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3d

    .line 1232
    new-instance v0, Landroid/view/ViewRootImpl$CornerRadii;

    invoke-direct {v0}, Landroid/view/ViewRootImpl$CornerRadii;-><init>()V

    .line 1233
    const/4 v1, 0x0

    aget v1, p1, v1

    iput v1, v0, Landroid/view/ViewRootImpl$CornerRadii;->topLeft:F

    .line 1234
    const/4 v1, 0x1

    aget v1, p1, v1

    iput v1, v0, Landroid/view/ViewRootImpl$CornerRadii;->topRight:F

    .line 1235
    const/4 v1, 0x2

    aget v1, p1, v1

    iput v1, v0, Landroid/view/ViewRootImpl$CornerRadii;->bottomLeft:F

    .line 1236
    const/4 v1, 0x3

    aget p1, p1, v1

    iput p1, v0, Landroid/view/ViewRootImpl$CornerRadii;->bottomRight:F

    .line 1237
    iget-object p1, p0, Landroid/view/ViewRootImpl$2;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {p1}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmCornerRadii(Landroid/view/ViewRootImpl;)Landroid/view/ViewRootImpl$CornerRadii;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewRootImpl$CornerRadii;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3c

    .line 1238
    iget-object p1, p0, Landroid/view/ViewRootImpl$2;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {p1, v0}, Landroid/view/ViewRootImpl;->-$$Nest$fputmCornerRadii(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$CornerRadii;)V

    .line 1239
    iget-object p1, p0, Landroid/view/ViewRootImpl$2;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {p1}, Landroid/view/ViewRootImpl;->invalidate()V

    .line 1241
    :cond_3c
    goto :goto_6f

    .line 1242
    :cond_3d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Corner radii received is null or invalid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1243
    if-nez p1, :cond_4e

    const-string/jumbo p1, "null"

    goto :goto_62

    :cond_4e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_62
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1242
    const-string v0, "ViewRootImpl"

    invoke-static {v0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    :goto_6f
    return-void
.end method
