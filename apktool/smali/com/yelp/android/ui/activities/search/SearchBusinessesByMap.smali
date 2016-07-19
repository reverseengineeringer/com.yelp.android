.class public Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;
.super Lcom/yelp/android/ui/activities/support/YelpMapActivity;
.source "SearchBusinessesByMap.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/search/d$a;
.implements Lcom/yelp/android/ui/activities/search/e;
.implements Lcom/yelp/android/ui/dialogs/FiltersDialog$a;


# instance fields
.field a:Lcom/yelp/android/appdata/o;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/view/View;

.field private d:Lcom/yelp/android/ui/map/YelpMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/ui/map/YelpMap",
            "<",
            "Lcom/yelp/android/serializable/BusinessSearchResult;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/String;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/SearchResultLocalAd;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/yelp/android/ui/map/i;

.field private i:Lcom/yelp/android/util/u;

.field private j:Lcom/yelp/android/appdata/webrequests/aw;

.field private k:Lcom/google/android/gms/maps/model/LatLngBounds;

.field private l:Lcom/yelp/android/ui/panels/PanelLoading;

.field private final m:Ljava/lang/Runnable;

.field private final n:Lcom/yelp/android/ui/activities/support/b$e;

.field private final o:Lcom/yelp/android/appdata/webrequests/k$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/k$b",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final p:Landroid/database/DataSetObserver;

.field private final q:Lcom/google/android/gms/maps/c$c;

.field private final r:Lcom/yelp/android/ui/map/e$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/ui/map/e$a",
            "<",
            "Lcom/yelp/android/serializable/BusinessSearchResult;",
            ">;"
        }
    .end annotation
.end field

.field private final s:Lcom/yelp/android/ui/dialogs/ListDialogFragment$a;

.field private final t:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Lcom/yelp/android/serializable/ContinueLastOrderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final u:Lcom/yelp/android/util/BasicBroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpMapActivity;-><init>()V

    .line 488
    new-instance v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap$5;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap$5;-><init>(Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->m:Ljava/lang/Runnable;

    .line 589
    new-instance v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap$6;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap$6;-><init>(Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->n:Lcom/yelp/android/ui/activities/support/b$e;

    .line 605
    new-instance v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap$7;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap$7;-><init>(Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->o:Lcom/yelp/android/appdata/webrequests/k$b;

    .line 628
    new-instance v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap$8;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap$8;-><init>(Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->p:Landroid/database/DataSetObserver;

    .line 659
    new-instance v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap$9;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap$9;-><init>(Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->q:Lcom/google/android/gms/maps/c$c;

    .line 688
    new-instance v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap$10;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap$10;-><init>(Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->r:Lcom/yelp/android/ui/map/e$a;

    .line 711
    new-instance v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap$11;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap$11;-><init>(Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->s:Lcom/yelp/android/ui/dialogs/ListDialogFragment$a;

    .line 926
    new-instance v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap$2;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap$2;-><init>(Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->t:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    .line 944
    new-instance v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap$3;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/IntentFilter;

    const/4 v2, 0x0

    const-string/jumbo v3, "com.yelp.android.business.update"

    invoke-static {v3}, Lcom/yelp/android/util/ObjectDirtyEvent;->a(Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {v0, p0, v1}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap$3;-><init>(Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;[Landroid/content/IntentFilter;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->u:Lcom/yelp/android/util/BasicBroadcastReceiver;

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 858
    const-class v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 859
    const/high16 v0, 0x20000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 860
    const/high16 v0, 0x4000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 861
    return-object p1
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/appdata/webrequests/SearchRequest;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 582
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 583
    invoke-static {p1, v0}, Lcom/yelp/android/appdata/o;->a(Lcom/yelp/android/appdata/webrequests/SearchRequest;Landroid/content/Intent;)V

    .line 584
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 585
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 586
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;Lcom/google/android/gms/maps/model/LatLngBounds;)Lcom/google/android/gms/maps/model/LatLngBounds;
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->k:Lcom/google/android/gms/maps/model/LatLngBounds;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;)Lcom/yelp/android/ui/map/YelpMap;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->d:Lcom/yelp/android/ui/map/YelpMap;

    return-object v0
.end method

.method private a(Lcom/yelp/android/appdata/o;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 497
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->b:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 498
    invoke-virtual {p1}, Lcom/yelp/android/appdata/o;->k()Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;

    move-result-object v1

    invoke-interface {v1}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;->l()Ljava/util/List;

    move-result-object v2

    .line 502
    invoke-virtual {p1}, Lcom/yelp/android/appdata/o;->j()Lcom/yelp/android/serializable/Filter;

    move-result-object v3

    .line 503
    if-nez v3, :cond_1

    move-object v1, v0

    .line 504
    :goto_0
    if-nez v3, :cond_2

    .line 505
    :goto_1
    invoke-static {v1, v0, v2}, Lcom/yelp/android/ui/activities/search/d;->a(Lcom/yelp/android/serializable/Distance;Lcom/yelp/android/serializable/Sort;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 507
    if-eqz v2, :cond_3

    .line 508
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;

    .line 509
    invoke-virtual {v0}, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;->e()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v0}, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;->d()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 512
    invoke-virtual {v0}, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;->i()Lcom/yelp/android/serializable/DisplayGenericSearchFilterParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/DisplayGenericSearchFilterParameters;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 514
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 515
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    :cond_0
    :goto_3
    move-object v1, v0

    .line 520
    goto :goto_2

    .line 503
    :cond_1
    invoke-virtual {v3}, Lcom/yelp/android/serializable/Filter;->d()Lcom/yelp/android/serializable/Distance;

    move-result-object v1

    goto :goto_0

    .line 504
    :cond_2
    invoke-virtual {v3}, Lcom/yelp/android/serializable/Filter;->b()Lcom/yelp/android/serializable/Sort;

    move-result-object v0

    goto :goto_1

    :cond_3
    move-object v1, v0

    .line 522
    :cond_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 523
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 524
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 526
    :cond_5
    return-void

    :cond_6
    move-object v0, v1

    goto :goto_3
.end method

.method private a(Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;)V
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x1

    .line 381
    if-nez p1, :cond_1

    .line 481
    :cond_0
    :goto_0
    return-void

    .line 384
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    const-string/jumbo v1, "filters_dialog"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/l;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/dialogs/FiltersDialog;

    .line 386
    if-eqz v0, :cond_2

    .line 387
    invoke-interface {p1}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;->l()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/FiltersDialog;->a(Ljava/util/List;)V

    .line 389
    :cond_2
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->disableLoading()V

    .line 390
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->updateOptionsMenu()V

    .line 391
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->d:Lcom/yelp/android/ui/map/YelpMap;

    invoke-virtual {v0}, Lcom/yelp/android/ui/map/YelpMap;->g()V

    .line 392
    invoke-interface {p1}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;->j()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->g:Ljava/util/List;

    .line 393
    invoke-interface {p1}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;->b()Ljava/util/List;

    move-result-object v2

    .line 395
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_b

    .line 400
    new-instance v3, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 402
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/SearchResultLocalAd;

    .line 403
    invoke-virtual {v0}, Lcom/yelp/android/serializable/SearchResultLocalAd;->e()Lcom/yelp/android/serializable/BusinessSearchResult;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 410
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->h:Lcom/yelp/android/ui/map/i;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->g:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/map/i;->a(Ljava/util/List;)V

    .line 415
    const v0, 0x7fffffff

    .line 416
    invoke-interface {p1}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;->m()Ljava/util/List;

    move-result-object v1

    .line 417
    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 418
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/SearchSeparator;

    .line 419
    invoke-virtual {v0}, Lcom/yelp/android/serializable/SearchSeparator;->a()I

    move-result v5

    if-ge v5, v1, :cond_c

    .line 420
    invoke-virtual {v0}, Lcom/yelp/android/serializable/SearchSeparator;->a()I

    move-result v0

    :goto_3
    move v1, v0

    .line 422
    goto :goto_2

    :cond_4
    move v1, v0

    .line 427
    :cond_5
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 431
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 433
    invoke-interface {p1}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;->g()I

    move-result v0

    .line 434
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v0

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/BusinessSearchResult;

    .line 435
    invoke-virtual {v0}, Lcom/yelp/android/serializable/BusinessSearchResult;->a()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v7

    invoke-virtual {v7}, Lcom/yelp/android/serializable/YelpBusiness;->p()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 436
    if-ge v2, v1, :cond_7

    .line 437
    add-int/lit8 v7, v2, 0x1

    .line 438
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    :cond_6
    :goto_5
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    .line 444
    goto :goto_4

    .line 440
    :cond_7
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 446
    :cond_8
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->d:Lcom/yelp/android/ui/map/YelpMap;

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v2, Lcom/yelp/android/ui/map/l;

    invoke-direct {v2, p0, v4}, Lcom/yelp/android/ui/map/l;-><init>(Landroid/content/Context;Ljava/util/Map;)V

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/map/YelpMap;->a(Ljava/util/List;Lcom/yelp/android/ui/map/a;)V

    .line 451
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 452
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->d:Lcom/yelp/android/ui/map/YelpMap;

    new-instance v1, Lcom/yelp/android/ui/map/m;

    const v2, 0x7f020376

    invoke-direct {v1, v2}, Lcom/yelp/android/ui/map/m;-><init>(I)V

    invoke-virtual {v0, v5, v1, v8}, Lcom/yelp/android/ui/map/YelpMap;->a(Ljava/util/List;Lcom/yelp/android/ui/map/a;Z)V

    .line 458
    :cond_9
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->d:Lcom/yelp/android/ui/map/YelpMap;

    invoke-virtual {v0, v8}, Lcom/yelp/android/ui/map/YelpMap;->setInteractive(Z)V

    .line 461
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 462
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->d:Lcom/yelp/android/ui/map/YelpMap;

    new-instance v1, Lcom/yelp/android/ui/map/m;

    const v2, 0x7f020373

    invoke-direct {v1, v2}, Lcom/yelp/android/ui/map/m;-><init>(I)V

    invoke-virtual {v0, v3, v1, v8}, Lcom/yelp/android/ui/map/YelpMap;->a(Ljava/util/List;Lcom/yelp/android/ui/map/a;Z)V

    .line 467
    :cond_a
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->d:Lcom/yelp/android/ui/map/YelpMap;

    invoke-virtual {v0}, Lcom/yelp/android/ui/map/YelpMap;->f()V

    .line 471
    instance-of v0, p1, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;

    if-eqz v0, :cond_0

    .line 472
    check-cast p1, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;

    invoke-virtual {p1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->n()Lcom/yelp/android/serializable/AndroidAppAnnotation;

    move-result-object v0

    .line 474
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->i:Lcom/yelp/android/util/u;

    invoke-virtual {v1, p0, v0}, Lcom/yelp/android/util/u;->a(Landroid/app/Activity;Lcom/yelp/android/serializable/AndroidAppAnnotation;)V

    goto/16 :goto_0

    .line 477
    :cond_b
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->d:Lcom/yelp/android/ui/map/YelpMap;

    invoke-virtual {v0}, Lcom/yelp/android/ui/map/YelpMap;->g()V

    .line 478
    const v0, 0x7f07029e

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/yelp/android/ui/util/as;->a(Ljava/lang/CharSequence;I)V

    .line 479
    const-string/jumbo v0, "ActivityBusinessListResultsMap"

    const-string/jumbo v1, "Business search returned no results."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/AppData;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_c
    move v0, v1

    goto/16 :goto_3
.end method

.method private a(Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 2

    .prologue
    .line 484
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->d:Lcom/yelp/android/ui/map/YelpMap;

    invoke-virtual {v0}, Lcom/yelp/android/ui/map/YelpMap;->g()V

    .line 485
    invoke-virtual {p1, p0}, Lcom/yelp/android/appdata/webrequests/YelpException;->getMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/as;->a(Ljava/lang/CharSequence;I)V

    .line 486
    return-void
.end method

.method private a(Lcom/yelp/android/appdata/webrequests/eo;)V
    .locals 2

    .prologue
    .line 551
    invoke-virtual {p1}, Lcom/yelp/android/appdata/webrequests/eo;->a()Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    move-result-object v0

    .line 553
    invoke-static {p0, v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a(Landroid/content/Context;Lcom/yelp/android/appdata/webrequests/SearchRequest;)Landroid/content/Intent;

    move-result-object v0

    .line 554
    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 555
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->startActivity(Landroid/content/Intent;)V

    .line 556
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;Lcom/yelp/android/appdata/o;)V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a(Lcom/yelp/android/appdata/o;)V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;)V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->b(Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;)V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a(Lcom/yelp/android/appdata/webrequests/YelpException;)V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;Lcom/yelp/android/appdata/webrequests/eo;)V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a(Lcom/yelp/android/appdata/webrequests/eo;)V

    return-void
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;)Landroid/view/View;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->c:Landroid/view/View;

    return-object v0
.end method

.method private b(Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;)V
    .locals 4

    .prologue
    .line 559
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    const-string/jumbo v1, "search_location_dialog"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/l;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/dialogs/ListDialogFragment;

    .line 567
    if-nez v0, :cond_1

    .line 568
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 569
    invoke-interface {p1}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    .line 570
    invoke-virtual {v0}, Landroid/location/Address;->getFeatureName()Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    check-cast v0, Landroid/os/Parcelable;

    invoke-static {v3, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 572
    :cond_0
    const v0, 0x7f070251

    invoke-static {v0, v1}, Lcom/yelp/android/ui/dialogs/SimpleListDialogFragment;->b(ILjava/util/List;)Lcom/yelp/android/ui/dialogs/ListDialogFragment;

    move-result-object v0

    .line 574
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v1

    const-string/jumbo v2, "search_location_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/dialogs/ListDialogFragment;->show(Landroid/support/v4/app/l;Ljava/lang/String;)V

    .line 578
    :cond_1
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->s:Lcom/yelp/android/ui/dialogs/ListDialogFragment$a;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/ListDialogFragment;->a(Lcom/yelp/android/ui/dialogs/ListDialogFragment$a;)V

    .line 579
    return-void
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;)V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a(Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;)V

    return-void
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;)V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->d()V

    return-void
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;)Lcom/yelp/android/ui/activities/support/b$e;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->n:Lcom/yelp/android/ui/activities/support/b$e;

    return-object v0
.end method

.method private d()V
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a:Lcom/yelp/android/appdata/o;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/o;->h()Lcom/yelp/android/appdata/webrequests/eo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a(Lcom/yelp/android/appdata/webrequests/eo;)V

    .line 533
    return-void
.end method

.method static synthetic e(Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;)Lcom/google/android/gms/maps/c$c;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->q:Lcom/google/android/gms/maps/c$c;

    return-object v0
.end method

.method static synthetic f(Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;)Lcom/google/android/gms/maps/model/LatLngBounds;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->k:Lcom/google/android/gms/maps/model/LatLngBounds;

    return-object v0
.end method

.method static synthetic g(Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->e:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic h(Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;)Ljava/util/List;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->g:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method a([D)Lcom/yelp/android/appdata/webrequests/eo;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 541
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a:Lcom/yelp/android/appdata/o;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/o;->h()Lcom/yelp/android/appdata/webrequests/eo;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/eo;->a(Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/eo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yelp/android/appdata/webrequests/eo;->a([D)Lcom/yelp/android/appdata/webrequests/eo;

    move-result-object v0

    .line 542
    iput-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->k:Lcom/google/android/gms/maps/model/LatLngBounds;

    .line 543
    return-object v0
.end method

.method public a()V
    .locals 3

    .prologue
    .line 170
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->d:Lcom/yelp/android/ui/map/YelpMap;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->r:Lcom/yelp/android/ui/map/e$a;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/map/YelpMap;->setInfoWindowListener(Lcom/yelp/android/ui/map/e$a;)V

    .line 171
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->b()Lcom/yelp/android/appdata/o;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a:Lcom/yelp/android/appdata/o;

    .line 172
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a:Lcom/yelp/android/appdata/o;

    if-nez v0, :cond_0

    .line 173
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->i()Lcom/yelp/android/database/g;

    move-result-object v0

    .line 174
    new-instance v1, Lcom/yelp/android/appdata/o;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->o:Lcom/yelp/android/appdata/webrequests/k$b;

    invoke-virtual {v0}, Lcom/yelp/android/database/g;->e()Lcom/yelp/android/ca/a;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/yelp/android/appdata/o;-><init>(Lcom/yelp/android/appdata/webrequests/k$b;Lcom/yelp/android/ca/a;)V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a:Lcom/yelp/android/appdata/o;

    .line 176
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a:Lcom/yelp/android/appdata/o;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->p:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/o;->registerObserver(Ljava/lang/Object;)V

    .line 177
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a(Landroid/content/Intent;)V

    .line 184
    :goto_0
    return-void

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a:Lcom/yelp/android/appdata/o;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->p:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/o;->registerObserver(Ljava/lang/Object;)V

    .line 180
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->enableLoading()V

    .line 181
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->p:Landroid/database/DataSetObserver;

    invoke-virtual {v0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 182
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->u:Lcom/yelp/android/util/BasicBroadcastReceiver;

    invoke-virtual {v0, p0}, Lcom/yelp/android/util/BasicBroadcastReceiver;->a(Landroid/content/Context;)V

    goto :goto_0
.end method

.method a(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 232
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a:Lcom/yelp/android/appdata/o;

    if-nez v0, :cond_0

    .line 233
    const-string/jumbo v0, "SearchSession null in newSearch()"

    invoke-static {p0, v0}, Lcom/yelp/android/util/YelpLog;->remoteError(Ljava/lang/Object;Ljava/lang/String;)V

    .line 257
    :goto_0
    return-void

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a:Lcom/yelp/android/appdata/o;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/o;->i()V

    .line 239
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a:Lcom/yelp/android/appdata/o;

    invoke-virtual {v0, p1}, Lcom/yelp/android/appdata/o;->a(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 240
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

    .line 241
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->finish()V

    goto :goto_0

    .line 244
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->updateOptionsMenu()V

    .line 245
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a:Lcom/yelp/android/appdata/o;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/o;->k()Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;

    move-result-object v0

    if-nez v0, :cond_4

    .line 247
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a:Lcom/yelp/android/appdata/o;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/o;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 248
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->enableLoading()V

    .line 253
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->u:Lcom/yelp/android/util/BasicBroadcastReceiver;

    invoke-virtual {v0}, Lcom/yelp/android/util/BasicBroadcastReceiver;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 254
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->u:Lcom/yelp/android/util/BasicBroadcastReceiver;

    invoke-virtual {v0, p0}, Lcom/yelp/android/util/BasicBroadcastReceiver;->b(Landroid/content/Context;)V

    .line 256
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->u:Lcom/yelp/android/util/BasicBroadcastReceiver;

    invoke-virtual {v0, p0}, Lcom/yelp/android/util/BasicBroadcastReceiver;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 251
    :cond_4
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->p:Landroid/database/DataSetObserver;

    invoke-virtual {v0}, Landroid/database/DataSetObserver;->onChanged()V

    goto :goto_1
.end method

.method public a(Lcom/yelp/android/appdata/webrequests/eo;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 887
    sget-object v0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;->DEFAULT:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;

    invoke-virtual {p1, v0}, Lcom/yelp/android/appdata/webrequests/eo;->a(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;)Lcom/yelp/android/appdata/webrequests/eo;

    .line 888
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.SEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 889
    invoke-virtual {p1}, Lcom/yelp/android/appdata/webrequests/eo;->a()Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    move-result-object v1

    .line 891
    const/4 v2, 0x0

    invoke-static {v1, v0, v2, p2}, Lcom/yelp/android/appdata/o;->a(Lcom/yelp/android/appdata/webrequests/SearchRequest;Landroid/content/Intent;Lcom/yelp/android/analytics/iris/IriSource;Ljava/lang/String;)V

    .line 892
    const-string/jumbo v1, "mRecenter"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 893
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 894
    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 895
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 896
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->startActivity(Landroid/content/Intent;)V

    .line 897
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/BusinessSearchResult;)V
    .locals 4

    .prologue
    .line 363
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/LocalAd;

    .line 364
    invoke-virtual {p1}, Lcom/yelp/android/serializable/BusinessSearchResult;->a()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v2

    .line 365
    invoke-virtual {v0}, Lcom/yelp/android/serializable/LocalAd;->a()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/yelp/android/serializable/YelpBusiness;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 366
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->AdSearchMapClick:Lcom/yelp/android/analytics/iris/EventIri;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/yelp/android/serializable/LocalAd;->a(Z)Ljava/util/Map;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 367
    sget-object v0, Lcom/yelp/android/appdata/webrequests/TrackOfflineAttributionRequest$OfflineAttributionEventType;->AD_CLICK:Lcom/yelp/android/appdata/webrequests/TrackOfflineAttributionRequest$OfflineAttributionEventType;

    invoke-static {v2, v0}, Lcom/yelp/android/appdata/webrequests/TrackOfflineAttributionRequest;->a(Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/appdata/webrequests/TrackOfflineAttributionRequest$OfflineAttributionEventType;)Z

    .line 373
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a:Lcom/yelp/android/appdata/o;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 374
    :goto_0
    invoke-static {p0, p1, v0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->a(Landroid/content/Context;Lcom/yelp/android/serializable/BusinessSearchResult;Lcom/yelp/android/appdata/webrequests/SearchRequest;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x3f2

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->startActivityForResult(Landroid/content/Intent;I)V

    .line 378
    return-void

    .line 373
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a:Lcom/yelp/android/appdata/o;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/o;->o()Lcom/yelp/android/appdata/webrequests/SearchRequest;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/yelp/android/serializable/Filter;Lcom/yelp/android/serializable/SearchLocation;)V
    .locals 1

    .prologue
    .line 755
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a:Lcom/yelp/android/appdata/o;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/o;->h()Lcom/yelp/android/appdata/webrequests/eo;

    move-result-object v0

    .line 756
    invoke-virtual {v0, p1}, Lcom/yelp/android/appdata/webrequests/eo;->a(Lcom/yelp/android/serializable/Filter;)Lcom/yelp/android/appdata/webrequests/eo;

    .line 757
    if-eqz p2, :cond_0

    .line 758
    invoke-virtual {p2, v0}, Lcom/yelp/android/serializable/SearchLocation;->a(Lcom/yelp/android/appdata/webrequests/eo;)V

    .line 760
    :cond_0
    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a(Lcom/yelp/android/appdata/webrequests/eo;)V

    .line 761
    return-void
.end method

.method protected addStatusView(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 198
    return-void
.end method

.method public b()Lcom/yelp/android/appdata/o;
    .locals 1

    .prologue
    .line 223
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpMapActivity;->getLastCustomNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/o;

    return-object v0
.end method

.method public c()Landroid/content/Context;
    .locals 0

    .prologue
    .line 911
    return-object p0
.end method

.method public disableLoading()V
    .locals 2

    .prologue
    .line 202
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpMapActivity;->disableLoading()V

    .line 203
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->getLoadingPanel()Lcom/yelp/android/ui/panels/PanelLoading;

    move-result-object v0

    .line 204
    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/PanelLoading;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 205
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->d:Lcom/yelp/android/ui/map/YelpMap;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/map/YelpMap;->removeView(Landroid/view/View;)V

    .line 207
    :cond_0
    return-void
.end method

.method public enableLoading()V
    .locals 2

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->getLoadingPanel()Lcom/yelp/android/ui/panels/PanelLoading;

    move-result-object v0

    .line 189
    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/PanelLoading;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_0

    .line 190
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->d:Lcom/yelp/android/ui/map/YelpMap;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/map/YelpMap;->addView(Landroid/view/View;)V

    .line 193
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/PanelLoading;->setVisibility(I)V

    .line 194
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->d:Lcom/yelp/android/ui/map/YelpMap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/map/YelpMap;->setOnCameraUpdate(Lcom/google/android/gms/maps/c$c;)V

    .line 195
    return-void
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 906
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->SearchMap:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getLastCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->b()Lcom/yelp/android/appdata/o;

    move-result-object v0

    return-object v0
.end method

.method protected getLoadingPanel()Lcom/yelp/android/ui/panels/PanelLoading;
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->l:Lcom/yelp/android/ui/panels/PanelLoading;

    if-nez v0, :cond_0

    .line 212
    new-instance v0, Lcom/yelp/android/ui/panels/PanelLoading;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->c()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yelp/android/ui/panels/PanelLoading;-><init>(Landroid/content/Context;)V

    .line 213
    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/PanelLoading;->a()V

    .line 214
    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/PanelLoading;->d()V

    .line 215
    sget-object v1, Lcom/yelp/android/ui/panels/YelpLoadingSpinner;->FINDING_PLACES:Lcom/yelp/android/ui/panels/YelpLoadingSpinner;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/PanelLoading;->setSpinner(Lcom/yelp/android/ui/panels/c;)V

    .line 216
    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->l:Lcom/yelp/android/ui/panels/PanelLoading;

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->l:Lcom/yelp/android/ui/panels/PanelLoading;

    return-object v0
.end method

.method public i()V
    .locals 2

    .prologue
    .line 875
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 876
    invoke-static {p0, v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    .line 877
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a:Lcom/yelp/android/appdata/o;

    if-eqz v1, :cond_0

    .line 878
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a:Lcom/yelp/android/appdata/o;

    invoke-virtual {v1, v0}, Lcom/yelp/android/appdata/o;->b(Landroid/content/Intent;)V

    .line 879
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a:Lcom/yelp/android/appdata/o;

    invoke-virtual {v1}, Lcom/yelp/android/appdata/o;->i()V

    .line 881
    :cond_0
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->startActivity(Landroid/content/Intent;)V

    .line 882
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->finish()V

    .line 883
    return-void
.end method

.method public j()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 725
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a:Lcom/yelp/android/appdata/o;

    if-nez v0, :cond_1

    .line 726
    const-string/jumbo v0, "mSearchSession null in onFilterSelected"

    invoke-static {p0, v0}, Lcom/yelp/android/util/YelpLog;->remoteError(Ljava/lang/Object;Ljava/lang/String;)V

    .line 751
    :cond_0
    :goto_0
    return-void

    .line 730
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a:Lcom/yelp/android/appdata/o;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/o;->k()Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;

    move-result-object v0

    if-eqz v0, :cond_2

    move v3, v1

    .line 733
    :goto_1
    if-eqz v3, :cond_3

    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a:Lcom/yelp/android/appdata/o;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/o;->k()Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;

    move-result-object v0

    invoke-interface {v0}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;->l()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 734
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a:Lcom/yelp/android/appdata/o;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/o;->k()Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;

    move-result-object v0

    invoke-interface {v0}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;->l()Ljava/util/List;

    move-result-object v0

    .line 740
    :goto_2
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v4

    const-string/jumbo v5, "filters_dialog"

    invoke-virtual {v4, v5}, Landroid/support/v4/app/l;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    .line 741
    if-nez v4, :cond_0

    .line 742
    iget-object v4, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a:Lcom/yelp/android/appdata/o;

    invoke-virtual {v4}, Lcom/yelp/android/appdata/o;->j()Lcom/yelp/android/serializable/Filter;

    move-result-object v4

    if-nez v3, :cond_4

    :goto_3
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a:Lcom/yelp/android/appdata/o;

    invoke-virtual {v3}, Lcom/yelp/android/appdata/o;->o()Lcom/yelp/android/appdata/webrequests/SearchRequest;

    move-result-object v3

    invoke-static {v3}, Lcom/yelp/android/serializable/SearchLocation;->a(Lcom/yelp/android/appdata/webrequests/SearchRequest;)Lcom/yelp/android/serializable/SearchLocation;

    move-result-object v3

    invoke-static {v4, v1, v2, v0, v3}, Lcom/yelp/android/ui/dialogs/FiltersDialog;->a(Lcom/yelp/android/serializable/Filter;ZLjava/util/List;Ljava/util/List;Lcom/yelp/android/serializable/SearchLocation;)Lcom/yelp/android/ui/dialogs/FiltersDialog;

    move-result-object v0

    .line 749
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v1

    const-string/jumbo v2, "filters_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/dialogs/FiltersDialog;->show(Landroid/support/v4/app/l;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v3, v2

    .line 730
    goto :goto_1

    .line 736
    :cond_3
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_2

    :cond_4
    move v1, v2

    .line 742
    goto :goto_3
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 765
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a:Lcom/yelp/android/appdata/o;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/o;->k()Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a:Lcom/yelp/android/appdata/o;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/o;->k()Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;

    move-result-object v0

    invoke-interface {v0}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;->i()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public l()Ljava/util/List;
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
    .line 901
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->e:Ljava/util/ArrayList;

    return-object v0
.end method

.method public n()[D
    .locals 2

    .prologue
    .line 916
    const v0, 0x7f070232

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->d:Lcom/yelp/android/ui/map/YelpMap;

    invoke-virtual {v0}, Lcom/yelp/android/ui/map/YelpMap;->getViewableRegion()[D

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public o()I
    .locals 1

    .prologue
    .line 923
    const/16 v0, 0x41f

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 773
    sparse-switch p1, :sswitch_data_0

    .line 813
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/YelpMapActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 816
    :cond_0
    :goto_0
    return-void

    .line 775
    :sswitch_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a:Lcom/yelp/android/appdata/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a:Lcom/yelp/android/appdata/o;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/o;->k()Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 776
    if-nez p2, :cond_1

    .line 777
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a:Lcom/yelp/android/appdata/o;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/o;->k()Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a(Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;)V

    goto :goto_0

    .line 778
    :cond_1
    if-ne p2, v1, :cond_0

    .line 779
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a:Lcom/yelp/android/appdata/o;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/o;->k()Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;

    move-result-object v0

    .line 780
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->i()Lcom/yelp/android/database/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/database/g;->b()Lcom/yelp/android/database/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/database/d;->d()V

    .line 784
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a:Lcom/yelp/android/appdata/o;

    invoke-static {p0, v1}, Lcom/yelp/android/ui/activities/search/d;->a(Landroid/content/Context;Lcom/yelp/android/appdata/o;)V

    .line 785
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a:Lcom/yelp/android/appdata/o;

    invoke-virtual {v1}, Lcom/yelp/android/appdata/o;->h()Lcom/yelp/android/appdata/webrequests/eo;

    move-result-object v1

    invoke-interface {v0}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/appdata/webrequests/eo;->b(Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/eo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a(Lcom/yelp/android/appdata/webrequests/eo;)V

    goto :goto_0

    .line 793
    :sswitch_1
    if-eqz p3, :cond_0

    const-string/jumbo v0, "extra.business"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a:Lcom/yelp/android/appdata/o;

    if-eqz v0, :cond_0

    .line 798
    const-string/jumbo v0, "extra.business"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    .line 799
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a:Lcom/yelp/android/appdata/o;

    invoke-virtual {v1, v0}, Lcom/yelp/android/appdata/o;->a(Lcom/yelp/android/serializable/YelpBusiness;)V

    goto :goto_0

    .line 803
    :sswitch_2
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->updateOptionsMenu()V

    .line 804
    if-ne p2, v1, :cond_0

    .line 805
    const-string/jumbo v0, "extra.location"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->f:Ljava/lang/String;

    .line 806
    const-string/jumbo v0, "extra.search.launch_method"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, p0, v0}, Lcom/yelp/android/ui/activities/search/d;->a(Landroid/content/Intent;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 773
    nop

    :sswitch_data_0
    .sparse-switch
        0x3f2 -> :sswitch_1
        0x41f -> :sswitch_2
        0x420 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 130
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpMapActivity;->onCreate(Landroid/os/Bundle;)V

    .line 132
    const v0, 0x7f030051

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->setContentView(I)V

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->e:Ljava/util/ArrayList;

    .line 134
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->e:Ljava/util/ArrayList;

    const v1, 0x7f070231

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->k:Lcom/google/android/gms/maps/model/LatLngBounds;

    .line 137
    if-eqz p1, :cond_0

    .line 138
    const-string/jumbo v0, "mRecenter"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/LatLngBounds;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->k:Lcom/google/android/gms/maps/model/LatLngBounds;

    .line 141
    :cond_0
    new-instance v0, Lcom/yelp/android/util/u;

    invoke-direct {v0, p0}, Lcom/yelp/android/util/u;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->i:Lcom/yelp/android/util/u;

    .line 142
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->d:Lcom/yelp/android/ui/map/YelpMap;

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->r()Lcom/yelp/android/appdata/LocationService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/LocationService;->c()Landroid/location/Location;

    move-result-object v1

    invoke-static {v1}, Lcom/yelp/android/ui/map/YelpMap;->a(Landroid/location/Location;)Lcom/google/android/gms/maps/GoogleMapOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/map/YelpMap;->setOptions(Lcom/google/android/gms/maps/GoogleMapOptions;)V

    .line 146
    new-instance v0, Lcom/yelp/android/ui/map/i;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/map/i;-><init>(Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->h:Lcom/yelp/android/ui/map/i;

    .line 147
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->d:Lcom/yelp/android/ui/map/YelpMap;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->h:Lcom/yelp/android/ui/map/i;

    invoke-virtual {v0, p1, v1}, Lcom/yelp/android/ui/map/YelpMap;->a(Landroid/os/Bundle;Lcom/yelp/android/ui/map/e;)V

    .line 150
    const v0, 0x7f0f01dd

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/map/YelpMapWrapperLayout;

    .line 151
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->d:Lcom/yelp/android/ui/map/YelpMap;

    invoke-virtual {v1}, Lcom/yelp/android/ui/map/YelpMap;->getMapView()Lcom/google/android/gms/maps/MapView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/maps/MapView;->getMap()Lcom/google/android/gms/maps/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/map/YelpMapWrapperLayout;->setup(Lcom/google/android/gms/maps/c;)V

    .line 152
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->h:Lcom/yelp/android/ui/map/i;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/map/i;->a(Lcom/yelp/android/ui/map/YelpMapWrapperLayout;)V

    .line 153
    const v0, 0x7f0f01de

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->c:Landroid/view/View;

    .line 154
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->c:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 155
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->c:Landroid/view/View;

    const v1, 0x7f0f01df

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 156
    new-instance v1, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap$1;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap$1;-><init>(Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2

    .prologue
    .line 336
    .line 337
    instance-of v0, p2, Lcom/yelp/android/ui/panels/e;

    if-eqz v0, :cond_0

    .line 338
    check-cast p2, Lcom/yelp/android/ui/panels/e;

    invoke-virtual {p2}, Lcom/yelp/android/ui/panels/e;->getBusinessSearchResult()Lcom/yelp/android/serializable/BusinessSearchResult;

    move-result-object v0

    .line 342
    invoke-virtual {v0}, Lcom/yelp/android/serializable/BusinessSearchResult;->a()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->z()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 343
    const v1, 0x7f02008e

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderIcon(I)Landroid/view/ContextMenu;

    .line 344
    invoke-static {p0, p1, v0}, Lcom/yelp/android/ui/util/ab;->a(Landroid/content/Context;Landroid/view/ContextMenu;Lcom/yelp/android/serializable/BusinessSearchResult;)V

    .line 345
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 820
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpMapActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 821
    invoke-static {p0, p1}, Lcom/yelp/android/ui/activities/search/d;->a(Landroid/support/v7/app/ActionBarActivity;Landroid/view/Menu;)V

    .line 822
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 846
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpMapActivity;->onDestroy()V

    .line 847
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->u:Lcom/yelp/android/util/BasicBroadcastReceiver;

    invoke-virtual {v0, p0}, Lcom/yelp/android/util/BasicBroadcastReceiver;->b(Landroid/content/Context;)V

    .line 848
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 866
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 867
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->i()V

    .line 868
    const/4 v0, 0x1

    .line 870
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
    .line 311
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpMapActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 312
    const-string/jumbo v0, "query"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 313
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a:Lcom/yelp/android/appdata/o;

    if-eqz v1, :cond_0

    .line 314
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a:Lcom/yelp/android/appdata/o;

    invoke-virtual {v1}, Lcom/yelp/android/appdata/o;->h()Lcom/yelp/android/appdata/webrequests/eo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yelp/android/appdata/webrequests/eo;->b(Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/eo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/eo;->a()Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a(Landroid/content/Context;Lcom/yelp/android/appdata/webrequests/SearchRequest;)Landroid/content/Intent;

    move-result-object p1

    .line 318
    invoke-static {p0, p1}, Lcom/yelp/android/ui/activities/search/d;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 321
    :cond_0
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->setIntent(Landroid/content/Intent;)V

    .line 322
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a(Landroid/content/Intent;)V

    .line 323
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 833
    invoke-static {p0, p1}, Lcom/yelp/android/ui/activities/search/d;->a(Landroid/app/Activity;Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 834
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpMapActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 836
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 274
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpMapActivity;->onPause()V

    .line 276
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 277
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a:Lcom/yelp/android/appdata/o;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a:Lcom/yelp/android/appdata/o;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/o;->unregisterAll()V

    .line 279
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a:Lcom/yelp/android/appdata/o;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/o;->i()V

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->d:Lcom/yelp/android/ui/map/YelpMap;

    invoke-virtual {v0}, Lcom/yelp/android/ui/map/YelpMap;->b()V

    .line 283
    const-string/jumbo v0, "continue_last_order_info_request"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->j:Lcom/yelp/android/appdata/webrequests/aw;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->freezeRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 284
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 827
    invoke-static {p0, p1}, Lcom/yelp/android/ui/activities/search/d;->a(Landroid/content/Context;Landroid/view/Menu;)V

    .line 828
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpMapActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 261
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpMapActivity;->onResume()V

    .line 262
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->d:Lcom/yelp/android/ui/map/YelpMap;

    invoke-virtual {v0}, Lcom/yelp/android/ui/map/YelpMap;->c()V

    .line 263
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->a(Lcom/yelp/android/analytics/a;Landroid/content/Context;)Z

    .line 264
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->setSearchHotButtonSelected(Z)V

    .line 265
    const-string/jumbo v0, "continue_last_order_info_request"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->j:Lcom/yelp/android/appdata/webrequests/aw;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->t:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->thawRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/aw;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->j:Lcom/yelp/android/appdata/webrequests/aw;

    .line 270
    return-void
.end method

.method public onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a:Lcom/yelp/android/appdata/o;

    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 302
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpMapActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 303
    const-string/jumbo v0, "mRecenter"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 304
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a:Lcom/yelp/android/appdata/o;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a:Lcom/yelp/android/appdata/o;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/o;->b(Landroid/content/Intent;)V

    .line 307
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 288
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpMapActivity;->onStart()V

    .line 289
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->i:Lcom/yelp/android/util/u;

    invoke-virtual {v0}, Lcom/yelp/android/util/u;->a()V

    .line 290
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 293
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpMapActivity;->onStop()V

    .line 294
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->i:Lcom/yelp/android/util/u;

    invoke-virtual {v0}, Lcom/yelp/android/util/u;->b()V

    .line 295
    return-void
.end method

.method public onSupportContentChanged()V
    .locals 1

    .prologue
    .line 328
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpMapActivity;->onSupportContentChanged()V

    .line 329
    const v0, 0x7f0f01db

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->b:Landroid/widget/TextView;

    .line 331
    const v0, 0x7f0f01a1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/map/YelpMap;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->d:Lcom/yelp/android/ui/map/YelpMap;

    .line 332
    return-void
.end method

.method public p()Lcom/yelp/android/appdata/o;
    .locals 1

    .prologue
    .line 841
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a:Lcom/yelp/android/appdata/o;

    return-object v0
.end method

.method protected setHotButtonListeners()V
    .locals 2

    .prologue
    .line 349
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpMapActivity;->setHotButtonListeners()V

    .line 350
    const v0, 0x7f0f0388

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap$4;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap$4;-><init>(Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 359
    return-void
.end method
