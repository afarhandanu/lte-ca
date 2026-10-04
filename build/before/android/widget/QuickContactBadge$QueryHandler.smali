.class Landroid/widget/QuickContactBadge$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "QuickContactBadge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/QuickContactBadge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/QuickContactBadge;


# direct methods
.method public constructor blacklist <init>(Landroid/widget/QuickContactBadge;Landroid/content/ContentResolver;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 341
    iput-object p1, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    .line 342
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 343
    return-void
.end method


# virtual methods
.method protected whitelist onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .registers 10

    .line 347
    nop

    .line 348
    nop

    .line 349
    nop

    .line 350
    if-eqz p2, :cond_8

    check-cast p2, Landroid/os/Bundle;

    goto :goto_d

    :cond_8
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 352
    :goto_d
    const-string/jumbo v0, "uri_content"

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_c2

    move-object p1, v2

    goto :goto_6d

    .line 354
    :pswitch_18
    nop

    .line 355
    :try_start_19
    const-string/jumbo p1, "tel"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    move v4, v1

    goto :goto_38

    .line 368
    :pswitch_26
    nop

    .line 369
    const-string/jumbo p1, "mailto"

    .line 370
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 369
    invoke-static {p1, v4, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    move v4, v1

    goto :goto_50

    .line 383
    :catchall_34
    move-exception p1

    goto :goto_66

    .line 352
    :pswitch_36
    move-object p1, v2

    move v4, v3

    .line 359
    :goto_38
    if-eqz p3, :cond_6c

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_6c

    .line 360
    invoke-interface {p3, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 361
    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 362
    invoke-static {v2, v3, v1}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 363
    move v3, v4

    goto :goto_6d

    .line 352
    :pswitch_4e
    move-object p1, v2

    move v4, v3

    .line 374
    :goto_50
    if-eqz p3, :cond_6c

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_6c

    .line 375
    invoke-interface {p3, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 376
    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 377
    invoke-static {v2, v3, v1}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v2
    :try_end_64
    .catchall {:try_start_19 .. :try_end_64} :catchall_34

    move v3, v4

    goto :goto_6d

    .line 383
    :goto_66
    if-eqz p3, :cond_6b

    .line 384
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 386
    :cond_6b
    throw p1

    .line 383
    :cond_6c
    move v3, v4

    :goto_6d
    if-eqz p3, :cond_72

    .line 384
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 388
    :cond_72
    iget-object p3, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    invoke-static {p3, v2}, Landroid/widget/QuickContactBadge;->-$$Nest$fputmContactUri(Landroid/widget/QuickContactBadge;Landroid/net/Uri;)V

    .line 389
    iget-object p3, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    invoke-static {p3}, Landroid/widget/QuickContactBadge;->-$$Nest$monContactUriChanged(Landroid/widget/QuickContactBadge;)V

    .line 391
    if-eqz v3, :cond_a2

    iget-object p3, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    invoke-static {p3}, Landroid/widget/QuickContactBadge;->-$$Nest$fgetmContactUri(Landroid/widget/QuickContactBadge;)Landroid/net/Uri;

    move-result-object p3

    if-eqz p3, :cond_a2

    .line 393
    iget-object p1, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    invoke-virtual {p1}, Landroid/widget/QuickContactBadge;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    iget-object p3, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    invoke-static {p3}, Landroid/widget/QuickContactBadge;->-$$Nest$fgetmContactUri(Landroid/widget/QuickContactBadge;)Landroid/net/Uri;

    move-result-object p3

    iget-object v0, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    iget-object v0, v0, Landroid/widget/QuickContactBadge;->mExcludeMimes:[Ljava/lang/String;

    iget-object v1, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    invoke-static {v1}, Landroid/widget/QuickContactBadge;->-$$Nest$fgetmPrioritizedMimeType(Landroid/widget/QuickContactBadge;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, p3, v0, v1}, Landroid/provider/ContactsContract$QuickContact;->showQuickContact(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c1

    .line 395
    :cond_a2
    if-eqz p1, :cond_c1

    .line 397
    new-instance p3, Landroid/content/Intent;

    const-string v1, "com.android.contacts.action.SHOW_OR_CREATE_CONTACT"

    invoke-direct {p3, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 398
    if-eqz p2, :cond_b8

    .line 399
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 400
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 401
    invoke-virtual {p3, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 403
    :cond_b8
    iget-object p1, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    invoke-virtual {p1}, Landroid/widget/QuickContactBadge;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 405
    :cond_c1
    :goto_c1
    return-void

    :pswitch_data_c2
    .packed-switch 0x0
        :pswitch_4e
        :pswitch_36
        :pswitch_26
        :pswitch_18
    .end packed-switch
.end method
