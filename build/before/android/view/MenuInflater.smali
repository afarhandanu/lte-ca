.class public Landroid/view/MenuInflater;
.super Ljava/lang/Object;
.source "MenuInflater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/MenuInflater$MenuState;,
        Landroid/view/MenuInflater$InflatedOnMenuItemClickListener;
    }
.end annotation


# static fields
.field private static final greylist-max-o ACTION_PROVIDER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final greylist-max-o ACTION_VIEW_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "MenuInflater"

.field private static final greylist-max-o NO_ID:I = 0x0

.field private static final greylist-max-o XML_GROUP:Ljava/lang/String; = "group"

.field private static final greylist-max-o XML_ITEM:Ljava/lang/String; = "item"

.field private static final greylist-max-o XML_MENU:Ljava/lang/String; = "menu"


# instance fields
.field private final greylist-max-o mActionProviderConstructorArguments:[Ljava/lang/Object;

.field private final greylist-max-o mActionViewConstructorArguments:[Ljava/lang/Object;

.field private greylist-max-o mContext:Landroid/content/Context;

.field private greylist-max-o mRealOwner:Ljava/lang/Object;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmActionProviderConstructorArguments(Landroid/view/MenuInflater;)[Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/view/MenuInflater;->mActionProviderConstructorArguments:[Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmActionViewConstructorArguments(Landroid/view/MenuInflater;)[Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/view/MenuInflater;->mActionViewConstructorArguments:[Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContext(Landroid/view/MenuInflater;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Landroid/view/MenuInflater;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetRealOwner(Landroid/view/MenuInflater;)Ljava/lang/Object;
    .registers 1

    invoke-direct {p0}, Landroid/view/MenuInflater;->getRealOwner()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetACTION_PROVIDER_CONSTRUCTOR_SIGNATURE()[Ljava/lang/Class;
    .registers 1

    sget-object v0, Landroid/view/MenuInflater;->ACTION_PROVIDER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetACTION_VIEW_CONSTRUCTOR_SIGNATURE()[Ljava/lang/Class;
    .registers 1

    sget-object v0, Landroid/view/MenuInflater;->ACTION_VIEW_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 64
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    sput-object v0, Landroid/view/MenuInflater;->ACTION_VIEW_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    .line 66
    sget-object v0, Landroid/view/MenuInflater;->ACTION_VIEW_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    sput-object v0, Landroid/view/MenuInflater;->ACTION_PROVIDER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 2

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Landroid/view/MenuInflater;->mContext:Landroid/content/Context;

    .line 82
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroid/view/MenuInflater;->mActionViewConstructorArguments:[Ljava/lang/Object;

    .line 83
    iget-object p1, p0, Landroid/view/MenuInflater;->mActionViewConstructorArguments:[Ljava/lang/Object;

    iput-object p1, p0, Landroid/view/MenuInflater;->mActionProviderConstructorArguments:[Ljava/lang/Object;

    .line 84
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .registers 3

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Landroid/view/MenuInflater;->mContext:Landroid/content/Context;

    .line 94
    iput-object p2, p0, Landroid/view/MenuInflater;->mRealOwner:Ljava/lang/Object;

    .line 95
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroid/view/MenuInflater;->mActionViewConstructorArguments:[Ljava/lang/Object;

    .line 96
    iget-object p1, p0, Landroid/view/MenuInflater;->mActionViewConstructorArguments:[Ljava/lang/Object;

    iput-object p1, p0, Landroid/view/MenuInflater;->mActionProviderConstructorArguments:[Ljava/lang/Object;

    .line 97
    return-void
.end method

.method private greylist-max-o findRealOwner(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 275
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_5

    .line 276
    return-object p1

    .line 278
    :cond_5
    instance-of v0, p1, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_14

    .line 279
    check-cast p1, Landroid/content/ContextWrapper;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/view/MenuInflater;->findRealOwner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 281
    :cond_14
    return-object p1
.end method

.method private greylist-max-o getRealOwner()Ljava/lang/Object;
    .registers 2

    .line 268
    iget-object v0, p0, Landroid/view/MenuInflater;->mRealOwner:Ljava/lang/Object;

    if-nez v0, :cond_c

    .line 269
    iget-object v0, p0, Landroid/view/MenuInflater;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Landroid/view/MenuInflater;->findRealOwner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/view/MenuInflater;->mRealOwner:Ljava/lang/Object;

    .line 271
    :cond_c
    iget-object v0, p0, Landroid/view/MenuInflater;->mRealOwner:Ljava/lang/Object;

    return-object v0
.end method

.method private greylist-max-o parseMenu(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    new-instance v0, Landroid/view/MenuInflater$MenuState;

    invoke-direct {v0, p0, p3}, Landroid/view/MenuInflater$MenuState;-><init>(Landroid/view/MenuInflater;Landroid/view/Menu;)V

    .line 132
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p3

    .line 134
    nop

    .line 135
    nop

    .line 139
    :cond_b
    const/4 v1, 0x2

    const-string/jumbo v2, "menu"

    const/4 v3, 0x1

    if-ne p3, v1, :cond_3a

    .line 140
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p3

    .line 141
    invoke-virtual {p3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 143
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p3

    .line 144
    goto :goto_40

    .line 147
    :cond_21
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Expecting menu, got "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 149
    :cond_3a
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p3

    .line 150
    if-ne p3, v3, :cond_b

    .line 152
    :goto_40
    const/4 v1, 0x0

    const/4 v4, 0x0

    move v5, v1

    move v6, v5

    move-object v7, v4

    .line 153
    :goto_45
    if-nez v5, :cond_df

    .line 154
    const-string v8, "item"

    const-string v9, "group"

    packed-switch p3, :pswitch_data_e0

    goto/16 :goto_d9

    .line 179
    :pswitch_50
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p3

    .line 180
    if-eqz v6, :cond_61

    invoke-virtual {p3, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_61

    .line 181
    nop

    .line 182
    move v6, v1

    move-object v7, v4

    goto/16 :goto_d9

    .line 183
    :cond_61
    invoke-virtual {p3, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6c

    .line 184
    invoke-virtual {v0}, Landroid/view/MenuInflater$MenuState;->resetGroup()V

    goto/16 :goto_d9

    .line 185
    :cond_6c
    invoke-virtual {p3, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_98

    .line 188
    invoke-virtual {v0}, Landroid/view/MenuInflater$MenuState;->hasAddedItem()Z

    move-result p3

    if-nez p3, :cond_d9

    .line 189
    invoke-static {v0}, Landroid/view/MenuInflater$MenuState;->-$$Nest$fgetitemActionProvider(Landroid/view/MenuInflater$MenuState;)Landroid/view/ActionProvider;

    move-result-object p3

    if-eqz p3, :cond_90

    invoke-static {v0}, Landroid/view/MenuInflater$MenuState;->-$$Nest$fgetitemActionProvider(Landroid/view/MenuInflater$MenuState;)Landroid/view/ActionProvider;

    move-result-object p3

    .line 190
    invoke-virtual {p3}, Landroid/view/ActionProvider;->hasSubMenu()Z

    move-result p3

    if-eqz p3, :cond_90

    .line 191
    invoke-virtual {v0}, Landroid/view/MenuInflater$MenuState;->addSubMenuItem()Landroid/view/SubMenu;

    move-result-object p3

    invoke-direct {p0, p3, p2}, Landroid/view/MenuInflater;->registerMenu(Landroid/view/SubMenu;Landroid/util/AttributeSet;)V

    goto :goto_d9

    .line 193
    :cond_90
    invoke-virtual {v0}, Landroid/view/MenuInflater$MenuState;->addItem()Landroid/view/MenuItem;

    move-result-object p3

    invoke-direct {p0, p3, p2}, Landroid/view/MenuInflater;->registerMenu(Landroid/view/MenuItem;Landroid/util/AttributeSet;)V

    goto :goto_d9

    .line 196
    :cond_98
    invoke-virtual {p3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_d9

    .line 197
    move v5, v3

    goto :goto_d9

    .line 156
    :pswitch_a0
    if-eqz v6, :cond_a3

    .line 157
    goto :goto_d9

    .line 160
    :cond_a3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p3

    .line 161
    invoke-virtual {p3, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b1

    .line 162
    invoke-virtual {v0, p2}, Landroid/view/MenuInflater$MenuState;->readGroup(Landroid/util/AttributeSet;)V

    goto :goto_d9

    .line 163
    :cond_b1
    invoke-virtual {p3, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_bb

    .line 164
    invoke-virtual {v0, p2}, Landroid/view/MenuInflater$MenuState;->readItem(Landroid/util/AttributeSet;)V

    goto :goto_d9

    .line 165
    :cond_bb
    invoke-virtual {p3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_cc

    .line 167
    invoke-virtual {v0}, Landroid/view/MenuInflater$MenuState;->addSubMenuItem()Landroid/view/SubMenu;

    move-result-object p3

    .line 168
    invoke-direct {p0, p3, p2}, Landroid/view/MenuInflater;->registerMenu(Landroid/view/SubMenu;Landroid/util/AttributeSet;)V

    .line 171
    invoke-direct {p0, p1, p2, p3}, Landroid/view/MenuInflater;->parseMenu(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V

    .line 172
    goto :goto_d9

    .line 173
    :cond_cc
    nop

    .line 174
    nop

    .line 176
    move-object v7, p3

    move v6, v3

    goto :goto_d9

    .line 202
    :pswitch_d1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unexpected end of document"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 205
    :cond_d9
    :goto_d9
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p3

    goto/16 :goto_45

    .line 207
    :cond_df
    return-void

    :pswitch_data_e0
    .packed-switch 0x1
        :pswitch_d1
        :pswitch_a0
        :pswitch_50
    .end packed-switch
.end method

.method private greylist-max-o registerMenu(Landroid/view/MenuItem;Landroid/util/AttributeSet;)V
    .registers 3

    .line 216
    return-void
.end method

.method private greylist-max-o registerMenu(Landroid/view/SubMenu;Landroid/util/AttributeSet;)V
    .registers 3

    .line 225
    return-void
.end method


# virtual methods
.method greylist-max-o getContext()Landroid/content/Context;
    .registers 2

    .line 229
    iget-object v0, p0, Landroid/view/MenuInflater;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public whitelist inflate(ILandroid/view/Menu;)V
    .registers 6

    .line 109
    const-string v0, "Error inflating menu XML"

    .line 111
    const/4 v1, 0x0

    :try_start_3
    iget-object v2, p0, Landroid/view/MenuInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 112
    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p1

    .line 114
    invoke-direct {p0, v1, p1, p2}, Landroid/view/MenuInflater;->parseMenu(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V
    :try_end_14
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_14} :catch_23
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_14} :catch_1c
    .catchall {:try_start_3 .. :try_end_14} :catchall_1a

    .line 120
    if-eqz v1, :cond_19

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 122
    :cond_19
    return-void

    .line 120
    :catchall_1a
    move-exception p1

    goto :goto_2a

    .line 117
    :catch_1c
    move-exception p1

    .line 118
    :try_start_1d
    new-instance p2, Landroid/view/InflateException;

    invoke-direct {p2, v0, p1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 115
    :catch_23
    move-exception p1

    .line 116
    new-instance p2, Landroid/view/InflateException;

    invoke-direct {p2, v0, p1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_2a
    .catchall {:try_start_1d .. :try_end_2a} :catchall_1a

    .line 120
    :goto_2a
    if-eqz v1, :cond_2f

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 121
    :cond_2f
    throw p1
.end method
