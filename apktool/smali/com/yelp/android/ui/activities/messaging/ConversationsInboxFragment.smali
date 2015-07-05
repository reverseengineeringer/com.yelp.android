.class public Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;
.super Lcom/yelp/android/ui/activities/support/YelpListFragment;
.source "ConversationsInboxFragment.java"


# instance fields
.field private a:Lcom/yelp/android/bb/h;

.field private b:Lcom/yelp/android/ui/activities/messaging/apimanagers/d;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Conversation;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/yelp/android/ui/activities/messaging/a;

.field private e:Lcom/yelp/android/ui/util/ScrollToLoadListView;

.field private g:Ljava/lang/String;

.field private h:Lcom/yelp/android/serializable/Conversation;

.field private i:Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;

.field private j:Z

.field private k:Z

.field private l:Z

.field private final m:Lcom/yelp/android/services/push/j;

.field private final n:Lcom/yelp/android/ui/activities/messaging/apimanagers/p;

.field private final o:Lcom/yelp/android/ui/activities/messaging/apimanagers/g;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;-><init>()V

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->j:Z

    .line 216
    new-instance v0, Lcom/yelp/android/ui/activities/messaging/q;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/messaging/q;-><init>(Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->m:Lcom/yelp/android/services/push/j;

    .line 243
    new-instance v0, Lcom/yelp/android/ui/activities/messaging/s;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/messaging/s;-><init>(Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->n:Lcom/yelp/android/ui/activities/messaging/apimanagers/p;

    .line 312
    new-instance v0, Lcom/yelp/android/ui/activities/messaging/t;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/messaging/t;-><init>(Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->o:Lcom/yelp/android/ui/activities/messaging/apimanagers/g;

    return-void
.end method

.method public static a(Ljava/util/ArrayList;Lcom/yelp/android/serializable/Conversation;)Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/Conversation;",
            ">;",
            "Lcom/yelp/android/serializable/Conversation;",
            ")",
            "Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;"
        }
    .end annotation

    .prologue
    .line 78
    new-instance v0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;-><init>()V

    .line 79
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 80
    const-string/jumbo v2, "conversations"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 81
    const-string/jumbo v2, "current_conversation"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 82
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->setArguments(Landroid/os/Bundle;)V

    .line 83
    return-object v0
.end method

.method public static a(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/Conversation;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;"
        }
    .end annotation

    .prologue
    .line 68
    new-instance v0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;-><init>()V

    .line 69
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 70
    const-string/jumbo v2, "conversations"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 71
    const-string/jumbo v2, "conversation_id"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->setArguments(Landroid/os/Bundle;)V

    .line 73
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;)Lcom/yelp/android/ui/activities/messaging/apimanagers/d;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->b:Lcom/yelp/android/ui/activities/messaging/apimanagers/d;

    return-object v0
.end method

.method private a(Landroid/view/ContextMenu;Lcom/yelp/android/serializable/Conversation;)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 266
    invoke-virtual {p2}, Lcom/yelp/android/serializable/Conversation;->getOtherUser()Lcom/yelp/android/serializable/bg;

    move-result-object v0

    invoke-interface {v0}, Lcom/yelp/android/serializable/bg;->isBlocked()Z

    move-result v3

    .line 267
    invoke-virtual {p2}, Lcom/yelp/android/serializable/Conversation;->getBizUser()Lcom/yelp/android/serializable/BusinessUser;

    move-result-object v4

    .line 268
    const v0, 0x7f0c04f5

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 269
    if-nez v3, :cond_0

    move v0, v1

    :goto_0
    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 270
    if-eqz v4, :cond_1

    const v0, 0x7f0700df

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 274
    const v0, 0x7f0c04f6

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 275
    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 276
    if-eqz v4, :cond_2

    const v0, 0x7f07062d

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 279
    return-void

    :cond_0
    move v0, v2

    .line 269
    goto :goto_0

    .line 270
    :cond_1
    const v0, 0x7f0700e0

    new-array v6, v1, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/yelp/android/serializable/Conversation;->getOtherUser()Lcom/yelp/android/serializable/bg;

    move-result-object v7

    invoke-interface {v7}, Lcom/yelp/android/serializable/bg;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-virtual {p0, v0, v6}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 276
    :cond_2
    const v0, 0x7f07062e

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/yelp/android/serializable/Conversation;->getOtherUser()Lcom/yelp/android/serializable/bg;

    move-result-object v3

    invoke-interface {v3}, Lcom/yelp/android/serializable/bg;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;Z)Z
    .locals 0

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->k:Z

    return p1
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->l()V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 481
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->a:Lcom/yelp/android/bb/h;

    invoke-virtual {v0, p1}, Lcom/yelp/android/bb/h;->b(Ljava/lang/String;)I

    move-result v0

    .line 483
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 484
    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->e:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    new-instance v2, Lcom/yelp/android/ui/activities/messaging/v;

    invoke-direct {v2, p0, v0}, Lcom/yelp/android/ui/activities/messaging/v;-><init>(Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;I)V

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->post(Ljava/lang/Runnable;)Z

    .line 491
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;Z)Z
    .locals 0

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->j:Z

    return p1
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;)Lcom/yelp/android/ui/activities/messaging/a;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->d:Lcom/yelp/android/ui/activities/messaging/a;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;Z)Z
    .locals 0

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->l:Z

    return p1
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;)Lcom/yelp/android/serializable/Conversation;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->h:Lcom/yelp/android/serializable/Conversation;

    return-object v0
.end method

.method static synthetic e(Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;)Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->i:Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;

    return-object v0
.end method

.method static synthetic f(Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->k()V

    return-void
.end method

.method static synthetic g(Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;)Lcom/yelp/android/ui/util/ScrollToLoadListView;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->e:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    return-object v0
.end method

.method static synthetic h(Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private h()V
    .locals 1

    .prologue
    .line 435
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->MessagingNewConversationFromInbox:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;)V

    .line 436
    return-void
.end method

.method static synthetic i(Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;)Lcom/yelp/android/bb/h;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->a:Lcom/yelp/android/bb/h;

    return-object v0
.end method

.method private i()Ljava/lang/String;
    .locals 2

    .prologue
    .line 466
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->a:Lcom/yelp/android/bb/h;

    invoke-virtual {v0}, Lcom/yelp/android/bb/h;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 467
    const/4 v0, 0x0

    .line 477
    :goto_0
    return-object v0

    .line 469
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->h:Lcom/yelp/android/serializable/Conversation;

    if-eqz v0, :cond_1

    .line 470
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->h:Lcom/yelp/android/serializable/Conversation;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Conversation;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 473
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->a:Lcom/yelp/android/bb/h;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/bb/h;->a(Ljava/lang/String;)Lcom/yelp/android/serializable/Conversation;

    move-result-object v0

    if-nez v0, :cond_2

    .line 474
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->a:Lcom/yelp/android/bb/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/bb/h;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Conversation;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Conversation;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 477
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->g:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic j(Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;)Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->k:Z

    return v0
.end method

.method private k()V
    .locals 1

    .prologue
    .line 555
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/support/YelpActivity;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->enableLoading()V

    .line 556
    return-void
.end method

.method static synthetic k(Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;)Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->l:Z

    return v0
.end method

.method private l()V
    .locals 1

    .prologue
    .line 559
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/support/YelpActivity;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->disableLoading()V

    .line 560
    return-void
.end method

.method static synthetic l(Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->u()V

    return-void
.end method

.method private u()V
    .locals 1

    .prologue
    .line 567
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->b:Lcom/yelp/android/ui/activities/messaging/apimanagers/d;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/d;->e()V

    .line 568
    return-void
.end method


# virtual methods
.method public a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2

    .prologue
    .line 428
    invoke-super/range {p0 .. p5}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->a(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 429
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->a:Lcom/yelp/android/bb/h;

    invoke-virtual {v0, p3}, Lcom/yelp/android/bb/h;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Conversation;

    .line 430
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Conversation;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->a(Ljava/lang/String;)V

    .line 431
    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->d:Lcom/yelp/android/ui/activities/messaging/a;

    invoke-interface {v1, v0}, Lcom/yelp/android/ui/activities/messaging/a;->a(Lcom/yelp/android/serializable/Conversation;)V

    .line 432
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/Conversation;)V
    .locals 6

    .prologue
    .line 504
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 505
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 506
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->a:Lcom/yelp/android/bb/h;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Conversation;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/bb/h;->b(Ljava/lang/String;)I

    move-result v0

    .line 507
    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->a:Lcom/yelp/android/bb/h;

    invoke-virtual {v1, p1}, Lcom/yelp/android/bb/h;->b(Ljava/lang/Object;)V

    .line 508
    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->a:Lcom/yelp/android/bb/h;

    invoke-virtual {v1}, Lcom/yelp/android/bb/h;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 509
    add-int/lit8 v0, v0, -0x1

    .line 512
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->a:Lcom/yelp/android/bb/h;

    invoke-virtual {v1}, Lcom/yelp/android/bb/h;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 513
    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->e:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->r()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-virtual {v1, v2, v0, v4, v5}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 520
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->a:Lcom/yelp/android/bb/h;

    invoke-virtual {v0}, Lcom/yelp/android/bb/h;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 521
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->a_()V

    .line 523
    :cond_2
    return-void

    .line 517
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->a:Lcom/yelp/android/bb/h;

    invoke-virtual {v0, p1}, Lcom/yelp/android/bb/h;->b(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a(Lcom/yelp/android/serializable/bg;)V
    .locals 3

    .prologue
    .line 575
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->a:Lcom/yelp/android/bb/h;

    invoke-virtual {v0}, Lcom/yelp/android/bb/h;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Conversation;

    .line 576
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Conversation;->getOtherUser()Lcom/yelp/android/serializable/bg;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 577
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Conversation;->getOtherUser()Lcom/yelp/android/serializable/bg;

    move-result-object v0

    invoke-interface {p1}, Lcom/yelp/android/serializable/bg;->isBlocked()Z

    move-result v2

    invoke-interface {v0, v2}, Lcom/yelp/android/serializable/bg;->setBlocked(Z)V

    goto :goto_0

    .line 580
    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 458
    iput-object p1, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->g:Ljava/lang/String;

    .line 459
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->a:Lcom/yelp/android/bb/h;

    invoke-virtual {v0, p1}, Lcom/yelp/android/bb/h;->c(Ljava/lang/String;)V

    .line 460
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->a:Lcom/yelp/android/bb/h;

    invoke-virtual {v0}, Lcom/yelp/android/bb/h;->notifyDataSetChanged()V

    .line 461
    return-void
.end method

.method public a_()V
    .locals 1

    .prologue
    .line 544
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/support/YelpActivity;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->clearError()V

    .line 545
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->b:Lcom/yelp/android/ui/activities/messaging/apimanagers/d;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/d;->c()V

    .line 546
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->j:Z

    if-eqz v0, :cond_0

    .line 547
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->k()V

    .line 549
    :cond_0
    return-void
.end method

.method public b(Lcom/yelp/android/serializable/Conversation;)V
    .locals 1

    .prologue
    .line 571
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->a:Lcom/yelp/android/bb/h;

    invoke-virtual {v0, p1}, Lcom/yelp/android/bb/h;->a(Lcom/yelp/android/serializable/Conversation;)V

    .line 572
    return-void
.end method

.method public d()Lcom/yelp/android/serializable/Conversation;
    .locals 2

    .prologue
    .line 526
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 527
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->a:Lcom/yelp/android/bb/h;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/bb/h;->a(Ljava/lang/String;)Lcom/yelp/android/serializable/Conversation;

    move-result-object v0

    .line 531
    :goto_0
    return-object v0

    .line 528
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->h:Lcom/yelp/android/serializable/Conversation;

    if-eqz v0, :cond_1

    .line 529
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->h:Lcom/yelp/android/serializable/Conversation;

    goto :goto_0

    .line 531
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Conversation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 535
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->a:Lcom/yelp/android/bb/h;

    invoke-virtual {v0}, Lcom/yelp/android/bb/h;->b()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public f()V
    .locals 0

    .prologue
    .line 539
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->a_()V

    .line 540
    return-void
.end method

.method public g()V
    .locals 1

    .prologue
    .line 563
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->b:Lcom/yelp/android/ui/activities/messaging/apimanagers/d;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/d;->d()V

    .line 564
    return-void
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 213
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->MessagingInbox:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method protected j_()V
    .locals 2

    .prologue
    .line 440
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->b:Lcom/yelp/android/ui/activities/messaging/apimanagers/d;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/d;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->e:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    new-instance v1, Lcom/yelp/android/ui/activities/messaging/u;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/messaging/u;-><init>(Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setOnLoadNeeded(Ljava/lang/Runnable;)V

    .line 453
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->a:Lcom/yelp/android/bb/h;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->a(Landroid/widget/ListAdapter;)V

    .line 455
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 120
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 122
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v4, :cond_2

    .line 123
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->registerForContextMenu(Landroid/view/View;)V

    .line 128
    :goto_0
    iput-boolean v1, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->k:Z

    .line 130
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->b:Lcom/yelp/android/ui/activities/messaging/apimanagers/d;

    if-nez v0, :cond_0

    .line 131
    new-instance v0, Lcom/yelp/android/ui/activities/messaging/apimanagers/d;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->c:Ljava/util/List;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->o:Lcom/yelp/android/ui/activities/messaging/apimanagers/g;

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/messaging/apimanagers/d;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/yelp/android/ui/activities/messaging/apimanagers/g;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->b:Lcom/yelp/android/ui/activities/messaging/apimanagers/d;

    .line 133
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->b:Lcom/yelp/android/ui/activities/messaging/apimanagers/d;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/d;->b()Lcom/yelp/android/bb/h;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->a:Lcom/yelp/android/bb/h;

    .line 134
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->a:Lcom/yelp/android/bb/h;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->a(Landroid/widget/ListAdapter;)V

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->a:Lcom/yelp/android/bb/h;

    invoke-virtual {v0}, Lcom/yelp/android/bb/h;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->a_()V

    .line 140
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->j_()V

    .line 141
    invoke-virtual {p0, v4}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->setHasOptionsMenu(Z)V

    .line 142
    return-void

    .line 125
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->e:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setVerticalScrollBarEnabled(Z)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 146
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 147
    const/16 v0, 0x406

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 148
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->j:Z

    .line 150
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 109
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onAttach(Landroid/app/Activity;)V

    .line 111
    :try_start_0
    check-cast p1, Lcom/yelp/android/ui/activities/messaging/a;

    iput-object p1, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->d:Lcom/yelp/android/ui/activities/messaging/a;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    return-void

    .line 112
    :catch_0
    move-exception v0

    .line 113
    new-instance v0, Ljava/lang/ClassCastException;

    const-string/jumbo v1, "The corresponding activity must implement the ActivityMessagingListener interface"

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 297
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 298
    packed-switch v1, :pswitch_data_0

    .line 303
    iget-object v2, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->i:Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    iget-object v4, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->h:Lcom/yelp/android/serializable/Conversation;

    invoke-virtual {v2, v3, v1, v4}, Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;->a(Landroid/support/v4/app/FragmentManager;ILcom/yelp/android/serializable/Conversation;)Z

    move-result v1

    .line 309
    if-nez v1, :cond_0

    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    .line 300
    :pswitch_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->d:Lcom/yelp/android/ui/activities/messaging/a;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->h:Lcom/yelp/android/serializable/Conversation;

    invoke-interface {v1, v2}, Lcom/yelp/android/ui/activities/messaging/a;->a(Lcom/yelp/android/serializable/Conversation;)V

    goto :goto_0

    .line 309
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 298
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c04fa
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 88
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 89
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 90
    const-string/jumbo v0, "current_conversation"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Conversation;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->h:Lcom/yelp/android/serializable/Conversation;

    .line 91
    const-string/jumbo v0, "conversation_id"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->g:Ljava/lang/String;

    .line 92
    const-string/jumbo v0, "conversations"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->c:Ljava/util/List;

    .line 94
    new-instance v0, Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->n:Lcom/yelp/android/ui/activities/messaging/apimanagers/p;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->d:Lcom/yelp/android/ui/activities/messaging/a;

    invoke-interface {v2}, Lcom/yelp/android/ui/activities/messaging/a;->d()Lcom/yelp/android/ui/activities/messaging/ActivityMessaging$MessagingActionsFragment;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;-><init>(Lcom/yelp/android/ui/activities/messaging/apimanagers/p;Lcom/yelp/android/ui/activities/messaging/ActivityMessaging$MessagingActionsFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->i:Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;

    .line 96
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->i:Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;->a(Landroid/support/v4/app/FragmentActivity;)V

    .line 97
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->i:Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->h:Lcom/yelp/android/serializable/Conversation;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;->a(Lcom/yelp/android/serializable/Conversation;)V

    .line 99
    if-nez p1, :cond_0

    .line 100
    iput-boolean v3, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->l:Z

    .line 105
    :goto_0
    return-void

    .line 102
    :cond_0
    const-string/jumbo v0, "have_received_count"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->l:Z

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2

    .prologue
    .line 283
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100009

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 285
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 286
    check-cast p2, Landroid/widget/ListView;

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Conversation;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->h:Lcom/yelp/android/serializable/Conversation;

    .line 287
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->i:Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->h:Lcom/yelp/android/serializable/Conversation;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;->a(Lcom/yelp/android/serializable/Conversation;)V

    .line 288
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->h:Lcom/yelp/android/serializable/Conversation;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Conversation;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->a(Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->h:Lcom/yelp/android/serializable/Conversation;

    invoke-direct {p0, p1, v0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->a(Landroid/view/ContextMenu;Lcom/yelp/android/serializable/Conversation;)V

    .line 290
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->h:Lcom/yelp/android/serializable/Conversation;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Conversation;->getSubject()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 291
    const v0, 0x7f020078

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderIcon(I)Landroid/view/ContextMenu;

    .line 292
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .prologue
    .line 408
    const v0, 0x7f100008

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 409
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 155
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 156
    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/ui/util/ScrollToLoadListView;

    iput-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->e:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    .line 157
    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 205
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onDestroy()V

    .line 208
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->i:Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;->a()V

    .line 209
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 413
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 421
    const/4 v0, 0x0

    .line 423
    :goto_0
    return v0

    .line 415
    :pswitch_0
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->h()V

    .line 416
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/ActivityComposeMessage;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x406

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 423
    const/4 v0, 0x1

    goto :goto_0

    .line 413
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c04f9
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 190
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onPause()V

    .line 191
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->d:Lcom/yelp/android/ui/activities/messaging/a;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/messaging/a;->d()Lcom/yelp/android/ui/activities/messaging/ActivityMessaging$MessagingActionsFragment;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging$MessagingActionsFragment;->a(Lcom/yelp/android/ui/activities/messaging/apimanagers/p;Lcom/yelp/android/ui/activities/messaging/apimanagers/p;)V

    .line 192
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->c()Lcom/yelp/android/services/push/i;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->m:Lcom/yelp/android/services/push/j;

    invoke-virtual {v0, v1}, Lcom/yelp/android/services/push/i;->b(Lcom/yelp/android/services/push/j;)V

    .line 193
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->b:Lcom/yelp/android/ui/activities/messaging/apimanagers/d;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/d;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->b:Lcom/yelp/android/ui/activities/messaging/apimanagers/d;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/d;->h()V

    .line 196
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 162
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onResume()V

    .line 166
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->d:Lcom/yelp/android/ui/activities/messaging/a;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/messaging/a;->d()Lcom/yelp/android/ui/activities/messaging/ActivityMessaging$MessagingActionsFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->n:Lcom/yelp/android/ui/activities/messaging/apimanagers/p;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging$MessagingActionsFragment;->a(Lcom/yelp/android/ui/activities/messaging/apimanagers/p;Lcom/yelp/android/ui/activities/messaging/apimanagers/p;)V

    .line 168
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->c()Lcom/yelp/android/services/push/i;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->m:Lcom/yelp/android/services/push/j;

    invoke-virtual {v0, v1}, Lcom/yelp/android/services/push/i;->a(Lcom/yelp/android/services/push/j;)V

    .line 171
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f070388

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setTitle(I)V

    .line 173
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->a:Lcom/yelp/android/bb/h;

    invoke-virtual {v0}, Lcom/yelp/android/bb/h;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 174
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->g()V

    .line 181
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 182
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 183
    iput-object v2, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->g:Ljava/lang/String;

    .line 184
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/support/YelpActivity;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->showHotButtons()V

    .line 186
    :cond_1
    return-void

    .line 175
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->b:Lcom/yelp/android/ui/activities/messaging/apimanagers/d;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/d;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 178
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->a_()V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 199
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 200
    const-string/jumbo v0, "have_received_count"

    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->l:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 201
    return-void
.end method
