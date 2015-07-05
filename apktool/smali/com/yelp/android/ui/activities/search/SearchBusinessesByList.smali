.class public Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;
.super Lcom/yelp/android/ui/util/YelpListActivity;
.source "SearchBusinessesByList.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/search/ax;
.implements Lcom/yelp/android/ui/activities/search/ay;
.implements Lcom/yelp/android/ui/activities/support/o;
.implements Lcom/yelp/android/ui/dialogs/aj;
.implements Lcom/yelp/android/ui/panels/aa;


# static fields
.field private static q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/SearchResultLocalAd;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Lcom/yelp/android/appdata/ap;

.field private b:Lcom/yelp/android/ui/util/bs;

.field private c:Lcom/yelp/android/ui/panels/businesssearch/j;

.field private d:Lcom/yelp/android/ui/panels/businesssearch/j;

.field private e:Lcom/yelp/android/ui/panels/businesssearch/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/ui/panels/businesssearch/g",
            "<",
            "Lcom/yelp/android/serializable/BusinessSearchResult;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/yelp/android/ui/util/h;

.field private g:Lcom/yelp/android/ui/util/h;

.field private h:Lcom/yelp/android/ui/util/h;

.field private i:Lcom/yelp/android/ui/util/h;

.field private j:Lcom/yelp/android/ui/panels/businesssearch/SpellingSuggestPanel;

.field private k:Ljava/lang/String;

.field private l:Lcom/yelp/android/ui/activities/search/l;

.field private m:Lcom/yelp/android/ui/activities/search/SearchUtils$DirtyBusinessListener;

.field private n:Landroid/view/View;

.field private o:Lcom/yelp/android/ui/panels/businesssearch/SpellingSuggestPanel;

.field private p:Landroid/view/View;

.field private final r:Landroid/widget/AdapterView$OnItemClickListener;

.field private final s:Lcom/yelp/android/appdata/webrequests/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/j",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final t:Lcom/yelp/android/util/BasicBroadcastReceiver;

.field private final u:Landroid/view/View$OnClickListener;

.field private final v:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/yelp/android/ui/util/YelpListActivity;-><init>()V

    .line 591
    new-instance v0, Lcom/yelp/android/ui/activities/search/g;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/search/g;-><init>(Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->r:Landroid/widget/AdapterView$OnItemClickListener;

    .line 647
    new-instance v0, Lcom/yelp/android/ui/activities/search/h;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/search/h;-><init>(Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->s:Lcom/yelp/android/appdata/webrequests/j;

    .line 1231
    new-instance v0, Lcom/yelp/android/ui/activities/search/i;

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "com.yelp.android.offer_redeemed"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/yelp/android/ui/activities/search/i;-><init>(Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->t:Lcom/yelp/android/util/BasicBroadcastReceiver;

    .line 1305
    new-instance v0, Lcom/yelp/android/ui/activities/search/j;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/search/j;-><init>(Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->u:Landroid/view/View$OnClickListener;

    .line 1326
    new-instance v0, Lcom/yelp/android/ui/activities/search/k;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/search/k;-><init>(Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->v:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 151
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 155
    const-class v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 156
    const/high16 v0, 0x20000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 157
    const/high16 v0, 0x4000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 158
    return-object p1
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/appdata/webrequests/SearchRequest;)Landroid/content/Intent;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 171
    invoke-static {p0, p1, v0, v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a(Landroid/content/Context;Lcom/yelp/android/appdata/webrequests/SearchRequest;Lcom/yelp/android/analytics/iris/IriSource;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/appdata/webrequests/SearchRequest;Lcom/yelp/android/analytics/iris/IriSource;Ljava/lang/String;)Landroid/content/Intent;
    .locals 4

    .prologue
    .line 185
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.SEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 186
    sget-object v1, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->CHECKINS:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    .line 188
    invoke-interface {p1}, Lcom/yelp/android/appdata/webrequests/SearchRequest;->getSearchMode()Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;

    move-result-object v2

    .line 189
    sget-object v3, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;->NEARBY:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;

    if-eq v2, v3, :cond_0

    invoke-interface {p1}, Lcom/yelp/android/appdata/webrequests/SearchRequest;->getTermNear()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 190
    :cond_0
    sget-object v2, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->DISTANCE:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 192
    :cond_1
    const-string/jumbo v2, "extra.source"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 193
    const-string/jumbo v2, "extra.search_launch_method"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 195
    const-class v2, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 196
    const-string/jumbo v2, "extra.displayFeatures"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 197
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 198
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 199
    invoke-static {p1, v0, p2, p3}, Lcom/yelp/android/appdata/ap;->a(Lcom/yelp/android/appdata/webrequests/SearchRequest;Landroid/content/Intent;Lcom/yelp/android/analytics/iris/IriSource;Ljava/lang/String;)V

    .line 200
    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/database/savedsearch/k;)Landroid/content/Intent;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 162
    new-instance v0, Lcom/yelp/android/appdata/webrequests/fv;

    invoke-direct {v0}, Lcom/yelp/android/appdata/webrequests/fv;-><init>()V

    sget-object v1, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;->DEFAULT:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/fv;->a(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;)Lcom/yelp/android/appdata/webrequests/fv;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yelp/android/database/savedsearch/k;->a()Lcom/yelp/android/serializable/Filter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/fv;->a(Lcom/yelp/android/serializable/Filter;)Lcom/yelp/android/appdata/webrequests/fv;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yelp/android/database/savedsearch/k;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/fv;->b(Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/fv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/fv;->a()Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    move-result-object v0

    .line 167
    invoke-static {p0, v0, v2, v2}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a(Landroid/content/Context;Lcom/yelp/android/appdata/webrequests/SearchRequest;Lcom/yelp/android/analytics/iris/IriSource;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;)Lcom/yelp/android/ui/panels/businesssearch/g;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->e:Lcom/yelp/android/ui/panels/businesssearch/g;

    return-object v0
.end method

.method static synthetic a(Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 119
    sput-object p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->q:Ljava/util/List;

    return-object p0
.end method

.method private final a(Landroid/content/Context;Lcom/yelp/android/ui/panels/businesssearch/SpellingSuggestPanel;)V
    .locals 2

    .prologue
    .line 1334
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a:Lcom/yelp/android/appdata/ap;

    invoke-static {p1, v0}, Lcom/yelp/android/ui/activities/search/SearchUtils;->a(Landroid/content/Context;Lcom/yelp/android/appdata/ap;)V

    .line 1335
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->i()Lcom/yelp/android/database/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/database/q;->c()Lcom/yelp/android/database/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/database/l;->d()V

    .line 1337
    invoke-virtual {p2}, Lcom/yelp/android/ui/panels/businesssearch/SpellingSuggestPanel;->getSuggestion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1338
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a:Lcom/yelp/android/appdata/ap;

    invoke-virtual {v1}, Lcom/yelp/android/appdata/ap;->i()Lcom/yelp/android/appdata/webrequests/fv;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yelp/android/appdata/webrequests/fv;->b(Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/fv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/fv;->a()Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    move-result-object v0

    .line 1340
    invoke-static {p1, v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a(Landroid/content/Context;Lcom/yelp/android/appdata/webrequests/SearchRequest;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->startActivity(Landroid/content/Intent;)V

    .line 1341
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;Landroid/content/Context;Lcom/yelp/android/ui/panels/businesssearch/SpellingSuggestPanel;)V
    .locals 0

    .prologue
    .line 119
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a(Landroid/content/Context;Lcom/yelp/android/ui/panels/businesssearch/SpellingSuggestPanel;)V

    return-void
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;)Lcom/yelp/android/ui/panels/businesssearch/SpellingSuggestPanel;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->j:Lcom/yelp/android/ui/panels/businesssearch/SpellingSuggestPanel;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;)Lcom/yelp/android/ui/panels/businesssearch/SpellingSuggestPanel;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->o:Lcom/yelp/android/ui/panels/businesssearch/SpellingSuggestPanel;

    return-object v0
.end method

.method static synthetic p()Ljava/util/List;
    .locals 1

    .prologue
    .line 119
    sget-object v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->q:Ljava/util/List;

    return-object v0
.end method

.method private u()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 546
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a:Lcom/yelp/android/appdata/ap;

    if-nez v0, :cond_1

    .line 547
    const-string/jumbo v0, "mSearchSession null in showDialog"

    invoke-static {p0, v0}, Lcom/yelp/android/util/YelpLog;->error(Ljava/lang/Object;Ljava/lang/String;)V

    .line 567
    :cond_0
    :goto_0
    return-void

    .line 551
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a:Lcom/yelp/android/appdata/ap;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/ap;->l()Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;

    move-result-object v0

    if-eqz v0, :cond_2

    move v3, v1

    .line 554
    :goto_1
    if-eqz v3, :cond_3

    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a:Lcom/yelp/android/appdata/ap;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/ap;->l()Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;

    move-result-object v0

    invoke-interface {v0}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;->getSuggestedFilters()Lcom/yelp/android/serializable/AttributeFilters;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 555
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a:Lcom/yelp/android/appdata/ap;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/ap;->l()Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;

    move-result-object v0

    invoke-interface {v0}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;->getSuggestedFilters()Lcom/yelp/android/serializable/AttributeFilters;

    move-result-object v0

    .line 561
    :goto_2
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    const-string/jumbo v5, "filters_dialog"

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    .line 562
    if-nez v4, :cond_0

    .line 563
    iget-object v4, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a:Lcom/yelp/android/appdata/ap;

    invoke-virtual {v4}, Lcom/yelp/android/appdata/ap;->k()Lcom/yelp/android/serializable/Filter;

    move-result-object v4

    if-nez v3, :cond_4

    :goto_3
    invoke-static {v4, v0, v1}, Lcom/yelp/android/ui/dialogs/FiltersDialog;->a(Lcom/yelp/android/serializable/Filter;Lcom/yelp/android/serializable/AttributeFilters;Z)Lcom/yelp/android/ui/dialogs/FiltersDialog;

    move-result-object v0

    .line 565
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "filters_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/dialogs/FiltersDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v3, v2

    .line 551
    goto :goto_1

    .line 557
    :cond_3
    new-instance v0, Lcom/yelp/android/serializable/AttributeFilters;

    invoke-direct {v0}, Lcom/yelp/android/serializable/AttributeFilters;-><init>()V

    goto :goto_2

    :cond_4
    move v1, v2

    .line 563
    goto :goto_3
.end method

.method private v()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 579
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 580
    if-nez v1, :cond_0

    .line 581
    :goto_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->getFirstVisiblePosition()I

    move-result v1

    .line 583
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/appdata/AppData;->f()Lcom/yelp/android/appdata/i;

    move-result-object v2

    .line 584
    invoke-virtual {v2, v1, v0}, Lcom/yelp/android/appdata/i;->a(II)V

    .line 585
    return-void

    .line 580
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method


# virtual methods
.method a(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 686
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a:Lcom/yelp/android/appdata/ap;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/ap;->j()V

    .line 688
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->e:Lcom/yelp/android/ui/panels/businesssearch/g;

    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/businesssearch/g;->clear()V

    .line 690
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->e:Lcom/yelp/android/ui/panels/businesssearch/g;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    const/4 v2, 0x0

    sget-object v3, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->DISTANCE:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/businesssearch/g;->b([Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;)V

    .line 693
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a:Lcom/yelp/android/appdata/ap;

    invoke-virtual {v0, p1}, Lcom/yelp/android/appdata/ap;->a(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 694
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Error initializing search intent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yelp/android/util/YelpLog;->error(Ljava/lang/Object;Ljava/lang/String;)V

    .line 695
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->finish()V

    .line 720
    :goto_0
    return-void

    .line 700
    :cond_0
    const-string/jumbo v0, "extra.displayFeatures"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 702
    if-eqz v0, :cond_1

    .line 703
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->e:Lcom/yelp/android/ui/panels/businesssearch/g;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/panels/businesssearch/g;->c(Ljava/util/Collection;)V

    .line 704
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->c:Lcom/yelp/android/ui/panels/businesssearch/j;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/panels/businesssearch/j;->c(Ljava/util/Collection;)V

    .line 705
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->d:Lcom/yelp/android/ui/panels/businesssearch/j;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/panels/businesssearch/j;->c(Ljava/util/Collection;)V

    .line 708
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a:Lcom/yelp/android/appdata/ap;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/ap;->l()Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;

    move-result-object v0

    if-nez v0, :cond_4

    .line 709
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->enableLoading()V

    .line 711
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a:Lcom/yelp/android/appdata/ap;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/ap;->b()Z

    .line 715
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->m:Lcom/yelp/android/ui/activities/search/SearchUtils$DirtyBusinessListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->m:Lcom/yelp/android/ui/activities/search/SearchUtils$DirtyBusinessListener;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/search/SearchUtils$DirtyBusinessListener;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 716
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->m:Lcom/yelp/android/ui/activities/search/SearchUtils$DirtyBusinessListener;

    invoke-virtual {v0, p0}, Lcom/yelp/android/ui/activities/search/SearchUtils$DirtyBusinessListener;->b(Landroid/content/Context;)V

    .line 718
    :cond_3
    new-instance v0, Lcom/yelp/android/ui/activities/search/SearchUtils$DirtyBusinessListener;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a:Lcom/yelp/android/appdata/ap;

    invoke-direct {v0, v1}, Lcom/yelp/android/ui/activities/search/SearchUtils$DirtyBusinessListener;-><init>(Lcom/yelp/android/appdata/ap;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->m:Lcom/yelp/android/ui/activities/search/SearchUtils$DirtyBusinessListener;

    .line 719
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->m:Lcom/yelp/android/ui/activities/search/SearchUtils$DirtyBusinessListener;

    invoke-virtual {v0, p0}, Lcom/yelp/android/ui/activities/search/SearchUtils$DirtyBusinessListener;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 712
    :cond_4
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->l:Lcom/yelp/android/ui/activities/search/l;

    if-eqz v0, :cond_2

    .line 713
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->l:Lcom/yelp/android/ui/activities/search/l;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/search/l;->onChanged()V

    goto :goto_1
.end method

.method public a(Lcom/yelp/android/appdata/webrequests/fv;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1262
    invoke-virtual {p1}, Lcom/yelp/android/appdata/webrequests/fv;->a()Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p2}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a(Landroid/content/Context;Lcom/yelp/android/appdata/webrequests/SearchRequest;Lcom/yelp/android/analytics/iris/IriSource;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1264
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->startActivity(Landroid/content/Intent;)V

    .line 1265
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/Filter;)V
    .locals 2

    .prologue
    .line 538
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a:Lcom/yelp/android/appdata/ap;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/ap;->i()Lcom/yelp/android/appdata/webrequests/fv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yelp/android/appdata/webrequests/fv;->a(Lcom/yelp/android/serializable/Filter;)Lcom/yelp/android/appdata/webrequests/fv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/fv;->a()Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a(Landroid/content/Context;Lcom/yelp/android/appdata/webrequests/SearchRequest;)Landroid/content/Intent;

    move-result-object v0

    .line 540
    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 541
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a(Landroid/content/Intent;)V

    .line 542
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 798
    sget-object v0, Lcom/yelp/android/util/ErrorType;->NO_LOCATION:Lcom/yelp/android/util/ErrorType;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->populateError(Lcom/yelp/android/util/ErrorType;)V

    .line 799
    if-eqz p1, :cond_0

    .line 800
    invoke-static {p0}, Lcom/yelp/android/ui/activities/search/SearchUtils;->a(Landroid/app/Activity;)V

    .line 802
    :cond_0
    return-void
.end method

.method public c()Lcom/yelp/android/appdata/ap;
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a:Lcom/yelp/android/appdata/ap;

    return-object v0
.end method

.method public clearError()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 773
    invoke-super {p0}, Lcom/yelp/android/ui/util/YelpListActivity;->clearError()V

    .line 774
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->n:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 775
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->n:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->removeStatusView(Landroid/view/View;)V

    .line 776
    iput-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->n:Landroid/view/View;

    .line 778
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->o:Lcom/yelp/android/ui/panels/businesssearch/SpellingSuggestPanel;

    if-eqz v0, :cond_1

    .line 779
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->o:Lcom/yelp/android/ui/panels/businesssearch/SpellingSuggestPanel;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->removeStatusView(Landroid/view/View;)V

    .line 780
    iput-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->o:Lcom/yelp/android/ui/panels/businesssearch/SpellingSuggestPanel;

    .line 782
    :cond_1
    return-void
.end method

.method public enableLoading()V
    .locals 2

    .prologue
    .line 786
    invoke-super {p0}, Lcom/yelp/android/ui/util/YelpListActivity;->enableLoading()V

    .line 787
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->getLoadingPanel()Lcom/yelp/android/ui/panels/PanelLoading;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/ui/panels/YelpLoadingSpinner;->FINDING_PLACES:Lcom/yelp/android/ui/panels/YelpLoadingSpinner;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/PanelLoading;->setSpinner(Lcom/yelp/android/ui/panels/y;)V

    .line 788
    return-void
.end method

.method public f()Lcom/yelp/android/appdata/ap;
    .locals 1

    .prologue
    .line 442
    invoke-super {p0}, Lcom/yelp/android/ui/util/YelpListActivity;->getLastCustomNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/ap;

    return-object v0
.end method

.method public g()V
    .locals 2

    .prologue
    .line 468
    const/16 v0, 0x3fe

    invoke-static {p0, v0}, Lcom/yelp/android/ui/map/g;->a(Landroid/app/Activity;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 477
    :goto_0
    return-void

    .line 472
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 473
    invoke-static {p0, v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    .line 474
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a:Lcom/yelp/android/appdata/ap;

    invoke-virtual {v1, v0}, Lcom/yelp/android/appdata/ap;->b(Landroid/content/Intent;)V

    .line 475
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->startActivity(Landroid/content/Intent;)V

    .line 476
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a:Lcom/yelp/android/appdata/ap;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/ap;->j()V

    goto :goto_0
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 1257
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->SearchList:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getLastCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->f()Lcom/yelp/android/appdata/ap;

    move-result-object v0

    return-object v0
.end method

.method public h()V
    .locals 0

    .prologue
    .line 533
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->u()V

    .line 534
    return-void
.end method

.method public j()V
    .locals 0

    .prologue
    .line 571
    invoke-static {p0}, Lcom/yelp/android/ui/activities/search/SearchUtils;->b(Landroid/app/Activity;)V

    .line 572
    return-void
.end method

.method public k()Ljava/util/List;
    .locals 3
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
    .line 1269
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701e6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1270
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1271
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1273
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a:Lcom/yelp/android/appdata/ap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a:Lcom/yelp/android/appdata/ap;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/ap;->p()Lcom/yelp/android/appdata/webrequests/SearchRequest;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a:Lcom/yelp/android/appdata/ap;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/ap;->n()[D

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1275
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0701e7

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1277
    :cond_0
    return-object v1
.end method

.method public k_()V
    .locals 1

    .prologue
    .line 806
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a(Landroid/content/Intent;)V

    .line 807
    return-void
.end method

.method public l()Landroid/content/Context;
    .locals 0

    .prologue
    .line 1282
    return-object p0
.end method

.method public m()[D
    .locals 2

    .prologue
    .line 1287
    const v0, 0x7f0701e7

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a:Lcom/yelp/android/appdata/ap;

    if-eqz v0, :cond_0

    .line 1289
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a:Lcom/yelp/android/appdata/ap;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/ap;->n()[D

    move-result-object v0

    .line 1291
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m_()V
    .locals 1

    .prologue
    .line 792
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->enableLoading()V

    .line 793
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a:Lcom/yelp/android/appdata/ap;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/ap;->d()Z

    .line 794
    return-void
.end method

.method public n()I
    .locals 1

    .prologue
    .line 1297
    const/16 v0, 0x418

    return v0
.end method

.method public o()Lcom/yelp/android/appdata/ap;
    .locals 1

    .prologue
    .line 1302
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a:Lcom/yelp/android/appdata/ap;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 488
    sparse-switch p1, :sswitch_data_0

    .line 528
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/util/YelpListActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 529
    return-void

    .line 490
    :sswitch_0
    if-eqz p2, :cond_1

    if-nez p3, :cond_2

    .line 491
    :cond_1
    sget-object v0, Lcom/yelp/android/util/ErrorType;->NO_RESULTS:Lcom/yelp/android/util/ErrorType;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->populateError(Lcom/yelp/android/util/ErrorType;)V

    goto :goto_0

    .line 492
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a:Lcom/yelp/android/appdata/ap;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/ap;->l()Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 493
    invoke-static {p3}, Lcom/yelp/android/ui/dialogs/ChoiceDialog;->a(Landroid/content/Intent;)I

    move-result v0

    .line 494
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a:Lcom/yelp/android/appdata/ap;

    invoke-virtual {v1}, Lcom/yelp/android/appdata/ap;->l()Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;

    move-result-object v1

    invoke-interface {v1}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;->getAmbiguousLocations()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    .line 496
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a:Lcom/yelp/android/appdata/ap;

    invoke-static {p0, v0, v1}, Lcom/yelp/android/ui/activities/search/SearchUtils;->a(Landroid/content/Context;Landroid/location/Address;Lcom/yelp/android/appdata/ap;)V

    .line 497
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a:Lcom/yelp/android/appdata/ap;

    invoke-virtual {v1}, Lcom/yelp/android/appdata/ap;->i()Lcom/yelp/android/appdata/webrequests/fv;

    move-result-object v1

    invoke-virtual {v0}, Landroid/location/Address;->getFeatureName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/appdata/webrequests/fv;->a(Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/fv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/fv;->a()Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a(Landroid/content/Context;Lcom/yelp/android/appdata/webrequests/SearchRequest;)Landroid/content/Intent;

    move-result-object v0

    .line 500
    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 501
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a(Landroid/content/Intent;)V

    goto :goto_0

    .line 505
    :sswitch_1
    if-eqz p3, :cond_0

    const-string/jumbo v0, "extra.business"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 508
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a:Lcom/yelp/android/appdata/ap;

    const-string/jumbo v0, "extra.business"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1, v0}, Lcom/yelp/android/appdata/ap;->a(Lcom/yelp/android/serializable/YelpBusiness;)V

    goto :goto_0

    .line 513
    :sswitch_2
    if-ne p2, v0, :cond_3

    .line 514
    const-string/jumbo v0, "extra.location"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->k:Ljava/lang/String;

    .line 515
    const-string/jumbo v0, "extra.search.launch_method"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, p0, v0}, Lcom/yelp/android/ui/activities/search/SearchUtils;->a(Landroid/content/Intent;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 518
    :cond_3
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->updateOptionsMenu()V

    goto/16 :goto_0

    .line 522
    :sswitch_3
    if-ne p2, v0, :cond_0

    .line 523
    const v0, 0x7f0705e0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/cr;->a(II)V

    .line 524
    const/16 v0, 0x3f3

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->removeDialog(I)V

    goto/16 :goto_0

    .line 488
    nop

    :sswitch_data_0
    .sparse-switch
        0x3ed -> :sswitch_1
        0x3f3 -> :sswitch_3
        0x3f4 -> :sswitch_0
        0x418 -> :sswitch_2
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 18

    .prologue
    .line 205
    invoke-super/range {p0 .. p1}, Lcom/yelp/android/ui/util/YelpListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 207
    if-eqz p1, :cond_0

    .line 208
    new-instance v2, Lcom/yelp/android/ui/panels/businesssearch/g;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lcom/yelp/android/ui/panels/businesssearch/g;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->e:Lcom/yelp/android/ui/panels/businesssearch/g;

    .line 215
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->f()Lcom/yelp/android/appdata/ap;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a:Lcom/yelp/android/appdata/ap;

    .line 216
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a:Lcom/yelp/android/appdata/ap;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a:Lcom/yelp/android/appdata/ap;

    invoke-virtual {v2}, Lcom/yelp/android/appdata/ap;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 217
    invoke-virtual/range {p0 .. p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->enableLoading()V

    .line 220
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a:Lcom/yelp/android/appdata/ap;

    if-eqz v2, :cond_2

    if-eqz p1, :cond_2

    .line 221
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a:Lcom/yelp/android/appdata/ap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->s:Lcom/yelp/android/appdata/webrequests/j;

    invoke-virtual {v2, v3}, Lcom/yelp/android/appdata/ap;->a(Lcom/yelp/android/appdata/webrequests/j;)V

    .line 224
    :cond_2
    new-instance v2, Lcom/yelp/android/ui/util/bs;

    invoke-direct {v2}, Lcom/yelp/android/ui/util/bs;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->b:Lcom/yelp/android/ui/util/bs;

    .line 227
    new-instance v3, Ljava/util/HashSet;

    const/4 v2, 0x7

    new-array v2, v2, [Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    const/4 v4, 0x0

    sget-object v5, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->ALTERNATE_NAMES:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    aput-object v5, v2, v4

    const/4 v4, 0x1

    sget-object v5, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->RATING:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    aput-object v5, v2, v4

    const/4 v4, 0x2

    sget-object v5, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->CATEGORY:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    aput-object v5, v2, v4

    const/4 v4, 0x3

    sget-object v5, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->PRICE:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    aput-object v5, v2, v4

    const/4 v4, 0x4

    sget-object v5, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->ADDRESS:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    aput-object v5, v2, v4

    const/4 v4, 0x5

    sget-object v5, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->BOOKMARK:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    aput-object v5, v2, v4

    const/4 v4, 0x6

    sget-object v5, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->AD:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    aput-object v5, v2, v4

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 235
    new-instance v2, Lcom/yelp/android/ui/panels/businesssearch/j;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/yelp/android/ui/panels/businesssearch/j;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->c:Lcom/yelp/android/ui/panels/businesssearch/j;

    .line 236
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->c:Lcom/yelp/android/ui/panels/businesssearch/j;

    invoke-virtual {v2, v3}, Lcom/yelp/android/ui/panels/businesssearch/j;->c(Ljava/util/Collection;)V

    .line 237
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->b:Lcom/yelp/android/ui/util/bs;

    const v4, 0x7f0c003b

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->c:Lcom/yelp/android/ui/panels/businesssearch/j;

    invoke-static {v5}, Lcom/yelp/android/ui/util/bw;->a(Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/bw;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yelp/android/ui/util/bw;->a()Lcom/yelp/android/ui/util/bv;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/yelp/android/ui/util/bs;->a(ILcom/yelp/android/ui/util/bv;)V

    .line 239
    new-instance v2, Lcom/yelp/android/ui/util/h;

    const/4 v4, 0x0

    new-array v4, v4, [Landroid/view/View;

    invoke-direct {v2, v4}, Lcom/yelp/android/ui/util/h;-><init>([Landroid/view/View;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->h:Lcom/yelp/android/ui/util/h;

    .line 240
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->b:Lcom/yelp/android/ui/util/bs;

    const v4, 0x7f0c0038

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->h:Lcom/yelp/android/ui/util/h;

    invoke-virtual {v2, v4, v5}, Lcom/yelp/android/ui/util/bs;->a(ILandroid/widget/BaseAdapter;)V

    .line 243
    new-instance v2, Lcom/yelp/android/ui/panels/businesssearch/j;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/yelp/android/ui/panels/businesssearch/j;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->d:Lcom/yelp/android/ui/panels/businesssearch/j;

    .line 246
    new-instance v2, Lcom/yelp/android/ui/panels/businesssearch/SpellingSuggestPanel;

    invoke-virtual/range {p0 .. p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->l()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/yelp/android/ui/panels/businesssearch/SpellingSuggestPanel;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->j:Lcom/yelp/android/ui/panels/businesssearch/SpellingSuggestPanel;

    .line 250
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v4, 0x7f0300e9

    invoke-virtual/range {p0 .. p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->p:Landroid/view/View;

    .line 253
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->p:Landroid/view/View;

    new-instance v4, Landroid/widget/AbsListView$LayoutParams;

    invoke-virtual/range {p0 .. p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/AbsListView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 256
    new-instance v2, Lcom/yelp/android/ui/util/h;

    const/4 v4, 0x0

    new-array v4, v4, [Landroid/view/View;

    invoke-direct {v2, v4}, Lcom/yelp/android/ui/util/h;-><init>([Landroid/view/View;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->f:Lcom/yelp/android/ui/util/h;

    .line 257
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->b:Lcom/yelp/android/ui/util/bs;

    const v4, 0x7f0c0039

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->f:Lcom/yelp/android/ui/util/h;

    invoke-virtual {v2, v4, v5}, Lcom/yelp/android/ui/util/bs;->a(ILandroid/widget/BaseAdapter;)V

    .line 259
    new-instance v2, Lcom/yelp/android/ui/util/h;

    const/4 v4, 0x0

    new-array v4, v4, [Landroid/view/View;

    invoke-direct {v2, v4}, Lcom/yelp/android/ui/util/h;-><init>([Landroid/view/View;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->g:Lcom/yelp/android/ui/util/h;

    .line 260
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->b:Lcom/yelp/android/ui/util/bs;

    const v4, 0x7f0c003d

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->g:Lcom/yelp/android/ui/util/h;

    invoke-virtual {v2, v4, v5}, Lcom/yelp/android/ui/util/bs;->a(ILandroid/widget/BaseAdapter;)V

    .line 262
    const/16 v17, 0x0

    .line 264
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->e:Lcom/yelp/android/ui/panels/businesssearch/g;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a:Lcom/yelp/android/appdata/ap;

    if-nez v2, :cond_4

    .line 265
    :cond_3
    new-instance v2, Lcom/yelp/android/ui/panels/businesssearch/g;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/yelp/android/ui/panels/businesssearch/g;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->e:Lcom/yelp/android/ui/panels/businesssearch/g;

    .line 267
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->e:Lcom/yelp/android/ui/panels/businesssearch/g;

    const/4 v4, 0x7

    new-array v4, v4, [Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    const/4 v5, 0x0

    sget-object v6, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->ALTERNATE_NAMES:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->RATING:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    sget-object v6, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->CATEGORY:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    sget-object v6, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->PRICE:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    aput-object v6, v4, v5

    const/4 v5, 0x4

    sget-object v6, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->NUMBERED:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    aput-object v6, v4, v5

    const/4 v5, 0x5

    sget-object v6, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->BOOKMARK:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    aput-object v6, v4, v5

    const/4 v5, 0x6

    sget-object v6, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->ADDRESS:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    aput-object v6, v4, v5

    invoke-virtual {v2, v4}, Lcom/yelp/android/ui/panels/businesssearch/g;->a([Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;)V

    .line 275
    new-instance v2, Lcom/yelp/android/appdata/ap;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->s:Lcom/yelp/android/appdata/webrequests/j;

    invoke-virtual/range {p0 .. p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->getDatabase()Lcom/yelp/android/database/q;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yelp/android/database/q;->g()Lcom/yelp/android/ax/a;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lcom/yelp/android/appdata/ap;-><init>(Lcom/yelp/android/appdata/webrequests/j;Lcom/yelp/android/ax/a;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a:Lcom/yelp/android/appdata/ap;

    .line 281
    invoke-virtual/range {p0 .. p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v4, "extra.query"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    .line 283
    :goto_0
    invoke-static {}, Lcom/yelp/android/ui/activities/search/SearchUtils;->a()Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    move-result-object v4

    .line 285
    if-eqz v2, :cond_6

    .line 286
    invoke-virtual/range {p0 .. p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->getIntent()Landroid/content/Intent;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a(Landroid/content/Intent;)V

    .line 298
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->b:Lcom/yelp/android/ui/util/bs;

    const v4, 0x7f0c003c

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->e:Lcom/yelp/android/ui/panels/businesssearch/g;

    invoke-static {v5}, Lcom/yelp/android/ui/util/bw;->a(Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/bw;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yelp/android/ui/util/bw;->a()Lcom/yelp/android/ui/util/bv;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/yelp/android/ui/util/bs;->a(ILcom/yelp/android/ui/util/bv;)V

    .line 301
    new-instance v2, Lcom/yelp/android/ui/util/h;

    const/4 v4, 0x0

    new-array v4, v4, [Landroid/view/View;

    invoke-direct {v2, v4}, Lcom/yelp/android/ui/util/h;-><init>([Landroid/view/View;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->i:Lcom/yelp/android/ui/util/h;

    .line 302
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->b:Lcom/yelp/android/ui/util/bs;

    const v4, 0x7f0c0037

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->i:Lcom/yelp/android/ui/util/h;

    invoke-virtual {v2, v4, v5}, Lcom/yelp/android/ui/util/bs;->a(ILandroid/widget/BaseAdapter;)V

    .line 303
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->d:Lcom/yelp/android/ui/panels/businesssearch/j;

    invoke-virtual {v2, v3}, Lcom/yelp/android/ui/panels/businesssearch/j;->c(Ljava/util/Collection;)V

    .line 304
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->b:Lcom/yelp/android/ui/util/bs;

    const v3, 0x7f0c003a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->d:Lcom/yelp/android/ui/panels/businesssearch/j;

    invoke-static {v4}, Lcom/yelp/android/ui/util/bw;->a(Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/bw;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yelp/android/ui/util/bw;->a()Lcom/yelp/android/ui/util/bv;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/yelp/android/ui/util/bs;->a(ILcom/yelp/android/ui/util/bv;)V

    .line 308
    invoke-virtual/range {p0 .. p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setItemsCanFocus(Z)V

    .line 309
    invoke-virtual/range {p0 .. p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setDividerHeight(I)V

    .line 310
    invoke-virtual/range {p0 .. p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->r:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v2, v3}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 311
    invoke-virtual/range {p0 .. p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->j:Lcom/yelp/android/ui/panels/businesssearch/SpellingSuggestPanel;

    const-string/jumbo v4, "spelling suggestion"

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 312
    invoke-virtual/range {p0 .. p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->p:Landroid/view/View;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 313
    invoke-virtual/range {p0 .. p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->f()V

    .line 318
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->p:Landroid/view/View;

    const v3, 0x7f0c0340

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 319
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->u:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 321
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->p:Landroid/view/View;

    const v3, 0x7f0c035d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 322
    new-instance v3, Lcom/yelp/android/ui/activities/search/e;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/yelp/android/ui/activities/search/e;-><init>(Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 331
    invoke-virtual/range {p0 .. p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->b:Lcom/yelp/android/ui/util/bs;

    invoke-virtual {v2, v3}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 332
    invoke-virtual/range {p0 .. p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->registerForContextMenu(Landroid/view/View;)V

    .line 333
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->p:Landroid/view/View;

    const v3, 0x7f0c035c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 334
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->p:Landroid/view/View;

    const v4, 0x7f0c035e

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 336
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->setSearchHotButtonSelected(Z)V

    .line 338
    new-instance v2, Lcom/yelp/android/ui/activities/search/l;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->p:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a:Lcom/yelp/android/appdata/ap;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->e:Lcom/yelp/android/ui/panels/businesssearch/g;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->j:Lcom/yelp/android/ui/panels/businesssearch/SpellingSuggestPanel;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->c:Lcom/yelp/android/ui/panels/businesssearch/j;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->d:Lcom/yelp/android/ui/panels/businesssearch/j;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->f:Lcom/yelp/android/ui/util/h;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->b:Lcom/yelp/android/ui/util/bs;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->h:Lcom/yelp/android/ui/util/h;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->i:Lcom/yelp/android/ui/util/h;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->g:Lcom/yelp/android/ui/util/h;

    move-object/from16 v16, v0

    move-object/from16 v7, p0

    invoke-direct/range {v2 .. v17}, Lcom/yelp/android/ui/activities/search/l;-><init>(Landroid/widget/TextView;Landroid/view/View;Lcom/yelp/android/appdata/ap;Lcom/yelp/android/ui/panels/businesssearch/g;Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;Landroid/widget/TextView;Lcom/yelp/android/ui/panels/businesssearch/SpellingSuggestPanel;Lcom/yelp/android/ui/panels/businesssearch/j;Lcom/yelp/android/ui/panels/businesssearch/j;Lcom/yelp/android/ui/util/h;Lcom/yelp/android/ui/util/bs;Lcom/yelp/android/ui/util/h;Lcom/yelp/android/ui/util/h;Lcom/yelp/android/ui/util/h;Z)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->l:Lcom/yelp/android/ui/activities/search/l;

    .line 352
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->t:Lcom/yelp/android/util/BasicBroadcastReceiver;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/yelp/android/util/BasicBroadcastReceiver;->a(Landroid/content/Context;)V

    .line 353
    return-void

    .line 281
    :cond_5
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 287
    :cond_6
    if-eqz v4, :cond_7

    .line 288
    invoke-virtual/range {p0 .. p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v5, "extra.query"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 289
    invoke-virtual/range {p0 .. p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v5, "extra.offset"

    invoke-virtual {v4}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->getPageOffset()I

    move-result v4

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 290
    const/16 v17, 0x1

    .line 291
    invoke-virtual/range {p0 .. p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->getIntent()Landroid/content/Intent;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 294
    :cond_7
    sget-object v2, Lcom/yelp/android/util/ErrorType;->NO_PREV_SEARCH:Lcom/yelp/android/util/ErrorType;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->populateError(Lcom/yelp/android/util/ErrorType;)V

    .line 295
    invoke-static/range {p0 .. p0}, Lcom/yelp/android/ui/activities/search/SearchUtils;->a(Landroid/app/Activity;)V

    goto/16 :goto_1
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4

    .prologue
    .line 1198
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 1199
    iget v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 1200
    check-cast p2, Landroid/widget/ListView;

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    .line 1202
    if-nez v0, :cond_1

    .line 1222
    :cond_0
    :goto_0
    return-void

    .line 1207
    :cond_1
    instance-of v1, v0, Lcom/yelp/android/serializable/SearchResultLocalAd;

    if-eqz v1, :cond_2

    .line 1208
    check-cast v0, Lcom/yelp/android/serializable/SearchResultLocalAd;

    .line 1209
    invoke-virtual {v0}, Lcom/yelp/android/serializable/SearchResultLocalAd;->getBusinessSearchResult()Lcom/yelp/android/serializable/BusinessSearchResult;

    move-result-object v1

    .line 1212
    sget-object v2, Lcom/yelp/android/analytics/iris/EventIri;->AdSearchListClick:Lcom/yelp/android/analytics/iris/EventIri;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/yelp/android/serializable/SearchResultLocalAd;->getIriParams(Z)Ljava/util/Map;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/util/Map;)V

    move-object v0, v1

    .line 1219
    :goto_1
    invoke-virtual {v0}, Lcom/yelp/android/serializable/BusinessSearchResult;->getBusiness()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1220
    const v1, 0x7f020078

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderIcon(I)Landroid/view/ContextMenu;

    .line 1221
    invoke-static {p0, p1, v0}, Lcom/yelp/android/ui/util/bf;->a(Landroid/content/Context;Landroid/view/ContextMenu;Lcom/yelp/android/serializable/BusinessSearchResult;)V

    goto :goto_0

    .line 1213
    :cond_2
    instance-of v1, v0, Lcom/yelp/android/serializable/BusinessSearchResult;

    if-eqz v1, :cond_0

    .line 1214
    check-cast v0, Lcom/yelp/android/serializable/BusinessSearchResult;

    goto :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5

    .prologue
    .line 378
    packed-switch p1, :pswitch_data_0

    .line 384
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpListActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 380
    :pswitch_0
    new-instance v0, Lcom/yelp/android/ui/activities/fi;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a:Lcom/yelp/android/appdata/ap;

    const/16 v2, 0x3f3

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const/high16 v4, 0x10000000

    invoke-virtual {p0, v2, v3, v4}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->createPendingResult(ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/yelp/android/ui/activities/fi;-><init>(Landroid/content/Context;Lcom/yelp/android/appdata/ap;Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 378
    nop

    :pswitch_data_0
    .packed-switch 0x3f3
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 447
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 448
    invoke-static {p0, p1}, Lcom/yelp/android/ui/activities/search/SearchUtils;->a(Landroid/support/v7/app/ActionBarActivity;Landroid/view/Menu;)V

    .line 449
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 390
    invoke-super {p0}, Lcom/yelp/android/ui/util/YelpListActivity;->onDestroy()V

    .line 391
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->v()V

    .line 392
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->t:Lcom/yelp/android/util/BasicBroadcastReceiver;

    invoke-virtual {v0, p0}, Lcom/yelp/android/util/BasicBroadcastReceiver;->b(Landroid/content/Context;)V

    .line 393
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->m:Lcom/yelp/android/ui/activities/search/SearchUtils$DirtyBusinessListener;

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->m:Lcom/yelp/android/ui/activities/search/SearchUtils$DirtyBusinessListener;

    invoke-virtual {v0, p0}, Lcom/yelp/android/ui/activities/search/SearchUtils$DirtyBusinessListener;->b(Landroid/content/Context;)V

    .line 396
    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 400
    const-string/jumbo v0, "query"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 401
    const-string/jumbo v0, "extra.source"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/analytics/iris/IriSource;

    .line 402
    const-string/jumbo v2, "extra.search_launch_method"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 403
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 404
    iget-object v3, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a:Lcom/yelp/android/appdata/ap;

    invoke-virtual {v3}, Lcom/yelp/android/appdata/ap;->i()Lcom/yelp/android/appdata/webrequests/fv;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/yelp/android/appdata/webrequests/fv;->b(Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/fv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/webrequests/fv;->a()Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    move-result-object v1

    invoke-static {p0, v1, v0, v2}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a(Landroid/content/Context;Lcom/yelp/android/appdata/webrequests/SearchRequest;Lcom/yelp/android/analytics/iris/IriSource;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 408
    invoke-static {p0, p1}, Lcom/yelp/android/ui/activities/search/SearchUtils;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 411
    :cond_0
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->setIntent(Landroid/content/Intent;)V

    .line 412
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a(Landroid/content/Intent;)V

    .line 413
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 460
    invoke-static {p0, p1}, Lcom/yelp/android/ui/activities/search/SearchUtils;->a(Landroid/app/Activity;Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 461
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 463
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 363
    invoke-super {p0}, Lcom/yelp/android/ui/util/YelpListActivity;->onPause()V

    .line 364
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a:Lcom/yelp/android/appdata/ap;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->l:Lcom/yelp/android/ui/activities/search/l;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/ap;->unregisterObserver(Ljava/lang/Object;)V

    .line 365
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->v()V

    .line 366
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->t()Lcom/yelp/android/appdata/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/k;->b()V

    .line 367
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 454
    invoke-static {p0, p1}, Lcom/yelp/android/ui/activities/search/SearchUtils;->a(Landroid/content/Context;Landroid/view/Menu;)V

    .line 455
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 371
    invoke-super {p0}, Lcom/yelp/android/ui/util/YelpListActivity;->onResume()V

    .line 372
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a:Lcom/yelp/android/appdata/ap;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->l:Lcom/yelp/android/ui/activities/search/l;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/ap;->registerObserver(Ljava/lang/Object;)V

    .line 373
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->t()Lcom/yelp/android/appdata/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/k;->a()V

    .line 374
    return-void
.end method

.method public synthetic onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->c()Lcom/yelp/android/appdata/ap;

    move-result-object v0

    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 357
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 358
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->e:Lcom/yelp/android/ui/panels/businesssearch/g;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/panels/businesssearch/g;->a(Landroid/os/Bundle;)V

    .line 359
    return-void
.end method

.method public populateError(Lcom/yelp/android/util/ErrorType;)V
    .locals 6

    .prologue
    const/16 v1, 0x8

    const/4 v5, -0x1

    const/4 v4, -0x2

    .line 724
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpListActivity;->populateError(Lcom/yelp/android/util/ErrorType;)V

    .line 725
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->j:Lcom/yelp/android/ui/panels/businesssearch/SpellingSuggestPanel;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/businesssearch/SpellingSuggestPanel;->setVisibility(I)V

    .line 726
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->p:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 727
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->b:Lcom/yelp/android/ui/util/bs;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/bs;->a(Z)V

    .line 729
    sget-object v0, Lcom/yelp/android/util/ErrorType;->NO_RESULTS:Lcom/yelp/android/util/ErrorType;

    if-ne p1, v0, :cond_3

    .line 730
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->getErrorPanel()Lcom/yelp/android/ui/panels/PanelError;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/PanelError;->b()V

    .line 734
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->o:Lcom/yelp/android/ui/panels/businesssearch/SpellingSuggestPanel;

    if-nez v0, :cond_0

    .line 735
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a:Lcom/yelp/android/appdata/ap;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/ap;->l()Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;

    move-result-object v0

    .line 736
    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 738
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 739
    new-instance v1, Lcom/yelp/android/ui/panels/businesssearch/SpellingSuggestPanel;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/panels/businesssearch/SpellingSuggestPanel;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->o:Lcom/yelp/android/ui/panels/businesssearch/SpellingSuggestPanel;

    .line 740
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 743
    iget-object v2, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->o:Lcom/yelp/android/ui/panels/businesssearch/SpellingSuggestPanel;

    invoke-virtual {v2, v1}, Lcom/yelp/android/ui/panels/businesssearch/SpellingSuggestPanel;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 744
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->o:Lcom/yelp/android/ui/panels/businesssearch/SpellingSuggestPanel;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->v:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/panels/businesssearch/SpellingSuggestPanel;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 746
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->o:Lcom/yelp/android/ui/panels/businesssearch/SpellingSuggestPanel;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/panels/businesssearch/SpellingSuggestPanel;->setSuggestion(Ljava/lang/String;)V

    .line 747
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->o:Lcom/yelp/android/ui/panels/businesssearch/SpellingSuggestPanel;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->addStatusView(Landroid/view/View;)V

    .line 753
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->n:Landroid/view/View;

    if-nez v0, :cond_1

    .line 754
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300e4

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->n:Landroid/view/View;

    .line 756
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 759
    const/16 v1, 0x50

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 760
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->n:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 761
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->n:Landroid/view/View;

    const v1, 0x7f02035d

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/cp;->a(Landroid/view/View;I)V

    .line 763
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->n:Landroid/view/View;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->u:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 764
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->n:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->addStatusView(Landroid/view/View;)V

    .line 769
    :cond_1
    :goto_1
    return-void

    .line 736
    :cond_2
    invoke-interface {v0}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;->getSpellingSuggestion()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 766
    :cond_3
    sget-object v0, Lcom/yelp/android/util/ErrorType;->NO_PREV_SEARCH:Lcom/yelp/android/util/ErrorType;

    if-ne p1, v0, :cond_1

    .line 767
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->getErrorPanel()Lcom/yelp/android/ui/panels/PanelError;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/PanelError;->b()V

    goto :goto_1
.end method

.method protected setHotButtonListeners()V
    .locals 2

    .prologue
    .line 417
    invoke-super {p0}, Lcom/yelp/android/ui/util/YelpListActivity;->setHotButtonListeners()V

    .line 418
    const v0, 0x7f0c0300

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/activities/search/f;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/search/f;-><init>(Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 425
    return-void
.end method
