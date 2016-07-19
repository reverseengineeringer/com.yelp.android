.class public Lcom/yelp/android/ui/activities/friends/FriendsListFragment;
.super Lcom/yelp/android/ui/activities/support/YelpListFragment;
.source "FriendsListFragment.java"


# instance fields
.field private a:Lcom/yelp/android/util/m;

.field private b:Lcom/yelp/android/ui/util/ap;

.field private c:Lcom/yelp/android/appdata/webrequests/fh;

.field private d:Lcom/yelp/android/serializable/User;

.field private e:Lcom/yelp/android/ui/widgets/EditTextAndClearButton;

.field private final f:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Lcom/yelp/android/appdata/webrequests/fh$a;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/yelp/android/ui/panels/PanelError$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;-><init>()V

    .line 193
    new-instance v0, Lcom/yelp/android/ui/activities/friends/FriendsListFragment$2;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/friends/FriendsListFragment$2;-><init>(Lcom/yelp/android/ui/activities/friends/FriendsListFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;->f:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    .line 214
    new-instance v0, Lcom/yelp/android/ui/activities/friends/FriendsListFragment$3;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/friends/FriendsListFragment$3;-><init>(Lcom/yelp/android/ui/activities/friends/FriendsListFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;->g:Lcom/yelp/android/ui/panels/PanelError$a;

    .line 49
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

.method static synthetic a(Lcom/yelp/android/ui/activities/friends/FriendsListFragment;)Lcom/yelp/android/ui/util/ap;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;->b:Lcom/yelp/android/ui/util/ap;

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/friends/FriendsListFragment;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;->f()V

    return-void
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/friends/FriendsListFragment;)Lcom/yelp/android/ui/widgets/EditTextAndClearButton;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;->e:Lcom/yelp/android/ui/widgets/EditTextAndClearButton;

    return-object v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 159
    sget-object v0, Lcom/yelp/android/util/ErrorType;->NO_FRIENDS:Lcom/yelp/android/util/ErrorType;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;->g:Lcom/yelp/android/ui/panels/PanelError$a;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;->a(Lcom/yelp/android/util/ErrorType;Lcom/yelp/android/ui/panels/PanelError$a;)V

    .line 160
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;->e:Lcom/yelp/android/ui/widgets/EditTextAndClearButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/EditTextAndClearButton;->setVisibility(I)V

    .line 161
    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;->a:Lcom/yelp/android/util/m;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 167
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;->e:Lcom/yelp/android/ui/widgets/EditTextAndClearButton;

    new-instance v1, Lcom/yelp/android/ui/activities/friends/FriendsListFragment$1;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/friends/FriendsListFragment$1;-><init>(Lcom/yelp/android/ui/activities/friends/FriendsListFragment;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/EditTextAndClearButton;->a(Landroid/text/TextWatcher;)V

    .line 191
    return-void
.end method


# virtual methods
.method public a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2

    .prologue
    .line 145
    invoke-super/range {p0 .. p5}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->a(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 146
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    .line 147
    instance-of v1, v0, Lcom/yelp/android/serializable/User;

    if-eqz v1, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v0, Lcom/yelp/android/serializable/User;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->ae()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;->startActivity(Landroid/content/Intent;)V

    .line 151
    :cond_0
    return-void
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 155
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->Friends:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 83
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 84
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;->b:Lcom/yelp/android/ui/util/ap;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;->a(Landroid/widget/ListAdapter;)V

    .line 85
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setFastScrollEnabled(Z)V

    .line 89
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;->b:Lcom/yelp/android/ui/util/ap;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;->r()Z

    move-result v0

    if-nez v0, :cond_1

    .line 90
    new-instance v0, Lcom/yelp/android/appdata/webrequests/fh;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;->d:Lcom/yelp/android/serializable/User;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;->f:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/appdata/webrequests/fh;-><init>(Lcom/yelp/android/serializable/User;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;->c:Lcom/yelp/android/appdata/webrequests/fh;

    .line 91
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;->c:Lcom/yelp/android/appdata/webrequests/fh;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/fh;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 92
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;->c:Lcom/yelp/android/appdata/webrequests/fh;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 101
    :cond_0
    :goto_0
    new-instance v0, Lcom/yelp/android/util/m;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;->e:Lcom/yelp/android/ui/widgets/EditTextAndClearButton;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/util/m;-><init>(Lcom/yelp/android/ui/widgets/EditTextAndClearButton;Landroid/view/View;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;->a:Lcom/yelp/android/util/m;

    .line 103
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;->g()V

    .line 104
    return-void

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;->b:Lcom/yelp/android/ui/util/ap;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;->f()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 53
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 54
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/User;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;->d:Lcom/yelp/android/serializable/User;

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;->d:Lcom/yelp/android/serializable/User;

    if-nez v0, :cond_1

    .line 58
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->p()Lcom/yelp/android/serializable/User;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;->d:Lcom/yelp/android/serializable/User;

    .line 64
    :cond_1
    invoke-static {p1}, Lcom/yelp/android/ui/util/ap;->a(Landroid/os/Bundle;)Lcom/yelp/android/ui/util/ap;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;->b:Lcom/yelp/android/ui/util/ap;

    .line 65
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;->b:Lcom/yelp/android/ui/util/ap;

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/util/ap;->a(Z)V

    .line 66
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;->b:Lcom/yelp/android/ui/util/ap;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ap;->getCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;->b(I)V

    .line 67
    invoke-virtual {p0, v2}, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;->setHasOptionsMenu(Z)V

    .line 68
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .prologue
    .line 124
    invoke-super {p0, p1, p2}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 125
    const v0, 0x7f100014

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 126
    const v0, 0x7f0f060e

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/yelp/android/ui/activities/friends/ActivityFindFriends;->a(Landroid/content/Context;Z)Landroid/content/Intent;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 128
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 73
    const v0, 0x7f0300d0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 74
    const v0, 0x7f0f0589

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/EditTextAndClearButton;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;->e:Lcom/yelp/android/ui/widgets/EditTextAndClearButton;

    .line 75
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;->e:Lcom/yelp/android/ui/widgets/EditTextAndClearButton;

    const v2, 0x7f070524

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/widgets/EditTextAndClearButton;->setHint(I)V

    .line 76
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;->e:Lcom/yelp/android/ui/widgets/EditTextAndClearButton;

    invoke-virtual {v0, v3}, Lcom/yelp/android/ui/widgets/EditTextAndClearButton;->setFocusable(Z)V

    .line 77
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;->e:Lcom/yelp/android/ui/widgets/EditTextAndClearButton;

    invoke-virtual {v0, v3}, Lcom/yelp/android/ui/widgets/EditTextAndClearButton;->setFocusableInTouchMode(Z)V

    .line 78
    return-object v1
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 114
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onDetach()V

    .line 119
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;->c:Lcom/yelp/android/appdata/webrequests/fh;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;->c(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 120
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2

    .prologue
    .line 132
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 133
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;->d:Lcom/yelp/android/serializable/User;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/co;->a(Lcom/yelp/android/serializable/User;)Z

    move-result v0

    .line 134
    const v1, 0x7f0f060e

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 135
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 108
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 109
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;->b:Lcom/yelp/android/ui/util/ap;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/util/ap;->b(Landroid/os/Bundle;)V

    .line 110
    return-void
.end method

.method public p_()V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;->b:Lcom/yelp/android/ui/util/ap;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ap;->clear()V

    .line 140
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->p_()V

    .line 141
    return-void
.end method
