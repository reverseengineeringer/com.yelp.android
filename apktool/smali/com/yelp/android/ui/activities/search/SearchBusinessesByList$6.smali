.class Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$6;
.super Lcom/yelp/android/appdata/webrequests/k$b;
.source "SearchBusinessesByList.java"


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
        "Lcom/yelp/android/appdata/webrequests/k$b",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;)V
    .locals 0

    .prologue
    .line 836
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$6;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;

    invoke-direct {p0}, Lcom/yelp/android/appdata/webrequests/k$b;-><init>()V

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
    .line 869
    const-string/jumbo v0, "Debug"

    const-string/jumbo v1, "onSuccess from mLocationRequestCallback getting called"

    invoke-static {v0, v1}, Lcom/yelp/android/util/YelpLog;->d(Ljava/lang/Object;Ljava/lang/String;)I

    .line 870
    return-void
.end method

.method public a()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 840
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$6;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$6;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->onProvidersRequired(Lcom/yelp/android/ui/activities/support/b$e;ZI)V

    .line 841
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$6;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;

    sget-object v1, Lcom/yelp/android/util/ErrorType;->NO_LOCATION:Lcom/yelp/android/util/ErrorType;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->populateError(Lcom/yelp/android/util/ErrorType;)V

    .line 842
    return v3
.end method

.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 4
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
    .line 847
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->r()Lcom/yelp/android/appdata/LocationService;

    move-result-object v0

    .line 848
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$6;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;

    sget-object v2, Lcom/yelp/android/appdata/PermissionGroup;->LOCATION:Lcom/yelp/android/appdata/PermissionGroup;

    invoke-static {v1, v2}, Lcom/yelp/android/appdata/k;->b(Landroid/content/Context;Lcom/yelp/android/appdata/PermissionGroup;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 850
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$6;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/search/d;->a(Landroid/app/Activity;)V

    .line 853
    :cond_0
    invoke-virtual {v0}, Lcom/yelp/android/appdata/LocationService;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/yelp/android/appdata/LocationService;->b()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/YelpException;->getMessageResource()I

    move-result v0

    const v1, 0x7f0700cd

    if-ne v0, v1, :cond_1

    .line 856
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$6;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const v3, 0x7f070410

    invoke-virtual {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->onProvidersRequired(Lcom/yelp/android/ui/activities/support/b$e;ZI)V

    .line 859
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$6;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->p()Lcom/yelp/android/appdata/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/o;->b()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$6;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a(Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;)Lcom/yelp/android/ui/activities/search/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/search/f;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 860
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$6;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;

    invoke-virtual {v0, p2}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->populateError(Lcom/yelp/android/appdata/webrequests/YelpException;)V

    .line 862
    :cond_2
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 836
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$6;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Void;)V

    return-void
.end method
