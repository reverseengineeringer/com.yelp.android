.class Lcom/yelp/android/ui/activities/feed/FeedFragment$12;
.super Ljava/lang/Object;
.source "FeedFragment.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/ApiRequest$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/feed/FeedFragment;
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
    .line 776
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$12;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

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
    .line 780
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$12;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->c(Z)V

    .line 781
    invoke-virtual {p2}, Lcom/yelp/android/serializable/User;->k_()I

    move-result v0

    if-lez v0, :cond_1

    .line 782
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$12;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    sget-object v1, Lcom/yelp/android/util/ErrorType;->NO_FEED_ITEMS_FIND_FRIENDS:Lcom/yelp/android/util/ErrorType;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$12;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->r(Lcom/yelp/android/ui/activities/feed/FeedFragment;)Lcom/yelp/android/ui/panels/PanelError$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->a(Lcom/yelp/android/util/ErrorType;Lcom/yelp/android/ui/panels/PanelError$a;)V

    .line 786
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$12;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->c:Lcom/yelp/android/ui/activities/feed/FeedType;

    sget-object v1, Lcom/yelp/android/ui/activities/feed/FeedType;->CHECK_IN:Lcom/yelp/android/ui/activities/feed/FeedType;

    if-ne v0, v1, :cond_0

    .line 787
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$12;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->s(Lcom/yelp/android/ui/activities/feed/FeedFragment;)Lcom/yelp/android/ui/panels/PanelError;

    move-result-object v0

    const v1, 0x7f0701ae

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/PanelError;->setText(I)V

    .line 794
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$12;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->l()V

    .line 795
    return-void

    .line 791
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$12;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    sget-object v1, Lcom/yelp/android/util/ErrorType;->NO_FEED_ITEMS_NO_FRIENDS:Lcom/yelp/android/util/ErrorType;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$12;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->r(Lcom/yelp/android/ui/activities/feed/FeedFragment;)Lcom/yelp/android/ui/panels/PanelError$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->a(Lcom/yelp/android/util/ErrorType;Lcom/yelp/android/ui/panels/PanelError$a;)V

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
    .line 799
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$12;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->c(Z)V

    .line 800
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$12;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->l()V

    .line 801
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$12;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$12;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->h(Lcom/yelp/android/ui/activities/feed/FeedFragment;)Lcom/yelp/android/ui/panels/PanelError$a;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->a(Lcom/yelp/android/appdata/webrequests/YelpException;Lcom/yelp/android/ui/panels/PanelError$a;)V

    .line 802
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 776
    check-cast p2, Lcom/yelp/android/serializable/User;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/feed/FeedFragment$12;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/User;)V

    return-void
.end method
