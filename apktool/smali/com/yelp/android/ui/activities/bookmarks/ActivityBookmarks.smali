.class public Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "ActivityBookmarks.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$3;,
        Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$b;,
        Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$a;,
        Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$SortDialogFragment;
    }
.end annotation


# instance fields
.field private final A:Landroid/view/View$OnFocusChangeListener;

.field private final B:Landroid/widget/AdapterView$OnItemClickListener;

.field private C:Landroid/widget/TextView$OnEditorActionListener;

.field private a:Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;

.field private b:Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest;

.field private e:Lcom/yelp/android/appdata/webrequests/s;

.field private f:Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$a;

.field private g:I

.field private h:Z

.field private i:Z

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Z

.field private m:Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$a;

.field private n:Lcom/yelp/android/ui/util/af;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/ui/util/af",
            "<",
            "Lcom/yelp/android/serializable/RichSearchSuggestion;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lcom/yelp/android/ui/activities/search/a;

.field private p:Landroid/widget/LinearLayout;

.field private q:Landroid/widget/TextView;

.field private r:Lcom/yelp/android/ui/widgets/EditTextAndClearButton;

.field private s:Landroid/view/ViewGroup;

.field private t:Lcom/yelp/android/ui/activities/bookmarks/BookmarksListFragment;

.field private u:Lcom/yelp/android/ui/activities/bookmarks/BookmarksMapFragment;

.field private v:Lcom/yelp/android/ui/activities/bookmarks/BookmarksSuggestFragment;

.field private w:Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$b;

.field private final x:Lcom/yelp/android/appdata/webrequests/k$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/k$b",
            "<",
            "Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$a;",
            ">;"
        }
    .end annotation
.end field

.field private final y:Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$SortDialogFragment$a;

.field private final z:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    .line 537
    new-instance v0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$7;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$7;-><init>(Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->x:Lcom/yelp/android/appdata/webrequests/k$b;

    .line 560
    new-instance v0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$8;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$8;-><init>(Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->y:Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$SortDialogFragment$a;

    .line 580
    new-instance v0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$9;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$9;-><init>(Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->z:Landroid/text/TextWatcher;

    .line 601
    new-instance v0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$10;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$10;-><init>(Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->A:Landroid/view/View$OnFocusChangeListener;

    .line 624
    new-instance v0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$11;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$11;-><init>(Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->B:Landroid/widget/AdapterView$OnItemClickListener;

    .line 656
    new-instance v0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$2;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$2;-><init>(Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->C:Landroid/widget/TextView$OnEditorActionListener;

    .line 700
    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 103
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;)Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->a:Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$a;)Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$a;
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->m:Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$a;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->j:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic a(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 67
    invoke-static {p0, p1}, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->b(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;)V
    .locals 0

    .prologue
    .line 67
    invoke-static {p0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->b(Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;)V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 67
    invoke-static {p0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 4
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
    const/4 v1, 0x0

    .line 488
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 489
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 491
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->j:Ljava/lang/String;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->k:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->a:Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->b:Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;

    invoke-virtual {v0, v2}, Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    const/4 v0, 0x1

    .line 493
    :goto_0
    iget-object v2, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->j:Ljava/lang/String;

    iput-object v2, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->k:Ljava/lang/String;

    .line 494
    iget-object v2, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->a:Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;

    iput-object v2, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->b:Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;

    .line 496
    iget-object v2, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->w:Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$b;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->c:Ljava/util/ArrayList;

    invoke-interface {v2, v3}, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$b;->a(Ljava/util/ArrayList;)V

    .line 498
    iget-object v2, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->w:Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$b;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->t:Lcom/yelp/android/ui/activities/bookmarks/BookmarksListFragment;

    if-ne v2, v3, :cond_1

    if-eqz v0, :cond_1

    .line 500
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->t:Lcom/yelp/android/ui/activities/bookmarks/BookmarksListFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/bookmarks/BookmarksListFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->b(Z)V

    .line 503
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 504
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->h()V

    .line 507
    :cond_2
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->disableLoading()V

    .line 508
    return-void

    :cond_3
    move v0, v1

    .line 491
    goto :goto_0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;Z)Z
    .locals 0

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->l:Z

    return p1
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;)I
    .locals 2

    .prologue
    .line 67
    iget v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->g:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->g:I

    return v0
.end method

.method private static b(ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 527
    new-instance v0, Lcom/yelp/android/g/a;

    invoke-direct {v0}, Lcom/yelp/android/g/a;-><init>()V

    .line 528
    const-string/jumbo v1, "suggestion_list_index"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    const-string/jumbo v1, "suggestion_type"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->BookmarksSearchSuggest:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v1, v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 531
    return-void
.end method

.method private static b(Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;)V
    .locals 1

    .prologue
    .line 517
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;->ALPHABETICAL:Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;

    if-ne p0, v0, :cond_1

    .line 518
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BookmarksSortAlpha:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 524
    :cond_0
    :goto_0
    return-void

    .line 519
    :cond_1
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;->CHRONOLOGICAL:Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;

    if-ne p0, v0, :cond_2

    .line 520
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BookmarksSortDate:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    goto :goto_0

    .line 521
    :cond_2
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;->DISTANCE:Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;

    if-ne p0, v0, :cond_0

    .line 522
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BookmarksSortDistance:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 534
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BookmarksSearchSearch:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v1, "term"

    invoke-static {v0, v1, p0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/lang/String;Ljava/lang/Object;)V

    .line 535
    return-void
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;)Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->a:Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;

    return-object v0
.end method

.method private c()V
    .locals 4

    .prologue
    .line 321
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    const-string/jumbo v1, "map_fragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/l;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/bookmarks/BookmarksMapFragment;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->u:Lcom/yelp/android/ui/activities/bookmarks/BookmarksMapFragment;

    .line 324
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->u:Lcom/yelp/android/ui/activities/bookmarks/BookmarksMapFragment;

    if-nez v0, :cond_0

    .line 325
    invoke-static {}, Lcom/yelp/android/ui/activities/bookmarks/BookmarksMapFragment;->b()Lcom/yelp/android/ui/activities/bookmarks/BookmarksMapFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->u:Lcom/yelp/android/ui/activities/bookmarks/BookmarksMapFragment;

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->u:Lcom/yelp/android/ui/activities/bookmarks/BookmarksMapFragment;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/bookmarks/BookmarksMapFragment;->a(Ljava/util/ArrayList;)V

    .line 330
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->u:Lcom/yelp/android/ui/activities/bookmarks/BookmarksMapFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/bookmarks/BookmarksMapFragment;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 331
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/l;->a()Landroid/support/v4/app/o;

    move-result-object v0

    const v1, 0x7f0f00fc

    iget-object v2, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->u:Lcom/yelp/android/ui/activities/bookmarks/BookmarksMapFragment;

    const-string/jumbo v3, "map_fragment"

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/o;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/o;

    move-result-object v0

    const-string/jumbo v1, "list_fragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/o;->a(Ljava/lang/String;)Landroid/support/v4/app/o;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/o;->a()I

    .line 339
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->p:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 340
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->u:Lcom/yelp/android/ui/activities/bookmarks/BookmarksMapFragment;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->w:Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$b;

    .line 341
    return-void
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->j:Ljava/lang/String;

    return-object v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 344
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/l;->a()Landroid/support/v4/app/o;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->u:Lcom/yelp/android/ui/activities/bookmarks/BookmarksMapFragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/o;->a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/o;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/o;->a()I

    .line 345
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/l;->c()V

    .line 347
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->t:Lcom/yelp/android/ui/activities/bookmarks/BookmarksListFragment;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->w:Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$b;

    .line 349
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->f()V

    .line 350
    return-void
.end method

.method static synthetic e(Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;)I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->g:I

    return v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 353
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/l;->a()Landroid/support/v4/app/o;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->v:Lcom/yelp/android/ui/activities/bookmarks/BookmarksSuggestFragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/o;->a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/o;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/o;->a()I

    .line 354
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/l;->c()V

    .line 356
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->f()V

    .line 358
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->r:Lcom/yelp/android/ui/widgets/EditTextAndClearButton;

    const v1, 0x7f07052f

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/EditTextAndClearButton;->setHint(I)V

    .line 359
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->r:Lcom/yelp/android/ui/widgets/EditTextAndClearButton;

    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/EditTextAndClearButton;->clearFocus()V

    .line 360
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->r:Lcom/yelp/android/ui/widgets/EditTextAndClearButton;

    invoke-static {v0}, Lcom/yelp/android/ui/util/as;->b(Landroid/view/View;)V

    .line 361
    return-void
.end method

.method static synthetic f(Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;)Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$a;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->f:Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$a;

    return-object v0
.end method

.method private f()V
    .locals 3

    .prologue
    .line 365
    iget-object v1, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->p:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->w:Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$b;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->t:Lcom/yelp/android/ui/activities/bookmarks/BookmarksListFragment;

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 367
    return-void

    .line 365
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method static synthetic g(Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;)Lcom/yelp/android/ui/activities/bookmarks/BookmarksMapFragment;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->u:Lcom/yelp/android/ui/activities/bookmarks/BookmarksMapFragment;

    return-object v0
.end method

.method private g()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 417
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->clearError()V

    .line 421
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->d:Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->d:Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest;->v()Z

    move-result v0

    if-nez v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->d:Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest;->a(Z)V

    .line 425
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->f:Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$a;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->a:Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$a;->a(Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    .line 427
    if-eqz v1, :cond_1

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v2, v0, :cond_5

    .line 428
    :cond_1
    if-nez v1, :cond_3

    move v3, v6

    .line 430
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->j:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->j:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 431
    new-instance v0, Lcom/yelp/android/appdata/webrequests/s;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->x:Lcom/yelp/android/appdata/webrequests/k$b;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->a:Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;

    iget-boolean v4, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->l:Z

    iget-object v5, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->j:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/appdata/webrequests/s;-><init>(Lcom/yelp/android/appdata/webrequests/k$b;Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;IZLjava/lang/String;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->e:Lcom/yelp/android/appdata/webrequests/s;

    .line 434
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->e:Lcom/yelp/android/appdata/webrequests/s;

    new-array v1, v6, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/s;->a([Ljava/lang/Object;)V

    .line 442
    :goto_1
    if-nez v3, :cond_2

    .line 443
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->enableLoading()V

    .line 448
    :cond_2
    :goto_2
    return-void

    .line 428
    :cond_3
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_0

    .line 436
    :cond_4
    new-instance v0, Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->x:Lcom/yelp/android/appdata/webrequests/k$b;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->a:Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest;-><init>(Lcom/yelp/android/appdata/webrequests/k$b;Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;I)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->d:Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest;

    .line 438
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->d:Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest;

    new-array v1, v6, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest;->a([Ljava/lang/Object;)V

    goto :goto_1

    .line 446
    :cond_5
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->a(Ljava/util/List;)V

    goto :goto_2
.end method

.method static synthetic h(Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;)Lcom/yelp/android/ui/activities/bookmarks/BookmarksListFragment;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->t:Lcom/yelp/android/ui/activities/bookmarks/BookmarksListFragment;

    return-object v0
.end method

.method private h()V
    .locals 2

    .prologue
    .line 511
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->s:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 512
    sget-object v0, Lcom/yelp/android/util/ErrorType;->NO_BOOKMARKS:Lcom/yelp/android/util/ErrorType;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->populateError(Lcom/yelp/android/util/ErrorType;)V

    .line 513
    return-void
.end method

.method private i()V
    .locals 2

    .prologue
    .line 674
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->g()V

    .line 675
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->p:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 676
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->r:Lcom/yelp/android/ui/widgets/EditTextAndClearButton;

    invoke-static {v0}, Lcom/yelp/android/ui/util/ar;->c(Landroid/view/View;)V

    .line 677
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->r:Lcom/yelp/android/ui/widgets/EditTextAndClearButton;

    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/EditTextAndClearButton;->clearFocus()V

    .line 678
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/l;->a()Landroid/support/v4/app/o;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->v:Lcom/yelp/android/ui/activities/bookmarks/BookmarksSuggestFragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/o;->a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/o;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/o;->a()I

    .line 679
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/l;->c()V

    .line 680
    return-void
.end method

.method static synthetic i(Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->h()V

    return-void
.end method

.method static synthetic j(Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;)Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$SortDialogFragment$a;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->y:Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$SortDialogFragment$a;

    return-object v0
.end method

.method static synthetic k(Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;)Lcom/yelp/android/ui/activities/search/a;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->o:Lcom/yelp/android/ui/activities/search/a;

    return-object v0
.end method

.method static synthetic l(Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;)Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->d:Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest;

    return-object v0
.end method

.method static synthetic m(Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;)Lcom/yelp/android/appdata/webrequests/s;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->e:Lcom/yelp/android/appdata/webrequests/s;

    return-object v0
.end method

.method static synthetic n(Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->g()V

    return-void
.end method

.method static synthetic o(Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->s:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic p(Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->q:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic q(Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;)Lcom/yelp/android/ui/widgets/EditTextAndClearButton;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->r:Lcom/yelp/android/ui/widgets/EditTextAndClearButton;

    return-object v0
.end method

.method static synthetic r(Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;)Lcom/yelp/android/ui/util/af;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->n:Lcom/yelp/android/ui/util/af;

    return-object v0
.end method

.method static synthetic s(Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->p:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic t(Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;)Lcom/yelp/android/ui/activities/bookmarks/BookmarksSuggestFragment;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->v:Lcom/yelp/android/ui/activities/bookmarks/BookmarksSuggestFragment;

    return-object v0
.end method

.method static synthetic u(Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->i()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 413
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->g()V

    .line 414
    return-void
.end method

.method public b()V
    .locals 5

    .prologue
    .line 451
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->m:Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$a;

    if-nez v0, :cond_0

    .line 485
    :goto_0
    return-void

    .line 454
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->clearError()V

    .line 455
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->f:Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$a;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->a:Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$a;->a(Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    .line 456
    iget-object v1, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->m:Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$a;

    iget-object v1, v1, Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$a;->b:Ljava/util/ArrayList;

    .line 457
    iget-object v2, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->m:Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$a;

    iget v2, v2, Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$a;->d:I

    iput v2, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->g:I

    .line 458
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->m:Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$a;

    .line 461
    if-eqz v0, :cond_1

    .line 462
    const/4 v2, 0x0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v1, v2, v0}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 465
    :cond_1
    invoke-direct {p0, v1}, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->a(Ljava/util/List;)V

    .line 467
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->f:Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$a;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->a:Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->j:Ljava/lang/String;

    iget v4, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->g:I

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$a;->a(Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;Ljava/lang/String;Ljava/util/List;I)V

    .line 469
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->g:I

    if-lt v0, v1, :cond_2

    .line 470
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->t:Lcom/yelp/android/ui/activities/bookmarks/BookmarksListFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/bookmarks/BookmarksListFragment;->b(Z)V

    goto :goto_0

    .line 472
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->t:Lcom/yelp/android/ui/activities/bookmarks/BookmarksListFragment;

    new-instance v1, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$6;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$6;-><init>(Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/bookmarks/BookmarksListFragment;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 317
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->u:Lcom/yelp/android/ui/activities/bookmarks/BookmarksMapFragment;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->u:Lcom/yelp/android/ui/activities/bookmarks/BookmarksMapFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/bookmarks/BookmarksMapFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 304
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->d()V

    .line 305
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->i:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->i:Z

    .line 306
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->invalidateOptionsMenu()V

    .line 312
    :goto_1
    return-void

    .line 305
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 307
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->v:Lcom/yelp/android/ui/activities/bookmarks/BookmarksSuggestFragment;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->v:Lcom/yelp/android/ui/activities/bookmarks/BookmarksSuggestFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/bookmarks/BookmarksSuggestFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 308
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->e()V

    goto :goto_1

    .line 310
    :cond_2
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onBackPressed()V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 108
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 109
    const v0, 0x7f030021

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->setContentView(I)V

    .line 111
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    const-string/jumbo v1, "list_fragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/l;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/bookmarks/BookmarksListFragment;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->t:Lcom/yelp/android/ui/activities/bookmarks/BookmarksListFragment;

    .line 114
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->t:Lcom/yelp/android/ui/activities/bookmarks/BookmarksListFragment;

    if-nez v0, :cond_0

    .line 115
    invoke-static {}, Lcom/yelp/android/ui/activities/bookmarks/BookmarksListFragment;->c()Lcom/yelp/android/ui/activities/bookmarks/BookmarksListFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->t:Lcom/yelp/android/ui/activities/bookmarks/BookmarksListFragment;

    .line 118
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    const-string/jumbo v1, "map_fragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/l;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/bookmarks/BookmarksMapFragment;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->u:Lcom/yelp/android/ui/activities/bookmarks/BookmarksMapFragment;

    .line 121
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->u:Lcom/yelp/android/ui/activities/bookmarks/BookmarksMapFragment;

    if-nez v0, :cond_1

    .line 122
    invoke-static {}, Lcom/yelp/android/ui/activities/bookmarks/BookmarksMapFragment;->b()Lcom/yelp/android/ui/activities/bookmarks/BookmarksMapFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->u:Lcom/yelp/android/ui/activities/bookmarks/BookmarksMapFragment;

    .line 125
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    const-string/jumbo v1, "suggest_fragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/l;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/bookmarks/BookmarksSuggestFragment;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->v:Lcom/yelp/android/ui/activities/bookmarks/BookmarksSuggestFragment;

    .line 128
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->v:Lcom/yelp/android/ui/activities/bookmarks/BookmarksSuggestFragment;

    if-nez v0, :cond_2

    .line 129
    invoke-static {}, Lcom/yelp/android/ui/activities/bookmarks/BookmarksSuggestFragment;->c()Lcom/yelp/android/ui/activities/bookmarks/BookmarksSuggestFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->v:Lcom/yelp/android/ui/activities/bookmarks/BookmarksSuggestFragment;

    .line 131
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->v:Lcom/yelp/android/ui/activities/bookmarks/BookmarksSuggestFragment;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->B:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/bookmarks/BookmarksSuggestFragment;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 133
    if-eqz p1, :cond_3

    .line 134
    const-string/jumbo v0, "is_showing_list"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->i:Z

    .line 143
    :goto_0
    new-instance v0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$1;-><init>(Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;)V

    const-string/jumbo v1, "com.yelp.android.bookmarks.remove"

    invoke-static {v1}, Lcom/yelp/android/util/ObjectDirtyEvent;->a(Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 162
    invoke-static {}, Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;->values()[Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->f()Lcom/yelp/android/appdata/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/c;->u()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->a:Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->c:Ljava/util/ArrayList;

    .line 166
    iput-boolean v4, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->h:Z

    .line 167
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->j:Ljava/lang/String;

    .line 169
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->i:Z

    if-nez v0, :cond_4

    .line 170
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->u:Lcom/yelp/android/ui/activities/bookmarks/BookmarksMapFragment;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->w:Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$b;

    .line 175
    :goto_1
    const v0, 0x7f0f0214

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->q:Landroid/widget/TextView;

    .line 176
    const v0, 0x7f0f00fb

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->s:Landroid/view/ViewGroup;

    .line 177
    const v0, 0x7f0f0213

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->p:Landroid/widget/LinearLayout;

    .line 178
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->p:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$4;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$4;-><init>(Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    const v0, 0x7f0f0589

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/EditTextAndClearButton;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->r:Lcom/yelp/android/ui/widgets/EditTextAndClearButton;

    .line 194
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->r:Lcom/yelp/android/ui/widgets/EditTextAndClearButton;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->C:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/EditTextAndClearButton;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 195
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->r:Lcom/yelp/android/ui/widgets/EditTextAndClearButton;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->z:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/EditTextAndClearButton;->a(Landroid/text/TextWatcher;)V

    .line 196
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->r:Lcom/yelp/android/ui/widgets/EditTextAndClearButton;

    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/EditTextAndClearButton;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->A:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 197
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->r:Lcom/yelp/android/ui/widgets/EditTextAndClearButton;

    const v1, 0x7f07052f

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/EditTextAndClearButton;->setHint(I)V

    .line 198
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->r:Lcom/yelp/android/ui/widgets/EditTextAndClearButton;

    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/EditTextAndClearButton;->clearFocus()V

    .line 200
    new-instance v0, Lcom/yelp/android/ui/activities/search/a;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yelp/android/ui/activities/search/a;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->o:Lcom/yelp/android/ui/activities/search/a;

    .line 202
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->v:Lcom/yelp/android/ui/activities/bookmarks/BookmarksSuggestFragment;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->o:Lcom/yelp/android/ui/activities/search/a;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/bookmarks/BookmarksSuggestFragment;->a(Lcom/yelp/android/ui/activities/search/a;)V

    .line 203
    new-instance v0, Lcom/yelp/android/ui/util/af;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sget-object v5, Lcom/yelp/android/ui/util/SuggestionFilter$SuggestionType;->BOOKMARK:Lcom/yelp/android/ui/util/SuggestionFilter$SuggestionType;

    new-instance v6, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$5;

    invoke-direct {v6, p0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$5;-><init>(Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;)V

    invoke-direct/range {v0 .. v6}, Lcom/yelp/android/ui/util/af;-><init>(Ljava/util/List;Ljava/util/ArrayList;Ljava/util/ArrayList;ZLcom/yelp/android/ui/util/SuggestionFilter$SuggestionType;Lcom/yelp/android/ui/util/SuggestionFilter$b;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->n:Lcom/yelp/android/ui/util/af;

    .line 223
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->n:Lcom/yelp/android/ui/util/af;

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->r()Lcom/yelp/android/appdata/LocationService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/LocationService;->c()Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/af;->a(Landroid/location/Location;)V

    .line 224
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->q:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->a:Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;

    iget v1, v1, Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;->descriptionPastParticiple:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 226
    new-instance v0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$a;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$a;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->f:Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$a;

    .line 227
    return-void

    .line 136
    :cond_3
    iput-boolean v4, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->i:Z

    .line 137
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/l;->a()Landroid/support/v4/app/o;

    move-result-object v0

    const v1, 0x7f0f00fc

    iget-object v2, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->t:Lcom/yelp/android/ui/activities/bookmarks/BookmarksListFragment;

    const-string/jumbo v3, "list_fragment"

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/o;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/o;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/o;->a()I

    goto/16 :goto_0

    .line 172
    :cond_4
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->t:Lcom/yelp/android/ui/activities/bookmarks/BookmarksListFragment;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->w:Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$b;

    goto/16 :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 270
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 271
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->i:Z

    if-eqz v0, :cond_0

    const v0, 0x7f100003

    :goto_0
    invoke-virtual {v1, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 273
    const/4 v0, 0x1

    return v0

    .line 271
    :cond_0
    const v0, 0x7f100004

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 278
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 297
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :cond_0
    :goto_0
    return v1

    .line 281
    :pswitch_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->d:Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->d:Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest;->u()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->e:Lcom/yelp/android/appdata/webrequests/s;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->e:Lcom/yelp/android/appdata/webrequests/s;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/s;->u()Z

    move-result v0

    if-nez v0, :cond_0

    .line 286
    :cond_2
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->i:Z

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->i:Z

    .line 289
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->invalidateOptionsMenu()V

    .line 290
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->i:Z

    if-eqz v0, :cond_4

    .line 291
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->d()V

    goto :goto_0

    .line 286
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 293
    :cond_4
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->c()V

    goto :goto_0

    .line 278
    nop

    :pswitch_data_0
    .packed-switch 0x7f0f0574
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 255
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onPause()V

    .line 256
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->y()Lcom/yelp/android/appdata/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/e;->b()V

    .line 257
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->h:Z

    .line 258
    const-string/jumbo v0, "bookmarks"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->d:Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->freezeRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/k;)V

    .line 259
    const-string/jumbo v0, "bookmark_search"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->e:Lcom/yelp/android/appdata/webrequests/s;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->freezeRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/k;)V

    .line 260
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 231
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onResume()V

    .line 232
    const-string/jumbo v0, "bookmarks"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->d:Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->x:Lcom/yelp/android/appdata/webrequests/k$b;

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->thawRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/k;Lcom/yelp/android/appdata/webrequests/k$b;)Lcom/yelp/android/appdata/webrequests/k;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->d:Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest;

    .line 234
    const-string/jumbo v0, "bookmark_search"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->e:Lcom/yelp/android/appdata/webrequests/s;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->x:Lcom/yelp/android/appdata/webrequests/k$b;

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->thawRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/k;Lcom/yelp/android/appdata/webrequests/k$b;)Lcom/yelp/android/appdata/webrequests/k;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/s;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->e:Lcom/yelp/android/appdata/webrequests/s;

    .line 238
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->d:Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->d:Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 239
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->enableLoading()V

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->d:Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->d:Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    :cond_2
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->h:Z

    if-eqz v0, :cond_0

    .line 248
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->a()V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 264
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 265
    const-string/jumbo v0, "is_showing_list"

    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->i:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 266
    return-void
.end method
