.class public Lcom/yelp/android/ui/activities/leaderboard/ActivityLeaderboard;
.super Lcom/yelp/android/ui/activities/support/YelpTabActivity;
.source "ActivityLeaderboard.java"


# instance fields
.field private a:Landroid/widget/TabHost$OnTabChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpTabActivity;-><init>()V

    .line 83
    new-instance v0, Lcom/yelp/android/ui/activities/leaderboard/a;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/leaderboard/a;-><init>(Lcom/yelp/android/ui/activities/leaderboard/ActivityLeaderboard;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/leaderboard/ActivityLeaderboard;->a:Landroid/widget/TabHost$OnTabChangeListener;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/ui/activities/leaderboard/ActivityLeaderboard$LeaderboardType;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 31
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/leaderboard/ActivityLeaderboard;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 32
    const-string/jumbo v1, "extra.leaderboard_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 33
    return-object v0
.end method


# virtual methods
.method protected a()Landroid/widget/Button;
    .locals 4

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/leaderboard/ActivityLeaderboard;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030193

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/leaderboard/ActivityLeaderboard;->c()Landroid/support/v4/app/FragmentTabHost;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    return-object v0
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->CheckInsWeekRankings:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/leaderboard/ActivityLeaderboard;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 38
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpTabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/leaderboard/ActivityLeaderboard;->c()Landroid/support/v4/app/FragmentTabHost;

    move-result-object v1

    .line 40
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/leaderboard/ActivityLeaderboard;->a()Landroid/widget/Button;

    move-result-object v0

    .line 41
    const v2, 0x7f070333

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 42
    const-string/jumbo v2, "week_rank"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    const-class v2, Lcom/yelp/android/ui/activities/leaderboard/WeekRankFragment;

    invoke-virtual {v1, v0, v2, v3}, Landroid/support/v4/app/FragmentTabHost;->addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/leaderboard/ActivityLeaderboard;->a()Landroid/widget/Button;

    move-result-object v0

    .line 46
    const v2, 0x7f070332

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 47
    const-string/jumbo v2, "friends_rank"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    const-class v2, Lcom/yelp/android/ui/activities/leaderboard/FriendsRankFragment;

    invoke-virtual {v1, v0, v2, v3}, Landroid/support/v4/app/FragmentTabHost;->addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/leaderboard/ActivityLeaderboard;->a()Landroid/widget/Button;

    move-result-object v0

    .line 51
    const v2, 0x7f070334

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 52
    const-string/jumbo v2, "royalty_rank"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    const-class v2, Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;

    invoke-virtual {v1, v0, v2, v3}, Landroid/support/v4/app/FragmentTabHost;->addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 55
    iget-object v0, p0, Lcom/yelp/android/ui/activities/leaderboard/ActivityLeaderboard;->a:Landroid/widget/TabHost$OnTabChangeListener;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentTabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 57
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/leaderboard/ActivityLeaderboard;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "extra.leaderboard_type"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/leaderboard/ActivityLeaderboard$LeaderboardType;

    .line 59
    sget-object v2, Lcom/yelp/android/ui/activities/leaderboard/b;->a:[I

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/leaderboard/ActivityLeaderboard$LeaderboardType;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    .line 70
    :goto_0
    return-void

    .line 61
    :pswitch_0
    const-string/jumbo v0, "week_rank"

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    goto :goto_0

    .line 64
    :pswitch_1
    const-string/jumbo v0, "friends_rank"

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    goto :goto_0

    .line 67
    :pswitch_2
    const-string/jumbo v0, "royalty_rank"

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    goto :goto_0

    .line 59
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
