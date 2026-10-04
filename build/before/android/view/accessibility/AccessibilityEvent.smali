.class public final Landroid/view/accessibility/AccessibilityEvent;
.super Landroid/view/accessibility/AccessibilityRecord;
.source "AccessibilityEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/accessibility/AccessibilityEvent$EventType;,
        Landroid/view/accessibility/AccessibilityEvent$SpeechStateChangeTypes;,
        Landroid/view/accessibility/AccessibilityEvent$ContentChangeTypes;,
        Landroid/view/accessibility/AccessibilityEvent$WindowsChangeTypes;
    }
.end annotation


# static fields
.field public static final whitelist CONTENT_CHANGE_TYPE_CHECKED:I = 0x2000

.field public static final whitelist CONTENT_CHANGE_TYPE_CONTENT_DESCRIPTION:I = 0x4

.field public static final whitelist CONTENT_CHANGE_TYPE_CONTENT_INVALID:I = 0x400

.field public static final whitelist CONTENT_CHANGE_TYPE_DRAG_CANCELLED:I = 0x200

.field public static final whitelist CONTENT_CHANGE_TYPE_DRAG_DROPPED:I = 0x100

.field public static final whitelist CONTENT_CHANGE_TYPE_DRAG_STARTED:I = 0x80

.field public static final whitelist CONTENT_CHANGE_TYPE_ENABLED:I = 0x1000

.field public static final whitelist CONTENT_CHANGE_TYPE_ERROR:I = 0x800

.field public static final whitelist CONTENT_CHANGE_TYPE_EXPANDED:I = 0x4000

.field public static final whitelist CONTENT_CHANGE_TYPE_PANE_APPEARED:I = 0x10

.field public static final whitelist CONTENT_CHANGE_TYPE_PANE_DISAPPEARED:I = 0x20

.field public static final whitelist CONTENT_CHANGE_TYPE_PANE_TITLE:I = 0x8

.field public static final whitelist CONTENT_CHANGE_TYPE_SORT_DIRECTION:I = 0x10000

.field public static final whitelist CONTENT_CHANGE_TYPE_STATE_DESCRIPTION:I = 0x40

.field public static final whitelist CONTENT_CHANGE_TYPE_SUBTREE:I = 0x1

.field public static final whitelist CONTENT_CHANGE_TYPE_SUPPLEMENTAL_DESCRIPTION:I = 0x8000

.field public static final whitelist CONTENT_CHANGE_TYPE_TEXT:I = 0x2

.field public static final whitelist CONTENT_CHANGE_TYPE_UNDEFINED:I = 0x0

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/accessibility/AccessibilityEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o DEBUG:Z

.field public static final greylist-max-o DEBUG_ORIGIN:Z = false

.field public static final whitelist INVALID_POSITION:I = -0x1

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "AccessibilityEvent"

.field public static final whitelist MAX_TEXT_LENGTH:I = 0x1f4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SPEECH_STATE_LISTENING_END:I = 0x8

.field public static final whitelist SPEECH_STATE_LISTENING_START:I = 0x4

.field public static final whitelist SPEECH_STATE_SPEAKING_END:I = 0x2

.field public static final whitelist SPEECH_STATE_SPEAKING_START:I = 0x1

.field public static final whitelist TYPES_ALL_MASK:I = -0x1

.field public static final whitelist TYPE_ANNOUNCEMENT:I = 0x4000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist TYPE_ASSIST_READING_CONTEXT:I = 0x1000000

.field public static final whitelist TYPE_GESTURE_DETECTION_END:I = 0x80000

.field public static final whitelist TYPE_GESTURE_DETECTION_START:I = 0x40000

.field public static final whitelist TYPE_NOTIFICATION_STATE_CHANGED:I = 0x40

.field public static final whitelist TYPE_SPEECH_STATE_CHANGE:I = 0x2000000

.field public static final whitelist TYPE_TOUCH_EXPLORATION_GESTURE_END:I = 0x400

.field public static final whitelist TYPE_TOUCH_EXPLORATION_GESTURE_START:I = 0x200

.field public static final whitelist TYPE_TOUCH_INTERACTION_END:I = 0x200000

.field public static final whitelist TYPE_TOUCH_INTERACTION_START:I = 0x100000

.field public static final whitelist TYPE_VIEW_ACCESSIBILITY_FOCUSED:I = 0x8000

.field public static final whitelist TYPE_VIEW_ACCESSIBILITY_FOCUS_CLEARED:I = 0x10000

.field public static final whitelist TYPE_VIEW_CLICKED:I = 0x1

.field public static final whitelist TYPE_VIEW_CONTEXT_CLICKED:I = 0x800000

.field public static final whitelist TYPE_VIEW_FOCUSED:I = 0x8

.field public static final whitelist TYPE_VIEW_HOVER_ENTER:I = 0x80

.field public static final whitelist TYPE_VIEW_HOVER_EXIT:I = 0x100

.field public static final whitelist TYPE_VIEW_LONG_CLICKED:I = 0x2

.field public static final whitelist TYPE_VIEW_SCROLLED:I = 0x1000

.field public static final whitelist TYPE_VIEW_SELECTED:I = 0x4

.field public static final whitelist TYPE_VIEW_TARGETED_BY_SCROLL:I = 0x4000000

.field public static final whitelist TYPE_VIEW_TEXT_CHANGED:I = 0x10

.field public static final whitelist TYPE_VIEW_TEXT_SELECTION_CHANGED:I = 0x2000

.field public static final whitelist TYPE_VIEW_TEXT_TRAVERSED_AT_MOVEMENT_GRANULARITY:I = 0x20000

.field public static final whitelist TYPE_WINDOWS_CHANGED:I = 0x400000

.field public static final whitelist TYPE_WINDOW_CONTENT_CHANGED:I = 0x800

.field public static final whitelist TYPE_WINDOW_STATE_CHANGED:I = 0x20

.field public static final whitelist WINDOWS_CHANGE_ACCESSIBILITY_FOCUSED:I = 0x80

.field public static final whitelist WINDOWS_CHANGE_ACTIVE:I = 0x20

.field public static final whitelist WINDOWS_CHANGE_ADDED:I = 0x1

.field public static final whitelist WINDOWS_CHANGE_BOUNDS:I = 0x8

.field public static final whitelist WINDOWS_CHANGE_CHILDREN:I = 0x200

.field public static final whitelist WINDOWS_CHANGE_FOCUSED:I = 0x40

.field public static final whitelist WINDOWS_CHANGE_LAYER:I = 0x10

.field public static final whitelist WINDOWS_CHANGE_PARENT:I = 0x100

.field public static final whitelist WINDOWS_CHANGE_PIP:I = 0x400

.field public static final whitelist WINDOWS_CHANGE_REMOVED:I = 0x2

.field public static final whitelist WINDOWS_CHANGE_TITLE:I = 0x4


# instance fields
.field greylist-max-p mAction:I

.field greylist-max-o mContentChangeTypes:I

.field private greylist-max-o mEventTime:J

.field private greylist mEventType:I

.field greylist-max-o mMovementGranularity:I

.field private greylist-max-o mPackageName:Ljava/lang/CharSequence;

.field private greylist-max-o mRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/accessibility/AccessibilityRecord;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mSpeechStateChangeTypes:I

.field greylist-max-o mWindowChangeTypes:I

.field public greylist-max-o originStackTrace:[Ljava/lang/StackTraceElement;


# direct methods
.method public static synthetic blacklist $r8$lambda$bDpQ3VsVX0uCtXxOVtmj_ZNvG4A(I)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Landroid/view/accessibility/AccessibilityEvent;->singleWindowChangeTypeToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$pNltjfSOiK09zGxmdNCOQHn-WME(I)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Landroid/view/accessibility/AccessibilityEvent;->singleSpeechStateChangeTypeToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$vm7Ok5WaRv7iy3dODsTmiTCFU9k(I)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Landroid/view/accessibility/AccessibilityEvent;->singleContentChangeTypeToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 435
    const-string v0, "AccessibilityEvent"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_f

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    sput-boolean v0, Landroid/view/accessibility/AccessibilityEvent;->DEBUG:Z

    .line 1922
    new-instance v0, Landroid/view/accessibility/AccessibilityEvent$1;

    invoke-direct {v0}, Landroid/view/accessibility/AccessibilityEvent$1;-><init>()V

    sput-object v0, Landroid/view/accessibility/AccessibilityEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 1094
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityRecord;-><init>()V

    .line 1087
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityEvent;->originStackTrace:[Ljava/lang/StackTraceElement;

    .line 1096
    return-void
.end method

.method public constructor whitelist <init>(I)V
    .registers 3

    .line 1104
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityRecord;-><init>()V

    .line 1087
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityEvent;->originStackTrace:[Ljava/lang/StackTraceElement;

    .line 1105
    iput p1, p0, Landroid/view/accessibility/AccessibilityEvent;->mEventType:I

    .line 1107
    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    .line 1115
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityRecord;-><init>()V

    .line 1087
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityEvent;->originStackTrace:[Ljava/lang/StackTraceElement;

    .line 1116
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityEvent;->init(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1117
    return-void
.end method

.method private static greylist-max-o contentChangeTypesToString(I)Ljava/lang/String;
    .registers 2

    .line 1238
    new-instance v0, Landroid/view/accessibility/AccessibilityEvent$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroid/view/accessibility/AccessibilityEvent$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {p0, v0}, Lcom/android/internal/util/BitUtils;->flagsToString(ILjava/util/function/IntFunction;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist eventTypeToString(I)Ljava/lang/String;
    .registers 6

    .line 1856
    const/4 v0, -0x1

    if-ne p0, v0, :cond_6

    .line 1857
    const-string p0, "TYPES_ALL_MASK"

    return-object p0

    .line 1859
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1860
    const/4 v1, 0x0

    move v2, v1

    .line 1861
    :goto_d
    const/4 v3, 0x1

    if-eqz p0, :cond_28

    .line 1862
    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v4

    shl-int/2addr v3, v4

    .line 1863
    not-int v4, v3

    and-int/2addr p0, v4

    .line 1865
    if-lez v2, :cond_1e

    .line 1866
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1868
    :cond_1e
    invoke-static {v3}, Landroid/view/accessibility/AccessibilityEvent;->singleEventTypeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1870
    add-int/lit8 v2, v2, 0x1

    .line 1871
    goto :goto_d

    .line 1872
    :cond_28
    if-le v2, v3, :cond_34

    .line 1873
    const/16 p0, 0x5b

    invoke-virtual {v0, v1, p0}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 1874
    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1876
    :cond_34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist obtain()Landroid/view/accessibility/AccessibilityEvent;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1622
    new-instance v0, Landroid/view/accessibility/AccessibilityEvent;

    invoke-direct {v0}, Landroid/view/accessibility/AccessibilityEvent;-><init>()V

    return-object v0
.end method

.method public static whitelist obtain(I)Landroid/view/accessibility/AccessibilityEvent;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1591
    new-instance v0, Landroid/view/accessibility/AccessibilityEvent;

    invoke-direct {v0}, Landroid/view/accessibility/AccessibilityEvent;-><init>()V

    .line 1592
    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 1593
    return-object v0
.end method

.method public static whitelist obtain(Landroid/view/accessibility/AccessibilityEvent;)Landroid/view/accessibility/AccessibilityEvent;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1608
    new-instance v0, Landroid/view/accessibility/AccessibilityEvent;

    invoke-direct {v0}, Landroid/view/accessibility/AccessibilityEvent;-><init>()V

    .line 1609
    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityEvent;->init(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1610
    return-object v0
.end method

.method public static blacklist obtainWindowsChangedEvent(III)Landroid/view/accessibility/AccessibilityEvent;
    .registers 5

    .line 1573
    new-instance v0, Landroid/view/accessibility/AccessibilityEvent;

    const/high16 v1, 0x400000

    invoke-direct {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;-><init>(I)V

    .line 1574
    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityEvent;->setDisplayId(I)V

    .line 1575
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setWindowId(I)V

    .line 1576
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityEvent;->setWindowChanges(I)V

    .line 1577
    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityEvent;->setImportantForAccessibility(Z)V

    .line 1578
    return-object v0
.end method

.method private greylist-max-o readAccessibilityRecordFromParcel(Landroid/view/accessibility/AccessibilityRecord;Landroid/os/Parcel;)V
    .registers 6

    .line 1709
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mBooleanProperties:I

    .line 1710
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mCurrentItemIndex:I

    .line 1711
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mItemCount:I

    .line 1712
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mFromIndex:I

    .line 1713
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mToIndex:I

    .line 1714
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mScrollX:I

    .line 1715
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mScrollY:I

    .line 1716
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mScrollDeltaX:I

    .line 1717
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mScrollDeltaY:I

    .line 1718
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollX:I

    .line 1719
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollY:I

    .line 1720
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mAddedCount:I

    .line 1721
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mRemovedCount:I

    .line 1722
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mClassName:Ljava/lang/CharSequence;

    .line 1723
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mContentDescription:Ljava/lang/CharSequence;

    .line 1724
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mBeforeText:Ljava/lang/CharSequence;

    .line 1725
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    iput-object v1, p1, Landroid/view/accessibility/AccessibilityRecord;->mParcelableData:Landroid/os/Parcelable;

    .line 1726
    iget-object v1, p1, Landroid/view/accessibility/AccessibilityRecord;->mText:Ljava/util/List;

    const-class v2, Ljava/lang/CharSequence;

    invoke-virtual {p2, v1, v0, v2}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)V

    .line 1727
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mSourceWindowId:I

    .line 1728
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mSourceNodeId:J

    .line 1729
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mSourceDisplayId:I

    .line 1730
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_94

    goto :goto_95

    :cond_94
    const/4 v0, 0x0

    :goto_95
    iput-boolean v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mSealed:Z

    .line 1731
    return-void
.end method

.method private static greylist-max-o singleContentChangeTypeToString(I)Ljava/lang/String;
    .registers 2

    .line 1242
    sparse-switch p0, :sswitch_data_5a

    .line 1262
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/Flags;->triStateChecked()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 1263
    const/16 v0, 0x2000

    if-ne p0, v0, :cond_3a

    .line 1264
    const-string p0, "CONTENT_CHANGE_TYPE_CHECKED"

    return-object p0

    .line 1260
    :sswitch_10
    const-string p0, "CONTENT_CHANGE_TYPE_ENABLED"

    return-object p0

    .line 1259
    :sswitch_13
    const-string p0, "CONTENT_CHANGE_TYPE_ERROR"

    return-object p0

    .line 1258
    :sswitch_16
    const-string p0, "CONTENT_CHANGE_TYPE_CONTENT_INVALID"

    return-object p0

    .line 1256
    :sswitch_19
    const-string p0, "CONTENT_CHANGE_TYPE_DRAG_CANCELLED"

    return-object p0

    .line 1255
    :sswitch_1c
    const-string p0, "CONTENT_CHANGE_TYPE_DRAG_DROPPED"

    return-object p0

    .line 1254
    :sswitch_1f
    const-string p0, "CONTENT_CHANGE_TYPE_DRAG_STARTED"

    return-object p0

    .line 1246
    :sswitch_22
    const-string p0, "CONTENT_CHANGE_TYPE_STATE_DESCRIPTION"

    return-object p0

    .line 1253
    :sswitch_25
    const-string p0, "CONTENT_CHANGE_TYPE_PANE_DISAPPEARED"

    return-object p0

    .line 1251
    :sswitch_28
    const-string p0, "CONTENT_CHANGE_TYPE_PANE_APPEARED"

    return-object p0

    .line 1249
    :sswitch_2b
    const-string p0, "CONTENT_CHANGE_TYPE_PANE_TITLE"

    return-object p0

    .line 1244
    :sswitch_2e
    const-string p0, "CONTENT_CHANGE_TYPE_CONTENT_DESCRIPTION"

    return-object p0

    .line 1248
    :sswitch_31
    const-string p0, "CONTENT_CHANGE_TYPE_TEXT"

    return-object p0

    .line 1247
    :sswitch_34
    const-string p0, "CONTENT_CHANGE_TYPE_SUBTREE"

    return-object p0

    .line 1250
    :sswitch_37
    const-string p0, "CONTENT_CHANGE_TYPE_UNDEFINED"

    return-object p0

    .line 1267
    :cond_3a
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/Flags;->a11yExpansionStateApi()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 1268
    const/16 v0, 0x4000

    if-ne p0, v0, :cond_47

    .line 1269
    const-string p0, "CONTENT_CHANGE_TYPE_EXPANDED"

    return-object p0

    .line 1272
    :cond_47
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/Flags;->supplementalDescription()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 1273
    const v0, 0x8000

    if-ne p0, v0, :cond_55

    .line 1274
    const-string p0, "CONTENT_CHANGE_TYPE_SUPPLEMENTAL_DESCRIPTION"

    return-object p0

    .line 1277
    :cond_55
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :sswitch_data_5a
    .sparse-switch
        0x0 -> :sswitch_37
        0x1 -> :sswitch_34
        0x2 -> :sswitch_31
        0x4 -> :sswitch_2e
        0x8 -> :sswitch_2b
        0x10 -> :sswitch_28
        0x20 -> :sswitch_25
        0x40 -> :sswitch_22
        0x80 -> :sswitch_1f
        0x100 -> :sswitch_1c
        0x200 -> :sswitch_19
        0x400 -> :sswitch_16
        0x800 -> :sswitch_13
        0x1000 -> :sswitch_10
    .end sparse-switch
.end method

.method private static greylist-max-o singleEventTypeToString(I)Ljava/lang/String;
    .registers 1

    .line 1880
    sparse-switch p0, :sswitch_data_5a

    .line 1914
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1913
    :sswitch_8
    const-string p0, "TYPE_VIEW_TARGETED_BY_SCROLL"

    return-object p0

    .line 1912
    :sswitch_b
    const-string p0, "TYPE_SPEECH_STATE_CHANGE"

    return-object p0

    .line 1911
    :sswitch_e
    const-string p0, "TYPE_ASSIST_READING_CONTEXT"

    return-object p0

    .line 1910
    :sswitch_11
    const-string p0, "TYPE_VIEW_CONTEXT_CLICKED"

    return-object p0

    .line 1909
    :sswitch_14
    const-string p0, "TYPE_WINDOWS_CHANGED"

    return-object p0

    .line 1908
    :sswitch_17
    const-string p0, "TYPE_TOUCH_INTERACTION_END"

    return-object p0

    .line 1907
    :sswitch_1a
    const-string p0, "TYPE_TOUCH_INTERACTION_START"

    return-object p0

    .line 1906
    :sswitch_1d
    const-string p0, "TYPE_GESTURE_DETECTION_END"

    return-object p0

    .line 1905
    :sswitch_20
    const-string p0, "TYPE_GESTURE_DETECTION_START"

    return-object p0

    .line 1903
    :sswitch_23
    const-string p0, "TYPE_VIEW_TEXT_TRAVERSED_AT_MOVEMENT_GRANULARITY"

    return-object p0

    .line 1900
    :sswitch_26
    const-string p0, "TYPE_VIEW_ACCESSIBILITY_FOCUS_CLEARED"

    return-object p0

    .line 1898
    :sswitch_29
    const-string p0, "TYPE_VIEW_ACCESSIBILITY_FOCUSED"

    return-object p0

    .line 1897
    :sswitch_2c
    const-string p0, "TYPE_ANNOUNCEMENT"

    return-object p0

    .line 1895
    :sswitch_2f
    const-string p0, "TYPE_VIEW_TEXT_SELECTION_CHANGED"

    return-object p0

    .line 1896
    :sswitch_32
    const-string p0, "TYPE_VIEW_SCROLLED"

    return-object p0

    .line 1894
    :sswitch_35
    const-string p0, "TYPE_WINDOW_CONTENT_CHANGED"

    return-object p0

    .line 1893
    :sswitch_38
    const-string p0, "TYPE_TOUCH_EXPLORATION_GESTURE_END"

    return-object p0

    .line 1891
    :sswitch_3b
    const-string p0, "TYPE_TOUCH_EXPLORATION_GESTURE_START"

    return-object p0

    .line 1888
    :sswitch_3e
    const-string p0, "TYPE_VIEW_HOVER_EXIT"

    return-object p0

    .line 1887
    :sswitch_41
    const-string p0, "TYPE_VIEW_HOVER_ENTER"

    return-object p0

    .line 1889
    :sswitch_44
    const-string p0, "TYPE_NOTIFICATION_STATE_CHANGED"

    return-object p0

    .line 1886
    :sswitch_47
    const-string p0, "TYPE_WINDOW_STATE_CHANGED"

    return-object p0

    .line 1885
    :sswitch_4a
    const-string p0, "TYPE_VIEW_TEXT_CHANGED"

    return-object p0

    .line 1884
    :sswitch_4d
    const-string p0, "TYPE_VIEW_FOCUSED"

    return-object p0

    .line 1883
    :sswitch_50
    const-string p0, "TYPE_VIEW_SELECTED"

    return-object p0

    .line 1882
    :sswitch_53
    const-string p0, "TYPE_VIEW_LONG_CLICKED"

    return-object p0

    .line 1881
    :sswitch_56
    const-string p0, "TYPE_VIEW_CLICKED"

    return-object p0

    nop

    :sswitch_data_5a
    .sparse-switch
        0x1 -> :sswitch_56
        0x2 -> :sswitch_53
        0x4 -> :sswitch_50
        0x8 -> :sswitch_4d
        0x10 -> :sswitch_4a
        0x20 -> :sswitch_47
        0x40 -> :sswitch_44
        0x80 -> :sswitch_41
        0x100 -> :sswitch_3e
        0x200 -> :sswitch_3b
        0x400 -> :sswitch_38
        0x800 -> :sswitch_35
        0x1000 -> :sswitch_32
        0x2000 -> :sswitch_2f
        0x4000 -> :sswitch_2c
        0x8000 -> :sswitch_29
        0x10000 -> :sswitch_26
        0x20000 -> :sswitch_23
        0x40000 -> :sswitch_20
        0x80000 -> :sswitch_1d
        0x100000 -> :sswitch_1a
        0x200000 -> :sswitch_17
        0x400000 -> :sswitch_14
        0x800000 -> :sswitch_11
        0x1000000 -> :sswitch_e
        0x2000000 -> :sswitch_b
        0x4000000 -> :sswitch_8
    .end sparse-switch
.end method

.method private static blacklist singleSpeechStateChangeTypeToString(I)Ljava/lang/String;
    .registers 1

    .line 1356
    sparse-switch p0, :sswitch_data_14

    .line 1366
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1364
    :sswitch_8
    const-string p0, "SPEECH_STATE_LISTENING_END"

    return-object p0

    .line 1360
    :sswitch_b
    const-string p0, "SPEECH_STATE_LISTENING_START"

    return-object p0

    .line 1362
    :sswitch_e
    const-string p0, "SPEECH_STATE_SPEAKING_END"

    return-object p0

    .line 1358
    :sswitch_11
    const-string p0, "SPEECH_STATE_SPEAKING_START"

    return-object p0

    :sswitch_data_14
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_e
        0x4 -> :sswitch_b
        0x8 -> :sswitch_8
    .end sparse-switch
.end method

.method private static greylist-max-o singleWindowChangeTypeToString(I)Ljava/lang/String;
    .registers 1

    .line 1420
    sparse-switch p0, :sswitch_data_2a

    .line 1433
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1432
    :sswitch_8
    const-string p0, "WINDOWS_CHANGE_PIP"

    return-object p0

    .line 1431
    :sswitch_b
    const-string p0, "WINDOWS_CHANGE_CHILDREN"

    return-object p0

    .line 1430
    :sswitch_e
    const-string p0, "WINDOWS_CHANGE_PARENT"

    return-object p0

    .line 1429
    :sswitch_11
    const-string p0, "WINDOWS_CHANGE_ACCESSIBILITY_FOCUSED"

    return-object p0

    .line 1427
    :sswitch_14
    const-string p0, "WINDOWS_CHANGE_FOCUSED"

    return-object p0

    .line 1426
    :sswitch_17
    const-string p0, "WINDOWS_CHANGE_ACTIVE"

    return-object p0

    .line 1425
    :sswitch_1a
    const-string p0, "WINDOWS_CHANGE_LAYER"

    return-object p0

    .line 1424
    :sswitch_1d
    const-string p0, "WINDOWS_CHANGE_BOUNDS"

    return-object p0

    .line 1423
    :sswitch_20
    const-string p0, "WINDOWS_CHANGE_TITLE"

    return-object p0

    .line 1422
    :sswitch_23
    const-string p0, "WINDOWS_CHANGE_REMOVED"

    return-object p0

    .line 1421
    :sswitch_26
    const-string p0, "WINDOWS_CHANGE_ADDED"

    return-object p0

    nop

    :sswitch_data_2a
    .sparse-switch
        0x1 -> :sswitch_26
        0x2 -> :sswitch_23
        0x4 -> :sswitch_20
        0x8 -> :sswitch_1d
        0x10 -> :sswitch_1a
        0x20 -> :sswitch_17
        0x40 -> :sswitch_14
        0x80 -> :sswitch_11
        0x100 -> :sswitch_e
        0x200 -> :sswitch_b
        0x400 -> :sswitch_8
    .end sparse-switch
.end method

.method private static blacklist speechStateChangeTypesToString(I)Ljava/lang/String;
    .registers 2

    .line 1351
    new-instance v0, Landroid/view/accessibility/AccessibilityEvent$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/view/accessibility/AccessibilityEvent$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p0, v0}, Lcom/android/internal/util/BitUtils;->flagsToString(ILjava/util/function/IntFunction;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static greylist-max-o windowChangeTypesToString(I)Ljava/lang/String;
    .registers 2

    .line 1416
    new-instance v0, Landroid/view/accessibility/AccessibilityEvent$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/view/accessibility/AccessibilityEvent$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p0, v0}, Lcom/android/internal/util/BitUtils;->flagsToString(ILjava/util/function/IntFunction;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private greylist-max-o writeAccessibilityRecordToParcel(Landroid/view/accessibility/AccessibilityRecord;Landroid/os/Parcel;I)V
    .registers 6

    .line 1777
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mBooleanProperties:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1778
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mCurrentItemIndex:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1779
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mItemCount:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1780
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mFromIndex:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1781
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mToIndex:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1782
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mScrollX:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1783
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mScrollY:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1784
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mScrollDeltaX:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1785
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mScrollDeltaY:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1786
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollX:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1787
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollY:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1788
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mAddedCount:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1789
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mRemovedCount:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1790
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mClassName:Ljava/lang/CharSequence;

    invoke-static {v0, p2, p3}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 1791
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mContentDescription:Ljava/lang/CharSequence;

    invoke-static {v0, p2, p3}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 1792
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mBeforeText:Ljava/lang/CharSequence;

    invoke-static {v0, p2, p3}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 1793
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mParcelableData:Landroid/os/Parcelable;

    invoke-virtual {p2, v0, p3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1794
    iget-object p3, p1, Landroid/view/accessibility/AccessibilityRecord;->mText:Ljava/util/List;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 1795
    iget p3, p1, Landroid/view/accessibility/AccessibilityRecord;->mSourceWindowId:I

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1796
    iget-wide v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mSourceNodeId:J

    invoke-virtual {p2, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1797
    iget p3, p1, Landroid/view/accessibility/AccessibilityRecord;->mSourceDisplayId:I

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1798
    iget-boolean p1, p1, Landroid/view/accessibility/AccessibilityRecord;->mSealed:Z

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1799
    return-void
.end method


# virtual methods
.method public whitelist appendRecord(Landroid/view/accessibility/AccessibilityRecord;)V
    .registers 3

    .line 1179
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityEvent;->enforceNotSealed()V

    .line 1180
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mRecords:Ljava/util/ArrayList;

    if-nez v0, :cond_e

    .line 1181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mRecords:Ljava/util/ArrayList;

    .line 1183
    :cond_e
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1184
    return-void
.end method

.method protected greylist-max-o clear()V
    .registers 4

    .line 1642
    invoke-super {p0}, Landroid/view/accessibility/AccessibilityRecord;->clear()V

    .line 1643
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mEventType:I

    .line 1644
    iput v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mMovementGranularity:I

    .line 1645
    iput v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mAction:I

    .line 1646
    iput v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mContentChangeTypes:I

    .line 1647
    iput v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mWindowChangeTypes:I

    .line 1648
    iput v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mSpeechStateChangeTypes:I

    .line 1649
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/accessibility/AccessibilityEvent;->mPackageName:Ljava/lang/CharSequence;

    .line 1650
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityEvent;->mEventTime:J

    .line 1651
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityEvent;->mRecords:Ljava/util/ArrayList;

    if-eqz v1, :cond_2c

    .line 1652
    :goto_1b
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityEvent;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2c

    .line 1653
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityEvent;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityRecord;

    .line 1654
    goto :goto_1b

    .line 1657
    :cond_2c
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 1805
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAction()I
    .registers 2

    .line 1556
    iget v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mAction:I

    return v0
.end method

.method public whitelist getContentChangeTypes()I
    .registers 2

    .line 1234
    iget v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mContentChangeTypes:I

    return v0
.end method

.method public whitelist getEventTime()J
    .registers 3

    .line 1456
    iget-wide v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mEventTime:J

    return-wide v0
.end method

.method public whitelist getEventType()I
    .registers 2

    .line 1206
    iget v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mEventType:I

    return v0
.end method

.method public whitelist getMovementGranularity()I
    .registers 2

    .line 1510
    iget v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mMovementGranularity:I

    return v0
.end method

.method public whitelist getPackageName()Ljava/lang/CharSequence;
    .registers 2

    .line 1477
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mPackageName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getRecord(I)Landroid/view/accessibility/AccessibilityRecord;
    .registers 5

    .line 1193
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mRecords:Ljava/util/ArrayList;

    if-eqz v0, :cond_d

    .line 1196
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityRecord;

    return-object p1

    .line 1194
    :cond_d
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", size is 0"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getRecordCount()I
    .registers 2

    .line 1168
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mRecords:Ljava/util/ArrayList;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_c
    return v0
.end method

.method public whitelist getSpeechStateChangeTypes()I
    .registers 2

    .line 1347
    iget v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mSpeechStateChangeTypes:I

    return v0
.end method

.method public whitelist getWindowChanges()I
    .registers 2

    .line 1407
    iget v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mWindowChangeTypes:I

    return v0
.end method

.method greylist-max-o init(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    .line 1125
    invoke-super {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->init(Landroid/view/accessibility/AccessibilityRecord;)V

    .line 1126
    iget v0, p1, Landroid/view/accessibility/AccessibilityEvent;->mEventType:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mEventType:I

    .line 1127
    iget v0, p1, Landroid/view/accessibility/AccessibilityEvent;->mMovementGranularity:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mMovementGranularity:I

    .line 1128
    iget v0, p1, Landroid/view/accessibility/AccessibilityEvent;->mAction:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mAction:I

    .line 1129
    iget v0, p1, Landroid/view/accessibility/AccessibilityEvent;->mContentChangeTypes:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mContentChangeTypes:I

    .line 1130
    iget v0, p1, Landroid/view/accessibility/AccessibilityEvent;->mSpeechStateChangeTypes:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mSpeechStateChangeTypes:I

    .line 1131
    iget v0, p1, Landroid/view/accessibility/AccessibilityEvent;->mWindowChangeTypes:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mWindowChangeTypes:I

    .line 1132
    iget-wide v0, p1, Landroid/view/accessibility/AccessibilityEvent;->mEventTime:J

    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mEventTime:J

    .line 1133
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityEvent;->mPackageName:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mPackageName:Ljava/lang/CharSequence;

    .line 1134
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityEvent;->mRecords:Ljava/util/ArrayList;

    if-eqz v0, :cond_51

    .line 1135
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/view/accessibility/AccessibilityEvent;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mRecords:Ljava/util/ArrayList;

    .line 1136
    iget-object p1, p1, Landroid/view/accessibility/AccessibilityEvent;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityRecord;

    .line 1137
    new-instance v1, Landroid/view/accessibility/AccessibilityRecord;

    invoke-direct {v1, v0}, Landroid/view/accessibility/AccessibilityRecord;-><init>(Landroid/view/accessibility/AccessibilityRecord;)V

    .line 1138
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1139
    goto :goto_3a

    .line 1142
    :cond_51
    return-void
.end method

.method public whitelist initFromParcel(Landroid/os/Parcel;)V
    .registers 6

    .line 1665
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_9

    goto :goto_a

    :cond_9
    move v2, v1

    :goto_a
    iput-boolean v2, p0, Landroid/view/accessibility/AccessibilityEvent;->mSealed:Z

    .line 1666
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mEventType:I

    .line 1667
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mMovementGranularity:I

    .line 1668
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mAction:I

    .line 1669
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mContentChangeTypes:I

    .line 1670
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mWindowChangeTypes:I

    .line 1671
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mSpeechStateChangeTypes:I

    .line 1672
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mPackageName:Ljava/lang/CharSequence;

    .line 1673
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/view/accessibility/AccessibilityEvent;->mEventTime:J

    .line 1674
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mConnectionId:I

    .line 1675
    invoke-direct {p0, p0, p1}, Landroid/view/accessibility/AccessibilityEvent;->readAccessibilityRecordFromParcel(Landroid/view/accessibility/AccessibilityRecord;Landroid/os/Parcel;)V

    .line 1678
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1679
    if-lez v0, :cond_6d

    .line 1680
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Landroid/view/accessibility/AccessibilityEvent;->mRecords:Ljava/util/ArrayList;

    .line 1681
    nop

    :goto_57
    if-ge v1, v0, :cond_6d

    .line 1682
    new-instance v2, Landroid/view/accessibility/AccessibilityRecord;

    invoke-direct {v2}, Landroid/view/accessibility/AccessibilityRecord;-><init>()V

    .line 1683
    invoke-direct {p0, v2, p1}, Landroid/view/accessibility/AccessibilityEvent;->readAccessibilityRecordFromParcel(Landroid/view/accessibility/AccessibilityRecord;Landroid/os/Parcel;)V

    .line 1684
    iget v3, p0, Landroid/view/accessibility/AccessibilityEvent;->mConnectionId:I

    iput v3, v2, Landroid/view/accessibility/AccessibilityRecord;->mConnectionId:I

    .line 1685
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityEvent;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1681
    add-int/lit8 v1, v1, 0x1

    goto :goto_57

    .line 1699
    :cond_6d
    return-void
.end method

.method public whitelist isAccessibilityDataSensitive()Z
    .registers 2

    .line 1312
    invoke-super {p0}, Landroid/view/accessibility/AccessibilityRecord;->isAccessibilityDataSensitive()Z

    move-result v0

    return v0
.end method

.method public whitelist recycle()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1633
    return-void
.end method

.method public whitelist setAccessibilityDataSensitive(Z)V
    .registers 2

    .line 1333
    invoke-super {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setAccessibilityDataSensitive(Z)V

    .line 1334
    return-void
.end method

.method public whitelist setAction(I)V
    .registers 2

    .line 1546
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityEvent;->enforceNotSealed()V

    .line 1547
    iput p1, p0, Landroid/view/accessibility/AccessibilityEvent;->mAction:I

    .line 1548
    return-void
.end method

.method public whitelist setContentChangeTypes(I)V
    .registers 2

    .line 1291
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityEvent;->enforceNotSealed()V

    .line 1292
    iput p1, p0, Landroid/view/accessibility/AccessibilityEvent;->mContentChangeTypes:I

    .line 1293
    return-void
.end method

.method public whitelist setEventTime(J)V
    .registers 3

    .line 1467
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityEvent;->enforceNotSealed()V

    .line 1468
    iput-wide p1, p0, Landroid/view/accessibility/AccessibilityEvent;->mEventTime:J

    .line 1469
    return-void
.end method

.method public whitelist setEventType(I)V
    .registers 2

    .line 1446
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityEvent;->enforceNotSealed()V

    .line 1447
    iput p1, p0, Landroid/view/accessibility/AccessibilityEvent;->mEventType:I

    .line 1448
    return-void
.end method

.method public whitelist setMovementGranularity(I)V
    .registers 2

    .line 1500
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityEvent;->enforceNotSealed()V

    .line 1501
    iput p1, p0, Landroid/view/accessibility/AccessibilityEvent;->mMovementGranularity:I

    .line 1502
    return-void
.end method

.method public whitelist setPackageName(Ljava/lang/CharSequence;)V
    .registers 2

    .line 1488
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityEvent;->enforceNotSealed()V

    .line 1489
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityEvent;->mPackageName:Ljava/lang/CharSequence;

    .line 1490
    return-void
.end method

.method public greylist-max-o setSealed(Z)V
    .registers 4

    .line 1153
    invoke-super {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setSealed(Z)V

    .line 1154
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mRecords:Ljava/util/ArrayList;

    .line 1155
    if-eqz v0, :cond_1b

    .line 1156
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityRecord;

    .line 1157
    invoke-virtual {v1, p1}, Landroid/view/accessibility/AccessibilityRecord;->setSealed(Z)V

    .line 1158
    goto :goto_b

    .line 1160
    :cond_1b
    return-void
.end method

.method public whitelist setSpeechStateChangeTypes(I)V
    .registers 2

    .line 1383
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityEvent;->enforceNotSealed()V

    .line 1384
    iput p1, p0, Landroid/view/accessibility/AccessibilityEvent;->mSpeechStateChangeTypes:I

    .line 1385
    return-void
.end method

.method public greylist-max-o setWindowChanges(I)V
    .registers 2

    .line 1412
    iput p1, p0, Landroid/view/accessibility/AccessibilityEvent;->mWindowChangeTypes:I

    .line 1413
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 1810
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1811
    const-string v1, "EventType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/accessibility/AccessibilityEvent;->mEventType:I

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityEvent;->eventTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1812
    const-string v1, "; EventTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityEvent;->mEventTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1813
    const-string v1, "; PackageName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityEvent;->mPackageName:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1815
    const-string v1, "; MovementGranularity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/accessibility/AccessibilityEvent;->mMovementGranularity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1818
    const-string v1, "; Action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/accessibility/AccessibilityEvent;->mAction:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1821
    const-string v1, "; ContentChangeTypes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/accessibility/AccessibilityEvent;->mContentChangeTypes:I

    .line 1822
    invoke-static {v2}, Landroid/view/accessibility/AccessibilityEvent;->contentChangeTypesToString(I)Ljava/lang/String;

    move-result-object v2

    .line 1821
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1825
    const-string v1, "; WindowChangeTypes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/accessibility/AccessibilityEvent;->mWindowChangeTypes:I

    .line 1826
    invoke-static {v2}, Landroid/view/accessibility/AccessibilityEvent;->windowChangeTypesToString(I)Ljava/lang/String;

    move-result-object v2

    .line 1825
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1828
    invoke-super {p0, v0}, Landroid/view/accessibility/AccessibilityRecord;->appendTo(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 1829
    sget-boolean v1, Landroid/view/accessibility/AccessibilityEvent;->DEBUG:Z

    if-nez v1, :cond_73

    .line 1843
    const-string v1, "; recordCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityEvent;->getRecordCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_ca

    .line 1831
    :cond_73
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1833
    sget-boolean v2, Landroid/view/accessibility/AccessibilityEvent;->DEBUG:Z

    if-eqz v2, :cond_a6

    .line 1834
    const-string v2, "; SourceWindowId: 0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/view/accessibility/AccessibilityEvent;->mSourceWindowId:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1835
    const-string v2, "; SourceNodeId: 0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Landroid/view/accessibility/AccessibilityEvent;->mSourceNodeId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1836
    const-string v2, "; SourceDisplayId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/view/accessibility/AccessibilityEvent;->mSourceDisplayId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1838
    :cond_a6
    const/4 v2, 0x0

    :goto_a7
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityEvent;->getRecordCount()I

    move-result v3

    if-ge v2, v3, :cond_ca

    .line 1839
    const-string v3, "  Record "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1840
    invoke-virtual {p0, v2}, Landroid/view/accessibility/AccessibilityEvent;->getRecord(I)Landroid/view/accessibility/AccessibilityRecord;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/accessibility/AccessibilityRecord;->appendTo(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1838
    add-int/lit8 v2, v2, 0x1

    goto :goto_a7

    .line 1845
    :cond_ca
    :goto_ca
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    .line 1737
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityEvent;->isSealed()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1738
    iget v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mEventType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1739
    iget v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mMovementGranularity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1740
    iget v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mAction:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1741
    iget v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mContentChangeTypes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1742
    iget v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mWindowChangeTypes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1743
    iget v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mSpeechStateChangeTypes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1744
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mPackageName:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 1745
    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityEvent;->mEventTime:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 1746
    iget v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mConnectionId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1747
    invoke-direct {p0, p0, p1, p2}, Landroid/view/accessibility/AccessibilityEvent;->writeAccessibilityRecordToParcel(Landroid/view/accessibility/AccessibilityRecord;Landroid/os/Parcel;I)V

    .line 1750
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityEvent;->getRecordCount()I

    move-result v0

    .line 1751
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1752
    nop

    :goto_40
    if-ge v1, v0, :cond_50

    .line 1753
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityEvent;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityRecord;

    .line 1754
    invoke-direct {p0, v2, p1, p2}, Landroid/view/accessibility/AccessibilityEvent;->writeAccessibilityRecordToParcel(Landroid/view/accessibility/AccessibilityRecord;Landroid/os/Parcel;I)V

    .line 1752
    add-int/lit8 v1, v1, 0x1

    goto :goto_40

    .line 1767
    :cond_50
    return-void
.end method
