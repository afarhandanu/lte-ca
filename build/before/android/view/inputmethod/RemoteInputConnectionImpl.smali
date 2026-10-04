.class final Landroid/view/inputmethod/RemoteInputConnectionImpl;
.super Lcom/android/internal/inputmethod/IRemoteInputConnection$Stub;
.source "RemoteInputConnectionImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/inputmethod/RemoteInputConnectionImpl$KnownAlwaysTrueEndBatchEditCache;,
        Landroid/view/inputmethod/RemoteInputConnectionImpl$Dispatching;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist MAX_END_BATCH_EDIT_RETRY:I = 0x10

.field private static final blacklist TAG:Ljava/lang/String; = "RemoteInputConnectionImpl"


# instance fields
.field private final blacklist mAccessibilityInputConnection:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

.field private blacklist mBeamer:Landroid/os/CancellationSignalBeamer$Receiver;

.field private final blacklist mComputerControlInputConnection:Lcom/android/internal/inputmethod/IRemoteComputerControlInputConnection;

.field private final blacklist mCurrentSessionId:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final blacklist mDeactivateRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final blacklist mH:Landroid/os/Handler;

.field private final blacklist mHasPendingImmediateCursorAnchorInfoUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final blacklist mHasPendingInvalidation:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final blacklist mInputConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/view/inputmethod/InputConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mIsCursorAnchorInfoMonitoring:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final blacklist mLooper:Landroid/os/Looper;

.field private final blacklist mParentInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private final blacklist mServedView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$2C56kBNyimaX29P3MVRhxNO0E2M(Landroid/view/inputmethod/RemoteInputConnectionImpl;Ljava/util/function/Supplier;Lcom/android/internal/infra/AndroidFuture;Ljava/util/function/Function;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$dispatchWithTracing$49(Ljava/util/function/Supplier;Lcom/android/internal/infra/AndroidFuture;Ljava/util/function/Function;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$3DmBqNF13aie-a5EIGTDam2GYiI(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$performContextMenuAction$23(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$3lxrMXxq1QMFsVDwXnh3mmu3RMY(Landroid/view/inputmethod/RemoteInputConnectionImpl;ZI)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$scheduleInvalidateInput$0(ZI)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$4LMyUC6p0-Fj9sbH6GIghTrYGPU(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/KeyEvent;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$sendKeyEvent$30(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/KeyEvent;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$83kI_8DE8QPzNbnMIw4Y2rfJDVA(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;III)Landroid/view/inputmethod/SurroundingText;
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$getSurroundingText$11(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;III)Landroid/view/inputmethod/SurroundingText;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$8mdzVg9OM5CBv_YksdyQ663v55E(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)Ljava/lang/Integer;
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$getCursorCapsMode$13(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$9UjqFI5m9SQ-gZZ0VB9SvYbiZ0Y(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)Ljava/lang/CharSequence;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$getTextAfterCursor$5(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$AtkMLLxcy5g1MXf9P4aKlq2bQm8(Landroid/view/inputmethod/RemoteInputConnectionImpl;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$finishComposingTextFromImm$28(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Dw2D1NzOzFGWxY0ztsZiHTLunGU(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$beginBatchEdit$34(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$EUERrMmFWaCcxNB0CVkY1s1qoH4(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$finishComposingText$29(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$FsYJ8kSvg8CtEcKdSejAdzr-dGM(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$performSpellCheck$36(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$GFLnvxklWdoKHjk0DrLYpMhE-1g(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$setSelection$21(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$GZeUaEPlCkqFpC7lxUHm4FjcbUw(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$setImeConsumesInput$46(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Z)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Jl5UsxtFJ64KyE-rGTA_d_NwhC4(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$performEditorAction$22(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$McaSonbrTHfn24t_UgDkwWl_JYQ(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/os/ResultReceiver;Landroid/graphics/RectF;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$requestTextBoundsInfo$44(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/os/ResultReceiver;Landroid/graphics/RectF;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$P1GDz5k6xJZtEkJ1DmJ85vgIoU8(Landroid/view/inputmethod/RemoteInputConnectionImpl;Landroid/view/inputmethod/InputContentInfo;ILcom/android/internal/inputmethod/InputConnectionCommandHeader;ILandroid/os/Bundle;)Ljava/lang/Boolean;
    .registers 6

    invoke-direct/range {p0 .. p5}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$commitContent$45(Landroid/view/inputmethod/InputContentInfo;ILcom/android/internal/inputmethod/InputConnectionCommandHeader;ILandroid/os/Bundle;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$QwyLsEZO04OVNjlzlKUz9xEDa6o(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)Ljava/lang/CharSequence;
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$getSelectedText$9(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$SC6yE21q7zB79UROiWapKoDefBs(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;III)Ljava/lang/Boolean;
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$requestCursorUpdatesWithFilter$42(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;III)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$Spv6NJX-Ec0uCXWw69WmnCGktlo(Landroid/view/inputmethod/RemoteInputConnectionImpl;)V
    .registers 1

    invoke-direct {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$deactivate$1()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Sxvg3alSSuKzwtfL5lRRfd7PMpk(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$getExtractedText$15(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$Uh8URo82f0MjubEypaK8zPA4zQw(Landroid/view/inputmethod/RemoteInputConnectionImpl;Z)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$dispatchReportFullscreenMode$4(Z)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$XU-SuXKkN3ILKRxFTCHfLovtJlk(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IILjava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$replaceText$47(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IILjava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$YcCflVJvz7SJ4NuA0eRcxDz2wCU(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$deleteSurroundingText$32(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$_m3ZM_ItmcRhlzdt4odb11Apn54(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$setComposingRegion$24(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$_xKJPJrJJZYBqngdrvYK2VulS5c(Landroid/view/inputmethod/RemoteInputConnectionImpl;Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$cancelCancellationSignal$2(Landroid/os/IBinder;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$bDeQT_16kPCdAlnvdVpYc7zFB4Q(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$clearMetaKeyStates$31(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$bs_OGDwcIOuiGW9xVFpzltCkpyk(Landroid/view/inputmethod/RemoteInputConnectionImpl;Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$forgetCancellationSignal$3(Landroid/os/IBinder;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$dyvX76mWLIMlRRSgQ0CT-rRsrEE(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$endBatchEdit$35(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$j-M_QPFLZ9I4th0U_0AhU8K8-P0(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/inputmethod/CorrectionInfo;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$commitCorrection$20(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/inputmethod/CorrectionInfo;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$jNtA8MXobPnaECkNr8D9WTYrxk0(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$commitText$17(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$jQSMueKxPI3rqG2UZfZi8vvxqLg(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$performPrivateCommand$37(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$jZBuwHllbrn8tvvICsL4sRvy75A(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/inputmethod/CompletionInfo;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$commitCompletion$19(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/inputmethod/CompletionInfo;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$jzyi6yM7okUO4q2FYn7gAgT527A(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$commitTextWithTextAttribute$18(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$khtpaUPMwPCPA2OFIatCbNHReuc(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$setComposingTextWithTextAttribute$27(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$npKDQ_czdKHds7zXHiWT6X3YJ68(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IILandroid/view/inputmethod/TextAttribute;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$setComposingRegionWithTextAttribute$25(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IILandroid/view/inputmethod/TextAttribute;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$oCGT6VRG2saCoErDu6z0JYMxcYg(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/os/ResultReceiver;Landroid/view/inputmethod/HandwritingGesture;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$performHandwritingGesture$39(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/os/ResultReceiver;Landroid/view/inputmethod/HandwritingGesture;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$qOfgWGuiQt21-4kIdHEisasbOxM(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$deleteSurroundingTextInCodePoints$33(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$soHIVgnaTkxIKf20X9il0IHyeeA(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$setComposingText$26(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$xUxPv729eCgLtBM4c4ySLh3kNRQ(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/os/CancellationSignal;Landroid/view/inputmethod/PreviewableHandwritingGesture;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$previewHandwritingGesture$40(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/os/CancellationSignal;Landroid/view/inputmethod/PreviewableHandwritingGesture;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$z-R71fdG3JYWpp8pqgPpN3aJVEk(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)Ljava/lang/Boolean;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$requestCursorUpdates$41(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$zWZM9TttDJHRz4-dTwVYI-0IAPA(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)Ljava/lang/CharSequence;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$getTextBeforeCursor$7(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDeactivateRequested(Landroid/view/inputmethod/RemoteInputConnectionImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    iget-object p0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mDeactivateRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mcheckSessionId(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->checkSessionId(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mdispatchWithTracing(Landroid/view/inputmethod/RemoteInputConnectionImpl;Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;Ljava/util/function/Supplier;Ljava/util/function/Function;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;Ljava/util/function/Supplier;Ljava/util/function/Function;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdispatchWithTracing(Landroid/view/inputmethod/RemoteInputConnectionImpl;Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smuseImeTracing()Z
    .registers 1

    invoke-static {}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->useImeTracing()Z

    move-result v0

    return v0
.end method

.method constructor blacklist <init>(Landroid/os/Looper;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/InputMethodManager;Landroid/view/View;)V
    .registers 7

    .line 194
    invoke-direct {p0}, Lcom/android/internal/inputmethod/IRemoteInputConnection$Stub;-><init>()V

    .line 173
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mDeactivateRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 183
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mCurrentSessionId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 184
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mHasPendingInvalidation:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 186
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mIsCursorAnchorInfoMonitoring:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 187
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mHasPendingImmediateCursorAnchorInfoUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1267
    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;

    invoke-direct {v0, p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;)V

    iput-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mAccessibilityInputConnection:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    .line 1440
    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$2;

    invoke-direct {v0, p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl$2;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;)V

    iput-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mComputerControlInputConnection:Lcom/android/internal/inputmethod/IRemoteComputerControlInputConnection;

    .line 195
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mInputConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 196
    iput-object p1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mLooper:Landroid/os/Looper;

    .line 197
    new-instance p1, Landroid/os/Handler;

    iget-object p2, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mLooper:Landroid/os/Looper;

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mH:Landroid/os/Handler;

    .line 198
    iput-object p3, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mParentInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 199
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mServedView:Ljava/lang/ref/WeakReference;

    .line 200
    return-void
.end method

.method private blacklist checkSessionId(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z
    .registers 4

    .line 497
    iget v0, p1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->mSessionId:I

    iget-object v1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mCurrentSessionId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-eq v0, v1, :cond_44

    .line 498
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Session id mismatch header.sessionId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p1, p1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->mSessionId:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " currentSessionId: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mCurrentSessionId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 499
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " while calling "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 500
    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 498
    const-string v0, "RemoteInputConnectionImpl"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    const/4 p1, 0x0

    return p1

    .line 504
    :cond_44
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist dispatch(Ljava/lang/Runnable;)V
    .registers 3

    .line 1507
    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1508
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 1509
    return-void

    .line 1512
    :cond_c
    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mH:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1513
    return-void
.end method

.method private blacklist dispatchWithTracing(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;Ljava/util/function/Supplier;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/android/internal/infra/AndroidFuture;",
            "Ljava/util/function/Supplier<",
            "TT;>;)V"
        }
    .end annotation

    .line 1535
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;Ljava/util/function/Supplier;Ljava/util/function/Function;)V

    .line 1536
    return-void
.end method

.method private blacklist dispatchWithTracing(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;Ljava/util/function/Supplier;Ljava/util/function/Function;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/android/internal/infra/AndroidFuture;",
            "Ljava/util/function/Supplier<",
            "TT;>;",
            "Ljava/util/function/Function<",
            "TT;[B>;)V"
        }
    .end annotation

    .line 1542
    nop

    .line 1543
    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda36;

    move-object v1, p0

    move-object v5, p1

    move-object v3, p2

    move-object v2, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda36;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;Ljava/util/function/Supplier;Lcom/android/internal/infra/AndroidFuture;Ljava/util/function/Function;Ljava/lang/String;)V

    invoke-direct {p0, v5, v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 1558
    return-void
.end method

.method private blacklist dispatchWithTracing(Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 5

    .line 1517
    const-wide/16 v0, 0x4

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1518
    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    move-object p2, v0

    goto :goto_10

    .line 1527
    :cond_f
    nop

    .line 1530
    :goto_10
    invoke-direct {p0, p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatch(Ljava/lang/Runnable;)V

    .line 1531
    return-void
.end method

.method private blacklist getCancellationSignalBeamer()Landroid/os/CancellationSignalBeamer$Receiver;
    .registers 3

    .line 1092
    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mBeamer:Landroid/os/CancellationSignalBeamer$Receiver;

    if-eqz v0, :cond_7

    .line 1093
    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mBeamer:Landroid/os/CancellationSignalBeamer$Receiver;

    return-object v0

    .line 1095
    :cond_7
    new-instance v0, Landroid/os/CancellationSignalBeamer$Receiver;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/CancellationSignalBeamer$Receiver;-><init>(Z)V

    iput-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mBeamer:Landroid/os/CancellationSignalBeamer$Receiver;

    .line 1096
    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mBeamer:Landroid/os/CancellationSignalBeamer$Receiver;

    return-object v0
.end method

.method private blacklist getServedView()Landroid/view/View;
    .registers 2

    .line 227
    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mServedView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private blacklist isFinished()Z
    .registers 2

    .line 223
    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mInputConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private synthetic blacklist lambda$beginBatchEdit$34(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)V
    .registers 3

    .line 951
    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->checkSessionId(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 952
    return-void

    .line 954
    :cond_7
    invoke-virtual {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    .line 955
    if-eqz p1, :cond_1a

    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mDeactivateRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_1a

    .line 959
    :cond_16
    invoke-interface {p1}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 960
    return-void

    .line 956
    :cond_1a
    :goto_1a
    const-string p1, "RemoteInputConnectionImpl"

    const-string v0, "beginBatchEdit on inactive InputConnection"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    return-void
.end method

.method private synthetic blacklist lambda$cancelCancellationSignal$2(Landroid/os/IBinder;)V
    .registers 3

    .line 433
    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mBeamer:Landroid/os/CancellationSignalBeamer$Receiver;

    invoke-virtual {v0, p1}, Landroid/os/CancellationSignalBeamer$Receiver;->cancel(Landroid/os/IBinder;)V

    .line 434
    return-void
.end method

.method private synthetic blacklist lambda$clearMetaKeyStates$31(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V
    .registers 4

    .line 897
    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->checkSessionId(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 898
    return-void

    .line 900
    :cond_7
    invoke-virtual {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    .line 901
    if-eqz p1, :cond_1a

    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mDeactivateRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_1a

    .line 905
    :cond_16
    invoke-interface {p1, p2}, Landroid/view/inputmethod/InputConnection;->clearMetaKeyStates(I)Z

    .line 906
    return-void

    .line 902
    :cond_1a
    :goto_1a
    const-string p1, "RemoteInputConnectionImpl"

    const-string p2, "clearMetaKeyStates on inactive InputConnection"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    return-void
.end method

.method private synthetic blacklist lambda$commitCompletion$19(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/inputmethod/CompletionInfo;)V
    .registers 4

    .line 673
    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->checkSessionId(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 674
    return-void

    .line 676
    :cond_7
    invoke-virtual {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    .line 677
    if-eqz p1, :cond_1a

    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mDeactivateRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_1a

    .line 681
    :cond_16
    invoke-interface {p1, p2}, Landroid/view/inputmethod/InputConnection;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z

    .line 682
    return-void

    .line 678
    :cond_1a
    :goto_1a
    const-string p1, "RemoteInputConnectionImpl"

    const-string p2, "commitCompletion on inactive InputConnection"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    return-void
.end method

.method private synthetic blacklist lambda$commitContent$45(Landroid/view/inputmethod/InputContentInfo;ILcom/android/internal/inputmethod/InputConnectionCommandHeader;ILandroid/os/Bundle;)Ljava/lang/Boolean;
    .registers 16

    .line 1194
    const-string v1, "RemoteInputConnectionImpl"

    .line 1195
    const/4 v2, 0x0

    :try_start_3
    invoke-virtual {p1}, Landroid/view/inputmethod/InputContentInfo;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 1194
    invoke-static {v0, v3}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v9

    .line 1196
    nop

    .line 1197
    invoke-virtual {p1}, Landroid/view/inputmethod/InputContentInfo;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    .line 1196
    invoke-static {v0}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v7

    .line 1198
    invoke-static {}, Landroid/app/UriGrantsManager;->getService()Landroid/app/IUriGrantsManager;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v8, 0x1

    move v5, p2

    invoke-interface/range {v4 .. v9}, Landroid/app/IUriGrantsManager;->checkGrantUriPermission_ignoreNonSystem(ILjava/lang/String;Landroid/net/Uri;II)I
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_22} :catch_7a

    .line 1204
    nop

    .line 1206
    invoke-direct {p0, p3}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->checkSessionId(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result p2

    if-nez p2, :cond_2e

    .line 1207
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 1209
    :cond_2e
    invoke-virtual {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object p2

    .line 1210
    if-eqz p2, :cond_70

    iget-object p3, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mDeactivateRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p3

    if-eqz p3, :cond_3d

    goto :goto_70

    .line 1214
    :cond_3d
    if-eqz p1, :cond_55

    invoke-virtual {p1}, Landroid/view/inputmethod/InputContentInfo;->validate()Z

    move-result p3

    if-nez p3, :cond_46

    goto :goto_55

    .line 1219
    :cond_46
    :try_start_46
    invoke-interface {p2, p1, p4, p5}, Landroid/view/inputmethod/InputConnection;->commitContent(Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_4e
    .catch Ljava/lang/AbstractMethodError; {:try_start_46 .. :try_end_4e} :catch_4f

    return-object p1

    .line 1220
    :catch_4f
    move-exception v0

    .line 1222
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 1215
    :cond_55
    :goto_55
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "commitContent with invalid inputContentInfo="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 1211
    :cond_70
    :goto_70
    const-string p1, "commitContent on inactive InputConnection"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 1201
    :catch_7a
    move-exception v0

    move-object p1, v0

    .line 1202
    const-string p2, "commitContent with invalid Uri permission from IME:"

    invoke-static {v1, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1203
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private synthetic blacklist lambda$commitCorrection$20(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/inputmethod/CorrectionInfo;)V
    .registers 4

    .line 689
    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->checkSessionId(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 690
    return-void

    .line 692
    :cond_7
    invoke-virtual {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    .line 693
    if-eqz p1, :cond_1c

    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mDeactivateRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_1c

    .line 698
    :cond_16
    :try_start_16
    invoke-interface {p1, p2}, Landroid/view/inputmethod/InputConnection;->commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z
    :try_end_19
    .catch Ljava/lang/AbstractMethodError; {:try_start_16 .. :try_end_19} :catch_1a

    .line 701
    goto :goto_1b

    .line 699
    :catch_1a
    move-exception p1

    .line 702
    :goto_1b
    return-void

    .line 694
    :cond_1c
    :goto_1c
    const-string p1, "RemoteInputConnectionImpl"

    const-string p2, "commitCorrection on inactive InputConnection"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    return-void
.end method

.method private synthetic blacklist lambda$commitText$17(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;I)V
    .registers 5

    .line 640
    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->checkSessionId(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 641
    return-void

    .line 643
    :cond_7
    invoke-virtual {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    .line 644
    if-eqz p1, :cond_1a

    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mDeactivateRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_1a

    .line 648
    :cond_16
    invoke-interface {p1, p2, p3}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 649
    return-void

    .line 645
    :cond_1a
    :goto_1a
    const-string p1, "RemoteInputConnectionImpl"

    const-string p2, "commitText on inactive InputConnection"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    return-void
.end method

.method private synthetic blacklist lambda$commitTextWithTextAttribute$18(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)V
    .registers 6

    .line 657
    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->checkSessionId(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 658
    return-void

    .line 660
    :cond_7
    invoke-virtual {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    .line 661
    if-eqz p1, :cond_1a

    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mDeactivateRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_1a

    .line 665
    :cond_16
    invoke-interface {p1, p2, p3, p4}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)Z

    .line 666
    return-void

    .line 662
    :cond_1a
    :goto_1a
    const-string p1, "RemoteInputConnectionImpl"

    const-string p2, "commitText on inactive InputConnection"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    return-void
.end method

.method private synthetic blacklist lambda$deactivate$1()V
    .registers 6

    .line 385
    const-string v0, "InputConnection#closeConnection"

    const-wide/16 v1, 0x4

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 387
    const/4 v0, 0x0

    :try_start_8
    invoke-virtual {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v3
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_5c

    .line 388
    if-nez v3, :cond_17

    .line 397
    iget-object v3, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mInputConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 398
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 389
    return-void

    .line 392
    :cond_17
    :try_start_17
    invoke-interface {v3}, Landroid/view/inputmethod/InputConnection;->closeConnection()V
    :try_end_1a
    .catch Ljava/lang/AbstractMethodError; {:try_start_17 .. :try_end_1a} :catch_1b
    .catchall {:try_start_17 .. :try_end_1a} :catchall_5c

    .line 395
    goto :goto_1c

    .line 393
    :catch_1b
    move-exception v3

    .line 397
    :goto_1c
    iget-object v3, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mInputConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 398
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 399
    nop

    .line 402
    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mServedView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 403
    if-eqz v0, :cond_5b

    .line 404
    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 407
    if-eqz v1, :cond_4e

    .line 411
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v2

    if-eqz v2, :cond_43

    .line 412
    invoke-virtual {v0}, Landroid/view/View;->onInputConnectionClosedInternal()V

    goto :goto_4e

    .line 414
    :cond_43
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda37;

    invoke-direct {v2, v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda37;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 418
    :cond_4e
    :goto_4e
    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    .line 419
    if-eqz v1, :cond_5b

    .line 420
    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getHandwritingInitiator()Landroid/view/HandwritingInitiator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/HandwritingInitiator;->onInputConnectionClosed(Landroid/view/View;)V

    .line 423
    :cond_5b
    return-void

    .line 397
    :catchall_5c
    move-exception v3

    iget-object v4, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mInputConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 398
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 399
    throw v3
.end method

.method private synthetic blacklist lambda$deleteSurroundingText$32(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V
    .registers 5

    .line 914
    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->checkSessionId(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 915
    return-void

    .line 917
    :cond_7
    invoke-virtual {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    .line 918
    if-eqz p1, :cond_1a

    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mDeactivateRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_1a

    .line 922
    :cond_16
    invoke-interface {p1, p2, p3}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 923
    return-void

    .line 919
    :cond_1a
    :goto_1a
    const-string p1, "RemoteInputConnectionImpl"

    const-string p2, "deleteSurroundingText on inactive InputConnection"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    return-void
.end method

.method private synthetic blacklist lambda$deleteSurroundingTextInCodePoints$33(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V
    .registers 5

    .line 931
    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->checkSessionId(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 932
    return-void

    .line 934
    :cond_7
    invoke-virtual {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    .line 935
    if-eqz p1, :cond_1c

    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mDeactivateRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_1c

    .line 940
    :cond_16
    :try_start_16
    invoke-interface {p1, p2, p3}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingTextInCodePoints(II)Z
    :try_end_19
    .catch Ljava/lang/AbstractMethodError; {:try_start_16 .. :try_end_19} :catch_1a

    .line 943
    goto :goto_1b

    .line 941
    :catch_1a
    move-exception p1

    .line 944
    :goto_1b
    return-void

    .line 936
    :cond_1c
    :goto_1c
    const-string p1, "RemoteInputConnectionImpl"

    const-string p2, "deleteSurroundingTextInCodePoints on inactive InputConnection"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    return-void
.end method

.method private synthetic blacklist lambda$dispatchReportFullscreenMode$4(Z)V
    .registers 4

    .line 485
    invoke-virtual {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 486
    if-eqz v0, :cond_13

    iget-object v1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mDeactivateRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_13

    .line 489
    :cond_f
    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->reportFullscreenMode(Z)Z

    .line 490
    return-void

    .line 487
    :cond_13
    :goto_13
    return-void
.end method

.method static synthetic blacklist lambda$dispatchWithTracing$48(Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 4

    .line 1519
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InputConnection#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-wide/16 v0, 0x4

    invoke-static {v0, v1, p0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1521
    :try_start_18
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_20

    .line 1523
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1524
    nop

    .line 1525
    return-void

    .line 1523
    :catchall_20
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1524
    throw p0
.end method

.method private synthetic blacklist lambda$dispatchWithTracing$49(Ljava/util/function/Supplier;Lcom/android/internal/infra/AndroidFuture;Ljava/util/function/Function;Ljava/lang/String;)V
    .registers 6

    .line 1546
    :try_start_0
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_2d

    .line 1550
    nop

    .line 1551
    invoke-virtual {p2, p1}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 1552
    if-eqz p3, :cond_2c

    .line 1553
    invoke-interface {p3, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    .line 1554
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "RemoteInputConnectionImpl#"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iget-object p4, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mParentInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p2, p3, p4, p1}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    .line 1557
    :cond_2c
    return-void

    .line 1547
    :catchall_2d
    move-exception p1

    .line 1548
    invoke-virtual {p2, p1}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 1549
    throw p1
.end method

.method private synthetic blacklist lambda$endBatchEdit$35(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)V
    .registers 3

    .line 967
    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->checkSessionId(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 968
    return-void

    .line 970
    :cond_7
    invoke-virtual {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    .line 971
    if-eqz p1, :cond_1a

    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mDeactivateRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_1a

    .line 975
    :cond_16
    invoke-interface {p1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 976
    return-void

    .line 972
    :cond_1a
    :goto_1a
    const-string p1, "RemoteInputConnectionImpl"

    const-string v0, "endBatchEdit on inactive InputConnection"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    return-void
.end method

.method private synthetic blacklist lambda$finishComposingText$29(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)V
    .registers 3

    .line 857
    invoke-direct {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 863
    return-void

    .line 865
    :cond_7
    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->checkSessionId(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result p1

    if-nez p1, :cond_e

    .line 866
    return-void

    .line 868
    :cond_e
    invoke-virtual {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    .line 869
    if-nez p1, :cond_24

    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mDeactivateRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 870
    const-string p1, "RemoteInputConnectionImpl"

    const-string v0, "finishComposingText on inactive InputConnection"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    return-void

    .line 873
    :cond_24
    invoke-interface {p1}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 874
    return-void
.end method

.method private synthetic blacklist lambda$finishComposingTextFromImm$28(I)V
    .registers 3

    .line 833
    invoke-direct {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 839
    return-void

    .line 841
    :cond_7
    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mCurrentSessionId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eq p1, v0, :cond_10

    .line 842
    return-void

    .line 844
    :cond_10
    invoke-virtual {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    .line 845
    if-eqz p1, :cond_23

    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mDeactivateRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1f

    goto :goto_23

    .line 849
    :cond_1f
    invoke-interface {p1}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 850
    return-void

    .line 846
    :cond_23
    :goto_23
    const-string p1, "RemoteInputConnectionImpl"

    const-string v0, "finishComposingTextFromImm on inactive InputConnection"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    return-void
.end method

.method private synthetic blacklist lambda$forgetCancellationSignal$3(Landroid/os/IBinder;)V
    .registers 3

    .line 443
    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mBeamer:Landroid/os/CancellationSignalBeamer$Receiver;

    invoke-virtual {v0, p1}, Landroid/os/CancellationSignalBeamer$Receiver;->forget(Landroid/os/IBinder;)V

    .line 444
    return-void
.end method

.method private synthetic blacklist lambda$getCursorCapsMode$13(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)Ljava/lang/Integer;
    .registers 5

    .line 606
    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->checkSessionId(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result p1

    const/4 v0, 0x0

    .line 607
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 606
    if-nez p1, :cond_c

    .line 607
    return-object v0

    .line 609
    :cond_c
    invoke-virtual {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    .line 610
    if-eqz p1, :cond_24

    iget-object v1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mDeactivateRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1b

    goto :goto_24

    .line 614
    :cond_1b
    invoke-interface {p1, p2}, Landroid/view/inputmethod/InputConnection;->getCursorCapsMode(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 611
    :cond_24
    :goto_24
    const-string p1, "RemoteInputConnectionImpl"

    const-string p2, "getCursorCapsMode on inactive InputConnection"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    return-object v0
.end method

.method static synthetic blacklist lambda$getCursorCapsMode$14(ILjava/lang/Integer;)[B
    .registers 2

    .line 615
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/internal/inputmethod/InputConnectionProtoDumper;->buildGetCursorCapsModeProto(II)[B

    move-result-object p0

    return-object p0
.end method

.method private synthetic blacklist lambda$getExtractedText$15(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .registers 6

    .line 623
    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->checkSessionId(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_8

    .line 624
    return-object v0

    .line 626
    :cond_8
    invoke-virtual {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    .line 627
    if-eqz p1, :cond_1c

    iget-object v1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mDeactivateRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_1c

    .line 631
    :cond_17
    invoke-interface {p1, p2, p3}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object p1

    return-object p1

    .line 628
    :cond_1c
    :goto_1c
    const-string p1, "RemoteInputConnectionImpl"

    const-string p2, "getExtractedText on inactive InputConnection"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    return-object v0
.end method

.method static synthetic blacklist lambda$getExtractedText$16(Landroid/view/inputmethod/ExtractedTextRequest;ILandroid/view/inputmethod/ExtractedText;)[B
    .registers 3

    .line 632
    invoke-static {p0, p1, p2}, Lcom/android/internal/inputmethod/InputConnectionProtoDumper;->buildGetExtractedTextProto(Landroid/view/inputmethod/ExtractedTextRequest;ILandroid/view/inputmethod/ExtractedText;)[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic blacklist lambda$getSelectedText$10(ILjava/lang/CharSequence;)[B
    .registers 2

    .line 570
    invoke-static {p0, p1}, Lcom/android/internal/inputmethod/InputConnectionProtoDumper;->buildGetSelectedTextProto(ILjava/lang/CharSequence;)[B

    move-result-object p0

    return-object p0
.end method

.method private synthetic blacklist lambda$getSelectedText$9(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)Ljava/lang/CharSequence;
    .registers 5

    .line 556
    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->checkSessionId(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_8

    .line 557
    return-object v0

    .line 559
    :cond_8
    invoke-virtual {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    .line 560
    if-eqz p1, :cond_1e

    iget-object v1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mDeactivateRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_1e

    .line 565
    :cond_17
    :try_start_17
    invoke-interface {p1, p2}, Landroid/view/inputmethod/InputConnection;->getSelectedText(I)Ljava/lang/CharSequence;

    move-result-object p1
    :try_end_1b
    .catch Ljava/lang/AbstractMethodError; {:try_start_17 .. :try_end_1b} :catch_1c

    return-object p1

    .line 566
    :catch_1c
    move-exception p1

    .line 568
    return-object v0

    .line 561
    :cond_1e
    :goto_1e
    const-string p1, "RemoteInputConnectionImpl"

    const-string p2, "getSelectedText on inactive InputConnection"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    return-object v0
.end method

.method private synthetic blacklist lambda$getSurroundingText$11(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;III)Landroid/view/inputmethod/SurroundingText;
    .registers 8

    .line 578
    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->checkSessionId(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_8

    .line 579
    return-object v0

    .line 581
    :cond_8
    invoke-virtual {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    .line 582
    const-string v1, "RemoteInputConnectionImpl"

    if-eqz p1, :cond_50

    iget-object v2, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mDeactivateRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_19

    goto :goto_50

    .line 586
    :cond_19
    if-gez p2, :cond_32

    .line 587
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Returning null to getSurroundingText due to an invalid beforeLength="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    return-object v0

    .line 591
    :cond_32
    if-gez p3, :cond_4b

    .line 592
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Returning null to getSurroundingText due to an invalid afterLength="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    return-object v0

    .line 596
    :cond_4b
    invoke-interface {p1, p2, p3, p4}, Landroid/view/inputmethod/InputConnection;->getSurroundingText(III)Landroid/view/inputmethod/SurroundingText;

    move-result-object p1

    return-object p1

    .line 583
    :cond_50
    :goto_50
    const-string p1, "getSurroundingText on inactive InputConnection"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    return-object v0
.end method

.method static synthetic blacklist lambda$getSurroundingText$12(IIILandroid/view/inputmethod/SurroundingText;)[B
    .registers 4

    .line 597
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/inputmethod/InputConnectionProtoDumper;->buildGetSurroundingTextProto(IIILandroid/view/inputmethod/SurroundingText;)[B

    move-result-object p0

    return-object p0
.end method

.method private synthetic blacklist lambda$getTextAfterCursor$5(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)Ljava/lang/CharSequence;
    .registers 7

    .line 512
    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->checkSessionId(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_8

    .line 513
    return-object v0

    .line 515
    :cond_8
    invoke-virtual {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    .line 516
    const-string v1, "RemoteInputConnectionImpl"

    if-eqz p1, :cond_37

    iget-object v2, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mDeactivateRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_19

    goto :goto_37

    .line 520
    :cond_19
    if-gez p2, :cond_32

    .line 521
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Returning null to getTextAfterCursor due to an invalid length="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    return-object v0

    .line 525
    :cond_32
    invoke-interface {p1, p2, p3}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    .line 517
    :cond_37
    :goto_37
    const-string p1, "getTextAfterCursor on inactive InputConnection"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    return-object v0
.end method

.method static synthetic blacklist lambda$getTextAfterCursor$6(IILjava/lang/CharSequence;)[B
    .registers 3

    .line 526
    invoke-static {p0, p1, p2}, Lcom/android/internal/inputmethod/InputConnectionProtoDumper;->buildGetTextAfterCursorProto(IILjava/lang/CharSequence;)[B

    move-result-object p0

    return-object p0
.end method

.method private synthetic blacklist lambda$getTextBeforeCursor$7(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)Ljava/lang/CharSequence;
    .registers 7

    .line 534
    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->checkSessionId(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_8

    .line 535
    return-object v0

    .line 537
    :cond_8
    invoke-virtual {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    .line 538
    const-string v1, "RemoteInputConnectionImpl"

    if-eqz p1, :cond_37

    iget-object v2, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mDeactivateRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_19

    goto :goto_37

    .line 542
    :cond_19
    if-gez p2, :cond_32

    .line 543
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Returning null to getTextBeforeCursor due to an invalid length="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    return-object v0

    .line 547
    :cond_32
    invoke-interface {p1, p2, p3}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    .line 539
    :cond_37
    :goto_37
    const-string p1, "getTextBeforeCursor on inactive InputConnection"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    return-object v0
.end method

.method static synthetic blacklist lambda$getTextBeforeCursor$8(IILjava/lang/CharSequence;)[B
    .registers 3

    .line 548
    invoke-static {p0, p1, p2}, Lcom/android/internal/inputmethod/InputConnectionProtoDumper;->buildGetTextBeforeCursorProto(IILjava/lang/CharSequence;)[B

    move-result-object p0

    return-object p0
.end method

.method private synthetic blacklist lambda$performContextMenuAction$23(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V
    .registers 4

    .line 741
    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->checkSessionId(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 742
    return-void

    .line 744
    :cond_7
    invoke-virtual {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    .line 745
    if-eqz p1, :cond_1a

    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mDeactivateRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_1a

    .line 749
    :cond_16
    invoke-interface {p1, p2}, Landroid/view/inputmethod/InputConnection;->performContextMenuAction(I)Z

    .line 750
    return-void

    .line 746
    :cond_1a
    :goto_1a
    const-string p1, "RemoteInputConnectionImpl"

    const-string/jumbo p2, "performContextMenuAction on inactive InputConnection"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    return-void
.end method

.method private synthetic blacklist lambda$performEditorAction$22(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V
    .registers 4

    .line 725
    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->checkSessionId(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 726
    return-void

    .line 728
    :cond_7
    invoke-virtual {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    .line 729
    if-eqz p1, :cond_1a

    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mDeactivateRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_1a

    .line 733
    :cond_16
    invoke-interface {p1, p2}, Landroid/view/inputmethod/InputConnection;->performEditorAction(I)Z

    .line 734
    return-void

    .line 730
    :cond_1a
    :goto_1a
    const-string p1, "RemoteInputConnectionImpl"

    const-string/jumbo p2, "performEditorAction on inactive InputConnection"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    return-void
.end method

.method static synthetic blacklist lambda$performHandwritingGesture$38(Landroid/os/ResultReceiver;I)V
    .registers 3

    .line 1057
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void
.end method

.method private synthetic blacklist lambda$performHandwritingGesture$39(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/os/ResultReceiver;Landroid/view/inputmethod/HandwritingGesture;)V
    .registers 7

    .line 1034
    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->checkSessionId(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result p1

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-nez p1, :cond_e

    .line 1035
    if-eqz p2, :cond_d

    .line 1036
    invoke-virtual {p2, v0, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 1039
    :cond_d
    return-void

    .line 1041
    :cond_e
    invoke-virtual {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    .line 1042
    if-eqz p1, :cond_34

    iget-object v2, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mDeactivateRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_1d

    goto :goto_34

    .line 1053
    :cond_1d
    nop

    .line 1055
    if-eqz p2, :cond_26

    new-instance v0, Landroid/app/PendingIntent$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/app/PendingIntent$$ExternalSyntheticLambda0;-><init>()V

    goto :goto_27

    :cond_26
    move-object v0, v1

    .line 1056
    :goto_27
    if-eqz p2, :cond_2f

    .line 1057
    new-instance v1, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda27;

    invoke-direct {v1, p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda27;-><init>(Landroid/os/ResultReceiver;)V

    goto :goto_30

    .line 1058
    :cond_2f
    nop

    .line 1053
    :goto_30
    invoke-interface {p1, p3, v0, v1}, Landroid/view/inputmethod/InputConnection;->performHandwritingGesture(Landroid/view/inputmethod/HandwritingGesture;Ljava/util/concurrent/Executor;Ljava/util/function/IntConsumer;)V

    .line 1059
    return-void

    .line 1043
    :cond_34
    :goto_34
    const-string p1, "RemoteInputConnectionImpl"

    const-string/jumbo p3, "performHandwritingGesture on inactive InputConnection"

    invoke-static {p1, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    if-eqz p2, :cond_41

    .line 1045
    invoke-virtual {p2, v0, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 1048
    :cond_41
    return-void
.end method

.method private synthetic blacklist lambda$performPrivateCommand$37(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    .line 1000
    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->checkSessionId(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 1001
    return-void

    .line 1003
    :cond_7
    invoke-virtual {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    .line 1004
    if-eqz p1, :cond_1a

    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mDeactivateRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_1a

    .line 1008
    :cond_16
    invoke-interface {p1, p2, p3}, Landroid/view/inputmethod/InputConnection;->performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 1009
    return-void

    .line 1005
    :cond_1a
    :goto_1a
    const-string p1, "RemoteInputConnectionImpl"

    const-string/jumbo p2, "performPrivateCommand on inactive InputConnection"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    return-void
.end method

.method private synthetic blacklist lambda$performSpellCheck$36(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)V
    .registers 3

    .line 983
    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->checkSessionId(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 984
    return-void

    .line 986
    :cond_7
    invoke-virtual {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    .line 987
    if-eqz p1, :cond_1a

    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mDeactivateRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_1a

    .line 991
    :cond_16
    invoke-interface {p1}, Landroid/view/inputmethod/InputConnection;->performSpellCheck()Z

    .line 992
    return-void

    .line 988
    :cond_1a
    :goto_1a
    const-string p1, "RemoteInputConnectionImpl"

    const-string/jumbo v0, "performSpellCheck on inactive InputConnection"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    return-void
.end method

.method private synthetic blacklist lambda$previewHandwritingGesture$40(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/os/CancellationSignal;Landroid/view/inputmethod/PreviewableHandwritingGesture;)V
    .registers 5

    .line 1077
    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->checkSessionId(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result p1

    if-eqz p1, :cond_2b

    if-eqz p2, :cond_f

    .line 1078
    invoke-virtual {p2}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result p1

    if-eqz p1, :cond_f

    goto :goto_2b

    .line 1081
    :cond_f
    invoke-virtual {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    .line 1082
    if-eqz p1, :cond_22

    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mDeactivateRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1e

    goto :goto_22

    .line 1087
    :cond_1e
    invoke-interface {p1, p3, p2}, Landroid/view/inputmethod/InputConnection;->previewHandwritingGesture(Landroid/view/inputmethod/PreviewableHandwritingGesture;Landroid/os/CancellationSignal;)Z

    .line 1088
    return-void

    .line 1083
    :cond_22
    :goto_22
    const-string p1, "RemoteInputConnectionImpl"

    const-string/jumbo p2, "previewHandwritingGesture on inactive InputConnection"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    return-void

    .line 1079
    :cond_2b
    :goto_2b
    return-void
.end method

.method private synthetic blacklist lambda$replaceText$47(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IILjava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)V
    .registers 13

    .line 1255
    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->checkSessionId(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 1256
    return-void

    .line 1258
    :cond_7
    invoke-virtual {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1259
    if-eqz v0, :cond_1f

    iget-object p1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mDeactivateRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_16

    goto :goto_1f

    .line 1263
    :cond_16
    move v1, p2

    move v2, p3

    move-object v3, p4

    move v4, p5

    move-object v5, p6

    invoke-interface/range {v0 .. v5}, Landroid/view/inputmethod/InputConnection;->replaceText(IILjava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)Z

    .line 1264
    return-void

    .line 1260
    :cond_1f
    :goto_1f
    const-string p1, "RemoteInputConnectionImpl"

    const-string/jumbo p2, "replaceText on inactive InputConnection"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    return-void
.end method

.method private synthetic blacklist lambda$requestCursorUpdates$41(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)Ljava/lang/Boolean;
    .registers 5

    .line 1104
    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->checkSessionId(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_c

    .line 1105
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 1107
    :cond_c
    invoke-direct {p0, p2, v0, p3}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->requestCursorUpdatesInternal(III)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private synthetic blacklist lambda$requestCursorUpdatesWithFilter$42(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;III)Ljava/lang/Boolean;
    .registers 5

    .line 1118
    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->checkSessionId(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result p1

    if-nez p1, :cond_c

    .line 1119
    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 1121
    :cond_c
    invoke-direct {p0, p2, p3, p4}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->requestCursorUpdatesInternal(III)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method static synthetic blacklist lambda$requestTextBoundsInfo$43(Landroid/os/ResultReceiver;Landroid/view/inputmethod/TextBoundsInfoResult;)V
    .registers 3

    .line 1176
    invoke-virtual {p1}, Landroid/view/inputmethod/TextBoundsInfoResult;->getResultCode()I

    move-result v0

    .line 1177
    nop

    .line 1178
    invoke-virtual {p1}, Landroid/view/inputmethod/TextBoundsInfoResult;->getTextBoundsInfo()Landroid/view/inputmethod/TextBoundsInfo;

    move-result-object p1

    .line 1179
    nop

    .line 1180
    if-nez p1, :cond_e

    const/4 p1, 0x0

    goto :goto_12

    :cond_e
    invoke-virtual {p1}, Landroid/view/inputmethod/TextBoundsInfo;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    .line 1179
    :goto_12
    invoke-virtual {p0, v0, p1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 1181
    return-void
.end method

.method private synthetic blacklist lambda$requestTextBoundsInfo$44(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/os/ResultReceiver;Landroid/graphics/RectF;)V
    .registers 7

    .line 1161
    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->checkSessionId(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x3

    if-nez p1, :cond_c

    .line 1162
    invoke-virtual {p2, v1, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 1163
    return-void

    .line 1165
    :cond_c
    invoke-virtual {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    .line 1166
    if-eqz p1, :cond_29

    iget-object v2, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mDeactivateRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_1b

    goto :goto_29

    .line 1172
    :cond_1b
    new-instance v0, Landroid/app/PendingIntent$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/app/PendingIntent$$ExternalSyntheticLambda0;-><init>()V

    new-instance v1, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda42;

    invoke-direct {v1, p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda42;-><init>(Landroid/os/ResultReceiver;)V

    invoke-interface {p1, p3, v0, v1}, Landroid/view/inputmethod/InputConnection;->requestTextBoundsInfo(Landroid/graphics/RectF;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 1182
    return-void

    .line 1167
    :cond_29
    :goto_29
    const-string p1, "RemoteInputConnectionImpl"

    const-string/jumbo p3, "requestTextBoundsInfo on inactive InputConnection"

    invoke-static {p1, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    invoke-virtual {p2, v1, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 1169
    return-void
.end method

.method private synthetic blacklist lambda$scheduleInvalidateInput$0(ZI)V
    .registers 12

    .line 300
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->isFinished()Z

    move-result v1
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_a1

    if-eqz v1, :cond_d

    .line 366
    iget-object p1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mHasPendingInvalidation:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 303
    return-void

    .line 305
    :cond_d
    :try_start_d
    invoke-virtual {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1
    :try_end_11
    .catchall {:try_start_d .. :try_end_11} :catchall_a1

    .line 306
    if-nez v1, :cond_19

    .line 366
    iget-object p1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mHasPendingInvalidation:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 309
    return-void

    .line 311
    :cond_19
    :try_start_19
    invoke-direct {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getServedView()Landroid/view/View;

    move-result-object v2
    :try_end_1d
    .catchall {:try_start_19 .. :try_end_1d} :catchall_a1

    .line 312
    if-nez v2, :cond_25

    .line 366
    iget-object p1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mHasPendingInvalidation:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 315
    return-void

    .line 318
    :cond_25
    :try_start_25
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 320
    nop

    .line 321
    invoke-static {v3}, Landroid/view/inputmethod/RemoteInputConnectionImpl$KnownAlwaysTrueEndBatchEditCache;->contains(Ljava/lang/Class;)Z

    move-result v4

    .line 323
    if-nez v4, :cond_72

    .line 325
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    move-result v5

    .line 326
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 327
    if-eqz v5, :cond_72

    .line 329
    move v5, v0

    .line 331
    :cond_3a
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    move-result v6

    if-nez v6, :cond_41

    .line 332
    goto :goto_72

    .line 334
    :cond_41
    const/4 v6, 0x1

    add-int/2addr v5, v6

    .line 335
    const/16 v7, 0x10

    if-le v5, v7, :cond_3a

    .line 336
    const-string v4, "RemoteInputConnectionImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Class;->getTypeName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "#endBatchEdit() still returns true even after retrying "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " times.  Falling back to InputMethodManager#restartInput(View)"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    nop

    .line 341
    invoke-static {v3}, Landroid/view/inputmethod/RemoteInputConnectionImpl$KnownAlwaysTrueEndBatchEditCache;->add(Ljava/lang/Class;)V

    .line 342
    move v4, v6

    .line 347
    :cond_72
    :goto_72
    if-eqz p1, :cond_7f

    .line 352
    iget-object p1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mParentInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1, v2}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V
    :try_end_79
    .catchall {:try_start_25 .. :try_end_79} :catchall_a1

    .line 366
    iget-object p1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mHasPendingInvalidation:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 353
    return-void

    .line 356
    :cond_7f
    if-nez v4, :cond_95

    .line 357
    :try_start_81
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->takeSnapshot()Landroid/view/inputmethod/TextSnapshot;

    move-result-object p1

    .line 358
    if-eqz p1, :cond_95

    iget-object v1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mParentInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1, p0, p1, p2}, Landroid/view/inputmethod/InputMethodManager;->doInvalidateInput(Landroid/view/inputmethod/RemoteInputConnectionImpl;Landroid/view/inputmethod/TextSnapshot;I)Z

    move-result p1
    :try_end_8d
    .catchall {:try_start_81 .. :try_end_8d} :catchall_a1

    if-eqz p1, :cond_95

    .line 366
    iget-object p1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mHasPendingInvalidation:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 360
    return-void

    .line 364
    :cond_95
    :try_start_95
    iget-object p1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mParentInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1, v2}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V
    :try_end_9a
    .catchall {:try_start_95 .. :try_end_9a} :catchall_a1

    .line 366
    iget-object p1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mHasPendingInvalidation:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 367
    nop

    .line 368
    return-void

    .line 366
    :catchall_a1
    move-exception p1

    iget-object p2, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mHasPendingInvalidation:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 367
    throw p1
.end method

.method private synthetic blacklist lambda$sendKeyEvent$30(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/KeyEvent;)V
    .registers 4

    .line 881
    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->checkSessionId(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 882
    return-void

    .line 884
    :cond_7
    invoke-virtual {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    .line 885
    if-eqz p1, :cond_1a

    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mDeactivateRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_1a

    .line 889
    :cond_16
    invoke-interface {p1, p2}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 890
    return-void

    .line 886
    :cond_1a
    :goto_1a
    const-string p1, "RemoteInputConnectionImpl"

    const-string/jumbo p2, "sendKeyEvent on inactive InputConnection"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    return-void
.end method

.method private synthetic blacklist lambda$setComposingRegion$24(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V
    .registers 5

    .line 757
    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->checkSessionId(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 758
    return-void

    .line 760
    :cond_7
    invoke-virtual {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    .line 761
    if-eqz p1, :cond_1c

    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mDeactivateRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_1c

    .line 766
    :cond_16
    :try_start_16
    invoke-interface {p1, p2, p3}, Landroid/view/inputmethod/InputConnection;->setComposingRegion(II)Z
    :try_end_19
    .catch Ljava/lang/AbstractMethodError; {:try_start_16 .. :try_end_19} :catch_1a

    .line 769
    goto :goto_1b

    .line 767
    :catch_1a
    move-exception p1

    .line 770
    :goto_1b
    return-void

    .line 762
    :cond_1c
    :goto_1c
    const-string p1, "RemoteInputConnectionImpl"

    const-string/jumbo p2, "setComposingRegion on inactive InputConnection"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    return-void
.end method

.method private synthetic blacklist lambda$setComposingRegionWithTextAttribute$25(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IILandroid/view/inputmethod/TextAttribute;)V
    .registers 6

    .line 778
    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->checkSessionId(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 779
    return-void

    .line 781
    :cond_7
    invoke-virtual {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    .line 782
    if-eqz p1, :cond_1a

    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mDeactivateRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_1a

    .line 786
    :cond_16
    invoke-interface {p1, p2, p3, p4}, Landroid/view/inputmethod/InputConnection;->setComposingRegion(IILandroid/view/inputmethod/TextAttribute;)Z

    .line 787
    return-void

    .line 783
    :cond_1a
    :goto_1a
    const-string p1, "RemoteInputConnectionImpl"

    const-string/jumbo p2, "setComposingRegion on inactive InputConnection"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    return-void
.end method

.method private synthetic blacklist lambda$setComposingText$26(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;I)V
    .registers 5

    .line 795
    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->checkSessionId(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 796
    return-void

    .line 798
    :cond_7
    invoke-virtual {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    .line 799
    if-eqz p1, :cond_1a

    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mDeactivateRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_1a

    .line 803
    :cond_16
    invoke-interface {p1, p2, p3}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 804
    return-void

    .line 800
    :cond_1a
    :goto_1a
    const-string p1, "RemoteInputConnectionImpl"

    const-string/jumbo p2, "setComposingText on inactive InputConnection"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    return-void
.end method

.method private synthetic blacklist lambda$setComposingTextWithTextAttribute$27(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)V
    .registers 6

    .line 812
    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->checkSessionId(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 813
    return-void

    .line 815
    :cond_7
    invoke-virtual {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    .line 816
    if-eqz p1, :cond_1a

    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mDeactivateRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_1a

    .line 820
    :cond_16
    invoke-interface {p1, p2, p3, p4}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)Z

    .line 821
    return-void

    .line 817
    :cond_1a
    :goto_1a
    const-string p1, "RemoteInputConnectionImpl"

    const-string/jumbo p2, "setComposingText on inactive InputConnection"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    return-void
.end method

.method private synthetic blacklist lambda$setImeConsumesInput$46(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Z)V
    .registers 4

    .line 1231
    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->checkSessionId(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 1232
    return-void

    .line 1234
    :cond_7
    invoke-virtual {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    .line 1235
    if-eqz p1, :cond_1a

    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mDeactivateRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_1a

    .line 1239
    :cond_16
    invoke-interface {p1, p2}, Landroid/view/inputmethod/InputConnection;->setImeConsumesInput(Z)Z

    .line 1240
    return-void

    .line 1236
    :cond_1a
    :goto_1a
    const-string p1, "RemoteInputConnectionImpl"

    const-string/jumbo p2, "setImeConsumesInput on inactive InputConnection"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    return-void
.end method

.method private synthetic blacklist lambda$setSelection$21(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V
    .registers 5

    .line 709
    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->checkSessionId(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 710
    return-void

    .line 712
    :cond_7
    invoke-virtual {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    .line 713
    if-eqz p1, :cond_1a

    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mDeactivateRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_1a

    .line 717
    :cond_16
    invoke-interface {p1, p2, p3}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    .line 718
    return-void

    .line 714
    :cond_1a
    :goto_1a
    const-string p1, "RemoteInputConnectionImpl"

    const-string/jumbo p2, "setSelection on inactive InputConnection"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    return-void
.end method

.method private blacklist requestCursorUpdatesInternal(III)Z
    .registers 8

    .line 1129
    invoke-virtual {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1130
    const/4 v1, 0x0

    if-eqz v0, :cond_5e

    iget-object v2, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mDeactivateRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_10

    goto :goto_5e

    .line 1134
    :cond_10
    iget-object v2, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mParentInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->getDisplayId()I

    move-result v2

    if-eq v2, p3, :cond_19

    .line 1136
    return v1

    .line 1138
    :cond_19
    and-int/lit8 p3, p1, 0x1

    const/4 v2, 0x1

    if-eqz p3, :cond_20

    move p3, v2

    goto :goto_21

    :cond_20
    move p3, v1

    .line 1140
    :goto_21
    and-int/lit8 v3, p1, 0x2

    if-eqz v3, :cond_27

    move v3, v2

    goto :goto_28

    :cond_27
    move v3, v1

    .line 1142
    :goto_28
    nop

    .line 1144
    :try_start_29
    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->requestCursorUpdates(II)Z

    move-result p1
    :try_end_2d
    .catch Ljava/lang/AbstractMethodError; {:try_start_29 .. :try_end_2d} :catch_51
    .catchall {:try_start_29 .. :try_end_2d} :catchall_45

    .line 1145
    nop

    .line 1150
    iget-object p2, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mHasPendingImmediateCursorAnchorInfoUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz p1, :cond_36

    if-eqz p3, :cond_36

    move p3, v2

    goto :goto_37

    :cond_36
    move p3, v1

    :goto_37
    invoke-virtual {p2, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1151
    iget-object p2, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mIsCursorAnchorInfoMonitoring:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz p1, :cond_41

    if-eqz v3, :cond_41

    move v1, v2

    :cond_41
    invoke-virtual {p2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1145
    return p1

    .line 1150
    :catchall_45
    move-exception p1

    iget-object p2, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mHasPendingImmediateCursorAnchorInfoUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1151
    iget-object p2, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mIsCursorAnchorInfoMonitoring:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1152
    throw p1

    .line 1146
    :catch_51
    move-exception p1

    .line 1148
    nop

    .line 1150
    iget-object p1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mHasPendingImmediateCursorAnchorInfoUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1151
    iget-object p1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mIsCursorAnchorInfoMonitoring:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1148
    return v1

    .line 1131
    :cond_5e
    :goto_5e
    const-string p1, "RemoteInputConnectionImpl"

    const-string/jumbo p2, "requestCursorUpdates on inactive InputConnection"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    return v1
.end method

.method private static blacklist useImeTracing()Z
    .registers 1

    .line 1561
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/ImeTracing;->isEnabled()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public blacklist asIRemoteAccessibilityInputConnection()Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;
    .registers 2

    .line 1437
    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mAccessibilityInputConnection:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    return-object v0
.end method

.method public blacklist asIRemoteComputerControlInputConnection()Lcom/android/internal/inputmethod/IRemoteComputerControlInputConnection;
    .registers 2

    .line 1501
    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mComputerControlInputConnection:Lcom/android/internal/inputmethod/IRemoteComputerControlInputConnection;

    return-object v0
.end method

.method public blacklist beginBatchEdit(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)V
    .registers 3

    .line 950
    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda18;

    invoke-direct {v0, p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda18;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)V

    const-string p1, "beginBatchEdit"

    invoke-direct {p0, p1, v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 961
    return-void
.end method

.method public blacklist cancelCancellationSignal(Landroid/os/IBinder;)V
    .registers 3

    .line 429
    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mBeamer:Landroid/os/CancellationSignalBeamer$Receiver;

    if-nez v0, :cond_5

    .line 430
    return-void

    .line 432
    :cond_5
    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda45;

    invoke-direct {v0, p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda45;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;Landroid/os/IBinder;)V

    invoke-direct {p0, v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatch(Ljava/lang/Runnable;)V

    .line 435
    return-void
.end method

.method public blacklist clearMetaKeyStates(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V
    .registers 4

    .line 896
    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0, p1, p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda14;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V

    const-string p1, "clearMetaKeyStates"

    invoke-direct {p0, p1, v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 907
    return-void
.end method

.method public blacklist commitCompletion(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/inputmethod/CompletionInfo;)V
    .registers 4

    .line 672
    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0, p1, p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda10;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/inputmethod/CompletionInfo;)V

    const-string p1, "commitCompletion"

    invoke-direct {p0, p1, v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 683
    return-void
.end method

.method public blacklist commitContent(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;Lcom/android/internal/infra/AndroidFuture;)V
    .registers 13

    .line 1190
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1191
    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda4;

    move-object v1, p0

    move-object v4, p1

    move-object v2, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda4;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;Landroid/view/inputmethod/InputContentInfo;ILcom/android/internal/inputmethod/InputConnectionCommandHeader;ILandroid/os/Bundle;)V

    const-string p1, "commitContent"

    invoke-direct {p0, p1, p5, v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;Ljava/util/function/Supplier;)V

    .line 1225
    return-void
.end method

.method public blacklist commitCorrection(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/inputmethod/CorrectionInfo;)V
    .registers 4

    .line 688
    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0, p1, p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda16;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/inputmethod/CorrectionInfo;)V

    const-string p1, "commitCorrection"

    invoke-direct {p0, p1, v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 703
    return-void
.end method

.method public blacklist commitText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;I)V
    .registers 5

    .line 639
    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda46;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda46;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;I)V

    const-string p1, "commitText"

    invoke-direct {p0, p1, v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 650
    return-void
.end method

.method public blacklist commitTextWithTextAttribute(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)V
    .registers 11

    .line 656
    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda26;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda26;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)V

    const-string p1, "commitTextWithTextAttribute"

    invoke-direct {p0, p1, v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 667
    return-void
.end method

.method public blacklist deactivate()V
    .registers 3

    .line 379
    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mDeactivateRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 382
    return-void

    .line 384
    :cond_a
    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda17;

    invoke-direct {v0, p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda17;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;)V

    invoke-direct {p0, v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatch(Ljava/lang/Runnable;)V

    .line 424
    return-void
.end method

.method public blacklist deleteSurroundingText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V
    .registers 5

    .line 913
    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda44;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda44;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V

    const-string p1, "deleteSurroundingText"

    invoke-direct {p0, p1, v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 924
    return-void
.end method

.method public blacklist deleteSurroundingTextInCodePoints(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V
    .registers 5

    .line 930
    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda21;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda21;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V

    const-string p1, "deleteSurroundingTextInCodePoints"

    invoke-direct {p0, p1, v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 945
    return-void
.end method

.method public blacklist dispatchReportFullscreenMode(Z)V
    .registers 3

    .line 484
    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda50;

    invoke-direct {v0, p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda50;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;Z)V

    invoke-direct {p0, v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatch(Ljava/lang/Runnable;)V

    .line 491
    return-void
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 6

    .line 464
    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mInputConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputConnection;

    .line 470
    instance-of v1, v0, Landroid/view/inputmethod/DumpableInputConnection;

    if-eqz v1, :cond_19

    iget-object v1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mLooper:Landroid/os/Looper;

    invoke-virtual {v1}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 471
    check-cast v0, Landroid/view/inputmethod/DumpableInputConnection;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/inputmethod/DumpableInputConnection;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 473
    :cond_19
    return-void
.end method

.method public blacklist endBatchEdit(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)V
    .registers 3

    .line 966
    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda13;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)V

    const-string p1, "endBatchEdit"

    invoke-direct {p0, p1, v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 977
    return-void
.end method

.method public blacklist finishComposingText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)V
    .registers 3

    .line 856
    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda20;

    invoke-direct {v0, p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda20;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)V

    const-string p1, "finishComposingText"

    invoke-direct {p0, p1, v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 875
    return-void
.end method

.method public blacklist finishComposingTextFromImm()V
    .registers 3

    .line 831
    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mCurrentSessionId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 832
    new-instance v1, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0, v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda12;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;I)V

    const-string v0, "finishComposingTextFromImm"

    invoke-direct {p0, v0, v1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 851
    return-void
.end method

.method public blacklist forgetCancellationSignal(Landroid/os/IBinder;)V
    .registers 3

    .line 439
    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mBeamer:Landroid/os/CancellationSignalBeamer$Receiver;

    if-nez v0, :cond_5

    .line 440
    return-void

    .line 442
    :cond_5
    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda38;

    invoke-direct {v0, p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda38;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;Landroid/os/IBinder;)V

    invoke-direct {p0, v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatch(Ljava/lang/Runnable;)V

    .line 445
    return-void
.end method

.method public blacklist getCursorCapsMode(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;ILcom/android/internal/infra/AndroidFuture;)V
    .registers 5

    .line 605
    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1, p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda2;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V

    .line 615
    invoke-static {}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->useImeTracing()Z

    move-result p1

    if-eqz p1, :cond_11

    new-instance p1, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda3;

    invoke-direct {p1, p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda3;-><init>(I)V

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    .line 605
    :goto_12
    const-string p2, "getCursorCapsMode"

    invoke-direct {p0, p2, p3, v0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;Ljava/util/function/Supplier;Ljava/util/function/Function;)V

    .line 616
    return-void
.end method

.method public blacklist getExtractedText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/inputmethod/ExtractedTextRequest;ILcom/android/internal/infra/AndroidFuture;)V
    .registers 6

    .line 622
    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda22;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda22;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/inputmethod/ExtractedTextRequest;I)V

    .line 632
    invoke-static {}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->useImeTracing()Z

    move-result p1

    if-eqz p1, :cond_11

    new-instance p1, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda23;

    invoke-direct {p1, p2, p3}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda23;-><init>(Landroid/view/inputmethod/ExtractedTextRequest;I)V

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    .line 622
    :goto_12
    const-string p2, "getExtractedText"

    invoke-direct {p0, p2, p4, v0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;Ljava/util/function/Supplier;Ljava/util/function/Function;)V

    .line 633
    return-void
.end method

.method public blacklist getInputConnection()Landroid/view/inputmethod/InputConnection;
    .registers 2

    .line 207
    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mInputConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputConnection;

    return-object v0
.end method

.method public blacklist getSelectedText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;ILcom/android/internal/infra/AndroidFuture;)V
    .registers 5

    .line 555
    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda31;

    invoke-direct {v0, p0, p1, p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda31;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V

    .line 570
    invoke-static {}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->useImeTracing()Z

    move-result p1

    if-eqz p1, :cond_11

    new-instance p1, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda32;

    invoke-direct {p1, p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda32;-><init>(I)V

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    .line 555
    :goto_12
    const-string p2, "getSelectedText"

    invoke-direct {p0, p2, p3, v0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;Ljava/util/function/Supplier;Ljava/util/function/Function;)V

    .line 571
    return-void
.end method

.method public blacklist getSurroundingText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IIILcom/android/internal/infra/AndroidFuture;)V
    .registers 12

    .line 577
    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda7;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda7;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;III)V

    .line 597
    invoke-static {}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->useImeTracing()Z

    move-result p1

    if-eqz p1, :cond_16

    new-instance p1, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda8;

    invoke-direct {p1, v3, v4, v5}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda8;-><init>(III)V

    goto :goto_17

    .line 598
    :cond_16
    const/4 p1, 0x0

    .line 577
    :goto_17
    const-string p2, "getSurroundingText"

    invoke-direct {p0, p2, p5, v0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;Ljava/util/function/Supplier;Ljava/util/function/Function;)V

    .line 599
    return-void
.end method

.method public blacklist getTextAfterCursor(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IILcom/android/internal/infra/AndroidFuture;)V
    .registers 6

    .line 511
    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda24;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda24;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V

    .line 526
    invoke-static {}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->useImeTracing()Z

    move-result p1

    if-eqz p1, :cond_11

    new-instance p1, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda25;

    invoke-direct {p1, p2, p3}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda25;-><init>(II)V

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    .line 511
    :goto_12
    const-string p2, "getTextAfterCursor"

    invoke-direct {p0, p2, p4, v0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;Ljava/util/function/Supplier;Ljava/util/function/Function;)V

    .line 527
    return-void
.end method

.method public blacklist getTextBeforeCursor(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IILcom/android/internal/infra/AndroidFuture;)V
    .registers 6

    .line 533
    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda34;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda34;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V

    .line 548
    invoke-static {}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->useImeTracing()Z

    move-result p1

    if-eqz p1, :cond_11

    new-instance p1, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda35;

    invoke-direct {p1, p2, p3}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda35;-><init>(II)V

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    .line 533
    :goto_12
    const-string p2, "getTextBeforeCursor"

    invoke-direct {p0, p2, p4, v0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;Ljava/util/function/Supplier;Ljava/util/function/Function;)V

    .line 549
    return-void
.end method

.method public blacklist hasPendingInvalidation()Z
    .registers 2

    .line 215
    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mHasPendingInvalidation:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public blacklist isAssociatedWith(Landroid/view/View;)Z
    .registers 3

    .line 240
    if-nez p1, :cond_4

    .line 241
    const/4 p1, 0x0

    return p1

    .line 243
    :cond_4
    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mServedView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, p1}, Ljava/lang/ref/WeakReference;->refersTo(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public blacklist isCursorAnchorInfoMonitoring()Z
    .registers 2

    .line 270
    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mIsCursorAnchorInfoMonitoring:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public blacklist performContextMenuAction(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V
    .registers 4

    .line 740
    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1, p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda5;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V

    const-string/jumbo p1, "performContextMenuAction"

    invoke-direct {p0, p1, v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 751
    return-void
.end method

.method public blacklist performEditorAction(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V
    .registers 4

    .line 724
    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda33;

    invoke-direct {v0, p0, p1, p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda33;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V

    const-string/jumbo p1, "performEditorAction"

    invoke-direct {p0, p1, v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 735
    return-void
.end method

.method public blacklist performHandwritingGesture(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/inputmethod/ParcelableHandwritingGesture;Landroid/os/ResultReceiver;)V
    .registers 6

    .line 1017
    invoke-virtual {p2}, Landroid/view/inputmethod/ParcelableHandwritingGesture;->get()Landroid/view/inputmethod/HandwritingGesture;

    move-result-object p2

    .line 1018
    instance-of v0, p2, Landroid/view/inputmethod/CancellableHandwritingGesture;

    if-eqz v0, :cond_2a

    .line 1020
    move-object v0, p2

    check-cast v0, Landroid/view/inputmethod/CancellableHandwritingGesture;

    .line 1022
    invoke-direct {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getCancellationSignalBeamer()Landroid/os/CancellationSignalBeamer$Receiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/CancellableHandwritingGesture;->unbeamCancellationSignal(Landroid/os/CancellationSignalBeamer$Receiver;)V

    .line 1023
    invoke-virtual {v0}, Landroid/view/inputmethod/CancellableHandwritingGesture;->getCancellationSignal()Landroid/os/CancellationSignal;

    move-result-object v1

    if-eqz v1, :cond_2a

    .line 1024
    invoke-virtual {v0}, Landroid/view/inputmethod/CancellableHandwritingGesture;->getCancellationSignal()Landroid/os/CancellationSignal;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1026
    if-eqz p3, :cond_29

    .line 1027
    const/4 p1, 0x4

    const/4 p2, 0x0

    invoke-virtual {p3, p1, p2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 1030
    :cond_29
    return-void

    .line 1033
    :cond_2a
    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda29;

    invoke-direct {v0, p0, p1, p3, p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda29;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/os/ResultReceiver;Landroid/view/inputmethod/HandwritingGesture;)V

    const-string/jumbo p1, "performHandwritingGesture"

    invoke-direct {p0, p1, v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 1060
    return-void
.end method

.method public blacklist performPrivateCommand(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    .line 999
    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda39;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda39;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/String;Landroid/os/Bundle;)V

    const-string/jumbo p1, "performPrivateCommand"

    invoke-direct {p0, p1, v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 1010
    return-void
.end method

.method public blacklist performSpellCheck(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)V
    .registers 3

    .line 982
    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda40;

    invoke-direct {v0, p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda40;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)V

    const-string/jumbo p1, "performSpellCheck"

    invoke-direct {p0, p1, v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 993
    return-void
.end method

.method public blacklist previewHandwritingGesture(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/inputmethod/ParcelableHandwritingGesture;Landroid/os/IBinder;)V
    .registers 5

    .line 1068
    if-eqz p3, :cond_b

    .line 1069
    invoke-direct {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getCancellationSignalBeamer()Landroid/os/CancellationSignalBeamer$Receiver;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/os/CancellationSignalBeamer$Receiver;->unbeam(Landroid/os/IBinder;)Landroid/os/CancellationSignal;

    move-result-object p3

    goto :goto_c

    :cond_b
    const/4 p3, 0x0

    .line 1073
    :goto_c
    nop

    .line 1074
    invoke-virtual {p2}, Landroid/view/inputmethod/ParcelableHandwritingGesture;->get()Landroid/view/inputmethod/HandwritingGesture;

    move-result-object p2

    check-cast p2, Landroid/view/inputmethod/PreviewableHandwritingGesture;

    .line 1076
    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p3, p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda0;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/os/CancellationSignal;Landroid/view/inputmethod/PreviewableHandwritingGesture;)V

    const-string/jumbo p1, "previewHandwritingGesture"

    invoke-direct {p0, p1, v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 1089
    return-void
.end method

.method public blacklist replaceText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IILjava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)V
    .registers 15

    .line 1252
    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda49;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda49;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IILjava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)V

    const-string/jumbo p1, "replaceText"

    invoke-direct {p0, p1, v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 1265
    return-void
.end method

.method public blacklist requestCursorUpdates(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IILcom/android/internal/infra/AndroidFuture;)V
    .registers 6

    .line 1103
    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda47;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda47;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V

    const-string/jumbo p1, "requestCursorUpdates"

    invoke-direct {p0, p1, p4, v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;Ljava/util/function/Supplier;)V

    .line 1110
    return-void
.end method

.method public blacklist requestCursorUpdatesWithFilter(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IIILcom/android/internal/infra/AndroidFuture;)V
    .registers 12

    .line 1117
    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda11;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda11;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;III)V

    const-string/jumbo p1, "requestCursorUpdates"

    invoke-direct {p0, p1, p5, v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;Ljava/util/function/Supplier;)V

    .line 1124
    return-void
.end method

.method public blacklist requestTextBoundsInfo(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/graphics/RectF;Landroid/os/ResultReceiver;)V
    .registers 5

    .line 1160
    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda43;

    invoke-direct {v0, p0, p1, p3, p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda43;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/os/ResultReceiver;Landroid/graphics/RectF;)V

    const-string/jumbo p1, "requestTextBoundsInfo"

    invoke-direct {p0, p1, v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 1183
    return-void
.end method

.method public blacklist resetHasPendingImmediateCursorAnchorInfoUpdate()Z
    .registers 3

    .line 260
    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mHasPendingImmediateCursorAnchorInfoUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    return v0
.end method

.method public blacklist scheduleInvalidateInput()V
    .registers 2

    .line 282
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->scheduleInvalidateInput(Z)V

    .line 283
    return-void
.end method

.method blacklist scheduleInvalidateInput(Z)V
    .registers 5

    .line 292
    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mHasPendingInvalidation:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 294
    if-eqz p1, :cond_e

    const/4 v0, -0x1

    goto :goto_14

    :cond_e
    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mCurrentSessionId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 298
    :goto_14
    iget-object v1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mH:Landroid/os/Handler;

    new-instance v2, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda15;

    invoke-direct {v2, p0, p1, v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda15;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;ZI)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 370
    :cond_1e
    return-void
.end method

.method public blacklist sendKeyEvent(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/KeyEvent;)V
    .registers 4

    .line 880
    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda41;

    invoke-direct {v0, p0, p1, p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda41;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/KeyEvent;)V

    const-string/jumbo p1, "sendKeyEvent"

    invoke-direct {p0, p1, v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 891
    return-void
.end method

.method public blacklist setComposingRegion(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V
    .registers 5

    .line 756
    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda6;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V

    const-string/jumbo p1, "setComposingRegion"

    invoke-direct {p0, p1, v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 771
    return-void
.end method

.method public blacklist setComposingRegionWithTextAttribute(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IILandroid/view/inputmethod/TextAttribute;)V
    .registers 11

    .line 777
    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda19;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda19;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IILandroid/view/inputmethod/TextAttribute;)V

    const-string/jumbo p1, "setComposingRegionWithTextAttribute"

    invoke-direct {p0, p1, v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 788
    return-void
.end method

.method public blacklist setComposingText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;I)V
    .registers 5

    .line 794
    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda28;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda28;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;I)V

    const-string/jumbo p1, "setComposingText"

    invoke-direct {p0, p1, v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 805
    return-void
.end method

.method public blacklist setComposingTextWithTextAttribute(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)V
    .registers 11

    .line 811
    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda48;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda48;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)V

    const-string/jumbo p1, "setComposingTextWithTextAttribute"

    invoke-direct {p0, p1, v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 822
    return-void
.end method

.method public blacklist setImeConsumesInput(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Z)V
    .registers 4

    .line 1230
    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda30;

    invoke-direct {v0, p0, p1, p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda30;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Z)V

    const-string/jumbo p1, "setImeConsumesInput"

    invoke-direct {p0, p1, v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 1241
    return-void
.end method

.method public blacklist setSelection(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V
    .registers 5

    .line 708
    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda9;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V

    const-string/jumbo p1, "setSelection"

    invoke-direct {p0, p1, v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 719
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoteInputConnectionImpl{connection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 450
    invoke-virtual {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mDeactivateRequested="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mDeactivateRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 451
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mServedView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mServedView:Ljava/lang/ref/WeakReference;

    .line 452
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 449
    return-object v0
.end method
