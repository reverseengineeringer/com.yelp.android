.class Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$3;
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
        "Lcom/yelp/android/serializable/YelpBookmark;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;)V
    .locals 0

    .prologue
    .line 2136
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$3;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/YelpBookmark;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/serializable/YelpBookmark;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2147
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$3;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->d(Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;)Lcom/yelp/android/ui/dialogs/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2148
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$3;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->d(Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;)Lcom/yelp/android/ui/dialogs/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/dialogs/e;->dismiss()V

    .line 2150
    :cond_0
    check-cast p1, Lcom/yelp/android/appdata/webrequests/h;

    invoke-virtual {p1}, Lcom/yelp/android/appdata/webrequests/h;->b()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    .line 2151
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/YelpBusiness;->a(Z)V

    .line 2152
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$3;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;

    invoke-static {v1, v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->b(Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;Lcom/yelp/android/serializable/YelpBusiness;)V

    .line 2153
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
    .line 2139
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$3;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->d(Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;)Lcom/yelp/android/ui/dialogs/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2140
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$3;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->d(Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;)Lcom/yelp/android/ui/dialogs/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/dialogs/e;->dismiss()V

    .line 2142
    :cond_0
    const v0, 0x7f070298

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/as;->a(II)V

    .line 2143
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 2136
    check-cast p2, Lcom/yelp/android/serializable/YelpBookmark;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$3;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/YelpBookmark;)V

    return-void
.end method
