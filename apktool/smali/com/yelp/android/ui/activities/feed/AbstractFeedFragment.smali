.class public abstract Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;
.super Lcom/yelp/android/ui/activities/support/YelpSwipeRefreshListFragment;
.source "AbstractFeedFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment$5;
    }
.end annotation


# instance fields
.field protected a:Lcom/yelp/android/ui/activities/feed/a;

.field protected b:Ljava/lang/String;

.field protected c:Lcom/yelp/android/ui/activities/feed/FeedType;

.field protected d:Lcom/yelp/android/ui/util/t;

.field protected e:Ljava/lang/String;

.field protected final f:Landroid/support/v7/widget/RecyclerView$l;

.field protected final g:Lcom/yelp/android/ci/f;

.field private j:Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest;

.field private k:Lcom/yelp/android/appdata/webrequests/em;

.field private l:Lcom/yelp/android/appdata/webrequests/ek;

.field private m:Lcom/yelp/android/appdata/webrequests/eh;

.field private n:Lcom/yelp/android/appdata/webrequests/ej;

.field private o:Lcom/yelp/android/util/c;

.field private p:Lcom/yelp/android/serializable/YelpBusiness;

.field private q:Z

.field private r:I

.field private final s:Landroid/widget/AbsListView$RecyclerListener;

.field private final t:Lcom/yelp/android/appdata/webrequests/core/c$a;

.field private final u:Lcom/yelp/android/appdata/webrequests/core/c$a;

.field private final v:Lcom/yelp/android/appdata/webrequests/core/c$a;

.field private final w:Lcom/yelp/android/appdata/webrequests/core/c$a;

.field private final x:Lcom/yelp/android/appdata/webrequests/core/c$a;

.field private final y:Lcom/yelp/android/util/c$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpSwipeRefreshListFragment;-><init>()V

    .line 95
    const/4 v0, -0x1

    iput v0, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->r:I

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->e:Ljava/lang/String;

    .line 315
    new-instance v0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment$8;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment$8;-><init>(Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->f:Landroid/support/v7/widget/RecyclerView$l;

    .line 327
    new-instance v0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment$9;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment$9;-><init>(Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->g:Lcom/yelp/android/ci/f;

    .line 388
    new-instance v0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment$10;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment$10;-><init>(Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->s:Landroid/widget/AbsListView$RecyclerListener;

    .line 412
    new-instance v0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment$11;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment$11;-><init>(Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->t:Lcom/yelp/android/appdata/webrequests/core/c$a;

    .line 451
    new-instance v0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment$12;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment$12;-><init>(Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->u:Lcom/yelp/android/appdata/webrequests/core/c$a;

    .line 477
    new-instance v0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment$13;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment$13;-><init>(Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->v:Lcom/yelp/android/appdata/webrequests/core/c$a;

    .line 507
    new-instance v0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment$2;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment$2;-><init>(Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->w:Lcom/yelp/android/appdata/webrequests/core/c$a;

    .line 532
    new-instance v0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment$3;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment$3;-><init>(Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->x:Lcom/yelp/android/appdata/webrequests/core/c$a;

    .line 550
    new-instance v0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment$4;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment$4;-><init>(Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->y:Lcom/yelp/android/util/c$a;

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;I)I
    .locals 0

    .prologue
    .line 64
    iput p1, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->r:I

    return p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest;)Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest;
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->j:Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;)Lcom/yelp/android/appdata/webrequests/core/c$a;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->t:Lcom/yelp/android/appdata/webrequests/core/c$a;

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;Lcom/yelp/android/appdata/webrequests/eh;)Lcom/yelp/android/appdata/webrequests/eh;
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->m:Lcom/yelp/android/appdata/webrequests/eh;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;Lcom/yelp/android/appdata/webrequests/ej;)Lcom/yelp/android/appdata/webrequests/ej;
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->n:Lcom/yelp/android/appdata/webrequests/ej;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;Lcom/yelp/android/appdata/webrequests/ek;)Lcom/yelp/android/appdata/webrequests/ek;
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->l:Lcom/yelp/android/appdata/webrequests/ek;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;Lcom/yelp/android/appdata/webrequests/em;)Lcom/yelp/android/appdata/webrequests/em;
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->k:Lcom/yelp/android/appdata/webrequests/em;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;Lcom/yelp/android/serializable/YelpBusiness;)Lcom/yelp/android/serializable/YelpBusiness;
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->p:Lcom/yelp/android/serializable/YelpBusiness;

    return-object p1
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;)Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->j:Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;)Lcom/yelp/android/appdata/webrequests/core/c$a;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->w:Lcom/yelp/android/appdata/webrequests/core/c$a;

    return-object v0
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;)Lcom/yelp/android/appdata/webrequests/eh;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->m:Lcom/yelp/android/appdata/webrequests/eh;

    return-object v0
.end method

.method static synthetic e(Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;)Lcom/yelp/android/appdata/webrequests/core/c$a;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->u:Lcom/yelp/android/appdata/webrequests/core/c$a;

    return-object v0
.end method

.method static synthetic f(Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;)Lcom/yelp/android/appdata/webrequests/em;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->k:Lcom/yelp/android/appdata/webrequests/em;

    return-object v0
.end method

.method static synthetic g(Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;)Lcom/yelp/android/appdata/webrequests/core/c$a;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->v:Lcom/yelp/android/appdata/webrequests/core/c$a;

    return-object v0
.end method

.method static synthetic h(Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;)Lcom/yelp/android/appdata/webrequests/ek;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->l:Lcom/yelp/android/appdata/webrequests/ek;

    return-object v0
.end method

.method private h()Lcom/yelp/android/ui/activities/reviews/ReviewSource;
    .locals 4

    .prologue
    .line 293
    sget-object v0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment$5;->a:[I

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->c:Lcom/yelp/android/ui/activities/feed/FeedType;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/feed/FeedType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 307
    sget-object v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->FeedFriendYnra:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    .line 308
    const-string/jumbo v1, "AbstractFeedFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Starting YNRA review from invalid feed type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->c:Lcom/yelp/android/ui/activities/feed/FeedType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yelp/android/util/YelpLog;->remoteError(Ljava/lang/Object;Ljava/lang/String;)V

    .line 312
    :goto_0
    return-object v0

    .line 295
    :pswitch_0
    sget-object v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->FeedMainYnra:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    goto :goto_0

    .line 298
    :pswitch_1
    sget-object v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->FeedMeYnra:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    goto :goto_0

    .line 301
    :pswitch_2
    sget-object v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->FeedNearbyYnra:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    goto :goto_0

    .line 304
    :pswitch_3
    sget-object v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->FeedFriendYnra:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    goto :goto_0

    .line 293
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic i(Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;)Lcom/yelp/android/ui/activities/reviews/ReviewSource;
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->h()Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    move-result-object v0

    return-object v0
.end method

.method static synthetic j(Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;)Lcom/yelp/android/appdata/webrequests/core/c$a;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->x:Lcom/yelp/android/appdata/webrequests/core/c$a;

    return-object v0
.end method

.method static synthetic k(Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;)Lcom/yelp/android/appdata/webrequests/ej;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->n:Lcom/yelp/android/appdata/webrequests/ej;

    return-object v0
.end method

.method static synthetic l(Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;)Lcom/yelp/android/serializable/YelpBusiness;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->p:Lcom/yelp/android/serializable/YelpBusiness;

    return-object v0
.end method

.method static synthetic m(Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;)Lcom/yelp/android/util/c;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->o:Lcom/yelp/android/util/c;

    return-object v0
.end method


# virtual methods
.method public B_()V
    .locals 6

    .prologue
    .line 232
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->a:Lcom/yelp/android/ui/activities/feed/a;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/feed/a;->b()I

    move-result v0

    .line 233
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 235
    const-string/jumbo v2, "seen_item_count"

    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    const-string/jumbo v0, "total_item_count"

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->q()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    const-string/jumbo v0, "request_id"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->b:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 239
    const-string/jumbo v0, "user_did_scroll"

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->h()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->i()V

    .line 244
    :goto_0
    sget-object v0, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;->FEED_SEEN:Lcom/yelp/android/ui/activities/feed/FeedEventIriType;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->c:Lcom/yelp/android/ui/activities/feed/FeedType;

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;->getFeedEventIriByFeedType(Lcom/yelp/android/ui/activities/feed/FeedType;)Lcom/yelp/android/analytics/iris/EventIri;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 245
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->a:Lcom/yelp/android/ui/activities/feed/a;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/feed/a;->c()V

    .line 246
    return-void

    .line 242
    :cond_0
    const-string/jumbo v0, "user_did_scroll"

    iget-boolean v2, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->q:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public a(Lcom/yelp/android/ui/activities/feed/FeedType;)V
    .locals 5

    .prologue
    .line 203
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->c:Lcom/yelp/android/ui/activities/feed/FeedType;

    if-ne p1, v0, :cond_0

    .line 213
    :goto_0
    return-void

    .line 206
    :cond_0
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->c:Lcom/yelp/android/ui/activities/feed/FeedType;

    .line 207
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setItemsCanFocus(Z)V

    .line 209
    new-instance v0, Lcom/yelp/android/ui/activities/feed/a;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->c:Lcom/yelp/android/ui/activities/feed/FeedType;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->g:Lcom/yelp/android/ci/f;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->f:Landroid/support/v7/widget/RecyclerView$l;

    iget-object v4, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->d:Lcom/yelp/android/ui/util/t;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/yelp/android/ui/activities/feed/a;-><init>(Lcom/yelp/android/ui/activities/feed/FeedType;Lcom/yelp/android/ci/f;Landroid/support/v7/widget/RecyclerView$l;Lcom/yelp/android/ui/util/t;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->a:Lcom/yelp/android/ui/activities/feed/a;

    .line 212
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->a:Lcom/yelp/android/ui/activities/feed/a;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->a(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/FeedItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 223
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->a:Lcom/yelp/android/ui/activities/feed/a;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/feed/a;->a(Ljava/util/Collection;)V

    .line 224
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->a:Lcom/yelp/android/ui/activities/feed/a;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/feed/a;->getCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->b(I)V

    .line 225
    return-void
.end method

.method protected b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/FeedItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 249
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->a:Lcom/yelp/android/ui/activities/feed/a;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/feed/a;->clear()V

    .line 250
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->a(Ljava/util/List;)V

    .line 251
    return-void
.end method

.method public c()Lcom/yelp/android/ui/activities/feed/a;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->a:Lcom/yelp/android/ui/activities/feed/a;

    return-object v0
.end method

.method protected f()V
    .locals 2

    .prologue
    .line 254
    const-string/jumbo v0, "com.yelp.android.tips.update"

    new-instance v1, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment$1;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment$1;-><init>(Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->b(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 266
    const-string/jumbo v0, "com.yelp.android.review.update"

    new-instance v1, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment$6;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment$6;-><init>(Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->b(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 277
    const-string/jumbo v0, "com.yelp.android.business.update"

    new-instance v1, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment$7;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment$7;-><init>(Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->b(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 288
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    .line 180
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/YelpSwipeRefreshListFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 181
    sparse-switch p1, :sswitch_data_0

    .line 195
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->o:Lcom/yelp/android/util/c;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->p:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0, p1, p2, v1}, Lcom/yelp/android/util/c;->a(IILcom/yelp/android/serializable/YelpBusiness;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->p:Lcom/yelp/android/serializable/YelpBusiness;

    .line 200
    :goto_0
    return-void

    .line 185
    :sswitch_0
    invoke-static {}, Lcom/yelp/android/ui/activities/support/YelpActivity$IntentData;->popData()Ljava/lang/Object;

    goto :goto_0

    .line 189
    :sswitch_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->a:Lcom/yelp/android/ui/activities/feed/a;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->a:Lcom/yelp/android/ui/activities/feed/a;

    iget v2, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->r:I

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/activities/feed/a;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/feed/a;->c(Ljava/lang/Object;)V

    .line 190
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->a:Lcom/yelp/android/ui/activities/feed/a;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/feed/a;->notifyDataSetChanged()V

    goto :goto_0

    .line 181
    :sswitch_data_0
    .sparse-switch
        0x3ea -> :sswitch_1
        0x42e -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 155
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpSwipeRefreshListFragment;->onPause()V

    .line 156
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->h()Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->q:Z

    .line 157
    const-string/jumbo v0, "review_vote"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->j:Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 158
    const-string/jumbo v0, "tip_feedback"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->k:Lcom/yelp/android/appdata/webrequests/em;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 159
    const-string/jumbo v0, "checkin_feedback"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->l:Lcom/yelp/android/appdata/webrequests/ek;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 160
    const-string/jumbo v0, "photo_feedback"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->m:Lcom/yelp/android/appdata/webrequests/eh;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 161
    const-string/jumbo v0, "video_feedback"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->n:Lcom/yelp/android/appdata/webrequests/ej;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 162
    const-string/jumbo v0, "add_bookmark"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->o:Lcom/yelp/android/util/c;

    invoke-virtual {v1}, Lcom/yelp/android/util/c;->a()Lcom/yelp/android/appdata/webrequests/h;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 163
    const-string/jumbo v0, "remove_bookmark"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->o:Lcom/yelp/android/util/c;

    invoke-virtual {v1}, Lcom/yelp/android/util/c;->b()Lcom/yelp/android/appdata/webrequests/dk;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 164
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 128
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpSwipeRefreshListFragment;->onResume()V

    .line 129
    const-string/jumbo v0, "review_vote"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->j:Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->t:Lcom/yelp/android/appdata/webrequests/core/c$a;

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->j:Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest;

    .line 131
    const-string/jumbo v0, "tip_feedback"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->k:Lcom/yelp/android/appdata/webrequests/em;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->u:Lcom/yelp/android/appdata/webrequests/core/c$a;

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/em;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->k:Lcom/yelp/android/appdata/webrequests/em;

    .line 133
    const-string/jumbo v0, "checkin_feedback"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->l:Lcom/yelp/android/appdata/webrequests/ek;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->v:Lcom/yelp/android/appdata/webrequests/core/c$a;

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/ek;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->l:Lcom/yelp/android/appdata/webrequests/ek;

    .line 138
    const-string/jumbo v0, "photo_feedback"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->m:Lcom/yelp/android/appdata/webrequests/eh;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->w:Lcom/yelp/android/appdata/webrequests/core/c$a;

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/eh;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->m:Lcom/yelp/android/appdata/webrequests/eh;

    .line 143
    const-string/jumbo v0, "video_feedback"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->n:Lcom/yelp/android/appdata/webrequests/ej;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->x:Lcom/yelp/android/appdata/webrequests/core/c$a;

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/ej;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->n:Lcom/yelp/android/appdata/webrequests/ej;

    .line 148
    const-string/jumbo v0, "remove_bookmark"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->o:Lcom/yelp/android/util/c;

    invoke-virtual {v1}, Lcom/yelp/android/util/c;->d()Lcom/yelp/android/appdata/webrequests/core/c$a;

    move-result-object v1

    invoke-virtual {p0, v0, v3, v1}, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 150
    const-string/jumbo v0, "add_bookmark"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->o:Lcom/yelp/android/util/c;

    invoke-virtual {v1}, Lcom/yelp/android/util/c;->c()Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    move-result-object v1

    invoke-virtual {p0, v0, v3, v1}, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 151
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 168
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpSwipeRefreshListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 169
    const-string/jumbo v0, "all_entries"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->a:Lcom/yelp/android/ui/activities/feed/a;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/feed/a;->d()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 170
    const-string/jumbo v0, "has_user_scrolled"

    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->q:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 171
    const-string/jumbo v0, "feed_request_id"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string/jumbo v0, "next_page_index"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string/jumbo v0, "selected_item_position"

    iget v1, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->r:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 174
    const-string/jumbo v0, "feed_type"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->c:Lcom/yelp/android/ui/activities/feed/FeedType;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 175
    const-string/jumbo v0, "business_to_bookmark"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->p:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 176
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 102
    invoke-super {p0, p1, p2}, Lcom/yelp/android/ui/activities/support/YelpSwipeRefreshListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 103
    invoke-static {p0}, Lcom/yelp/android/ui/util/t;->a(Landroid/support/v4/app/Fragment;)Lcom/yelp/android/ui/util/t;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->d:Lcom/yelp/android/ui/util/t;

    .line 104
    if-eqz p2, :cond_0

    .line 105
    const-string/jumbo v0, "has_user_scrolled"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->q:Z

    .line 106
    const-string/jumbo v0, "feed_request_id"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->b:Ljava/lang/String;

    .line 107
    const-string/jumbo v0, "next_page_index"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->e:Ljava/lang/String;

    .line 108
    const-string/jumbo v0, "selected_item_position"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->r:I

    .line 109
    const-string/jumbo v0, "feed_type"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/feed/FeedType;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->c:Lcom/yelp/android/ui/activities/feed/FeedType;

    .line 110
    const-string/jumbo v0, "business_to_bookmark"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->p:Lcom/yelp/android/serializable/YelpBusiness;

    .line 111
    new-instance v0, Lcom/yelp/android/ui/activities/feed/a;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->c:Lcom/yelp/android/ui/activities/feed/FeedType;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->g:Lcom/yelp/android/ci/f;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->f:Landroid/support/v7/widget/RecyclerView$l;

    iget-object v4, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->d:Lcom/yelp/android/ui/util/t;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/yelp/android/ui/activities/feed/a;-><init>(Lcom/yelp/android/ui/activities/feed/FeedType;Lcom/yelp/android/ci/f;Landroid/support/v7/widget/RecyclerView$l;Lcom/yelp/android/ui/util/t;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->a:Lcom/yelp/android/ui/activities/feed/a;

    .line 114
    const-string/jumbo v0, "all_entries"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 116
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->a:Lcom/yelp/android/ui/activities/feed/a;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/feed/a;->a(Ljava/util/Collection;)V

    .line 117
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->a:Lcom/yelp/android/ui/activities/feed/a;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->a(Landroid/widget/ListAdapter;)V

    .line 118
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->a:Lcom/yelp/android/ui/activities/feed/a;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/feed/a;->getCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->b(I)V

    .line 120
    :cond_0
    new-instance v0, Lcom/yelp/android/util/c;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->y:Lcom/yelp/android/util/c$a;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->p:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/util/c;-><init>(Landroid/support/v4/app/FragmentActivity;Lcom/yelp/android/util/c$a;Lcom/yelp/android/serializable/YelpBusiness;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->o:Lcom/yelp/android/util/c;

    .line 122
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->f()V

    .line 123
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->s:Landroid/widget/AbsListView$RecyclerListener;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 124
    return-void
.end method
