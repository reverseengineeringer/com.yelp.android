.class Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment$3;
.super Ljava/lang/Object;
.source "AbstractFeedFragment.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/core/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;)V
    .locals 0

    .prologue
    .line 533
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment$3;->a:Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Void;)V
    .locals 0
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
    .line 547
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
    .line 536
    invoke-static {p2}, Lcom/yelp/android/util/YelpLog;->remoteError(Ljava/lang/Throwable;)V

    .line 537
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment$3;->a:Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->a:Lcom/yelp/android/ui/activities/feed/a;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment$3;->a:Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->k(Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;)Lcom/yelp/android/appdata/webrequests/ej;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/webrequests/ej;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/feed/a;->g(Ljava/lang/String;)Lcom/yelp/android/serializable/Video;

    move-result-object v1

    .line 540
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment$3;->a:Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->k(Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;)Lcom/yelp/android/appdata/webrequests/ej;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/ej;->d()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/yelp/android/serializable/Video;->a(Z)V

    .line 541
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment$3;->a:Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->a:Lcom/yelp/android/ui/activities/feed/a;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/feed/a;->notifyDataSetChanged()V

    .line 542
    return-void

    .line 540
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 533
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment$3;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Void;)V

    return-void
.end method
