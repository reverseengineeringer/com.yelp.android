.class Lcom/yelp/android/ui/activities/friendcheckins/m;
.super Lcom/yelp/android/appdata/webrequests/j;
.source "NearbyCheckIns.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/appdata/webrequests/j",
        "<",
        "Lcom/yelp/android/appdata/webrequests/ck;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;)V
    .locals 0

    .prologue
    .line 436
    iput-object p1, p0, Lcom/yelp/android/ui/activities/friendcheckins/m;->a:Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;

    invoke-direct {p0}, Lcom/yelp/android/appdata/webrequests/j;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/location/Location;)V
    .locals 2

    .prologue
    .line 470
    const-string/jumbo v0, "NearbyFriendsActivity"

    const-string/jumbo v1, "Got location, beginning API request"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/m;->a:Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/m;->a:Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->e(Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;)Lcom/yelp/android/appdata/webrequests/cj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->enableLoading(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 472
    return-void
.end method

.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/ck;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/ck;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 440
    check-cast p1, Lcom/yelp/android/appdata/webrequests/cj;

    .line 441
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/m;->a:Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->a(Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;J)J

    .line 442
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/m;->a:Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->disableLoading()V

    .line 443
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/m;->a:Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;

    const v1, 0x7f0c00e1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 444
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 445
    invoke-virtual {p1}, Lcom/yelp/android/appdata/webrequests/cj;->d()I

    move-result v1

    if-nez v1, :cond_1

    .line 446
    new-instance v1, Lcom/yelp/android/ui/util/bs;

    invoke-direct {v1}, Lcom/yelp/android/ui/util/bs;-><init>()V

    .line 447
    const v2, 0x7f0c01c1

    const-string/jumbo v3, ""

    iget-object v4, p0, Lcom/yelp/android/ui/activities/friendcheckins/m;->a:Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;

    invoke-static {v4}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->b(Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;)Lcom/yelp/android/ui/util/h;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/yelp/android/ui/util/bs;->a(ILjava/lang/CharSequence;Landroid/widget/BaseAdapter;)V

    .line 448
    iget-object v2, p0, Lcom/yelp/android/ui/activities/friendcheckins/m;->a:Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->c(Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 449
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 450
    const v1, 0x7f070055

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 459
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/m;->a:Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;

    invoke-virtual {p1}, Lcom/yelp/android/appdata/webrequests/cj;->a()I

    move-result v1

    invoke-virtual {p1}, Lcom/yelp/android/appdata/webrequests/cj;->b()I

    move-result v2

    invoke-virtual {p1}, Lcom/yelp/android/appdata/webrequests/cj;->c()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->a(III)V

    .line 461
    invoke-virtual {p1}, Lcom/yelp/android/appdata/webrequests/cj;->c()I

    move-result v0

    if-lez v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/m;->a:Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;

    sget-object v1, Lcom/yelp/android/ui/activities/leaderboard/ActivityLeaderboard$LeaderboardType;->FRIENDS:Lcom/yelp/android/ui/activities/leaderboard/ActivityLeaderboard$LeaderboardType;

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->a(Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;Lcom/yelp/android/ui/activities/leaderboard/ActivityLeaderboard$LeaderboardType;)V

    .line 464
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/m;->a:Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;

    invoke-virtual {p1}, Lcom/yelp/android/appdata/webrequests/cj;->e()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->a(Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 465
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/m;->a:Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/m;->a:Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->d(Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->a(Ljava/util/ArrayList;)V

    .line 466
    return-void

    .line 452
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/m;->a:Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->d:Lcom/yelp/android/ui/util/bs;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/m;->a:Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->a:[I

    aget v1, v1, v5

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/bs;->a(I)Lcom/yelp/android/ui/util/bv;

    move-result-object v0

    iget-object v0, v0, Lcom/yelp/android/ui/util/bv;->a:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/yelp/android/ui/activities/friendcheckins/a;

    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/ck;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/friendcheckins/a;->a(Ljava/util/List;)V

    .line 454
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/m;->a:Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->d:Lcom/yelp/android/ui/util/bs;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/m;->a:Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->a:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/bs;->a(I)Lcom/yelp/android/ui/util/bv;

    move-result-object v0

    iget-object v0, v0, Lcom/yelp/android/ui/util/bv;->a:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/yelp/android/ui/activities/friendcheckins/a;

    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/ck;->b()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/friendcheckins/a;->a(Ljava/util/List;)V

    .line 456
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/m;->a:Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->d:Lcom/yelp/android/ui/util/bs;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/m;->a:Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->a:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/bs;->a(I)Lcom/yelp/android/ui/util/bv;

    move-result-object v0

    iget-object v0, v0, Lcom/yelp/android/ui/util/bv;->a:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/yelp/android/ui/activities/friendcheckins/a;

    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/ck;->c()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/friendcheckins/a;->a(Ljava/util/List;)V

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 478
    const/4 v0, 0x1

    return v0
.end method

.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/YelpException;",
            ")V"
        }
    .end annotation

    .prologue
    .line 483
    const-string/jumbo v0, "NearbyFriendsActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "API error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/friendcheckins/m;->a:Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;

    invoke-virtual {p2, v2}, Lcom/yelp/android/appdata/webrequests/YelpException;->getMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/m;->a:Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;

    invoke-static {p2}, Lcom/yelp/android/util/ErrorType;->getTypeFromException(Lcom/yelp/android/appdata/webrequests/YelpException;)Lcom/yelp/android/util/ErrorType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->populateError(Lcom/yelp/android/util/ErrorType;)V

    .line 485
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 436
    check-cast p2, Lcom/yelp/android/appdata/webrequests/ck;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/friendcheckins/m;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/ck;)V

    return-void
.end method
