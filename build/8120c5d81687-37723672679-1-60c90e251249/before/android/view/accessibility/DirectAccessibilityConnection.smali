.class Landroid/view/accessibility/DirectAccessibilityConnection;
.super Landroid/accessibilityservice/IAccessibilityServiceConnection$Default;
.source "DirectAccessibilityConnection.java"


# static fields
.field private static final blacklist FETCH_FLAGS:I = 0x180

.field private static final blacklist INTERACTIVE_REGION:Landroid/graphics/Region;


# instance fields
.field private final blacklist mAccessibilityInteractionConnection:Landroid/view/accessibility/IAccessibilityInteractionConnection;

.field private final blacklist mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private final blacklist mMyProcessId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 60
    const/4 v0, 0x0

    sput-object v0, Landroid/view/accessibility/DirectAccessibilityConnection;->INTERACTIVE_REGION:Landroid/graphics/Region;

    return-void
.end method

.method constructor blacklist <init>(Landroid/view/accessibility/IAccessibilityInteractionConnection;Landroid/view/accessibility/AccessibilityManager;)V
    .registers 3

    .line 64
    invoke-direct {p0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Default;-><init>()V

    .line 65
    iput-object p1, p0, Landroid/view/accessibility/DirectAccessibilityConnection;->mAccessibilityInteractionConnection:Landroid/view/accessibility/IAccessibilityInteractionConnection;

    .line 66
    iput-object p2, p0, Landroid/view/accessibility/DirectAccessibilityConnection;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 67
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    iput p1, p0, Landroid/view/accessibility/DirectAccessibilityConnection;->mMyProcessId:I

    .line 68
    return-void
.end method


# virtual methods
.method public blacklist findAccessibilityNodeInfoByAccessibilityId(IJILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IJLandroid/os/Bundle;)[Ljava/lang/String;
    .registers 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 75
    iget-object v0, p0, Landroid/view/accessibility/DirectAccessibilityConnection;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 76
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityManager;->getWindowTransformationSpec(I)Landroid/view/accessibility/IAccessibilityManager$WindowTransformationSpec;

    move-result-object v0

    .line 77
    iget-object v1, p0, Landroid/view/accessibility/DirectAccessibilityConnection;->mAccessibilityInteractionConnection:Landroid/view/accessibility/IAccessibilityInteractionConnection;

    sget-object v4, Landroid/view/accessibility/DirectAccessibilityConnection;->INTERACTIVE_REGION:Landroid/graphics/Region;

    iget v8, p0, Landroid/view/accessibility/DirectAccessibilityConnection;->mMyProcessId:I

    iget-object v11, v0, Landroid/view/accessibility/IAccessibilityManager$WindowTransformationSpec;->magnificationSpec:Landroid/view/MagnificationSpec;

    iget-object v12, v0, Landroid/view/accessibility/IAccessibilityManager$WindowTransformationSpec;->transformationMatrix:[F

    const/16 v7, 0x180

    move-wide/from16 v2, p2

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-wide/from16 v9, p7

    move-object/from16 v13, p9

    invoke-interface/range {v1 .. v13}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->findAccessibilityNodeInfoByAccessibilityId(JLandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;[FLandroid/os/Bundle;)V

    .line 81
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public blacklist findAccessibilityNodeInfosByText(IJLjava/lang/String;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)[Ljava/lang/String;
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 89
    iget-object v0, p0, Landroid/view/accessibility/DirectAccessibilityConnection;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 90
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityManager;->getWindowTransformationSpec(I)Landroid/view/accessibility/IAccessibilityManager$WindowTransformationSpec;

    move-result-object v0

    .line 91
    iget-object v1, p0, Landroid/view/accessibility/DirectAccessibilityConnection;->mAccessibilityInteractionConnection:Landroid/view/accessibility/IAccessibilityInteractionConnection;

    sget-object v5, Landroid/view/accessibility/DirectAccessibilityConnection;->INTERACTIVE_REGION:Landroid/graphics/Region;

    iget v9, p0, Landroid/view/accessibility/DirectAccessibilityConnection;->mMyProcessId:I

    iget-object v12, v0, Landroid/view/accessibility/IAccessibilityManager$WindowTransformationSpec;->magnificationSpec:Landroid/view/MagnificationSpec;

    iget-object v13, v0, Landroid/view/accessibility/IAccessibilityManager$WindowTransformationSpec;->transformationMatrix:[F

    const/16 v8, 0x180

    move-wide/from16 v2, p2

    move-object/from16 v4, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-wide/from16 v10, p7

    invoke-interface/range {v1 .. v13}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->findAccessibilityNodeInfosByText(JLjava/lang/String;Landroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;[F)V

    .line 94
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public blacklist findAccessibilityNodeInfosByViewId(IJLjava/lang/String;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)[Ljava/lang/String;
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 102
    iget-object v0, p0, Landroid/view/accessibility/DirectAccessibilityConnection;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 103
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityManager;->getWindowTransformationSpec(I)Landroid/view/accessibility/IAccessibilityManager$WindowTransformationSpec;

    move-result-object v0

    .line 104
    iget-object v1, p0, Landroid/view/accessibility/DirectAccessibilityConnection;->mAccessibilityInteractionConnection:Landroid/view/accessibility/IAccessibilityInteractionConnection;

    sget-object v5, Landroid/view/accessibility/DirectAccessibilityConnection;->INTERACTIVE_REGION:Landroid/graphics/Region;

    iget v9, p0, Landroid/view/accessibility/DirectAccessibilityConnection;->mMyProcessId:I

    iget-object v12, v0, Landroid/view/accessibility/IAccessibilityManager$WindowTransformationSpec;->magnificationSpec:Landroid/view/MagnificationSpec;

    iget-object v13, v0, Landroid/view/accessibility/IAccessibilityManager$WindowTransformationSpec;->transformationMatrix:[F

    const/16 v8, 0x180

    move-wide/from16 v2, p2

    move-object/from16 v4, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-wide/from16 v10, p7

    invoke-interface/range {v1 .. v13}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->findAccessibilityNodeInfosByViewId(JLjava/lang/String;Landroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;[F)V

    .line 107
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public blacklist findFocus(IJIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)[Ljava/lang/String;
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 114
    iget-object v0, p0, Landroid/view/accessibility/DirectAccessibilityConnection;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 115
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityManager;->getWindowTransformationSpec(I)Landroid/view/accessibility/IAccessibilityManager$WindowTransformationSpec;

    move-result-object v0

    .line 116
    iget-object v1, p0, Landroid/view/accessibility/DirectAccessibilityConnection;->mAccessibilityInteractionConnection:Landroid/view/accessibility/IAccessibilityInteractionConnection;

    sget-object v5, Landroid/view/accessibility/DirectAccessibilityConnection;->INTERACTIVE_REGION:Landroid/graphics/Region;

    iget v9, p0, Landroid/view/accessibility/DirectAccessibilityConnection;->mMyProcessId:I

    iget-object v12, v0, Landroid/view/accessibility/IAccessibilityManager$WindowTransformationSpec;->magnificationSpec:Landroid/view/MagnificationSpec;

    iget-object v13, v0, Landroid/view/accessibility/IAccessibilityManager$WindowTransformationSpec;->transformationMatrix:[F

    const/16 v8, 0x180

    move-wide/from16 v2, p2

    move/from16 v4, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-wide/from16 v10, p7

    invoke-interface/range {v1 .. v13}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->findFocus(JILandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;[F)V

    .line 119
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public blacklist focusSearch(IJIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)[Ljava/lang/String;
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 126
    iget-object v0, p0, Landroid/view/accessibility/DirectAccessibilityConnection;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 127
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityManager;->getWindowTransformationSpec(I)Landroid/view/accessibility/IAccessibilityManager$WindowTransformationSpec;

    move-result-object v0

    .line 128
    iget-object v1, p0, Landroid/view/accessibility/DirectAccessibilityConnection;->mAccessibilityInteractionConnection:Landroid/view/accessibility/IAccessibilityInteractionConnection;

    sget-object v5, Landroid/view/accessibility/DirectAccessibilityConnection;->INTERACTIVE_REGION:Landroid/graphics/Region;

    iget v9, p0, Landroid/view/accessibility/DirectAccessibilityConnection;->mMyProcessId:I

    iget-object v12, v0, Landroid/view/accessibility/IAccessibilityManager$WindowTransformationSpec;->magnificationSpec:Landroid/view/MagnificationSpec;

    iget-object v13, v0, Landroid/view/accessibility/IAccessibilityManager$WindowTransformationSpec;->transformationMatrix:[F

    const/16 v8, 0x180

    move-wide/from16 v2, p2

    move/from16 v4, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-wide/from16 v10, p7

    invoke-interface/range {v1 .. v13}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->focusSearch(JILandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;[F)V

    .line 131
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public blacklist performAccessibilityAction(IJILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)Z
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 139
    iget-object v0, p0, Landroid/view/accessibility/DirectAccessibilityConnection;->mAccessibilityInteractionConnection:Landroid/view/accessibility/IAccessibilityInteractionConnection;

    const/16 v7, 0x180

    iget v8, p0, Landroid/view/accessibility/DirectAccessibilityConnection;->mMyProcessId:I

    move-wide v1, p2

    move v3, p4

    move-object/from16 v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p7

    move-wide/from16 v9, p8

    invoke-interface/range {v0 .. v10}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->performAccessibilityAction(JILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJ)V

    .line 141
    const/4 p1, 0x1

    return p1
.end method
