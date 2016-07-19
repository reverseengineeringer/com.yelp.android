.class public Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;
.super Lcom/yelp/android/ui/activities/support/YelpListFragment;
.source "FindFriendsSearchResultsFragment.java"


# instance fields
.field private a:Lcom/yelp/android/ui/util/ap;

.field private b:Landroid/widget/TextView;

.field private c:Lcom/yelp/android/appdata/webrequests/cs;

.field private d:Z

.field private final e:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
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

    .line 143
    new-instance v0, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment$1;-><init>(Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;->e:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;)Lcom/yelp/android/ui/util/ap;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;->a:Lcom/yelp/android/ui/util/ap;

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

.method static synthetic c(Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;)Lcom/yelp/android/appdata/webrequests/cs;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;->c:Lcom/yelp/android/appdata/webrequests/cs;

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

.method private f()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;->c:Lcom/yelp/android/appdata/webrequests/cs;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 138
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;->a:Lcom/yelp/android/ui/util/ap;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ap;->clear()V

    .line 139
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;->b(Z)V

    .line 140
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;->b()V

    .line 141
    return-void
.end method


# virtual methods
.method public a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2

    .prologue
    .line 98
    invoke-super/range {p0 .. p5}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->a(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 99
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;->c:Lcom/yelp/android/appdata/webrequests/cs;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/cs;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/User;

    .line 100
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->ae()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 101
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;->startActivity(Landroid/content/Intent;)V

    .line 102
    return-void
.end method

.method public a(Lcom/yelp/android/util/ErrorType;)V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 106
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->a(Lcom/yelp/android/util/ErrorType;)V

    .line 107
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setVisibility(I)V

    .line 108
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 109
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 120
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;->c:Lcom/yelp/android/appdata/webrequests/cs;

    if-nez v0, :cond_1

    .line 121
    new-instance v0, Lcom/yelp/android/appdata/webrequests/cs;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;->e:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/yelp/android/appdata/webrequests/cs;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;->c:Lcom/yelp/android/appdata/webrequests/cs;

    .line 129
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 130
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;->f()V

    .line 134
    :goto_1
    return-void

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;->c:Lcom/yelp/android/appdata/webrequests/cs;

    invoke-virtual {v0, p1}, Lcom/yelp/android/appdata/webrequests/cs;->a(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;->c:Lcom/yelp/android/appdata/webrequests/cs;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/cs;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;->c:Lcom/yelp/android/appdata/webrequests/cs;

    invoke-virtual {v0, v3}, Lcom/yelp/android/appdata/webrequests/cs;->a(Z)V

    goto :goto_0

    .line 132
    :cond_2
    iput-boolean v3, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;->d:Z

    goto :goto_1
.end method

.method protected b()V
    .locals 1

    .prologue
    .line 113
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->b()V

    .line 114
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;->c:Lcom/yelp/android/appdata/webrequests/cs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;->c:Lcom/yelp/android/appdata/webrequests/cs;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/cs;->u()Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;->c:Lcom/yelp/android/appdata/webrequests/cs;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/cs;->d()V

    .line 117
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
    invoke-static {p1}, Lcom/yelp/android/ui/util/ap;->a(Landroid/os/Bundle;)Lcom/yelp/android/ui/util/ap;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;->a:Lcom/yelp/android/ui/util/ap;

    .line 55
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;->e:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-static {p1, v0}, Lcom/yelp/android/appdata/webrequests/cs;->a(Landroid/os/Bundle;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)Lcom/yelp/android/appdata/webrequests/cs;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;->c:Lcom/yelp/android/appdata/webrequests/cs;

    .line 61
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;->a:Lcom/yelp/android/ui/util/ap;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;->a(Landroid/widget/ListAdapter;)V

    .line 62
    return-void

    .line 59
    :cond_0
    new-instance v0, Lcom/yelp/android/ui/util/ap;

    invoke-direct {v0}, Lcom/yelp/android/ui/util/ap;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;->a:Lcom/yelp/android/ui/util/ap;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 44
    const v0, 0x7f0300cb

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 46
    const v0, 0x7f0f031a

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
    .line 84
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onPause()V

    .line 85
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;->l()V

    .line 86
    const-string/jumbo v0, "member_search"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;->c:Lcom/yelp/android/appdata/webrequests/cs;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 87
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 66
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onResume()V

    .line 67
    const-string/jumbo v0, "member_search"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;->c:Lcom/yelp/android/appdata/webrequests/cs;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;->e:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/cs;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;->c:Lcom/yelp/android/appdata/webrequests/cs;

    .line 70
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;->c:Lcom/yelp/android/appdata/webrequests/cs;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;->c:Lcom/yelp/android/appdata/webrequests/cs;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/cs;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;->c:Lcom/yelp/android/appdata/webrequests/cs;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;->d:Z

    if-eqz v0, :cond_0

    .line 76
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;->f()V

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;->d:Z

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;->a:Lcom/yelp/android/ui/util/ap;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/util/ap;->b(Landroid/os/Bundle;)V

    .line 92
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;->c:Lcom/yelp/android/appdata/webrequests/cs;

    invoke-virtual {v0, p1}, Lcom/yelp/android/appdata/webrequests/cs;->a(Landroid/os/Bundle;)V

    .line 93
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 94
    return-void
.end method
