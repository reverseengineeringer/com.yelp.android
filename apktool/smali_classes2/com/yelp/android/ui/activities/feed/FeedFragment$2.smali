.class Lcom/yelp/android/ui/activities/feed/FeedFragment$2;
.super Lcom/yelp/android/appdata/webrequests/k$b;
.source "FeedFragment.java"


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
        "Lcom/yelp/android/appdata/webrequests/k$b",
        "<",
        "Lcom/yelp/android/serializable/AlertsResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/feed/FeedFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/feed/FeedFragment;)V
    .locals 0

    .prologue
    .line 823
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$2;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-direct {p0}, Lcom/yelp/android/appdata/webrequests/k$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/AlertsResponse;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/serializable/AlertsResponse;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 842
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$2;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_2

    .line 843
    const-string/jumbo v1, "FeedFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No context in onSuccess of inline alerts request. Is expected request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$2;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-static {v3}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->t(Lcom/yelp/android/ui/activities/feed/FeedFragment;)Lcom/yelp/android/appdata/webrequests/ez;

    move-result-object v3

    if-ne p1, v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yelp/android/util/YelpLog;->remoteError(Ljava/lang/Object;Ljava/lang/String;)V

    .line 872
    :cond_1
    :goto_0
    return-void

    .line 852
    :cond_2
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$2;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-static {v1, v0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->c(Lcom/yelp/android/ui/activities/feed/FeedFragment;Z)Z

    .line 853
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$2;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/feed/FeedFragment;->c:Lcom/yelp/android/ui/activities/feed/FeedType;

    sget-object v2, Lcom/yelp/android/ui/activities/feed/FeedType;->MAIN:Lcom/yelp/android/ui/activities/feed/FeedType;

    if-ne v1, v2, :cond_1

    .line 854
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$2;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->u(Lcom/yelp/android/ui/activities/feed/FeedFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 855
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$2;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->u(Lcom/yelp/android/ui/activities/feed/FeedFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p2}, Lcom/yelp/android/serializable/AlertsResponse;->e()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 857
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$2;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-static {}, Lcom/yelp/android/appdata/j;->a()Lcom/yelp/android/appdata/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/appdata/j;->f()I

    move-result v2

    invoke-static {v1, v2}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->b(Lcom/yelp/android/ui/activities/feed/FeedFragment;I)I

    .line 860
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$2;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->g(Lcom/yelp/android/ui/activities/feed/FeedFragment;)Lcom/yelp/android/ui/activities/feed/viewbinder/q;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$2;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->u(Lcom/yelp/android/ui/activities/feed/FeedFragment;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$2;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-static {v3}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->v(Lcom/yelp/android/ui/activities/feed/FeedFragment;)I

    move-result v3

    iget-object v4, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$2;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-virtual {v4}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/yelp/android/ui/activities/feed/viewbinder/q;->a(Ljava/util/ArrayList;ILandroid/content/Context;)V

    .line 862
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$2;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->v(Lcom/yelp/android/ui/activities/feed/FeedFragment;)I

    move-result v1

    const/4 v2, 0x2

    if-gt v1, v2, :cond_1

    .line 863
    invoke-virtual {p2}, Lcom/yelp/android/serializable/AlertsResponse;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 864
    invoke-virtual {p2}, Lcom/yelp/android/serializable/AlertsResponse;->d()Ljava/lang/String;

    move-result-object v1

    .line 865
    new-instance v2, Lcom/yelp/android/appdata/webrequests/ap;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/yelp/android/appdata/webrequests/ap;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 867
    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v2, v0}, Lcom/yelp/android/appdata/webrequests/ap;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 869
    :cond_3
    invoke-static {}, Lcom/yelp/android/appdata/j;->a()Lcom/yelp/android/appdata/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/j;->g()V

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 827
    const/4 v0, 0x1

    return v0
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
    .line 832
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$2;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->c(Lcom/yelp/android/ui/activities/feed/FeedFragment;Z)Z

    .line 834
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 823
    check-cast p2, Lcom/yelp/android/serializable/AlertsResponse;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/feed/FeedFragment$2;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/AlertsResponse;)V

    return-void
.end method
