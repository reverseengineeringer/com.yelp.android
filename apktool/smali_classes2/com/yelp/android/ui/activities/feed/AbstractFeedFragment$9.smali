.class Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment$9;
.super Ljava/lang/Object;
.source "AbstractFeedFragment.java"

# interfaces
.implements Lcom/yelp/android/ci/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;)V
    .locals 0

    .prologue
    .line 328
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment$9;->a:Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/ci/e;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 331
    invoke-virtual {p1}, Lcom/yelp/android/ci/e;->a()Lcom/yelp/android/ui/activities/feed/FeedEventIriType;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment$9;->a:Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->c:Lcom/yelp/android/ui/activities/feed/FeedType;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;->getFeedEventIriByFeedType(Lcom/yelp/android/ui/activities/feed/FeedType;)Lcom/yelp/android/analytics/iris/EventIri;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yelp/android/ci/e;->b()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 335
    instance-of v0, p1, Lcom/yelp/android/ci/h;

    if-eqz v0, :cond_1

    .line 336
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment$9;->a:Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;

    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment$9;->a:Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->a(Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;)Lcom/yelp/android/appdata/webrequests/core/c$a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yelp/android/ci/e;->b(Lcom/yelp/android/appdata/webrequests/core/c$a;)Lcom/yelp/android/appdata/webrequests/core/b;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest;

    invoke-static {v1, v0}, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->a(Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest;)Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest;

    .line 338
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment$9;->a:Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->b(Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;)Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 385
    :cond_0
    :goto_0
    return-void

    .line 339
    :cond_1
    instance-of v0, p1, Lcom/yelp/android/ci/a;

    if-eqz v0, :cond_2

    .line 340
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment$9;->a:Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;

    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment$9;->a:Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->c(Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;)Lcom/yelp/android/appdata/webrequests/core/c$a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yelp/android/ci/e;->b(Lcom/yelp/android/appdata/webrequests/core/c$a;)Lcom/yelp/android/appdata/webrequests/core/b;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/eh;

    invoke-static {v1, v0}, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->a(Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;Lcom/yelp/android/appdata/webrequests/eh;)Lcom/yelp/android/appdata/webrequests/eh;

    .line 343
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment$9;->a:Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->d(Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;)Lcom/yelp/android/appdata/webrequests/eh;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/eh;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    goto :goto_0

    .line 344
    :cond_2
    instance-of v0, p1, Lcom/yelp/android/ci/i;

    if-eqz v0, :cond_3

    .line 345
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment$9;->a:Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;

    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment$9;->a:Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->e(Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;)Lcom/yelp/android/appdata/webrequests/core/c$a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yelp/android/ci/e;->b(Lcom/yelp/android/appdata/webrequests/core/c$a;)Lcom/yelp/android/appdata/webrequests/core/b;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/em;

    invoke-static {v1, v0}, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->a(Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;Lcom/yelp/android/appdata/webrequests/em;)Lcom/yelp/android/appdata/webrequests/em;

    .line 348
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment$9;->a:Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->f(Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;)Lcom/yelp/android/appdata/webrequests/em;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/em;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    goto :goto_0

    .line 349
    :cond_3
    instance-of v0, p1, Lcom/yelp/android/ci/d;

    if-eqz v0, :cond_4

    .line 350
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment$9;->a:Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;

    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment$9;->a:Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->g(Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;)Lcom/yelp/android/appdata/webrequests/core/c$a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yelp/android/ci/e;->b(Lcom/yelp/android/appdata/webrequests/core/c$a;)Lcom/yelp/android/appdata/webrequests/core/b;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/ek;

    invoke-static {v1, v0}, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->a(Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;Lcom/yelp/android/appdata/webrequests/ek;)Lcom/yelp/android/appdata/webrequests/ek;

    .line 353
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment$9;->a:Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->h(Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;)Lcom/yelp/android/appdata/webrequests/ek;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/ek;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    goto :goto_0

    .line 354
    :cond_4
    instance-of v0, p1, Lcom/yelp/android/ci/c;

    if-eqz v0, :cond_5

    .line 355
    check-cast p1, Lcom/yelp/android/ci/c;

    .line 356
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment$9;->a:Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment$9;->a:Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p1}, Lcom/yelp/android/ci/c;->c()Lcom/yelp/android/serializable/YelpCheckIn;

    move-result-object v2

    invoke-virtual {p1}, Lcom/yelp/android/ci/c;->d()Z

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpCheckIn;Z)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 361
    :cond_5
    instance-of v0, p1, Lcom/yelp/android/ci/k;

    if-eqz v0, :cond_6

    .line 362
    check-cast p1, Lcom/yelp/android/ci/k;

    .line 363
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment$9;->a:Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;

    invoke-virtual {p1}, Lcom/yelp/android/ci/k;->e()I

    move-result v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->a(Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;I)I

    .line 364
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment$9;->a:Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->i(Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;)Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    move-result-object v0

    .line 365
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment$9;->a:Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p1}, Lcom/yelp/android/ci/k;->c()Lcom/yelp/android/serializable/FeedItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/FeedItem;->l()Lcom/yelp/android/serializable/FeedGroupedByInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/FeedGroupedByInfo;->a()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v2

    invoke-virtual {p1}, Lcom/yelp/android/ci/k;->d()I

    move-result v3

    invoke-static {v1, v2, v3, v0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;ILcom/yelp/android/ui/activities/reviews/ReviewSource;)Landroid/content/Intent;

    move-result-object v0

    .line 374
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment$9;->a:Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;

    const/16 v2, 0x3ea

    invoke-virtual {v1, v0, v2}, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 375
    :cond_6
    instance-of v0, p1, Lcom/yelp/android/ci/j;

    if-eqz v0, :cond_7

    .line 376
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment$9;->a:Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;

    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment$9;->a:Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->j(Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;)Lcom/yelp/android/appdata/webrequests/core/c$a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yelp/android/ci/e;->b(Lcom/yelp/android/appdata/webrequests/core/c$a;)Lcom/yelp/android/appdata/webrequests/core/b;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/ej;

    invoke-static {v1, v0}, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->a(Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;Lcom/yelp/android/appdata/webrequests/ej;)Lcom/yelp/android/appdata/webrequests/ej;

    .line 379
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment$9;->a:Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->k(Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;)Lcom/yelp/android/appdata/webrequests/ej;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/ej;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    goto/16 :goto_0

    .line 380
    :cond_7
    instance-of v0, p1, Lcom/yelp/android/ci/b;

    if-eqz v0, :cond_0

    .line 381
    check-cast p1, Lcom/yelp/android/ci/b;

    .line 382
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment$9;->a:Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;

    invoke-virtual {p1}, Lcom/yelp/android/ci/b;->c()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->a(Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;Lcom/yelp/android/serializable/YelpBusiness;)Lcom/yelp/android/serializable/YelpBusiness;

    .line 383
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment$9;->a:Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->m(Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;)Lcom/yelp/android/util/c;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment$9;->a:Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->l(Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/util/c;->a(Lcom/yelp/android/serializable/YelpBusiness;)V

    goto/16 :goto_0
.end method
