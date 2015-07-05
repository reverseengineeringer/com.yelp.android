.class Lcom/yelp/android/ui/activities/cu;
.super Ljava/lang/Object;
.source "ActivityMediaBrowser.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/appdata/webrequests/m",
        "<",
        "Lcom/yelp/android/appdata/webrequests/dm;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/ActivityMediaBrowser;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/ActivityMediaBrowser;)V
    .locals 0

    .prologue
    .line 341
    iput-object p1, p0, Lcom/yelp/android/ui/activities/cu;->a:Lcom/yelp/android/ui/activities/ActivityMediaBrowser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/dm;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/dm;",
            ")V"
        }
    .end annotation

    .prologue
    .line 351
    iget-object v0, p0, Lcom/yelp/android/ui/activities/cu;->a:Lcom/yelp/android/ui/activities/ActivityMediaBrowser;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->hideLoadingDialog()V

    .line 352
    iget-object v0, p0, Lcom/yelp/android/ui/activities/cu;->a:Lcom/yelp/android/ui/activities/ActivityMediaBrowser;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->d(Lcom/yelp/android/ui/activities/ActivityMediaBrowser;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/dm;->c()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 353
    iget-object v0, p0, Lcom/yelp/android/ui/activities/cu;->a:Lcom/yelp/android/ui/activities/ActivityMediaBrowser;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->f(Lcom/yelp/android/ui/activities/ActivityMediaBrowser;)Lcom/yelp/android/ui/activities/cv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/cv;->notifyDataSetChanged()V

    .line 354
    iget-object v0, p0, Lcom/yelp/android/ui/activities/cu;->a:Lcom/yelp/android/ui/activities/ActivityMediaBrowser;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->c(Lcom/yelp/android/ui/activities/ActivityMediaBrowser;)Lcom/yelp/android/appdata/webrequests/MediaRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/cu;->a:Lcom/yelp/android/ui/activities/ActivityMediaBrowser;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->d(Lcom/yelp/android/ui/activities/ActivityMediaBrowser;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/dm;->d()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/appdata/webrequests/MediaRequest;->isAllMediaFetched(Ljava/util/List;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/yelp/android/ui/activities/cu;->a:Lcom/yelp/android/ui/activities/ActivityMediaBrowser;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->a(Lcom/yelp/android/ui/activities/ActivityMediaBrowser;Lcom/yelp/android/appdata/webrequests/MediaRequest;)Lcom/yelp/android/appdata/webrequests/MediaRequest;

    .line 358
    :cond_0
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
    .line 344
    iget-object v0, p0, Lcom/yelp/android/ui/activities/cu;->a:Lcom/yelp/android/ui/activities/ActivityMediaBrowser;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->hideLoadingDialog()V

    .line 345
    iget-object v0, p0, Lcom/yelp/android/ui/activities/cu;->a:Lcom/yelp/android/ui/activities/ActivityMediaBrowser;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->a(Lcom/yelp/android/ui/activities/ActivityMediaBrowser;Lcom/yelp/android/appdata/webrequests/MediaRequest;)Lcom/yelp/android/appdata/webrequests/MediaRequest;

    .line 346
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/yelp/android/appdata/webrequests/YelpException;->getMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/cr;->a(Ljava/lang/CharSequence;I)V

    .line 347
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 341
    check-cast p2, Lcom/yelp/android/appdata/webrequests/dm;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/cu;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/dm;)V

    return-void
.end method
