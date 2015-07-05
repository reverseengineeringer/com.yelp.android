.class public abstract Lcom/yelp/android/ui/activities/leaderboard/RankFragment;
.super Lcom/yelp/android/ui/activities/support/YelpListFragment;
.source "RankFragment.java"


# instance fields
.field private a:Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter;

.field private b:Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest;

.field private c:I

.field private final d:Lcom/yelp/android/appdata/webrequests/j;
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
.end field

.field private final e:Lcom/yelp/android/ui/activities/support/o;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;-><init>()V

    .line 127
    new-instance v0, Lcom/yelp/android/ui/activities/leaderboard/d;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/leaderboard/d;-><init>(Lcom/yelp/android/ui/activities/leaderboard/RankFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/leaderboard/RankFragment;->d:Lcom/yelp/android/appdata/webrequests/j;

    .line 161
    new-instance v0, Lcom/yelp/android/ui/activities/leaderboard/e;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/leaderboard/e;-><init>(Lcom/yelp/android/ui/activities/leaderboard/RankFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/leaderboard/RankFragment;->e:Lcom/yelp/android/ui/activities/support/o;

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/leaderboard/RankFragment;I)I
    .locals 0

    .prologue
    .line 30
    iput p1, p0, Lcom/yelp/android/ui/activities/leaderboard/RankFragment;->c:I

    return p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/leaderboard/RankFragment;)Lcom/yelp/android/ui/activities/support/o;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/yelp/android/ui/activities/leaderboard/RankFragment;->e:Lcom/yelp/android/ui/activities/support/o;

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/leaderboard/RankFragment;)Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/yelp/android/ui/activities/leaderboard/RankFragment;->a:Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2

    .prologue
    .line 110
    invoke-super/range {p0 .. p5}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->a(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 111
    iget-object v0, p0, Lcom/yelp/android/ui/activities/leaderboard/RankFragment;->a:Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter;

    invoke-virtual {v0, p3}, Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/DisplayableAsUserBadge;

    .line 112
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/leaderboard/RankFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0}, Lcom/yelp/android/serializable/DisplayableAsUserBadge;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/leaderboard/RankFragment;->startActivity(Landroid/content/Intent;)V

    .line 113
    return-void
.end method

.method public a_()V
    .locals 1

    .prologue
    .line 90
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->a_()V

    .line 91
    iget-object v0, p0, Lcom/yelp/android/ui/activities/leaderboard/RankFragment;->a:Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter;->clear()V

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/leaderboard/RankFragment;->b:Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest;

    .line 93
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/leaderboard/RankFragment;->b()V

    .line 94
    return-void
.end method

.method protected b()V
    .locals 2

    .prologue
    .line 98
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->b()V

    .line 99
    iget-object v0, p0, Lcom/yelp/android/ui/activities/leaderboard/RankFragment;->b:Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest;

    if-nez v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/yelp/android/ui/activities/leaderboard/RankFragment;->d:Lcom/yelp/android/appdata/webrequests/j;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/leaderboard/RankFragment;->d()Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest$SearchMode;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest;->a(Lcom/yelp/android/appdata/webrequests/j;Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest$SearchMode;)Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/leaderboard/RankFragment;->b:Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest;

    .line 101
    iget-object v0, p0, Lcom/yelp/android/ui/activities/leaderboard/RankFragment;->b:Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest;->executeWithLocation([Ljava/lang/Object;)V

    .line 104
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/leaderboard/RankFragment;->i_()V

    .line 106
    :cond_0
    return-void
.end method

.method protected abstract c()Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter$RankMode;
.end method

.method protected abstract d()Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest$SearchMode;
.end method

.method protected abstract e()Lcom/yelp/android/util/ErrorType;
.end method

.method public f()Ljava/lang/String;
    .locals 2

    .prologue
    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "rankings"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 49
    iget-object v0, p0, Lcom/yelp/android/ui/activities/leaderboard/RankFragment;->a:Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter;

    if-nez v0, :cond_0

    .line 50
    if-nez p1, :cond_1

    .line 51
    new-instance v0, Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/leaderboard/RankFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/leaderboard/RankFragment;->c()Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter$RankMode;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter;-><init>(Landroid/content/Context;Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter$RankMode;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/leaderboard/RankFragment;->a:Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter;

    .line 56
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/leaderboard/RankFragment;->a:Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/leaderboard/RankFragment;->a(Landroid/widget/ListAdapter;)V

    .line 57
    return-void

    .line 53
    :cond_1
    new-instance v0, Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/leaderboard/RankFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/leaderboard/RankFragment;->a:Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter;

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/leaderboard/RankFragment;->f()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/leaderboard/RankFragment;->b:Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/leaderboard/RankFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/h;Z)V

    .line 77
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onPause()V

    .line 78
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 61
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onResume()V

    .line 62
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/leaderboard/RankFragment;->f()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/leaderboard/RankFragment;->b:Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/leaderboard/RankFragment;->d:Lcom/yelp/android/appdata/webrequests/j;

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/leaderboard/RankFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/h;Lcom/yelp/android/appdata/webrequests/j;)Lcom/yelp/android/appdata/webrequests/h;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/leaderboard/RankFragment;->b:Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest;

    .line 64
    iget-object v0, p0, Lcom/yelp/android/ui/activities/leaderboard/RankFragment;->b:Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/leaderboard/RankFragment;->b:Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest;->isFetching()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/leaderboard/RankFragment;->i_()V

    .line 68
    :cond_0
    iget v0, p0, Lcom/yelp/android/ui/activities/leaderboard/RankFragment;->c:I

    if-ltz v0, :cond_1

    .line 69
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/leaderboard/RankFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    iget v1, p0, Lcom/yelp/android/ui/activities/leaderboard/RankFragment;->c:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/yelp/android/ui/util/cp;->a(Landroid/widget/ListView;IZ)V

    .line 70
    const/4 v0, -0x1

    iput v0, p0, Lcom/yelp/android/ui/activities/leaderboard/RankFragment;->c:I

    .line 72
    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 82
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 83
    iget-object v0, p0, Lcom/yelp/android/ui/activities/leaderboard/RankFragment;->a:Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/yelp/android/ui/activities/leaderboard/RankFragment;->a:Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter;->a(Landroid/os/Bundle;)V

    .line 86
    :cond_0
    return-void
.end method
