.class Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment$9;
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
        "Lcom/yelp/android/serializable/LocalIssueResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;)V
    .locals 0

    .prologue
    .line 1042
    iput-object p1, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment$9;->a:Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;

    invoke-direct {p0}, Lcom/yelp/android/appdata/webrequests/k$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/LocalIssueResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/serializable/LocalIssueResponse;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1057
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment$9;->a:Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;

    invoke-virtual {p2}, Lcom/yelp/android/serializable/LocalIssueResponse;->a()Lcom/yelp/android/serializable/LocalIssue;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->a(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;Lcom/yelp/android/serializable/LocalIssue;)Lcom/yelp/android/serializable/LocalIssue;

    .line 1058
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment$9;->a:Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->g(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;)V

    .line 1059
    return-void
.end method

.method public a()Z
    .locals 2

    .prologue
    .line 1045
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment$9;->a:Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment$9;->a:Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->e(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;)Lcom/yelp/android/util/ErrorType;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->a(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;Lcom/yelp/android/util/ErrorType;)V

    .line 1046
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
    .line 1051
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment$9;->a:Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;

    invoke-static {p2}, Lcom/yelp/android/util/ErrorType;->getTypeFromException(Lcom/yelp/android/appdata/webrequests/YelpException;)Lcom/yelp/android/util/ErrorType;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->a(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;Lcom/yelp/android/util/ErrorType;)V

    .line 1052
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1042
    check-cast p2, Lcom/yelp/android/serializable/LocalIssueResponse;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment$9;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/LocalIssueResponse;)V

    return-void
.end method
