.class Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment$2;
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
    .line 508
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment$2;->a:Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;

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
    .line 529
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
    .line 511
    invoke-static {p2}, Lcom/yelp/android/util/YelpLog;->remoteError(Ljava/lang/Throwable;)V

    .line 512
    check-cast p1, Lcom/yelp/android/appdata/webrequests/eh;

    .line 514
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment$2;->a:Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->a:Lcom/yelp/android/ui/activities/feed/a;

    invoke-virtual {p1}, Lcom/yelp/android/appdata/webrequests/eh;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/feed/a;->f(Ljava/lang/String;)Lcom/yelp/android/serializable/Photo;

    move-result-object v0

    .line 518
    invoke-virtual {p1}, Lcom/yelp/android/appdata/webrequests/eh;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 519
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Photo;->j()Lcom/yelp/android/serializable/Feedback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Feedback;->b()V

    .line 523
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment$2;->a:Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->a:Lcom/yelp/android/ui/activities/feed/a;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/feed/a;->notifyDataSetChanged()V

    .line 524
    return-void

    .line 521
    :cond_0
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Photo;->j()Lcom/yelp/android/serializable/Feedback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Feedback;->a()V

    goto :goto_0
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 508
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment$2;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Void;)V

    return-void
.end method
