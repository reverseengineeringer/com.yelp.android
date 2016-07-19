.class public Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;
.super Lcom/yelp/android/ui/util/YelpListActivity;
.source "ActivityUserDraftList.java"


# instance fields
.field private a:Lcom/yelp/android/ui/activities/profile/c;

.field private b:Lcom/yelp/android/appdata/webrequests/fe;

.field private c:Lcom/yelp/android/appdata/webrequests/du;

.field private d:Lcom/yelp/android/serializable/ReviewDraft;

.field private final e:Landroid/content/DialogInterface$OnClickListener;

.field private final f:Lcom/yelp/android/appdata/webrequests/core/c$a;

.field private final g:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/ReviewDraft;",
            ">;>;"
        }
    .end annotation
.end field

.field private final h:Lcom/yelp/android/ui/panels/PanelError$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/yelp/android/ui/util/YelpListActivity;-><init>()V

    .line 215
    new-instance v0, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList$3;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList$3;-><init>(Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;->e:Landroid/content/DialogInterface$OnClickListener;

    .line 230
    new-instance v0, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList$4;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList$4;-><init>(Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;->f:Lcom/yelp/android/appdata/webrequests/core/c$a;

    .line 254
    new-instance v0, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList$5;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList$5;-><init>(Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;->g:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    .line 287
    new-instance v0, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList$6;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList$6;-><init>(Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;->h:Lcom/yelp/android/ui/panels/PanelError$a;

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 63
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;Lcom/yelp/android/appdata/webrequests/du;)Lcom/yelp/android/appdata/webrequests/du;
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;->c:Lcom/yelp/android/appdata/webrequests/du;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;Lcom/yelp/android/serializable/ReviewDraft;)Lcom/yelp/android/serializable/ReviewDraft;
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;->d:Lcom/yelp/android/serializable/ReviewDraft;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;)Lcom/yelp/android/ui/activities/profile/c;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;->a:Lcom/yelp/android/ui/activities/profile/c;

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;->e:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 212
    sget-object v0, Lcom/yelp/android/util/ErrorType;->NO_DRAFTS:Lcom/yelp/android/util/ErrorType;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;->h:Lcom/yelp/android/ui/panels/PanelError$a;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;->populateError(Lcom/yelp/android/util/ErrorType;Lcom/yelp/android/ui/panels/PanelError$a;)V

    .line 213
    return-void
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;)Lcom/yelp/android/serializable/ReviewDraft;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;->d:Lcom/yelp/android/serializable/ReviewDraft;

    return-object v0
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;)Lcom/yelp/android/appdata/webrequests/core/c$a;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;->f:Lcom/yelp/android/appdata/webrequests/core/c$a;

    return-object v0
.end method

.method static synthetic e(Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;)Lcom/yelp/android/appdata/webrequests/du;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;->c:Lcom/yelp/android/appdata/webrequests/du;

    return-object v0
.end method

.method static synthetic f(Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;->b()V

    return-void
.end method


# virtual methods
.method public a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 3

    .prologue
    .line 191
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/ReviewDraft;

    .line 192
    invoke-virtual {v0}, Lcom/yelp/android/serializable/ReviewDraft;->g()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/ui/activities/reviews/ReviewState;->DRAFTED:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    sget-object v2, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->ProfileReviewDrafts:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    invoke-static {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->a(Landroid/content/Context;Ljava/lang/String;Lcom/yelp/android/ui/activities/reviews/ReviewState;Lcom/yelp/android/ui/activities/reviews/ReviewSource;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;->startActivity(Landroid/content/Intent;)V

    .line 198
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/ReviewDraft;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 201
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;->a:Lcom/yelp/android/ui/activities/profile/c;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/profile/c;->a(Ljava/util/Collection;)V

    .line 202
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;->a:Lcom/yelp/android/ui/activities/profile/c;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/profile/c;->getCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;->c(I)V

    .line 203
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;->a:Lcom/yelp/android/ui/activities/profile/c;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/profile/c;->notifyDataSetChanged()V

    .line 204
    return-void
.end method

.method protected c()V
    .locals 4

    .prologue
    .line 139
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;->b:Lcom/yelp/android/appdata/webrequests/fe;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;->b:Lcom/yelp/android/appdata/webrequests/fe;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/fe;->u()Z

    move-result v0

    if-nez v0, :cond_1

    .line 140
    :cond_0
    new-instance v0, Lcom/yelp/android/appdata/webrequests/fe;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;->g:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;->s_()I

    move-result v2

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;->s()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/appdata/webrequests/fe;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;II)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;->b:Lcom/yelp/android/appdata/webrequests/fe;

    .line 141
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;->b:Lcom/yelp/android/appdata/webrequests/fe;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/fe;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 143
    :cond_1
    return-void
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 125
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->ProfileDrafts:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 186
    const v0, 0x7f0703f3

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    new-instance v0, Lcom/yelp/android/ui/activities/profile/c;

    invoke-static {p0}, Lcom/yelp/android/ui/util/t;->a(Landroid/content/Context;)Lcom/yelp/android/ui/util/t;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yelp/android/ui/activities/profile/c;-><init>(Lcom/yelp/android/ui/util/t;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;->a:Lcom/yelp/android/ui/activities/profile/c;

    .line 70
    if-eqz p1, :cond_0

    .line 71
    const-string/jumbo v0, "draft_list"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 73
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;->a(Ljava/util/List;)V

    .line 74
    const-string/jumbo v0, "draft_to_delete"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/ReviewDraft;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;->d:Lcom/yelp/android/serializable/ReviewDraft;

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;->a:Lcom/yelp/android/ui/activities/profile/c;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 77
    const v0, 0x7f0703f2

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;->setTitle(I)V

    .line 78
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;->registerForContextMenu(Landroid/view/View;)V

    .line 79
    const-string/jumbo v0, "com.yelp.android.review.state.update"

    new-instance v1, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList$1;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList$1;-><init>(Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;)V

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;->registerDirtyEventReceiver(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 100
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    const-string/jumbo v1, "delete_draft_confirmation"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/l;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/dialogs/TwoButtonDialog;

    .line 104
    if-eqz v0, :cond_1

    .line 105
    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;->e:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/TwoButtonDialog;->a(Landroid/content/DialogInterface$OnClickListener;)V

    .line 107
    :cond_1
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 5

    .prologue
    .line 147
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/util/YelpListActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 149
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 150
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    iget v1, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/ReviewDraft;

    .line 152
    invoke-virtual {v0}, Lcom/yelp/android/serializable/ReviewDraft;->f()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 154
    const v1, 0x7f070403

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->add(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 155
    invoke-virtual {v0}, Lcom/yelp/android/serializable/ReviewDraft;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 157
    const v1, 0x7f0702d4

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->add(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 158
    invoke-virtual {v0}, Lcom/yelp/android/serializable/ReviewDraft;->g()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/yelp/android/ui/activities/reviews/ReviewState;->DRAFTED:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    sget-object v4, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->ProfileReviewDrafts:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    invoke-static {p0, v2, v3, v4}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->a(Landroid/content/Context;Ljava/lang/String;Lcom/yelp/android/ui/activities/reviews/ReviewState;Lcom/yelp/android/ui/activities/reviews/ReviewSource;)Landroid/content/Intent;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 165
    const v1, 0x7f070243

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    .line 166
    new-instance v2, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList$2;

    invoke-direct {v2, p0, v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList$2;-><init>(Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;Lcom/yelp/android/serializable/ReviewDraft;)V

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 182
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 118
    invoke-super {p0}, Lcom/yelp/android/ui/util/YelpListActivity;->onPause()V

    .line 119
    const-string/jumbo v0, "drafts"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;->b:Lcom/yelp/android/appdata/webrequests/fe;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;->freezeRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 120
    const-string/jumbo v0, "delete_drafts"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;->c:Lcom/yelp/android/appdata/webrequests/du;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;->freezeRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 121
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 111
    invoke-super {p0}, Lcom/yelp/android/ui/util/YelpListActivity;->onResume()V

    .line 112
    const-string/jumbo v0, "drafts"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;->b:Lcom/yelp/android/appdata/webrequests/fe;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;->g:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;->thawRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 113
    const-string/jumbo v0, "delete_drafts"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;->c:Lcom/yelp/android/appdata/webrequests/du;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;->f:Lcom/yelp/android/appdata/webrequests/core/c$a;

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;->thawRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 114
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 130
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 131
    const-string/jumbo v0, "draft_list"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;->a:Lcom/yelp/android/ui/activities/profile/c;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/profile/c;->b()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 132
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;->d:Lcom/yelp/android/serializable/ReviewDraft;

    if-eqz v0, :cond_0

    .line 133
    const-string/jumbo v0, "draft_to_delete"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;->d:Lcom/yelp/android/serializable/ReviewDraft;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 135
    :cond_0
    return-void
.end method
