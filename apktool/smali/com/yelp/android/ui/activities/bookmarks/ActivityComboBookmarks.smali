.class public Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;
.super Lcom/yelp/android/ui/activities/nearby/BusinessListComboActivity;
.source "ActivityComboBookmarks.java"

# interfaces
.implements Lcom/yelp/android/ui/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks$b;,
        Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks$SortDialogFragment;,
        Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks$a;
    }
.end annotation


# instance fields
.field private c:Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;

.field private d:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter",
            "<",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest;

.field private f:Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks$a;

.field private g:Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;

.field private h:Lcom/yelp/android/ui/activities/nearby/ComboListFragment;

.field private i:Z

.field private j:Lcom/yelp/android/ui/dialogs/e;

.field private k:I

.field private l:Z

.field private m:Z

.field private n:Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$a;

.field private final o:Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks$SortDialogFragment$a;

.field private final p:Lcom/yelp/android/appdata/webrequests/k$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/k$b",
            "<",
            "Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$a;",
            ">;"
        }
    .end annotation
.end field

.field private final q:Lcom/yelp/android/ui/panels/PanelError$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/nearby/BusinessListComboActivity;-><init>()V

    .line 401
    new-instance v0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks$4;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks$4;-><init>(Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->o:Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks$SortDialogFragment$a;

    .line 415
    new-instance v0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks$5;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks$5;-><init>(Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->p:Lcom/yelp/android/appdata/webrequests/k$b;

    .line 443
    new-instance v0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks$6;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks$6;-><init>(Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->q:Lcom/yelp/android/ui/panels/PanelError$a;

    .line 547
    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 78
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 80
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 81
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 83
    sget-object v3, Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;->DISTANCE:Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;

    iget v3, v3, Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;->description:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    const-string/jumbo v3, "titles"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 87
    const-string/jumbo v1, "business_list"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 88
    const-string/jumbo v1, "start_position"

    sget-object v2, Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;->DISTANCE:Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;

    invoke-virtual {v2}, Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 89
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;)Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->c:Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$a;)Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$a;
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->n:Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$a;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;)Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->e:Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest;

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks$a;)Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks$a;
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->f:Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks$a;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;Lcom/yelp/android/serializable/YelpBusiness;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->c(Lcom/yelp/android/serializable/YelpBusiness;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 301
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->r()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 302
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->r()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 304
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->g:Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->r()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/yelp/android/ui/map/j;

    invoke-direct {v2, p0, v3}, Lcom/yelp/android/ui/map/j;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->a(Ljava/util/List;Lcom/yelp/android/ui/map/a;)V

    .line 307
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->s()Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;

    move-result-object v0

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->r()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->a(Ljava/util/List;Z)V

    .line 308
    iput-boolean v4, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->m:Z

    .line 310
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->h:Lcom/yelp/android/ui/activities/nearby/ComboListFragment;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->h:Lcom/yelp/android/ui/activities/nearby/ComboListFragment;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->c:Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;

    iget v1, v1, Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;->description:I

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->a(Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->h:Lcom/yelp/android/ui/activities/nearby/ComboListFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setVisibility(I)V

    .line 315
    :cond_0
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->r()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 316
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->q()V

    .line 319
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->n()V

    .line 320
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;Z)Z
    .locals 0

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->l:Z

    return p1
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->p()V

    return-void
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;)Ljava/util/List;
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->r()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private c(Lcom/yelp/android/serializable/YelpBusiness;)V
    .locals 4

    .prologue
    .line 529
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->r()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 531
    iget v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->k:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->k:I

    .line 532
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->f:Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks$a;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->c:Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->r()Ljava/util/List;

    move-result-object v2

    iget v3, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->k:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks$a;->a(Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;Ljava/util/List;I)V

    .line 534
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->g:Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->r()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/yelp/android/ui/map/j;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/yelp/android/ui/map/j;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->a(Ljava/util/List;Lcom/yelp/android/ui/map/a;)V

    .line 537
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->h:Lcom/yelp/android/ui/activities/nearby/ComboListFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->k()V

    .line 539
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->s()Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;

    move-result-object v0

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->r()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->a(Ljava/util/List;Z)V

    .line 540
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->s()Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->notifyDataSetChanged()V

    .line 542
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->r()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 543
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->q()V

    .line 545
    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;)Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->g:Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;

    return-object v0
.end method

.method static synthetic e(Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;)Lcom/yelp/android/ui/activities/nearby/ComboListFragment;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->h:Lcom/yelp/android/ui/activities/nearby/ComboListFragment;

    return-object v0
.end method

.method static synthetic f(Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;)Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->d:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;

    return-object v0
.end method

.method static synthetic g(Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;)Lcom/yelp/android/ui/panels/PanelError$a;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->q:Lcom/yelp/android/ui/panels/PanelError$a;

    return-object v0
.end method

.method static synthetic h(Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;)Lcom/yelp/android/ui/panels/PanelError;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->getErrorPanel()Lcom/yelp/android/ui/panels/PanelError;

    move-result-object v0

    return-object v0
.end method

.method static synthetic i(Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;)Lcom/yelp/android/ui/dialogs/e;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->j:Lcom/yelp/android/ui/dialogs/e;

    return-object v0
.end method

.method private o()V
    .locals 2

    .prologue
    .line 111
    new-instance v0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks$1;-><init>(Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;)V

    const-string/jumbo v1, "com.yelp.android.bookmarks.remove"

    invoke-static {v1}, Lcom/yelp/android/util/ObjectDirtyEvent;->a(Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 120
    return-void
.end method

.method private p()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 267
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->clearError()V

    .line 271
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->e:Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->e:Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest;->v()Z

    move-result v0

    if-nez v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->e:Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest;->a(Z)V

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->f:Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks$a;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->c:Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks$a;->a(Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;)Landroid/util/Pair;

    move-result-object v2

    .line 277
    if-eqz v2, :cond_1

    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v3, v0, :cond_4

    .line 278
    :cond_1
    if-nez v2, :cond_3

    move v0, v1

    .line 279
    :goto_0
    new-instance v2, Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->p:Lcom/yelp/android/appdata/webrequests/k$b;

    iget-object v4, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->c:Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;

    invoke-direct {v2, v3, v4, v0}, Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest;-><init>(Lcom/yelp/android/appdata/webrequests/k$b;Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;I)V

    iput-object v2, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->e:Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest;

    .line 280
    iget-object v2, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->e:Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest;

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v2, v1}, Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest;->a([Ljava/lang/Object;)V

    .line 283
    if-nez v0, :cond_2

    .line 284
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->m()V

    .line 289
    :cond_2
    :goto_1
    return-void

    .line 278
    :cond_3
    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    .line 287
    :cond_4
    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->a(Ljava/util/List;)V

    goto :goto_1
.end method

.method private q()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 323
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->g:Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->b()Lcom/yelp/android/ui/map/YelpMap;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/map/YelpMap;->setVisibility(I)V

    .line 324
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->h:Lcom/yelp/android/ui/activities/nearby/ComboListFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setVisibility(I)V

    .line 325
    sget-object v0, Lcom/yelp/android/util/ErrorType;->NO_BOOKMARKS:Lcom/yelp/android/util/ErrorType;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->populateError(Lcom/yelp/android/util/ErrorType;)V

    .line 326
    return-void
.end method

.method private r()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            ">;"
        }
    .end annotation

    .prologue
    .line 335
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private s()Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter",
            "<",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            ">;"
        }
    .end annotation

    .prologue
    .line 345
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->a(I)Lcom/yelp/android/ui/util/w;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;

    return-object v0
.end method


# virtual methods
.method protected a(I)Lcom/yelp/android/ui/util/w;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/yelp/android/ui/util/w",
            "<",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            ">;"
        }
    .end annotation

    .prologue
    .line 235
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->d:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->d:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;

    .line 242
    :goto_0
    return-object v0

    .line 239
    :cond_0
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/yelp/android/ui/activities/nearby/BusinessListComboActivity;->a(I)Lcom/yelp/android/ui/util/w;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->d:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;

    .line 240
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->d:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;

    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->notifyDataSetChanged()V

    .line 242
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->d:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;

    goto :goto_0
.end method

.method public a(Lcom/yelp/android/ui/activities/nearby/ComboListFragment;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/ui/activities/nearby/ComboListFragment",
            "<",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 210
    invoke-virtual {p1}, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->registerForContextMenu(Landroid/view/View;)V

    .line 211
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->l()Lcom/yelp/android/ui/activities/nearby/ComboListFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->h:Lcom/yelp/android/ui/activities/nearby/ComboListFragment;

    .line 217
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->f()V

    .line 218
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->l:Z

    if-eqz v0, :cond_1

    .line 219
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->h:Lcom/yelp/android/ui/activities/nearby/ComboListFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setVisibility(I)V

    .line 220
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->h:Lcom/yelp/android/ui/activities/nearby/ComboListFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->a(Ljava/lang/Runnable;)V

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->m:Z

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->h:Lcom/yelp/android/ui/activities/nearby/ComboListFragment;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->c:Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;

    iget v1, v1, Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;->description:I

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->a(Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->h:Lcom/yelp/android/ui/activities/nearby/ComboListFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setVisibility(I)V

    goto :goto_0
.end method

.method public b()Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest;
    .locals 1

    .prologue
    .line 124
    invoke-super {p0}, Lcom/yelp/android/ui/activities/nearby/BusinessListComboActivity;->getLastCustomNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest;

    return-object v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->j()Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->g:Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;

    .line 230
    invoke-super {p0}, Lcom/yelp/android/ui/activities/nearby/BusinessListComboActivity;->c()V

    .line 231
    return-void
.end method

.method protected d()V
    .locals 1

    .prologue
    .line 263
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->BookmarksMap:Lcom/yelp/android/analytics/iris/ViewIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 264
    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    .line 292
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->j:Lcom/yelp/android/ui/dialogs/e;

    if-nez v0, :cond_0

    .line 293
    new-instance v0, Lcom/yelp/android/ui/dialogs/e;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/dialogs/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->j:Lcom/yelp/android/ui/dialogs/e;

    .line 294
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->j:Lcom/yelp/android/ui/dialogs/e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/e;->setCancelable(Z)V

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->j:Lcom/yelp/android/ui/dialogs/e;

    const v1, 0x7f0704ee

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/e;->setMessage(Ljava/lang/CharSequence;)V

    .line 297
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->j:Lcom/yelp/android/ui/dialogs/e;

    invoke-virtual {v0}, Lcom/yelp/android/ui/dialogs/e;->show()V

    .line 298
    return-void
.end method

.method public f()V
    .locals 4

    .prologue
    .line 358
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->n:Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->h:Lcom/yelp/android/ui/activities/nearby/ComboListFragment;

    if-nez v0, :cond_1

    .line 399
    :cond_0
    :goto_0
    return-void

    .line 361
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->clearError()V

    .line 362
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->f:Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks$a;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->c:Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks$a;->a(Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;)Landroid/util/Pair;

    move-result-object v1

    .line 363
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->n:Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$a;

    iget-object v2, v0, Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$a;->b:Ljava/util/ArrayList;

    .line 364
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->n:Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$a;

    iget v0, v0, Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$a;->d:I

    iput v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->k:I

    .line 365
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->n:Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$a;

    .line 368
    if-eqz v1, :cond_2

    .line 369
    const/4 v3, 0x0

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v2, v3, v0}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 372
    :cond_2
    invoke-direct {p0, v2}, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->a(Ljava/util/List;)V

    .line 379
    if-nez v1, :cond_3

    .line 380
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->h:Lcom/yelp/android/ui/activities/nearby/ComboListFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->k()V

    .line 382
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->f:Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks$a;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->c:Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;

    iget v3, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->k:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks$a;->a(Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;Ljava/util/List;I)V

    .line 386
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->k:I

    if-lt v0, v1, :cond_4

    .line 387
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->h:Lcom/yelp/android/ui/activities/nearby/ComboListFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->b(Z)V

    goto :goto_0

    .line 389
    :cond_4
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->h:Lcom/yelp/android/ui/activities/nearby/ComboListFragment;

    new-instance v1, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks$3;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks$3;-><init>(Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 258
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->Bookmarks:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getLastCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->b()Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 95
    invoke-static {}, Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;->values()[Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->f()Lcom/yelp/android/appdata/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/c;->u()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->c:Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;

    .line 98
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->b()Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->e:Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest;

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->i:Z

    .line 101
    iput-boolean v2, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->l:Z

    .line 102
    iput-boolean v2, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->m:Z

    .line 104
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->o()V

    .line 106
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/nearby/BusinessListComboActivity;->onCreate(Landroid/os/Bundle;)V

    .line 107
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 3

    .prologue
    .line 182
    instance-of v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->b:Z

    if-eqz v0, :cond_0

    .line 183
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 184
    check-cast p2, Landroid/widget/ListView;

    invoke-virtual {p2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    iget v1, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    .line 189
    if-eqz v0, :cond_0

    .line 190
    invoke-static {p0, p1, v0}, Lcom/yelp/android/ui/util/ab;->a(Landroid/content/Context;Landroid/view/ContextMenu;Lcom/yelp/android/serializable/YelpBusiness;)V

    .line 192
    const v1, 0x7f0704eb

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->add(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 193
    new-instance v2, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks$2;

    invoke-direct {v2, p0, v0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks$2;-><init>(Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;Lcom/yelp/android/serializable/YelpBusiness;)V

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 206
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 162
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/nearby/BusinessListComboActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 163
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 164
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    .line 169
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 177
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/nearby/BusinessListComboActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 171
    :pswitch_0
    new-instance v0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks$SortDialogFragment;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks$SortDialogFragment;-><init>()V

    .line 172
    iget-object v1, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->o:Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks$SortDialogFragment$a;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks$SortDialogFragment;->a(Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks$SortDialogFragment$a;)V

    .line 173
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/l;->a()Landroid/support/v4/app/o;

    move-result-object v1

    .line 174
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks$SortDialogFragment;->show(Landroid/support/v4/app/o;Ljava/lang/String;)I

    .line 175
    const/4 v0, 0x1

    goto :goto_0

    .line 169
    :pswitch_data_0
    .packed-switch 0x7f0f05f1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 155
    invoke-super {p0}, Lcom/yelp/android/ui/activities/nearby/BusinessListComboActivity;->onPause()V

    .line 156
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->y()Lcom/yelp/android/appdata/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/e;->b()V

    .line 157
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->i:Z

    .line 158
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    .prologue
    .line 461
    const/16 v0, 0xfa

    if-ne p1, v0, :cond_1

    .line 462
    invoke-static {p2, p3}, Lcom/yelp/android/appdata/k;->a([Ljava/lang/String;[I)Ljava/util/Map;

    move-result-object v0

    .line 464
    sget-object v1, Lcom/yelp/android/appdata/PermissionGroup;->LOCATION:Lcom/yelp/android/appdata/PermissionGroup;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/yelp/android/appdata/PermissionGroup;->LOCATION:Lcom/yelp/android/appdata/PermissionGroup;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 466
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->F()V

    .line 467
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->p_()V

    .line 472
    :cond_0
    :goto_0
    return-void

    .line 470
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/nearby/BusinessListComboActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 134
    invoke-super {p0}, Lcom/yelp/android/ui/activities/nearby/BusinessListComboActivity;->onResume()V

    .line 138
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->e:Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->e:Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->m()V

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->e:Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->e:Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    :cond_2
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->i:Z

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->p_()V

    goto :goto_0
.end method

.method public onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->e:Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest;

    return-object v0
.end method

.method public p_()V
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->g:Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->g:Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->b()Lcom/yelp/android/ui/map/YelpMap;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/map/YelpMap;->setVisibility(I)V

    .line 250
    :cond_0
    new-instance v0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks$a;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks$a;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->f:Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks$a;

    .line 251
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->r()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 252
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->s()Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->notifyDataSetChanged()V

    .line 253
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->p()V

    .line 254
    return-void
.end method
