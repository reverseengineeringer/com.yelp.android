.class Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment$6;
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
        "Ljava/util/List",
        "<",
        "Lcom/yelp/android/serializable/NearbyRow;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;)V
    .locals 0

    .prologue
    .line 974
    iput-object p1, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment$6;->a:Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;

    invoke-direct {p0}, Lcom/yelp/android/appdata/webrequests/k$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/NearbyRow;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 977
    new-instance v0, Lcom/yelp/android/analytics/g$a;

    invoke-direct {v0}, Lcom/yelp/android/analytics/g$a;-><init>()V

    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->NearbyShownSuggestions:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-virtual {v0, v1}, Lcom/yelp/android/analytics/g$a;->a(Lcom/yelp/android/analytics/iris/a;)Lcom/yelp/android/analytics/g$a;

    move-result-object v0

    check-cast p1, Lcom/yelp/android/appdata/webrequests/core/b;

    invoke-virtual {p1}, Lcom/yelp/android/appdata/webrequests/core/b;->i_()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/analytics/g$a;->a(Ljava/lang/String;)Lcom/yelp/android/analytics/g$a;

    move-result-object v0

    .line 981
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->k()Lcom/yelp/android/appdata/webrequests/core/MetricsManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yelp/android/analytics/g$a;->a()Lcom/yelp/android/analytics/g;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->a(Lcom/yelp/android/analytics/b;)V

    .line 983
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment$6;->a:Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->b(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 984
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment$6;->a:Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;

    invoke-static {v0, p2}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->a(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;Ljava/util/List;)V

    .line 985
    return-void
.end method

.method public a()Z
    .locals 2

    .prologue
    .line 989
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment$6;->a:Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment$6;->a:Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->e(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;)Lcom/yelp/android/util/ErrorType;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->a(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;Lcom/yelp/android/util/ErrorType;)V

    .line 990
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
    .line 995
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment$6;->a:Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;

    invoke-static {p2}, Lcom/yelp/android/util/ErrorType;->getTypeFromException(Lcom/yelp/android/appdata/webrequests/YelpException;)Lcom/yelp/android/util/ErrorType;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->a(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;Lcom/yelp/android/util/ErrorType;)V

    .line 996
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 974
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment$6;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/util/List;)V

    return-void
.end method
