.class Lcom/yelp/android/ui/activities/profile/b;
.super Ljava/lang/Object;
.source "ActivityFirstAwards.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/appdata/webrequests/m",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/yelp/android/serializable/BusinessInfoProviderFeedEntry;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/yelp/android/ui/activities/profile/b;->a:Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
            "Lcom/yelp/android/serializable/BusinessInfoProviderFeedEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 203
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/b;->a:Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/b;->a:Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->a(Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;)Lcom/yelp/android/serializable/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/User;->getFirstToTipCount()I

    move-result v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->a(Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;I)I

    .line 218
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/b;->a:Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;

    invoke-static {v0, p2}, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->a(Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;Ljava/util/List;)V

    .line 219
    return-void

    .line 216
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/b;->a:Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->b(Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;I)I

    goto :goto_0
.end method

.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 1
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
    .line 197
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/b;->a:Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;

    invoke-virtual {v0, p2}, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->populateError(Lcom/yelp/android/appdata/webrequests/YelpException;)V

    .line 198
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 194
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/profile/b;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/util/List;)V

    return-void
.end method
