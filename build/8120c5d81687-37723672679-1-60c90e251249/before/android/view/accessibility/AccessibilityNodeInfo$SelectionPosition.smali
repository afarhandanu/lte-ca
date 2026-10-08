.class public final Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/AccessibilityNodeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SelectionPosition"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mConnectionId:I

.field private final blacklist mOffset:I

.field private final blacklist mSourceNodeId:J

.field private blacklist mWindowId:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmSourceNodeId(Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;)J
    .registers 3

    iget-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->mSourceNodeId:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$msetConnectionId(Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->setConnectionId(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetWindowId(Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->setWindowId(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$musesNode(Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->usesNode(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 5980
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition$1;

    invoke-direct {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition$1;-><init>()V

    sput-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(JI)V
    .registers 4

    .line 5880
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5881
    iput p3, p0, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->mOffset:I

    .line 5882
    iput-wide p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->mSourceNodeId:J

    .line 5883
    return-void
.end method

.method synthetic constructor blacklist <init>(JILandroid/view/accessibility/AccessibilityNodeInfo-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;-><init>(JI)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 5885
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5886
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->mOffset:I

    .line 5887
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->mSourceNodeId:J

    .line 5888
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/view/accessibility/AccessibilityNodeInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/View;I)V
    .registers 5

    .line 5860
    nop

    .line 5862
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    move-result p1

    .line 5861
    const/4 v0, -0x1

    invoke-static {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->makeNodeId(II)J

    move-result-wide v0

    .line 5860
    invoke-direct {p0, v0, v1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;-><init>(JI)V

    .line 5864
    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/View;II)V
    .registers 4

    .line 5877
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    move-result p1

    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->makeNodeId(II)J

    move-result-wide p1

    invoke-direct {p0, p1, p2, p3}, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;-><init>(JI)V

    .line 5878
    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    .registers 5

    .line 5848
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->-$$Nest$fgetmSourceNodeId(Landroid/view/accessibility/AccessibilityNodeInfo;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;-><init>(JI)V

    .line 5849
    return-void
.end method

.method private blacklist setConnectionId(I)V
    .registers 2

    .line 5895
    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->mConnectionId:I

    .line 5896
    return-void
.end method

.method private blacklist setWindowId(I)V
    .registers 2

    .line 5891
    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->mWindowId:I

    .line 5892
    return-void
.end method

.method private blacklist usesNode(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .registers 6

    .line 5920
    iget-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->mSourceNodeId:J

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->-$$Nest$fgetmSourceNodeId(Landroid/view/accessibility/AccessibilityNodeInfo;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1c

    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->mConnectionId:I

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->-$$Nest$fgetmConnectionId(Landroid/view/accessibility/AccessibilityNodeInfo;)I

    move-result v1

    if-ne v0, v1, :cond_1c

    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->mWindowId:I

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->-$$Nest$fgetmWindowId(Landroid/view/accessibility/AccessibilityNodeInfo;)I

    move-result p1

    if-ne v0, p1, :cond_1c

    const/4 p1, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p1, 0x0

    :goto_1d
    return p1
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 5973
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8

    .line 5927
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 5928
    return v0

    .line 5931
    :cond_4
    const/4 v1, 0x1

    if-ne p1, p0, :cond_8

    .line 5932
    return v1

    .line 5935
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    .line 5936
    return v0

    .line 5939
    :cond_13
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;

    .line 5940
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->getOffset()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->getOffset()I

    move-result v3

    if-eq v2, v3, :cond_20

    .line 5941
    return v0

    .line 5944
    :cond_20
    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->mSourceNodeId:J

    iget-wide v4, p1, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->mSourceNodeId:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_29

    move v0, v1

    :cond_29
    return v0
.end method

.method public whitelist getNode()Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 5

    .line 5906
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->mConnectionId:I

    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->mWindowId:I

    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->mSourceNodeId:J

    invoke-static {v0, v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->-$$Nest$smgetNodeForAccessibilityId(IIJ)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getOffset()I
    .registers 2

    .line 5916
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->mOffset:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 8

    .line 5950
    nop

    .line 5952
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->mOffset:I

    const-wide/16 v1, 0x1

    if-eqz v0, :cond_b

    .line 5953
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->mOffset:I

    int-to-long v3, v0

    mul-long/2addr v1, v3

    .line 5956
    :cond_b
    iget-wide v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->mSourceNodeId:J

    sget-wide v5, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    cmp-long v0, v3, v5

    if-eqz v0, :cond_16

    .line 5957
    iget-wide v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->mSourceNodeId:J

    mul-long/2addr v1, v3

    .line 5960
    :cond_16
    const-wide/16 v3, 0x36d

    mul-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 5966
    iget p2, p0, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->mOffset:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5967
    iget-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->mSourceNodeId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 5968
    return-void
.end method
