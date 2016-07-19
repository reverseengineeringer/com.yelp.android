.class public Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;
.super Lcom/yelp/android/ui/activities/support/YelpFragment;
.source "ConversationThreadFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment$2;
    }
.end annotation


# instance fields
.field private a:Lcom/yelp/android/cc/b;

.field private b:Lcom/yelp/android/cl/b;

.field private c:Lcom/yelp/android/ui/activities/messaging/apimanagers/e;

.field private d:Lcom/yelp/android/ui/util/ScrollToLoadListView;

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/EditText;

.field private g:Lcom/yelp/android/serializable/Conversation;

.field private i:Ljava/lang/String;

.field private j:Lcom/yelp/android/serializable/e;

.field private k:Z

.field private l:Z

.field private m:Lcom/yelp/android/ui/activities/messaging/a;

.field private n:Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;

.field private final o:Lcom/yelp/android/services/push/e$a;

.field private final p:Lcom/yelp/android/ui/activities/messaging/apimanagers/g$a;

.field private final q:Lcom/yelp/android/ui/activities/messaging/apimanagers/g$a;

.field private final r:Lcom/yelp/android/ui/activities/messaging/apimanagers/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;-><init>()V

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->k:Z

    .line 280
    new-instance v0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment$4;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment$4;-><init>(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->o:Lcom/yelp/android/services/push/e$a;

    .line 315
    new-instance v0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment$5;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment$5;-><init>(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->p:Lcom/yelp/android/ui/activities/messaging/apimanagers/g$a;

    .line 364
    new-instance v0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment$6;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment$6;-><init>(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->q:Lcom/yelp/android/ui/activities/messaging/apimanagers/g$a;

    .line 393
    new-instance v0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment$7;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment$7;-><init>(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->r:Lcom/yelp/android/ui/activities/messaging/apimanagers/c;

    return-void
.end method

.method public static a(Lcom/yelp/android/serializable/Conversation;)Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;
    .locals 3

    .prologue
    .line 94
    new-instance v0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;-><init>()V

    .line 95
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 96
    const-string/jumbo v2, "conversation"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 97
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->setArguments(Landroid/os/Bundle;)V

    .line 98
    return-object v0
.end method

.method public static a(Ljava/lang/String;Z)Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;
    .locals 3

    .prologue
    .line 107
    new-instance v0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;-><init>()V

    .line 108
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 109
    const-string/jumbo v2, "conversation_id"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string/jumbo v2, "show_keyboard"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 111
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->setArguments(Landroid/os/Bundle;)V

    .line 112
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->n()V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->a(Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;Lcom/yelp/android/appdata/webrequests/YelpException;)V

    return-void
.end method

.method private a(Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 2

    .prologue
    .line 582
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->o()V

    .line 583
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->n:Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->g:Lcom/yelp/android/serializable/Conversation;

    invoke-virtual {v0, p1, p2, v1}, Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;->a(Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;Lcom/yelp/android/appdata/webrequests/YelpException;Lcom/yelp/android/serializable/Conversation;)V

    .line 584
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;Z)Z
    .locals 0

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->k:Z

    return p1
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)Lcom/yelp/android/serializable/Conversation;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->g:Lcom/yelp/android/serializable/Conversation;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->f:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)Lcom/yelp/android/ui/activities/messaging/apimanagers/g$a;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->p:Lcom/yelp/android/ui/activities/messaging/apimanagers/g$a;

    return-object v0
.end method

.method static synthetic e(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)Lcom/yelp/android/ui/activities/messaging/a;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->m:Lcom/yelp/android/ui/activities/messaging/a;

    return-object v0
.end method

.method static synthetic f(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->e:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic g(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->p()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private g()V
    .locals 1

    .prologue
    .line 505
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->l:Z

    .line 506
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->y()V

    .line 507
    return-void
.end method

.method static synthetic h(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)Lcom/yelp/android/ui/activities/messaging/apimanagers/e;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->c:Lcom/yelp/android/ui/activities/messaging/apimanagers/e;

    return-object v0
.end method

.method private h()V
    .locals 2

    .prologue
    .line 510
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->d:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    const v1, 0x106000b

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setPanelLoadingBackground(I)V

    .line 511
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->c:Lcom/yelp/android/ui/activities/messaging/apimanagers/e;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/e;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->d:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 513
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->d:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    new-instance v1, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment$8;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment$8;-><init>(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setOnLoadNeeded(Ljava/lang/Runnable;)V

    .line 525
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->d:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->c:Lcom/yelp/android/ui/activities/messaging/apimanagers/e;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/messaging/apimanagers/e;->a()Lcom/yelp/android/cl/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 527
    :cond_0
    return-void
.end method

.method private i()V
    .locals 3

    .prologue
    .line 530
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->a:Lcom/yelp/android/cc/b;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->g:Lcom/yelp/android/serializable/Conversation;

    new-instance v2, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment$9;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment$9;-><init>(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/cc/b;->a(Lcom/yelp/android/serializable/Conversation;Lcom/yelp/android/database/h$b;)V

    .line 549
    return-void
.end method

.method static synthetic i(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->o()V

    return-void
.end method

.method private j()V
    .locals 3

    .prologue
    .line 552
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 553
    new-instance v0, Lcom/yelp/android/cc/i;

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->p()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->f:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/cc/i;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->a:Lcom/yelp/android/cc/b;

    new-instance v2, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment$10;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment$10;-><init>(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)V

    invoke-virtual {v1, v0, v2}, Lcom/yelp/android/cc/b;->a(Lcom/yelp/android/cc/i;Lcom/yelp/android/database/h$b;)V

    .line 570
    :cond_0
    return-void
.end method

.method static synthetic j(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->m()V

    return-void
.end method

.method private k()V
    .locals 2

    .prologue
    .line 573
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->a:Lcom/yelp/android/cc/b;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->g:Lcom/yelp/android/serializable/Conversation;

    invoke-virtual {v0, v1}, Lcom/yelp/android/cc/b;->a(Lcom/yelp/android/serializable/Conversation;)V

    .line 574
    return-void
.end method

.method static synthetic k(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->k()V

    return-void
.end method

.method static synthetic l(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)Lcom/yelp/android/cl/b;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->b:Lcom/yelp/android/cl/b;

    return-object v0
.end method

.method static synthetic m(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)Lcom/yelp/android/ui/util/ScrollToLoadListView;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->d:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    return-object v0
.end method

.method private m()V
    .locals 2

    .prologue
    .line 577
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 578
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->f:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 579
    return-void
.end method

.method private n()V
    .locals 2

    .prologue
    .line 602
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->a()V

    .line 603
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;I)V

    .line 604
    return-void
.end method

.method static synthetic n(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->k:Z

    return v0
.end method

.method private o()V
    .locals 0

    .prologue
    .line 607
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->g()V

    .line 608
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->l()V

    .line 609
    return-void
.end method

.method static synthetic o(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->g()V

    return-void
.end method

.method static synthetic p(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->n:Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;

    return-object v0
.end method

.method private p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 612
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->g:Lcom/yelp/android/serializable/Conversation;

    if-eqz v0, :cond_0

    .line 613
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->g:Lcom/yelp/android/serializable/Conversation;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Conversation;->h()Ljava/lang/String;

    move-result-object v0

    .line 615
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->i:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic q(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->h()V

    return-void
.end method


# virtual methods
.method F_()Lcom/yelp/android/serializable/Conversation;
    .locals 1

    .prologue
    .line 619
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->g:Lcom/yelp/android/serializable/Conversation;

    return-object v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 500
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->l:Z

    .line 501
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->y()V

    .line 502
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 587
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->c:Lcom/yelp/android/ui/activities/messaging/apimanagers/e;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/e;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 590
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->h()V

    .line 592
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->d:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setBottomReached(Z)V

    .line 593
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->c:Lcom/yelp/android/ui/activities/messaging/apimanagers/e;

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/messaging/apimanagers/e;->a(Ljava/lang/String;)V

    .line 594
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->n()V

    .line 595
    return-void
.end method

.method public b(Lcom/yelp/android/serializable/Conversation;)V
    .locals 3

    .prologue
    .line 623
    iput-object p1, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->g:Lcom/yelp/android/serializable/Conversation;

    .line 624
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->n:Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->g:Lcom/yelp/android/serializable/Conversation;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;->a(Lcom/yelp/android/serializable/Conversation;)V

    .line 625
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->g:Lcom/yelp/android/serializable/Conversation;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Conversation;->a()Lcom/yelp/android/serializable/e;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->j:Lcom/yelp/android/serializable/e;

    .line 629
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 630
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->g:Lcom/yelp/android/serializable/Conversation;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Conversation;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 631
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->g:Lcom/yelp/android/serializable/Conversation;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Conversation;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 635
    :cond_0
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->i()V

    .line 636
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->r:Lcom/yelp/android/ui/activities/messaging/apimanagers/c;

    sget-object v1, Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;->CONTENT_TRASHED:Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Conversation;->j()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/yelp/android/ui/activities/messaging/apimanagers/c;->a(Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;Ljava/lang/Object;)V

    .line 639
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->m:Lcom/yelp/android/ui/activities/messaging/a;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/messaging/a;->c()Lcom/yelp/android/ui/activities/messaging/ActivityMessaging$MessagingActionsFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->q:Lcom/yelp/android/ui/activities/messaging/apimanagers/g$a;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->p:Lcom/yelp/android/ui/activities/messaging/apimanagers/g$a;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging$MessagingActionsFragment;->a(Lcom/yelp/android/ui/activities/messaging/apimanagers/g$a;Lcom/yelp/android/ui/activities/messaging/apimanagers/g$a;)V

    .line 642
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->k:Z

    if-nez v0, :cond_1

    .line 643
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->f()V

    .line 645
    :cond_1
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 598
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->b()V

    .line 599
    return-void
.end method

.method public f()V
    .locals 3

    .prologue
    .line 648
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->a()V

    .line 649
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->m:Lcom/yelp/android/ui/activities/messaging/a;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/messaging/a;->c()Lcom/yelp/android/ui/activities/messaging/ActivityMessaging$MessagingActionsFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->g:Lcom/yelp/android/serializable/Conversation;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->p:Lcom/yelp/android/ui/activities/messaging/apimanagers/g$a;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging$MessagingActionsFragment;->b(Lcom/yelp/android/serializable/Conversation;Lcom/yelp/android/ui/activities/messaging/apimanagers/g$a;)V

    .line 654
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->m:Lcom/yelp/android/ui/activities/messaging/a;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->g:Lcom/yelp/android/serializable/Conversation;

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/activities/messaging/a;->b(Lcom/yelp/android/serializable/Conversation;)V

    .line 655
    return-void
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 486
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->MessagingConversation:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public getParametersForIri(Lcom/yelp/android/analytics/iris/a;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/analytics/iris/a;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 491
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 493
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "conversation"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Conversation;

    .line 494
    if-eqz v0, :cond_0

    sget-object v0, Lcom/yelp/android/analytics/iris/IriSource;->Inbox:Lcom/yelp/android/analytics/iris/IriSource;

    .line 495
    :goto_0
    invoke-virtual {v0, v1}, Lcom/yelp/android/analytics/iris/IriSource;->addParameter(Ljava/util/Map;)V

    .line 496
    return-object v1

    .line 494
    :cond_0
    sget-object v0, Lcom/yelp/android/analytics/iris/IriSource;->PushNotification:Lcom/yelp/android/analytics/iris/IriSource;

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 154
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 155
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->b:Lcom/yelp/android/cl/b;

    invoke-virtual {v0}, Lcom/yelp/android/cl/b;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->b()V

    .line 158
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "show_keyboard"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 160
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 163
    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->f:Landroid/widget/EditText;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 165
    :cond_1
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->h()V

    .line 166
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 143
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onAttach(Landroid/app/Activity;)V

    .line 145
    :try_start_0
    check-cast p1, Lcom/yelp/android/ui/activities/messaging/a;

    iput-object p1, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->m:Lcom/yelp/android/ui/activities/messaging/a;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    return-void

    .line 146
    :catch_0
    move-exception v0

    .line 147
    new-instance v0, Ljava/lang/ClassCastException;

    const-string/jumbo v1, "The corresponding activity must implement the ActivityMessagingListener interface"

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    .line 268
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 276
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 270
    :pswitch_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 271
    const v1, 0x7f0703bf

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->b:Lcom/yelp/android/cl/b;

    invoke-virtual {v2, v0}, Lcom/yelp/android/cl/b;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/ConversationMessage;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/ConversationMessage;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yelp/android/ui/util/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const/4 v0, 0x1

    goto :goto_0

    .line 268
    :pswitch_data_0
    .packed-switch 0x7f070227
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 117
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onCreate(Landroid/os/Bundle;)V

    .line 118
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->i()Lcom/yelp/android/database/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/database/g;->g()Lcom/yelp/android/cc/b;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->a:Lcom/yelp/android/cc/b;

    .line 120
    new-instance v0, Lcom/yelp/android/ui/activities/messaging/apimanagers/e;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->r:Lcom/yelp/android/ui/activities/messaging/apimanagers/c;

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/ui/activities/messaging/apimanagers/e;-><init>(Landroid/content/Context;Lcom/yelp/android/ui/activities/messaging/apimanagers/c;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->c:Lcom/yelp/android/ui/activities/messaging/apimanagers/e;

    .line 121
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->c:Lcom/yelp/android/ui/activities/messaging/apimanagers/e;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/e;->a()Lcom/yelp/android/cl/b;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->b:Lcom/yelp/android/cl/b;

    .line 122
    new-instance v0, Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->q:Lcom/yelp/android/ui/activities/messaging/apimanagers/g$a;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->m:Lcom/yelp/android/ui/activities/messaging/a;

    invoke-interface {v2}, Lcom/yelp/android/ui/activities/messaging/a;->c()Lcom/yelp/android/ui/activities/messaging/ActivityMessaging$MessagingActionsFragment;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;-><init>(Lcom/yelp/android/ui/activities/messaging/apimanagers/g$a;Lcom/yelp/android/ui/activities/messaging/ActivityMessaging$MessagingActionsFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->n:Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;

    .line 125
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->n:Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;->a(Landroid/support/v4/app/FragmentActivity;)V

    .line 127
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "conversation"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Conversation;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->g:Lcom/yelp/android/serializable/Conversation;

    .line 128
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->g:Lcom/yelp/android/serializable/Conversation;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->g:Lcom/yelp/android/serializable/Conversation;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Conversation;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->i:Ljava/lang/String;

    .line 130
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->n:Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->g:Lcom/yelp/android/serializable/Conversation;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;->a(Lcom/yelp/android/serializable/Conversation;)V

    .line 137
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->setHasOptionsMenu(Z)V

    .line 138
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->a()V

    .line 139
    return-void

    .line 132
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "conversation_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->i:Ljava/lang/String;

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2

    .prologue
    const v1, 0x7f070227

    const/4 v0, 0x0

    .line 263
    invoke-interface {p1, v0, v1, v0, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 264
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .prologue
    .line 452
    const v0, 0x7f100009

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 453
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    .line 171
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 172
    const v1, 0x7f0300c8

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p1, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 173
    const v0, 0x7f0f030d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/util/ScrollToLoadListView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->d:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    .line 175
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->d:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->registerForContextMenu(Landroid/view/View;)V

    .line 176
    const v0, 0x7f0f04ce

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->e:Landroid/widget/Button;

    .line 177
    const v0, 0x7f0f04cd

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->f:Landroid/widget/EditText;

    .line 179
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->e:Landroid/widget/Button;

    new-instance v2, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment$1;

    sget-object v3, Lcom/yelp/android/analytics/iris/EventIri;->MessagingConversationSend:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-direct {v2, p0, v3}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment$1;-><init>(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;Lcom/yelp/android/analytics/iris/EventIri;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->f:Landroid/widget/EditText;

    new-instance v2, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment$3;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment$3;-><init>(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 211
    return-object v1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 255
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onDestroy()V

    .line 258
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->n:Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;->a()V

    .line 259
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    .line 480
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->n:Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->g:Lcom/yelp/android/serializable/Conversation;

    invoke-virtual {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;->a(Landroid/support/v4/app/l;ILcom/yelp/android/serializable/Conversation;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 236
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onPause()V

    .line 237
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->c()Lcom/yelp/android/services/push/e;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->o:Lcom/yelp/android/services/push/e$a;

    invoke-virtual {v0, v1}, Lcom/yelp/android/services/push/e;->b(Lcom/yelp/android/services/push/e$a;)V

    .line 238
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->m:Lcom/yelp/android/ui/activities/messaging/a;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/messaging/a;->c()Lcom/yelp/android/ui/activities/messaging/ActivityMessaging$MessagingActionsFragment;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging$MessagingActionsFragment;->a(Lcom/yelp/android/ui/activities/messaging/apimanagers/g$a;Lcom/yelp/android/ui/activities/messaging/apimanagers/g$a;)V

    .line 240
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->m:Lcom/yelp/android/ui/activities/messaging/a;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/messaging/a;->c()Lcom/yelp/android/ui/activities/messaging/ActivityMessaging$MessagingActionsFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging$MessagingActionsFragment;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 241
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->j()V

    .line 248
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->c:Lcom/yelp/android/ui/activities/messaging/apimanagers/e;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/e;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 249
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->c:Lcom/yelp/android/ui/activities/messaging/apimanagers/e;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/e;->h()V

    .line 251
    :cond_1
    return-void

    .line 244
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->g:Lcom/yelp/android/serializable/Conversation;

    if-eqz v0, :cond_0

    .line 245
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->k()V

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 6

    .prologue
    const v3, 0x7f0f05fe

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 457
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->c:Lcom/yelp/android/ui/activities/messaging/apimanagers/e;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/e;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->l:Z

    if-eqz v0, :cond_3

    .line 458
    invoke-interface {p1, v3, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 460
    const v0, 0x7f0f05ff

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 461
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->g:Lcom/yelp/android/serializable/Conversation;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Conversation;->k()Lcom/yelp/android/serializable/BusinessUser;

    move-result-object v0

    if-eqz v0, :cond_0

    const v0, 0x7f07016a

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 465
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->j:Lcom/yelp/android/serializable/e;

    invoke-interface {v0}, Lcom/yelp/android/serializable/e;->b()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 467
    const v0, 0x7f0f0600

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 468
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->g:Lcom/yelp/android/serializable/Conversation;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Conversation;->k()Lcom/yelp/android/serializable/BusinessUser;

    move-result-object v0

    if-eqz v0, :cond_2

    const v0, 0x7f070619

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 472
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->j:Lcom/yelp/android/serializable/e;

    invoke-interface {v0}, Lcom/yelp/android/serializable/e;->b()Z

    move-result v0

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 476
    :goto_3
    return-void

    .line 461
    :cond_0
    const v0, 0x7f07016b

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->j:Lcom/yelp/android/serializable/e;

    invoke-interface {v5}, Lcom/yelp/android/serializable/e;->c()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {p0, v0, v4}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move v0, v2

    .line 465
    goto :goto_1

    .line 468
    :cond_2
    const v0, 0x7f07061a

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->j:Lcom/yelp/android/serializable/e;

    invoke-interface {v4}, Lcom/yelp/android/serializable/e;->c()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 474
    :cond_3
    invoke-interface {p1, v3, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    goto :goto_3
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 216
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onResume()V

    .line 218
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->c:Lcom/yelp/android/ui/activities/messaging/apimanagers/e;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/e;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 219
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->m:Lcom/yelp/android/ui/activities/messaging/a;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/messaging/a;->c()Lcom/yelp/android/ui/activities/messaging/ActivityMessaging$MessagingActionsFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->q:Lcom/yelp/android/ui/activities/messaging/apimanagers/g$a;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->p:Lcom/yelp/android/ui/activities/messaging/apimanagers/g$a;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging$MessagingActionsFragment;->a(Lcom/yelp/android/ui/activities/messaging/apimanagers/g$a;Lcom/yelp/android/ui/activities/messaging/apimanagers/g$a;)V

    .line 222
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->c:Lcom/yelp/android/ui/activities/messaging/apimanagers/e;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->g:Lcom/yelp/android/serializable/Conversation;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/messaging/apimanagers/e;->b(Lcom/yelp/android/serializable/Conversation;)V

    .line 229
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/support/YelpActivity;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->hideHotButtons()V

    .line 231
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->c()Lcom/yelp/android/services/push/e;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->o:Lcom/yelp/android/services/push/e$a;

    invoke-virtual {v0, v1}, Lcom/yelp/android/services/push/e;->a(Lcom/yelp/android/services/push/e$a;)V

    .line 232
    return-void

    .line 223
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->c:Lcom/yelp/android/ui/activities/messaging/apimanagers/e;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/e;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 226
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->b()V

    goto :goto_0
.end method
