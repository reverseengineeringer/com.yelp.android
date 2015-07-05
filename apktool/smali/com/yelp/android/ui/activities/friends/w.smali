.class Lcom/yelp/android/ui/activities/friends/w;
.super Ljava/lang/Object;
.source "ReviewFriendRequest.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/appdata/webrequests/m",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/yelp/android/serializable/FriendRequest;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;)V
    .locals 0

    .prologue
    .line 306
    iput-object p1, p0, Lcom/yelp/android/ui/activities/friends/w;->a:Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/FriendRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 320
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/w;->a:Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->disableLoading()V

    .line 321
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/FriendRequest;

    .line 322
    invoke-virtual {v0}, Lcom/yelp/android/serializable/FriendRequest;->getSender()Lcom/yelp/android/serializable/User;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/User;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/friends/w;->a:Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;

    invoke-static {v3}, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->a(Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 323
    iget-object v2, p0, Lcom/yelp/android/ui/activities/friends/w;->a:Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;

    invoke-static {v2, v0}, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->a(Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;Lcom/yelp/android/serializable/FriendRequest;)Lcom/yelp/android/serializable/FriendRequest;

    .line 324
    iget-object v2, p0, Lcom/yelp/android/ui/activities/friends/w;->a:Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;

    invoke-static {v2, v0}, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->b(Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;Lcom/yelp/android/serializable/FriendRequest;)V

    goto :goto_0

    .line 327
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/w;->a:Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->b(Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;)Lcom/yelp/android/serializable/FriendRequest;

    move-result-object v0

    if-nez v0, :cond_2

    .line 328
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/w;->a:Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->finish()V

    .line 330
    :cond_2
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
    .line 310
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/w;->a:Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->hideLoadingDialog()V

    .line 311
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/w;->a:Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    :goto_0
    return-void

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/w;->a:Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->disableLoading()V

    .line 315
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/w;->a:Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;

    invoke-virtual {v0, p2}, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->populateError(Lcom/yelp/android/appdata/webrequests/YelpException;)V

    goto :goto_0
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 306
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/friends/w;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/util/List;)V

    return-void
.end method
