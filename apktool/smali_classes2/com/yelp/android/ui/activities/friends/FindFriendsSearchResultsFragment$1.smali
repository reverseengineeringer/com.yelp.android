.class Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment$1;
.super Ljava/lang/Object;
.source "FindFriendsSearchResultsFragment.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/ApiRequest$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;
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
        "Ljava/util/List",
        "<",
        "Lcom/yelp/android/serializable/User;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment$1;->a:Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 152
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment$1;->a:Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;->l()V

    .line 153
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment$1;->a:Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;->a(Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;)Lcom/yelp/android/ui/util/ap;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/yelp/android/ui/util/ap;->a(Ljava/util/List;)V

    .line 154
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment$1;->a:Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment$1;->a:Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;->b(Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;->a(Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;Landroid/view/View;)V

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment$1;->a:Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;->c(Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;)Lcom/yelp/android/appdata/webrequests/cs;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment$1;->a:Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;->c(Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;)Lcom/yelp/android/appdata/webrequests/cs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/cs;->f()Z

    move-result v0

    if-nez v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment$1;->a:Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;->b(Z)V

    .line 160
    :cond_1
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
    .line 147
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment$1;->a:Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;

    invoke-static {v0, p2}, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;->a(Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;Lcom/yelp/android/appdata/webrequests/YelpException;)V

    .line 148
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 144
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment$1;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/util/List;)V

    return-void
.end method
