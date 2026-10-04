.class final Landroid/view/Choreographer$CallbackQueue;
.super Ljava/lang/Object;
.source "Choreographer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/Choreographer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CallbackQueue"
.end annotation


# instance fields
.field private greylist-max-o mHead:Landroid/view/Choreographer$CallbackRecord;

.field final synthetic blacklist this$0:Landroid/view/Choreographer;


# direct methods
.method private constructor blacklist <init>(Landroid/view/Choreographer;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1645
    iput-object p1, p0, Landroid/view/Choreographer$CallbackQueue;->this$0:Landroid/view/Choreographer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/Choreographer;Landroid/view/Choreographer-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/Choreographer$CallbackQueue;-><init>(Landroid/view/Choreographer;)V

    return-void
.end method


# virtual methods
.method public greylist addCallbackLocked(JLjava/lang/Object;Ljava/lang/Object;)V
    .registers 7

    .line 1674
    iget-object v0, p0, Landroid/view/Choreographer$CallbackQueue;->this$0:Landroid/view/Choreographer;

    invoke-static {v0, p1, p2, p3, p4}, Landroid/view/Choreographer;->-$$Nest$mobtainCallbackLocked(Landroid/view/Choreographer;JLjava/lang/Object;Ljava/lang/Object;)Landroid/view/Choreographer$CallbackRecord;

    move-result-object p3

    .line 1675
    iget-object p4, p0, Landroid/view/Choreographer$CallbackQueue;->mHead:Landroid/view/Choreographer$CallbackRecord;

    .line 1676
    if-nez p4, :cond_d

    .line 1677
    iput-object p3, p0, Landroid/view/Choreographer$CallbackQueue;->mHead:Landroid/view/Choreographer$CallbackRecord;

    .line 1678
    return-void

    .line 1680
    :cond_d
    iget-wide v0, p4, Landroid/view/Choreographer$CallbackRecord;->dueTime:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_18

    .line 1681
    iput-object p4, p3, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    .line 1682
    iput-object p3, p0, Landroid/view/Choreographer$CallbackQueue;->mHead:Landroid/view/Choreographer$CallbackRecord;

    .line 1683
    return-void

    .line 1685
    :cond_18
    :goto_18
    iget-object v0, p4, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    if-eqz v0, :cond_2c

    .line 1686
    iget-object v0, p4, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    iget-wide v0, v0, Landroid/view/Choreographer$CallbackRecord;->dueTime:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_29

    .line 1687
    iget-object p1, p4, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    iput-object p1, p3, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    .line 1688
    goto :goto_2c

    .line 1690
    :cond_29
    iget-object p4, p4, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    goto :goto_18

    .line 1692
    :cond_2c
    :goto_2c
    iput-object p3, p4, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    .line 1693
    return-void
.end method

.method public greylist-max-o extractDueCallbacksLocked(J)Landroid/view/Choreographer$CallbackRecord;
    .registers 10

    .line 1653
    iget-object v0, p0, Landroid/view/Choreographer$CallbackQueue;->mHead:Landroid/view/Choreographer$CallbackRecord;

    .line 1654
    const/4 v1, 0x0

    if-eqz v0, :cond_25

    iget-wide v2, v0, Landroid/view/Choreographer$CallbackRecord;->dueTime:J

    cmp-long v2, v2, p1

    if-lez v2, :cond_c

    goto :goto_25

    .line 1658
    :cond_c
    nop

    .line 1659
    iget-object v2, v0, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    move-object v3, v0

    .line 1660
    :goto_10
    if-eqz v2, :cond_22

    .line 1661
    iget-wide v4, v2, Landroid/view/Choreographer$CallbackRecord;->dueTime:J

    cmp-long v4, v4, p1

    if-lez v4, :cond_1b

    .line 1662
    iput-object v1, v3, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    .line 1663
    goto :goto_22

    .line 1665
    :cond_1b
    nop

    .line 1666
    iget-object v3, v2, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    move-object v6, v3

    move-object v3, v2

    move-object v2, v6

    goto :goto_10

    .line 1668
    :cond_22
    :goto_22
    iput-object v2, p0, Landroid/view/Choreographer$CallbackQueue;->mHead:Landroid/view/Choreographer$CallbackRecord;

    .line 1669
    return-object v0

    .line 1655
    :cond_25
    :goto_25
    return-object v1
.end method

.method public greylist-max-o hasDueCallbacksLocked(J)Z
    .registers 5

    .line 1649
    iget-object v0, p0, Landroid/view/Choreographer$CallbackQueue;->mHead:Landroid/view/Choreographer$CallbackRecord;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/view/Choreographer$CallbackQueue;->mHead:Landroid/view/Choreographer$CallbackRecord;

    iget-wide v0, v0, Landroid/view/Choreographer$CallbackRecord;->dueTime:J

    cmp-long p1, v0, p1

    if-gtz p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method public greylist-max-o removeCallbacksLocked(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 7

    .line 1696
    nop

    .line 1697
    iget-object v0, p0, Landroid/view/Choreographer$CallbackQueue;->mHead:Landroid/view/Choreographer$CallbackRecord;

    const/4 v1, 0x0

    :goto_4
    if-eqz v0, :cond_26

    .line 1698
    iget-object v2, v0, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    .line 1699
    if-eqz p1, :cond_e

    iget-object v3, v0, Landroid/view/Choreographer$CallbackRecord;->action:Ljava/lang/Object;

    if-ne v3, p1, :cond_15

    :cond_e
    if-eqz p2, :cond_17

    iget-object v3, v0, Landroid/view/Choreographer$CallbackRecord;->token:Ljava/lang/Object;

    if-ne v3, p2, :cond_15

    goto :goto_17

    .line 1708
    :cond_15
    move-object v1, v0

    goto :goto_23

    .line 1701
    :cond_17
    :goto_17
    if-eqz v1, :cond_1c

    .line 1702
    iput-object v2, v1, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    goto :goto_1e

    .line 1704
    :cond_1c
    iput-object v2, p0, Landroid/view/Choreographer$CallbackQueue;->mHead:Landroid/view/Choreographer$CallbackRecord;

    .line 1706
    :goto_1e
    iget-object v3, p0, Landroid/view/Choreographer$CallbackQueue;->this$0:Landroid/view/Choreographer;

    invoke-static {v3, v0}, Landroid/view/Choreographer;->-$$Nest$mrecycleCallbackLocked(Landroid/view/Choreographer;Landroid/view/Choreographer$CallbackRecord;)V

    .line 1710
    :goto_23
    nop

    .line 1711
    move-object v0, v2

    goto :goto_4

    .line 1712
    :cond_26
    return-void
.end method
