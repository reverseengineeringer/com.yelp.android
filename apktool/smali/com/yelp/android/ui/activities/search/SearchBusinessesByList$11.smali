.class Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$11;
.super Ljava/lang/Object;
.source "SearchBusinessesByList.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/ApiRequest$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;
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
        "Lcom/yelp/android/serializable/ContinueLastOrderInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;)V
    .locals 0

    .prologue
    .line 2072
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$11;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/ContinueLastOrderInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/serializable/ContinueLastOrderInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2082
    check-cast p1, Lcom/yelp/android/appdata/webrequests/aw;

    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$11;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a:Lcom/yelp/android/appdata/o;

    invoke-static {p1, p2, v0}, Lcom/yelp/android/ui/activities/search/d;->a(Lcom/yelp/android/appdata/webrequests/aw;Lcom/yelp/android/serializable/ContinueLastOrderInfo;Lcom/yelp/android/appdata/o;)V

    .line 2086
    return-void
.end method

.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 0
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
    .line 2077
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 2072
    check-cast p2, Lcom/yelp/android/serializable/ContinueLastOrderInfo;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$11;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/ContinueLastOrderInfo;)V

    return-void
.end method
