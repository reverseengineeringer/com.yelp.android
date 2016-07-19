.class public Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;
.super Lcom/yelp/android/ui/activities/support/YelpListFragment;
.source "ConversationsInboxFragment.java"


# instance fields
.field private a:Lcom/yelp/android/cl/c;

.field private b:Lcom/yelp/android/ui/activities/messaging/apimanagers/b;

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

.field private f:Ljava/lang/String;

.field private g:Lcom/yelp/android/serializable/Conversation;

.field private i:Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;

.field private j:Z

.field private k:Z

.field private l:Z

.field private final m:Lcom/yelp/android/services/push/e$a;

.field private final n:Lcom/yelp/android/ui/activities/messaging/apimanagers/g$a;

.field private final o:Lcom/yelp/android/ui/activities/messaging/apimanagers/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;-><init>()V

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->j:Z

    .line 220
    new-instance v0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment$1;-><init>(Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->m:Lcom/yelp/android/services/push/e$a;

    .line 251
    new-instance v0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment$2;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment$2;-><init>(Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->n:Lcom/yelp/android/ui/activities/messaging/apimanagers/g$a;

    .line 326
    new-instance v0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment$3;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment$3;-><init>(Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->o:Lcom/yelp/android/ui/activities/messaging/apimanagers/c;

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

.method static synthetic a(Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;)Lcom/yelp/android/ui/activities/messaging/apimanagers/b;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->b:Lcom/yelp/android/ui/activities/messaging/apimanagers/b;

    return-object v0
.end method

.method private a(Landroid/view/ContextMenu;Lcom/yelp/android/serializable/Conversation;)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 276
    invoke-virtual {p2}, Lcom/yelp/android/serializable/Conversation;->a()Lcom/yelp/android/serializable/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/yelp/android/serializable/e;->b()Z

    move-result v3

    .line 277
    invoke-virtual {p2}, Lcom/yelp/android/serializable/Conversation;->k()Lcom/yelp/android/serializable/BusinessUser;

    move-result-object v4

    .line 278
    const v0, 0x7f0f05ff

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 279
    if-nez v3, :cond_0

    move v0, v1

    :goto_0
    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 280
    if-eqz v4, :cond_1

    const v0, 0x7f07016a

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 285
    const v0, 0x7f0f0600

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 286
    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 287
    if-eqz v4, :cond_2

    const v0, 0x7f070619

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 291
    return-void

    :cond_0
    move v0, v2

    .line 279
    goto :goto_0

    .line 280
    :cond_1
    const v0, 0x7f07016b

    new-array v6, v1, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/yelp/android/serializable/Conversation;->a()Lcom/yelp/android/serializable/e;

    move-result-object v7

    invoke-interface {v7}, Lcom/yelp/android/serializable/e;->c()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-virtual {p0, v0, v6}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 287
    :cond_2
    const v0, 0x7f07061a

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/yelp/android/serializable/Conversation;->a()Lcom/yelp/android/serializable/e;

    move-result-object v3

    invoke-interface {v3}, Lcom/yelp/android/serializable/e;->c()Ljava/lang/String;

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
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->t()V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 498
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->a:Lcom/yelp/android/cl/c;

    invoke-virtual {v0, p1}, Lcom/yelp/android/cl/c;->b(Ljava/lang/String;)I

    move-result v0

    .line 500
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 501
    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->e:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    new-instance v2, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment$5;

    invoke-direct {v2, p0, v0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment$5;-><init>(Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;I)V

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->post(Ljava/lang/Runnable;)Z

    .line 509
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
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->g:Lcom/yelp/android/serializable/Conversation;

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
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic i(Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;)Lcom/yelp/android/cl/c;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->a:Lcom/yelp/android/cl/c;

    return-object v0
.end method

.method private i()V
    .locals 1

    .prologue
    .line 451
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->MessagingNewConversationFromInbox:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 452
    return-void
.end method

.method private j()Ljava/lang/String;
    .locals 2

    .prologue
    .line 483
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->a:Lcom/yelp/android/cl/c;

    invoke-virtual {v0}, Lcom/yelp/android/cl/c;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 484
    const/4 v0, 0x0

    .line 494
    :goto_0
    return-object v0

    .line 486
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->g:Lcom/yelp/android/serializable/Conversation;

    if-eqz v0, :cond_1

    .line 487
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->g:Lcom/yelp/android/serializable/Conversation;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Conversation;->h()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 490
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->a:Lcom/yelp/android/cl/c;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/cl/c;->a(Ljava/lang/String;)Lcom/yelp/android/serializable/Conversation;

    move-result-object v0

    if-nez v0, :cond_2

    .line 491
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->a:Lcom/yelp/android/cl/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/cl/c;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Conversation;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Conversation;->h()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 494
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->f:Ljava/lang/String;

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
    .line 573
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/support/YelpActivity;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->enableLoading()V

    .line 574
    return-void
.end method

.method static synthetic k(Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;)Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->l:Z

    return v0
.end method

.method static synthetic l(Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->u()V

    return-void
.end method

.method private t()V
    .locals 1

    .prologue
    .line 577
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/support/YelpActivity;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->disableLoading()V

    .line 578
    return-void
.end method

.method private u()V
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->b:Lcom/yelp/android/ui/activities/messaging/apimanagers/b;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/b;->e()V

    .line 586
    return-void
.end method


# virtual methods
.method public G_()Lcom/yelp/android/serializable/Conversation;
    .locals 2

    .prologue
    .line 544
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 545
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->a:Lcom/yelp/android/cl/c;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/cl/c;->a(Ljava/lang/String;)Lcom/yelp/android/serializable/Conversation;

    move-result-object v0

    .line 549
    :goto_0
    return-object v0

    .line 546
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->g:Lcom/yelp/android/serializable/Conversation;

    if-eqz v0, :cond_1

    .line 547
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->g:Lcom/yelp/android/serializable/Conversation;

    goto :goto_0

    .line 549
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2

    .prologue
    .line 444
    invoke-super/range {p0 .. p5}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->a(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 445
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->a:Lcom/yelp/android/cl/c;

    invoke-virtual {v0, p3}, Lcom/yelp/android/cl/c;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Conversation;

    .line 446
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Conversation;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->a(Ljava/lang/String;)V

    .line 447
    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->d:Lcom/yelp/android/ui/activities/messaging/a;

    invoke-interface {v1, v0}, Lcom/yelp/android/ui/activities/messaging/a;->a(Lcom/yelp/android/serializable/Conversation;)V

    .line 448
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/Conversation;)V
    .locals 6

    .prologue
    .line 522
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 523
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 524
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->a:Lcom/yelp/android/cl/c;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Conversation;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/cl/c;->b(Ljava/lang/String;)I

    move-result v0

    .line 525
    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->a:Lcom/yelp/android/cl/c;

    invoke-virtual {v1, p1}, Lcom/yelp/android/cl/c;->c(Ljava/lang/Object;)V

    .line 526
    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->a:Lcom/yelp/android/cl/c;

    invoke-virtual {v1}, Lcom/yelp/android/cl/c;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 527
    add-int/lit8 v0, v0, -0x1

    .line 530
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->a:Lcom/yelp/android/cl/c;

    invoke-virtual {v1}, Lcom/yelp/android/cl/c;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 531
    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->e:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->q()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-virtual {v1, v2, v0, v4, v5}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 538
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->a:Lcom/yelp/android/cl/c;

    invoke-virtual {v0}, Lcom/yelp/android/cl/c;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 539
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->p_()V

    .line 541
    :cond_2
    return-void

    .line 535
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->a:Lcom/yelp/android/cl/c;

    invoke-virtual {v0, p1}, Lcom/yelp/android/cl/c;->c(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a(Lcom/yelp/android/serializable/e;)V
    .locals 3

    .prologue
    .line 593
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->a:Lcom/yelp/android/cl/c;

    invoke-virtual {v0}, Lcom/yelp/android/cl/c;->b()Ljava/util/List;

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

    .line 594
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Conversation;->a()Lcom/yelp/android/serializable/e;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 595
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Conversation;->a()Lcom/yelp/android/serializable/e;

    move-result-object v0

    invoke-interface {p1}, Lcom/yelp/android/serializable/e;->b()Z

    move-result v2

    invoke-interface {v0, v2}, Lcom/yelp/android/serializable/e;->a(Z)V

    goto :goto_0

    .line 598
    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 475
    iput-object p1, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->f:Ljava/lang/String;

    .line 476
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->a:Lcom/yelp/android/cl/c;

    invoke-virtual {v0, p1}, Lcom/yelp/android/cl/c;->c(Ljava/lang/String;)V

    .line 477
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->a:Lcom/yelp/android/cl/c;

    invoke-virtual {v0}, Lcom/yelp/android/cl/c;->notifyDataSetChanged()V

    .line 478
    return-void
.end method

.method public b(Lcom/yelp/android/serializable/Conversation;)V
    .locals 1

    .prologue
    .line 589
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->a:Lcom/yelp/android/cl/c;

    invoke-virtual {v0, p1}, Lcom/yelp/android/cl/c;->a(Lcom/yelp/android/serializable/Conversation;)V

    .line 590
    return-void
.end method

.method public f()Ljava/util/List;
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
    .line 553
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->a:Lcom/yelp/android/cl/c;

    invoke-virtual {v0}, Lcom/yelp/android/cl/c;->b()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public g()V
    .locals 0

    .prologue
    .line 557
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->p_()V

    .line 558
    return-void
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 217
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->MessagingInbox:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public h()V
    .locals 1

    .prologue
    .line 581
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->b:Lcom/yelp/android/ui/activities/messaging/apimanagers/b;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/b;->d()V

    .line 582
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 121
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 123
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v4, :cond_2

    .line 124
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->registerForContextMenu(Landroid/view/View;)V

    .line 129
    :goto_0
    iput-boolean v1, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->k:Z

    .line 131
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->b:Lcom/yelp/android/ui/activities/messaging/apimanagers/b;

    if-nez v0, :cond_0

    .line 132
    new-instance v0, Lcom/yelp/android/ui/activities/messaging/apimanagers/b;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->c:Ljava/util/List;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->o:Lcom/yelp/android/ui/activities/messaging/apimanagers/c;

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/messaging/apimanagers/b;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/yelp/android/ui/activities/messaging/apimanagers/c;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->b:Lcom/yelp/android/ui/activities/messaging/apimanagers/b;

    .line 137
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->b:Lcom/yelp/android/ui/activities/messaging/apimanagers/b;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/b;->b()Lcom/yelp/android/cl/c;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->a:Lcom/yelp/android/cl/c;

    .line 138
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->a:Lcom/yelp/android/cl/c;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->a(Landroid/widget/ListAdapter;)V

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->a:Lcom/yelp/android/cl/c;

    invoke-virtual {v0}, Lcom/yelp/android/cl/c;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->p_()V

    .line 144
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->u_()V

    .line 145
    invoke-virtual {p0, v4}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->setHasOptionsMenu(Z)V

    .line 146
    return-void

    .line 126
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->e:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setVerticalScrollBarEnabled(Z)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 150
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 151
    const/16 v0, 0x409

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 152
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->j:Z

    .line 154
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 110
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onAttach(Landroid/app/Activity;)V

    .line 112
    :try_start_0
    check-cast p1, Lcom/yelp/android/ui/activities/messaging/a;

    iput-object p1, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->d:Lcom/yelp/android/ui/activities/messaging/a;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    return-void

    .line 113
    :catch_0
    move-exception v0

    .line 114
    new-instance v0, Ljava/lang/ClassCastException;

    const-string/jumbo v1, "The corresponding activity must implement the ActivityMessagingListener interface"

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 309
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 310
    packed-switch v1, :pswitch_data_0

    .line 315
    iget-object v2, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->i:Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v3

    iget-object v4, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->g:Lcom/yelp/android/serializable/Conversation;

    invoke-virtual {v2, v3, v1, v4}, Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;->a(Landroid/support/v4/app/l;ILcom/yelp/android/serializable/Conversation;)Z

    move-result v1

    .line 323
    if-nez v1, :cond_0

    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    .line 312
    :pswitch_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->d:Lcom/yelp/android/ui/activities/messaging/a;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->g:Lcom/yelp/android/serializable/Conversation;

    invoke-interface {v1, v2}, Lcom/yelp/android/ui/activities/messaging/a;->a(Lcom/yelp/android/serializable/Conversation;)V

    goto :goto_0

    .line 323
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 310
    nop

    :pswitch_data_0
    .packed-switch 0x7f0f0604
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

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->g:Lcom/yelp/android/serializable/Conversation;

    .line 91
    const-string/jumbo v0, "conversation_id"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->f:Ljava/lang/String;

    .line 92
    const-string/jumbo v0, "conversations"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->c:Ljava/util/List;

    .line 94
    new-instance v0, Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->n:Lcom/yelp/android/ui/activities/messaging/apimanagers/g$a;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->d:Lcom/yelp/android/ui/activities/messaging/a;

    invoke-interface {v2}, Lcom/yelp/android/ui/activities/messaging/a;->c()Lcom/yelp/android/ui/activities/messaging/ActivityMessaging$MessagingActionsFragment;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;-><init>(Lcom/yelp/android/ui/activities/messaging/apimanagers/g$a;Lcom/yelp/android/ui/activities/messaging/ActivityMessaging$MessagingActionsFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->i:Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;

    .line 97
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->i:Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;->a(Landroid/support/v4/app/FragmentActivity;)V

    .line 98
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->i:Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->g:Lcom/yelp/android/serializable/Conversation;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;->a(Lcom/yelp/android/serializable/Conversation;)V

    .line 100
    if-nez p1, :cond_0

    .line 101
    iput-boolean v3, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->l:Z

    .line 106
    :goto_0
    return-void

    .line 103
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
    .line 295
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f10000b

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 297
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 298
    check-cast p2, Landroid/widget/ListView;

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Conversation;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->g:Lcom/yelp/android/serializable/Conversation;

    .line 299
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->i:Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->g:Lcom/yelp/android/serializable/Conversation;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;->a(Lcom/yelp/android/serializable/Conversation;)V

    .line 300
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->g:Lcom/yelp/android/serializable/Conversation;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Conversation;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->a(Ljava/lang/String;)V

    .line 301
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->g:Lcom/yelp/android/serializable/Conversation;

    invoke-direct {p0, p1, v0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->a(Landroid/view/ContextMenu;Lcom/yelp/android/serializable/Conversation;)V

    .line 302
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->g:Lcom/yelp/android/serializable/Conversation;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Conversation;->g()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 303
    const v0, 0x7f02008e

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderIcon(I)Landroid/view/ContextMenu;

    .line 304
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .prologue
    .line 424
    const v0, 0x7f10000a

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 425
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 159
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 160
    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/ui/util/ScrollToLoadListView;

    iput-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->e:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    .line 161
    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 209
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onDestroy()V

    .line 212
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->i:Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;->a()V

    .line 213
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 429
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 437
    const/4 v0, 0x0

    .line 439
    :goto_0
    return v0

    .line 431
    :pswitch_0
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->i()V

    .line 432
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/ActivityComposeMessage;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x409

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 439
    const/4 v0, 0x1

    goto :goto_0

    .line 429
    nop

    :pswitch_data_0
    .packed-switch 0x7f0f0603
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 193
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onPause()V

    .line 194
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->d:Lcom/yelp/android/ui/activities/messaging/a;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/messaging/a;->c()Lcom/yelp/android/ui/activities/messaging/ActivityMessaging$MessagingActionsFragment;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging$MessagingActionsFragment;->a(Lcom/yelp/android/ui/activities/messaging/apimanagers/g$a;Lcom/yelp/android/ui/activities/messaging/apimanagers/g$a;)V

    .line 195
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->c()Lcom/yelp/android/services/push/e;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->m:Lcom/yelp/android/services/push/e$a;

    invoke-virtual {v0, v1}, Lcom/yelp/android/services/push/e;->b(Lcom/yelp/android/services/push/e$a;)V

    .line 196
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->b:Lcom/yelp/android/ui/activities/messaging/apimanagers/b;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/b;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->b:Lcom/yelp/android/ui/activities/messaging/apimanagers/b;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/b;->h()V

    .line 199
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 166
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onResume()V

    .line 170
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->d:Lcom/yelp/android/ui/activities/messaging/a;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/messaging/a;->c()Lcom/yelp/android/ui/activities/messaging/ActivityMessaging$MessagingActionsFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->n:Lcom/yelp/android/ui/activities/messaging/apimanagers/g$a;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging$MessagingActionsFragment;->a(Lcom/yelp/android/ui/activities/messaging/apimanagers/g$a;Lcom/yelp/android/ui/activities/messaging/apimanagers/g$a;)V

    .line 171
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->c()Lcom/yelp/android/services/push/e;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->m:Lcom/yelp/android/services/push/e$a;

    invoke-virtual {v0, v1}, Lcom/yelp/android/services/push/e;->a(Lcom/yelp/android/services/push/e$a;)V

    .line 174
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0703c6

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setTitle(I)V

    .line 176
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->a:Lcom/yelp/android/cl/c;

    invoke-virtual {v0}, Lcom/yelp/android/cl/c;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 177
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->h()V

    .line 184
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 185
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 186
    iput-object v2, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->f:Ljava/lang/String;

    .line 187
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/support/YelpActivity;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->showHotButtons()V

    .line 189
    :cond_1
    return-void

    .line 178
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->b:Lcom/yelp/android/ui/activities/messaging/apimanagers/b;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/b;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->p_()V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 203
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 204
    const-string/jumbo v0, "have_received_count"

    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->l:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 205
    return-void
.end method

.method public p_()V
    .locals 1

    .prologue
    .line 562
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/support/YelpActivity;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->clearError()V

    .line 563
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->b:Lcom/yelp/android/ui/activities/messaging/apimanagers/b;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/b;->c()V

    .line 564
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->j:Z

    if-eqz v0, :cond_0

    .line 565
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->k()V

    .line 567
    :cond_0
    return-void
.end method

.method protected u_()V
    .locals 2

    .prologue
    .line 456
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->b:Lcom/yelp/android/ui/activities/messaging/apimanagers/b;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->e:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    new-instance v1, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment$4;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment$4;-><init>(Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setOnLoadNeeded(Ljava/lang/Runnable;)V

    .line 470
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->a:Lcom/yelp/android/cl/c;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->a(Landroid/widget/ListAdapter;)V

    .line 472
    :cond_0
    return-void
.end method
