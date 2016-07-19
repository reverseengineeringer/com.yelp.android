.class Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment$2;
.super Ljava/lang/Object;
.source "BadgeFeedFragment.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/ApiRequest$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;
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
        "Lcom/yelp/android/serializable/Badge;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment$2;->a:Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/Badge;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/serializable/Badge;",
            ")V"
        }
    .end annotation

    .prologue
    .line 239
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment$2;->a:Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;->e(Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;)V

    .line 240
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment$2;->a:Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;

    invoke-static {v0, p2}, Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;->a(Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;Lcom/yelp/android/serializable/Badge;)V

    .line 241
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
    .line 231
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment$2;->a:Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;->d(Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;)V

    .line 232
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment$2;->a:Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment$2;->a:Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 235
    :cond_0
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 228
    check-cast p2, Lcom/yelp/android/serializable/Badge;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment$2;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/Badge;)V

    return-void
.end method
