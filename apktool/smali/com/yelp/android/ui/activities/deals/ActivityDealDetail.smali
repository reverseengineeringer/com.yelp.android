.class public Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;
.super Lcom/yelp/android/ui/activities/support/YelpMapActivity;
.source "ActivityDealDetail.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;
.implements Lcom/yelp/android/appdata/webrequests/ApiRequest$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/deals/ActivityDealDetail$b;,
        Lcom/yelp/android/ui/activities/deals/ActivityDealDetail$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/activities/support/YelpMapActivity;",
        "Landroid/widget/RadioGroup$OnCheckedChangeListener;",
        "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
        "<",
        "Lcom/yelp/android/serializable/YelpDeal;",
        ">;"
    }
.end annotation


# static fields
.field public static a:Ljava/lang/String;

.field private static p:Ljava/lang/String;

.field private static q:Ljava/lang/String;

.field private static r:Ljava/lang/String;

.field private static s:Ljava/lang/String;

.field private static t:Ljava/lang/String;

.field private static u:I


# instance fields
.field private A:Lcom/yelp/android/serializable/YelpBusiness;

.field private B:Ljava/lang/String;

.field private C:Lcom/yelp/android/serializable/MapSpan;

.field private D:Lcom/yelp/android/ui/map/YelpMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/ui/map/YelpMap",
            "<",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            ">;"
        }
    .end annotation
.end field

.field private E:I

.field private F:Lcom/yelp/android/ui/panels/PanelLoading;

.field private G:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/yelp/android/ui/activities/deals/ActivityDealDetail$b;",
            ">;"
        }
    .end annotation
.end field

.field b:Lcom/yelp/android/ui/util/an;

.field c:Lcom/yelp/android/appdata/webrequests/bb;

.field d:Lcom/yelp/android/appdata/webrequests/ax;

.field e:Lcom/yelp/android/appdata/webrequests/ba;

.field f:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter",
            "<",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            ">;"
        }
    .end annotation
.end field

.field g:Lcom/yelp/android/ui/activities/reviewpage/c;

.field h:Landroid/widget/ListView;

.field i:Landroid/widget/FrameLayout;

.field j:Landroid/view/ViewGroup;

.field k:Lcom/yelp/android/ui/util/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/ui/util/w",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field l:Lcom/yelp/android/appdata/webrequests/k$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/k$b",
            "<",
            "Lcom/yelp/android/appdata/webrequests/ax$a;",
            ">;"
        }
    .end annotation
.end field

.field m:Lcom/yelp/android/appdata/webrequests/k$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/k$b",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/YelpBusinessReview;",
            ">;>;"
        }
    .end annotation
.end field

.field n:Landroid/widget/AdapterView$OnItemClickListener;

.field o:Landroid/widget/AdapterView$OnItemClickListener;

.field private v:Landroid/widget/RadioGroup;

.field private w:Landroid/widget/Button;

.field private x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            ">;"
        }
    .end annotation
.end field

.field private y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/YelpBusinessReview;",
            ">;"
        }
    .end annotation
.end field

.field private z:Lcom/yelp/android/serializable/YelpDeal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 92
    const-string/jumbo v0, "deal_id"

    sput-object v0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->a:Ljava/lang/String;

    .line 95
    const-string/jumbo v0, "deal"

    sput-object v0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->p:Ljava/lang/String;

    .line 96
    const-string/jumbo v0, "business_array"

    sput-object v0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->q:Ljava/lang/String;

    .line 97
    const-string/jumbo v0, "reviews_array"

    sput-object v0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->r:Ljava/lang/String;

    .line 98
    const-string/jumbo v0, "tab"

    sput-object v0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->s:Ljava/lang/String;

    .line 99
    const-string/jumbo v0, "span"

    sput-object v0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->t:Ljava/lang/String;

    .line 105
    const/4 v0, 0x4

    sput v0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->u:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpMapActivity;-><init>()V

    .line 126
    new-instance v0, Lcom/yelp/android/ui/activities/reviewpage/c;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/reviewpage/c;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->g:Lcom/yelp/android/ui/activities/reviewpage/c;

    .line 556
    new-instance v0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail$3;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail$3;-><init>(Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->k:Lcom/yelp/android/ui/util/w;

    .line 594
    new-instance v0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail$4;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail$4;-><init>(Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->l:Lcom/yelp/android/appdata/webrequests/k$b;

    .line 621
    new-instance v0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail$5;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail$5;-><init>(Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->m:Lcom/yelp/android/appdata/webrequests/k$b;

    .line 643
    new-instance v0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail$6;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail$6;-><init>(Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->n:Landroid/widget/AdapterView$OnItemClickListener;

    .line 663
    new-instance v0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail$7;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail$7;-><init>(Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->o:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 145
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 146
    sget-object v1, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    const-string/jumbo v1, "referring_business"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 148
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;Lcom/yelp/android/serializable/MapSpan;)Lcom/yelp/android/serializable/MapSpan;
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->C:Lcom/yelp/android/serializable/MapSpan;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;)Lcom/yelp/android/serializable/YelpBusiness;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->A:Lcom/yelp/android/serializable/YelpBusiness;

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->x:Ljava/util/List;

    return-object p1
.end method

.method private a(I)V
    .locals 2

    .prologue
    .line 452
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->F:Lcom/yelp/android/ui/panels/PanelLoading;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/PanelLoading;->setVisibility(I)V

    .line 453
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->h:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 454
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 456
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->G:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail$b;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail$b;->a:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->i:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->F:Lcom/yelp/android/ui/panels/PanelLoading;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 458
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->h:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 459
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->F:Lcom/yelp/android/ui/panels/PanelLoading;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/PanelLoading;->setVisibility(I)V

    .line 469
    :goto_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->h:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->G:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail$b;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail$b;->a:Landroid/widget/BaseAdapter;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 470
    return-void

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->G:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail$b;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail$b;->b:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 462
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->G:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail$b;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail$b;->b:Landroid/view/View;

    .line 463
    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 465
    :cond_1
    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->h:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->G:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail$b;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail$b;->c:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 466
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->h:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 467
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->h:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private a(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 250
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 251
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "/deal/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "yelp"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "yelp5.3"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 255
    :cond_0
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->k()Lcom/yelp/android/appdata/webrequests/core/MetricsManager;

    move-result-object v1

    new-instance v2, Lcom/yelp/android/analytics/n;

    invoke-direct {v2, v0}, Lcom/yelp/android/analytics/n;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->a(Lcom/yelp/android/analytics/b;)V

    .line 257
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 258
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 259
    sget-object v1, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->a:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 260
    const-string/jumbo v1, "referring_business"

    const/4 v0, 0x0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 264
    :cond_1
    sget-object v0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->t:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/MapSpan;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->C:Lcom/yelp/android/serializable/MapSpan;

    .line 265
    sget-object v0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->p:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpDeal;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->z:Lcom/yelp/android/serializable/YelpDeal;

    .line 266
    const-string/jumbo v0, "referring_business"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->A:Lcom/yelp/android/serializable/YelpBusiness;

    .line 267
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->z:Lcom/yelp/android/serializable/YelpDeal;

    if-nez v0, :cond_4

    .line 268
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->e:Lcom/yelp/android/appdata/webrequests/ba;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->e:Lcom/yelp/android/appdata/webrequests/ba;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/ba;->u()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 269
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->e:Lcom/yelp/android/appdata/webrequests/ba;

    invoke-virtual {v0, p0}, Lcom/yelp/android/appdata/webrequests/ba;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 282
    :goto_0
    return-void

    .line 271
    :cond_2
    sget-object v0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->B:Ljava/lang/String;

    .line 272
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->B:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 273
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->B:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 275
    :cond_3
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->finish()V

    goto :goto_0

    .line 279
    :cond_4
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->z:Lcom/yelp/android/serializable/YelpDeal;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpDeal;->x()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->B:Ljava/lang/String;

    .line 280
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->d()V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 502
    new-instance v0, Lcom/yelp/android/appdata/webrequests/ba;

    invoke-direct {v0, p1, p0}, Lcom/yelp/android/appdata/webrequests/ba;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->e:Lcom/yelp/android/appdata/webrequests/ba;

    .line 503
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->e:Lcom/yelp/android/appdata/webrequests/ba;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->enableLoading(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 504
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->e:Lcom/yelp/android/appdata/webrequests/ba;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/ba;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 505
    return-void
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;)Lcom/yelp/android/serializable/YelpDeal;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->z:Lcom/yelp/android/serializable/YelpDeal;

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->y:Ljava/util/List;

    return-object p1
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->w:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;)Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->G:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic e(Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;)V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->k()V

    return-void
.end method

.method static synthetic f(Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;)V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->l()V

    return-void
.end method

.method private j()V
    .locals 3

    .prologue
    .line 497
    new-instance v0, Lcom/yelp/android/appdata/webrequests/bb;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->z:Lcom/yelp/android/serializable/YelpDeal;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpDeal;->x()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->m:Lcom/yelp/android/appdata/webrequests/k$b;

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/appdata/webrequests/bb;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/k$b;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->c:Lcom/yelp/android/appdata/webrequests/bb;

    .line 498
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->c:Lcom/yelp/android/appdata/webrequests/bb;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/bb;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 499
    return-void
.end method

.method private k()V
    .locals 3

    .prologue
    const v2, 0x7f0f0161

    .line 519
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 529
    :cond_0
    :goto_0
    return-void

    .line 522
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->f:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->x:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->a(Ljava/util/List;)V

    .line 523
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->G:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail$b;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->D:Lcom/yelp/android/ui/map/YelpMap;

    iput-object v1, v0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail$b;->b:Landroid/view/View;

    .line 524
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->c()V

    .line 525
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->v:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 527
    invoke-direct {p0, v2}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->a(I)V

    goto :goto_0
.end method

.method private l()V
    .locals 2

    .prologue
    .line 532
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->g:Lcom/yelp/android/ui/activities/reviewpage/c;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->y:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/reviewpage/c;->a(Ljava/util/List;)V

    .line 533
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 225
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->D:Lcom/yelp/android/ui/map/YelpMap;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/map/YelpMap;->setClickable(Z)V

    .line 226
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->D:Lcom/yelp/android/ui/map/YelpMap;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/map/YelpMap;->setInteractive(Z)V

    .line 227
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->c()V

    .line 228
    return-void
.end method

.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/YelpDeal;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/serializable/YelpDeal;",
            ")V"
        }
    .end annotation

    .prologue
    .line 697
    iput-object p2, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->z:Lcom/yelp/android/serializable/YelpDeal;

    .line 698
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->d()V

    .line 699
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->disableLoading()V

    .line 700
    return-void
.end method

.method public b()Lcom/yelp/android/ui/activities/deals/ActivityDealDetail$a;
    .locals 1

    .prologue
    .line 220
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpMapActivity;->getLastCustomNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail$a;

    return-object v0
.end method

.method public c()V
    .locals 4

    .prologue
    .line 231
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->m()Z

    move-result v0

    if-nez v0, :cond_1

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 234
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 235
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->D:Lcom/yelp/android/ui/map/YelpMap;

    invoke-virtual {v0}, Lcom/yelp/android/ui/map/YelpMap;->g()V

    .line 236
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->D:Lcom/yelp/android/ui/map/YelpMap;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->x:Ljava/util/List;

    new-instance v2, Lcom/yelp/android/ui/map/j;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/yelp/android/ui/map/j;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/map/YelpMap;->a(Ljava/util/List;Lcom/yelp/android/ui/map/a;)V

    .line 239
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->C:Lcom/yelp/android/serializable/MapSpan;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->D:Lcom/yelp/android/ui/map/YelpMap;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->C:Lcom/yelp/android/serializable/MapSpan;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/map/YelpMap;->setMapSpan(Lcom/yelp/android/serializable/MapSpan;)V

    goto :goto_0
.end method

.method public d()V
    .locals 11

    .prologue
    const/4 v10, -0x1

    const v9, 0x7f0f048b

    const v2, 0x7f0f015f

    const v8, 0x7f0f048a

    const/4 v7, 0x0

    .line 286
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->w:Landroid/widget/Button;

    new-instance v1, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail$1;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail$1;-><init>(Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->z:Lcom/yelp/android/serializable/YelpDeal;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpDeal;->i()Lcom/yelp/android/serializable/YelpDeal$a;

    move-result-object v3

    .line 297
    const v0, 0x7f070256

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget v4, v3, Lcom/yelp/android/serializable/YelpDeal$a;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v7

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 299
    const v0, 0x7f0f0158

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/WebImageView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->z:Lcom/yelp/android/serializable/YelpDeal;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpDeal;->v()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageUrl(Ljava/lang/String;)V

    .line 301
    const v0, 0x7f0f0159

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, v3, Lcom/yelp/android/serializable/YelpDeal$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    const v0, 0x7f0f00ef

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->z:Lcom/yelp/android/serializable/YelpDeal;

    invoke-virtual {v1, p0}, Lcom/yelp/android/serializable/YelpDeal;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    const v0, 0x7f0f015a

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    .line 306
    iget-object v1, v3, Lcom/yelp/android/serializable/YelpDeal$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    const v1, 0x7f0f015a

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    check-cast v1, Landroid/widget/TextView;

    const v5, 0x7f0704e4

    invoke-virtual {p0, v5}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    invoke-virtual {v0, v7, v7}, Landroid/widget/TextView;->measure(II)V

    .line 313
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    sget v6, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->u:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    invoke-direct {v1, v5, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 317
    const/4 v0, 0x6

    invoke-virtual {v1, v0, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 318
    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 320
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f02054b

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 321
    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 322
    sget-object v6, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 323
    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 324
    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 325
    const v0, 0x7f0f015a

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 327
    const v0, 0x7f0f015b

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    const v0, 0x7f0f015b

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f070255

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    const v0, 0x7f0f015c

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, v3, Lcom/yelp/android/serializable/YelpDeal$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 334
    const v0, 0x7f0f015c

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f07051f

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 337
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->z:Lcom/yelp/android/serializable/YelpDeal;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpDeal;->d()I

    move-result v0

    if-le v0, v10, :cond_2

    .line 338
    const v0, 0x7f0f015d

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->z:Lcom/yelp/android/serializable/YelpDeal;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpDeal;->d()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 340
    const v0, 0x7f0f015d

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->z:Lcom/yelp/android/serializable/YelpDeal;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpDeal;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 346
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->z:Lcom/yelp/android/serializable/YelpDeal;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpDeal;->z()Ljava/util/List;

    move-result-object v0

    .line 347
    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->k:Lcom/yelp/android/ui/util/w;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/util/w;->a(Ljava/util/List;)V

    .line 348
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->k:Lcom/yelp/android/ui/util/w;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/w;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->k:Lcom/yelp/android/ui/util/w;

    const-string/jumbo v1, ""

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/w;->a(Ljava/util/List;)V

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->G:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail$b;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->k:Lcom/yelp/android/ui/util/w;

    iput-object v1, v0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail$b;->a:Landroid/widget/BaseAdapter;

    .line 353
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0301ae

    iget-object v3, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->h:Landroid/widget/ListView;

    invoke-virtual {v0, v1, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 356
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v1, v10, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 358
    const v1, 0x7f0f052c

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 359
    iget-object v3, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->z:Lcom/yelp/android/serializable/YelpDeal;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/YelpDeal;->t()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 360
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 362
    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->G:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail$b;

    iput-object v0, v1, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail$b;->b:Landroid/view/View;

    .line 364
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->e()V

    .line 365
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->h()V

    .line 367
    const v0, 0x7f0f0154

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 369
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->z:Lcom/yelp/android/serializable/YelpDeal;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpDeal;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 370
    const v0, 0x7f0f0156

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 371
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v10, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 374
    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->w:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 377
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->v:Landroid/widget/RadioGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setEnabled(Z)V

    .line 378
    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->v:Landroid/widget/RadioGroup;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_3

    move v0, v2

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/RadioGroup;->check(I)V

    .line 382
    return-void

    .line 343
    :cond_2
    const v0, 0x7f0f015d

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 378
    :cond_3
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    sget-object v3, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->s:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_1
.end method

.method e()V
    .locals 2

    .prologue
    .line 385
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->x:Ljava/util/List;

    .line 386
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->x:Ljava/util/List;

    if-nez v0, :cond_1

    .line 387
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->x:Ljava/util/List;

    .line 388
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->d:Lcom/yelp/android/appdata/webrequests/ax;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->d:Lcom/yelp/android/appdata/webrequests/ax;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/ax;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->d:Lcom/yelp/android/appdata/webrequests/ax;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->l:Lcom/yelp/android/appdata/webrequests/k$b;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/ax;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 397
    :goto_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->y:Ljava/util/List;

    .line 398
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->y:Ljava/util/List;

    if-nez v0, :cond_3

    .line 399
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->y:Ljava/util/List;

    .line 400
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->c:Lcom/yelp/android/appdata/webrequests/bb;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->c:Lcom/yelp/android/appdata/webrequests/bb;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/bb;->u()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 401
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->c:Lcom/yelp/android/appdata/webrequests/bb;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->m:Lcom/yelp/android/appdata/webrequests/k$b;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/bb;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 408
    :goto_1
    return-void

    .line 391
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->i()V

    goto :goto_0

    .line 394
    :cond_1
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->k()V

    goto :goto_0

    .line 403
    :cond_2
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->j()V

    goto :goto_1

    .line 406
    :cond_3
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->l()V

    goto :goto_1
.end method

.method public f()Lcom/yelp/android/ui/activities/deals/ActivityDealDetail$a;
    .locals 2

    .prologue
    .line 437
    new-instance v0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail$a;-><init>(Lcom/yelp/android/ui/activities/deals/ActivityDealDetail$1;)V

    .line 438
    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->d:Lcom/yelp/android/appdata/webrequests/ax;

    iput-object v1, v0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail$a;->b:Lcom/yelp/android/appdata/webrequests/ax;

    .line 439
    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->c:Lcom/yelp/android/appdata/webrequests/bb;

    iput-object v1, v0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail$a;->a:Lcom/yelp/android/appdata/webrequests/bb;

    .line 440
    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->e:Lcom/yelp/android/appdata/webrequests/ba;

    iput-object v1, v0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail$a;->c:Lcom/yelp/android/appdata/webrequests/ba;

    .line 441
    return-object v0
.end method

.method g()V
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->b:Lcom/yelp/android/ui/util/an;

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->b:Lcom/yelp/android/ui/util/an;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/an;->cancel()V

    .line 476
    :cond_0
    return-void
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 704
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->Deal:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getLastCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->b()Lcom/yelp/android/ui/activities/deals/ActivityDealDetail$a;

    move-result-object v0

    return-object v0
.end method

.method public getParametersForIri(Lcom/yelp/android/analytics/iris/a;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/analytics/iris/a;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 709
    const-string/jumbo v0, "id"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->B:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method h()V
    .locals 6

    .prologue
    .line 479
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->z:Lcom/yelp/android/serializable/YelpDeal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->z:Lcom/yelp/android/serializable/YelpDeal;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpDeal;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 480
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->g()V

    .line 481
    new-instance v1, Lcom/yelp/android/ui/util/an;

    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->z:Lcom/yelp/android/serializable/YelpDeal;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpDeal;->f()J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const v0, 0x7f0f0156

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, v2, v3, v0}, Lcom/yelp/android/ui/util/an;-><init>(JLandroid/widget/TextView;)V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->b:Lcom/yelp/android/ui/util/an;

    .line 485
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->b:Lcom/yelp/android/ui/util/an;

    new-instance v1, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail$2;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail$2;-><init>(Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/an;->a(Lcom/yelp/android/ui/util/an$a;)V

    .line 492
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->b:Lcom/yelp/android/ui/util/an;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/an;->start()Landroid/os/CountDownTimer;

    .line 494
    :cond_0
    return-void
.end method

.method public i()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 513
    new-instance v0, Lcom/yelp/android/appdata/webrequests/ax;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->z:Lcom/yelp/android/serializable/YelpDeal;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpDeal;->x()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->l:Lcom/yelp/android/appdata/webrequests/k$b;

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/yelp/android/appdata/webrequests/ax;-><init>(Ljava/lang/String;IILcom/yelp/android/appdata/webrequests/k$b;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->d:Lcom/yelp/android/appdata/webrequests/ax;

    .line 515
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->d:Lcom/yelp/android/appdata/webrequests/ax;

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/ax;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 516
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->v:Landroid/widget/RadioGroup;

    if-ne p1, v0, :cond_0

    if-lez p2, :cond_0

    .line 447
    invoke-direct {p0, p2}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->a(I)V

    .line 449
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 157
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpMapActivity;->onCreate(Landroid/os/Bundle;)V

    .line 158
    const v0, 0x7f030030

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->setContentView(I)V

    .line 159
    const v0, 0x7f07067f

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->setTitle(I)V

    .line 161
    const/4 v0, 0x3

    iput v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->E:I

    .line 162
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->x:Ljava/util/List;

    .line 163
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->y:Ljava/util/List;

    .line 164
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030031

    iget-object v2, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->h:Landroid/widget/ListView;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->j:Landroid/view/ViewGroup;

    .line 168
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->i:Landroid/widget/FrameLayout;

    .line 169
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->i:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v4, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    new-instance v0, Lcom/yelp/android/ui/map/YelpMap;

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->r()Lcom/yelp/android/appdata/LocationService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/LocationService;->c()Landroid/location/Location;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/yelp/android/ui/map/YelpMap;-><init>(Landroid/content/Context;Landroid/location/Location;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->D:Lcom/yelp/android/ui/map/YelpMap;

    .line 175
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->D:Lcom/yelp/android/ui/map/YelpMap;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x12c

    invoke-static {v2}, Lcom/yelp/android/appdata/n;->a(I)I

    move-result v2

    invoke-direct {v1, v4, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/map/YelpMap;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->D:Lcom/yelp/android/ui/map/YelpMap;

    sget v1, Lcom/yelp/android/appdata/n;->n:I

    invoke-virtual {v0, v3, v1, v3, v3}, Lcom/yelp/android/ui/map/YelpMap;->setPadding(IIII)V

    .line 178
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->D:Lcom/yelp/android/ui/map/YelpMap;

    const v1, 0x7f0e008b

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/map/YelpMap;->setBackgroundResource(I)V

    .line 179
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->D:Lcom/yelp/android/ui/map/YelpMap;

    new-instance v1, Lcom/yelp/android/ui/map/b;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/map/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1, v1}, Lcom/yelp/android/ui/map/YelpMap;->a(Landroid/os/Bundle;Lcom/yelp/android/ui/map/e;)V

    .line 181
    new-instance v0, Lcom/yelp/android/ui/panels/PanelLoading;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/panels/PanelLoading;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->F:Lcom/yelp/android/ui/panels/PanelLoading;

    .line 182
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->F:Lcom/yelp/android/ui/panels/PanelLoading;

    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/PanelLoading;->a()V

    .line 183
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->F:Lcom/yelp/android/ui/panels/PanelLoading;

    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->F:Lcom/yelp/android/ui/panels/PanelLoading;

    invoke-virtual {v2}, Lcom/yelp/android/ui/panels/PanelLoading;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/PanelLoading;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 186
    const v0, 0x7f0f0157

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->h:Landroid/widget/ListView;

    .line 187
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->h:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->j:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v5, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 188
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->h:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v5, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 189
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->h:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->k:Lcom/yelp/android/ui/util/w;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 190
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->h:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 191
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->h:Landroid/widget/ListView;

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 193
    new-instance v0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->f:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;

    .line 194
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->f:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    sget-object v2, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->RATING:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    aput-object v2, v1, v3

    sget-object v2, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->ADDRESS:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->a([Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;)V

    .line 195
    const v0, 0x7f0f015e

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->v:Landroid/widget/RadioGroup;

    .line 196
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->v:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->clearCheck()V

    .line 197
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->v:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v3}, Landroid/widget/RadioGroup;->setEnabled(Z)V

    .line 198
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->v:Landroid/widget/RadioGroup;

    invoke-virtual {v0, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 200
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->G:Landroid/util/SparseArray;

    .line 201
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->G:Landroid/util/SparseArray;

    const v1, 0x7f0f015f

    new-instance v2, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail$b;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->k:Lcom/yelp/android/ui/util/w;

    invoke-direct {v2, p0, v3, v5, v5}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail$b;-><init>(Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;Landroid/widget/BaseAdapter;Landroid/view/View;Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 202
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->G:Landroid/util/SparseArray;

    const v1, 0x7f0f0160

    new-instance v2, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail$b;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->g:Lcom/yelp/android/ui/activities/reviewpage/c;

    iget-object v4, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->n:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-direct {v2, p0, v3, v5, v4}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail$b;-><init>(Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;Landroid/widget/BaseAdapter;Landroid/view/View;Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 203
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->G:Landroid/util/SparseArray;

    const v1, 0x7f0f0161

    new-instance v2, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail$b;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->f:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;

    iget-object v4, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->o:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-direct {v2, p0, v3, v5, v4}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail$b;-><init>(Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;Landroid/widget/BaseAdapter;Landroid/view/View;Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 205
    const v0, 0x7f0f0155

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->w:Landroid/widget/Button;

    .line 207
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->b()Lcom/yelp/android/ui/activities/deals/ActivityDealDetail$a;

    move-result-object v0

    .line 209
    if-eqz v0, :cond_0

    .line 210
    iget-object v1, v0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail$a;->a:Lcom/yelp/android/appdata/webrequests/bb;

    iput-object v1, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->c:Lcom/yelp/android/appdata/webrequests/bb;

    .line 211
    iget-object v1, v0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail$a;->b:Lcom/yelp/android/appdata/webrequests/ax;

    iput-object v1, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->d:Lcom/yelp/android/appdata/webrequests/ax;

    .line 212
    iget-object v0, v0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail$a;->c:Lcom/yelp/android/appdata/webrequests/ba;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->e:Lcom/yelp/android/appdata/webrequests/ba;

    .line 215
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->a(Landroid/content/Intent;)V

    .line 216
    return-void
.end method

.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/YelpException;",
            ")V"
        }
    .end annotation

    .prologue
    .line 682
    instance-of v0, p1, Lcom/yelp/android/appdata/webrequests/ba;

    if-eqz v0, :cond_0

    .line 683
    iget v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->E:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->E:I

    .line 684
    iget v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->E:I

    if-lez v0, :cond_1

    .line 685
    check-cast p1, Lcom/yelp/android/appdata/webrequests/ba;

    iget-object v0, p1, Lcom/yelp/android/appdata/webrequests/ba;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->a(Ljava/lang/String;)V

    .line 693
    :cond_0
    :goto_0
    return-void

    .line 689
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->disableLoading()V

    .line 690
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->finish()V

    goto :goto_0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 246
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->a(Landroid/content/Intent;)V

    .line 247
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 418
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpMapActivity;->onPause()V

    .line 419
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->g()V

    .line 420
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 412
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpMapActivity;->onResume()V

    .line 413
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->h()V

    .line 414
    return-void
.end method

.method public synthetic onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->f()Lcom/yelp/android/ui/activities/deals/ActivityDealDetail$a;

    move-result-object v0

    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 424
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->p:Ljava/lang/String;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->z:Lcom/yelp/android/serializable/YelpDeal;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 425
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->r:Ljava/lang/String;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->y:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 428
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->q:Ljava/lang/String;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->x:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 431
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->s:Ljava/lang/String;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->v:Landroid/widget/RadioGroup;

    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 432
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->t:Ljava/lang/String;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->C:Lcom/yelp/android/serializable/MapSpan;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 433
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 89
    check-cast p2, Lcom/yelp/android/serializable/YelpDeal;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/YelpDeal;)V

    return-void
.end method
