.class Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment$10;
.super Lcom/yelp/android/appdata/webrequests/k$b;
.source "NearbyPageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/appdata/webrequests/k$b",
        "<",
        "Lcom/yelp/android/serializable/TrendingSearches;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;)V
    .locals 0

    .prologue
    .line 1063
    iput-object p1, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment$10;->a:Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;

    invoke-direct {p0}, Lcom/yelp/android/appdata/webrequests/k$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/TrendingSearches;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/serializable/TrendingSearches;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1078
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment$10;->a:Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;

    invoke-static {v0, p2}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->a(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;Lcom/yelp/android/serializable/TrendingSearches;)Lcom/yelp/android/serializable/TrendingSearches;

    .line 1081
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->TrendingSearchesSuccessfulRequest:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v2, "android_trending_searches"

    sget-object v0, Lcom/yelp/android/appdata/experiment/e;->m:Lcom/yelp/android/appdata/experiment/TrendingSearchesExperiment;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/experiment/TrendingSearchesExperiment;->b()Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/experiment/TrendingSearchesExperiment$Cohort;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/experiment/TrendingSearchesExperiment$Cohort;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1085
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment$10;->a:Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->g(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;)V

    .line 1086
    return-void
.end method

.method public a()Z
    .locals 2

    .prologue
    .line 1066
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment$10;->a:Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment$10;->a:Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->e(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;)Lcom/yelp/android/util/ErrorType;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->a(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;Lcom/yelp/android/util/ErrorType;)V

    .line 1067
    const/4 v0, 0x0

    return v0
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
    .line 1072
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment$10;->a:Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;

    invoke-static {p2}, Lcom/yelp/android/util/ErrorType;->getTypeFromException(Lcom/yelp/android/appdata/webrequests/YelpException;)Lcom/yelp/android/util/ErrorType;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->a(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;Lcom/yelp/android/util/ErrorType;)V

    .line 1073
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1063
    check-cast p2, Lcom/yelp/android/serializable/TrendingSearches;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment$10;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/TrendingSearches;)V

    return-void
.end method
