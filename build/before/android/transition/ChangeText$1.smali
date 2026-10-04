.class Landroid/transition/ChangeText$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChangeText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/transition/ChangeText;->createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/transition/ChangeText;

.field final synthetic blacklist val$endSelectionEnd:I

.field final synthetic blacklist val$endSelectionStart:I

.field final synthetic blacklist val$endText:Ljava/lang/CharSequence;

.field final synthetic blacklist val$startText:Ljava/lang/CharSequence;

.field final synthetic blacklist val$view:Landroid/widget/TextView;


# direct methods
.method constructor blacklist <init>(Landroid/transition/ChangeText;Ljava/lang/CharSequence;Landroid/widget/TextView;Ljava/lang/CharSequence;II)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 198
    iput-object p1, p0, Landroid/transition/ChangeText$1;->this$0:Landroid/transition/ChangeText;

    iput-object p2, p0, Landroid/transition/ChangeText$1;->val$startText:Ljava/lang/CharSequence;

    iput-object p3, p0, Landroid/transition/ChangeText$1;->val$view:Landroid/widget/TextView;

    iput-object p4, p0, Landroid/transition/ChangeText$1;->val$endText:Ljava/lang/CharSequence;

    iput p5, p0, Landroid/transition/ChangeText$1;->val$endSelectionStart:I

    iput p6, p0, Landroid/transition/ChangeText$1;->val$endSelectionEnd:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5

    .line 201
    iget-object p1, p0, Landroid/transition/ChangeText$1;->val$startText:Ljava/lang/CharSequence;

    iget-object v0, p0, Landroid/transition/ChangeText$1;->val$view:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_28

    .line 203
    iget-object p1, p0, Landroid/transition/ChangeText$1;->val$view:Landroid/widget/TextView;

    iget-object v0, p0, Landroid/transition/ChangeText$1;->val$endText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    iget-object p1, p0, Landroid/transition/ChangeText$1;->val$view:Landroid/widget/TextView;

    instance-of p1, p1, Landroid/widget/EditText;

    if-eqz p1, :cond_28

    .line 205
    iget-object p1, p0, Landroid/transition/ChangeText$1;->this$0:Landroid/transition/ChangeText;

    iget-object v0, p0, Landroid/transition/ChangeText$1;->val$view:Landroid/widget/TextView;

    check-cast v0, Landroid/widget/EditText;

    iget v1, p0, Landroid/transition/ChangeText$1;->val$endSelectionStart:I

    iget v2, p0, Landroid/transition/ChangeText$1;->val$endSelectionEnd:I

    invoke-static {p1, v0, v1, v2}, Landroid/transition/ChangeText;->-$$Nest$msetSelection(Landroid/transition/ChangeText;Landroid/widget/EditText;II)V

    .line 208
    :cond_28
    return-void
.end method
