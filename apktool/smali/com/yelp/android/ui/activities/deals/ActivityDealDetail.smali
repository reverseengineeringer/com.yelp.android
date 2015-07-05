.class public Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;
.super Lcom/yelp/android/ui/activities/support/YelpMapActivity;
.source "ActivityDealDetail.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;
.implements Lcom/yelp/android/appdata/webrequests/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/activities/support/YelpMapActivity;",
        "Landroid/widget/RadioGroup$OnCheckedChangeListener;",
        "Lcom/yelp/android/appdata/webrequests/m",
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
            "Lcom/yelp/android/ui/activities/deals/i;",
            ">;"
        }
    .end annotation
.end field

.field b:Lcom/yelp/android/ui/util/cg;

.field c:Lcom/yelp/android/appdata/webrequests/bk;

.field d:Lcom/yelp/android/appdata/webrequests/bf;

.field e:Lcom/yelp/android/appdata/webrequests/bj;

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

.field g:Lcom/yelp/android/ui/activities/reviewpage/ak;

.field h:Landroid/widget/ListView;

.field i:Landroid/widget/FrameLayout;

.field j:Landroid/view/ViewGroup;

.field k:Lcom/yelp/android/ui/util/au;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/ui/util/au",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field l:Lcom/yelp/android/appdata/webrequests/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/j",
            "<",
            "Lcom/yelp/android/appdata/webrequests/bg;",
            ">;"
        }
    .end annotation
.end field

.field m:Lcom/yelp/android/appdata/webrequests/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/j",
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
    .line 86
    const-string/jumbo v0, "deal"

    sput-object v0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->p:Ljava/lang/String;

    .line 87
    const-string/jumbo v0, "deal_id"

    sput-object v0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->a:Ljava/lang/String;

    .line 88
    const-string/jumbo v0, "business_array"

    sput-object v0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->q:Ljava/lang/String;

    .line 89
    const-string/jumbo v0, "reviews_array"

    sput-object v0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->r:Ljava/lang/String;

    .line 90
    const-string/jumbo v0, "tab"

    sput-object v0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->s:Ljava/lang/String;

    .line 91
    const-string/jumbo v0, "span"

    sput-object v0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->t:Ljava/lang/String;

    .line 99
    const/4 v0, 0x4

    sput v0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->u:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpMapActivity;-><init>()V

    .line 120
    new-instance v0, Lcom/yelp/android/ui/activities/reviewpage/ak;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/reviewpage/ak;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->g:Lcom/yelp/android/ui/activities/reviewpage/ak;

    .line 522
    new-instance v0, Lcom/yelp/android/ui/activities/deals/c;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/deals/c;-><init>(Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->k:Lcom/yelp/android/ui/util/au;

    .line 558
    new-instance v0, Lcom/yelp/android/ui/activities/deals/d;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/deals/d;-><init>(Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->l:Lcom/yelp/android/appdata/webrequests/j;

    .line 584
    new-instance v0, Lcom/yelp/android/ui/activities/deals/e;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/deals/e;-><init>(Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->m:Lcom/yelp/android/appdata/webrequests/j;

    .line 604
    new-instance v0, Lcom/yelp/android/ui/activities/deals/f;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/deals/f;-><init>(Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->n:Landroid/widget/AdapterView$OnItemClickListener;

    .line 618
    new-instance v0, Lcom/yelp/android/ui/activities/deals/g;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/deals/g;-><init>(Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->o:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 139
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 140
    sget-object v1, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    const-string/jumbo v1, "referring_business"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 142
    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpDeal;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 132
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 133
    sget-object v1, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->p:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 134
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;Lcom/yelp/android/serializable/MapSpan;)Lcom/yelp/android/serializable/MapSpan;
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->C:Lcom/yelp/android/serializable/MapSpan;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;)Lcom/yelp/android/serializable/YelpBusiness;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->A:Lcom/yelp/android/serializable/YelpBusiness;

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->x:Ljava/util/List;

    return-object p1
.end method

.method private a(I)V
    .locals 2

    .prologue
    .line 422
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->F:Lcom/yelp/android/ui/panels/PanelLoading;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/PanelLoading;->setVisibility(I)V

    .line 423
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->h:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 424
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 426
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->G:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/deals/i;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/deals/i;->a:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->i:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->F:Lcom/yelp/android/ui/panels/PanelLoading;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 428
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->h:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 429
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->F:Lcom/yelp/android/ui/panels/PanelLoading;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/PanelLoading;->setVisibility(I)V

    .line 439
    :goto_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->h:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->G:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/deals/i;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/deals/i;->a:Landroid/widget/BaseAdapter;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 440
    return-void

    .line 431
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->G:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/deals/i;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/deals/i;->b:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 432
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->G:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/deals/i;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/deals/i;->b:Landroid/view/View;

    .line 433
    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 435
    :cond_1
    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->h:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->G:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/deals/i;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/deals/i;->c:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 436
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->h:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 437
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->h:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private a(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 241
    sget-object v0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->t:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/MapSpan;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->C:Lcom/yelp/android/serializable/MapSpan;

    .line 242
    sget-object v0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->p:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpDeal;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->z:Lcom/yelp/android/serializable/YelpDeal;

    .line 243
    const-string/jumbo v0, "referring_business"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->A:Lcom/yelp/android/serializable/YelpBusiness;

    .line 244
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->z:Lcom/yelp/android/serializable/YelpDeal;

    if-nez v0, :cond_2

    .line 245
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->e:Lcom/yelp/android/appdata/webrequests/bj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->e:Lcom/yelp/android/appdata/webrequests/bj;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/bj;->isFetching()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->e:Lcom/yelp/android/appdata/webrequests/bj;

    invoke-virtual {v0, p0}, Lcom/yelp/android/appdata/webrequests/bj;->setCallback(Lcom/yelp/android/appdata/webrequests/m;)V

    .line 259
    :goto_0
    return-void

    .line 248
    :cond_0
    sget-object v0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->B:Ljava/lang/String;

    .line 249
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->B:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 250
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->B:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 252
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->finish()V

    goto :goto_0

    .line 256
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->z:Lcom/yelp/android/serializable/YelpDeal;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpDeal;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->B:Ljava/lang/String;

    .line 257
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->d()V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 469
    new-instance v0, Lcom/yelp/android/appdata/webrequests/bj;

    invoke-direct {v0, p1, p0}, Lcom/yelp/android/appdata/webrequests/bj;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->e:Lcom/yelp/android/appdata/webrequests/bj;

    .line 470
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->e:Lcom/yelp/android/appdata/webrequests/bj;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->enableLoading(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 471
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->e:Lcom/yelp/android/appdata/webrequests/bj;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/bj;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 472
    return-void
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;)Lcom/yelp/android/serializable/YelpDeal;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->z:Lcom/yelp/android/serializable/YelpDeal;

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->y:Ljava/util/List;

    return-object p1
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->w:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;)Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->G:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic e(Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->k()V

    return-void
.end method

.method static synthetic f(Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->l()V

    return-void
.end method

.method private j()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 464
    new-instance v0, Lcom/yelp/android/appdata/webrequests/bk;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->z:Lcom/yelp/android/serializable/YelpDeal;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpDeal;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->m:Lcom/yelp/android/appdata/webrequests/j;

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/yelp/android/appdata/webrequests/bk;-><init>(Ljava/lang/String;IILcom/yelp/android/appdata/webrequests/j;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->c:Lcom/yelp/android/appdata/webrequests/bk;

    .line 465
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->c:Lcom/yelp/android/appdata/webrequests/bk;

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/bk;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 466
    return-void
.end method

.method private k()V
    .locals 3

    .prologue
    const v2, 0x7f0c0122

    .line 486
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 496
    :cond_0
    :goto_0
    return-void

    .line 489
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->f:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->x:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->a(Ljava/util/List;)V

    .line 490
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->G:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/deals/i;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->D:Lcom/yelp/android/ui/map/YelpMap;

    iput-object v1, v0, Lcom/yelp/android/ui/activities/deals/i;->b:Landroid/view/View;

    .line 491
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->c()V

    .line 492
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->v:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 494
    invoke-direct {p0, v2}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->a(I)V

    goto :goto_0
.end method

.method private l()V
    .locals 2

    .prologue
    .line 499
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->g:Lcom/yelp/android/ui/activities/reviewpage/ak;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->y:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/reviewpage/ak;->a(Ljava/util/List;)V

    .line 500
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 217
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->D:Lcom/yelp/android/ui/map/YelpMap;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/map/YelpMap;->setClickable(Z)V

    .line 218
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->D:Lcom/yelp/android/ui/map/YelpMap;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/map/YelpMap;->setInteractive(Z)V

    .line 219
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->c()V

    .line 220
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
    .line 650
    iput-object p2, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->z:Lcom/yelp/android/serializable/YelpDeal;

    .line 651
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->d()V

    .line 652
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->disableLoading()V

    .line 653
    return-void
.end method

.method public b()Lcom/yelp/android/ui/activities/deals/h;
    .locals 1

    .prologue
    .line 212
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpMapActivity;->getLastCustomNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/deals/h;

    return-object v0
.end method

.method public c()V
    .locals 4

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->p()Z

    move-result v0

    if-nez v0, :cond_1

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 227
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->D:Lcom/yelp/android/ui/map/YelpMap;

    invoke-virtual {v0}, Lcom/yelp/android/ui/map/YelpMap;->f()V

    .line 228
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->D:Lcom/yelp/android/ui/map/YelpMap;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->x:Ljava/util/List;

    new-instance v2, Lcom/yelp/android/ui/map/k;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/yelp/android/ui/map/k;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/map/YelpMap;->a(Ljava/util/List;Lcom/yelp/android/ui/map/a;)Ljava/lang/Runnable;

    .line 230
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->C:Lcom/yelp/android/serializable/MapSpan;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->D:Lcom/yelp/android/ui/map/YelpMap;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->C:Lcom/yelp/android/serializable/MapSpan;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/map/YelpMap;->setMapSpan(Lcom/yelp/android/serializable/MapSpan;)V

    goto :goto_0
.end method

.method public d()V
    .locals 11

    .prologue
    const/4 v10, -0x1

    const v9, 0x7f0c03ac

    const v2, 0x7f0c0120

    const v8, 0x7f0c03ab

    const/4 v7, 0x0

    .line 263
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->w:Landroid/widget/Button;

    new-instance v1, Lcom/yelp/android/ui/activities/deals/a;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/deals/a;-><init>(Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->z:Lcom/yelp/android/serializable/YelpDeal;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpDeal;->getDisplayPrices()Lcom/yelp/android/serializable/ej;

    move-result-object v3

    .line 272
    const v0, 0x7f070209

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget v4, v3, Lcom/yelp/android/serializable/ej;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v7

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 274
    const v0, 0x7f0c0118

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/WebImageView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->z:Lcom/yelp/android/serializable/YelpDeal;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpDeal;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageUrl(Ljava/lang/String;)V

    .line 276
    const v0, 0x7f0c011a

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, v3, Lcom/yelp/android/serializable/ej;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    const v0, 0x7f0c0119

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->z:Lcom/yelp/android/serializable/YelpDeal;

    invoke-virtual {v1, p0}, Lcom/yelp/android/serializable/YelpDeal;->getDealTitleWithBizName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    const v0, 0x7f0c011b

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    .line 281
    iget-object v1, v3, Lcom/yelp/android/serializable/ej;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    const v1, 0x7f0c011b

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    check-cast v1, Landroid/widget/TextView;

    const v5, 0x7f0704cb

    invoke-virtual {p0, v5}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    invoke-virtual {v0, v7, v7}, Landroid/widget/TextView;->measure(II)V

    .line 288
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    sget v6, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->u:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    invoke-direct {v1, v5, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 291
    const/4 v0, 0x6

    invoke-virtual {v1, v0, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 292
    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 294
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f0203c8

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 295
    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 296
    sget-object v6, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 297
    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 298
    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 299
    const v0, 0x7f0c011b

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 301
    const v0, 0x7f0c011c

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    const v0, 0x7f0c011c

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f070208

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    const v0, 0x7f0c011d

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, v3, Lcom/yelp/android/serializable/ej;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    const v0, 0x7f0c011d

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f070523

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->z:Lcom/yelp/android/serializable/YelpDeal;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpDeal;->getOptionalCount()I

    move-result v0

    if-le v0, v10, :cond_2

    .line 312
    const v0, 0x7f0c011e

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->z:Lcom/yelp/android/serializable/YelpDeal;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpDeal;->getOptionalCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    const v0, 0x7f0c011e

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->z:Lcom/yelp/android/serializable/YelpDeal;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpDeal;->getOptionalString()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 320
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->z:Lcom/yelp/android/serializable/YelpDeal;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpDeal;->getDescription()Ljava/util/List;

    move-result-object v0

    .line 321
    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->k:Lcom/yelp/android/ui/util/au;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/util/au;->a(Ljava/util/List;)V

    .line 322
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->k:Lcom/yelp/android/ui/util/au;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/au;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->k:Lcom/yelp/android/ui/util/au;

    const-string/jumbo v1, ""

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/au;->a(Ljava/util/List;)V

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->G:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/deals/i;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->k:Lcom/yelp/android/ui/util/au;

    iput-object v1, v0, Lcom/yelp/android/ui/activities/deals/i;->a:Landroid/widget/BaseAdapter;

    .line 327
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03014b

    iget-object v3, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->h:Landroid/widget/ListView;

    invoke-virtual {v0, v1, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 329
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v1, v10, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 331
    const v1, 0x7f0c0442

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 332
    iget-object v3, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->z:Lcom/yelp/android/serializable/YelpDeal;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/YelpDeal;->getTerms()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 333
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 335
    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->G:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/ui/activities/deals/i;

    iput-object v0, v1, Lcom/yelp/android/ui/activities/deals/i;->b:Landroid/view/View;

    .line 337
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->e()V

    .line 338
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->h()V

    .line 340
    const v0, 0x7f0c0114

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 342
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->z:Lcom/yelp/android/serializable/YelpDeal;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpDeal;->isStandingDeal()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 343
    const v0, 0x7f0c0116

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 344
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v10, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 346
    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->w:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 349
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->v:Landroid/widget/RadioGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setEnabled(Z)V

    .line 350
    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->v:Landroid/widget/RadioGroup;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_3

    move v0, v2

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/RadioGroup;->check(I)V

    .line 354
    return-void

    .line 317
    :cond_2
    const v0, 0x7f0c011e

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 350
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
    .line 357
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->x:Ljava/util/List;

    .line 358
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->x:Ljava/util/List;

    if-nez v0, :cond_1

    .line 359
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->x:Ljava/util/List;

    .line 360
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->d:Lcom/yelp/android/appdata/webrequests/bf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->d:Lcom/yelp/android/appdata/webrequests/bf;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/bf;->isFetching()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->d:Lcom/yelp/android/appdata/webrequests/bf;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->l:Lcom/yelp/android/appdata/webrequests/j;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/bf;->setCallback(Lcom/yelp/android/appdata/webrequests/m;)V

    .line 369
    :goto_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->y:Ljava/util/List;

    .line 370
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->y:Ljava/util/List;

    if-nez v0, :cond_3

    .line 371
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->y:Ljava/util/List;

    .line 372
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->c:Lcom/yelp/android/appdata/webrequests/bk;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->c:Lcom/yelp/android/appdata/webrequests/bk;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/bk;->isFetching()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 373
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->c:Lcom/yelp/android/appdata/webrequests/bk;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->m:Lcom/yelp/android/appdata/webrequests/j;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/bk;->setCallback(Lcom/yelp/android/appdata/webrequests/m;)V

    .line 380
    :goto_1
    return-void

    .line 363
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->i()V

    goto :goto_0

    .line 366
    :cond_1
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->k()V

    goto :goto_0

    .line 375
    :cond_2
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->j()V

    goto :goto_1

    .line 378
    :cond_3
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->l()V

    goto :goto_1
.end method

.method public f()Lcom/yelp/android/ui/activities/deals/h;
    .locals 2

    .prologue
    .line 407
    new-instance v0, Lcom/yelp/android/ui/activities/deals/h;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yelp/android/ui/activities/deals/h;-><init>(Lcom/yelp/android/ui/activities/deals/a;)V

    .line 408
    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->d:Lcom/yelp/android/appdata/webrequests/bf;

    iput-object v1, v0, Lcom/yelp/android/ui/activities/deals/h;->b:Lcom/yelp/android/appdata/webrequests/bf;

    .line 409
    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->c:Lcom/yelp/android/appdata/webrequests/bk;

    iput-object v1, v0, Lcom/yelp/android/ui/activities/deals/h;->a:Lcom/yelp/android/appdata/webrequests/bk;

    .line 410
    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->e:Lcom/yelp/android/appdata/webrequests/bj;

    iput-object v1, v0, Lcom/yelp/android/ui/activities/deals/h;->c:Lcom/yelp/android/appdata/webrequests/bj;

    .line 411
    return-object v0
.end method

.method g()V
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->b:Lcom/yelp/android/ui/util/cg;

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->b:Lcom/yelp/android/ui/util/cg;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/cg;->cancel()V

    .line 446
    :cond_0
    return-void
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 657
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->Deal:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getLastCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->b()Lcom/yelp/android/ui/activities/deals/h;

    move-result-object v0

    return-object v0
.end method

.method public getParametersForIri(Lcom/yelp/android/analytics/iris/b;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/analytics/iris/b;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 662
    const-string/jumbo v0, "id"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->B:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method h()V
    .locals 6

    .prologue
    .line 449
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->z:Lcom/yelp/android/serializable/YelpDeal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->z:Lcom/yelp/android/serializable/YelpDeal;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpDeal;->isStandingDeal()Z

    move-result v0

    if-nez v0, :cond_0

    .line 450
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->g()V

    .line 451
    new-instance v1, Lcom/yelp/android/ui/util/cg;

    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->z:Lcom/yelp/android/serializable/YelpDeal;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpDeal;->getSystemClockExpiration()J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const v0, 0x7f0c0116

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, v2, v3, v0}, Lcom/yelp/android/ui/util/cg;-><init>(JLandroid/widget/TextView;)V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->b:Lcom/yelp/android/ui/util/cg;

    .line 453
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->b:Lcom/yelp/android/ui/util/cg;

    new-instance v1, Lcom/yelp/android/ui/activities/deals/b;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/deals/b;-><init>(Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/cg;->a(Lcom/yelp/android/ui/util/ch;)V

    .line 459
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->b:Lcom/yelp/android/ui/util/cg;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/cg;->start()Landroid/os/CountDownTimer;

    .line 461
    :cond_0
    return-void
.end method

.method public i()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 480
    new-instance v0, Lcom/yelp/android/appdata/webrequests/bf;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->z:Lcom/yelp/android/serializable/YelpDeal;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpDeal;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->l:Lcom/yelp/android/appdata/webrequests/j;

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/yelp/android/appdata/webrequests/bf;-><init>(Ljava/lang/String;IILcom/yelp/android/appdata/webrequests/j;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->d:Lcom/yelp/android/appdata/webrequests/bf;

    .line 482
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->d:Lcom/yelp/android/appdata/webrequests/bf;

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/bf;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 483
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->v:Landroid/widget/RadioGroup;

    if-ne p1, v0, :cond_0

    if-lez p2, :cond_0

    .line 417
    invoke-direct {p0, p2}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->a(I)V

    .line 419
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

    .line 151
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpMapActivity;->onCreate(Landroid/os/Bundle;)V

    .line 152
    const v0, 0x7f030026

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->setContentView(I)V

    .line 153
    const v0, 0x7f0706af

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->setTitle(I)V

    .line 155
    const/4 v0, 0x3

    iput v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->E:I

    .line 156
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->x:Ljava/util/List;

    .line 157
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->y:Ljava/util/List;

    .line 158
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030027

    iget-object v2, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->h:Landroid/widget/ListView;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->j:Landroid/view/ViewGroup;

    .line 160
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->i:Landroid/widget/FrameLayout;

    .line 161
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->i:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v4, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 164
    new-instance v0, Lcom/yelp/android/ui/map/YelpMap;

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->n()Lcom/yelp/android/appdata/LocationService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/LocationService;->c()Landroid/location/Location;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/yelp/android/ui/map/YelpMap;-><init>(Landroid/content/Context;Landroid/location/Location;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->D:Lcom/yelp/android/ui/map/YelpMap;

    .line 166
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->D:Lcom/yelp/android/ui/map/YelpMap;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x12c

    invoke-static {v2}, Lcom/yelp/android/appdata/ao;->a(I)I

    move-result v2

    invoke-direct {v1, v4, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/map/YelpMap;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->D:Lcom/yelp/android/ui/map/YelpMap;

    sget v1, Lcom/yelp/android/appdata/ao;->n:I

    invoke-virtual {v0, v3, v1, v3, v3}, Lcom/yelp/android/ui/map/YelpMap;->setPadding(IIII)V

    .line 169
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->D:Lcom/yelp/android/ui/map/YelpMap;

    const v1, 0x7f0a0051

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/map/YelpMap;->setBackgroundResource(I)V

    .line 170
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->D:Lcom/yelp/android/ui/map/YelpMap;

    new-instance v1, Lcom/yelp/android/ui/map/b;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/map/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1, v1}, Lcom/yelp/android/ui/map/YelpMap;->a(Landroid/os/Bundle;Lcom/yelp/android/ui/map/e;)V

    .line 172
    new-instance v0, Lcom/yelp/android/ui/panels/PanelLoading;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/panels/PanelLoading;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->F:Lcom/yelp/android/ui/panels/PanelLoading;

    .line 173
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->F:Lcom/yelp/android/ui/panels/PanelLoading;

    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/PanelLoading;->a()V

    .line 174
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->F:Lcom/yelp/android/ui/panels/PanelLoading;

    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->F:Lcom/yelp/android/ui/panels/PanelLoading;

    invoke-virtual {v2}, Lcom/yelp/android/ui/panels/PanelLoading;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/PanelLoading;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    const v0, 0x7f0c0117

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->h:Landroid/widget/ListView;

    .line 178
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->h:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->j:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v5, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 179
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->h:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v5, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 180
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->h:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->k:Lcom/yelp/android/ui/util/au;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 181
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->h:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 182
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->h:Landroid/widget/ListView;

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 184
    new-instance v0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->f:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;

    .line 185
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->f:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    sget-object v2, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->RATING:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    aput-object v2, v1, v3

    sget-object v2, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->ADDRESS:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->a([Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;)V

    .line 187
    const v0, 0x7f0c011f

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->v:Landroid/widget/RadioGroup;

    .line 188
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->v:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->clearCheck()V

    .line 189
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->v:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v3}, Landroid/widget/RadioGroup;->setEnabled(Z)V

    .line 190
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->v:Landroid/widget/RadioGroup;

    invoke-virtual {v0, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 192
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->G:Landroid/util/SparseArray;

    .line 193
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->G:Landroid/util/SparseArray;

    const v1, 0x7f0c0120

    new-instance v2, Lcom/yelp/android/ui/activities/deals/i;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->k:Lcom/yelp/android/ui/util/au;

    invoke-direct {v2, p0, v3, v5, v5}, Lcom/yelp/android/ui/activities/deals/i;-><init>(Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;Landroid/widget/BaseAdapter;Landroid/view/View;Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 194
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->G:Landroid/util/SparseArray;

    const v1, 0x7f0c0121

    new-instance v2, Lcom/yelp/android/ui/activities/deals/i;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->g:Lcom/yelp/android/ui/activities/reviewpage/ak;

    iget-object v4, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->n:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-direct {v2, p0, v3, v5, v4}, Lcom/yelp/android/ui/activities/deals/i;-><init>(Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;Landroid/widget/BaseAdapter;Landroid/view/View;Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 195
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->G:Landroid/util/SparseArray;

    const v1, 0x7f0c0122

    new-instance v2, Lcom/yelp/android/ui/activities/deals/i;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->f:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;

    iget-object v4, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->o:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-direct {v2, p0, v3, v5, v4}, Lcom/yelp/android/ui/activities/deals/i;-><init>(Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;Landroid/widget/BaseAdapter;Landroid/view/View;Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 197
    const v0, 0x7f0c0115

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->w:Landroid/widget/Button;

    .line 199
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->b()Lcom/yelp/android/ui/activities/deals/h;

    move-result-object v0

    .line 201
    if-eqz v0, :cond_0

    .line 202
    iget-object v1, v0, Lcom/yelp/android/ui/activities/deals/h;->a:Lcom/yelp/android/appdata/webrequests/bk;

    iput-object v1, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->c:Lcom/yelp/android/appdata/webrequests/bk;

    .line 203
    iget-object v1, v0, Lcom/yelp/android/ui/activities/deals/h;->b:Lcom/yelp/android/appdata/webrequests/bf;

    iput-object v1, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->d:Lcom/yelp/android/appdata/webrequests/bf;

    .line 204
    iget-object v0, v0, Lcom/yelp/android/ui/activities/deals/h;->c:Lcom/yelp/android/appdata/webrequests/bj;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->e:Lcom/yelp/android/appdata/webrequests/bj;

    .line 207
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->a(Landroid/content/Intent;)V

    .line 208
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 2

    .prologue
    .line 683
    packed-switch p1, :pswitch_data_0

    .line 688
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpMapActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 685
    :pswitch_0
    new-instance v0, Lcom/yelp/android/services/c;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->z:Lcom/yelp/android/serializable/YelpDeal;

    invoke-direct {v0, v1}, Lcom/yelp/android/services/c;-><init>(Lcom/yelp/android/serializable/YelpDeal;)V

    const v1, 0x7f070563

    invoke-static {p0, v0, v1}, Lcom/yelp/android/services/l;->a(Landroid/app/Activity;Lcom/yelp/android/services/q;I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 683
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 667
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpMapActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 668
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f10001f

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 669
    const/4 v0, 0x1

    return v0
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
    .line 635
    instance-of v0, p1, Lcom/yelp/android/appdata/webrequests/bj;

    if-eqz v0, :cond_0

    .line 636
    iget v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->E:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->E:I

    .line 637
    iget v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->E:I

    if-lez v0, :cond_1

    .line 638
    check-cast p1, Lcom/yelp/android/appdata/webrequests/bj;

    iget-object v0, p1, Lcom/yelp/android/appdata/webrequests/bj;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->a(Ljava/lang/String;)V

    .line 646
    :cond_0
    :goto_0
    return-void

    .line 642
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->disableLoading()V

    .line 643
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->finish()V

    goto :goto_0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 237
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->a(Landroid/content/Intent;)V

    .line 238
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 674
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0c04f0

    if-ne v0, v1, :cond_0

    .line 675
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->showDialog(I)V

    .line 676
    const/4 v0, 0x1

    .line 678
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpMapActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 390
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpMapActivity;->onPause()V

    .line 391
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->g()V

    .line 392
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 384
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpMapActivity;->onResume()V

    .line 385
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->h()V

    .line 386
    return-void
.end method

.method public synthetic onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->f()Lcom/yelp/android/ui/activities/deals/h;

    move-result-object v0

    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 396
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->p:Ljava/lang/String;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->z:Lcom/yelp/android/serializable/YelpDeal;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 397
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->r:Ljava/lang/String;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->y:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 399
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->q:Ljava/lang/String;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->x:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 401
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->s:Ljava/lang/String;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->v:Landroid/widget/RadioGroup;

    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 402
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->t:Ljava/lang/String;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->C:Lcom/yelp/android/serializable/MapSpan;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 403
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 82
    check-cast p2, Lcom/yelp/android/serializable/YelpDeal;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/YelpDeal;)V

    return-void
.end method
