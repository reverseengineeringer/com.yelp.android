.class Lcom/yelp/android/ui/activities/leaderboard/d;
.super Lcom/yelp/android/appdata/webrequests/j;
.source "RankFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/appdata/webrequests/j",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/yelp/android/serializable/Ranking;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/leaderboard/RankFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/leaderboard/RankFragment;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/yelp/android/ui/activities/leaderboard/d;->a:Lcom/yelp/android/ui/activities/leaderboard/RankFragment;

    invoke-direct {p0}, Lcom/yelp/android/appdata/webrequests/j;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/Ranking;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 143
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->b()Ljava/lang/String;

    move-result-object v0

    .line 144
    iget-object v1, p0, Lcom/yelp/android/ui/activities/leaderboard/d;->a:Lcom/yelp/android/ui/activities/leaderboard/RankFragment;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/leaderboard/RankFragment;->j()V

    .line 145
    iget-object v1, p0, Lcom/yelp/android/ui/activities/leaderboard/d;->a:Lcom/yelp/android/ui/activities/leaderboard/RankFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/leaderboard/RankFragment;->b(Lcom/yelp/android/ui/activities/leaderboard/RankFragment;)Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter;->a(Ljava/util/List;)V

    .line 146
    iget-object v1, p0, Lcom/yelp/android/ui/activities/leaderboard/d;->a:Lcom/yelp/android/ui/activities/leaderboard/RankFragment;

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/activities/leaderboard/RankFragment;->a(Z)V

    .line 147
    iget-object v1, p0, Lcom/yelp/android/ui/activities/leaderboard/d;->a:Lcom/yelp/android/ui/activities/leaderboard/RankFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/leaderboard/RankFragment;->b(Lcom/yelp/android/ui/activities/leaderboard/RankFragment;)Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    iget-object v0, p0, Lcom/yelp/android/ui/activities/leaderboard/d;->a:Lcom/yelp/android/ui/activities/leaderboard/RankFragment;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/leaderboard/d;->a:Lcom/yelp/android/ui/activities/leaderboard/RankFragment;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/leaderboard/RankFragment;->e()Lcom/yelp/android/util/ErrorType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/leaderboard/RankFragment;->a(Lcom/yelp/android/util/ErrorType;)V

    .line 158
    :goto_0
    return-void

    .line 150
    :cond_0
    invoke-static {p2, v0}, Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter;->a(Ljava/util/List;Ljava/lang/String;)I

    move-result v0

    .line 151
    iget-object v1, p0, Lcom/yelp/android/ui/activities/leaderboard/d;->a:Lcom/yelp/android/ui/activities/leaderboard/RankFragment;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/leaderboard/RankFragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 152
    iget-object v1, p0, Lcom/yelp/android/ui/activities/leaderboard/d;->a:Lcom/yelp/android/ui/activities/leaderboard/RankFragment;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/leaderboard/RankFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v1

    invoke-static {v1, v0, v2}, Lcom/yelp/android/ui/util/cp;->a(Landroid/widget/ListView;IZ)V

    .line 153
    iget-object v0, p0, Lcom/yelp/android/ui/activities/leaderboard/d;->a:Lcom/yelp/android/ui/activities/leaderboard/RankFragment;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/leaderboard/RankFragment;->a(Lcom/yelp/android/ui/activities/leaderboard/RankFragment;I)I

    goto :goto_0

    .line 155
    :cond_1
    iget-object v1, p0, Lcom/yelp/android/ui/activities/leaderboard/d;->a:Lcom/yelp/android/ui/activities/leaderboard/RankFragment;

    invoke-static {v1, v0}, Lcom/yelp/android/ui/activities/leaderboard/RankFragment;->a(Lcom/yelp/android/ui/activities/leaderboard/RankFragment;I)I

    goto :goto_0
.end method

.method public a()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 132
    iget-object v0, p0, Lcom/yelp/android/ui/activities/leaderboard/d;->a:Lcom/yelp/android/ui/activities/leaderboard/RankFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/leaderboard/RankFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/support/YelpActivity;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/leaderboard/d;->a:Lcom/yelp/android/ui/activities/leaderboard/RankFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/leaderboard/RankFragment;->a(Lcom/yelp/android/ui/activities/leaderboard/RankFragment;)Lcom/yelp/android/ui/activities/support/o;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onProvidersRequired(Lcom/yelp/android/ui/activities/support/o;ZI)V

    .line 133
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
    .line 138
    iget-object v0, p0, Lcom/yelp/android/ui/activities/leaderboard/d;->a:Lcom/yelp/android/ui/activities/leaderboard/RankFragment;

    invoke-static {p2}, Lcom/yelp/android/util/ErrorType;->getTypeFromException(Lcom/yelp/android/appdata/webrequests/YelpException;)Lcom/yelp/android/util/ErrorType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/leaderboard/RankFragment;->a(Lcom/yelp/android/util/ErrorType;)V

    .line 139
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 128
    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/leaderboard/d;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/util/ArrayList;)V

    return-void
.end method
