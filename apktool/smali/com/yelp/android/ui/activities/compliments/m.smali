.class Lcom/yelp/android/ui/activities/compliments/m;
.super Ljava/lang/Object;
.source "ViewCompliments.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/appdata/webrequests/m",
        "<",
        "Lcom/yelp/android/appdata/webrequests/bb;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/compliments/ViewCompliments;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/compliments/ViewCompliments;)V
    .locals 0

    .prologue
    .line 311
    iput-object p1, p0, Lcom/yelp/android/ui/activities/compliments/m;->a:Lcom/yelp/android/ui/activities/compliments/ViewCompliments;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/bb;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/bb;",
            ")V"
        }
    .end annotation

    .prologue
    .line 320
    iget-object v0, p0, Lcom/yelp/android/ui/activities/compliments/m;->a:Lcom/yelp/android/ui/activities/compliments/ViewCompliments;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/compliments/ViewCompliments;->c(Lcom/yelp/android/ui/activities/compliments/ViewCompliments;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/bb;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 321
    iget-object v0, p0, Lcom/yelp/android/ui/activities/compliments/m;->a:Lcom/yelp/android/ui/activities/compliments/ViewCompliments;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/compliments/ViewCompliments;->a(Lcom/yelp/android/ui/activities/compliments/ViewCompliments;)Lcom/yelp/android/ui/activities/compliments/a;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/compliments/m;->a:Lcom/yelp/android/ui/activities/compliments/ViewCompliments;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/compliments/ViewCompliments;->c(Lcom/yelp/android/ui/activities/compliments/ViewCompliments;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/compliments/a;->a(Ljava/util/List;)V

    .line 322
    iget-object v0, p0, Lcom/yelp/android/ui/activities/compliments/m;->a:Lcom/yelp/android/ui/activities/compliments/ViewCompliments;

    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/bb;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/compliments/ViewCompliments;->d(I)V

    .line 323
    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/bb;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/yelp/android/ui/activities/compliments/m;->a:Lcom/yelp/android/ui/activities/compliments/ViewCompliments;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/compliments/ViewCompliments;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->f()V

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/compliments/m;->a:Lcom/yelp/android/ui/activities/compliments/ViewCompliments;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/compliments/ViewCompliments;->disableLoading()V

    .line 328
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
    .line 315
    iget-object v0, p0, Lcom/yelp/android/ui/activities/compliments/m;->a:Lcom/yelp/android/ui/activities/compliments/ViewCompliments;

    invoke-virtual {v0, p1, p2}, Lcom/yelp/android/ui/activities/compliments/ViewCompliments;->onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V

    .line 316
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 311
    check-cast p2, Lcom/yelp/android/appdata/webrequests/bb;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/compliments/m;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/bb;)V

    return-void
.end method
