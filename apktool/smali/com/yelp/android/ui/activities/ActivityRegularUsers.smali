.class public Lcom/yelp/android/ui/activities/ActivityRegularUsers;
.super Lcom/yelp/android/ui/util/YelpListActivity;
.source "ActivityRegularUsers.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/util/YelpListActivity;",
        "Lcom/yelp/android/appdata/webrequests/m",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/yelp/android/serializable/Ranking;",
        ">;>;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/Ranking;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter;

.field private c:Lcom/yelp/android/appdata/webrequests/ab;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/yelp/android/ui/util/YelpListActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 39
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/ActivityRegularUsers;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 40
    const-string/jumbo v1, "business_name"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    const-string/jumbo v1, "business_id"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    return-object v0
.end method


# virtual methods
.method protected a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2

    .prologue
    .line 105
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    .line 106
    instance-of v1, v0, Lcom/yelp/android/serializable/Ranking;

    if-eqz v1, :cond_0

    .line 107
    check-cast v0, Lcom/yelp/android/serializable/Ranking;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Ranking;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityRegularUsers;->startActivity(Landroid/content/Intent;)V

    .line 110
    :cond_0
    return-void
.end method

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
    .line 134
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityRegularUsers;->d(I)V

    .line 135
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRegularUsers;->b:Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter;

    invoke-virtual {v0, p2}, Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter;->a(Ljava/util/List;)V

    .line 136
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRegularUsers;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 137
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityRegularUsers;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->f()V

    .line 138
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityRegularUsers;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/webrequests/dc;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter;->a(Ljava/util/List;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/yelp/android/ui/util/cp;->a(Landroid/widget/ListView;IZ)V

    .line 142
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityRegularUsers;->disableLoading()V

    .line 143
    return-void
.end method

.method public c()Lcom/yelp/android/appdata/webrequests/ab;
    .locals 1

    .prologue
    .line 84
    invoke-super {p0}, Lcom/yelp/android/ui/util/YelpListActivity;->getLastCustomNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/ab;

    return-object v0
.end method

.method public e_()I
    .locals 1

    .prologue
    .line 147
    const/16 v0, 0x28

    return v0
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 118
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->BusinessRegulars:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityRegularUsers;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getLastCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityRegularUsers;->c()Lcom/yelp/android/appdata/webrequests/ab;

    move-result-object v0

    return-object v0
.end method

.method public getParametersForIri(Lcom/yelp/android/analytics/iris/b;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/analytics/iris/b;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityRegularUsers;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "business_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/analytics/g;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityRegularUsers;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 55
    const-string/jumbo v1, "business_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "business_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 56
    :cond_0
    const-string/jumbo v1, "ActivityRegularUsers"

    const-string/jumbo v2, "Activity started without required intent parameters, exiting"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityRegularUsers;->finish()V

    .line 59
    :cond_1
    const-string/jumbo v1, "business_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRegularUsers;->d:Ljava/lang/String;

    .line 60
    new-instance v0, Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter;

    sget-object v1, Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter$RankMode;->BIZ:Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter$RankMode;

    invoke-direct {v0, p0, v1}, Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter;-><init>(Landroid/content/Context;Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter$RankMode;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRegularUsers;->b:Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter;

    .line 61
    if-eqz p1, :cond_2

    const-string/jumbo v0, "rankings"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 62
    const-string/jumbo v0, "rankings"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRegularUsers;->a:Ljava/util/ArrayList;

    .line 63
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRegularUsers;->b:Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityRegularUsers;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter;->a(Ljava/util/List;)V

    .line 64
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityRegularUsers;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->f()V

    .line 76
    :goto_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityRegularUsers;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityRegularUsers;->b:Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 78
    const v0, 0x7f070134

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityRegularUsers;->setTitle(I)V

    .line 80
    return-void

    .line 66
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRegularUsers;->a:Ljava/util/ArrayList;

    .line 67
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityRegularUsers;->c()Lcom/yelp/android/appdata/webrequests/ab;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRegularUsers;->c:Lcom/yelp/android/appdata/webrequests/ab;

    .line 68
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRegularUsers;->c:Lcom/yelp/android/appdata/webrequests/ab;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRegularUsers;->c:Lcom/yelp/android/appdata/webrequests/ab;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/ab;->isFetching()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 69
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRegularUsers;->c:Lcom/yelp/android/appdata/webrequests/ab;

    invoke-virtual {v0, p0}, Lcom/yelp/android/appdata/webrequests/ab;->setCallback(Lcom/yelp/android/appdata/webrequests/m;)V

    .line 74
    :goto_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRegularUsers;->c:Lcom/yelp/android/appdata/webrequests/ab;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityRegularUsers;->enableLoading(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    goto :goto_0

    .line 71
    :cond_3
    new-instance v0, Lcom/yelp/android/appdata/webrequests/ab;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityRegularUsers;->d:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityRegularUsers;->r()I

    move-result v2

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityRegularUsers;->e_()I

    move-result v3

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/yelp/android/appdata/webrequests/ab;-><init>(Ljava/lang/String;IILcom/yelp/android/appdata/webrequests/m;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRegularUsers;->c:Lcom/yelp/android/appdata/webrequests/ab;

    .line 72
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRegularUsers;->c:Lcom/yelp/android/appdata/webrequests/ab;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/ab;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    goto :goto_1
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 95
    invoke-super {p0}, Lcom/yelp/android/ui/util/YelpListActivity;->onPause()V

    .line 96
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityRegularUsers;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRegularUsers;->c:Lcom/yelp/android/appdata/webrequests/ab;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRegularUsers;->c:Lcom/yelp/android/appdata/webrequests/ab;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/ab;->isCompleted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRegularUsers;->c:Lcom/yelp/android/appdata/webrequests/ab;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/ab;->cancel(Z)V

    .line 101
    :cond_0
    return-void
.end method

.method public onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRegularUsers;->c:Lcom/yelp/android/appdata/webrequests/ab;

    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 89
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 90
    const-string/jumbo v0, "rankings"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityRegularUsers;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 91
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 29
    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/ActivityRegularUsers;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/util/ArrayList;)V

    return-void
.end method
