.class Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment$12;
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
    .line 452
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment$12;->a:Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;

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
    .line 474
    return-void
.end method

.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 3
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
    .line 455
    invoke-static {p2}, Lcom/yelp/android/util/YelpLog;->remoteError(Ljava/lang/Throwable;)V

    .line 457
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment$12;->a:Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->a:Lcom/yelp/android/ui/activities/feed/a;

    if-nez v0, :cond_0

    .line 469
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 460
    check-cast v0, Lcom/yelp/android/appdata/webrequests/em;

    .line 461
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment$12;->a:Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->a:Lcom/yelp/android/ui/activities/feed/a;

    check-cast p1, Lcom/yelp/android/appdata/webrequests/em;

    invoke-virtual {p1}, Lcom/yelp/android/appdata/webrequests/em;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/activities/feed/a;->c(Ljava/lang/String;)Lcom/yelp/android/serializable/Tip;

    move-result-object v1

    .line 463
    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/em;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 464
    invoke-virtual {v1}, Lcom/yelp/android/serializable/Tip;->g()Lcom/yelp/android/serializable/Feedback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Feedback;->b()V

    .line 468
    :goto_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment$12;->a:Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->a:Lcom/yelp/android/ui/activities/feed/a;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/feed/a;->notifyDataSetChanged()V

    goto :goto_0

    .line 466
    :cond_1
    invoke-virtual {v1}, Lcom/yelp/android/serializable/Tip;->g()Lcom/yelp/android/serializable/Feedback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Feedback;->a()V

    goto :goto_1
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 452
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment$12;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Void;)V

    return-void
.end method
