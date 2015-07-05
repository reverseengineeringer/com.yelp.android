.class public Lcom/yelp/android/ui/activities/friends/FriendsListFragment;
.super Lcom/yelp/android/ui/activities/support/YelpListFragment;
.source "FriendsListFragment.java"


# instance fields
.field private a:Lcom/yelp/android/util/u;

.field private b:Lcom/yelp/android/ui/util/cj;

.field private c:Lcom/yelp/android/appdata/webrequests/gp;

.field private d:Lcom/yelp/android/serializable/User;

.field private e:Lcom/yelp/android/ui/widgets/EditTextAndClearButton;

.field private final g:Lcom/yelp/android/appdata/webrequests/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Lcom/yelp/android/appdata/webrequests/gq;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/yelp/android/ui/panels/aa;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;-><init>()V

    .line 194
    new-instance v0, Lcom/yelp/android/ui/activities/friends/r;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/friends/r;-><init>(Lcom/yelp/android/ui/activities/friends/FriendsListFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;->g:Lcom/yelp/android/appdata/webrequests/m;

    .line 215
    new-instance v0, Lcom/yelp/android/ui/activities/friends/s;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/friends/s;-><init>(Lcom/yelp/android/ui/activities/friends/FriendsListFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;->h:Lcom/yelp/android/ui/panels/aa;

    .line 50
    return-void
.end method

.method public static a(Lcom/yelp/android/serializable/User;)Lcom/yelp/android/ui/activities/friends/FriendsListFragment;
    .locals 3

    .prologue
    .line 42
    new-instance v0, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;-><init>()V

    .line 43
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 44
    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 45
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 46
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/friends/FriendsListFragment;)Lcom/yelp/android/ui/util/cj;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;->b:Lcom/yelp/android/ui/util/cj;

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/friends/FriendsListFragment;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;->e()V

    return-void
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/friends/FriendsListFragment;)Lcom/yelp/android/ui/widgets/EditTextAndClearButton;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;->e:Lcom/yelp/android/ui/widgets/EditTextAndClearButton;

    return-object v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 161
    sget-object v0, Lcom/yelp/android/util/ErrorType;->NO_FRIENDS:Lcom/yelp/android/util/ErrorType;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;->h:Lcom/yelp/android/ui/panels/aa;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;->a(Lcom/yelp/android/util/ErrorType;Lcom/yelp/android/ui/panels/aa;)V

    .line 162
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;->e:Lcom/yelp/android/ui/widgets/EditTextAndClearButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/EditTextAndClearButton;->setVisibility(I)V

    .line 163
    return-void
.end method

.method private f()V
    .locals 2

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;->a:Lcom/yelp/android/util/u;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 169
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;->e:Lcom/yelp/android/ui/widgets/EditTextAndClearButton;

    new-instance v1, Lcom/yelp/android/ui/activities/friends/q;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/friends/q;-><init>(Lcom/yelp/android/ui/activities/friends/FriendsListFragment;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/EditTextAndClearButton;->a(Landroid/text/TextWatcher;)V

    .line 192
    return-void
.end method


# virtual methods
.method public a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2

    .prologue
    .line 147
    invoke-super/range {p0 .. p5}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->a(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 148
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    .line 149
    instance-of v1, v0, Lcom/yelp/android/serializable/User;

    if-eqz v1, :cond_0

    .line 150
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v0, Lcom/yelp/android/serializable/User;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;->startActivity(Landroid/content/Intent;)V

    .line 153
    :cond_0
    return-void
.end method

.method public a_()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;->b:Lcom/yelp/android/ui/util/cj;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/cj;->clear()V

    .line 142
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->a_()V

    .line 143
    return-void
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 157
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->Friends:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 84
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 85
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;->b:Lcom/yelp/android/ui/util/cj;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;->a(Landroid/widget/ListAdapter;)V

    .line 86
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setFastScrollEnabled(Z)V

    .line 90
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;->b:Lcom/yelp/android/ui/util/cj;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/cj;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;->s()Z

    move-result v0

    if-nez v0, :cond_1

    .line 91
    new-instance v0, Lcom/yelp/android/appdata/webrequests/gp;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;->d:Lcom/yelp/android/serializable/User;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;->g:Lcom/yelp/android/appdata/webrequests/m;

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/appdata/webrequests/gp;-><init>(Lcom/yelp/android/serializable/User;Lcom/yelp/android/appdata/webrequests/m;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;->c:Lcom/yelp/android/appdata/webrequests/gp;

    .line 92
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;->c:Lcom/yelp/android/appdata/webrequests/gp;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/gp;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 93
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;->c:Lcom/yelp/android/appdata/webrequests/gp;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 102
    :cond_0
    :goto_0
    new-instance v0, Lcom/yelp/android/util/u;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;->e:Lcom/yelp/android/ui/widgets/EditTextAndClearButton;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/util/u;-><init>(Lcom/yelp/android/ui/widgets/EditTextAndClearButton;Landroid/view/View;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;->a:Lcom/yelp/android/util/u;

    .line 105
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;->f()V

    .line 106
    return-void

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;->b:Lcom/yelp/android/ui/util/cj;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/cj;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;->e()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 54
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/User;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;->d:Lcom/yelp/android/serializable/User;

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;->d:Lcom/yelp/android/serializable/User;

    if-nez v0, :cond_1

    .line 59
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->s()Lcom/yelp/android/serializable/User;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;->d:Lcom/yelp/android/serializable/User;

    .line 65
    :cond_1
    invoke-static {p1}, Lcom/yelp/android/ui/util/cj;->a(Landroid/os/Bundle;)Lcom/yelp/android/ui/util/cj;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;->b:Lcom/yelp/android/ui/util/cj;

    .line 66
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;->b:Lcom/yelp/android/ui/util/cj;

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/util/cj;->a(Z)V

    .line 67
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;->b:Lcom/yelp/android/ui/util/cj;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/cj;->getCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;->b(I)V

    .line 68
    invoke-virtual {p0, v2}, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;->setHasOptionsMenu(Z)V

    .line 69
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 126
    invoke-super {p0, p1, p2}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 127
    const v0, 0x7f100011

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 128
    const v0, 0x7f0c0505

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v2, v2}, Lcom/yelp/android/ui/activities/friends/ActivityFindFriends;->a(Landroid/content/Context;ZZ)Landroid/content/Intent;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 130
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 74
    const v0, 0x7f0300b6

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 75
    const v0, 0x7f0c016a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/EditTextAndClearButton;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;->e:Lcom/yelp/android/ui/widgets/EditTextAndClearButton;

    .line 76
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;->e:Lcom/yelp/android/ui/widgets/EditTextAndClearButton;

    const v2, 0x7f070527

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/widgets/EditTextAndClearButton;->setHint(I)V

    .line 77
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;->e:Lcom/yelp/android/ui/widgets/EditTextAndClearButton;

    invoke-virtual {v0, v3}, Lcom/yelp/android/ui/widgets/EditTextAndClearButton;->setFocusable(Z)V

    .line 78
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;->e:Lcom/yelp/android/ui/widgets/EditTextAndClearButton;

    invoke-virtual {v0, v3}, Lcom/yelp/android/ui/widgets/EditTextAndClearButton;->setFocusableInTouchMode(Z)V

    .line 79
    return-object v1
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 116
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onDetach()V

    .line 121
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;->c:Lcom/yelp/android/appdata/webrequests/gp;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;->b(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 122
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2

    .prologue
    .line 134
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 135
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;->d:Lcom/yelp/android/serializable/User;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/dc;->a(Lcom/yelp/android/serializable/User;)Z

    move-result v0

    .line 136
    const v1, 0x7f0c0505

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 137
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 110
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 111
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;->b:Lcom/yelp/android/ui/util/cj;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/util/cj;->b(Landroid/os/Bundle;)V

    .line 112
    return-void
.end method
