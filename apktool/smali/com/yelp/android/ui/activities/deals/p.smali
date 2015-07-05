.class Lcom/yelp/android/ui/activities/deals/p;
.super Ljava/lang/Object;
.source "ActivityMyDeals.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/appdata/webrequests/m",
        "<",
        "Lcom/yelp/android/appdata/webrequests/gm;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;)V
    .locals 0

    .prologue
    .line 300
    iput-object p1, p0, Lcom/yelp/android/ui/activities/deals/p;->a:Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/gm;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/gm;",
            ")V"
        }
    .end annotation

    .prologue
    .line 303
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/p;->a:Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;

    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/gm;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/gm;->b()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->a(Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 304
    return-void
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
    .line 308
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/p;->a:Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;

    invoke-static {p2}, Lcom/yelp/android/util/ErrorType;->getTypeFromException(Lcom/yelp/android/appdata/webrequests/YelpException;)Lcom/yelp/android/util/ErrorType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->populateError(Lcom/yelp/android/util/ErrorType;)V

    .line 309
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 300
    check-cast p2, Lcom/yelp/android/appdata/webrequests/gm;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/deals/p;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/gm;)V

    return-void
.end method
