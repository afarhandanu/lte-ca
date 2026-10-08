.class final Landroid/view/ViewRootImpl$SyntheticKeyboardHandler;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SyntheticKeyboardHandler"
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

    .line 9232
    iput-object p1, p0, Landroid/view/ViewRootImpl$SyntheticKeyboardHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist-max-o process(Landroid/view/KeyEvent;)V
    .registers 17

    .line 9234
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_9

    .line 9235
    return-void

    .line 9238
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v0

    .line 9239
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 9240
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v2

    .line 9243
    nop

    .line 9244
    invoke-virtual {v0, v1, v2}, Landroid/view/KeyCharacterMap;->getFallbackAction(II)Landroid/view/KeyCharacterMap$FallbackAction;

    move-result-object v0

    .line 9245
    if-eqz v0, :cond_50

    .line 9246
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v1

    or-int/lit16 v12, v1, 0x400

    .line 9247
    nop

    .line 9248
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    .line 9249
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    iget v7, v0, Landroid/view/KeyCharacterMap$FallbackAction;->keyCode:I

    .line 9250
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v8

    iget v9, v0, Landroid/view/KeyCharacterMap$FallbackAction;->metaState:I

    .line 9251
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v11

    .line 9252
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getSource()I

    move-result v13

    .line 9247
    const/4 v14, 0x0

    invoke-static/range {v2 .. v14}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v1

    .line 9253
    invoke-virtual {v0}, Landroid/view/KeyCharacterMap$FallbackAction;->recycle()V

    .line 9254
    iget-object v0, p0, Landroid/view/ViewRootImpl$SyntheticKeyboardHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    .line 9256
    :cond_50
    return-void
.end method
