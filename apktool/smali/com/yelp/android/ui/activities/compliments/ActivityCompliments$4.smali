.class Lcom/yelp/android/ui/activities/compliments/ActivityCompliments$4;
.super Ljava/lang/Object;
.source "ActivityCompliments.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/ApiRequest$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;
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
        "Lcom/yelp/android/appdata/webrequests/at$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;)V
    .locals 0

    .prologue
    .line 334
    iput-object p1, p0, Lcom/yelp/android/ui/activities/compliments/ActivityCompliments$4;->a:Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/at$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/at$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 343
    iget-object v0, p0, Lcom/yelp/android/ui/activities/compliments/ActivityCompliments$4;->a:Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;->c(Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/at$a;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 344
    iget-object v0, p0, Lcom/yelp/android/ui/activities/compliments/ActivityCompliments$4;->a:Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;->a(Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;)Lcom/yelp/android/ui/activities/compliments/a;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/compliments/ActivityCompliments$4;->a:Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;->c(Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/compliments/a;->a(Ljava/util/List;)V

    .line 345
    iget-object v0, p0, Lcom/yelp/android/ui/activities/compliments/ActivityCompliments$4;->a:Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;

    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/at$a;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;->d(I)V

    .line 346
    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/at$a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/yelp/android/ui/activities/compliments/ActivityCompliments$4;->a:Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->f()V

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/compliments/ActivityCompliments$4;->a:Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;->disableLoading()V

    .line 351
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
    .line 338
    iget-object v0, p0, Lcom/yelp/android/ui/activities/compliments/ActivityCompliments$4;->a:Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;

    invoke-virtual {v0, p1, p2}, Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;->onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V

    .line 339
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 334
    check-cast p2, Lcom/yelp/android/appdata/webrequests/at$a;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/compliments/ActivityCompliments$4;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/at$a;)V

    return-void
.end method
