.class Lcom/yelp/android/ui/activities/feed/ae;
.super Ljava/lang/Object;
.source "FeedFragment.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/appdata/webrequests/m",
        "<",
        "Lcom/yelp/android/serializable/User;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/feed/FeedFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/feed/FeedFragment;)V
    .locals 0

    .prologue
    .line 712
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/ae;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/User;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/serializable/User;",
            ")V"
        }
    .end annotation

    .prologue
    .line 716
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/ae;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->b(Z)V

    .line 717
    invoke-virtual {p2}, Lcom/yelp/android/serializable/User;->getFriendCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 718
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/ae;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    sget-object v1, Lcom/yelp/android/util/ErrorType;->NO_FRIEND_ACTIVITIES:Lcom/yelp/android/util/ErrorType;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/ae;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->m(Lcom/yelp/android/ui/activities/feed/FeedFragment;)Lcom/yelp/android/ui/panels/aa;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->a(Lcom/yelp/android/util/ErrorType;Lcom/yelp/android/ui/panels/aa;)V

    .line 719
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/ae;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->n(Lcom/yelp/android/ui/activities/feed/FeedFragment;)Lcom/yelp/android/ui/panels/PanelError;

    move-result-object v0

    const v1, 0x7f07029f

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/PanelError;->setText(I)V

    .line 724
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/ae;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->j()V

    .line 725
    return-void

    .line 721
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/ae;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    sget-object v1, Lcom/yelp/android/util/ErrorType;->NO_FRIENDS:Lcom/yelp/android/util/ErrorType;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/ae;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->m(Lcom/yelp/android/ui/activities/feed/FeedFragment;)Lcom/yelp/android/ui/panels/aa;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->a(Lcom/yelp/android/util/ErrorType;Lcom/yelp/android/ui/panels/aa;)V

    .line 722
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/ae;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->o(Lcom/yelp/android/ui/activities/feed/FeedFragment;)Lcom/yelp/android/ui/panels/PanelError;

    move-result-object v0

    const v1, 0x7f0702a0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/PanelError;->setText(I)V

    goto :goto_0
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
    .line 729
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/ae;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->b(Z)V

    .line 730
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/ae;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->j()V

    .line 731
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/ae;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/ae;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->c(Lcom/yelp/android/ui/activities/feed/FeedFragment;)Lcom/yelp/android/ui/panels/aa;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->a(Lcom/yelp/android/appdata/webrequests/YelpException;Lcom/yelp/android/ui/panels/aa;)V

    .line 732
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 712
    check-cast p2, Lcom/yelp/android/serializable/User;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/feed/ae;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/User;)V

    return-void
.end method
