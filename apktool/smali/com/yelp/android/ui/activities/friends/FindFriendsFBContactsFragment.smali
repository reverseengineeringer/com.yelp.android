.class public Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;
.super Lcom/yelp/android/ui/activities/support/YelpListFragment;
.source "FindFriendsFBContactsFragment.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/yelp/android/ui/util/ap;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/User;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/yelp/android/appdata/webrequests/cc;

.field private e:Lcom/yelp/android/appdata/webrequests/bu;

.field private f:Lcom/yelp/android/appdata/webrequests/bv;

.field private g:Lcom/yelp/android/ui/activities/FacebookConnectManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/ui/activities/FacebookConnectManager",
            "<",
            "Lcom/yelp/android/ui/activities/friends/ActivityFindFriends;",
            ">;"
        }
    .end annotation
.end field

.field private i:Z

.field private j:Landroid/widget/RelativeLayout;

.field private k:Landroid/view/View;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/RelativeLayout;

.field private o:Landroid/widget/RelativeLayout;

.field private p:Lcom/yelp/android/ui/widgets/YelpToggleButton;

.field private q:Landroid/view/View;

.field private final r:Landroid/view/View$OnClickListener;

.field private final s:Landroid/view/View$OnClickListener;

.field private final t:Landroid/view/View$OnClickListener;

.field private final u:Landroid/view/View$OnClickListener;

.field private final v:Lcom/yelp/android/appdata/webrequests/core/c$a;

.field private final w:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final x:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Lcom/yelp/android/appdata/webrequests/cc$a;",
            ">;"
        }
    .end annotation
.end field

.field private final y:Lcom/yelp/android/ui/activities/FacebookConnectManager$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/ui/activities/FacebookConnectManager$a",
            "<",
            "Lcom/yelp/android/ui/activities/friends/ActivityFindFriends;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;-><init>()V

    .line 380
    new-instance v0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment$2;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment$2;-><init>(Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->r:Landroid/view/View$OnClickListener;

    .line 425
    new-instance v0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment$3;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment$3;-><init>(Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->s:Landroid/view/View$OnClickListener;

    .line 443
    new-instance v0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment$4;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment$4;-><init>(Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->t:Landroid/view/View$OnClickListener;

    .line 465
    new-instance v0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment$5;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment$5;-><init>(Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->u:Landroid/view/View$OnClickListener;

    .line 493
    new-instance v0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment$6;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment$6;-><init>(Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->v:Lcom/yelp/android/appdata/webrequests/core/c$a;

    .line 518
    new-instance v0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment$7;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment$7;-><init>(Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->w:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    .line 533
    new-instance v0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment$8;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment$8;-><init>(Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->x:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    .line 599
    new-instance v0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment$9;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment$9;-><init>(Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->y:Lcom/yelp/android/ui/activities/FacebookConnectManager$a;

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;Lcom/yelp/android/appdata/webrequests/bv;)Lcom/yelp/android/appdata/webrequests/bv;
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->f:Lcom/yelp/android/appdata/webrequests/bv;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;Ljava/lang/Iterable;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->a(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;Ljava/util/ArrayList;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->a(Ljava/util/ArrayList;Ljava/util/Map;)V

    return-void
.end method

.method private a(Ljava/lang/Iterable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 333
    const-string/jumbo v0, "SOURCE_FACEBOOK"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 334
    new-instance v1, Lcom/yelp/android/appdata/webrequests/cc;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->x:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-direct {v1, v2, p1, v3, v0}, Lcom/yelp/android/appdata/webrequests/cc;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;Ljava/lang/Iterable;ZZ)V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->d:Lcom/yelp/android/appdata/webrequests/cc;

    .line 336
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->d:Lcom/yelp/android/appdata/webrequests/cc;

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/cc;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 337
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->d:Lcom/yelp/android/appdata/webrequests/cc;

    const v1, 0x7f0702d2

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;I)V

    .line 338
    return-void
.end method

.method private a(Ljava/util/ArrayList;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/User;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/yelp/android/util/ContactsFetcher$Contact;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 341
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->l()V

    .line 342
    iput-object p1, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->c:Ljava/util/ArrayList;

    .line 343
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->b:Lcom/yelp/android/ui/util/ap;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ap;->clear()V

    .line 344
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->b:Lcom/yelp/android/ui/util/ap;

    invoke-virtual {v0, p2}, Lcom/yelp/android/ui/util/ap;->a(Ljava/util/Map;)V

    .line 345
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->b:Lcom/yelp/android/ui/util/ap;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ap;->a(Ljava/util/List;)V

    .line 346
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->b(Z)V

    .line 348
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    sget-object v0, Lcom/yelp/android/util/ErrorType;->NO_FRIENDS_IN_CONTACTS:Lcom/yelp/android/util/ErrorType;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->a(Lcom/yelp/android/util/ErrorType;)V

    .line 350
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->g()V

    .line 354
    :goto_0
    return-void

    .line 352
    :cond_0
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->h()V

    goto :goto_0
.end method

.method private a(Z)V
    .locals 2

    .prologue
    .line 367
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->l()V

    .line 368
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->p:Lcom/yelp/android/ui/widgets/YelpToggleButton;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/widgets/YelpToggleButton;->setChecked(Z)V

    .line 369
    if-eqz p1, :cond_1

    .line 370
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->d:Lcom/yelp/android/appdata/webrequests/cc;

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->d:Lcom/yelp/android/appdata/webrequests/cc;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/cc;->a(Z)V

    .line 373
    :cond_0
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->g()V

    .line 374
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->o:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 378
    :goto_0
    return-void

    .line 376
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->p_()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;Z)Z
    .locals 0

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->i:Z

    return p1
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->l:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;Z)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->a(Z)V

    return-void
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->n:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public static c()Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;
    .locals 1

    .prologue
    .line 102
    new-instance v0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;-><init>()V

    return-object v0
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;)Lcom/yelp/android/ui/util/ap;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->b:Lcom/yelp/android/ui/util/ap;

    return-object v0
.end method

.method static synthetic e(Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->o:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic f(Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->m:Landroid/widget/TextView;

    return-object v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 313
    const-string/jumbo v0, "SOURCE_CONTACTS"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    const/4 v0, 0x0

    const v1, 0x7f0702d2

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;I)V

    .line 315
    new-instance v0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment$1;-><init>(Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 330
    :goto_0
    return-void

    .line 328
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->a(Ljava/lang/Iterable;)V

    goto :goto_0
.end method

.method private g()V
    .locals 2

    .prologue
    .line 357
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->k:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 358
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setVisibility(I)V

    .line 359
    return-void
.end method

.method static synthetic g(Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->g()V

    return-void
.end method

.method static synthetic h(Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;)Lcom/yelp/android/ui/widgets/YelpToggleButton;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->p:Lcom/yelp/android/ui/widgets/YelpToggleButton;

    return-object v0
.end method

.method private h()V
    .locals 2

    .prologue
    .line 362
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->k:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 363
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setVisibility(I)V

    .line 364
    return-void
.end method

.method static synthetic i(Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;)Lcom/yelp/android/appdata/webrequests/core/c$a;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->v:Lcom/yelp/android/appdata/webrequests/core/c$a;

    return-object v0
.end method

.method static synthetic j(Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;)Lcom/yelp/android/appdata/webrequests/bv;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->f:Lcom/yelp/android/appdata/webrequests/bv;

    return-object v0
.end method

.method static synthetic k(Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->h()V

    return-void
.end method

.method static synthetic l(Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->q:Landroid/view/View;

    return-object v0
.end method

.method static synthetic m(Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;)Lcom/yelp/android/ui/activities/FacebookConnectManager;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->g:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    return-object v0
.end method

.method static synthetic n(Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;)Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->i:Z

    return v0
.end method

.method static synthetic o(Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;)Lcom/yelp/android/appdata/webrequests/bu;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->e:Lcom/yelp/android/appdata/webrequests/bu;

    return-object v0
.end method


# virtual methods
.method public C_()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 291
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->FriendFinder:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2

    .prologue
    .line 303
    invoke-super/range {p0 .. p5}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->a(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 304
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/User;

    .line 305
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->ae()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->startActivity(Landroid/content/Intent;)V

    .line 306
    return-void
.end method

.method protected a(Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 284
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->a(Lcom/yelp/android/appdata/webrequests/YelpException;)V

    .line 285
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->getEmptyView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 286
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 287
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 309
    iput-object p1, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->a:Ljava/lang/String;

    .line 310
    return-void
.end method

.method public synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->C_()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

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
    const/4 v2, 0x1

    .line 296
    const-string/jumbo v0, "SOURCE_CONTACTS"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "use_contacts"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "use_facebook"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 251
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 252
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->g:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->g:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->a(IILandroid/content/Intent;)Z

    .line 255
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 107
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 108
    if-eqz p1, :cond_0

    .line 109
    const-string/jumbo v0, "source"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->a:Ljava/lang/String;

    .line 110
    const-string/jumbo v0, "users"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->c:Ljava/util/ArrayList;

    .line 111
    invoke-static {p1}, Lcom/yelp/android/ui/util/ap;->a(Landroid/os/Bundle;)Lcom/yelp/android/ui/util/ap;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->b:Lcom/yelp/android/ui/util/ap;

    .line 112
    const-string/jumbo v0, "fb_auto_friend"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->i:Z

    .line 116
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->b:Lcom/yelp/android/ui/util/ap;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->r:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ap;->a(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->b:Lcom/yelp/android/ui/util/ap;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ap;->a(Z)V

    .line 118
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->b:Lcom/yelp/android/ui/util/ap;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->a(Landroid/widget/ListAdapter;)V

    .line 119
    return-void

    .line 114
    :cond_0
    new-instance v0, Lcom/yelp/android/ui/util/ap;

    const v1, 0x7f030173

    invoke-direct {v0, v1}, Lcom/yelp/android/ui/util/ap;-><init>(I)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->b:Lcom/yelp/android/ui/util/ap;

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .prologue
    .line 189
    const v0, 0x7f100011

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 190
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const v5, 0x7f0f04d0

    const v4, 0x7f0f0310

    const v2, 0x7f0f030f

    const/4 v3, 0x0

    .line 126
    const v0, 0x7f0300ca

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->j:Landroid/widget/RelativeLayout;

    .line 132
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->j:Landroid/widget/RelativeLayout;

    const v1, 0x7f0f0311

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->l:Landroid/widget/TextView;

    .line 134
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->m:Landroid/widget/TextView;

    .line 136
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->j:Landroid/widget/RelativeLayout;

    const v1, 0x7f0f030e

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->n:Landroid/widget/RelativeLayout;

    .line 138
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->j:Landroid/widget/RelativeLayout;

    const v1, 0x7f0f0317

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->o:Landroid/widget/RelativeLayout;

    .line 139
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->j:Landroid/widget/RelativeLayout;

    const v1, 0x7f0f0318

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->s:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->j:Landroid/widget/RelativeLayout;

    const v1, 0x7f0f01ef

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->k:Landroid/view/View;

    .line 143
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->k:Landroid/view/View;

    check-cast v0, Landroid/widget/ViewFlipper;

    .line 144
    iget-object v1, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 147
    const-string/jumbo v1, "SOURCE_FACEBOOK"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    iget-object v1, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->j:Landroid/widget/RelativeLayout;

    const v2, 0x7f0f0312

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 151
    iget-object v1, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->n:Landroid/widget/RelativeLayout;

    const v2, 0x7f0f0319

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0702fd

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 153
    iget-object v1, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->j:Landroid/widget/RelativeLayout;

    const v2, 0x7f0f0316

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/ui/widgets/YelpToggleButton;

    iput-object v1, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->p:Lcom/yelp/android/ui/widgets/YelpToggleButton;

    .line 155
    iget-object v1, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->p:Lcom/yelp/android/ui/widgets/YelpToggleButton;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->t:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/widgets/YelpToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    invoke-static {}, Lcom/facebook/share/widget/a;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    const v1, 0x7f030178

    invoke-virtual {p1, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->q:Landroid/view/View;

    .line 162
    iget-object v1, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->q:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    iget-object v1, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->q:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->u:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iget-object v1, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->q:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->e(Landroid/view/View;)V

    .line 169
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->setHasOptionsMenu(Z)V

    .line 171
    iget-object v1, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0f04cf

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f07064d

    invoke-virtual {p0, v2}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v1, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 178
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->u:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->j:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 194
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 195
    packed-switch v0, :pswitch_data_0

    .line 201
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 197
    :pswitch_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->q:Landroid/view/View;

    const v1, 0x7f0f04d0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 198
    const/4 v0, 0x1

    goto :goto_0

    .line 195
    :pswitch_data_0
    .packed-switch 0x7f0f060b
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 234
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onPause()V

    .line 235
    const-string/jumbo v0, "friends"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->d:Lcom/yelp/android/appdata/webrequests/cc;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 236
    const-string/jumbo v0, "facebook_auto_friend_get"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->e:Lcom/yelp/android/appdata/webrequests/bu;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 237
    const-string/jumbo v0, "facebook_auto_friend_post"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->f:Lcom/yelp/android/appdata/webrequests/bv;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 238
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 206
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onResume()V

    .line 207
    const-string/jumbo v0, "friends"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->d:Lcom/yelp/android/appdata/webrequests/cc;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->x:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/cc;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->d:Lcom/yelp/android/appdata/webrequests/cc;

    .line 209
    const-string/jumbo v0, "facebook_auto_friend_get"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->e:Lcom/yelp/android/appdata/webrequests/bu;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->w:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/bu;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->e:Lcom/yelp/android/appdata/webrequests/bu;

    .line 215
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 216
    const-string/jumbo v0, "SOURCE_FACEBOOK"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 219
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->e:Lcom/yelp/android/appdata/webrequests/bu;

    if-nez v0, :cond_0

    .line 220
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->H_()V

    .line 221
    new-instance v0, Lcom/yelp/android/appdata/webrequests/bu;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->w:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-direct {v0, v1}, Lcom/yelp/android/appdata/webrequests/bu;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->e:Lcom/yelp/android/appdata/webrequests/bu;

    .line 223
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->e:Lcom/yelp/android/appdata/webrequests/bu;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/bu;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 225
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->d:Lcom/yelp/android/appdata/webrequests/cc;

    if-nez v0, :cond_0

    .line 227
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->p_()V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->b:Lcom/yelp/android/ui/util/ap;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/util/ap;->b(Landroid/os/Bundle;)V

    .line 243
    const-string/jumbo v0, "source"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const-string/jumbo v0, "users"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 245
    const-string/jumbo v0, "fb_auto_friend"

    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->i:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 246
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 247
    return-void
.end method

.method public p_()V
    .locals 5

    .prologue
    .line 259
    const-string/jumbo v0, "SOURCE_FACEBOOK"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 260
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->g:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    if-nez v0, :cond_0

    .line 261
    new-instance v1, Lcom/yelp/android/ui/activities/FacebookConnectManager;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/friends/ActivityFindFriends;

    const v2, 0x7f070379

    iget-object v3, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->y:Lcom/yelp/android/ui/activities/FacebookConnectManager$a;

    sget-object v4, Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;->DEFAULT_USER_FRIEND:Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/yelp/android/ui/activities/FacebookConnectManager;-><init>(Landroid/app/Activity;ILcom/yelp/android/ui/activities/FacebookConnectManager$a;Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;)V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->g:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    .line 272
    :goto_0
    invoke-static {}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 273
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->a(Ljava/lang/Iterable;)V

    .line 280
    :goto_1
    return-void

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->g:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->y:Lcom/yelp/android/ui/activities/FacebookConnectManager$a;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->a(Lcom/yelp/android/ui/activities/FacebookConnectManager$a;)V

    .line 269
    iget-object v1, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->g:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/friends/ActivityFindFriends;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->a(Landroid/app/Activity;)V

    goto :goto_0

    .line 275
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->g:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->e()V

    goto :goto_1

    .line 278
    :cond_2
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->f()V

    goto :goto_1
.end method
