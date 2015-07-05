.class Lcom/yelp/android/ui/activities/friendcheckins/q;
.super Lcom/yelp/android/appdata/webrequests/j;
.source "NearbyCheckIns.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/appdata/webrequests/j",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/yelp/android/serializable/Ranking;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;

.field private final b:Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter;


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter;)V
    .locals 0

    .prologue
    .line 551
    iput-object p1, p0, Lcom/yelp/android/ui/activities/friendcheckins/q;->a:Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;

    invoke-direct {p0}, Lcom/yelp/android/appdata/webrequests/j;-><init>()V

    .line 552
    iput-object p2, p0, Lcom/yelp/android/ui/activities/friendcheckins/q;->b:Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter;

    .line 553
    return-void
.end method


# virtual methods
.method public a(Landroid/location/Location;)V
    .locals 2

    .prologue
    .line 569
    invoke-super {p0, p1}, Lcom/yelp/android/appdata/webrequests/j;->a(Landroid/location/Location;)V

    .line 570
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/q;->a:Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/q;->a:Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->f(Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;)Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->enableLoading(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 571
    return-void
.end method

.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/Ranking;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 563
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/q;->b:Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter;

    invoke-virtual {v0, p2}, Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter;->a(Ljava/util/List;)V

    .line 564
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/q;->a:Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->disableLoading()V

    .line 565
    return-void
.end method

.method public a()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 557
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/q;->a:Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/q;->a:Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;

    invoke-virtual {v0, v1, v2, v2}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->onProvidersRequired(Lcom/yelp/android/ui/activities/support/o;ZI)V

    .line 558
    return v2
.end method

.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 2
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
    .line 575
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/q;->a:Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->disableLoading()V

    .line 576
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/q;->a:Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;

    invoke-static {p2}, Lcom/yelp/android/util/ErrorType;->getTypeFromException(Lcom/yelp/android/appdata/webrequests/YelpException;)Lcom/yelp/android/util/ErrorType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->populateError(Lcom/yelp/android/util/ErrorType;)V

    .line 577
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 548
    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/friendcheckins/q;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/util/ArrayList;)V

    return-void
.end method
