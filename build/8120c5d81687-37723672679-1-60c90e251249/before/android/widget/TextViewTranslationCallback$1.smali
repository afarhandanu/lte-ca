.class Landroid/widget/TextViewTranslationCallback$1;
.super Ljava/lang/Object;
.source "TextViewTranslationCallback.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/TextViewTranslationCallback;->runChangeTextWithAnimationIfNeeded(Landroid/widget/TextView;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/TextViewTranslationCallback;

.field final synthetic blacklist val$changeTextRunnable:Ljava/lang/Runnable;

.field final synthetic blacklist val$originalColors:Landroid/content/res/ColorStateList;

.field final synthetic blacklist val$viewRef:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor blacklist <init>(Landroid/widget/TextViewTranslationCallback;Ljava/lang/ref/WeakReference;Landroid/content/res/ColorStateList;Ljava/lang/Runnable;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 320
    iput-object p1, p0, Landroid/widget/TextViewTranslationCallback$1;->this$0:Landroid/widget/TextViewTranslationCallback;

    iput-object p2, p0, Landroid/widget/TextViewTranslationCallback$1;->val$viewRef:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Landroid/widget/TextViewTranslationCallback$1;->val$originalColors:Landroid/content/res/ColorStateList;

    iput-object p4, p0, Landroid/widget/TextViewTranslationCallback$1;->val$changeTextRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    .line 336
    return-void
.end method

.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 327
    iget-object p1, p0, Landroid/widget/TextViewTranslationCallback$1;->val$viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 328
    if-eqz p1, :cond_f

    .line 329
    iget-object v0, p0, Landroid/widget/TextViewTranslationCallback$1;->val$originalColors:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 331
    :cond_f
    iget-object p1, p0, Landroid/widget/TextViewTranslationCallback$1;->this$0:Landroid/widget/TextViewTranslationCallback;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/widget/TextViewTranslationCallback;->-$$Nest$fputmAnimator(Landroid/widget/TextViewTranslationCallback;Landroid/animation/ValueAnimator;)V

    .line 332
    return-void
.end method

.method public whitelist onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    .line 340
    iget-object p1, p0, Landroid/widget/TextViewTranslationCallback$1;->val$changeTextRunnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 341
    return-void
.end method

.method public whitelist onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    .line 323
    return-void
.end method
