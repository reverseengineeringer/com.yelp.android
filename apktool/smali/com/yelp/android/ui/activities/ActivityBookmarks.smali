.class public Lcom/yelp/android/ui/activities/ActivityBookmarks;
.super Lcom/yelp/android/ui/activities/nearby/BusinessListComboActivity;
.source "ActivityBookmarks.java"

# interfaces
.implements Lcom/yelp/android/ui/p;


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

.field private f:Lcom/yelp/android/ui/activities/n;

.field private g:Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;

.field private h:Lcom/yelp/android/ui/activities/nearby/ComboListFragment;

.field private i:Z

.field private j:Lcom/yelp/android/ui/dialogs/bn;

.field private k:I

.field private l:Z

.field private m:Z

.field private n:Lcom/yelp/android/appdata/webrequests/cs;

.field private final o:Lcom/yelp/android/ui/activities/q;

.field private final p:Lcom/yelp/android/appdata/webrequests/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/j",
            "<",
            "Lcom/yelp/android/appdata/webrequests/cs;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/nearby/BusinessListComboActivity;-><init>()V

    .line 384
    new-instance v0, Lcom/yelp/android/ui/activities/l;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/l;-><init>(Lcom/yelp/android/ui/activities/ActivityBookmarks;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityBookmarks;->o:Lcom/yelp/android/ui/activities/q;

    .line 397
    new-instance v0, Lcom/yelp/android/ui/activities/m;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/m;-><init>(Lcom/yelp/android/ui/activities/ActivityBookmarks;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityBookmarks;->p:Lcom/yelp/android/appdata/webrequests/j;

    .line 491
    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 68
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/ActivityBookmarks;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 70
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 71
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 73
    sget-object v3, Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;->DISTANCE:Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;

    iget v3, v3, Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;->description:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    const-string/jumbo v3, "titles"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 77
    const-string/jumbo v1, "business_list"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 78
    const-string/jumbo v1, "start_position"

    sget-object v2, Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;->DISTANCE:Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;

    invoke-virtual {v2}, Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 79
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/ActivityBookmarks;Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;)Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/yelp/android/ui/activities/ActivityBookmarks;->c:Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/ActivityBookmarks;)Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityBookmarks;->e:Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest;

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/ActivityBookmarks;Lcom/yelp/android/appdata/webrequests/cs;)Lcom/yelp/android/appdata/webrequests/cs;
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/yelp/android/ui/activities/ActivityBookmarks;->n:Lcom/yelp/android/appdata/webrequests/cs;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/ActivityBookmarks;Lcom/yelp/android/ui/activities/n;)Lcom/yelp/android/ui/activities/n;
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/yelp/android/ui/activities/ActivityBookmarks;->f:Lcom/yelp/android/ui/activities/n;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/ActivityBookmarks;Lcom/yelp/android/serializable/YelpBusiness;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/ActivityBookmarks;->c(Lcom/yelp/android/serializable/YelpBusiness;)V

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

    .line 286
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityBookmarks;->r()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 287
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityBookmarks;->r()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 289
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityBookmarks;->g:Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityBookmarks;->r()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/yelp/android/ui/map/k;

    invoke-direct {v2, p0, v3}, Lcom/yelp/android/ui/map/k;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->a(Ljava/util/List;Lcom/yelp/android/ui/map/a;)V

    .line 291
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityBookmarks;->s()Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;

    move-result-object v0

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityBookmarks;->r()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->a(Ljava/util/List;Z)V

    .line 292
    iput-boolean v4, p0, Lcom/yelp/android/ui/activities/ActivityBookmarks;->m:Z

    .line 294
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityBookmarks;->h:Lcom/yelp/android/ui/activities/nearby/ComboListFragment;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityBookmarks;->h:Lcom/yelp/android/ui/activities/nearby/ComboListFragment;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityBookmarks;->c:Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;

    iget v1, v1, Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;->description:I

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/ActivityBookmarks;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->a(Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityBookmarks;->h:Lcom/yelp/android/ui/activities/nearby/ComboListFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setVisibility(I)V

    .line 299
    :cond_0
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityBookmarks;->r()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 300
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityBookmarks;->q()V

    .line 303
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityBookmarks;->n()V

    .line 304
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/ActivityBookmarks;Z)Z
    .locals 0

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/ActivityBookmarks;->l:Z

    return p1
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/ActivityBookmarks;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityBookmarks;->p()V

    return-void
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/ActivityBookmarks;)Ljava/util/List;
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityBookmarks;->r()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private c(Lcom/yelp/android/serializable/YelpBusiness;)V
    .locals 4

    .prologue
    .line 473
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityBookmarks;->r()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 475
    iget v0, p0, Lcom/yelp/android/ui/activities/ActivityBookmarks;->k:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/yelp/android/ui/activities/ActivityBookmarks;->k:I

    .line 476
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityBookmarks;->f:Lcom/yelp/android/ui/activities/n;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityBookmarks;->c:Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityBookmarks;->r()Ljava/util/List;

    move-result-object v2

    iget v3, p0, Lcom/yelp/android/ui/activities/ActivityBookmarks;->k:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/n;->a(Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;Ljava/util/List;I)V

    .line 478
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityBookmarks;->g:Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityBookmarks;->r()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/yelp/android/ui/map/k;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/yelp/android/ui/map/k;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->a(Ljava/util/List;Lcom/yelp/android/ui/map/a;)V

    .line 481
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityBookmarks;->h:Lcom/yelp/android/ui/activities/nearby/ComboListFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->l_()V

    .line 483
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityBookmarks;->s()Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;

    move-result-object v0

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityBookmarks;->r()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->a(Ljava/util/List;Z)V

    .line 484
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityBookmarks;->s()Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->notifyDataSetChanged()V

    .line 486
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityBookmarks;->r()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 487
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityBookmarks;->q()V

    .line 489
    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/ActivityBookmarks;)Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityBookmarks;->g:Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;

    return-object v0
.end method

.method static synthetic e(Lcom/yelp/android/ui/activities/ActivityBookmarks;)Lcom/yelp/android/ui/activities/nearby/ComboListFragment;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityBookmarks;->h:Lcom/yelp/android/ui/activities/nearby/ComboListFragment;

    return-object v0
.end method

.method static synthetic f(Lcom/yelp/android/ui/activities/ActivityBookmarks;)Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityBookmarks;->d:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;

    return-object v0
.end method

.method static synthetic g(Lcom/yelp/android/ui/activities/ActivityBookmarks;)Lcom/yelp/android/ui/dialogs/bn;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityBookmarks;->j:Lcom/yelp/android/ui/dialogs/bn;

    return-object v0
.end method

.method private o()V
    .locals 2

    .prologue
    .line 100
    new-instance v0, Lcom/yelp/android/ui/activities/i;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/i;-><init>(Lcom/yelp/android/ui/activities/ActivityBookmarks;)V

    const-string/jumbo v1, "com.yelp.android.bookmarks.remove"

    invoke-static {v1}, Lcom/yelp/android/util/ObjectDirtyEvent;->a(Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/ActivityBookmarks;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 108
    return-void
.end method

.method private p()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 252
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityBookmarks;->clearError()V

    .line 256
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityBookmarks;->e:Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityBookmarks;->e:Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest;->isCompleted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityBookmarks;->e:Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest;->cancel(Z)V

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityBookmarks;->f:Lcom/yelp/android/ui/activities/n;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityBookmarks;->c:Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/activities/n;->a(Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;)Landroid/util/Pair;

    move-result-object v2

    .line 262
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

    .line 263
    :cond_1
    if-nez v2, :cond_3

    move v0, v1

    .line 264
    :goto_0
    new-instance v2, Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/ActivityBookmarks;->p:Lcom/yelp/android/appdata/webrequests/j;

    iget-object v4, p0, Lcom/yelp/android/ui/activities/ActivityBookmarks;->c:Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;

    invoke-direct {v2, v3, v4, v0}, Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest;-><init>(Lcom/yelp/android/appdata/webrequests/j;Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;I)V

    iput-object v2, p0, Lcom/yelp/android/ui/activities/ActivityBookmarks;->e:Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest;

    .line 265
    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityBookmarks;->e:Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest;

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v2, v1}, Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest;->executeWithLocation([Ljava/lang/Object;)V

    .line 268
    if-nez v0, :cond_2

    .line 269
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityBookmarks;->m()V

    .line 274
    :cond_2
    :goto_1
    return-void

    .line 263
    :cond_3
    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    .line 272
    :cond_4
    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/ActivityBookmarks;->a(Ljava/util/List;)V

    goto :goto_1
.end method

.method private q()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 307
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityBookmarks;->g:Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->b()Lcom/yelp/android/ui/map/YelpMap;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/map/YelpMap;->setVisibility(I)V

    .line 308
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityBookmarks;->h:Lcom/yelp/android/ui/activities/nearby/ComboListFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setVisibility(I)V

    .line 309
    sget-object v0, Lcom/yelp/android/util/ErrorType;->NO_BOOKMARKS:Lcom/yelp/android/util/ErrorType;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityBookmarks;->populateError(Lcom/yelp/android/util/ErrorType;)V

    .line 310
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
    .line 319
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityBookmarks;->a:Ljava/util/ArrayList;

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
    .line 329
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityBookmarks;->a(I)Lcom/yelp/android/ui/util/au;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;

    return-object v0
.end method


# virtual methods
.method protected a(I)Lcom/yelp/android/ui/util/au;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/yelp/android/ui/util/au",
            "<",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            ">;"
        }
    .end annotation

    .prologue
    .line 220
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityBookmarks;->d:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityBookmarks;->d:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;

    .line 227
    :goto_0
    return-object v0

    .line 224
    :cond_0
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/yelp/android/ui/activities/nearby/BusinessListComboActivity;->a(I)Lcom/yelp/android/ui/util/au;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityBookmarks;->d:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;

    .line 225
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityBookmarks;->d:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;

    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->notifyDataSetChanged()V

    .line 227
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityBookmarks;->d:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;

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
    .line 195
    invoke-virtual {p1}, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityBookmarks;->registerForContextMenu(Landroid/view/View;)V

    .line 196
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityBookmarks;->l()Lcom/yelp/android/ui/activities/nearby/ComboListFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityBookmarks;->h:Lcom/yelp/android/ui/activities/nearby/ComboListFragment;

    .line 202
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityBookmarks;->f()V

    .line 203
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/ActivityBookmarks;->l:Z

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityBookmarks;->h:Lcom/yelp/android/ui/activities/nearby/ComboListFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setVisibility(I)V

    .line 205
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityBookmarks;->h:Lcom/yelp/android/ui/activities/nearby/ComboListFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->a(Ljava/lang/Runnable;)V

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/ActivityBookmarks;->m:Z

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityBookmarks;->h:Lcom/yelp/android/ui/activities/nearby/ComboListFragment;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityBookmarks;->c:Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;

    iget v1, v1, Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;->description:I

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/ActivityBookmarks;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->a(Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityBookmarks;->h:Lcom/yelp/android/ui/activities/nearby/ComboListFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setVisibility(I)V

    goto :goto_0
.end method

.method public a_()V
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityBookmarks;->g:Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityBookmarks;->g:Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->b()Lcom/yelp/android/ui/map/YelpMap;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/map/YelpMap;->setVisibility(I)V

    .line 235
    :cond_0
    new-instance v0, Lcom/yelp/android/ui/activities/n;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/n;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityBookmarks;->f:Lcom/yelp/android/ui/activities/n;

    .line 236
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityBookmarks;->r()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 237
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityBookmarks;->s()Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->notifyDataSetChanged()V

    .line 238
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityBookmarks;->p()V

    .line 239
    return-void
.end method

.method public b()Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest;
    .locals 1

    .prologue
    .line 112
    invoke-super {p0}, Lcom/yelp/android/ui/activities/nearby/BusinessListComboActivity;->getLastCustomNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest;

    return-object v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityBookmarks;->j()Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityBookmarks;->g:Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;

    .line 215
    invoke-super {p0}, Lcom/yelp/android/ui/activities/nearby/BusinessListComboActivity;->c()V

    .line 216
    return-void
.end method

.method protected d()V
    .locals 1

    .prologue
    .line 248
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->BookmarksMap:Lcom/yelp/android/analytics/iris/ViewIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;)V

    .line 249
    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    .line 277
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityBookmarks;->j:Lcom/yelp/android/ui/dialogs/bn;

    if-nez v0, :cond_0

    .line 278
    new-instance v0, Lcom/yelp/android/ui/dialogs/bn;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/dialogs/bn;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityBookmarks;->j:Lcom/yelp/android/ui/dialogs/bn;

    .line 279
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityBookmarks;->j:Lcom/yelp/android/ui/dialogs/bn;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/bn;->setCancelable(Z)V

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityBookmarks;->j:Lcom/yelp/android/ui/dialogs/bn;

    const v1, 0x7f0704ec

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/ActivityBookmarks;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/bn;->setMessage(Ljava/lang/CharSequence;)V

    .line 282
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityBookmarks;->j:Lcom/yelp/android/ui/dialogs/bn;

    invoke-virtual {v0}, Lcom/yelp/android/ui/dialogs/bn;->show()V

    .line 283
    return-void
.end method

.method public f()V
    .locals 4

    .prologue
    .line 342
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityBookmarks;->n:Lcom/yelp/android/appdata/webrequests/cs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityBookmarks;->h:Lcom/yelp/android/ui/activities/nearby/ComboListFragment;

    if-nez v0, :cond_1

    .line 382
    :cond_0
    :goto_0
    return-void

    .line 345
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityBookmarks;->clearError()V

    .line 346
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityBookmarks;->f:Lcom/yelp/android/ui/activities/n;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityBookmarks;->c:Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/n;->a(Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;)Landroid/util/Pair;

    move-result-object v1

    .line 347
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityBookmarks;->n:Lcom/yelp/android/appdata/webrequests/cs;

    iget-object v2, v0, Lcom/yelp/android/appdata/webrequests/cs;->b:Ljava/util/ArrayList;

    .line 348
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityBookmarks;->n:Lcom/yelp/android/appdata/webrequests/cs;

    iget v0, v0, Lcom/yelp/android/appdata/webrequests/cs;->d:I

    iput v0, p0, Lcom/yelp/android/ui/activities/ActivityBookmarks;->k:I

    .line 349
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityBookmarks;->n:Lcom/yelp/android/appdata/webrequests/cs;

    .line 352
    if-eqz v1, :cond_2

    .line 353
    const/4 v3, 0x0

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v2, v3, v0}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 356
    :cond_2
    invoke-direct {p0, v2}, Lcom/yelp/android/ui/activities/ActivityBookmarks;->a(Ljava/util/List;)V

    .line 363
    if-nez v1, :cond_3

    .line 364
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityBookmarks;->h:Lcom/yelp/android/ui/activities/nearby/ComboListFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->l_()V

    .line 366
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityBookmarks;->f:Lcom/yelp/android/ui/activities/n;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityBookmarks;->c:Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;

    iget v3, p0, Lcom/yelp/android/ui/activities/ActivityBookmarks;->k:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/n;->a(Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;Ljava/util/List;I)V

    .line 370
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/yelp/android/ui/activities/ActivityBookmarks;->k:I

    if-lt v0, v1, :cond_4

    .line 371
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityBookmarks;->h:Lcom/yelp/android/ui/activities/nearby/ComboListFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->a(Z)V

    goto :goto_0

    .line 373
    :cond_4
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityBookmarks;->h:Lcom/yelp/android/ui/activities/nearby/ComboListFragment;

    new-instance v1, Lcom/yelp/android/ui/activities/k;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/k;-><init>(Lcom/yelp/android/ui/activities/ActivityBookmarks;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 243
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->Bookmarks:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityBookmarks;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getLastCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityBookmarks;->b()Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 85
    invoke-static {}, Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;->values()[Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityBookmarks;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->f()Lcom/yelp/android/appdata/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/i;->p()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityBookmarks;->c:Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;

    .line 87
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityBookmarks;->b()Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityBookmarks;->e:Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest;

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/ActivityBookmarks;->i:Z

    .line 90
    iput-boolean v2, p0, Lcom/yelp/android/ui/activities/ActivityBookmarks;->l:Z

    .line 91
    iput-boolean v2, p0, Lcom/yelp/android/ui/activities/ActivityBookmarks;->m:Z

    .line 93
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityBookmarks;->o()V

    .line 95
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/nearby/BusinessListComboActivity;->onCreate(Landroid/os/Bundle;)V

    .line 96
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 3

    .prologue
    .line 170
    instance-of v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/ActivityBookmarks;->b:Z

    if-eqz v0, :cond_0

    .line 171
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 172
    check-cast p2, Landroid/widget/ListView;

    invoke-virtual {p2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    iget v1, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    .line 177
    if-eqz v0, :cond_0

    .line 178
    invoke-static {p0, p1, v0}, Lcom/yelp/android/ui/util/bf;->a(Landroid/content/Context;Landroid/view/ContextMenu;Lcom/yelp/android/serializable/YelpBusiness;)V

    .line 180
    const v1, 0x7f0704d1

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->add(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 181
    new-instance v2, Lcom/yelp/android/ui/activities/j;

    invoke-direct {v2, p0, v0}, Lcom/yelp/android/ui/activities/j;-><init>(Lcom/yelp/android/ui/activities/ActivityBookmarks;Lcom/yelp/android/serializable/YelpBusiness;)V

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 191
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 150
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/nearby/BusinessListComboActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 151
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityBookmarks;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 152
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    .line 157
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 165
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/nearby/BusinessListComboActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 159
    :pswitch_0
    new-instance v0, Lcom/yelp/android/ui/activities/ActivityBookmarks$SortDialogFragment;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/ActivityBookmarks$SortDialogFragment;-><init>()V

    .line 160
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityBookmarks;->o:Lcom/yelp/android/ui/activities/q;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/ActivityBookmarks$SortDialogFragment;->a(Lcom/yelp/android/ui/activities/q;)V

    .line 161
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityBookmarks;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 162
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/ActivityBookmarks$SortDialogFragment;->show(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;)I

    .line 163
    const/4 v0, 0x1

    goto :goto_0

    .line 157
    :pswitch_data_0
    .packed-switch 0x7f0c04e7
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 143
    invoke-super {p0}, Lcom/yelp/android/ui/activities/nearby/BusinessListComboActivity;->onPause()V

    .line 144
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityBookmarks;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->t()Lcom/yelp/android/appdata/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/k;->b()V

    .line 145
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/ActivityBookmarks;->i:Z

    .line 146
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 122
    invoke-super {p0}, Lcom/yelp/android/ui/activities/nearby/BusinessListComboActivity;->onResume()V

    .line 126
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityBookmarks;->e:Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityBookmarks;->e:Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest;->isFetching()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityBookmarks;->m()V

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityBookmarks;->e:Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityBookmarks;->e:Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    :cond_2
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/ActivityBookmarks;->i:Z

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityBookmarks;->a_()V

    goto :goto_0
.end method

.method public onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityBookmarks;->e:Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest;

    return-object v0
.end method
