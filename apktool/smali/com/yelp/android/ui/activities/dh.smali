.class Lcom/yelp/android/ui/activities/dh;
.super Ljava/lang/Object;
.source "ActivityRankedBusinesses.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/appdata/webrequests/m",
        "<",
        "Lcom/yelp/android/appdata/webrequests/gt;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;)V
    .locals 0

    .prologue
    .line 354
    iput-object p1, p0, Lcom/yelp/android/ui/activities/dh;->a:Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/gt;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/gt;",
            ")V"
        }
    .end annotation

    .prologue
    .line 363
    iget-object v0, p0, Lcom/yelp/android/ui/activities/dh;->a:Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;

    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/gt;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/gt;->b()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->a(Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;Ljava/util/ArrayList;Landroid/os/Bundle;)V

    .line 364
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
    .line 358
    iget-object v0, p0, Lcom/yelp/android/ui/activities/dh;->a:Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;

    invoke-virtual {v0, p2}, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->populateError(Lcom/yelp/android/appdata/webrequests/YelpException;)V

    .line 359
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 354
    check-cast p2, Lcom/yelp/android/appdata/webrequests/gt;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/dh;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/gt;)V

    return-void
.end method
