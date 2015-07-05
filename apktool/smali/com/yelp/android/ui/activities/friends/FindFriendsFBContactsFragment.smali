.class public Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;
.super Lcom/yelp/android/ui/activities/support/YelpListFragment;
.source "FindFriendsFBContactsFragment.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/yelp/android/ui/util/cj;

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

.field private d:Lcom/yelp/android/appdata/webrequests/cl;

.field private e:Lcom/yelp/android/appdata/webrequests/cc;

.field private g:Lcom/yelp/android/appdata/webrequests/cd;

.field private h:Lcom/yelp/android/ui/activities/FacebookConnectManager;
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

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/RelativeLayout;

.field private l:Landroid/widget/RelativeLayout;

.field private m:Lcom/yelp/android/ui/widgets/YelpToggleButton;

.field private final n:Landroid/view/View$OnClickListener;

.field private final o:Landroid/view/View$OnClickListener;

.field private final p:Landroid/view/View$OnClickListener;

.field private final q:Lcom/yelp/android/av/i;

.field private final r:Lcom/yelp/android/appdata/webrequests/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final s:Lcom/yelp/android/appdata/webrequests/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Lcom/yelp/android/appdata/webrequests/cm;",
            ">;"
        }
    .end annotation
.end field

.field private final t:Lcom/yelp/android/ui/activities/fg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/ui/activities/fg",
            "<",
            "Lcom/yelp/android/ui/activities/friends/ActivityFindFriends;",
            ">;"
        }
    .end annotation
.end field

.field private final u:Lcom/yelp/android/appdata/webrequests/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Lcom/yelp/android/appdata/RemoteConfigPreferences;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;-><init>()V

    .line 292
    new-instance v0, Lcom/yelp/android/ui/activities/friends/c;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/friends/c;-><init>(Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->n:Landroid/view/View$OnClickListener;

    .line 329
    new-instance v0, Lcom/yelp/android/ui/activities/friends/f;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/friends/f;-><init>(Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->o:Landroid/view/View$OnClickListener;

    .line 345
    new-instance v0, Lcom/yelp/android/ui/activities/friends/g;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/friends/g;-><init>(Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->p:Landroid/view/View$OnClickListener;

    .line 365
    new-instance v0, Lcom/yelp/android/ui/activities/friends/h;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/friends/h;-><init>(Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->q:Lcom/yelp/android/av/i;

    .line 389
    new-instance v0, Lcom/yelp/android/ui/activities/friends/i;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/friends/i;-><init>(Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->r:Lcom/yelp/android/appdata/webrequests/m;

    .line 404
    new-instance v0, Lcom/yelp/android/ui/activities/friends/j;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/friends/j;-><init>(Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->s:Lcom/yelp/android/appdata/webrequests/m;

    .line 463
    new-instance v0, Lcom/yelp/android/ui/activities/friends/l;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/friends/l;-><init>(Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->t:Lcom/yelp/android/ui/activities/fg;

    .line 492
    new-instance v0, Lcom/yelp/android/ui/activities/friends/m;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/friends/m;-><init>(Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->u:Lcom/yelp/android/appdata/webrequests/m;

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;Lcom/yelp/android/appdata/webrequests/cd;)Lcom/yelp/android/appdata/webrequests/cd;
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->g:Lcom/yelp/android/appdata/webrequests/cd;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;Ljava/lang/Iterable;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->a(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;Ljava/util/ArrayList;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 63
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

    .line 261
    const-string/jumbo v0, "SOURCE_FACEBOOK"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 262
    new-instance v1, Lcom/yelp/android/appdata/webrequests/cl;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->s:Lcom/yelp/android/appdata/webrequests/m;

    invoke-direct {v1, v2, p1, v3, v0}, Lcom/yelp/android/appdata/webrequests/cl;-><init>(Lcom/yelp/android/appdata/webrequests/m;Ljava/lang/Iterable;ZZ)V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->d:Lcom/yelp/android/appdata/webrequests/cl;

    .line 264
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->d:Lcom/yelp/android/appdata/webrequests/cl;

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/cl;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 265
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->d:Lcom/yelp/android/appdata/webrequests/cl;

    const v1, 0x7f070280

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;I)V

    .line 266
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
    .line 269
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->j()V

    .line 270
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setVisibility(I)V

    .line 271
    iput-object p1, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->c:Ljava/util/ArrayList;

    .line 272
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->b:Lcom/yelp/android/ui/util/cj;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/cj;->clear()V

    .line 273
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->b:Lcom/yelp/android/ui/util/cj;

    invoke-virtual {v0, p2}, Lcom/yelp/android/ui/util/cj;->a(Ljava/util/Map;)V

    .line 274
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->b:Lcom/yelp/android/ui/util/cj;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/cj;->a(Ljava/util/List;)V

    .line 275
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->a(Z)V

    .line 276
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;Z)Z
    .locals 0

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->i:Z

    return p1
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->j:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;Z)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->b(Z)V

    return-void
.end method

.method private b(Z)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 279
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->j()V

    .line 280
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->m:Lcom/yelp/android/ui/widgets/YelpToggleButton;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/widgets/YelpToggleButton;->setChecked(Z)V

    .line 281
    if-eqz p1, :cond_1

    .line 282
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->d:Lcom/yelp/android/appdata/webrequests/cl;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->d:Lcom/yelp/android/appdata/webrequests/cl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/cl;->cancel(Z)V

    .line 285
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setVisibility(I)V

    .line 286
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 290
    :goto_0
    return-void

    .line 288
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->a_()V

    goto :goto_0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->k:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public static c()Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;
    .locals 1

    .prologue
    .line 88
    new-instance v0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;-><init>()V

    return-object v0
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;)Lcom/yelp/android/ui/util/cj;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->b:Lcom/yelp/android/ui/util/cj;

    return-object v0
.end method

.method static synthetic e(Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->l:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 241
    const-string/jumbo v0, "SOURCE_CONTACTS"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    const/4 v0, 0x0

    const v1, 0x7f070280

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;I)V

    .line 243
    new-instance v0, Lcom/yelp/android/ui/activities/friends/b;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/friends/b;-><init>(Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/friends/b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 258
    :goto_0
    return-void

    .line 256
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->a(Ljava/lang/Iterable;)V

    goto :goto_0
.end method

.method static synthetic f(Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;)Lcom/yelp/android/ui/widgets/YelpToggleButton;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->m:Lcom/yelp/android/ui/widgets/YelpToggleButton;

    return-object v0
.end method

.method static synthetic g(Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;)Lcom/yelp/android/av/i;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->q:Lcom/yelp/android/av/i;

    return-object v0
.end method

.method static synthetic h(Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;)Lcom/yelp/android/appdata/webrequests/cd;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->g:Lcom/yelp/android/appdata/webrequests/cd;

    return-object v0
.end method

.method static synthetic i(Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;)Lcom/yelp/android/ui/activities/FacebookConnectManager;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->h:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    return-object v0
.end method

.method static synthetic j(Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;)Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->i:Z

    return v0
.end method

.method static synthetic k(Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;)Lcom/yelp/android/appdata/webrequests/cc;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->e:Lcom/yelp/android/appdata/webrequests/cc;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2

    .prologue
    .line 231
    invoke-super/range {p0 .. p5}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->a(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 232
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/User;

    .line 233
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->startActivity(Landroid/content/Intent;)V

    .line 234
    return-void
.end method

.method protected a(Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 212
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->a(Lcom/yelp/android/appdata/webrequests/YelpException;)V

    .line 213
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->getEmptyView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 214
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 215
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 237
    iput-object p1, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->a:Ljava/lang/String;

    .line 238
    return-void
.end method

.method public a_()V
    .locals 6

    .prologue
    .line 187
    const-string/jumbo v0, "SOURCE_FACEBOOK"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 188
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->h:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    if-nez v0, :cond_0

    .line 189
    new-instance v0, Lcom/yelp/android/ui/activities/FacebookConnectManager;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/ui/activities/friends/ActivityFindFriends;

    const v2, 0x7f07033f

    iget-object v3, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->t:Lcom/yelp/android/ui/activities/fg;

    sget-object v4, Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;->DEFAULT_USER_FRIEND:Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;

    const/16 v5, 0x3ff

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/ui/activities/FacebookConnectManager;-><init>(Landroid/app/Activity;ILcom/yelp/android/ui/activities/fg;Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;I)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->h:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    .line 197
    :goto_0
    invoke-static {}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->a(Ljava/lang/Iterable;)V

    .line 208
    :goto_1
    return-void

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->h:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->t:Lcom/yelp/android/ui/activities/fg;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->a(Lcom/yelp/android/ui/activities/fg;)V

    .line 194
    iget-object v1, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->h:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/friends/ActivityFindFriends;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->a(Landroid/app/Activity;)V

    goto :goto_0

    .line 200
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->h:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->e()V

    goto :goto_1

    .line 202
    :cond_2
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->h()Lcom/yelp/android/appdata/RemoteConfigPreferences;

    move-result-object v0

    if-nez v0, :cond_3

    .line 203
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->u:Lcom/yelp/android/appdata/webrequests/m;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/dc;->a(Lcom/yelp/android/appdata/webrequests/m;)V

    .line 204
    const/4 v0, 0x0

    const v1, 0x7f070280

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;I)V

    goto :goto_1

    .line 206
    :cond_3
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->e()V

    goto :goto_1
.end method

.method public d()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 219
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->FriendFinder:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->d()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

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
    const/4 v2, 0x1

    .line 224
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
    .line 177
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 178
    packed-switch p1, :pswitch_data_0

    .line 183
    :goto_0
    return-void

    .line 180
    :pswitch_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->h:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->a(IILandroid/content/Intent;)V

    goto :goto_0

    .line 178
    nop

    :pswitch_data_0
    .packed-switch 0x3ff
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 93
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 94
    if-eqz p1, :cond_0

    .line 95
    const-string/jumbo v0, "source"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->a:Ljava/lang/String;

    .line 96
    const-string/jumbo v0, "users"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->c:Ljava/util/ArrayList;

    .line 97
    invoke-static {p1}, Lcom/yelp/android/ui/util/cj;->a(Landroid/os/Bundle;)Lcom/yelp/android/ui/util/cj;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->b:Lcom/yelp/android/ui/util/cj;

    .line 98
    const-string/jumbo v0, "fb_auto_friend"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->i:Z

    .line 102
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->b:Lcom/yelp/android/ui/util/cj;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->n:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/cj;->a(Landroid/view/View$OnClickListener;)V

    .line 103
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->b:Lcom/yelp/android/ui/util/cj;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/cj;->a(Z)V

    .line 104
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->b:Lcom/yelp/android/ui/util/cj;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->a(Landroid/widget/ListAdapter;)V

    .line 105
    return-void

    .line 100
    :cond_0
    new-instance v0, Lcom/yelp/android/ui/util/cj;

    const v1, 0x7f030112

    invoke-direct {v0, v1}, Lcom/yelp/android/ui/util/cj;-><init>(I)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->b:Lcom/yelp/android/ui/util/cj;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 110
    const v0, 0x7f0300b0

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 112
    const v0, 0x7f0c02b1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->j:Landroid/widget/TextView;

    .line 113
    const v0, 0x7f0c02b0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->k:Landroid/widget/RelativeLayout;

    .line 114
    const v0, 0x7f0c02b7

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->l:Landroid/widget/RelativeLayout;

    .line 115
    const v0, 0x7f0c02b8

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->o:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    const-string/jumbo v0, "SOURCE_FACEBOOK"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    const v0, 0x7f0c02b2

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 121
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->k:Landroid/widget/RelativeLayout;

    const v2, 0x7f0c02b9

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0702b0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 123
    const v0, 0x7f0c02b6

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/YelpToggleButton;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->m:Lcom/yelp/android/ui/widgets/YelpToggleButton;

    .line 125
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->m:Lcom/yelp/android/ui/widgets/YelpToggleButton;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->p:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/widgets/YelpToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    :cond_0
    return-object v1
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 157
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onPause()V

    .line 158
    const-string/jumbo v0, "friends"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->d:Lcom/yelp/android/appdata/webrequests/cl;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 159
    const-string/jumbo v0, "facebook_auto_friend_get"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->e:Lcom/yelp/android/appdata/webrequests/cc;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 160
    const-string/jumbo v0, "facebook_auto_friend_post"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->g:Lcom/yelp/android/appdata/webrequests/cd;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 161
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->h:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->h:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    invoke-static {}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->h:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->a(Lcom/yelp/android/ui/activities/fg;)V

    .line 164
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 132
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onResume()V

    .line 133
    const-string/jumbo v0, "friends"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->d:Lcom/yelp/android/appdata/webrequests/cl;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->s:Lcom/yelp/android/appdata/webrequests/m;

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/m;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/cl;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->d:Lcom/yelp/android/appdata/webrequests/cl;

    .line 135
    const-string/jumbo v0, "facebook_auto_friend_get"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->e:Lcom/yelp/android/appdata/webrequests/cc;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->r:Lcom/yelp/android/appdata/webrequests/m;

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/m;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/cc;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->e:Lcom/yelp/android/appdata/webrequests/cc;

    .line 138
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 139
    const-string/jumbo v0, "SOURCE_FACEBOOK"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->i_()V

    .line 143
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->e:Lcom/yelp/android/appdata/webrequests/cc;

    if-nez v0, :cond_0

    .line 144
    new-instance v0, Lcom/yelp/android/appdata/webrequests/cc;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->r:Lcom/yelp/android/appdata/webrequests/m;

    invoke-direct {v0, v1}, Lcom/yelp/android/appdata/webrequests/cc;-><init>(Lcom/yelp/android/appdata/webrequests/m;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->e:Lcom/yelp/android/appdata/webrequests/cc;

    .line 146
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->e:Lcom/yelp/android/appdata/webrequests/cc;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/cc;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->d:Lcom/yelp/android/appdata/webrequests/cl;

    if-nez v0, :cond_0

    .line 150
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->a_()V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->b:Lcom/yelp/android/ui/util/cj;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/util/cj;->b(Landroid/os/Bundle;)V

    .line 169
    const-string/jumbo v0, "source"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string/jumbo v0, "users"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 171
    const-string/jumbo v0, "fb_auto_friend"

    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->i:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 172
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 173
    return-void
.end method
