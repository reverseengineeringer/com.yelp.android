.class Lcom/yelp/android/ui/activities/e;
.super Ljava/lang/Object;
.source "ActivityBadges.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/appdata/webrequests/m",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/yelp/android/serializable/Badge;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/ActivityBadges;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/ActivityBadges;)V
    .locals 0

    .prologue
    .line 270
    iput-object p1, p0, Lcom/yelp/android/ui/activities/e;->a:Lcom/yelp/android/ui/activities/ActivityBadges;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/Badge;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 279
    iget-object v0, p0, Lcom/yelp/android/ui/activities/e;->a:Lcom/yelp/android/ui/activities/ActivityBadges;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/ActivityBadges;->disableLoading()V

    .line 280
    iget-object v0, p0, Lcom/yelp/android/ui/activities/e;->a:Lcom/yelp/android/ui/activities/ActivityBadges;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityBadges;->a(Lcom/yelp/android/ui/activities/ActivityBadges;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 281
    iget-object v0, p0, Lcom/yelp/android/ui/activities/e;->a:Lcom/yelp/android/ui/activities/ActivityBadges;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityBadges;->b(Lcom/yelp/android/ui/activities/ActivityBadges;)Lcom/yelp/android/ui/activities/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/f;->notifyDataSetChanged()V

    .line 282
    return-void
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
    .line 274
    iget-object v0, p0, Lcom/yelp/android/ui/activities/e;->a:Lcom/yelp/android/ui/activities/ActivityBadges;

    invoke-virtual {v0, p2}, Lcom/yelp/android/ui/activities/ActivityBadges;->populateError(Lcom/yelp/android/appdata/webrequests/YelpException;)V

    .line 275
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 270
    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/e;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/util/ArrayList;)V

    return-void
.end method
