.class Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment$13;
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
    .line 478
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment$13;->a:Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;

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
    .line 504
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
    .line 481
    invoke-static {p2}, Lcom/yelp/android/util/YelpLog;->remoteError(Ljava/lang/Throwable;)V

    .line 483
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment$13;->a:Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->a:Lcom/yelp/android/ui/activities/feed/a;

    if-nez v0, :cond_0

    .line 499
    :goto_0
    return-void

    .line 486
    :cond_0
    check-cast p1, Lcom/yelp/android/appdata/webrequests/ek;

    .line 488
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment$13;->a:Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->a:Lcom/yelp/android/ui/activities/feed/a;

    invoke-virtual {p1}, Lcom/yelp/android/appdata/webrequests/ek;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/feed/a;->d(Ljava/lang/String;)Lcom/yelp/android/serializable/YelpCheckIn;

    move-result-object v0

    .line 493
    invoke-virtual {p1}, Lcom/yelp/android/appdata/webrequests/ek;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 494
    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpCheckIn;->n()Lcom/yelp/android/serializable/Feedback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Feedback;->b()V

    .line 498
    :goto_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment$13;->a:Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->a:Lcom/yelp/android/ui/activities/feed/a;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/feed/a;->notifyDataSetChanged()V

    goto :goto_0

    .line 496
    :cond_1
    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpCheckIn;->n()Lcom/yelp/android/serializable/Feedback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Feedback;->a()V

    goto :goto_1
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 478
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment$13;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Void;)V

    return-void
.end method
