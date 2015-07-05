.class public Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;
.super Lcom/yelp/android/ui/activities/support/YelpListFragment;
.source "RoyaltyFragment.java"


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/RoyaltySet;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/yelp/android/appdata/webrequests/ed;

.field private c:Lcom/yelp/android/ui/util/bs;

.field private final d:Lcom/yelp/android/appdata/webrequests/j;
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
.end field

.field private final e:Lcom/yelp/android/ui/activities/support/o;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;-><init>()V

    .line 137
    new-instance v0, Lcom/yelp/android/ui/activities/leaderboard/i;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/leaderboard/i;-><init>(Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;->d:Lcom/yelp/android/appdata/webrequests/j;

    .line 167
    new-instance v0, Lcom/yelp/android/ui/activities/leaderboard/j;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/leaderboard/j;-><init>(Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;->e:Lcom/yelp/android/ui/activities/support/o;

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;)Lcom/yelp/android/ui/util/bs;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;->c:Lcom/yelp/android/ui/util/bs;

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;Lcom/yelp/android/ui/util/bs;)Lcom/yelp/android/ui/util/bs;
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;->c:Lcom/yelp/android/ui/util/bs;

    return-object p1
.end method

.method private a(Ljava/util/ArrayList;)Lcom/yelp/android/ui/util/bs;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/RoyaltySet;",
            ">;)",
            "Lcom/yelp/android/ui/util/bs;"
        }
    .end annotation

    .prologue
    .line 96
    new-instance v6, Lcom/yelp/android/ui/util/bs;

    invoke-direct {v6}, Lcom/yelp/android/ui/util/bs;-><init>()V

    .line 97
    new-instance v2, Lcom/yelp/android/ui/activities/leaderboard/g;

    invoke-direct {v2}, Lcom/yelp/android/ui/activities/leaderboard/g;-><init>()V

    .line 98
    new-instance v3, Lcom/yelp/android/ui/activities/leaderboard/g;

    invoke-direct {v3}, Lcom/yelp/android/ui/activities/leaderboard/g;-><init>()V

    .line 99
    new-instance v4, Lcom/yelp/android/ui/activities/leaderboard/g;

    invoke-direct {v4}, Lcom/yelp/android/ui/activities/leaderboard/g;-><init>()V

    .line 100
    const/4 v5, 0x0

    .line 103
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/RoyaltySet;

    .line 104
    invoke-virtual {v0}, Lcom/yelp/android/serializable/RoyaltySet;->getRoyalty()Ljava/util/ArrayList;

    move-result-object v8

    .line 105
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 110
    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/Royal;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Royal;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yelp/android/serializable/RankTitle$Rank;->rankForString(Ljava/lang/String;)Lcom/yelp/android/serializable/RankTitle$Rank;

    move-result-object v9

    .line 111
    if-eqz v9, :cond_0

    .line 114
    sget-object v1, Lcom/yelp/android/ui/activities/leaderboard/l;->a:[I

    invoke-virtual {v9}, Lcom/yelp/android/serializable/RankTitle$Rank;->ordinal()I

    move-result v10

    aget v1, v1, v10

    packed-switch v1, :pswitch_data_0

    move-object v1, v5

    .line 127
    :goto_1
    invoke-virtual {v9}, Lcom/yelp/android/serializable/RankTitle$Rank;->getRankIcon()I

    move-result v5

    .line 128
    invoke-virtual {v1, v8}, Lcom/yelp/android/ui/util/au;->a(Ljava/util/List;)V

    .line 129
    invoke-virtual {v0}, Lcom/yelp/android/serializable/RoyaltySet;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/bw;->a(Ljava/lang/CharSequence;Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/bw;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/yelp/android/ui/util/bw;->c(I)Lcom/yelp/android/ui/util/bw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/bw;->a()Lcom/yelp/android/ui/util/bv;

    move-result-object v0

    invoke-virtual {v6, v5, v0}, Lcom/yelp/android/ui/util/bs;->a(ILcom/yelp/android/ui/util/bv;)V

    move-object v5, v1

    .line 133
    goto :goto_0

    :pswitch_0
    move-object v1, v2

    .line 117
    goto :goto_1

    :pswitch_1
    move-object v1, v3

    .line 120
    goto :goto_1

    :pswitch_2
    move-object v1, v4

    .line 123
    goto :goto_1

    .line 134
    :cond_1
    return-object v6

    .line 114
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;->a:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;)Lcom/yelp/android/ui/activities/support/o;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;->e:Lcom/yelp/android/ui/activities/support/o;

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;Ljava/util/ArrayList;)Lcom/yelp/android/ui/util/bs;
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;->a(Ljava/util/ArrayList;)Lcom/yelp/android/ui/util/bs;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2

    .prologue
    .line 90
    invoke-super/range {p0 .. p5}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->a(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 91
    iget-object v0, p0, Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;->c:Lcom/yelp/android/ui/util/bs;

    invoke-virtual {v0, p3}, Lcom/yelp/android/ui/util/bs;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Royal;

    .line 92
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Royal;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;->startActivity(Landroid/content/Intent;)V

    .line 93
    return-void
.end method

.method protected b()V
    .locals 2

    .prologue
    .line 79
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->b()V

    .line 81
    iget-object v0, p0, Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;->b:Lcom/yelp/android/appdata/webrequests/ed;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lcom/yelp/android/appdata/webrequests/ed;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;->d:Lcom/yelp/android/appdata/webrequests/j;

    invoke-direct {v0, v1}, Lcom/yelp/android/appdata/webrequests/ed;-><init>(Lcom/yelp/android/appdata/webrequests/j;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;->b:Lcom/yelp/android/appdata/webrequests/ed;

    .line 83
    iget-object v0, p0, Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;->b:Lcom/yelp/android/appdata/webrequests/ed;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/ed;->executeWithLocation([Ljava/lang/Object;)V

    .line 84
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;->i_()V

    .line 86
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 46
    iget-object v0, p0, Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;->c:Lcom/yelp/android/ui/util/bs;

    if-nez v0, :cond_0

    .line 47
    if-nez p1, :cond_1

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;->a:Ljava/util/ArrayList;

    .line 49
    iget-object v0, p0, Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;->a:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;->a(Ljava/util/ArrayList;)Lcom/yelp/android/ui/util/bs;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;->c:Lcom/yelp/android/ui/util/bs;

    .line 56
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;->c:Lcom/yelp/android/ui/util/bs;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;->a(Landroid/widget/ListAdapter;)V

    .line 57
    return-void

    .line 51
    :cond_1
    const-string/jumbo v0, "royalty"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;->a:Ljava/util/ArrayList;

    .line 53
    iget-object v0, p0, Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;->a:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;->a(Ljava/util/ArrayList;)Lcom/yelp/android/ui/util/bs;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;->c:Lcom/yelp/android/ui/util/bs;

    goto :goto_0
.end method

.method public onDetach()V
    .locals 3

    .prologue
    .line 73
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onDetach()V

    .line 74
    const-string/jumbo v0, "royalty"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;->b:Lcom/yelp/android/appdata/webrequests/ed;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/h;Z)V

    .line 75
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 67
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onResume()V

    .line 68
    const-string/jumbo v0, "royalty"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;->b:Lcom/yelp/android/appdata/webrequests/ed;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;->d:Lcom/yelp/android/appdata/webrequests/j;

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/h;Lcom/yelp/android/appdata/webrequests/j;)Lcom/yelp/android/appdata/webrequests/h;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/ed;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;->b:Lcom/yelp/android/appdata/webrequests/ed;

    .line 69
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 62
    const-string/jumbo v0, "royalty"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 63
    return-void
.end method
