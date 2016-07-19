.class public Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;
.super Lcom/yelp/android/ui/util/YelpListActivity;
.source "SearchBusinessesByList.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/AddNewBizDialog$a;
.implements Lcom/yelp/android/ui/activities/search/d$a;
.implements Lcom/yelp/android/ui/activities/search/e;
.implements Lcom/yelp/android/ui/activities/support/b$e;
.implements Lcom/yelp/android/ui/dialogs/FiltersDialog$a;
.implements Lcom/yelp/android/ui/panels/PanelError$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$4;,
        Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;
    }
.end annotation


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
.field private final A:Landroid/view/View$OnClickListener;

.field private final B:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Lcom/yelp/android/serializable/ContinueLastOrderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final C:Lcom/yelp/android/util/BasicBroadcastReceiver;

.field private final D:Lcom/yelp/android/appdata/webrequests/core/c$a;

.field private final E:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Lcom/yelp/android/serializable/YelpBookmark;",
            ">;"
        }
    .end annotation
.end field

.field a:Lcom/yelp/android/appdata/o;

.field private b:Lcom/yelp/android/ui/util/aj;

.field private c:Lcom/yelp/android/ui/panels/businesssearch/d;

.field private d:Lcom/yelp/android/ui/panels/businesssearch/d;

.field private e:Lcom/yelp/android/ui/activities/search/f;

.field private f:Lcom/yelp/android/ui/panels/f;

.field private g:Lcom/yelp/android/ui/util/e;

.field private h:Lcom/yelp/android/ui/util/e;

.field private i:Lcom/yelp/android/ui/util/e;

.field private j:Lcom/yelp/android/ui/util/e;

.field private k:Lcom/yelp/android/ui/panels/businesssearch/SpellingSuggestPanel;

.field private l:Ljava/lang/String;

.field private m:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;

.field private n:Landroid/view/View;

.field private o:Lcom/yelp/android/ui/panels/businesssearch/SpellingSuggestPanel;

.field private p:Landroid/view/View;

.field private r:Lcom/yelp/android/util/u;

.field private s:Lcom/yelp/android/appdata/webrequests/aw;

.field private t:Lcom/yelp/android/ui/dialogs/e;

.field private u:Lcom/yelp/android/appdata/webrequests/h;

.field private v:Lcom/yelp/android/appdata/webrequests/dk;

.field private final w:Landroid/widget/AdapterView$OnItemClickListener;

.field private final x:Lcom/yelp/android/appdata/webrequests/k$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/k$b",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final y:Lcom/yelp/android/util/BasicBroadcastReceiver;

.field private final z:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 181
    invoke-direct {p0}, Lcom/yelp/android/ui/util/YelpListActivity;-><init>()V

    .line 773
    new-instance v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$5;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$5;-><init>(Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->w:Landroid/widget/AdapterView$OnItemClickListener;

    .line 835
    new-instance v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$6;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$6;-><init>(Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->x:Lcom/yelp/android/appdata/webrequests/k$b;

    .line 1933
    new-instance v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$8;

    new-array v1, v5, [Landroid/content/IntentFilter;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "com.yelp.android.offer_redeemed"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v4

    invoke-direct {v0, p0, v1}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$8;-><init>(Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;[Landroid/content/IntentFilter;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->y:Lcom/yelp/android/util/BasicBroadcastReceiver;

    .line 2040
    new-instance v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$9;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$9;-><init>(Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->z:Landroid/view/View$OnClickListener;

    .line 2062
    new-instance v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$10;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$10;-><init>(Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->A:Landroid/view/View$OnClickListener;

    .line 2071
    new-instance v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$11;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$11;-><init>(Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->B:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    .line 2099
    new-instance v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$12;

    new-array v1, v5, [Landroid/content/IntentFilter;

    const-string/jumbo v2, "com.yelp.android.business.update"

    invoke-static {v2}, Lcom/yelp/android/util/ObjectDirtyEvent;->a(Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-direct {v0, p0, v1}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$12;-><init>(Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;[Landroid/content/IntentFilter;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->C:Lcom/yelp/android/util/BasicBroadcastReceiver;

    .line 2114
    new-instance v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$2;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$2;-><init>(Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->D:Lcom/yelp/android/appdata/webrequests/core/c$a;

    .line 2135
    new-instance v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$3;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$3;-><init>(Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->E:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 235
    const-class v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 236
    const/high16 v0, 0x20000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 237
    const/high16 v0, 0x4000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 238
    return-object p1
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/appdata/webrequests/SearchRequest;)Landroid/content/Intent;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 281
    invoke-static {p0, p1, v0, v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a(Landroid/content/Context;Lcom/yelp/android/appdata/webrequests/SearchRequest;Lcom/yelp/android/analytics/iris/IriSource;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/appdata/webrequests/SearchRequest;Lcom/yelp/android/analytics/iris/IriSource;Ljava/lang/String;)Landroid/content/Intent;
    .locals 4

    .prologue
    .line 295
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.SEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 296
    const-class v1, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 298
    sget-object v1, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->CHECKINS:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    .line 300
    invoke-interface {p1}, Lcom/yelp/android/appdata/webrequests/SearchRequest;->D()Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;

    move-result-object v2

    .line 301
    sget-object v3, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;->NEARBY:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;

    if-eq v2, v3, :cond_0

    invoke-interface {p1}, Lcom/yelp/android/appdata/webrequests/SearchRequest;->F()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 302
    :cond_0
    sget-object v2, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->DISTANCE:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 304
    :cond_1
    const-string/jumbo v2, "extra.source"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 305
    const-string/jumbo v2, "extra.search_launch_method"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 306
    const-string/jumbo v2, "extra.displayFeatures"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 307
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 308
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 309
    invoke-static {p1, v0, p2, p3}, Lcom/yelp/android/appdata/o;->a(Lcom/yelp/android/appdata/webrequests/SearchRequest;Landroid/content/Intent;Lcom/yelp/android/analytics/iris/IriSource;Ljava/lang/String;)V

    .line 310
    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/PlatformFilter;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 263
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 264
    new-instance v1, Lcom/yelp/android/serializable/PlatformGenericSearchFilter;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lcom/yelp/android/serializable/PlatformGenericSearchFilter;-><init>(Lcom/yelp/android/serializable/PlatformFilter;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    new-instance v1, Lcom/yelp/android/appdata/webrequests/eo;

    invoke-direct {v1}, Lcom/yelp/android/appdata/webrequests/eo;-><init>()V

    new-instance v2, Lcom/yelp/android/serializable/Filter;

    sget-object v3, Lcom/yelp/android/serializable/Sort;->Default:Lcom/yelp/android/serializable/Sort;

    invoke-direct {v2, v4, v3, v0}, Lcom/yelp/android/serializable/Filter;-><init>(Lcom/yelp/android/serializable/Distance;Lcom/yelp/android/serializable/Sort;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/yelp/android/appdata/webrequests/eo;->a(Lcom/yelp/android/serializable/Filter;)Lcom/yelp/android/appdata/webrequests/eo;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/yelp/android/appdata/webrequests/eo;->b(Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/eo;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/yelp/android/appdata/webrequests/eo;->a(Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/eo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/eo;->a()Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    move-result-object v0

    .line 271
    invoke-static {p0, v0, v4, v4}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a(Landroid/content/Context;Lcom/yelp/android/appdata/webrequests/SearchRequest;Lcom/yelp/android/analytics/iris/IriSource;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/ReservationFilter;ZLjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 247
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 248
    new-instance v1, Lcom/yelp/android/serializable/ReservationGenericSearchFilter;

    invoke-direct {v1, p1, p2}, Lcom/yelp/android/serializable/ReservationGenericSearchFilter;-><init>(Lcom/yelp/android/serializable/ReservationFilter;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    new-instance v1, Lcom/yelp/android/appdata/webrequests/eo;

    invoke-direct {v1}, Lcom/yelp/android/appdata/webrequests/eo;-><init>()V

    new-instance v2, Lcom/yelp/android/serializable/Filter;

    sget-object v3, Lcom/yelp/android/serializable/Sort;->Default:Lcom/yelp/android/serializable/Sort;

    invoke-direct {v2, v4, v3, v0}, Lcom/yelp/android/serializable/Filter;-><init>(Lcom/yelp/android/serializable/Distance;Lcom/yelp/android/serializable/Sort;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/yelp/android/appdata/webrequests/eo;->a(Lcom/yelp/android/serializable/Filter;)Lcom/yelp/android/appdata/webrequests/eo;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/yelp/android/appdata/webrequests/eo;->b(Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/eo;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/yelp/android/appdata/webrequests/eo;->a(Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/eo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/eo;->a()Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    move-result-object v0

    .line 255
    invoke-static {p0, v0, v4, v4}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a(Landroid/content/Context;Lcom/yelp/android/appdata/webrequests/SearchRequest;Lcom/yelp/android/analytics/iris/IriSource;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;)Lcom/yelp/android/ui/activities/search/f;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->e:Lcom/yelp/android/ui/activities/search/f;

    return-object v0
.end method

.method static synthetic a(Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 181
    sput-object p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->q:Ljava/util/List;

    return-object p0
.end method

.method private final a(Landroid/content/Context;Lcom/yelp/android/ui/panels/businesssearch/SpellingSuggestPanel;)V
    .locals 2

    .prologue
    .line 2090
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a:Lcom/yelp/android/appdata/o;

    invoke-static {p1, v0}, Lcom/yelp/android/ui/activities/search/d;->a(Landroid/content/Context;Lcom/yelp/android/appdata/o;)V

    .line 2091
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->i()Lcom/yelp/android/database/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/database/g;->b()Lcom/yelp/android/database/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/database/d;->d()V

    .line 2093
    invoke-virtual {p2}, Lcom/yelp/android/ui/panels/businesssearch/SpellingSuggestPanel;->getSuggestion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2094
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a:Lcom/yelp/android/appdata/o;

    invoke-virtual {v1}, Lcom/yelp/android/appdata/o;->h()Lcom/yelp/android/appdata/webrequests/eo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yelp/android/appdata/webrequests/eo;->b(Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/eo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/eo;->a()Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    move-result-object v0

    .line 2096
    invoke-static {p1, v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a(Landroid/content/Context;Lcom/yelp/android/appdata/webrequests/SearchRequest;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->startActivity(Landroid/content/Intent;)V

    .line 2097
    return-void
.end method

.method private a(Lcom/yelp/android/serializable/YelpBusiness;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 874
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->U()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 876
    new-instance v0, Lcom/yelp/android/appdata/webrequests/dk;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->D:Lcom/yelp/android/appdata/webrequests/core/c$a;

    invoke-direct {v0, p1, v1}, Lcom/yelp/android/appdata/webrequests/dk;-><init>(Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/appdata/webrequests/core/c$a;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->v:Lcom/yelp/android/appdata/webrequests/dk;

    .line 877
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->v:Lcom/yelp/android/appdata/webrequests/dk;

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/dk;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 884
    :goto_0
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->SearchContextRemoveBookmark:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v1, "id"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/lang/String;Ljava/lang/Object;)V

    .line 885
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->U()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0704ee

    :goto_1
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 890
    const-string/jumbo v1, ""

    const/4 v5, 0x0

    move-object v0, p0

    move v4, v3

    invoke-static/range {v0 .. v5}, Lcom/yelp/android/ui/dialogs/e;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lcom/yelp/android/ui/dialogs/e;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->t:Lcom/yelp/android/ui/dialogs/e;

    .line 891
    return-void

    .line 880
    :cond_0
    new-instance v0, Lcom/yelp/android/appdata/webrequests/h;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->E:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-direct {v0, p1, v1}, Lcom/yelp/android/appdata/webrequests/h;-><init>(Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->u:Lcom/yelp/android/appdata/webrequests/h;

    .line 881
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->u:Lcom/yelp/android/appdata/webrequests/h;

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/h;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    goto :goto_0

    .line 885
    :cond_1
    const v0, 0x7f07011e

    goto :goto_1
.end method

.method private a(Lcom/yelp/android/serializable/YelpBusiness;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 894
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->U()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3f1

    .line 898
    :goto_0
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->U()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f070203

    .line 902
    :goto_1
    const/4 v2, 0x0

    invoke-static {p0, v1, v2, p2}, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->a(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->startActivityForResult(Landroid/content/Intent;I)V

    .line 905
    return-void

    .line 894
    :cond_0
    const/16 v0, 0x3ef

    goto :goto_0

    .line 898
    :cond_1
    const v1, 0x7f0701fd

    goto :goto_1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;Landroid/content/Context;Lcom/yelp/android/ui/panels/businesssearch/SpellingSuggestPanel;)V
    .locals 0

    .prologue
    .line 181
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a(Landroid/content/Context;Lcom/yelp/android/ui/panels/businesssearch/SpellingSuggestPanel;)V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;Lcom/yelp/android/serializable/YelpBusiness;)V
    .locals 0

    .prologue
    .line 181
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->b(Lcom/yelp/android/serializable/YelpBusiness;)V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 181
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->b(Ljava/util/List;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2159
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a:Lcom/yelp/android/appdata/o;

    invoke-virtual {v1}, Lcom/yelp/android/appdata/o;->n()Lcom/yelp/android/ca/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/ca/a;->c()Ljava/lang/String;

    move-result-object v1

    .line 2161
    if-nez v1, :cond_1

    .line 2176
    :cond_0
    :goto_0
    return v0

    .line 2164
    :cond_1
    iget-object v2, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a:Lcom/yelp/android/appdata/o;

    invoke-virtual {v2}, Lcom/yelp/android/appdata/o;->n()Lcom/yelp/android/ca/a;

    move-result-object v2

    .line 2165
    invoke-virtual {v2, v1}, Lcom/yelp/android/ca/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2166
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2168
    invoke-virtual {v4, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2170
    invoke-virtual {v4, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2173
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/yelp/android/ca/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2174
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;)Lcom/yelp/android/ui/panels/businesssearch/SpellingSuggestPanel;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->k:Lcom/yelp/android/ui/panels/businesssearch/SpellingSuggestPanel;

    return-object v0
.end method

.method private b(Lcom/yelp/android/serializable/YelpBusiness;)V
    .locals 3

    .prologue
    .line 919
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    .line 920
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 921
    const-string/jumbo v2, "extra.business"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 922
    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 923
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a(Lcom/yelp/android/serializable/YelpBusiness;)V

    .line 929
    :goto_0
    return-void

    .line 924
    :cond_0
    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 925
    invoke-direct {p0, p1, v1}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a(Lcom/yelp/android/serializable/YelpBusiness;Landroid/content/Intent;)V

    goto :goto_0

    .line 927
    :cond_1
    invoke-direct {p0, p1, v1}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->b(Lcom/yelp/android/serializable/YelpBusiness;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private b(Lcom/yelp/android/serializable/YelpBusiness;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 908
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->U()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3f0

    .line 912
    :goto_0
    const v1, 0x7f070390

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 914
    invoke-static {p0, v1, p2}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->startActivityForResult(Landroid/content/Intent;I)V

    .line 916
    return-void

    .line 908
    :cond_0
    const/16 v0, 0x3ee

    goto :goto_0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;Lcom/yelp/android/serializable/YelpBusiness;)V
    .locals 0

    .prologue
    .line 181
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->c(Lcom/yelp/android/serializable/YelpBusiness;)V

    return-void
.end method

.method private b(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/DisplayGenericSearchFilter;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 728
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a:Lcom/yelp/android/appdata/o;

    if-nez v0, :cond_1

    .line 729
    const-string/jumbo v0, "mSearchSession null in showFiltersDialog"

    invoke-static {p0, v0}, Lcom/yelp/android/util/YelpLog;->remoteError(Ljava/lang/Object;Ljava/lang/String;)V

    .line 754
    :cond_0
    :goto_0
    return-void

    .line 733
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a:Lcom/yelp/android/appdata/o;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/o;->k()Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;

    move-result-object v0

    if-eqz v0, :cond_2

    move v3, v1

    .line 736
    :goto_1
    if-eqz v3, :cond_3

    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a:Lcom/yelp/android/appdata/o;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/o;->k()Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;

    move-result-object v0

    invoke-interface {v0}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;->l()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 737
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a:Lcom/yelp/android/appdata/o;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/o;->k()Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;

    move-result-object v0

    invoke-interface {v0}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;->l()Ljava/util/List;

    move-result-object v0

    .line 743
    :goto_2
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v4

    const-string/jumbo v5, "filters_dialog"

    invoke-virtual {v4, v5}, Landroid/support/v4/app/l;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    .line 744
    if-nez v4, :cond_0

    .line 745
    iget-object v4, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a:Lcom/yelp/android/appdata/o;

    invoke-virtual {v4}, Lcom/yelp/android/appdata/o;->j()Lcom/yelp/android/serializable/Filter;

    move-result-object v4

    if-nez v3, :cond_4

    :goto_3
    iget-object v2, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a:Lcom/yelp/android/appdata/o;

    invoke-virtual {v2}, Lcom/yelp/android/appdata/o;->o()Lcom/yelp/android/appdata/webrequests/SearchRequest;

    move-result-object v2

    invoke-static {v2}, Lcom/yelp/android/serializable/SearchLocation;->a(Lcom/yelp/android/appdata/webrequests/SearchRequest;)Lcom/yelp/android/serializable/SearchLocation;

    move-result-object v2

    invoke-static {v4, v1, p1, v0, v2}, Lcom/yelp/android/ui/dialogs/FiltersDialog;->a(Lcom/yelp/android/serializable/Filter;ZLjava/util/List;Ljava/util/List;Lcom/yelp/android/serializable/SearchLocation;)Lcom/yelp/android/ui/dialogs/FiltersDialog;

    move-result-object v0

    .line 752
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v1

    const-string/jumbo v2, "filters_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/dialogs/FiltersDialog;->show(Landroid/support/v4/app/l;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v3, v2

    .line 733
    goto :goto_1

    .line 739
    :cond_3
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_2

    :cond_4
    move v1, v2

    .line 745
    goto :goto_3
.end method

.method public static c(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 229
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.SEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 230
    const-class v1, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 231
    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;)Lcom/yelp/android/ui/panels/businesssearch/SpellingSuggestPanel;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->o:Lcom/yelp/android/ui/panels/businesssearch/SpellingSuggestPanel;

    return-object v0
.end method

.method private c(Lcom/yelp/android/serializable/YelpBusiness;)V
    .locals 2

    .prologue
    .line 2011
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a:Lcom/yelp/android/appdata/o;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/o;->k()Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;

    move-result-object v0

    invoke-interface {v0}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;->b()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/yelp/android/serializable/BusinessSearchResult;->a(Ljava/util/List;Lcom/yelp/android/serializable/YelpBusiness;)V

    .line 2013
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->e:Lcom/yelp/android/ui/activities/search/f;

    if-eqz v0, :cond_0

    .line 2014
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->e:Lcom/yelp/android/ui/activities/search/f;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a:Lcom/yelp/android/appdata/o;

    invoke-virtual {v1}, Lcom/yelp/android/appdata/o;->k()Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/search/f;->a(Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;)V

    .line 2016
    :cond_0
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->w()V

    .line 2017
    return-void
.end method

.method public static d(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 275
    invoke-static {p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->c(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 276
    const-string/jumbo v1, "extra.emptySearch"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 277
    return-object v0
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;)Lcom/yelp/android/ui/dialogs/e;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->t:Lcom/yelp/android/ui/dialogs/e;

    return-object v0
.end method

.method static synthetic q()Ljava/util/List;
    .locals 1

    .prologue
    .line 181
    sget-object v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->q:Ljava/util/List;

    return-object v0
.end method

.method private u()V
    .locals 1

    .prologue
    .line 719
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->b(Ljava/util/List;)V

    .line 720
    return-void
.end method

.method private v()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 761
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 762
    if-nez v1, :cond_0

    .line 763
    :goto_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->getFirstVisiblePosition()I

    move-result v1

    .line 765
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/appdata/AppData;->f()Lcom/yelp/android/appdata/c;

    move-result-object v2

    .line 766
    invoke-virtual {v2, v1, v0}, Lcom/yelp/android/appdata/c;->a(II)V

    .line 767
    return-void

    .line 762
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method private w()V
    .locals 2

    .prologue
    .line 2182
    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a:Lcom/yelp/android/appdata/o;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/o;->k()Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;

    move-result-object v0

    invoke-interface {v0}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2184
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a:Lcom/yelp/android/appdata/o;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/o;->k()Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;

    move-result-object v0

    invoke-interface {v0}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;->b()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/serializable/BusinessSearchResult;->a(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v0

    .line 2192
    const-string/jumbo v1, "business_search_results"

    invoke-direct {p0, v1, v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2195
    const-string/jumbo v1, "suggested_business_search_results"

    invoke-direct {p0, v1, v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 2201
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a:Lcom/yelp/android/appdata/o;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/o;->k()Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;

    move-result-object v0

    invoke-interface {v0}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;->k()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2202
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a:Lcom/yelp/android/appdata/o;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/o;->k()Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;

    move-result-object v0

    invoke-interface {v0}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;->k()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/serializable/BusinessSearchResult;->a(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v0

    .line 2205
    const-string/jumbo v1, "ad_business_search_results"

    invoke-direct {p0, v1, v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a(Ljava/lang/String;Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2213
    :cond_1
    :goto_0
    return-void

    .line 2209
    :catch_0
    move-exception v0

    .line 2210
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->m()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/yelp/android/appdata/webrequests/YelpException;->YPErrorInvalidData:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yelp/android/util/YelpLog;->remoteError(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 2021
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a:Lcom/yelp/android/appdata/o;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/o;->h()Lcom/yelp/android/appdata/webrequests/eo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/eo;->a()Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->G()Lcom/yelp/android/serializable/Category;

    move-result-object v2

    .line 2022
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a:Lcom/yelp/android/appdata/o;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/o;->k()Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a:Lcom/yelp/android/appdata/o;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/o;->k()Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;

    move-result-object v0

    invoke-interface {v0}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;->c()Landroid/location/Address;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    .line 2026
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 2027
    if-eqz v2, :cond_0

    .line 2028
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/yelp/android/serializable/Category;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 2031
    :cond_0
    invoke-static {p1, v1, v0}, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2032
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2033
    return-void

    .line 2022
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 938
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a:Lcom/yelp/android/appdata/o;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/o;->i()V

    .line 940
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->e:Lcom/yelp/android/ui/activities/search/f;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/search/f;->clear()V

    .line 942
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->e:Lcom/yelp/android/ui/activities/search/f;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    const/4 v2, 0x0

    sget-object v3, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->DISTANCE:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/search/f;->b([Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;)V

    .line 945
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a:Lcom/yelp/android/appdata/o;

    invoke-virtual {v0, p1}, Lcom/yelp/android/appdata/o;->a(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 946
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Error initializing search intent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yelp/android/util/YelpLog;->remoteError(Ljava/lang/Object;Ljava/lang/String;)V

    .line 947
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->finish()V

    .line 971
    :goto_0
    return-void

    .line 952
    :cond_0
    const-string/jumbo v0, "extra.displayFeatures"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 954
    if-eqz v0, :cond_1

    .line 955
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->e:Lcom/yelp/android/ui/activities/search/f;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/search/f;->a(Ljava/util/Collection;)V

    .line 956
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->c:Lcom/yelp/android/ui/panels/businesssearch/d;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/panels/businesssearch/d;->c(Ljava/util/Collection;)V

    .line 957
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->d:Lcom/yelp/android/ui/panels/businesssearch/d;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/panels/businesssearch/d;->c(Ljava/util/Collection;)V

    .line 960
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a:Lcom/yelp/android/appdata/o;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/o;->k()Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;

    move-result-object v0

    if-nez v0, :cond_4

    .line 961
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->enableLoading()V

    .line 963
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a:Lcom/yelp/android/appdata/o;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/o;->a()Z

    .line 967
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->C:Lcom/yelp/android/util/BasicBroadcastReceiver;

    invoke-virtual {v0}, Lcom/yelp/android/util/BasicBroadcastReceiver;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 968
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->C:Lcom/yelp/android/util/BasicBroadcastReceiver;

    invoke-virtual {v0, p0}, Lcom/yelp/android/util/BasicBroadcastReceiver;->b(Landroid/content/Context;)V

    .line 970
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->C:Lcom/yelp/android/util/BasicBroadcastReceiver;

    invoke-virtual {v0, p0}, Lcom/yelp/android/util/BasicBroadcastReceiver;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 964
    :cond_4
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->m:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;

    if-eqz v0, :cond_2

    .line 965
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->m:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->onChanged()V

    goto :goto_1
.end method

.method public a(Lcom/yelp/android/appdata/webrequests/eo;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1965
    invoke-virtual {p1}, Lcom/yelp/android/appdata/webrequests/eo;->a()Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p2}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a(Landroid/content/Context;Lcom/yelp/android/appdata/webrequests/SearchRequest;Lcom/yelp/android/analytics/iris/IriSource;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1968
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->startActivity(Landroid/content/Intent;)V

    .line 1969
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/Filter;Lcom/yelp/android/serializable/SearchLocation;)V
    .locals 2

    .prologue
    .line 701
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a:Lcom/yelp/android/appdata/o;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/o;->h()Lcom/yelp/android/appdata/webrequests/eo;

    move-result-object v0

    .line 702
    invoke-virtual {v0, p1}, Lcom/yelp/android/appdata/webrequests/eo;->a(Lcom/yelp/android/serializable/Filter;)Lcom/yelp/android/appdata/webrequests/eo;

    .line 703
    if-eqz p2, :cond_0

    .line 704
    invoke-virtual {p2, v0}, Lcom/yelp/android/serializable/SearchLocation;->a(Lcom/yelp/android/appdata/webrequests/eo;)V

    .line 706
    :cond_0
    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/eo;->a()Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a(Landroid/content/Context;Lcom/yelp/android/appdata/webrequests/SearchRequest;)Landroid/content/Intent;

    move-result-object v0

    .line 707
    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 708
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a(Landroid/content/Intent;)V

    .line 709
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 1052
    sget-object v0, Lcom/yelp/android/util/ErrorType;->NO_LOCATION:Lcom/yelp/android/util/ErrorType;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->populateError(Lcom/yelp/android/util/ErrorType;)V

    .line 1053
    if-eqz p1, :cond_0

    .line 1054
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/yelp/android/ui/activities/search/d;->a(Landroid/app/Activity;Z)V

    .line 1056
    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 1060
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a(Landroid/content/Intent;)V

    .line 1061
    return-void
.end method

.method public b(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 2037
    invoke-static {p1}, Lcom/yelp/android/util/BizClaimUtil;->a(Landroid/content/Context;)V

    .line 2038
    return-void
.end method

.method public clearError()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1027
    invoke-super {p0}, Lcom/yelp/android/ui/util/YelpListActivity;->clearError()V

    .line 1028
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->n:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1029
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->n:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->removeStatusView(Landroid/view/View;)V

    .line 1030
    iput-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->n:Landroid/view/View;

    .line 1032
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->o:Lcom/yelp/android/ui/panels/businesssearch/SpellingSuggestPanel;

    if-eqz v0, :cond_1

    .line 1033
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->o:Lcom/yelp/android/ui/panels/businesssearch/SpellingSuggestPanel;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->removeStatusView(Landroid/view/View;)V

    .line 1034
    iput-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->o:Lcom/yelp/android/ui/panels/businesssearch/SpellingSuggestPanel;

    .line 1036
    :cond_1
    return-void
.end method

.method public enableLoading()V
    .locals 2

    .prologue
    .line 1040
    invoke-super {p0}, Lcom/yelp/android/ui/util/YelpListActivity;->enableLoading()V

    .line 1041
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->getLoadingPanel()Lcom/yelp/android/ui/panels/PanelLoading;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/ui/panels/YelpLoadingSpinner;->FINDING_PLACES:Lcom/yelp/android/ui/panels/YelpLoadingSpinner;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/PanelLoading;->setSpinner(Lcom/yelp/android/ui/panels/c;)V

    .line 1042
    return-void
.end method

.method public f()Lcom/yelp/android/appdata/o;
    .locals 1

    .prologue
    .line 601
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a:Lcom/yelp/android/appdata/o;

    return-object v0
.end method

.method public g()Lcom/yelp/android/appdata/o;
    .locals 1

    .prologue
    .line 610
    invoke-super {p0}, Lcom/yelp/android/ui/util/YelpListActivity;->getLastCustomNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/o;

    return-object v0
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 1960
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->SearchList:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getLastCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->g()Lcom/yelp/android/appdata/o;

    move-result-object v0

    return-object v0
.end method

.method public i()V
    .locals 2

    .prologue
    .line 636
    const/16 v0, 0x402

    invoke-static {p0, v0}, Lcom/yelp/android/ui/map/f;->a(Landroid/app/Activity;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 645
    :goto_0
    return-void

    .line 640
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 641
    invoke-static {p0, v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    .line 642
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a:Lcom/yelp/android/appdata/o;

    invoke-virtual {v1, v0}, Lcom/yelp/android/appdata/o;->b(Landroid/content/Intent;)V

    .line 643
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->startActivity(Landroid/content/Intent;)V

    .line 644
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a:Lcom/yelp/android/appdata/o;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/o;->i()V

    goto :goto_0
.end method

.method public j()V
    .locals 0

    .prologue
    .line 696
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->u()V

    .line 697
    return-void
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 713
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a:Lcom/yelp/android/appdata/o;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/o;->k()Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a:Lcom/yelp/android/appdata/o;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/o;->k()Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;

    move-result-object v0

    invoke-interface {v0}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;->i()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public l()Ljava/util/List;
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
    .line 1973
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070231

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1974
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1975
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1977
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a:Lcom/yelp/android/appdata/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a:Lcom/yelp/android/appdata/o;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/o;->o()Lcom/yelp/android/appdata/webrequests/SearchRequest;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a:Lcom/yelp/android/appdata/o;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/o;->m()[D

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1980
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070232

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1982
    :cond_0
    return-object v1
.end method

.method public m()Landroid/content/Context;
    .locals 0

    .prologue
    .line 1987
    return-object p0
.end method

.method public n()[D
    .locals 2

    .prologue
    .line 1992
    const v0, 0x7f070232

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a:Lcom/yelp/android/appdata/o;

    if-eqz v0, :cond_0

    .line 1994
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a:Lcom/yelp/android/appdata/o;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/o;->m()[D

    move-result-object v0

    .line 1996
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public o()I
    .locals 1

    .prologue
    .line 2002
    const/16 v0, 0x41f

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v0, -0x1

    .line 650
    sparse-switch p1, :sswitch_data_0

    .line 691
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/util/YelpListActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 692
    return-void

    .line 652
    :sswitch_0
    if-eqz p3, :cond_0

    const-string/jumbo v0, "extra.business"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 655
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a:Lcom/yelp/android/appdata/o;

    const-string/jumbo v0, "extra.business"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1, v0}, Lcom/yelp/android/appdata/o;->a(Lcom/yelp/android/serializable/YelpBusiness;)V

    goto :goto_0

    .line 660
    :sswitch_1
    if-ne p2, v0, :cond_1

    .line 661
    const-string/jumbo v0, "extra.location"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->l:Ljava/lang/String;

    .line 662
    const-string/jumbo v0, "extra.search.launch_method"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, p0, v0}, Lcom/yelp/android/ui/activities/search/d;->a(Landroid/content/Intent;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 667
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->updateOptionsMenu()V

    goto :goto_0

    .line 674
    :sswitch_2
    if-eqz p3, :cond_0

    const-string/jumbo v0, "extra.business"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 675
    const-string/jumbo v0, "extra.business"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->b(Lcom/yelp/android/serializable/YelpBusiness;)V

    goto :goto_0

    .line 680
    :sswitch_3
    if-eq p2, v0, :cond_0

    if-eqz p3, :cond_0

    const-string/jumbo v0, "extra.has_reached_menu"

    invoke-virtual {p3, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 684
    new-instance v0, Lcom/yelp/android/appdata/webrequests/aw;

    const-string/jumbo v1, "extra.business_id"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->B:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/appdata/webrequests/aw;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->s:Lcom/yelp/android/appdata/webrequests/aw;

    .line 688
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->s:Lcom/yelp/android/appdata/webrequests/aw;

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/aw;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    goto :goto_0

    .line 650
    :sswitch_data_0
    .sparse-switch
        0x3ee -> :sswitch_2
        0x3ef -> :sswitch_2
        0x3f0 -> :sswitch_2
        0x3f1 -> :sswitch_2
        0x3f2 -> :sswitch_0
        0x417 -> :sswitch_3
        0x41f -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 19

    .prologue
    .line 315
    invoke-super/range {p0 .. p1}, Lcom/yelp/android/ui/util/YelpListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 318
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {v2}, Lcom/yelp/android/ui/util/ae;->a(Landroid/content/Intent;)Lcom/yelp/android/ui/util/ae;

    move-result-object v2

    const-string/jumbo v3, "android.intent.action.SEARCH"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/yelp/android/ui/util/ae;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/ui/util/ae;

    move-result-object v2

    const-string/jumbo v3, "com.google.android.gms.actions.SEARCH_ACTION"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/yelp/android/ui/util/ae;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/ui/util/ae;

    move-result-object v2

    const-string/jumbo v3, "android.intent.action.MAIN"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/yelp/android/ui/util/ae;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/ui/util/ae;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/ui/util/ae;->a()Lcom/yelp/android/ui/util/ae;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    const v2, 0x7f030210

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->setContentView(I)V

    .line 332
    if-eqz p1, :cond_0

    .line 333
    new-instance v2, Lcom/yelp/android/ui/activities/search/f;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lcom/yelp/android/ui/activities/search/f;-><init>(Landroid/app/Activity;Landroid/os/Bundle;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->e:Lcom/yelp/android/ui/activities/search/f;

    .line 339
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->g()Lcom/yelp/android/appdata/o;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a:Lcom/yelp/android/appdata/o;

    .line 340
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a:Lcom/yelp/android/appdata/o;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a:Lcom/yelp/android/appdata/o;

    invoke-virtual {v2}, Lcom/yelp/android/appdata/o;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 341
    invoke-virtual/range {p0 .. p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->enableLoading()V

    .line 344
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a:Lcom/yelp/android/appdata/o;

    if-eqz v2, :cond_2

    if-eqz p1, :cond_2

    .line 345
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a:Lcom/yelp/android/appdata/o;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->x:Lcom/yelp/android/appdata/webrequests/k$b;

    invoke-virtual {v2, v3}, Lcom/yelp/android/appdata/o;->a(Lcom/yelp/android/appdata/webrequests/k$b;)V

    .line 348
    :cond_2
    new-instance v2, Lcom/yelp/android/util/u;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/yelp/android/util/u;-><init>(Landroid/app/Activity;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->r:Lcom/yelp/android/util/u;

    .line 349
    new-instance v2, Lcom/yelp/android/ui/util/aj;

    invoke-direct {v2}, Lcom/yelp/android/ui/util/aj;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->b:Lcom/yelp/android/ui/util/aj;

    .line 355
    new-instance v2, Lcom/yelp/android/ui/util/e;

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/view/View;

    invoke-direct {v2, v3}, Lcom/yelp/android/ui/util/e;-><init>([Landroid/view/View;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->g:Lcom/yelp/android/ui/util/e;

    .line 356
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->b:Lcom/yelp/android/ui/util/aj;

    const v3, 0x7f0f0041

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->g:Lcom/yelp/android/ui/util/e;

    invoke-virtual {v2, v3, v4}, Lcom/yelp/android/ui/util/aj;->a(ILandroid/widget/BaseAdapter;)V

    .line 358
    new-instance v2, Lcom/yelp/android/ui/util/e;

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/view/View;

    invoke-direct {v2, v3}, Lcom/yelp/android/ui/util/e;-><init>([Landroid/view/View;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->h:Lcom/yelp/android/ui/util/e;

    .line 359
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->b:Lcom/yelp/android/ui/util/aj;

    const v3, 0x7f0f0045

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->h:Lcom/yelp/android/ui/util/e;

    invoke-virtual {v2, v3, v4}, Lcom/yelp/android/ui/util/aj;->a(ILandroid/widget/BaseAdapter;)V

    .line 361
    const v2, 0x102002b

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->h:Lcom/yelp/android/ui/util/e;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->g:Lcom/yelp/android/ui/util/e;

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3, v4, v5}, Lcom/yelp/android/ui/panels/f;->a(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/ListView;Lcom/yelp/android/ui/util/e;Lcom/yelp/android/ui/util/e;)Lcom/yelp/android/ui/panels/f;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->f:Lcom/yelp/android/ui/panels/f;

    .line 370
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

    .line 380
    new-instance v2, Lcom/yelp/android/ui/panels/businesssearch/d;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/yelp/android/ui/panels/businesssearch/d;-><init>(Landroid/app/Activity;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->c:Lcom/yelp/android/ui/panels/businesssearch/d;

    .line 381
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->c:Lcom/yelp/android/ui/panels/businesssearch/d;

    invoke-virtual {v2, v3}, Lcom/yelp/android/ui/panels/businesssearch/d;->c(Ljava/util/Collection;)V

    .line 382
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->b:Lcom/yelp/android/ui/util/aj;

    const v4, 0x7f0f0043

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->c:Lcom/yelp/android/ui/panels/businesssearch/d;

    invoke-static {v5}, Lcom/yelp/android/ui/util/aj$c;->a(Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yelp/android/ui/util/aj$c;->b()Lcom/yelp/android/ui/util/aj$b;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/yelp/android/ui/util/aj;->a(ILcom/yelp/android/ui/util/aj$b;)V

    .line 384
    new-instance v2, Lcom/yelp/android/ui/util/e;

    const/4 v4, 0x0

    new-array v4, v4, [Landroid/view/View;

    invoke-direct {v2, v4}, Lcom/yelp/android/ui/util/e;-><init>([Landroid/view/View;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->i:Lcom/yelp/android/ui/util/e;

    .line 385
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->b:Lcom/yelp/android/ui/util/aj;

    const v4, 0x7f0f0040

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->i:Lcom/yelp/android/ui/util/e;

    invoke-virtual {v2, v4, v5}, Lcom/yelp/android/ui/util/aj;->a(ILandroid/widget/BaseAdapter;)V

    .line 388
    new-instance v2, Lcom/yelp/android/ui/panels/businesssearch/d;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/yelp/android/ui/panels/businesssearch/d;-><init>(Landroid/app/Activity;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->d:Lcom/yelp/android/ui/panels/businesssearch/d;

    .line 391
    new-instance v2, Lcom/yelp/android/ui/panels/businesssearch/SpellingSuggestPanel;

    invoke-virtual/range {p0 .. p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->m()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/yelp/android/ui/panels/businesssearch/SpellingSuggestPanel;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->k:Lcom/yelp/android/ui/panels/businesssearch/SpellingSuggestPanel;

    .line 395
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v4, 0x7f030142

    invoke-virtual/range {p0 .. p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->p:Landroid/view/View;

    .line 398
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->p:Landroid/view/View;

    new-instance v4, Landroid/widget/AbsListView$LayoutParams;

    invoke-virtual/range {p0 .. p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/AbsListView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 401
    const/16 v18, 0x0

    .line 403
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->e:Lcom/yelp/android/ui/activities/search/f;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a:Lcom/yelp/android/appdata/o;

    if-nez v2, :cond_5

    .line 404
    :cond_3
    new-instance v2, Lcom/yelp/android/ui/activities/search/f;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/yelp/android/ui/activities/search/f;-><init>(Landroid/app/Activity;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->e:Lcom/yelp/android/ui/activities/search/f;

    .line 406
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->e:Lcom/yelp/android/ui/activities/search/f;

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

    invoke-virtual {v2, v4}, Lcom/yelp/android/ui/activities/search/f;->a([Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;)V

    .line 415
    new-instance v2, Lcom/yelp/android/appdata/o;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->x:Lcom/yelp/android/appdata/webrequests/k$b;

    invoke-virtual/range {p0 .. p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->getDatabase()Lcom/yelp/android/database/g;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yelp/android/database/g;->e()Lcom/yelp/android/ca/a;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lcom/yelp/android/appdata/o;-><init>(Lcom/yelp/android/appdata/webrequests/k$b;Lcom/yelp/android/ca/a;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a:Lcom/yelp/android/appdata/o;

    .line 422
    invoke-virtual/range {p0 .. p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v4, "extra.query"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    .line 425
    :goto_0
    invoke-static {}, Lcom/yelp/android/ui/activities/search/d;->a()Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    move-result-object v4

    .line 426
    invoke-virtual/range {p0 .. p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string/jumbo v6, "query"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 427
    if-eqz v5, :cond_4

    .line 428
    new-instance v2, Lcom/yelp/android/appdata/webrequests/eo;

    invoke-direct {v2}, Lcom/yelp/android/appdata/webrequests/eo;-><init>()V

    .line 429
    sget-object v6, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;->DEFAULT:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;

    invoke-virtual {v2, v6}, Lcom/yelp/android/appdata/webrequests/eo;->a(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;)Lcom/yelp/android/appdata/webrequests/eo;

    .line 430
    invoke-virtual {v2, v5}, Lcom/yelp/android/appdata/webrequests/eo;->b(Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/eo;

    .line 431
    invoke-virtual/range {p0 .. p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string/jumbo v6, "extra.query"

    invoke-virtual {v2}, Lcom/yelp/android/appdata/webrequests/eo;->a()Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    move-result-object v2

    invoke-virtual {v5, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 435
    invoke-virtual/range {p0 .. p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v5, "extra.source"

    sget-object v6, Lcom/yelp/android/analytics/iris/IriSource;->GoogleVoiceSearch:Lcom/yelp/android/analytics/iris/IriSource;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 436
    const/4 v2, 0x1

    .line 439
    :cond_4
    if-eqz v2, :cond_7

    .line 440
    invoke-virtual/range {p0 .. p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->getIntent()Landroid/content/Intent;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a(Landroid/content/Intent;)V

    .line 458
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->b:Lcom/yelp/android/ui/util/aj;

    const v4, 0x7f0f0044

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->e:Lcom/yelp/android/ui/activities/search/f;

    invoke-static {v5}, Lcom/yelp/android/ui/util/aj$c;->a(Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yelp/android/ui/util/aj$c;->b()Lcom/yelp/android/ui/util/aj$b;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/yelp/android/ui/util/aj;->a(ILcom/yelp/android/ui/util/aj$b;)V

    .line 461
    new-instance v2, Lcom/yelp/android/ui/util/e;

    const/4 v4, 0x0

    new-array v4, v4, [Landroid/view/View;

    invoke-direct {v2, v4}, Lcom/yelp/android/ui/util/e;-><init>([Landroid/view/View;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->j:Lcom/yelp/android/ui/util/e;

    .line 462
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->b:Lcom/yelp/android/ui/util/aj;

    const v4, 0x7f0f003f

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->j:Lcom/yelp/android/ui/util/e;

    invoke-virtual {v2, v4, v5}, Lcom/yelp/android/ui/util/aj;->a(ILandroid/widget/BaseAdapter;)V

    .line 463
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->d:Lcom/yelp/android/ui/panels/businesssearch/d;

    invoke-virtual {v2, v3}, Lcom/yelp/android/ui/panels/businesssearch/d;->c(Ljava/util/Collection;)V

    .line 464
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->b:Lcom/yelp/android/ui/util/aj;

    const v3, 0x7f0f0042

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->d:Lcom/yelp/android/ui/panels/businesssearch/d;

    invoke-static {v4}, Lcom/yelp/android/ui/util/aj$c;->a(Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yelp/android/ui/util/aj$c;->b()Lcom/yelp/android/ui/util/aj$b;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/yelp/android/ui/util/aj;->a(ILcom/yelp/android/ui/util/aj$b;)V

    .line 468
    invoke-virtual/range {p0 .. p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setItemsCanFocus(Z)V

    .line 469
    invoke-virtual/range {p0 .. p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setDividerHeight(I)V

    .line 470
    invoke-virtual/range {p0 .. p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->w:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v2, v3}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 471
    invoke-virtual/range {p0 .. p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->k:Lcom/yelp/android/ui/panels/businesssearch/SpellingSuggestPanel;

    const-string/jumbo v4, "spelling suggestion"

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 472
    invoke-virtual/range {p0 .. p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->p:Landroid/view/View;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 473
    invoke-virtual/range {p0 .. p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->f()V

    .line 478
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->p:Landroid/view/View;

    const v3, 0x7f0f0415

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 479
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->z:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 481
    invoke-virtual/range {p0 .. p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->b:Lcom/yelp/android/ui/util/aj;

    invoke-virtual {v2, v3}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 482
    invoke-virtual/range {p0 .. p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->registerForContextMenu(Landroid/view/View;)V

    .line 483
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->p:Landroid/view/View;

    const v3, 0x7f0f0435

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 484
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->p:Landroid/view/View;

    const v4, 0x7f0f0436

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 486
    new-instance v2, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->p:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a:Lcom/yelp/android/appdata/o;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->e:Lcom/yelp/android/ui/activities/search/f;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->k:Lcom/yelp/android/ui/panels/businesssearch/SpellingSuggestPanel;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->c:Lcom/yelp/android/ui/panels/businesssearch/d;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->d:Lcom/yelp/android/ui/panels/businesssearch/d;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->b:Lcom/yelp/android/ui/util/aj;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->i:Lcom/yelp/android/ui/util/e;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->j:Lcom/yelp/android/ui/util/e;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->f:Lcom/yelp/android/ui/panels/f;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->h:Lcom/yelp/android/ui/util/e;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->r:Lcom/yelp/android/util/u;

    move-object/from16 v17, v0

    move-object/from16 v7, p0

    invoke-direct/range {v2 .. v18}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;-><init>(Landroid/widget/TextView;Landroid/view/View;Lcom/yelp/android/appdata/o;Lcom/yelp/android/ui/activities/search/f;Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;Landroid/widget/TextView;Lcom/yelp/android/ui/panels/businesssearch/SpellingSuggestPanel;Lcom/yelp/android/ui/panels/businesssearch/d;Lcom/yelp/android/ui/panels/businesssearch/d;Lcom/yelp/android/ui/util/aj;Lcom/yelp/android/ui/util/e;Lcom/yelp/android/ui/util/e;Lcom/yelp/android/ui/panels/f;Lcom/yelp/android/ui/util/e;Lcom/yelp/android/util/u;Z)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->m:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;

    .line 504
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->y:Lcom/yelp/android/util/BasicBroadcastReceiver;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/yelp/android/util/BasicBroadcastReceiver;->a(Landroid/content/Context;)V

    .line 505
    :goto_2
    return-void

    .line 323
    :catch_0
    move-exception v2

    .line 325
    invoke-static {v2}, Lcom/yelp/android/util/YelpLog;->remoteError(Ljava/lang/Throwable;)V

    .line 326
    invoke-virtual/range {p0 .. p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->finish()V

    goto :goto_2

    .line 422
    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 441
    :cond_7
    if-eqz v4, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v5, "extra.emptySearch"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_8

    .line 443
    invoke-virtual/range {p0 .. p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v5, "extra.query"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 444
    invoke-virtual/range {p0 .. p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v5, "extra.offset"

    invoke-virtual {v4}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->C()I

    move-result v4

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 446
    const/16 v18, 0x1

    .line 447
    invoke-virtual/range {p0 .. p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->getIntent()Landroid/content/Intent;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 450
    :cond_8
    sget-object v2, Lcom/yelp/android/util/ErrorType;->NO_PREV_SEARCH:Lcom/yelp/android/util/ErrorType;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->populateError(Lcom/yelp/android/util/ErrorType;)V

    .line 451
    invoke-static/range {p0 .. p0}, Lcom/yelp/android/ui/activities/search/d;->a(Landroid/app/Activity;)V

    .line 455
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->overridePendingTransition(II)V

    goto/16 :goto_1
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4

    .prologue
    .line 1883
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 1884
    iget v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 1885
    check-cast p2, Landroid/widget/ListView;

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    .line 1887
    if-nez v0, :cond_1

    .line 1924
    :cond_0
    :goto_0
    return-void

    .line 1892
    :cond_1
    instance-of v1, v0, Lcom/yelp/android/serializable/SearchResultLocalAd;

    if-eqz v1, :cond_2

    .line 1893
    check-cast v0, Lcom/yelp/android/serializable/SearchResultLocalAd;

    .line 1894
    invoke-virtual {v0}, Lcom/yelp/android/serializable/SearchResultLocalAd;->e()Lcom/yelp/android/serializable/BusinessSearchResult;

    move-result-object v1

    .line 1897
    sget-object v2, Lcom/yelp/android/analytics/iris/EventIri;->AdSearchListClick:Lcom/yelp/android/analytics/iris/EventIri;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/yelp/android/serializable/SearchResultLocalAd;->a(Z)Ljava/util/Map;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 1898
    invoke-virtual {v0}, Lcom/yelp/android/serializable/SearchResultLocalAd;->a()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    sget-object v2, Lcom/yelp/android/appdata/webrequests/TrackOfflineAttributionRequest$OfflineAttributionEventType;->AD_CLICK:Lcom/yelp/android/appdata/webrequests/TrackOfflineAttributionRequest$OfflineAttributionEventType;

    invoke-static {v0, v2}, Lcom/yelp/android/appdata/webrequests/TrackOfflineAttributionRequest;->a(Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/appdata/webrequests/TrackOfflineAttributionRequest$OfflineAttributionEventType;)Z

    move-object v0, v1

    .line 1906
    :goto_1
    invoke-virtual {v0}, Lcom/yelp/android/serializable/BusinessSearchResult;->a()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v1

    .line 1908
    invoke-virtual {v0}, Lcom/yelp/android/serializable/BusinessSearchResult;->a()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->z()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1909
    const v2, 0x7f02008e

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->setHeaderIcon(I)Landroid/view/ContextMenu;

    .line 1910
    invoke-static {p0, p1, v0}, Lcom/yelp/android/ui/util/ab;->a(Landroid/content/Context;Landroid/view/ContextMenu;Lcom/yelp/android/serializable/BusinessSearchResult;)V

    .line 1911
    invoke-virtual {v0}, Lcom/yelp/android/serializable/BusinessSearchResult;->a()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->U()Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f0704eb

    :goto_2
    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1916
    new-instance v2, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$7;

    invoke-direct {v2, p0, v1}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$7;-><init>(Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;Lcom/yelp/android/serializable/YelpBusiness;)V

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_0

    .line 1900
    :cond_2
    instance-of v1, v0, Lcom/yelp/android/serializable/BusinessSearchResult;

    if-eqz v1, :cond_0

    .line 1901
    check-cast v0, Lcom/yelp/android/serializable/BusinessSearchResult;

    goto :goto_1

    .line 1911
    :cond_3
    const v0, 0x7f070106

    goto :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 615
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 616
    invoke-static {p0, p1}, Lcom/yelp/android/ui/activities/search/d;->a(Landroid/support/v7/app/ActionBarActivity;Landroid/view/Menu;)V

    .line 617
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 556
    invoke-super {p0}, Lcom/yelp/android/ui/util/YelpListActivity;->onDestroy()V

    .line 557
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->v()V

    .line 558
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->y:Lcom/yelp/android/util/BasicBroadcastReceiver;

    invoke-virtual {v0, p0}, Lcom/yelp/android/util/BasicBroadcastReceiver;->b(Landroid/content/Context;)V

    .line 559
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->C:Lcom/yelp/android/util/BasicBroadcastReceiver;

    invoke-virtual {v0, p0}, Lcom/yelp/android/util/BasicBroadcastReceiver;->b(Landroid/content/Context;)V

    .line 560
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 564
    const-string/jumbo v0, "query"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 565
    const-string/jumbo v0, "extra.source"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/analytics/iris/IriSource;

    .line 566
    const-string/jumbo v2, "extra.search_launch_method"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 567
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 568
    iget-object v3, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a:Lcom/yelp/android/appdata/o;

    invoke-virtual {v3}, Lcom/yelp/android/appdata/o;->h()Lcom/yelp/android/appdata/webrequests/eo;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/yelp/android/appdata/webrequests/eo;->b(Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/eo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/webrequests/eo;->a()Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    move-result-object v1

    invoke-static {p0, v1, v0, v2}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a(Landroid/content/Context;Lcom/yelp/android/appdata/webrequests/SearchRequest;Lcom/yelp/android/analytics/iris/IriSource;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 574
    invoke-static {p0, p1}, Lcom/yelp/android/ui/activities/search/d;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 577
    :cond_0
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->setIntent(Landroid/content/Intent;)V

    .line 578
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a(Landroid/content/Intent;)V

    .line 579
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 628
    invoke-static {p0, p1}, Lcom/yelp/android/ui/activities/search/d;->a(Landroid/app/Activity;Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 629
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 631
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 534
    invoke-super {p0}, Lcom/yelp/android/ui/util/YelpListActivity;->onPause()V

    .line 535
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a:Lcom/yelp/android/appdata/o;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->m:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/o;->unregisterObserver(Ljava/lang/Object;)V

    .line 536
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->v()V

    .line 537
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->y()Lcom/yelp/android/appdata/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/e;->b()V

    .line 538
    const-string/jumbo v0, "add_bookmark_request"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->u:Lcom/yelp/android/appdata/webrequests/h;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->freezeRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 539
    const-string/jumbo v0, "remove_bookmark_request"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->v:Lcom/yelp/android/appdata/webrequests/dk;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->freezeRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 540
    const-string/jumbo v0, "continue_last_order_info_request"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->s:Lcom/yelp/android/appdata/webrequests/aw;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->freezeRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 541
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 622
    invoke-static {p0, p1}, Lcom/yelp/android/ui/activities/search/d;->a(Landroid/content/Context;Landroid/view/Menu;)V

    .line 623
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 509
    invoke-super {p0}, Lcom/yelp/android/ui/util/YelpListActivity;->onResume()V

    .line 510
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a:Lcom/yelp/android/appdata/o;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->m:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/o;->registerObserver(Ljava/lang/Object;)V

    .line 511
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->y()Lcom/yelp/android/appdata/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/e;->a()V

    .line 512
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->setSearchHotButtonSelected(Z)V

    .line 514
    const-string/jumbo v0, "add_bookmark_request"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->u:Lcom/yelp/android/appdata/webrequests/h;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->E:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->thawRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/h;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->u:Lcom/yelp/android/appdata/webrequests/h;

    .line 516
    const-string/jumbo v0, "remove_bookmark_request"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->v:Lcom/yelp/android/appdata/webrequests/dk;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->D:Lcom/yelp/android/appdata/webrequests/core/c$a;

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->thawRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/dk;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->v:Lcom/yelp/android/appdata/webrequests/dk;

    .line 519
    const-string/jumbo v0, "continue_last_order_info_request"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->s:Lcom/yelp/android/appdata/webrequests/aw;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->B:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->thawRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/aw;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->s:Lcom/yelp/android/appdata/webrequests/aw;

    .line 524
    return-void
.end method

.method public synthetic onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->f()Lcom/yelp/android/appdata/o;

    move-result-object v0

    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 528
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 529
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->e:Lcom/yelp/android/ui/activities/search/f;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/search/f;->a(Landroid/os/Bundle;)V

    .line 530
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 545
    invoke-super {p0}, Lcom/yelp/android/ui/util/YelpListActivity;->onStart()V

    .line 546
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->r:Lcom/yelp/android/util/u;

    invoke-virtual {v0}, Lcom/yelp/android/util/u;->a()V

    .line 547
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 550
    invoke-super {p0}, Lcom/yelp/android/ui/util/YelpListActivity;->onStop()V

    .line 551
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->r:Lcom/yelp/android/util/u;

    invoke-virtual {v0}, Lcom/yelp/android/util/u;->b()V

    .line 552
    return-void
.end method

.method public p()Lcom/yelp/android/appdata/o;
    .locals 1

    .prologue
    .line 2007
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a:Lcom/yelp/android/appdata/o;

    return-object v0
.end method

.method public populateError(Lcom/yelp/android/util/ErrorType;)V
    .locals 6

    .prologue
    const/16 v1, 0x8

    const/4 v5, -0x1

    const/4 v4, -0x2

    .line 975
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpListActivity;->populateError(Lcom/yelp/android/util/ErrorType;)V

    .line 976
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->k:Lcom/yelp/android/ui/panels/businesssearch/SpellingSuggestPanel;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/businesssearch/SpellingSuggestPanel;->setVisibility(I)V

    .line 977
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->p:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 978
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->b:Lcom/yelp/android/ui/util/aj;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/aj;->a(Z)V

    .line 980
    sget-object v0, Lcom/yelp/android/util/ErrorType;->NO_RESULTS:Lcom/yelp/android/util/ErrorType;

    if-ne p1, v0, :cond_3

    .line 981
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->getErrorPanel()Lcom/yelp/android/ui/panels/PanelError;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/PanelError;->b()V

    .line 985
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->o:Lcom/yelp/android/ui/panels/businesssearch/SpellingSuggestPanel;

    if-nez v0, :cond_0

    .line 986
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a:Lcom/yelp/android/appdata/o;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/o;->k()Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;

    move-result-object v0

    .line 987
    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 989
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 990
    new-instance v1, Lcom/yelp/android/ui/panels/businesssearch/SpellingSuggestPanel;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/panels/businesssearch/SpellingSuggestPanel;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->o:Lcom/yelp/android/ui/panels/businesssearch/SpellingSuggestPanel;

    .line 991
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 995
    iget-object v2, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->o:Lcom/yelp/android/ui/panels/businesssearch/SpellingSuggestPanel;

    invoke-virtual {v2, v1}, Lcom/yelp/android/ui/panels/businesssearch/SpellingSuggestPanel;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 996
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->o:Lcom/yelp/android/ui/panels/businesssearch/SpellingSuggestPanel;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->A:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/panels/businesssearch/SpellingSuggestPanel;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 998
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->o:Lcom/yelp/android/ui/panels/businesssearch/SpellingSuggestPanel;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/panels/businesssearch/SpellingSuggestPanel;->setSuggestion(Ljava/lang/String;)V

    .line 999
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->o:Lcom/yelp/android/ui/panels/businesssearch/SpellingSuggestPanel;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->addStatusView(Landroid/view/View;)V

    .line 1005
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->n:Landroid/view/View;

    if-nez v0, :cond_1

    .line 1006
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03013b

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->n:Landroid/view/View;

    .line 1009
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1013
    const/16 v1, 0x50

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1014
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->n:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1015
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->n:Landroid/view/View;

    const v1, 0x7f0204ae

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/ar;->a(Landroid/view/View;I)V

    .line 1017
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->n:Landroid/view/View;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->z:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1018
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->n:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->addStatusView(Landroid/view/View;)V

    .line 1023
    :cond_1
    :goto_1
    return-void

    .line 987
    :cond_2
    invoke-interface {v0}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1020
    :cond_3
    sget-object v0, Lcom/yelp/android/util/ErrorType;->NO_PREV_SEARCH:Lcom/yelp/android/util/ErrorType;

    if-ne p1, v0, :cond_1

    .line 1021
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->getErrorPanel()Lcom/yelp/android/ui/panels/PanelError;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/PanelError;->b()V

    goto :goto_1
.end method

.method public q_()V
    .locals 1

    .prologue
    .line 1046
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->enableLoading()V

    .line 1047
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a:Lcom/yelp/android/appdata/o;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/o;->c()Z

    .line 1048
    return-void
.end method

.method protected setHotButtonListeners()V
    .locals 2

    .prologue
    .line 583
    invoke-super {p0}, Lcom/yelp/android/ui/util/YelpListActivity;->setHotButtonListeners()V

    .line 584
    const v0, 0x7f0f0388

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$1;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$1;-><init>(Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 593
    return-void
.end method
