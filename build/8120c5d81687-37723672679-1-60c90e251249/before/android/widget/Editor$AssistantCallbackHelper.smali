.class public Landroid/widget/Editor$AssistantCallbackHelper;
.super Ljava/lang/Object;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AssistantCallbackHelper"
.end annotation


# instance fields
.field private final blacklist mAssistClickHandlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/MenuItem;",
            "Landroid/view/View$OnClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mHelper:Landroid/widget/SelectionActionModeHelper;

.field private blacklist mPrevTextClassification:Landroid/view/textclassifier/TextClassification;

.field final synthetic blacklist this$0:Landroid/widget/Editor;


# direct methods
.method public constructor blacklist <init>(Landroid/widget/Editor;Landroid/widget/SelectionActionModeHelper;)V
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

    .line 4552
    iput-object p1, p0, Landroid/widget/Editor$AssistantCallbackHelper;->this$0:Landroid/widget/Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4548
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroid/widget/Editor$AssistantCallbackHelper;->mAssistClickHandlers:Ljava/util/Map;

    .line 4553
    iput-object p2, p0, Landroid/widget/Editor$AssistantCallbackHelper;->mHelper:Landroid/widget/SelectionActionModeHelper;

    .line 4554
    return-void
.end method

.method private blacklist addAssistMenuItem(Landroid/view/Menu;Landroid/app/RemoteAction;IIILandroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .registers 9

    .line 4620
    const v0, 0x1020041

    invoke-virtual {p2}, Landroid/app/RemoteAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p1, v0, p3, p4, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    .line 4621
    invoke-virtual {p2}, Landroid/app/RemoteAction;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-interface {p1, p3}, Landroid/view/MenuItem;->setContentDescription(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    .line 4622
    invoke-virtual {p2}, Landroid/app/RemoteAction;->shouldShowIcon()Z

    move-result p3

    if-eqz p3, :cond_2e

    .line 4623
    invoke-virtual {p2}, Landroid/app/RemoteAction;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object p3

    iget-object p4, p0, Landroid/widget/Editor$AssistantCallbackHelper;->this$0:Landroid/widget/Editor;

    invoke-static {p4}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object p4

    invoke-virtual {p4}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-interface {p1, p3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 4625
    :cond_2e
    invoke-interface {p1, p5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 4626
    iget-object p3, p0, Landroid/widget/Editor$AssistantCallbackHelper;->mAssistClickHandlers:Ljava/util/Map;

    .line 4627
    invoke-virtual {p2}, Landroid/app/RemoteAction;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object p4

    invoke-static {p4}, Landroid/view/textclassifier/TextClassification;->createIntentOnClickListener(Landroid/app/PendingIntent;)Landroid/view/View$OnClickListener;

    move-result-object p4

    .line 4626
    invoke-interface {p3, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4628
    iget-object p3, p0, Landroid/widget/Editor$AssistantCallbackHelper;->this$0:Landroid/widget/Editor;

    invoke-static {p3}, Landroid/widget/Editor;->-$$Nest$fgetmA11ySmartActions(Landroid/widget/Editor;)Landroid/widget/Editor$AccessibilitySmartActions;

    move-result-object p3

    invoke-static {p3, p2}, Landroid/widget/Editor$AccessibilitySmartActions;->-$$Nest$maddAction(Landroid/widget/Editor$AccessibilitySmartActions;Landroid/app/RemoteAction;)V

    .line 4629
    if-eqz p6, :cond_4c

    .line 4630
    invoke-interface {p1, p6}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 4632
    :cond_4c
    return-object p1
.end method

.method private blacklist clearAssistMenuItems(Landroid/view/Menu;)V
    .registers 6

    .line 4636
    const/4 v0, 0x0

    .line 4637
    :goto_1
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 4638
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 4639
    invoke-interface {v1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v2

    const v3, 0x1020041

    if-ne v2, v3, :cond_1c

    .line 4640
    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/view/Menu;->removeItem(I)V

    .line 4641
    goto :goto_1

    .line 4643
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    .line 4644
    goto :goto_1

    .line 4645
    :cond_1f
    iget-object p1, p0, Landroid/widget/Editor$AssistantCallbackHelper;->this$0:Landroid/widget/Editor;

    invoke-static {p1}, Landroid/widget/Editor;->-$$Nest$fgetmA11ySmartActions(Landroid/widget/Editor;)Landroid/widget/Editor$AccessibilitySmartActions;

    move-result-object p1

    invoke-static {p1}, Landroid/widget/Editor$AccessibilitySmartActions;->-$$Nest$mreset(Landroid/widget/Editor$AccessibilitySmartActions;)V

    .line 4646
    return-void
.end method

.method private blacklist createAssistMenuItemPendingIntentRequestCode()I
    .registers 4

    .line 4662
    iget-object v0, p0, Landroid/widget/Editor$AssistantCallbackHelper;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 4665
    iget-object v0, p0, Landroid/widget/Editor$AssistantCallbackHelper;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    .line 4663
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$AssistantCallbackHelper;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    .line 4664
    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    iget-object v2, p0, Landroid/widget/Editor$AssistantCallbackHelper;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    .line 4663
    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 4665
    invoke-interface {v0}, Ljava/lang/CharSequence;->hashCode()I

    move-result v0

    goto :goto_34

    .line 4666
    :cond_33
    const/4 v0, 0x0

    .line 4662
    :goto_34
    return v0
.end method

.method private blacklist hasLegacyAssistItem(Landroid/view/textclassifier/TextClassification;)Z
    .registers 3

    .line 4650
    invoke-virtual {p1}, Landroid/view/textclassifier/TextClassification;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_10

    .line 4651
    invoke-virtual {p1}, Landroid/view/textclassifier/TextClassification;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    .line 4650
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 4651
    :cond_10
    invoke-virtual {p1}, Landroid/view/textclassifier/TextClassification;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_1f

    .line 4652
    invoke-virtual {p1}, Landroid/view/textclassifier/TextClassification;->getOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object p1

    if-eqz p1, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 p1, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 p1, 0x1

    .line 4650
    :goto_20
    return p1
.end method

.method private blacklist shouldEnableAssistMenuItems()Z
    .registers 2

    .line 4656
    iget-object v0, p0, Landroid/widget/Editor$AssistantCallbackHelper;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->isDeviceProvisioned()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Landroid/widget/Editor$AssistantCallbackHelper;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    .line 4657
    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/textclassifier/TextClassificationManager;->getSettings(Landroid/content/Context;)Landroid/view/textclassifier/TextClassificationConstants;

    move-result-object v0

    .line 4658
    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassificationConstants;->isSmartTextShareEnabled()Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    .line 4656
    :goto_23
    return v0
.end method


# virtual methods
.method public blacklist clearCallbackHandlers()V
    .registers 2

    .line 4560
    iget-object v0, p0, Landroid/widget/Editor$AssistantCallbackHelper;->mAssistClickHandlers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 4561
    return-void
.end method

.method public blacklist getOnClickListener(Landroid/view/MenuItem;)Landroid/view/View$OnClickListener;
    .registers 3

    .line 4567
    iget-object v0, p0, Landroid/widget/Editor$AssistantCallbackHelper;->mAssistClickHandlers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View$OnClickListener;

    return-object p1
.end method

.method public blacklist onAssistMenuItemClicked(Landroid/view/MenuItem;)Z
    .registers 5

    .line 4673
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v0

    const v1, 0x1020041

    const/4 v2, 0x1

    if-ne v0, v1, :cond_c

    move v0, v2

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 4675
    iget-object v0, p0, Landroid/widget/Editor$AssistantCallbackHelper;->this$0:Landroid/widget/Editor;

    .line 4676
    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$mgetSelectionActionModeHelper(Landroid/widget/Editor;)Landroid/widget/SelectionActionModeHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SelectionActionModeHelper;->getTextClassification()Landroid/view/textclassifier/TextClassification;

    move-result-object v0

    .line 4677
    invoke-direct {p0}, Landroid/widget/Editor$AssistantCallbackHelper;->shouldEnableAssistMenuItems()Z

    move-result v1

    if-eqz v1, :cond_56

    if-nez v0, :cond_23

    goto :goto_56

    .line 4682
    :cond_23
    invoke-virtual {p0, p1}, Landroid/widget/Editor$AssistantCallbackHelper;->getOnClickListener(Landroid/view/MenuItem;)Landroid/view/View$OnClickListener;

    move-result-object v0

    .line 4683
    if-nez v0, :cond_45

    .line 4684
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 4685
    if-eqz p1, :cond_45

    .line 4686
    iget-object v0, p0, Landroid/widget/Editor$AssistantCallbackHelper;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    .line 4688
    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 4689
    invoke-direct {p0}, Landroid/widget/Editor$AssistantCallbackHelper;->createAssistMenuItemPendingIntentRequestCode()I

    move-result v1

    .line 4687
    invoke-static {v0, p1, v1}, Landroid/view/textclassifier/TextClassification;->createPendingIntent(Landroid/content/Context;Landroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 4686
    invoke-static {p1}, Landroid/view/textclassifier/TextClassification;->createIntentOnClickListener(Landroid/app/PendingIntent;)Landroid/view/View$OnClickListener;

    move-result-object v0

    .line 4692
    :cond_45
    if-eqz v0, :cond_55

    .line 4693
    iget-object p1, p0, Landroid/widget/Editor$AssistantCallbackHelper;->this$0:Landroid/widget/Editor;

    invoke-static {p1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 4694
    iget-object p1, p0, Landroid/widget/Editor$AssistantCallbackHelper;->this$0:Landroid/widget/Editor;

    invoke-virtual {p1}, Landroid/widget/Editor;->stopTextActionMode()V

    .line 4697
    :cond_55
    return v2

    .line 4679
    :cond_56
    :goto_56
    return v2
.end method

.method public blacklist updateAssistMenuItems(Landroid/view/Menu;Landroid/view/MenuItem$OnMenuItemClickListener;)V
    .registers 13

    .line 4576
    iget-object v0, p0, Landroid/widget/Editor$AssistantCallbackHelper;->mHelper:Landroid/widget/SelectionActionModeHelper;

    invoke-virtual {v0}, Landroid/widget/SelectionActionModeHelper;->getTextClassification()Landroid/view/textclassifier/TextClassification;

    move-result-object v0

    .line 4577
    iget-object v1, p0, Landroid/widget/Editor$AssistantCallbackHelper;->mPrevTextClassification:Landroid/view/textclassifier/TextClassification;

    if-ne v1, v0, :cond_b

    .line 4579
    return-void

    .line 4581
    :cond_b
    invoke-direct {p0, p1}, Landroid/widget/Editor$AssistantCallbackHelper;->clearAssistMenuItems(Landroid/view/Menu;)V

    .line 4582
    if-nez v0, :cond_11

    .line 4583
    return-void

    .line 4585
    :cond_11
    invoke-direct {p0}, Landroid/widget/Editor$AssistantCallbackHelper;->shouldEnableAssistMenuItems()Z

    move-result v1

    if-nez v1, :cond_18

    .line 4586
    return-void

    .line 4588
    :cond_18
    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassification;->getActions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_45

    .line 4590
    nop

    .line 4591
    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassification;->getActions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/app/RemoteAction;

    .line 4590
    const v5, 0x1020041

    const/4 v6, 0x0

    const/4 v7, 0x2

    move-object v2, p0

    move-object v3, p1

    move-object v8, p2

    invoke-direct/range {v2 .. v8}, Landroid/widget/Editor$AssistantCallbackHelper;->addAssistMenuItem(Landroid/view/Menu;Landroid/app/RemoteAction;IIILandroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object p1

    .line 4594
    move-object v1, v2

    move-object v7, v8

    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassification;->getIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    goto :goto_8e

    .line 4595
    :cond_45
    move-object v1, p0

    move-object v3, p1

    move-object v7, p2

    invoke-direct {p0, v0}, Landroid/widget/Editor$AssistantCallbackHelper;->hasLegacyAssistItem(Landroid/view/textclassifier/TextClassification;)Z

    move-result p1

    if-eqz p1, :cond_8e

    .line 4597
    nop

    .line 4599
    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassification;->getLabel()Ljava/lang/CharSequence;

    move-result-object p1

    .line 4597
    const p2, 0x1020041

    invoke-interface {v3, p2, p2, v2, p1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    .line 4600
    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassification;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object p1

    .line 4601
    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassification;->getIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object p1

    .line 4602
    const/4 p2, 0x2

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 4603
    iget-object p2, v1, Landroid/widget/Editor$AssistantCallbackHelper;->mAssistClickHandlers:Ljava/util/Map;

    iget-object v2, v1, Landroid/widget/Editor$AssistantCallbackHelper;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    .line 4604
    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 4605
    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassification;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 4606
    invoke-direct {p0}, Landroid/widget/Editor$AssistantCallbackHelper;->createAssistMenuItemPendingIntentRequestCode()I

    move-result v5

    .line 4604
    invoke-static {v2, v4, v5}, Landroid/view/textclassifier/TextClassification;->createPendingIntent(Landroid/content/Context;Landroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 4603
    invoke-static {v2}, Landroid/view/textclassifier/TextClassification;->createIntentOnClickListener(Landroid/app/PendingIntent;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-interface {p2, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8f

    .line 4595
    :cond_8e
    :goto_8e
    nop

    .line 4608
    :goto_8f
    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassification;->getActions()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 4609
    const/4 p2, 0x1

    move v8, p2

    :goto_99
    if-ge v8, p1, :cond_b5

    .line 4611
    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassification;->getActions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/RemoteAction;

    add-int/lit8 v4, v8, 0x32

    add-int/lit8 v5, v4, -0x1

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v9, v3

    move-object v3, v2

    move-object v2, v9

    invoke-direct/range {v1 .. v7}, Landroid/widget/Editor$AssistantCallbackHelper;->addAssistMenuItem(Landroid/view/Menu;Landroid/app/RemoteAction;IIILandroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 4609
    move-object v3, v2

    add-int/lit8 v8, v8, 0x1

    goto :goto_99

    .line 4615
    :cond_b5
    iput-object v0, v1, Landroid/widget/Editor$AssistantCallbackHelper;->mPrevTextClassification:Landroid/view/textclassifier/TextClassification;

    .line 4616
    return-void
.end method
