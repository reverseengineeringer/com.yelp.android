.class public Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;
.super Lcom/yelp/android/ui/activities/support/YelpListFragment;
.source "FindFriendsSearchResultsFragment.java"


# instance fields
.field private a:Lcom/yelp/android/ui/util/cj;

.field private b:Landroid/widget/TextView;

.field private c:Lcom/yelp/android/appdata/webrequests/dn;

.field private d:Z

.field private final e:Lcom/yelp/android/appdata/webrequests/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/User;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;-><init>()V

    .line 142
    new-instance v0, Lcom/yelp/android/ui/activities/friends/n;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/friends/n;-><init>(Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;->e:Lcom/yelp/android/appdata/webrequests/m;

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;)Lcom/yelp/android/ui/util/cj;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;->a:Lcom/yelp/android/ui/util/cj;

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;->c(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 0

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;->a(Lcom/yelp/android/appdata/webrequests/YelpException;)V

    return-void
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;)Lcom/yelp/android/appdata/webrequests/dn;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;->c:Lcom/yelp/android/appdata/webrequests/dn;

    return-object v0
.end method

.method public static c()Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;-><init>()V

    return-object v0
.end method

.method private e()V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;->c:Lcom/yelp/android/appdata/webrequests/dn;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 137
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;->a:Lcom/yelp/android/ui/util/cj;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/cj;->clear()V

    .line 138
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;->a(Z)V

    .line 139
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;->b()V

    .line 140
    return-void
.end method


# virtual methods
.method public a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2

    .prologue
    .line 97
    invoke-super/range {p0 .. p5}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->a(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 98
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;->c:Lcom/yelp/android/appdata/webrequests/dn;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dn;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/User;

    .line 99
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 100
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;->startActivity(Landroid/content/Intent;)V

    .line 101
    return-void
.end method

.method public a(Lcom/yelp/android/util/ErrorType;)V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 105
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->a(Lcom/yelp/android/util/ErrorType;)V

    .line 106
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setVisibility(I)V

    .line 107
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 108
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 119
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;->c:Lcom/yelp/android/appdata/webrequests/dn;

    if-nez v0, :cond_1

    .line 120
    new-instance v0, Lcom/yelp/android/appdata/webrequests/dn;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;->e:Lcom/yelp/android/appdata/webrequests/m;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/yelp/android/appdata/webrequests/dn;-><init>(Lcom/yelp/android/appdata/webrequests/m;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;->c:Lcom/yelp/android/appdata/webrequests/dn;

    .line 128
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 129
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;->e()V

    .line 133
    :goto_1
    return-void

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;->c:Lcom/yelp/android/appdata/webrequests/dn;

    invoke-virtual {v0, p1}, Lcom/yelp/android/appdata/webrequests/dn;->a(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;->c:Lcom/yelp/android/appdata/webrequests/dn;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dn;->isFetching()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;->c:Lcom/yelp/android/appdata/webrequests/dn;

    invoke-virtual {v0, v3}, Lcom/yelp/android/appdata/webrequests/dn;->cancel(Z)V

    goto :goto_0

    .line 131
    :cond_2
    iput-boolean v3, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;->d:Z

    goto :goto_1
.end method

.method protected b()V
    .locals 1

    .prologue
    .line 112
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->b()V

    .line 113
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;->c:Lcom/yelp/android/appdata/webrequests/dn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;->c:Lcom/yelp/android/appdata/webrequests/dn;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dn;->isFetching()Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;->c:Lcom/yelp/android/appdata/webrequests/dn;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dn;->b()V

    .line 116
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 53
    if-eqz p1, :cond_0

    .line 54
    invoke-static {p1}, Lcom/yelp/android/ui/util/cj;->a(Landroid/os/Bundle;)Lcom/yelp/android/ui/util/cj;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;->a:Lcom/yelp/android/ui/util/cj;

    .line 55
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;->e:Lcom/yelp/android/appdata/webrequests/m;

    invoke-static {p1, v0}, Lcom/yelp/android/appdata/webrequests/dn;->a(Landroid/os/Bundle;Lcom/yelp/android/appdata/webrequests/m;)Lcom/yelp/android/appdata/webrequests/dn;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;->c:Lcom/yelp/android/appdata/webrequests/dn;

    .line 60
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;->a:Lcom/yelp/android/ui/util/cj;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;->a(Landroid/widget/ListAdapter;)V

    .line 61
    return-void

    .line 58
    :cond_0
    new-instance v0, Lcom/yelp/android/ui/util/cj;

    invoke-direct {v0}, Lcom/yelp/android/ui/util/cj;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;->a:Lcom/yelp/android/ui/util/cj;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 44
    const v0, 0x7f0300b1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 46
    const v0, 0x7f0c02ba

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;->b:Landroid/widget/TextView;

    .line 47
    return-object v1
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 83
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onPause()V

    .line 84
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;->j()V

    .line 85
    const-string/jumbo v0, "member_search"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;->c:Lcom/yelp/android/appdata/webrequests/dn;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 86
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 65
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onResume()V

    .line 66
    const-string/jumbo v0, "member_search"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;->c:Lcom/yelp/android/appdata/webrequests/dn;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;->e:Lcom/yelp/android/appdata/webrequests/m;

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/m;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/dn;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;->c:Lcom/yelp/android/appdata/webrequests/dn;

    .line 69
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;->c:Lcom/yelp/android/appdata/webrequests/dn;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;->c:Lcom/yelp/android/appdata/webrequests/dn;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dn;->isFetching()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;->c:Lcom/yelp/android/appdata/webrequests/dn;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;->d:Z

    if-eqz v0, :cond_0

    .line 75
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;->e()V

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;->d:Z

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;->a:Lcom/yelp/android/ui/util/cj;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/util/cj;->b(Landroid/os/Bundle;)V

    .line 91
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;->c:Lcom/yelp/android/appdata/webrequests/dn;

    invoke-virtual {v0, p1}, Lcom/yelp/android/appdata/webrequests/dn;->a(Landroid/os/Bundle;)V

    .line 92
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 93
    return-void
.end method
