.class Lcom/yelp/android/ui/activities/friends/FriendsListFragment$2;
.super Ljava/lang/Object;
.source "FriendsListFragment.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/ApiRequest$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/friends/FriendsListFragment;
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
        "Lcom/yelp/android/appdata/webrequests/fh$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/friends/FriendsListFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/friends/FriendsListFragment;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/yelp/android/ui/activities/friends/FriendsListFragment$2;->a:Lcom/yelp/android/ui/activities/friends/FriendsListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/fh$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/fh$a;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 197
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FriendsListFragment$2;->a:Lcom/yelp/android/ui/activities/friends/FriendsListFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;->l()V

    .line 198
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FriendsListFragment$2;->a:Lcom/yelp/android/ui/activities/friends/FriendsListFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;->a(Lcom/yelp/android/ui/activities/friends/FriendsListFragment;)Lcom/yelp/android/ui/util/ap;

    move-result-object v0

    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/fh$a;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/util/ap;->a(Ljava/util/Collection;Z)V

    .line 199
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FriendsListFragment$2;->a:Lcom/yelp/android/ui/activities/friends/FriendsListFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;->a(Lcom/yelp/android/ui/activities/friends/FriendsListFragment;)Lcom/yelp/android/ui/util/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FriendsListFragment$2;->a:Lcom/yelp/android/ui/activities/friends/FriendsListFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;->b(Lcom/yelp/android/ui/activities/friends/FriendsListFragment;)V

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FriendsListFragment$2;->a:Lcom/yelp/android/ui/activities/friends/FriendsListFragment;

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;->b(Z)V

    .line 203
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
    .line 207
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FriendsListFragment$2;->a:Lcom/yelp/android/ui/activities/friends/FriendsListFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;->a(Lcom/yelp/android/ui/activities/friends/FriendsListFragment;)Lcom/yelp/android/ui/util/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ap;->clear()V

    .line 208
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FriendsListFragment$2;->a:Lcom/yelp/android/ui/activities/friends/FriendsListFragment;

    invoke-static {p2}, Lcom/yelp/android/util/ErrorType;->getTypeFromException(Lcom/yelp/android/appdata/webrequests/YelpException;)Lcom/yelp/android/util/ErrorType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;->a(Lcom/yelp/android/util/ErrorType;)V

    .line 209
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FriendsListFragment$2;->a:Lcom/yelp/android/ui/activities/friends/FriendsListFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;->c(Lcom/yelp/android/ui/activities/friends/FriendsListFragment;)Lcom/yelp/android/ui/widgets/EditTextAndClearButton;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/EditTextAndClearButton;->setVisibility(I)V

    .line 210
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FriendsListFragment$2;->a:Lcom/yelp/android/ui/activities/friends/FriendsListFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;->b(Z)V

    .line 211
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 194
    check-cast p2, Lcom/yelp/android/appdata/webrequests/fh$a;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/friends/FriendsListFragment$2;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/fh$a;)V

    return-void
.end method
