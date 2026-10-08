.class final Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;
.super Ljava/lang/Object;
.source "IInputMethodManagerGlobalInvoker.java"


# static fields
.field private static final blacklist TIMEOUT_MS:J = 0x2710L

.field private static blacklist sCurStartInputSeq:I

.field private static volatile blacklist sServiceCache:Lcom/android/internal/view/IInputMethodManager;

.field private static volatile blacklist sTrackerServiceCache:Lcom/android/internal/inputmethod/IImeTracker;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 75
    const/4 v0, 0x0

    sput-object v0, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->sServiceCache:Lcom/android/internal/view/IInputMethodManager;

    .line 78
    sput-object v0, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->sTrackerServiceCache:Lcom/android/internal/inputmethod/IImeTracker;

    .line 79
    const/4 v0, 0x0

    sput v0, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->sCurStartInputSeq:I

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist acceptStylusHandwritingDelegation(Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;I)Z
    .registers 11

    .line 545
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    .line 546
    if-nez v0, :cond_8

    .line 547
    const/4 p0, 0x0

    return p0

    .line 550
    :cond_8
    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    :try_start_d
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/view/IInputMethodManager;->acceptStylusHandwritingDelegation(Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;I)Z

    move-result p0
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_11} :catch_12

    return p0

    .line 552
    :catch_12
    move-exception v0

    move-object p0, v0

    .line 553
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method static blacklist acceptStylusHandwritingDelegationAsync(Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;ILcom/android/internal/inputmethod/IBooleanListener;)Z
    .registers 13

    .line 566
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    .line 567
    if-nez v0, :cond_8

    .line 568
    const/4 p0, 0x0

    return p0

    .line 571
    :cond_8
    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    :try_start_e
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/view/IInputMethodManager;->acceptStylusHandwritingDelegationAsync(Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;ILcom/android/internal/inputmethod/IBooleanListener;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_11} :catch_14

    .line 575
    nop

    .line 576
    const/4 p0, 0x1

    return p0

    .line 573
    :catch_14
    move-exception v0

    move-object p0, v0

    .line 574
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method static blacklist addClient(Lcom/android/internal/inputmethod/IInputMethodClient;Lcom/android/internal/inputmethod/IRemoteInputConnection;I)V
    .registers 4

    .line 177
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    .line 178
    if-nez v0, :cond_7

    .line 179
    return-void

    .line 182
    :cond_7
    :try_start_7
    invoke-interface {v0, p0, p1, p2}, Lcom/android/internal/view/IInputMethodManager;->addClient(Lcom/android/internal/inputmethod/IInputMethodClient;Lcom/android/internal/inputmethod/IRemoteInputConnection;I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_c

    .line 185
    nop

    .line 186
    return-void

    .line 183
    :catch_c
    move-exception p0

    .line 184
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method static blacklist addVirtualStylusIdForTestSession(Lcom/android/internal/inputmethod/IInputMethodClient;)V
    .registers 2

    .line 597
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    .line 598
    if-nez v0, :cond_7

    .line 599
    return-void

    .line 602
    :cond_7
    :try_start_7
    invoke-interface {v0, p0}, Lcom/android/internal/view/IInputMethodManager;->addVirtualStylusIdForTestSession(Lcom/android/internal/inputmethod/IInputMethodClient;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_c

    .line 605
    nop

    .line 606
    return-void

    .line 603
    :catch_c
    move-exception p0

    .line 604
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private static blacklist advanceAngGetStartInputSequenceNumber()I
    .registers 1

    .line 324
    sget v0, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->sCurStartInputSeq:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->sCurStartInputSeq:I

    return v0
.end method

.method static blacklist finishTrackingPendingRequests()V
    .registers 4

    .line 761
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getImeTrackerService()Lcom/android/internal/inputmethod/IImeTracker;

    move-result-object v0

    .line 762
    if-nez v0, :cond_7

    .line 763
    return-void

    .line 766
    :cond_7
    :try_start_7
    new-instance v1, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v1}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 767
    invoke-interface {v0, v1}, Lcom/android/internal/inputmethod/IImeTracker;->finishTrackingPendingRequests(Lcom/android/internal/infra/AndroidFuture;)V

    .line 768
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/internal/infra/AndroidFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_16} :catch_1e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_16} :catch_18

    .line 773
    nop

    .line 774
    return-void

    .line 771
    :catch_18
    move-exception v0

    .line 772
    invoke-static {v0}, Landroid/util/ExceptionUtils;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 769
    :catch_1e
    move-exception v0

    .line 770
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method static blacklist getCurrentInputMethodInfoAsUser(I)Landroid/view/inputmethod/InputMethodInfo;
    .registers 2

    .line 192
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    .line 193
    if-nez v0, :cond_8

    .line 194
    const/4 p0, 0x0

    return-object p0

    .line 197
    :cond_8
    :try_start_8
    invoke-interface {v0, p0}, Lcom/android/internal/view/IInputMethodManager;->getCurrentInputMethodInfoAsUser(I)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object p0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_c} :catch_d

    return-object p0

    .line 198
    :catch_d
    move-exception p0

    .line 199
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method static blacklist getCurrentInputMethodSubtype(I)Landroid/view/inputmethod/InputMethodSubtype;
    .registers 2

    .line 406
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    .line 407
    if-nez v0, :cond_8

    .line 408
    const/4 p0, 0x0

    return-object p0

    .line 411
    :cond_8
    :try_start_8
    invoke-interface {v0, p0}, Lcom/android/internal/view/IInputMethodManager;->getCurrentInputMethodSubtype(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object p0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_c} :catch_d

    return-object p0

    .line 412
    :catch_d
    move-exception p0

    .line 413
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method static blacklist getEnabledInputMethodList(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 228
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    .line 229
    if-nez v0, :cond_c

    .line 230
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 233
    :cond_c
    :try_start_c
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/view/inputmethod/Flags;->useInputMethodInfoSafeList()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 234
    nop

    .line 235
    invoke-interface {v0, p0}, Lcom/android/internal/view/IInputMethodManager;->getEnabledInputMethodList(I)Lcom/android/internal/inputmethod/InputMethodInfoSafeList;

    move-result-object p0

    .line 234
    invoke-static {p0}, Lcom/android/internal/inputmethod/InputMethodInfoSafeList;->extractFrom(Lcom/android/internal/inputmethod/InputMethodInfoSafeList;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 237
    :cond_1c
    invoke-interface {v0, p0}, Lcom/android/internal/view/IInputMethodManager;->getEnabledInputMethodListLegacy(I)Ljava/util/List;

    move-result-object p0
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_20} :catch_21

    return-object p0

    .line 239
    :catch_21
    move-exception p0

    .line 240
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method static blacklist getEnabledInputMethodSubtypeList(Ljava/lang/String;ZI)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZI)",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation

    .line 249
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    .line 250
    if-nez v0, :cond_c

    .line 251
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 254
    :cond_c
    nop

    .line 255
    :try_start_d
    invoke-interface {v0, p0, p1, p2}, Lcom/android/internal/view/IInputMethodManager;->getEnabledInputMethodSubtypeList(Ljava/lang/String;ZI)Lcom/android/internal/inputmethod/InputMethodSubtypeSafeList;

    move-result-object p0

    .line 254
    invoke-static {p0}, Lcom/android/internal/inputmethod/InputMethodSubtypeSafeList;->extractFrom(Lcom/android/internal/inputmethod/InputMethodSubtypeSafeList;)Ljava/util/List;

    move-result-object p0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return-object p0

    .line 257
    :catch_16
    move-exception p0

    .line 258
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private static blacklist getImeTrackerService()Lcom/android/internal/inputmethod/IImeTracker;
    .registers 2

    .line 779
    sget-object v0, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->sTrackerServiceCache:Lcom/android/internal/inputmethod/IImeTracker;

    .line 780
    if-nez v0, :cond_1c

    .line 781
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    .line 782
    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 783
    return-object v1

    .line 787
    :cond_c
    :try_start_c
    invoke-interface {v0}, Lcom/android/internal/view/IInputMethodManager;->getImeTrackerService()Lcom/android/internal/inputmethod/IImeTracker;

    move-result-object v0

    .line 788
    if-nez v0, :cond_13

    .line 789
    return-object v1

    .line 792
    :cond_13
    sput-object v0, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->sTrackerServiceCache:Lcom/android/internal/inputmethod/IImeTracker;
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_16

    .line 795
    goto :goto_1c

    .line 793
    :catch_16
    move-exception v0

    .line 794
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 797
    :cond_1c
    :goto_1c
    return-object v0
.end method

.method static blacklist getInputMethodList(II)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 208
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    .line 209
    if-nez v0, :cond_c

    .line 210
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 213
    :cond_c
    :try_start_c
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/view/inputmethod/Flags;->useInputMethodInfoSafeList()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 214
    nop

    .line 215
    invoke-interface {v0, p0, p1}, Lcom/android/internal/view/IInputMethodManager;->getInputMethodList(II)Lcom/android/internal/inputmethod/InputMethodInfoSafeList;

    move-result-object p0

    .line 214
    invoke-static {p0}, Lcom/android/internal/inputmethod/InputMethodInfoSafeList;->extractFrom(Lcom/android/internal/inputmethod/InputMethodInfoSafeList;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 217
    :cond_1c
    invoke-interface {v0, p0, p1}, Lcom/android/internal/view/IInputMethodManager;->getInputMethodListLegacy(II)Ljava/util/List;

    move-result-object p0
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_20} :catch_21

    return-object p0

    .line 219
    :catch_21
    move-exception p0

    .line 220
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method static blacklist getInputMethodWindowVisibleHeight(Lcom/android/internal/inputmethod/IInputMethodClient;)I
    .registers 2

    .line 449
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    .line 450
    if-nez v0, :cond_8

    .line 451
    const/4 p0, 0x0

    return p0

    .line 454
    :cond_8
    :try_start_8
    invoke-interface {v0, p0}, Lcom/android/internal/view/IInputMethodManager;->getInputMethodWindowVisibleHeight(Lcom/android/internal/inputmethod/IInputMethodClient;)I

    move-result p0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_c} :catch_d

    return p0

    .line 455
    :catch_d
    move-exception p0

    .line 456
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method static blacklist getLastInputMethodSubtype(I)Landroid/view/inputmethod/InputMethodSubtype;
    .registers 2

    .line 266
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    .line 267
    if-nez v0, :cond_8

    .line 268
    const/4 p0, 0x0

    return-object p0

    .line 271
    :cond_8
    :try_start_8
    invoke-interface {v0, p0}, Lcom/android/internal/view/IInputMethodManager;->getLastInputMethodSubtype(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object p0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_c} :catch_d

    return-object p0

    .line 272
    :catch_d
    move-exception p0

    .line 273
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method static blacklist getService()Lcom/android/internal/view/IInputMethodManager;
    .registers 2

    .line 92
    sget-object v0, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->sServiceCache:Lcom/android/internal/view/IInputMethodManager;

    .line 93
    if-nez v0, :cond_1c

    .line 94
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->isInEditModeInternal()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 95
    return-object v1

    .line 97
    :cond_c
    nop

    .line 98
    const-string v0, "input_method"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 97
    invoke-static {v0}, Lcom/android/internal/view/IInputMethodManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    .line 99
    if-nez v0, :cond_1a

    .line 100
    return-object v1

    .line 102
    :cond_1a
    sput-object v0, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->sServiceCache:Lcom/android/internal/view/IInputMethodManager;

    .line 104
    :cond_1c
    return-object v0
.end method

.method private static blacklist handleRemoteExceptionOrRethrow(Landroid/os/RemoteException;Ljava/util/function/Consumer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/RemoteException;",
            "Ljava/util/function/Consumer<",
            "Landroid/os/RemoteException;",
            ">;)V"
        }
    .end annotation

    .line 110
    if-eqz p1, :cond_6

    .line 111
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 115
    return-void

    .line 113
    :cond_6
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method static blacklist hideSoftInputFromServerForTest()V
    .registers 1

    .line 281
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    .line 282
    if-nez v0, :cond_7

    .line 283
    return-void

    .line 286
    :cond_7
    :try_start_7
    invoke-interface {v0}, Lcom/android/internal/view/IInputMethodManager;->hideSoftInputFromServerForTest()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_c

    .line 289
    nop

    .line 290
    return-void

    .line 287
    :catch_c
    move-exception v0

    .line 288
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method static blacklist isAvailable()Z
    .registers 1

    .line 86
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method static blacklist isImeTraceEnabled()Z
    .registers 1

    .line 163
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    .line 164
    if-nez v0, :cond_8

    .line 165
    const/4 v0, 0x0

    return v0

    .line 168
    :cond_8
    :try_start_8
    invoke-interface {v0}, Lcom/android/internal/view/IInputMethodManager;->isImeTraceEnabled()Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_c} :catch_d

    return v0

    .line 169
    :catch_d
    move-exception v0

    .line 170
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method static blacklist isInputMethodPickerShownForTest()Z
    .registers 1

    .line 361
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    .line 362
    if-nez v0, :cond_8

    .line 363
    const/4 v0, 0x0

    return v0

    .line 366
    :cond_8
    :try_start_8
    invoke-interface {v0}, Lcom/android/internal/view/IInputMethodManager;->isInputMethodPickerShownForTest()Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_c} :catch_d

    return v0

    .line 367
    :catch_d
    move-exception v0

    .line 368
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method static blacklist isStylusHandwritingAvailableAsUser(IZ)Z
    .registers 3

    .line 583
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    .line 584
    if-nez v0, :cond_8

    .line 585
    const/4 p0, 0x0

    return p0

    .line 588
    :cond_8
    :try_start_8
    invoke-interface {v0, p0, p1}, Lcom/android/internal/view/IInputMethodManager;->isStylusHandwritingAvailableAsUser(IZ)Z

    move-result p0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_c} :catch_d

    return p0

    .line 589
    :catch_d
    move-exception p0

    .line 590
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method static blacklist onCancelled(Landroid/view/inputmethod/ImeTracker$Token;I)V
    .registers 3

    .line 687
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getImeTrackerService()Lcom/android/internal/inputmethod/IImeTracker;

    move-result-object v0

    .line 688
    if-nez v0, :cond_7

    .line 689
    return-void

    .line 692
    :cond_7
    :try_start_7
    invoke-interface {v0, p0, p1}, Lcom/android/internal/inputmethod/IImeTracker;->onCancelled(Landroid/view/inputmethod/ImeTracker$Token;I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_c

    .line 695
    nop

    .line 696
    return-void

    .line 693
    :catch_c
    move-exception p0

    .line 694
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method static blacklist onDispatched(Landroid/view/inputmethod/ImeTracker$Token;)V
    .registers 2

    .line 728
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getImeTrackerService()Lcom/android/internal/inputmethod/IImeTracker;

    move-result-object v0

    .line 729
    if-nez v0, :cond_7

    .line 730
    return-void

    .line 733
    :cond_7
    :try_start_7
    invoke-interface {v0, p0}, Lcom/android/internal/inputmethod/IImeTracker;->onDispatched(Landroid/view/inputmethod/ImeTracker$Token;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_c

    .line 736
    nop

    .line 737
    return-void

    .line 734
    :catch_c
    move-exception p0

    .line 735
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method static blacklist onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V
    .registers 3

    .line 673
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getImeTrackerService()Lcom/android/internal/inputmethod/IImeTracker;

    move-result-object v0

    .line 674
    if-nez v0, :cond_7

    .line 675
    return-void

    .line 678
    :cond_7
    :try_start_7
    invoke-interface {v0, p0, p1}, Lcom/android/internal/inputmethod/IImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_c

    .line 681
    nop

    .line 682
    return-void

    .line 679
    :catch_c
    move-exception p0

    .line 680
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method static blacklist onHidden(Landroid/view/inputmethod/ImeTracker$Token;)V
    .registers 2

    .line 715
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getImeTrackerService()Lcom/android/internal/inputmethod/IImeTracker;

    move-result-object v0

    .line 716
    if-nez v0, :cond_7

    .line 717
    return-void

    .line 720
    :cond_7
    :try_start_7
    invoke-interface {v0, p0}, Lcom/android/internal/inputmethod/IImeTracker;->onHidden(Landroid/view/inputmethod/ImeTracker$Token;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_c

    .line 723
    nop

    .line 724
    return-void

    .line 721
    :catch_c
    move-exception p0

    .line 722
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method static blacklist onImeSwitchButtonClickFromSystem(I)V
    .registers 2

    .line 377
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    .line 378
    if-nez v0, :cond_7

    .line 379
    return-void

    .line 382
    :cond_7
    :try_start_7
    invoke-interface {v0, p0}, Lcom/android/internal/view/IInputMethodManager;->onImeSwitchButtonClickFromSystem(I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_c

    .line 385
    nop

    .line 386
    return-void

    .line 383
    :catch_c
    move-exception p0

    .line 384
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method static blacklist onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V
    .registers 3

    .line 659
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getImeTrackerService()Lcom/android/internal/inputmethod/IImeTracker;

    move-result-object v0

    .line 660
    if-nez v0, :cond_7

    .line 661
    return-void

    .line 664
    :cond_7
    :try_start_7
    invoke-interface {v0, p0, p1}, Lcom/android/internal/inputmethod/IImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_c

    .line 667
    nop

    .line 668
    return-void

    .line 665
    :catch_c
    move-exception p0

    .line 666
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method static blacklist onShown(Landroid/view/inputmethod/ImeTracker$Token;)V
    .registers 2

    .line 701
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getImeTrackerService()Lcom/android/internal/inputmethod/IImeTracker;

    move-result-object v0

    .line 702
    if-nez v0, :cond_7

    .line 703
    return-void

    .line 706
    :cond_7
    :try_start_7
    invoke-interface {v0, p0}, Lcom/android/internal/inputmethod/IImeTracker;->onShown(Landroid/view/inputmethod/ImeTracker$Token;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_c

    .line 709
    nop

    .line 710
    return-void

    .line 707
    :catch_c
    move-exception p0

    .line 708
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method static blacklist onStart(Landroid/view/inputmethod/ImeTracker$Token;IIIIZJJ)V
    .registers 21

    .line 644
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getImeTrackerService()Lcom/android/internal/inputmethod/IImeTracker;

    move-result-object v0

    .line 645
    if-nez v0, :cond_7

    .line 646
    return-void

    .line 649
    :cond_7
    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    :try_start_12
    invoke-interface/range {v0 .. v10}, Lcom/android/internal/inputmethod/IImeTracker;->onStart(Landroid/view/inputmethod/ImeTracker$Token;IIIIZJJ)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_15} :catch_17

    .line 653
    nop

    .line 654
    return-void

    .line 651
    :catch_17
    move-exception v0

    move-object p0, v0

    .line 652
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method static blacklist prepareStylusHandwritingDelegation(Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 526
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    .line 527
    if-nez v0, :cond_7

    .line 528
    return-void

    .line 531
    :cond_7
    :try_start_7
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/android/internal/view/IInputMethodManager;->prepareStylusHandwritingDelegation(Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_c

    .line 535
    nop

    .line 536
    return-void

    .line 533
    :catch_c
    move-exception p0

    .line 534
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method static blacklist removeImeSurfaceFromWindow(Landroid/os/IBinder;)V
    .registers 2

    .line 475
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    .line 476
    if-nez v0, :cond_7

    .line 477
    return-void

    .line 480
    :cond_7
    :try_start_7
    invoke-interface {v0, p0}, Lcom/android/internal/view/IInputMethodManager;->removeImeSurfaceFromWindow(Landroid/os/IBinder;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_c

    .line 483
    nop

    .line 484
    return-void

    .line 481
    :catch_c
    move-exception p0

    .line 482
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method static blacklist reportPerceptible(Landroid/os/IBinder;Z)V
    .registers 3

    .line 462
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    .line 463
    if-nez v0, :cond_7

    .line 464
    return-void

    .line 467
    :cond_7
    :try_start_7
    invoke-interface {v0, p0, p1}, Lcom/android/internal/view/IInputMethodManager;->reportPerceptible(Landroid/os/IBinder;Z)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_c

    .line 470
    nop

    .line 471
    return-void

    .line 468
    :catch_c
    move-exception p0

    .line 469
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method static blacklist setAdditionalInputMethodSubtypes(Ljava/lang/String;[Landroid/view/inputmethod/InputMethodSubtype;I)V
    .registers 4

    .line 421
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    .line 422
    if-nez v0, :cond_7

    .line 423
    return-void

    .line 426
    :cond_7
    :try_start_7
    invoke-interface {v0, p0, p1, p2}, Lcom/android/internal/view/IInputMethodManager;->setAdditionalInputMethodSubtypes(Ljava/lang/String;[Landroid/view/inputmethod/InputMethodSubtype;I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_c

    .line 429
    nop

    .line 430
    return-void

    .line 427
    :catch_c
    move-exception p0

    .line 428
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method static blacklist setAllowedImesByPolicyForTest(Lcom/android/internal/inputmethod/IInputMethodClient;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/inputmethod/IInputMethodClient;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 627
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    .line 628
    if-nez v0, :cond_7

    .line 629
    return-void

    .line 632
    :cond_7
    :try_start_7
    invoke-interface {v0, p0, p1}, Lcom/android/internal/view/IInputMethodManager;->setAllowedImesByPolicyForTest(Lcom/android/internal/inputmethod/IInputMethodClient;Ljava/util/List;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_c

    .line 635
    nop

    .line 636
    return-void

    .line 633
    :catch_c
    move-exception p0

    .line 634
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method static blacklist setExplicitlyEnabledInputMethodSubtypes(Ljava/lang/String;[II)V
    .registers 4

    .line 436
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    .line 437
    if-nez v0, :cond_7

    .line 438
    return-void

    .line 441
    :cond_7
    :try_start_7
    invoke-interface {v0, p0, p1, p2}, Lcom/android/internal/view/IInputMethodManager;->setExplicitlyEnabledInputMethodSubtypes(Ljava/lang/String;[II)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_c

    .line 444
    nop

    .line 445
    return-void

    .line 442
    :catch_c
    move-exception p0

    .line 443
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method static blacklist setStylusWindowIdleTimeoutForTest(Lcom/android/internal/inputmethod/IInputMethodClient;J)V
    .registers 4

    .line 612
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    .line 613
    if-nez v0, :cond_7

    .line 614
    return-void

    .line 617
    :cond_7
    :try_start_7
    invoke-interface {v0, p0, p1, p2}, Lcom/android/internal/view/IInputMethodManager;->setStylusWindowIdleTimeoutForTest(Lcom/android/internal/inputmethod/IInputMethodClient;J)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_c

    .line 620
    nop

    .line 621
    return-void

    .line 618
    :catch_c
    move-exception p0

    .line 619
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method static blacklist shouldShowImeSwitcherButtonForTest()Z
    .registers 1

    .line 391
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    .line 392
    if-nez v0, :cond_8

    .line 393
    const/4 v0, 0x0

    return v0

    .line 396
    :cond_8
    :try_start_8
    invoke-interface {v0}, Lcom/android/internal/view/IInputMethodManager;->shouldShowImeSwitcherButtonForTest()Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_c} :catch_d

    return v0

    .line 397
    :catch_d
    move-exception v0

    .line 398
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method static blacklist showInputMethodPickerFromClient(Lcom/android/internal/inputmethod/IInputMethodClient;I)V
    .registers 3

    .line 331
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    .line 332
    if-nez v0, :cond_7

    .line 333
    return-void

    .line 336
    :cond_7
    :try_start_7
    invoke-interface {v0, p0, p1}, Lcom/android/internal/view/IInputMethodManager;->showInputMethodPickerFromClient(Lcom/android/internal/inputmethod/IInputMethodClient;I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_c

    .line 339
    nop

    .line 340
    return-void

    .line 337
    :catch_c
    move-exception p0

    .line 338
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method static blacklist showInputMethodPickerFromSystem(II)V
    .registers 3

    .line 347
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    .line 348
    if-nez v0, :cond_7

    .line 349
    return-void

    .line 352
    :cond_7
    :try_start_7
    invoke-interface {v0, p0, p1}, Lcom/android/internal/view/IInputMethodManager;->showInputMethodPickerFromSystem(II)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_c

    .line 355
    nop

    .line 356
    return-void

    .line 353
    :catch_c
    move-exception p0

    .line 354
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method static blacklist startConnectionlessStylusHandwriting(Lcom/android/internal/inputmethod/IInputMethodClient;ILandroid/view/inputmethod/CursorAnchorInfo;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;)Z
    .registers 13

    .line 507
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    .line 508
    if-nez v0, :cond_8

    .line 509
    const/4 p0, 0x0

    return p0

    .line 512
    :cond_8
    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    :try_start_e
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/view/IInputMethodManager;->startConnectionlessStylusHandwriting(Lcom/android/internal/inputmethod/IInputMethodClient;ILandroid/view/inputmethod/CursorAnchorInfo;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_11} :catch_14

    .line 516
    nop

    .line 517
    const/4 p0, 0x1

    return p0

    .line 514
    :catch_14
    move-exception v0

    move-object p0, v0

    .line 515
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method static blacklist startImeTrace(Ljava/util/function/Consumer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/os/RemoteException;",
            ">;)V"
        }
    .end annotation

    .line 125
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    .line 126
    if-nez v0, :cond_7

    .line 127
    return-void

    .line 130
    :cond_7
    :try_start_7
    invoke-interface {v0}, Lcom/android/internal/view/IInputMethodManager;->startImeTrace()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_b

    .line 133
    goto :goto_f

    .line 131
    :catch_b
    move-exception v0

    .line 132
    invoke-static {v0, p0}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->handleRemoteExceptionOrRethrow(Landroid/os/RemoteException;Ljava/util/function/Consumer;)V

    .line 134
    :goto_f
    return-void
.end method

.method static blacklist startInputOrWindowGainedFocus(ILcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteInputConnection;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Lcom/android/internal/inputmethod/IRemoteComputerControlInputConnection;IILandroid/os/ResultReceiver;Z)I
    .registers 30

    .line 307
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    .line 308
    if-nez v0, :cond_8

    .line 309
    const/4 v0, -0x1

    return v0

    .line 312
    :cond_8
    nop

    .line 316
    :try_start_9
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->advanceAngGetStartInputSequenceNumber()I

    move-result v15

    .line 312
    move/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move-object/from16 v13, p12

    move/from16 v14, p13

    invoke-interface/range {v0 .. v15}, Lcom/android/internal/view/IInputMethodManager;->startInputOrWindowGainedFocus(ILcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteInputConnection;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Lcom/android/internal/inputmethod/IRemoteComputerControlInputConnection;IILandroid/os/ResultReceiver;ZI)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_2c} :catch_30

    .line 319
    nop

    .line 320
    sget v0, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->sCurStartInputSeq:I

    return v0

    .line 317
    :catch_30
    move-exception v0

    .line 318
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method static blacklist startStylusHandwriting(Lcom/android/internal/inputmethod/IInputMethodClient;)V
    .registers 2

    .line 488
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    .line 489
    if-nez v0, :cond_7

    .line 490
    return-void

    .line 493
    :cond_7
    :try_start_7
    invoke-interface {v0, p0}, Lcom/android/internal/view/IInputMethodManager;->startStylusHandwriting(Lcom/android/internal/inputmethod/IInputMethodClient;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_c

    .line 496
    nop

    .line 497
    return-void

    .line 494
    :catch_c
    move-exception p0

    .line 495
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method static blacklist stopImeTrace(Ljava/util/function/Consumer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/os/RemoteException;",
            ">;)V"
        }
    .end annotation

    .line 144
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    .line 145
    if-nez v0, :cond_7

    .line 146
    return-void

    .line 149
    :cond_7
    :try_start_7
    invoke-interface {v0}, Lcom/android/internal/view/IInputMethodManager;->stopImeTrace()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_b

    .line 152
    goto :goto_f

    .line 150
    :catch_b
    move-exception v0

    .line 151
    invoke-static {v0, p0}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->handleRemoteExceptionOrRethrow(Landroid/os/RemoteException;Ljava/util/function/Consumer;)V

    .line 153
    :goto_f
    return-void
.end method

.method static blacklist waitUntilNoPendingRequests(J)V
    .registers 4

    .line 743
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getImeTrackerService()Lcom/android/internal/inputmethod/IImeTracker;

    move-result-object v0

    .line 744
    if-nez v0, :cond_7

    .line 745
    return-void

    .line 748
    :cond_7
    :try_start_7
    new-instance v1, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v1}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 749
    invoke-interface {v0, v1, p0, p1}, Lcom/android/internal/inputmethod/IImeTracker;->waitUntilNoPendingRequests(Lcom/android/internal/infra/AndroidFuture;J)V

    .line 750
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p0, p1, v0}, Lcom/android/internal/infra/AndroidFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_14} :catch_1c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_14} :catch_16

    .line 755
    nop

    .line 756
    return-void

    .line 753
    :catch_16
    move-exception p0

    .line 754
    invoke-static {p0}, Landroid/util/ExceptionUtils;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    .line 751
    :catch_1c
    move-exception p0

    .line 752
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method
