.class Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns$5;
.super Lcom/yelp/android/appdata/webrequests/k$b;
.source "NearbyCheckIns.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/appdata/webrequests/k$b",
        "<",
        "Lcom/yelp/android/appdata/webrequests/cb$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;)V
    .locals 0

    .prologue
    .line 458
    iput-object p1, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns$5;->a:Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;

    invoke-direct {p0}, Lcom/yelp/android/appdata/webrequests/k$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/location/Location;)V
    .locals 2

    .prologue
    .line 498
    const-string/jumbo v0, "NearbyFriendsActivity"

    const-string/jumbo v1, "Got location, beginning API request"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns$5;->a:Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns$5;->a:Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->e(Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;)Lcom/yelp/android/appdata/webrequests/cb;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->enableLoading(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 500
    return-void
.end method

.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/cb$a;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/cb$a;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 463
    check-cast p1, Lcom/yelp/android/appdata/webrequests/cb;

    .line 464
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns$5;->a:Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->a(Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;J)J

    .line 465
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns$5;->a:Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->disableLoading()V

    .line 466
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns$5;->a:Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;

    const v1, 0x7f0f012d

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 467
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 468
    invoke-virtual {p1}, Lcom/yelp/android/appdata/webrequests/cb;->A()I

    move-result v1

    if-nez v1, :cond_1

    .line 469
    new-instance v1, Lcom/yelp/android/ui/util/aj;

    invoke-direct {v1}, Lcom/yelp/android/ui/util/aj;-><init>()V

    .line 470
    const v2, 0x7f0f01f1

    const-string/jumbo v3, ""

    iget-object v4, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns$5;->a:Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;

    invoke-static {v4}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->b(Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;)Lcom/yelp/android/ui/util/e;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/yelp/android/ui/util/aj;->a(ILjava/lang/CharSequence;Landroid/widget/BaseAdapter;)V

    .line 471
    iget-object v2, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns$5;->a:Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->c(Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 472
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 473
    const v1, 0x7f0700dd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 485
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns$5;->a:Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;

    invoke-virtual {p1}, Lcom/yelp/android/appdata/webrequests/cb;->x()I

    move-result v1

    invoke-virtual {p1}, Lcom/yelp/android/appdata/webrequests/cb;->y()I

    move-result v2

    invoke-virtual {p1}, Lcom/yelp/android/appdata/webrequests/cb;->z()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->a(III)V

    .line 489
    invoke-virtual {p1}, Lcom/yelp/android/appdata/webrequests/cb;->z()I

    move-result v0

    if-lez v0, :cond_0

    .line 490
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns$5;->a:Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;

    sget-object v1, Lcom/yelp/android/ui/activities/leaderboard/ActivityLeaderboard$LeaderboardType;->FRIENDS:Lcom/yelp/android/ui/activities/leaderboard/ActivityLeaderboard$LeaderboardType;

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->a(Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;Lcom/yelp/android/ui/activities/leaderboard/ActivityLeaderboard$LeaderboardType;)V

    .line 492
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns$5;->a:Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;

    invoke-virtual {p1}, Lcom/yelp/android/appdata/webrequests/cb;->B()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->a(Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 493
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns$5;->a:Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns$5;->a:Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->d(Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->a(Ljava/util/ArrayList;)V

    .line 494
    return-void

    .line 475
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns$5;->a:Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->d:Lcom/yelp/android/ui/util/aj;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns$5;->a:Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->a:[I

    aget v1, v1, v5

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/aj;->a(I)Lcom/yelp/android/ui/util/aj$b;

    move-result-object v0

    iget-object v0, v0, Lcom/yelp/android/ui/util/aj$b;->a:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/yelp/android/ui/activities/friendcheckins/a;

    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/cb$a;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/friendcheckins/a;->a(Ljava/util/List;)V

    .line 478
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns$5;->a:Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->d:Lcom/yelp/android/ui/util/aj;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns$5;->a:Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->a:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/aj;->a(I)Lcom/yelp/android/ui/util/aj$b;

    move-result-object v0

    iget-object v0, v0, Lcom/yelp/android/ui/util/aj$b;->a:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/yelp/android/ui/activities/friendcheckins/a;

    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/cb$a;->b()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/friendcheckins/a;->a(Ljava/util/List;)V

    .line 481
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns$5;->a:Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->d:Lcom/yelp/android/ui/util/aj;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns$5;->a:Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->a:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/aj;->a(I)Lcom/yelp/android/ui/util/aj$b;

    move-result-object v0

    iget-object v0, v0, Lcom/yelp/android/ui/util/aj$b;->a:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/yelp/android/ui/activities/friendcheckins/a;

    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/cb$a;->c()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/friendcheckins/a;->a(Ljava/util/List;)V

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 506
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
    .line 511
    const-string/jumbo v0, "NearbyFriendsActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "API error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns$5;->a:Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;

    invoke-virtual {p2, v2}, Lcom/yelp/android/appdata/webrequests/YelpException;->getMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns$5;->a:Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;

    invoke-static {p2}, Lcom/yelp/android/util/ErrorType;->getTypeFromException(Lcom/yelp/android/appdata/webrequests/YelpException;)Lcom/yelp/android/util/ErrorType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->populateError(Lcom/yelp/android/util/ErrorType;)V

    .line 513
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 458
    check-cast p2, Lcom/yelp/android/appdata/webrequests/cb$a;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns$5;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/cb$a;)V

    return-void
.end method
