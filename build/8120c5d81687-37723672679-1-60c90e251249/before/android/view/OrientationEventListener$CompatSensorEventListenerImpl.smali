.class Landroid/view/OrientationEventListener$CompatSensorEventListenerImpl;
.super Ljava/lang/Object;
.source "OrientationEventListener.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/OrientationEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CompatSensorEventListenerImpl"
.end annotation


# instance fields
.field final blacklist mSensorEventListener:Landroid/view/OrientationEventListener$SensorEventListenerImpl;

.field final synthetic blacklist this$0:Landroid/view/OrientationEventListener;


# direct methods
.method constructor blacklist <init>(Landroid/view/OrientationEventListener;Landroid/view/OrientationEventListener$SensorEventListenerImpl;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 165
    iput-object p1, p0, Landroid/view/OrientationEventListener$CompatSensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    iput-object p2, p0, Landroid/view/OrientationEventListener$CompatSensorEventListenerImpl;->mSensorEventListener:Landroid/view/OrientationEventListener$SensorEventListenerImpl;

    .line 167
    return-void
.end method


# virtual methods
.method public whitelist onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    .line 198
    return-void
.end method

.method public whitelist onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 4

    .line 175
    invoke-static {}, Landroid/content/res/CompatibilityInfo;->getCameraCompatibilityInfo()Landroid/content/res/CameraCompatibilityInfo;

    move-result-object v0

    .line 176
    invoke-virtual {v0}, Landroid/content/res/CameraCompatibilityInfo;->getDisplayRotationSandbox()I

    move-result v0

    .line 177
    const/4 v1, -0x1

    if-eq v0, v1, :cond_24

    .line 180
    mul-int/lit8 v0, v0, 0x5a

    rsub-int p1, v0, 0x168

    rem-int/lit16 p1, p1, 0x168

    .line 181
    iget-object v0, p0, Landroid/view/OrientationEventListener$CompatSensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    invoke-static {v0}, Landroid/view/OrientationEventListener;->-$$Nest$fgetmOrientation(Landroid/view/OrientationEventListener;)I

    move-result v0

    if-eq p1, v0, :cond_23

    .line 182
    iget-object v0, p0, Landroid/view/OrientationEventListener$CompatSensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    invoke-static {v0, p1}, Landroid/view/OrientationEventListener;->-$$Nest$fputmOrientation(Landroid/view/OrientationEventListener;I)V

    .line 183
    iget-object v0, p0, Landroid/view/OrientationEventListener$CompatSensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    invoke-virtual {v0, p1}, Landroid/view/OrientationEventListener;->onOrientationChanged(I)V

    .line 188
    :cond_23
    goto :goto_29

    .line 192
    :cond_24
    iget-object v0, p0, Landroid/view/OrientationEventListener$CompatSensorEventListenerImpl;->mSensorEventListener:Landroid/view/OrientationEventListener$SensorEventListenerImpl;

    invoke-virtual {v0, p1}, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->onSensorChanged(Landroid/hardware/SensorEvent;)V

    .line 194
    :goto_29
    return-void
.end method
