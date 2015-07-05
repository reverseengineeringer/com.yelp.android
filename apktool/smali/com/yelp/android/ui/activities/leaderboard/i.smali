.class Lcom/yelp/android/ui/activities/leaderboard/i;
.super Lcom/yelp/android/appdata/webrequests/j;
.source "RoyaltyFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/appdata/webrequests/j",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/yelp/android/serializable/RoyaltySet;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/yelp/android/ui/activities/leaderboard/i;->a:Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;

    invoke-direct {p0}, Lcom/yelp/android/appdata/webrequests/j;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/RoyaltySet;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Lcom/yelp/android/ui/activities/leaderboard/i;->a:Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;->j()V

    .line 143
    iget-object v0, p0, Lcom/yelp/android/ui/activities/leaderboard/i;->a:Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;->a(Z)V

    .line 145
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/leaderboard/i;->a:Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;

    sget-object v1, Lcom/yelp/android/util/ErrorType;->NO_ROYALTY:Lcom/yelp/android/util/ErrorType;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;->a(Lcom/yelp/android/util/ErrorType;)V

    .line 152
    :goto_0
    return-void

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/leaderboard/i;->a:Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;

    invoke-static {v0, p2}, Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;->a(Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 149
    iget-object v0, p0, Lcom/yelp/android/ui/activities/leaderboard/i;->a:Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/leaderboard/i;->a:Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;

    invoke-static {v1, p2}, Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;->b(Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;Ljava/util/ArrayList;)Lcom/yelp/android/ui/util/bs;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;->a(Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;Lcom/yelp/android/ui/util/bs;)Lcom/yelp/android/ui/util/bs;

    .line 150
    iget-object v0, p0, Lcom/yelp/android/ui/activities/leaderboard/i;->a:Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/leaderboard/i;->a:Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;->a(Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;)Lcom/yelp/android/ui/util/bs;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;->a(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method public a()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 156
    iget-object v0, p0, Lcom/yelp/android/ui/activities/leaderboard/i;->a:Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/support/YelpActivity;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/leaderboard/i;->a:Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;->b(Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;)Lcom/yelp/android/ui/activities/support/o;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onProvidersRequired(Lcom/yelp/android/ui/activities/support/o;ZI)V

    .line 158
    return v3
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
    .line 163
    iget-object v0, p0, Lcom/yelp/android/ui/activities/leaderboard/i;->a:Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;

    invoke-static {p2}, Lcom/yelp/android/util/ErrorType;->getTypeFromException(Lcom/yelp/android/appdata/webrequests/YelpException;)Lcom/yelp/android/util/ErrorType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;->a(Lcom/yelp/android/util/ErrorType;)V

    .line 164
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 138
    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/leaderboard/i;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/util/ArrayList;)V

    return-void
.end method
