.class Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$2;
.super Ljava/lang/Object;
.source "SearchBusinessesByList.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/core/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;)V
    .locals 0

    .prologue
    .line 2115
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$2;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Void;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Ljava/lang/Void;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2126
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$2;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->d(Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;)Lcom/yelp/android/ui/dialogs/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2127
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$2;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->d(Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;)Lcom/yelp/android/ui/dialogs/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/dialogs/e;->dismiss()V

    .line 2129
    :cond_0
    check-cast p1, Lcom/yelp/android/appdata/webrequests/dk;

    invoke-virtual {p1}, Lcom/yelp/android/appdata/webrequests/dk;->b()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    .line 2130
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/YelpBusiness;->a(Z)V

    .line 2131
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$2;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;

    invoke-static {v1, v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->b(Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;Lcom/yelp/android/serializable/YelpBusiness;)V

    .line 2132
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
    .line 2118
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$2;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->d(Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;)Lcom/yelp/android/ui/dialogs/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2119
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$2;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->d(Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;)Lcom/yelp/android/ui/dialogs/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/dialogs/e;->dismiss()V

    .line 2121
    :cond_0
    const v0, 0x7f070299

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/as;->a(II)V

    .line 2122
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 2115
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$2;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Void;)V

    return-void
.end method
