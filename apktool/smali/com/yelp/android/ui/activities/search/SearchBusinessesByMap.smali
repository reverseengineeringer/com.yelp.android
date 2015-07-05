.class public Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;
.super Lcom/yelp/android/ui/activities/support/YelpMapActivity;
.source "SearchBusinessesByMap.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/search/ax;
.implements Lcom/yelp/android/ui/activities/search/ay;
.implements Lcom/yelp/android/ui/dialogs/aj;


# instance fields
.field a:Lcom/yelp/android/appdata/ap;

.field private b:Landroid/widget/TextView;

.field private c:Lcom/yelp/android/ui/map/YelpMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/ui/map/YelpMap",
            "<",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/String;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/SearchResultLocalAd;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/yelp/android/ui/map/b;

.field private h:Lcom/google/android/gms/maps/model/LatLngBounds;

.field private i:Lcom/yelp/android/ui/panels/PanelLoading;

.field private final j:Ljava/lang/Runnable;

.field private final k:Lcom/yelp/android/ui/activities/support/o;

.field private final l:Lcom/yelp/android/appdata/webrequests/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/j",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Landroid/database/DataSetObserver;

.field private final n:Lcom/google/android/gms/maps/GoogleMap$OnCameraChangeListener;

.field private final o:Lcom/yelp/android/ui/map/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/ui/map/f",
            "<",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpMapActivity;-><init>()V

    .line 364
    new-instance v0, Lcom/yelp/android/ui/activities/search/s;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/search/s;-><init>(Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->j:Ljava/lang/Runnable;

    .line 432
    new-instance v0, Lcom/yelp/android/ui/activities/search/t;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/search/t;-><init>(Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->k:Lcom/yelp/android/ui/activities/support/o;

    .line 447
    new-instance v0, Lcom/yelp/android/ui/activities/search/u;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/search/u;-><init>(Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->l:Lcom/yelp/android/appdata/webrequests/j;

    .line 469
    new-instance v0, Lcom/yelp/android/ui/activities/search/v;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/search/v;-><init>(Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->m:Landroid/database/DataSetObserver;

    .line 500
    new-instance v0, Lcom/yelp/android/ui/activities/search/w;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/search/w;-><init>(Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->n:Lcom/google/android/gms/maps/GoogleMap$OnCameraChangeListener;

    .line 534
    new-instance v0, Lcom/yelp/android/ui/activities/search/y;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/search/y;-><init>(Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->o:Lcom/yelp/android/ui/map/f;

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 701
    const-class v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 702
    const/high16 v0, 0x20000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 703
    const/high16 v0, 0x4000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 704
    return-object p1
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/appdata/webrequests/SearchRequest;)Landroid/content/Intent;
    .locals 4

    .prologue
    .line 413
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 414
    invoke-static {p1, v1}, Lcom/yelp/android/appdata/ap;->a(Lcom/yelp/android/appdata/webrequests/SearchRequest;Landroid/content/Intent;)V

    .line 415
    invoke-interface {p1}, Lcom/yelp/android/appdata/webrequests/SearchRequest;->getSearchTerms()Ljava/lang/String;

    move-result-object v0

    .line 417
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Lcom/yelp/android/appdata/webrequests/SearchRequest;->getCategory()Lcom/yelp/android/serializable/Category;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 418
    invoke-interface {p1}, Lcom/yelp/android/appdata/webrequests/SearchRequest;->getCategory()Lcom/yelp/android/serializable/Category;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Category;->getName()Ljava/lang/String;

    move-result-object v0

    .line 420
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Lcom/yelp/android/appdata/webrequests/SearchRequest;->getSearchOptions()Ljava/util/EnumSet;

    move-result-object v2

    sget-object v3, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchOption;->CHECK_IN_OFFERS:Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchOption;

    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 422
    const v0, 0x7f070131

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 424
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;->NEARBY:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;

    invoke-interface {p1}, Lcom/yelp/android/appdata/webrequests/SearchRequest;->getSearchMode()Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;

    move-result-object v2

    if-ne v0, v2, :cond_2

    .line 425
    const v0, 0x7f070123

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 427
    :cond_2
    const/high16 v0, 0x4000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 428
    const/high16 v0, 0x20000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 429
    return-object v1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;Lcom/google/android/gms/maps/model/LatLngBounds;)Lcom/google/android/gms/maps/model/LatLngBounds;
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->h:Lcom/google/android/gms/maps/model/LatLngBounds;

    return-object p1
.end method

.method private a(Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 293
    if-nez p1, :cond_1

    .line 357
    :cond_0
    :goto_0
    return-void

    .line 296
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "filters_dialog"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/dialogs/FiltersDialog;

    .line 298
    if-eqz v0, :cond_2

    .line 299
    invoke-interface {p1}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;->getSuggestedFilters()Lcom/yelp/android/serializable/AttributeFilters;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/FiltersDialog;->a(Lcom/yelp/android/serializable/AttributeFilters;)V

    .line 301
    :cond_2
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->disableLoading()V

    .line 302
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->updateOptionsMenu()V

    .line 303
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->c:Lcom/yelp/android/ui/map/YelpMap;

    invoke-virtual {v0}, Lcom/yelp/android/ui/map/YelpMap;->f()V

    .line 304
    invoke-interface {p1}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;->getLocalAds()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->f:Ljava/util/List;

    .line 305
    invoke-interface {p1}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;->getBusinessSearchResults()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/serializable/BusinessSearchResult;->getBusinessesFromBusinessSearchResult(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 308
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 313
    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 315
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/LocalAd;

    .line 316
    invoke-virtual {v0}, Lcom/yelp/android/serializable/LocalAd;->getBusiness()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 323
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->g:Lcom/yelp/android/ui/map/b;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->f:Ljava/util/List;

    invoke-virtual {v0, v3}, Lcom/yelp/android/ui/map/b;->a(Ljava/util/List;)V

    .line 327
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 329
    invoke-interface {p1}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;->getOffset()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 330
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    .line 331
    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->isLocationAccurate()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 332
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 335
    goto :goto_2

    .line 337
    :cond_5
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->c:Lcom/yelp/android/ui/map/YelpMap;

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v4, Lcom/yelp/android/ui/map/q;

    invoke-direct {v4, p0, v3}, Lcom/yelp/android/ui/map/q;-><init>(Landroid/content/Context;Ljava/util/Map;)V

    invoke-virtual {v0, v1, v4}, Lcom/yelp/android/ui/map/YelpMap;->a(Ljava/util/List;Lcom/yelp/android/ui/map/a;)Ljava/lang/Runnable;

    move-result-object v0

    .line 341
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->c:Lcom/yelp/android/ui/map/YelpMap;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/yelp/android/ui/map/YelpMap;->setInteractive(Z)V

    .line 344
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 345
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->c:Lcom/yelp/android/ui/map/YelpMap;

    new-instance v3, Lcom/yelp/android/ui/map/r;

    const v4, 0x7f020287

    invoke-direct {v3, v4}, Lcom/yelp/android/ui/map/r;-><init>(I)V

    invoke-virtual {v1, v2, v3}, Lcom/yelp/android/ui/map/YelpMap;->a(Ljava/util/List;Lcom/yelp/android/ui/map/a;)Ljava/lang/Runnable;

    .line 349
    :cond_6
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->h:Lcom/google/android/gms/maps/model/LatLngBounds;

    if-nez v1, :cond_0

    .line 350
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->c:Lcom/yelp/android/ui/map/YelpMap;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/map/YelpMap;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 353
    :cond_7
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->c:Lcom/yelp/android/ui/map/YelpMap;

    invoke-virtual {v0}, Lcom/yelp/android/ui/map/YelpMap;->f()V

    .line 354
    const v0, 0x7f070248

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/yelp/android/ui/util/cr;->a(Ljava/lang/CharSequence;I)V

    .line 355
    const-string/jumbo v0, "ActivityBusinessListResultsMap"

    const-string/jumbo v1, "Business search returned no results."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/AppData;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private a(Lcom/yelp/android/appdata/webrequests/SearchRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 2

    .prologue
    .line 360
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->c:Lcom/yelp/android/ui/map/YelpMap;

    invoke-virtual {v0}, Lcom/yelp/android/ui/map/YelpMap;->f()V

    .line 361
    invoke-virtual {p2, p0}, Lcom/yelp/android/appdata/webrequests/YelpException;->getMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/cr;->a(Ljava/lang/CharSequence;I)V

    .line 362
    return-void
.end method

.method private a(Lcom/yelp/android/appdata/webrequests/fv;)V
    .locals 2

    .prologue
    .line 405
    invoke-virtual {p1}, Lcom/yelp/android/appdata/webrequests/fv;->a()Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    move-result-object v0

    .line 407
    invoke-static {p0, v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a(Landroid/content/Context;Lcom/yelp/android/appdata/webrequests/SearchRequest;)Landroid/content/Intent;

    move-result-object v0

    .line 408
    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 409
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->startActivity(Landroid/content/Intent;)V

    .line 410
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->c()V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a(Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;)V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;Lcom/yelp/android/appdata/webrequests/SearchRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a(Lcom/yelp/android/appdata/webrequests/SearchRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;Lcom/yelp/android/appdata/webrequests/fv;)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a(Lcom/yelp/android/appdata/webrequests/fv;)V

    return-void
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;)Lcom/yelp/android/ui/activities/support/o;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->k:Lcom/yelp/android/ui/activities/support/o;

    return-object v0
.end method

.method private b(Lcom/yelp/android/serializable/Filter;)V
    .locals 2

    .prologue
    .line 372
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->b:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 375
    invoke-static {p1}, Lcom/yelp/android/serializable/Filter;->getFilterDisplayString(Lcom/yelp/android/serializable/Filter;)Ljava/lang/String;

    move-result-object v0

    .line 376
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 377
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 378
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 380
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;)Lcom/google/android/gms/maps/GoogleMap$OnCameraChangeListener;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->n:Lcom/google/android/gms/maps/GoogleMap$OnCameraChangeListener;

    return-object v0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a:Lcom/yelp/android/appdata/ap;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/ap;->i()Lcom/yelp/android/appdata/webrequests/fv;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a(Lcom/yelp/android/appdata/webrequests/fv;)V

    .line 385
    return-void
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;)Lcom/yelp/android/ui/map/YelpMap;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->c:Lcom/yelp/android/ui/map/YelpMap;

    return-object v0
.end method

.method static synthetic e(Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;)Lcom/google/android/gms/maps/model/LatLngBounds;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->h:Lcom/google/android/gms/maps/model/LatLngBounds;

    return-object v0
.end method

.method static synthetic f(Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic g(Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;)Ljava/util/List;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->f:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method a([D)Lcom/yelp/android/appdata/webrequests/fv;
    .locals 2

    .prologue
    .line 393
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a:Lcom/yelp/android/appdata/ap;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/ap;->i()Lcom/yelp/android/appdata/webrequests/fv;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/fv;->a(Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/fv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yelp/android/appdata/webrequests/fv;->a([D)Lcom/yelp/android/appdata/webrequests/fv;

    move-result-object v0

    .line 396
    return-object v0
.end method

.method public a()V
    .locals 3

    .prologue
    .line 125
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->c:Lcom/yelp/android/ui/map/YelpMap;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->o:Lcom/yelp/android/ui/map/f;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/map/YelpMap;->setInfoWindowListener(Lcom/yelp/android/ui/map/f;)V

    .line 126
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->b()Lcom/yelp/android/appdata/ap;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a:Lcom/yelp/android/appdata/ap;

    .line 127
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a:Lcom/yelp/android/appdata/ap;

    if-nez v0, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->i()Lcom/yelp/android/database/q;

    move-result-object v0

    .line 129
    new-instance v1, Lcom/yelp/android/appdata/ap;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->l:Lcom/yelp/android/appdata/webrequests/j;

    invoke-virtual {v0}, Lcom/yelp/android/database/q;->g()Lcom/yelp/android/ax/a;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/yelp/android/appdata/ap;-><init>(Lcom/yelp/android/appdata/webrequests/j;Lcom/yelp/android/ax/a;)V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a:Lcom/yelp/android/appdata/ap;

    .line 131
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a:Lcom/yelp/android/appdata/ap;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->m:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/ap;->registerObserver(Ljava/lang/Object;)V

    .line 132
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a(Landroid/content/Intent;)V

    .line 138
    :goto_0
    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a:Lcom/yelp/android/appdata/ap;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->m:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/ap;->registerObserver(Ljava/lang/Object;)V

    .line 135
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->enableLoading()V

    .line 136
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->m:Landroid/database/DataSetObserver;

    invoke-virtual {v0}, Landroid/database/DataSetObserver;->onChanged()V

    goto :goto_0
.end method

.method a(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 198
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a:Lcom/yelp/android/appdata/ap;

    if-nez v0, :cond_1

    .line 199
    const-string/jumbo v0, "SearchSession null in newSearch()"

    invoke-static {p0, v0}, Lcom/yelp/android/util/YelpLog;->error(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a:Lcom/yelp/android/appdata/ap;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/ap;->j()V

    .line 205
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a:Lcom/yelp/android/appdata/ap;

    invoke-virtual {v0, p1}, Lcom/yelp/android/appdata/ap;->a(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 206
    const-string/jumbo v0, "ActivityBusinessListResultsMap"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "It was not possible to initialize this search intent + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->finish()V

    goto :goto_0

    .line 210
    :cond_2
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->updateOptionsMenu()V

    .line 211
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a:Lcom/yelp/android/appdata/ap;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/ap;->k()Lcom/yelp/android/serializable/Filter;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->b(Lcom/yelp/android/serializable/Filter;)V

    .line 212
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a:Lcom/yelp/android/appdata/ap;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/ap;->l()Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;

    move-result-object v0

    if-nez v0, :cond_3

    .line 214
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a:Lcom/yelp/android/appdata/ap;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/ap;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->enableLoading()V

    goto :goto_0

    .line 218
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->m:Landroid/database/DataSetObserver;

    invoke-virtual {v0}, Landroid/database/DataSetObserver;->onChanged()V

    goto :goto_0
.end method

.method public a(Lcom/yelp/android/appdata/webrequests/fv;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 730
    sget-object v0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;->DEFAULT:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;

    invoke-virtual {p1, v0}, Lcom/yelp/android/appdata/webrequests/fv;->a(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;)Lcom/yelp/android/appdata/webrequests/fv;

    .line 731
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.SEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 732
    invoke-virtual {p1}, Lcom/yelp/android/appdata/webrequests/fv;->a()Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    move-result-object v1

    .line 734
    const/4 v2, 0x0

    invoke-static {v1, v0, v2, p2}, Lcom/yelp/android/appdata/ap;->a(Lcom/yelp/android/appdata/webrequests/SearchRequest;Landroid/content/Intent;Lcom/yelp/android/analytics/iris/IriSource;Ljava/lang/String;)V

    .line 735
    const-string/jumbo v1, "mRecenter"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 736
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 737
    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 738
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 739
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->startActivity(Landroid/content/Intent;)V

    .line 740
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/Filter;)V
    .locals 1

    .prologue
    .line 591
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->b(Lcom/yelp/android/serializable/Filter;)V

    .line 592
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a:Lcom/yelp/android/appdata/ap;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/ap;->i()Lcom/yelp/android/appdata/webrequests/fv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yelp/android/appdata/webrequests/fv;->a(Lcom/yelp/android/serializable/Filter;)Lcom/yelp/android/appdata/webrequests/fv;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a(Lcom/yelp/android/appdata/webrequests/fv;)V

    .line 593
    return-void
.end method

.method protected addStatusView(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 153
    return-void
.end method

.method public b()Lcom/yelp/android/appdata/ap;
    .locals 1

    .prologue
    .line 189
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpMapActivity;->getLastCustomNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/ap;

    return-object v0
.end method

.method public disableLoading()V
    .locals 2

    .prologue
    .line 157
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpMapActivity;->disableLoading()V

    .line 158
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->getLoadingPanel()Lcom/yelp/android/ui/panels/PanelLoading;

    move-result-object v0

    .line 159
    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/PanelLoading;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 160
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->c:Lcom/yelp/android/ui/map/YelpMap;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/map/YelpMap;->removeView(Landroid/view/View;)V

    .line 162
    :cond_0
    return-void
.end method

.method public enableLoading()V
    .locals 2

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->getLoadingPanel()Lcom/yelp/android/ui/panels/PanelLoading;

    move-result-object v0

    .line 143
    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/PanelLoading;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_0

    .line 144
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->c:Lcom/yelp/android/ui/map/YelpMap;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/map/YelpMap;->addView(Landroid/view/View;)V

    .line 147
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/PanelLoading;->setVisibility(I)V

    .line 148
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->c:Lcom/yelp/android/ui/map/YelpMap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/map/YelpMap;->setOnCameraUpdate(Lcom/google/android/gms/maps/GoogleMap$OnCameraChangeListener;)V

    .line 149
    return-void
.end method

.method public g()V
    .locals 2

    .prologue
    .line 718
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 719
    invoke-static {p0, v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    .line 720
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a:Lcom/yelp/android/appdata/ap;

    if-eqz v1, :cond_0

    .line 721
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a:Lcom/yelp/android/appdata/ap;

    invoke-virtual {v1, v0}, Lcom/yelp/android/appdata/ap;->b(Landroid/content/Intent;)V

    .line 722
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a:Lcom/yelp/android/appdata/ap;

    invoke-virtual {v1}, Lcom/yelp/android/appdata/ap;->j()V

    .line 724
    :cond_0
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->startActivity(Landroid/content/Intent;)V

    .line 725
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->finish()V

    .line 726
    return-void
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 749
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->SearchMap:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getLastCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->b()Lcom/yelp/android/appdata/ap;

    move-result-object v0

    return-object v0
.end method

.method protected getLoadingPanel()Lcom/yelp/android/ui/panels/PanelLoading;
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->i:Lcom/yelp/android/ui/panels/PanelLoading;

    if-nez v0, :cond_0

    .line 167
    new-instance v0, Lcom/yelp/android/ui/panels/PanelLoading;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->l()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yelp/android/ui/panels/PanelLoading;-><init>(Landroid/content/Context;)V

    .line 168
    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/PanelLoading;->a()V

    .line 169
    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/PanelLoading;->d()V

    .line 170
    sget-object v1, Lcom/yelp/android/ui/panels/YelpLoadingSpinner;->FINDING_PLACES:Lcom/yelp/android/ui/panels/YelpLoadingSpinner;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/PanelLoading;->setSpinner(Lcom/yelp/android/ui/panels/y;)V

    .line 171
    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->i:Lcom/yelp/android/ui/panels/PanelLoading;

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->i:Lcom/yelp/android/ui/panels/PanelLoading;

    return-object v0
.end method

.method public h()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 566
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a:Lcom/yelp/android/appdata/ap;

    if-nez v0, :cond_1

    .line 567
    const-string/jumbo v0, "mSearchSession null in onFilterSelected"

    invoke-static {p0, v0}, Lcom/yelp/android/util/YelpLog;->error(Ljava/lang/Object;Ljava/lang/String;)V

    .line 587
    :cond_0
    :goto_0
    return-void

    .line 571
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a:Lcom/yelp/android/appdata/ap;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/ap;->l()Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;

    move-result-object v0

    if-eqz v0, :cond_2

    move v3, v1

    .line 574
    :goto_1
    if-eqz v3, :cond_3

    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a:Lcom/yelp/android/appdata/ap;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/ap;->l()Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;

    move-result-object v0

    invoke-interface {v0}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;->getSuggestedFilters()Lcom/yelp/android/serializable/AttributeFilters;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 575
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a:Lcom/yelp/android/appdata/ap;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/ap;->l()Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;

    move-result-object v0

    invoke-interface {v0}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;->getSuggestedFilters()Lcom/yelp/android/serializable/AttributeFilters;

    move-result-object v0

    .line 581
    :goto_2
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    const-string/jumbo v5, "filters_dialog"

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    .line 582
    if-nez v4, :cond_0

    .line 583
    iget-object v4, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a:Lcom/yelp/android/appdata/ap;

    invoke-virtual {v4}, Lcom/yelp/android/appdata/ap;->k()Lcom/yelp/android/serializable/Filter;

    move-result-object v4

    if-nez v3, :cond_4

    :goto_3
    invoke-static {v4, v0, v1}, Lcom/yelp/android/ui/dialogs/FiltersDialog;->a(Lcom/yelp/android/serializable/Filter;Lcom/yelp/android/serializable/AttributeFilters;Z)Lcom/yelp/android/ui/dialogs/FiltersDialog;

    move-result-object v0

    .line 585
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "filters_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/dialogs/FiltersDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v3, v2

    .line 571
    goto :goto_1

    .line 577
    :cond_3
    new-instance v0, Lcom/yelp/android/serializable/AttributeFilters;

    invoke-direct {v0}, Lcom/yelp/android/serializable/AttributeFilters;-><init>()V

    goto :goto_2

    :cond_4
    move v1, v2

    .line 583
    goto :goto_3
.end method

.method public j()V
    .locals 0

    .prologue
    .line 679
    invoke-static {p0}, Lcom/yelp/android/ui/activities/search/SearchUtils;->b(Landroid/app/Activity;)V

    .line 680
    return-void
.end method

.method public k()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 744
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method public l()Landroid/content/Context;
    .locals 0

    .prologue
    .line 754
    return-object p0
.end method

.method public m()[D
    .locals 2

    .prologue
    .line 759
    const v0, 0x7f0701e7

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->c:Lcom/yelp/android/ui/map/YelpMap;

    invoke-virtual {v0}, Lcom/yelp/android/ui/map/YelpMap;->getViewableRegion()[D

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public n()I
    .locals 1

    .prologue
    .line 765
    const/16 v0, 0x418

    return v0
.end method

.method public o()Lcom/yelp/android/appdata/ap;
    .locals 1

    .prologue
    .line 674
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a:Lcom/yelp/android/appdata/ap;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 598
    sparse-switch p1, :sswitch_data_0

    .line 646
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/YelpMapActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 649
    :cond_1
    :goto_1
    return-void

    .line 600
    :sswitch_0
    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a:Lcom/yelp/android/appdata/ap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a:Lcom/yelp/android/appdata/ap;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/ap;->l()Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 602
    invoke-static {p3}, Lcom/yelp/android/ui/dialogs/ChoiceDialog;->a(Landroid/content/Intent;)I

    move-result v0

    .line 603
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a:Lcom/yelp/android/appdata/ap;

    invoke-virtual {v1}, Lcom/yelp/android/appdata/ap;->l()Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;

    move-result-object v1

    invoke-interface {v1}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;->getAmbiguousLocations()Ljava/util/List;

    move-result-object v1

    .line 605
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    .line 606
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a:Lcom/yelp/android/appdata/ap;

    invoke-static {p0, v0, v1}, Lcom/yelp/android/ui/activities/search/SearchUtils;->a(Landroid/content/Context;Landroid/location/Address;Lcom/yelp/android/appdata/ap;)V

    .line 607
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a:Lcom/yelp/android/appdata/ap;

    invoke-virtual {v1}, Lcom/yelp/android/appdata/ap;->i()Lcom/yelp/android/appdata/webrequests/fv;

    move-result-object v1

    invoke-virtual {v0}, Landroid/location/Address;->getFeatureName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/appdata/webrequests/fv;->a(Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/fv;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a(Lcom/yelp/android/appdata/webrequests/fv;)V

    goto :goto_1

    .line 611
    :cond_2
    :sswitch_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a:Lcom/yelp/android/appdata/ap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a:Lcom/yelp/android/appdata/ap;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/ap;->l()Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 612
    if-nez p2, :cond_3

    .line 613
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a:Lcom/yelp/android/appdata/ap;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/ap;->l()Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a(Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;)V

    goto :goto_1

    .line 614
    :cond_3
    if-ne p2, v1, :cond_1

    .line 615
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a:Lcom/yelp/android/appdata/ap;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/ap;->l()Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;

    move-result-object v0

    .line 616
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->i()Lcom/yelp/android/database/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/database/q;->c()Lcom/yelp/android/database/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/database/l;->d()V

    .line 617
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a:Lcom/yelp/android/appdata/ap;

    invoke-static {p0, v1}, Lcom/yelp/android/ui/activities/search/SearchUtils;->a(Landroid/content/Context;Lcom/yelp/android/appdata/ap;)V

    .line 618
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a:Lcom/yelp/android/appdata/ap;

    invoke-virtual {v1}, Lcom/yelp/android/appdata/ap;->i()Lcom/yelp/android/appdata/webrequests/fv;

    move-result-object v1

    invoke-interface {v0}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;->getSpellingSuggestion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/appdata/webrequests/fv;->b(Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/fv;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a(Lcom/yelp/android/appdata/webrequests/fv;)V

    goto/16 :goto_1

    .line 624
    :sswitch_2
    if-eqz p3, :cond_1

    const-string/jumbo v0, "extra.business"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a:Lcom/yelp/android/appdata/ap;

    if-eqz v0, :cond_1

    .line 628
    const-string/jumbo v0, "extra.business"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    .line 629
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a:Lcom/yelp/android/appdata/ap;

    invoke-virtual {v1, v0}, Lcom/yelp/android/appdata/ap;->a(Lcom/yelp/android/serializable/YelpBusiness;)V

    goto/16 :goto_1

    .line 633
    :sswitch_3
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->updateOptionsMenu()V

    .line 634
    if-ne p2, v1, :cond_1

    .line 635
    const-string/jumbo v0, "extra.location"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->e:Ljava/lang/String;

    .line 636
    const-string/jumbo v0, "extra.search.launch_method"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, p0, v0}, Lcom/yelp/android/ui/activities/search/SearchUtils;->a(Landroid/content/Intent;Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 641
    :sswitch_4
    if-ne p2, v1, :cond_0

    .line 642
    const/16 v0, 0x3f3

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->removeDialog(I)V

    .line 643
    const v0, 0x7f0705e0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/cr;->a(II)V

    goto/16 :goto_0

    .line 598
    nop

    :sswitch_data_0
    .sparse-switch
        0x3ed -> :sswitch_2
        0x3f3 -> :sswitch_4
        0x3f4 -> :sswitch_0
        0x418 -> :sswitch_3
        0x419 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 104
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpMapActivity;->onCreate(Landroid/os/Bundle;)V

    .line 106
    const v0, 0x7f030046

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->setContentView(I)V

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->d:Ljava/util/ArrayList;

    .line 108
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->d:Ljava/util/ArrayList;

    const v1, 0x7f0701e6

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->h:Lcom/google/android/gms/maps/model/LatLngBounds;

    .line 111
    if-eqz p1, :cond_0

    .line 112
    const-string/jumbo v0, "mRecenter"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/LatLngBounds;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->h:Lcom/google/android/gms/maps/model/LatLngBounds;

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->c:Lcom/yelp/android/ui/map/YelpMap;

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->n()Lcom/yelp/android/appdata/LocationService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/LocationService;->c()Landroid/location/Location;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/yelp/android/ui/map/YelpMap;->a(Landroid/content/Context;Landroid/location/Location;)Lcom/google/android/gms/maps/GoogleMapOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/map/YelpMap;->setOptions(Lcom/google/android/gms/maps/GoogleMapOptions;)V

    .line 117
    new-instance v0, Lcom/yelp/android/ui/map/b;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/map/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->g:Lcom/yelp/android/ui/map/b;

    .line 118
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->c:Lcom/yelp/android/ui/map/YelpMap;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->g:Lcom/yelp/android/ui/map/b;

    invoke-virtual {v0, p1, v1}, Lcom/yelp/android/ui/map/YelpMap;->a(Landroid/os/Bundle;Lcom/yelp/android/ui/map/e;)V

    .line 120
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->setSearchHotButtonSelected(Z)V

    .line 121
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5

    .prologue
    .line 178
    packed-switch p1, :pswitch_data_0

    .line 183
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpMapActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 180
    :pswitch_0
    new-instance v0, Lcom/yelp/android/ui/activities/fi;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a:Lcom/yelp/android/appdata/ap;

    const v2, 0x7f070525

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const/high16 v4, 0x10000000

    invoke-virtual {p0, v2, v3, v4}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->createPendingResult(ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/yelp/android/ui/activities/fi;-><init>(Landroid/content/Context;Lcom/yelp/android/appdata/ap;Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 178
    :pswitch_data_0
    .packed-switch 0x3f3
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 653
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpMapActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 654
    invoke-static {p0, p1}, Lcom/yelp/android/ui/activities/search/SearchUtils;->a(Landroid/support/v7/app/ActionBarActivity;Landroid/view/Menu;)V

    .line 655
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 690
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpMapActivity;->onDestroy()V

    .line 691
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 709
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 710
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->g()V

    .line 711
    const/4 v0, 0x1

    .line 713
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/yelp/android/ui/activities/support/YelpMapActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 257
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpMapActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 258
    const-string/jumbo v0, "query"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 259
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a:Lcom/yelp/android/appdata/ap;

    if-eqz v1, :cond_0

    .line 260
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a:Lcom/yelp/android/appdata/ap;

    invoke-virtual {v1}, Lcom/yelp/android/appdata/ap;->i()Lcom/yelp/android/appdata/webrequests/fv;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yelp/android/appdata/webrequests/fv;->b(Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/fv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/fv;->a()Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a(Landroid/content/Context;Lcom/yelp/android/appdata/webrequests/SearchRequest;)Landroid/content/Intent;

    move-result-object p1

    .line 264
    invoke-static {p0, p1}, Lcom/yelp/android/ui/activities/search/SearchUtils;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 267
    :cond_0
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->setIntent(Landroid/content/Intent;)V

    .line 268
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a(Landroid/content/Intent;)V

    .line 269
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 666
    invoke-static {p0, p1}, Lcom/yelp/android/ui/activities/search/SearchUtils;->a(Landroid/app/Activity;Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 667
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpMapActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 669
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 231
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpMapActivity;->onPause()V

    .line 233
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 234
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a:Lcom/yelp/android/appdata/ap;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a:Lcom/yelp/android/appdata/ap;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/ap;->unregisterAll()V

    .line 236
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a:Lcom/yelp/android/appdata/ap;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/ap;->j()V

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->c:Lcom/yelp/android/ui/map/YelpMap;

    invoke-virtual {v0}, Lcom/yelp/android/ui/map/YelpMap;->b()V

    .line 240
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 660
    invoke-static {p0, p1}, Lcom/yelp/android/ui/activities/search/SearchUtils;->a(Landroid/content/Context;Landroid/view/Menu;)V

    .line 661
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpMapActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 224
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpMapActivity;->onResume()V

    .line 225
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->c:Lcom/yelp/android/ui/map/YelpMap;

    invoke-virtual {v0}, Lcom/yelp/android/ui/map/YelpMap;->c()V

    .line 226
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yelp/android/av/a;->a(Lcom/yelp/android/analytics/a;Landroid/content/Context;)Z

    .line 227
    return-void
.end method

.method public onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a:Lcom/yelp/android/appdata/ap;

    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 248
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpMapActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 249
    const-string/jumbo v0, "mRecenter"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 250
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a:Lcom/yelp/android/appdata/ap;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a:Lcom/yelp/android/appdata/ap;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/ap;->b(Landroid/content/Intent;)V

    .line 253
    :cond_0
    return-void
.end method

.method public onSupportContentChanged()V
    .locals 1

    .prologue
    .line 274
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpMapActivity;->onSupportContentChanged()V

    .line 275
    const v0, 0x7f0c01aa

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->b:Landroid/widget/TextView;

    .line 277
    const v0, 0x7f0c0165

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/map/YelpMap;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->c:Lcom/yelp/android/ui/map/YelpMap;

    .line 278
    return-void
.end method

.method protected setHotButtonListeners()V
    .locals 2

    .prologue
    .line 282
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpMapActivity;->setHotButtonListeners()V

    .line 283
    const v0, 0x7f0c0300

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/activities/search/r;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/search/r;-><init>(Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    return-void
.end method
