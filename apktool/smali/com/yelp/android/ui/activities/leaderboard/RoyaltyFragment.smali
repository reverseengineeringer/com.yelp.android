.class public Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;
.super Lcom/yelp/android/ui/activities/support/YelpListFragment;
.source "RoyaltyFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment$3;
    }
.end annotation


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

.field private b:Lcom/yelp/android/appdata/webrequests/dg;

.field private c:Lcom/yelp/android/ui/util/aj;

.field private final d:Lcom/yelp/android/appdata/webrequests/k$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/k$b",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/RoyaltySet;",
            ">;>;"
        }
    .end annotation
.end field

.field private final e:Lcom/yelp/android/ui/activities/support/b$e;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;-><init>()V

    .line 137
    new-instance v0, Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment$1;-><init>(Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;->d:Lcom/yelp/android/appdata/webrequests/k$b;

    .line 167
    new-instance v0, Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment$2;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment$2;-><init>(Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;->e:Lcom/yelp/android/ui/activities/support/b$e;

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;)Lcom/yelp/android/ui/util/aj;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;->c:Lcom/yelp/android/ui/util/aj;

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;Lcom/yelp/android/ui/util/aj;)Lcom/yelp/android/ui/util/aj;
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;->c:Lcom/yelp/android/ui/util/aj;

    return-object p1
.end method

.method private a(Ljava/util/ArrayList;)Lcom/yelp/android/ui/util/aj;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/RoyaltySet;",
            ">;)",
            "Lcom/yelp/android/ui/util/aj;"
        }
    .end annotation

    .prologue
    .line 95
    new-instance v6, Lcom/yelp/android/ui/util/aj;

    invoke-direct {v6}, Lcom/yelp/android/ui/util/aj;-><init>()V

    .line 96
    new-instance v2, Lcom/yelp/android/ui/activities/leaderboard/a;

    invoke-direct {v2}, Lcom/yelp/android/ui/activities/leaderboard/a;-><init>()V

    .line 97
    new-instance v3, Lcom/yelp/android/ui/activities/leaderboard/a;

    invoke-direct {v3}, Lcom/yelp/android/ui/activities/leaderboard/a;-><init>()V

    .line 98
    new-instance v4, Lcom/yelp/android/ui/activities/leaderboard/a;

    invoke-direct {v4}, Lcom/yelp/android/ui/activities/leaderboard/a;-><init>()V

    .line 99
    const/4 v5, 0x0

    .line 102
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

    .line 103
    invoke-virtual {v0}, Lcom/yelp/android/serializable/RoyaltySet;->a()Ljava/util/ArrayList;

    move-result-object v8

    .line 104
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 109
    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/Royal;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Royal;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yelp/android/serializable/RankTitle$Rank;->rankForString(Ljava/lang/String;)Lcom/yelp/android/serializable/RankTitle$Rank;

    move-result-object v9

    .line 110
    if-eqz v9, :cond_0

    .line 113
    sget-object v1, Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment$3;->a:[I

    invoke-virtual {v9}, Lcom/yelp/android/serializable/RankTitle$Rank;->ordinal()I

    move-result v10

    aget v1, v1, v10

    packed-switch v1, :pswitch_data_0

    move-object v1, v5

    .line 126
    :goto_1
    invoke-virtual {v9}, Lcom/yelp/android/serializable/RankTitle$Rank;->getRankIcon()I

    move-result v5

    .line 127
    invoke-virtual {v1, v8}, Lcom/yelp/android/ui/util/w;->a(Ljava/util/List;)V

    .line 128
    invoke-virtual {v0}, Lcom/yelp/android/serializable/RoyaltySet;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/aj$c;->a(Ljava/lang/CharSequence;Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/yelp/android/ui/util/aj$c;->c(I)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/aj$c;->b()Lcom/yelp/android/ui/util/aj$b;

    move-result-object v0

    invoke-virtual {v6, v5, v0}, Lcom/yelp/android/ui/util/aj;->a(ILcom/yelp/android/ui/util/aj$b;)V

    move-object v5, v1

    .line 133
    goto :goto_0

    :pswitch_0
    move-object v1, v2

    .line 116
    goto :goto_1

    :pswitch_1
    move-object v1, v3

    .line 119
    goto :goto_1

    :pswitch_2
    move-object v1, v4

    .line 122
    goto :goto_1

    .line 134
    :cond_1
    return-object v6

    .line 113
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
    .line 30
    iput-object p1, p0, Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;->a:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;)Lcom/yelp/android/ui/activities/support/b$e;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;->e:Lcom/yelp/android/ui/activities/support/b$e;

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;Ljava/util/ArrayList;)Lcom/yelp/android/ui/util/aj;
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;->a(Ljava/util/ArrayList;)Lcom/yelp/android/ui/util/aj;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2

    .prologue
    .line 89
    invoke-super/range {p0 .. p5}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->a(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 90
    iget-object v0, p0, Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;->c:Lcom/yelp/android/ui/util/aj;

    invoke-virtual {v0, p3}, Lcom/yelp/android/ui/util/aj;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Royal;

    .line 91
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Royal;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;->startActivity(Landroid/content/Intent;)V

    .line 92
    return-void
.end method

.method protected b()V
    .locals 2

    .prologue
    .line 78
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->b()V

    .line 80
    iget-object v0, p0, Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;->b:Lcom/yelp/android/appdata/webrequests/dg;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Lcom/yelp/android/appdata/webrequests/dg;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;->d:Lcom/yelp/android/appdata/webrequests/k$b;

    invoke-direct {v0, v1}, Lcom/yelp/android/appdata/webrequests/dg;-><init>(Lcom/yelp/android/appdata/webrequests/k$b;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;->b:Lcom/yelp/android/appdata/webrequests/dg;

    .line 82
    iget-object v0, p0, Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;->b:Lcom/yelp/android/appdata/webrequests/dg;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/dg;->a([Ljava/lang/Object;)V

    .line 83
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;->H_()V

    .line 85
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 45
    iget-object v0, p0, Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;->c:Lcom/yelp/android/ui/util/aj;

    if-nez v0, :cond_0

    .line 46
    if-nez p1, :cond_1

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;->a:Ljava/util/ArrayList;

    .line 48
    iget-object v0, p0, Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;->a:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;->a(Ljava/util/ArrayList;)Lcom/yelp/android/ui/util/aj;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;->c:Lcom/yelp/android/ui/util/aj;

    .line 55
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;->c:Lcom/yelp/android/ui/util/aj;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;->a(Landroid/widget/ListAdapter;)V

    .line 56
    return-void

    .line 50
    :cond_1
    const-string/jumbo v0, "royalty"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;->a:Ljava/util/ArrayList;

    .line 52
    iget-object v0, p0, Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;->a:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;->a(Ljava/util/ArrayList;)Lcom/yelp/android/ui/util/aj;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;->c:Lcom/yelp/android/ui/util/aj;

    goto :goto_0
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 72
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onDetach()V

    .line 73
    const-string/jumbo v0, "royalty"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;->b:Lcom/yelp/android/appdata/webrequests/dg;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/k;)V

    .line 74
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 66
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onResume()V

    .line 67
    const-string/jumbo v0, "royalty"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;->b:Lcom/yelp/android/appdata/webrequests/dg;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;->d:Lcom/yelp/android/appdata/webrequests/k$b;

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/k;Lcom/yelp/android/appdata/webrequests/k$b;)Lcom/yelp/android/appdata/webrequests/k;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/dg;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;->b:Lcom/yelp/android/appdata/webrequests/dg;

    .line 68
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 61
    const-string/jumbo v0, "royalty"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/leaderboard/RoyaltyFragment;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 62
    return-void
.end method
