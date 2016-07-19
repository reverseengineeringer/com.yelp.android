.class Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$2;
.super Ljava/lang/Object;
.source "ActivityMyDeals.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/ApiRequest$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
        "<",
        "Lcom/yelp/android/appdata/webrequests/fc$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;)V
    .locals 0

    .prologue
    .line 316
    iput-object p1, p0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$2;->a:Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/fc$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/fc$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 320
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$2;->a:Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;

    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/fc$a;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/fc$a;->b()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->a(Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 321
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
    .line 325
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$2;->a:Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;

    invoke-static {p2}, Lcom/yelp/android/util/ErrorType;->getTypeFromException(Lcom/yelp/android/appdata/webrequests/YelpException;)Lcom/yelp/android/util/ErrorType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->populateError(Lcom/yelp/android/util/ErrorType;)V

    .line 326
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 316
    check-cast p2, Lcom/yelp/android/appdata/webrequests/fc$a;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$2;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/fc$a;)V

    return-void
.end method
