.class public Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;
.super Lcom/yelp/android/ui/activities/support/YelpFragment;
.source "ConversationThreadFragment.java"


# instance fields
.field private a:Lcom/yelp/android/ay/e;

.field private b:Lcom/yelp/android/bb/d;

.field private c:Lcom/yelp/android/ui/activities/messaging/apimanagers/i;

.field private d:Lcom/yelp/android/ui/util/ScrollToLoadListView;

.field private e:Landroid/widget/Button;

.field private g:Landroid/widget/EditText;

.field private h:Lcom/yelp/android/serializable/Conversation;

.field private i:Ljava/lang/String;

.field private j:Lcom/yelp/android/serializable/bg;

.field private k:Z

.field private l:Z

.field private m:Lcom/yelp/android/ui/activities/messaging/a;

.field private n:Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;

.field private final o:Lcom/yelp/android/services/push/j;

.field private final p:Lcom/yelp/android/ui/activities/messaging/apimanagers/p;

.field private final q:Lcom/yelp/android/ui/activities/messaging/apimanagers/p;

.field private final r:Lcom/yelp/android/ui/activities/messaging/apimanagers/g;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;-><init>()V

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->k:Z

    .line 246
    new-instance v0, Lcom/yelp/android/ui/activities/messaging/j;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/messaging/j;-><init>(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->o:Lcom/yelp/android/services/push/j;

    .line 279
    new-instance v0, Lcom/yelp/android/ui/activities/messaging/k;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/messaging/k;-><init>(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->p:Lcom/yelp/android/ui/activities/messaging/apimanagers/p;

    .line 326
    new-instance v0, Lcom/yelp/android/ui/activities/messaging/l;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/messaging/l;-><init>(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->q:Lcom/yelp/android/ui/activities/messaging/apimanagers/p;

    .line 352
    new-instance v0, Lcom/yelp/android/ui/activities/messaging/m;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/messaging/m;-><init>(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->r:Lcom/yelp/android/ui/activities/messaging/apimanagers/g;

    return-void
.end method

.method public static a(Lcom/yelp/android/serializable/Conversation;)Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;
    .locals 3

    .prologue
    .line 90
    new-instance v0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;-><init>()V

    .line 91
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 92
    const-string/jumbo v2, "conversation"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 93
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->setArguments(Landroid/os/Bundle;)V

    .line 94
    return-object v0
.end method

.method public static a(Ljava/lang/String;Z)Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;
    .locals 3

    .prologue
    .line 102
    new-instance v0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;-><init>()V

    .line 103
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 104
    const-string/jumbo v2, "conversation_id"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string/jumbo v2, "show_keyboard"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 106
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->setArguments(Landroid/os/Bundle;)V

    .line 107
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->m()V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->a(Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;Lcom/yelp/android/appdata/webrequests/YelpException;)V

    return-void
.end method

.method private a(Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 2

    .prologue
    .line 534
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->n()V

    .line 535
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->n:Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->h:Lcom/yelp/android/serializable/Conversation;

    invoke-virtual {v0, p1, p2, v1}, Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;->a(Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;Lcom/yelp/android/appdata/webrequests/YelpException;Lcom/yelp/android/serializable/Conversation;)V

    .line 536
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;Z)Z
    .locals 0

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->k:Z

    return p1
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)Lcom/yelp/android/serializable/Conversation;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->h:Lcom/yelp/android/serializable/Conversation;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->g:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)Lcom/yelp/android/ui/activities/messaging/apimanagers/p;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->p:Lcom/yelp/android/ui/activities/messaging/apimanagers/p;

    return-object v0
.end method

.method static synthetic e(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)Lcom/yelp/android/ui/activities/messaging/a;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->m:Lcom/yelp/android/ui/activities/messaging/a;

    return-object v0
.end method

.method static synthetic f(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->e:Landroid/widget/Button;

    return-object v0
.end method

.method private f()V
    .locals 1

    .prologue
    .line 462
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->l:Z

    .line 463
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->w()V

    .line 464
    return-void
.end method

.method static synthetic g(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->o()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private g()V
    .locals 2

    .prologue
    .line 467
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->d:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    const v1, 0x106000b

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setPanelLoadingBackground(I)V

    .line 468
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->c:Lcom/yelp/android/ui/activities/messaging/apimanagers/i;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/i;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->d:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 470
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->d:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    new-instance v1, Lcom/yelp/android/ui/activities/messaging/n;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/messaging/n;-><init>(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setOnLoadNeeded(Ljava/lang/Runnable;)V

    .line 481
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->d:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->c:Lcom/yelp/android/ui/activities/messaging/apimanagers/i;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/messaging/apimanagers/i;->a()Lcom/yelp/android/bb/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 483
    :cond_0
    return-void
.end method

.method static synthetic h(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)Lcom/yelp/android/ui/activities/messaging/apimanagers/i;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->c:Lcom/yelp/android/ui/activities/messaging/apimanagers/i;

    return-object v0
.end method

.method private h()V
    .locals 3

    .prologue
    .line 486
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->a:Lcom/yelp/android/ay/e;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->h:Lcom/yelp/android/serializable/Conversation;

    new-instance v2, Lcom/yelp/android/ui/activities/messaging/o;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/messaging/o;-><init>(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ay/e;->a(Lcom/yelp/android/serializable/Conversation;Lcom/yelp/android/database/w;)V

    .line 504
    return-void
.end method

.method private i()V
    .locals 3

    .prologue
    .line 507
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 508
    new-instance v0, Lcom/yelp/android/ay/r;

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->o()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->g:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/ay/r;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->a:Lcom/yelp/android/ay/e;

    new-instance v2, Lcom/yelp/android/ui/activities/messaging/p;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/messaging/p;-><init>(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)V

    invoke-virtual {v1, v0, v2}, Lcom/yelp/android/ay/e;->a(Lcom/yelp/android/ay/r;Lcom/yelp/android/database/w;)V

    .line 522
    :cond_0
    return-void
.end method

.method static synthetic i(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->n()V

    return-void
.end method

.method static synthetic j(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->l()V

    return-void
.end method

.method private k()V
    .locals 2

    .prologue
    .line 525
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->a:Lcom/yelp/android/ay/e;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->h:Lcom/yelp/android/serializable/Conversation;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ay/e;->a(Lcom/yelp/android/serializable/Conversation;)V

    .line 526
    return-void
.end method

.method static synthetic k(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->k()V

    return-void
.end method

.method static synthetic l(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)Lcom/yelp/android/bb/d;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->b:Lcom/yelp/android/bb/d;

    return-object v0
.end method

.method private l()V
    .locals 2

    .prologue
    .line 529
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 530
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->g:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 531
    return-void
.end method

.method static synthetic m(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)Lcom/yelp/android/ui/util/ScrollToLoadListView;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->d:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    return-object v0
.end method

.method private m()V
    .locals 2

    .prologue
    .line 554
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->a()V

    .line 555
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;I)V

    .line 556
    return-void
.end method

.method private n()V
    .locals 0

    .prologue
    .line 559
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->f()V

    .line 560
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->j()V

    .line 561
    return-void
.end method

.method static synthetic n(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->k:Z

    return v0
.end method

.method private o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->h:Lcom/yelp/android/serializable/Conversation;

    if-eqz v0, :cond_0

    .line 565
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->h:Lcom/yelp/android/serializable/Conversation;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Conversation;->getId()Ljava/lang/String;

    move-result-object v0

    .line 567
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->i:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic o(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->f()V

    return-void
.end method

.method static synthetic p(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->n:Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;

    return-object v0
.end method

.method static synthetic q(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->g()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 457
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->l:Z

    .line 458
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->w()V

    .line 459
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 539
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->c:Lcom/yelp/android/ui/activities/messaging/apimanagers/i;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/i;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 542
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->g()V

    .line 544
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->d:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setBottomReached(Z)V

    .line 545
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->c:Lcom/yelp/android/ui/activities/messaging/apimanagers/i;

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/messaging/apimanagers/i;->a(Ljava/lang/String;)V

    .line 546
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->m()V

    .line 547
    return-void
.end method

.method public b(Lcom/yelp/android/serializable/Conversation;)V
    .locals 3

    .prologue
    .line 575
    iput-object p1, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->h:Lcom/yelp/android/serializable/Conversation;

    .line 576
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->n:Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->h:Lcom/yelp/android/serializable/Conversation;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;->a(Lcom/yelp/android/serializable/Conversation;)V

    .line 577
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->h:Lcom/yelp/android/serializable/Conversation;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Conversation;->getOtherUser()Lcom/yelp/android/serializable/bg;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->j:Lcom/yelp/android/serializable/bg;

    .line 581
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 582
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->h:Lcom/yelp/android/serializable/Conversation;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Conversation;->getSubject()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 583
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->h:Lcom/yelp/android/serializable/Conversation;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Conversation;->getSubject()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 587
    :cond_0
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->h()V

    .line 588
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->r:Lcom/yelp/android/ui/activities/messaging/apimanagers/g;

    sget-object v1, Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;->CONTENT_TRASHED:Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Conversation;->getLatestMessages()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/yelp/android/ui/activities/messaging/apimanagers/g;->a(Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;Ljava/lang/Object;)V

    .line 591
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->m:Lcom/yelp/android/ui/activities/messaging/a;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/messaging/a;->d()Lcom/yelp/android/ui/activities/messaging/ActivityMessaging$MessagingActionsFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->q:Lcom/yelp/android/ui/activities/messaging/apimanagers/p;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->p:Lcom/yelp/android/ui/activities/messaging/apimanagers/p;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging$MessagingActionsFragment;->a(Lcom/yelp/android/ui/activities/messaging/apimanagers/p;Lcom/yelp/android/ui/activities/messaging/apimanagers/p;)V

    .line 593
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->k:Z

    if-nez v0, :cond_1

    .line 594
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->e()V

    .line 596
    :cond_1
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 550
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->b()V

    .line 551
    return-void
.end method

.method d()Lcom/yelp/android/serializable/Conversation;
    .locals 1

    .prologue
    .line 571
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->h:Lcom/yelp/android/serializable/Conversation;

    return-object v0
.end method

.method public e()V
    .locals 3

    .prologue
    .line 599
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->a()V

    .line 600
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->m:Lcom/yelp/android/ui/activities/messaging/a;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/messaging/a;->d()Lcom/yelp/android/ui/activities/messaging/ActivityMessaging$MessagingActionsFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->h:Lcom/yelp/android/serializable/Conversation;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->p:Lcom/yelp/android/ui/activities/messaging/apimanagers/p;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging$MessagingActionsFragment;->b(Lcom/yelp/android/serializable/Conversation;Lcom/yelp/android/ui/activities/messaging/apimanagers/p;)V

    .line 604
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->m:Lcom/yelp/android/ui/activities/messaging/a;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->h:Lcom/yelp/android/serializable/Conversation;

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/activities/messaging/a;->b(Lcom/yelp/android/serializable/Conversation;)V

    .line 605
    return-void
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 443
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->MessagingConversation:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public getParametersForIri(Lcom/yelp/android/analytics/iris/b;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/analytics/iris/b;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 448
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 450
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "conversation"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Conversation;

    .line 451
    if-eqz v0, :cond_0

    sget-object v0, Lcom/yelp/android/analytics/iris/IriSource;->Inbox:Lcom/yelp/android/analytics/iris/IriSource;

    .line 452
    :goto_0
    invoke-virtual {v0, v1}, Lcom/yelp/android/analytics/iris/IriSource;->addParameter(Ljava/util/Map;)V

    .line 453
    return-object v1

    .line 451
    :cond_0
    sget-object v0, Lcom/yelp/android/analytics/iris/IriSource;->PushNotification:Lcom/yelp/android/analytics/iris/IriSource;

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 148
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 149
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->b:Lcom/yelp/android/bb/d;

    invoke-virtual {v0}, Lcom/yelp/android/bb/d;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->b()V

    .line 152
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "show_keyboard"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 154
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 156
    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->g:Landroid/widget/EditText;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 158
    :cond_1
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->g()V

    .line 159
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 137
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onAttach(Landroid/app/Activity;)V

    .line 139
    :try_start_0
    check-cast p1, Lcom/yelp/android/ui/activities/messaging/a;

    iput-object p1, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->m:Lcom/yelp/android/ui/activities/messaging/a;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    return-void

    .line 140
    :catch_0
    move-exception v0

    .line 141
    new-instance v0, Ljava/lang/ClassCastException;

    const-string/jumbo v1, "The corresponding activity must implement the ActivityMessagingListener interface"

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 112
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onCreate(Landroid/os/Bundle;)V

    .line 113
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->i()Lcom/yelp/android/database/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/database/q;->i()Lcom/yelp/android/ay/e;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->a:Lcom/yelp/android/ay/e;

    .line 115
    new-instance v0, Lcom/yelp/android/ui/activities/messaging/apimanagers/i;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->r:Lcom/yelp/android/ui/activities/messaging/apimanagers/g;

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/ui/activities/messaging/apimanagers/i;-><init>(Landroid/content/Context;Lcom/yelp/android/ui/activities/messaging/apimanagers/g;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->c:Lcom/yelp/android/ui/activities/messaging/apimanagers/i;

    .line 116
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->c:Lcom/yelp/android/ui/activities/messaging/apimanagers/i;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/i;->a()Lcom/yelp/android/bb/d;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->b:Lcom/yelp/android/bb/d;

    .line 117
    new-instance v0, Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->q:Lcom/yelp/android/ui/activities/messaging/apimanagers/p;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->m:Lcom/yelp/android/ui/activities/messaging/a;

    invoke-interface {v2}, Lcom/yelp/android/ui/activities/messaging/a;->d()Lcom/yelp/android/ui/activities/messaging/ActivityMessaging$MessagingActionsFragment;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;-><init>(Lcom/yelp/android/ui/activities/messaging/apimanagers/p;Lcom/yelp/android/ui/activities/messaging/ActivityMessaging$MessagingActionsFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->n:Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;

    .line 119
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->n:Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;->a(Landroid/support/v4/app/FragmentActivity;)V

    .line 121
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "conversation"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Conversation;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->h:Lcom/yelp/android/serializable/Conversation;

    .line 122
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->h:Lcom/yelp/android/serializable/Conversation;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->h:Lcom/yelp/android/serializable/Conversation;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Conversation;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->i:Ljava/lang/String;

    .line 124
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->n:Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->h:Lcom/yelp/android/serializable/Conversation;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;->a(Lcom/yelp/android/serializable/Conversation;)V

    .line 131
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->setHasOptionsMenu(Z)V

    .line 132
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->a()V

    .line 133
    return-void

    .line 126
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "conversation_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->i:Ljava/lang/String;

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .prologue
    .line 408
    const v0, 0x7f100007

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 409
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    .line 164
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 165
    const v1, 0x7f0300af

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p1, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 166
    const v0, 0x7f0c02ae

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/util/ScrollToLoadListView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->d:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    .line 168
    const v0, 0x7f0c03eb

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->e:Landroid/widget/Button;

    .line 169
    const v0, 0x7f0c03ea

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->g:Landroid/widget/EditText;

    .line 171
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->e:Landroid/widget/Button;

    new-instance v2, Lcom/yelp/android/ui/activities/messaging/g;

    sget-object v3, Lcom/yelp/android/analytics/iris/EventIri;->MessagingConversationSend:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-direct {v2, p0, v3}, Lcom/yelp/android/ui/activities/messaging/g;-><init>(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;Lcom/yelp/android/analytics/iris/EventIri;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->g:Landroid/widget/EditText;

    new-instance v2, Lcom/yelp/android/ui/activities/messaging/i;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/messaging/i;-><init>(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 197
    return-object v1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 240
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onDestroy()V

    .line 243
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->n:Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;->a()V

    .line 244
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    .line 437
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->n:Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->h:Lcom/yelp/android/serializable/Conversation;

    invoke-virtual {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;->a(Landroid/support/v4/app/FragmentManager;ILcom/yelp/android/serializable/Conversation;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 221
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onPause()V

    .line 222
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->c()Lcom/yelp/android/services/push/i;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->o:Lcom/yelp/android/services/push/j;

    invoke-virtual {v0, v1}, Lcom/yelp/android/services/push/i;->b(Lcom/yelp/android/services/push/j;)V

    .line 223
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->m:Lcom/yelp/android/ui/activities/messaging/a;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/messaging/a;->d()Lcom/yelp/android/ui/activities/messaging/ActivityMessaging$MessagingActionsFragment;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging$MessagingActionsFragment;->a(Lcom/yelp/android/ui/activities/messaging/apimanagers/p;Lcom/yelp/android/ui/activities/messaging/apimanagers/p;)V

    .line 225
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->m:Lcom/yelp/android/ui/activities/messaging/a;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/messaging/a;->d()Lcom/yelp/android/ui/activities/messaging/ActivityMessaging$MessagingActionsFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging$MessagingActionsFragment;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 226
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->i()V

    .line 233
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->c:Lcom/yelp/android/ui/activities/messaging/apimanagers/i;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/i;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 234
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->c:Lcom/yelp/android/ui/activities/messaging/apimanagers/i;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/i;->h()V

    .line 236
    :cond_1
    return-void

    .line 229
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->h:Lcom/yelp/android/serializable/Conversation;

    if-eqz v0, :cond_0

    .line 230
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->k()V

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 6

    .prologue
    const v3, 0x7f0c04f4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 413
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->c:Lcom/yelp/android/ui/activities/messaging/apimanagers/i;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/i;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->l:Z

    if-eqz v0, :cond_3

    .line 414
    invoke-interface {p1, v3, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 416
    const v0, 0x7f0c04f5

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 417
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->h:Lcom/yelp/android/serializable/Conversation;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Conversation;->getBizUser()Lcom/yelp/android/serializable/BusinessUser;

    move-result-object v0

    if-eqz v0, :cond_0

    const v0, 0x7f0700df

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 421
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->j:Lcom/yelp/android/serializable/bg;

    invoke-interface {v0}, Lcom/yelp/android/serializable/bg;->isBlocked()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 423
    const v0, 0x7f0c04f6

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 424
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->h:Lcom/yelp/android/serializable/Conversation;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Conversation;->getBizUser()Lcom/yelp/android/serializable/BusinessUser;

    move-result-object v0

    if-eqz v0, :cond_2

    const v0, 0x7f07062d

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 429
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->j:Lcom/yelp/android/serializable/bg;

    invoke-interface {v0}, Lcom/yelp/android/serializable/bg;->isBlocked()Z

    move-result v0

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 433
    :goto_3
    return-void

    .line 417
    :cond_0
    const v0, 0x7f0700e0

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->j:Lcom/yelp/android/serializable/bg;

    invoke-interface {v5}, Lcom/yelp/android/serializable/bg;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {p0, v0, v4}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move v0, v2

    .line 421
    goto :goto_1

    .line 424
    :cond_2
    const v0, 0x7f07062e

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->j:Lcom/yelp/android/serializable/bg;

    invoke-interface {v4}, Lcom/yelp/android/serializable/bg;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 431
    :cond_3
    invoke-interface {p1, v3, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    goto :goto_3
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 202
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onResume()V

    .line 204
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->c:Lcom/yelp/android/ui/activities/messaging/apimanagers/i;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/i;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 205
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->m:Lcom/yelp/android/ui/activities/messaging/a;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/messaging/a;->d()Lcom/yelp/android/ui/activities/messaging/ActivityMessaging$MessagingActionsFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->q:Lcom/yelp/android/ui/activities/messaging/apimanagers/p;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->p:Lcom/yelp/android/ui/activities/messaging/apimanagers/p;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging$MessagingActionsFragment;->a(Lcom/yelp/android/ui/activities/messaging/apimanagers/p;Lcom/yelp/android/ui/activities/messaging/apimanagers/p;)V

    .line 207
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->c:Lcom/yelp/android/ui/activities/messaging/apimanagers/i;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->h:Lcom/yelp/android/serializable/Conversation;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/messaging/apimanagers/i;->b(Lcom/yelp/android/serializable/Conversation;)V

    .line 214
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/support/YelpActivity;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->hideHotButtons()V

    .line 216
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->c()Lcom/yelp/android/services/push/i;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->o:Lcom/yelp/android/services/push/j;

    invoke-virtual {v0, v1}, Lcom/yelp/android/services/push/i;->a(Lcom/yelp/android/services/push/j;)V

    .line 217
    return-void

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->c:Lcom/yelp/android/ui/activities/messaging/apimanagers/i;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/i;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 211
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->b()V

    goto :goto_0
.end method
