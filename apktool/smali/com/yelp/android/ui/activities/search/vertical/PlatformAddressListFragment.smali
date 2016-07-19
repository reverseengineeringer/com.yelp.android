.class public Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment;
.super Lcom/yelp/android/ui/activities/support/YelpListFragment;
.source "PlatformAddressListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment$a;
    }
.end annotation


# instance fields
.field private a:Lcom/yelp/android/appdata/webrequests/ey;

.field private b:Lcom/yelp/android/ui/activities/search/vertical/b;

.field private c:Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment$a;

.field private d:Ljava/lang/String;

.field private e:Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment$a;

.field private f:Landroid/view/View$OnClickListener;

.field private g:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/PlatformDisambiguatedAddress;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;-><init>()V

    .line 178
    new-instance v0, Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment$2;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment$2;-><init>(Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment;->e:Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment$a;

    .line 186
    new-instance v0, Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment$3;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment$3;-><init>(Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment;->f:Landroid/view/View$OnClickListener;

    .line 197
    new-instance v0, Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment$4;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment$4;-><init>(Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment;->g:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    .line 224
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment;Lcom/yelp/android/appdata/webrequests/ey;)Lcom/yelp/android/appdata/webrequests/ey;
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment;->a:Lcom/yelp/android/appdata/webrequests/ey;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment;)Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment$a;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment;->c:Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment$a;

    return-object v0
.end method

.method public static a(Ljava/lang/String;Z)Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment;
    .locals 3

    .prologue
    .line 60
    new-instance v0, Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment;-><init>()V

    .line 61
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 62
    const-string/jumbo v2, "current_address_id"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string/jumbo v2, "show_current_location"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 64
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 65
    return-object v0
.end method

.method private a(Lcom/yelp/android/ui/util/aj;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 100
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "show_current_location"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030096

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 104
    new-instance v1, Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment$1;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment$1;-><init>(Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    const v1, 0x7f070231

    new-instance v2, Lcom/yelp/android/ui/util/e;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/view/View;

    aput-object v0, v3, v4

    invoke-direct {v2, v3}, Lcom/yelp/android/ui/util/e;-><init>([Landroid/view/View;)V

    invoke-virtual {p1, v1, v2}, Lcom/yelp/android/ui/util/aj;->a(ILandroid/widget/BaseAdapter;)V

    .line 119
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment;)Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment$a;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment;->e:Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment$a;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment;)Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment;->g:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    return-object v0
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment;)Lcom/yelp/android/appdata/webrequests/ey;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment;->a:Lcom/yelp/android/appdata/webrequests/ey;

    return-object v0
.end method

.method static synthetic e(Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment;)Lcom/yelp/android/ui/activities/search/vertical/b;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment;->b:Lcom/yelp/android/ui/activities/search/vertical/b;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 5

    .prologue
    .line 150
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/PlatformDisambiguatedAddress;

    .line 153
    new-instance v2, Lcom/yelp/android/g/a;

    invoke-direct {v2}, Lcom/yelp/android/g/a;-><init>()V

    .line 155
    const-string/jumbo v3, "different_address"

    invoke-virtual {v0}, Lcom/yelp/android/serializable/PlatformDisambiguatedAddress;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment;->d:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->SearchDeliveryAddressListSelected:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v1, v2}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 160
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment;->b:Lcom/yelp/android/ui/activities/search/vertical/b;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/PlatformDisambiguatedAddress;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/activities/search/vertical/b;->a(Ljava/lang/String;)V

    .line 161
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment;->c:Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment$a;

    invoke-interface {v1, v0}, Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment$a;->a(Lcom/yelp/android/serializable/PlatformDisambiguatedAddress;)V

    .line 162
    return-void

    .line 155
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 166
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->SearchDeliveryAddressList:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 82
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "current_address_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment;->d:Ljava/lang/String;

    .line 83
    new-instance v0, Lcom/yelp/android/ui/activities/search/vertical/b;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment;->d:Ljava/lang/String;

    invoke-direct {v0, v1, p1, v2}, Lcom/yelp/android/ui/activities/search/vertical/b;-><init>(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment;->b:Lcom/yelp/android/ui/activities/search/vertical/b;

    .line 87
    new-instance v0, Lcom/yelp/android/ui/util/aj;

    invoke-direct {v0}, Lcom/yelp/android/ui/util/aj;-><init>()V

    .line 88
    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment;->a(Lcom/yelp/android/ui/util/aj;)V

    .line 89
    const v1, 0x7f0f0201

    iget-object v2, p0, Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment;->b:Lcom/yelp/android/ui/activities/search/vertical/b;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/util/aj;->a(ILandroid/widget/BaseAdapter;)V

    .line 90
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment;->a(Landroid/widget/ListAdapter;)V

    .line 92
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03013c

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 95
    const v1, 0x7f0f0416

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment;->f:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v1

    const-string/jumbo v2, "FOOTER"

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 97
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onAttach(Landroid/app/Activity;)V

    .line 71
    check-cast p1, Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment$a;

    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment;->c:Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment$a;

    .line 72
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment;->getFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    const-string/jumbo v1, "add_address"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/l;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/search/vertical/AddAddressDialogFragment;

    .line 74
    if-eqz v0, :cond_0

    .line 75
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment;->e:Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment$a;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/search/vertical/AddAddressDialogFragment;->a(Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment$a;)V

    .line 77
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 138
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onPause()V

    .line 139
    const-string/jumbo v0, "address_list"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment;->a:Lcom/yelp/android/appdata/webrequests/ey;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 140
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 123
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onResume()V

    .line 124
    const-string/jumbo v0, "address_list"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment;->a:Lcom/yelp/android/appdata/webrequests/ey;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment;->g:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/ey;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment;->a:Lcom/yelp/android/appdata/webrequests/ey;

    .line 126
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment;->a:Lcom/yelp/android/appdata/webrequests/ey;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment;->a:Lcom/yelp/android/appdata/webrequests/ey;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/ey;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment;->b:Lcom/yelp/android/ui/activities/search/vertical/b;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/search/vertical/b;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment;->H_()V

    .line 129
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment;->a:Lcom/yelp/android/appdata/webrequests/ey;

    if-nez v0, :cond_1

    .line 130
    new-instance v0, Lcom/yelp/android/appdata/webrequests/ey;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment;->g:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-direct {v0, v1}, Lcom/yelp/android/appdata/webrequests/ey;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment;->a:Lcom/yelp/android/appdata/webrequests/ey;

    .line 131
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment;->a:Lcom/yelp/android/appdata/webrequests/ey;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/ey;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 134
    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 144
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 145
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment;->b:Lcom/yelp/android/ui/activities/search/vertical/b;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/search/vertical/b;->a(Landroid/os/Bundle;)V

    .line 146
    return-void
.end method
