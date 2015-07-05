.class public Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;
.super Lcom/yelp/android/ui/activities/support/YelpListFragment;
.source "BusinessPageFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Lcom/yelp/android/ui/activities/reviewpage/bg;
.implements Lcom/yelp/android/ui/activities/reviewpage/v;
.implements Lcom/yelp/android/ui/util/al;
.implements Lcom/yelp/android/ui/widgets/o;


# instance fields
.field private A:Lcom/yelp/android/ui/util/h;

.field private B:Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;

.field private C:Lcom/yelp/android/ui/util/ax;

.field private D:Lcom/yelp/android/ui/activities/reviewpage/t;

.field private E:Lcom/yelp/android/appdata/webrequests/eu;

.field private F:I

.field private G:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/ReviewHighlight;",
            ">;"
        }
    .end annotation
.end field

.field private H:Lcom/yelp/android/ui/activities/reviewpage/aw;

.field private I:Lcom/yelp/android/ui/util/h;

.field private J:Lcom/yelp/android/ui/util/h;

.field private K:Lcom/yelp/android/ui/util/h;

.field private L:Lcom/yelp/android/appdata/webrequests/cw;

.field private M:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Tip;",
            ">;"
        }
    .end annotation
.end field

.field private N:Lcom/yelp/android/ui/activities/reviewpage/bi;

.field private O:Lcom/yelp/android/ui/util/h;

.field private P:Lcom/yelp/android/ui/util/h;

.field private Q:Lcom/yelp/android/ui/util/h;

.field private R:Ljava/lang/String;

.field private S:Lcom/yelp/android/appdata/webrequests/ey;

.field private T:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/YelpBusinessReview;",
            ">;"
        }
    .end annotation
.end field

.field private U:I

.field private V:Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter;

.field private W:Lcom/yelp/android/ui/util/h;

.field private X:Lcom/yelp/android/ui/util/h;

.field private Y:Lcom/yelp/android/appdata/webrequests/ab;

.field private Z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Ranking;",
            ">;"
        }
    .end annotation
.end field

.field private a:Lcom/yelp/android/ui/widgets/b;

.field private aA:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

.field private aB:Landroid/view/View;

.field private aC:Lcom/yelp/android/ui/util/h;

.field private aD:Z

.field private aE:Landroid/view/View;

.field private aF:Landroid/view/View;

.field private aG:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Lcom/yelp/android/ui/activities/reviewpage/bi;",
            "Lcom/yelp/android/ui/util/bv",
            "<",
            "Lcom/yelp/android/ui/activities/reviewpage/bi;",
            ">;>;"
        }
    .end annotation
.end field

.field private aH:Lcom/yelp/android/ui/util/bv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/ui/util/bv",
            "<",
            "Lcom/yelp/android/ui/activities/reviewpage/bi;",
            ">;"
        }
    .end annotation
.end field

.field private aI:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field

.field private aJ:Lcom/yelp/android/appdata/webrequests/SearchRequest;

.field private aK:Lcom/yelp/android/ui/activities/businesspage/bv;

.field private aL:Lcom/yelp/android/ui/activities/businesspage/bw;

.field private final aM:Landroid/view/View$OnClickListener;

.field private final aN:Lcom/yelp/android/ui/activities/businesspage/cc;

.field private final aO:Lcom/yelp/android/ui/activities/businesspage/cc;

.field private final aP:Lcom/yelp/android/appdata/webrequests/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/Ranking;",
            ">;>;"
        }
    .end annotation
.end field

.field private final aQ:Lcom/google/android/gms/ads/AdListener;

.field private final aR:Lcom/yelp/android/appdata/webrequests/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Lcom/yelp/android/appdata/webrequests/dm;",
            ">;"
        }
    .end annotation
.end field

.field private final aS:Lcom/yelp/android/appdata/webrequests/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Lcom/yelp/android/serializable/YelpBookmark;",
            ">;"
        }
    .end annotation
.end field

.field private final aT:Lcom/yelp/android/appdata/webrequests/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/LocalAd;",
            ">;>;"
        }
    .end annotation
.end field

.field private final aU:Lcom/yelp/android/appdata/webrequests/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Lcom/yelp/android/appdata/webrequests/cx;",
            ">;"
        }
    .end annotation
.end field

.field private final aV:Lcom/yelp/android/appdata/webrequests/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Lcom/yelp/android/appdata/webrequests/ez;",
            ">;"
        }
    .end annotation
.end field

.field private final aW:Lcom/yelp/android/av/i;

.field private final aX:Landroid/support/v7/widget/bt;

.field private aa:Landroid/view/View;

.field private ab:Landroid/widget/TextView;

.field private ac:Z

.field private ad:Z

.field private ae:Z

.field private af:Z

.field private ag:Z

.field private ah:Z

.field private ai:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/Locale;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private aj:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field

.field private ak:Ljava/lang/String;

.field private al:Ljava/lang/String;

.field private am:Ljava/lang/String;

.field private an:Ljava/lang/String;

.field private ao:Landroid/view/View;

.field private ap:Z

.field private aq:Lcom/yelp/android/ui/activities/businesspage/t;

.field private ar:Lcom/yelp/android/serializable/BusinessSearchResult;

.field private as:Lcom/yelp/android/serializable/YelpBusiness;

.field private at:Lcom/yelp/android/av/a;

.field private au:Lcom/yelp/android/appdata/webrequests/dc;

.field private av:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private aw:Z

.field private ax:Lcom/yelp/android/ui/dialogs/bn;

.field private ay:Lcom/yelp/android/appdata/webrequests/ApiRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<",
            "Ljava/lang/Void;",
            "**>;"
        }
    .end annotation
.end field

.field private az:Lcom/yelp/android/ui/map/YelpMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/ui/map/YelpMap",
            "<",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/view/MenuItem;

.field private c:Lcom/yelp/android/ui/panels/businesspage/b;

.field private d:Landroid/view/View;

.field private e:Lcom/yelp/android/ui/activities/businesspage/p;

.field private g:Lcom/yelp/android/ui/activities/businesspage/cd;

.field private h:Lcom/yelp/android/ui/activities/businesspage/p;

.field private i:Lcom/yelp/android/ui/activities/businesspage/p;

.field private j:Lcom/yelp/android/appdata/webrequests/gn;

.field private k:Lcom/yelp/android/ui/util/s;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Lcom/yelp/android/ui/util/h;

.field private o:Lcom/yelp/android/appdata/webrequests/cy;

.field private p:Lcom/yelp/android/ui/activities/reviewpage/ab;

.field private q:Lcom/yelp/android/ui/activities/reviewpage/ab;

.field private r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/LocalAd;",
            ">;"
        }
    .end annotation
.end field

.field private s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/LocalAd;",
            ">;"
        }
    .end annotation
.end field

.field private t:Lcom/yelp/android/ui/activities/businesspage/FromThisBusinessPanel;

.field private u:Lcom/yelp/android/ui/util/h;

.field private v:Lcom/yelp/android/ui/util/h;

.field private w:Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;

.field private x:Landroid/support/v7/widget/RecyclerView;

.field private y:Lcom/yelp/android/ui/util/bs;

.field private z:Lcom/yelp/android/ui/util/h;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 466
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;-><init>()V

    .line 334
    iput-boolean v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ac:Z

    .line 335
    iput-boolean v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ad:Z

    .line 336
    iput-boolean v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ae:Z

    .line 337
    iput-boolean v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->af:Z

    .line 338
    iput-boolean v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ag:Z

    .line 339
    iput-boolean v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ah:Z

    .line 340
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ai:Ljava/util/Map;

    .line 343
    iput-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ak:Ljava/lang/String;

    .line 344
    iput-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->al:Ljava/lang/String;

    .line 345
    iput-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->am:Ljava/lang/String;

    .line 346
    iput-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->an:Ljava/lang/String;

    .line 372
    iput-boolean v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aD:Z

    .line 1746
    new-instance v0, Lcom/yelp/android/ui/activities/businesspage/aj;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/businesspage/aj;-><init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aM:Landroid/view/View$OnClickListener;

    .line 1764
    new-instance v0, Lcom/yelp/android/ui/activities/businesspage/ak;

    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->BusinessAddTip:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v2, "button"

    invoke-direct {v0, p0, v1, v2}, Lcom/yelp/android/ui/activities/businesspage/ak;-><init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Lcom/yelp/android/analytics/iris/EventIri;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aN:Lcom/yelp/android/ui/activities/businesspage/cc;

    .line 1773
    new-instance v0, Lcom/yelp/android/ui/activities/businesspage/am;

    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->BusinessCheckIn:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v2, "button"

    invoke-direct {v0, p0, v1, v2}, Lcom/yelp/android/ui/activities/businesspage/am;-><init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Lcom/yelp/android/analytics/iris/EventIri;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aO:Lcom/yelp/android/ui/activities/businesspage/cc;

    .line 3239
    new-instance v0, Lcom/yelp/android/ui/activities/businesspage/bf;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/businesspage/bf;-><init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aP:Lcom/yelp/android/appdata/webrequests/m;

    .line 3257
    new-instance v0, Lcom/yelp/android/ui/activities/businesspage/bg;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/businesspage/bg;-><init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aQ:Lcom/google/android/gms/ads/AdListener;

    .line 3389
    new-instance v0, Lcom/yelp/android/ui/activities/businesspage/bi;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/businesspage/bi;-><init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aR:Lcom/yelp/android/appdata/webrequests/m;

    .line 3450
    new-instance v0, Lcom/yelp/android/ui/activities/businesspage/bj;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/businesspage/bj;-><init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aS:Lcom/yelp/android/appdata/webrequests/m;

    .line 3467
    new-instance v0, Lcom/yelp/android/ui/activities/businesspage/bk;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/businesspage/bk;-><init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aT:Lcom/yelp/android/appdata/webrequests/m;

    .line 3494
    new-instance v0, Lcom/yelp/android/ui/activities/businesspage/bl;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/businesspage/bl;-><init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aU:Lcom/yelp/android/appdata/webrequests/m;

    .line 3510
    new-instance v0, Lcom/yelp/android/ui/activities/businesspage/bm;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/businesspage/bm;-><init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aV:Lcom/yelp/android/appdata/webrequests/m;

    .line 3551
    new-instance v0, Lcom/yelp/android/ui/activities/businesspage/bn;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/businesspage/bn;-><init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aW:Lcom/yelp/android/av/i;

    .line 3574
    new-instance v0, Lcom/yelp/android/ui/activities/businesspage/bo;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/businesspage/bo;-><init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aX:Landroid/support/v7/widget/bt;

    .line 467
    return-void
.end method

.method static synthetic A(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Ljava/util/LinkedHashSet;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aI:Ljava/util/LinkedHashSet;

    return-object v0
.end method

.method static synthetic B(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Ljava/util/Locale;
    .locals 1

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ai()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method private F()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 965
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getLocalizedStreetAddress()Ljava/lang/String;

    move-result-object v0

    .line 966
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->getGeneralAddress()Ljava/lang/String;

    move-result-object v1

    .line 968
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 970
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->n:Lcom/yelp/android/ui/util/h;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/h;->clear()V

    .line 984
    :goto_0
    return-void

    .line 972
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 973
    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->l:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 978
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 979
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 975
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 981
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private G()Z
    .locals 1

    .prologue
    .line 1064
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getFromThisBusiness()Lcom/yelp/android/serializable/FromThisBusiness;

    move-result-object v0

    .line 1065
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/FromThisBusiness;->getShowTeaser()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private H()V
    .locals 3

    .prologue
    .line 1069
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->G()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1070
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->u:Lcom/yelp/android/ui/util/h;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/h;->clear()V

    .line 1081
    :goto_0
    return-void

    .line 1074
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->t:Lcom/yelp/android/ui/activities/businesspage/FromThisBusinessPanel;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->getFromThisBusiness()Lcom/yelp/android/serializable/FromThisBusiness;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/businesspage/FromThisBusinessPanel;->a(Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/serializable/FromThisBusiness;)V

    .line 1076
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->u:Lcom/yelp/android/ui/util/h;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/h;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 1077
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->u:Lcom/yelp/android/ui/util/h;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->t:Lcom/yelp/android/ui/activities/businesspage/FromThisBusinessPanel;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/h;->b(Landroid/view/View;)V

    .line 1080
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->u:Lcom/yelp/android/ui/util/h;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/h;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method private I()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 1278
    new-instance v2, Lcom/yelp/android/ui/activities/businesspage/bu;

    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BusinessOpenMoreHighlights:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-direct {v2, p0, v0}, Lcom/yelp/android/ui/activities/businesspage/bu;-><init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Lcom/yelp/android/analytics/iris/EventIri;)V

    .line 1288
    new-instance v0, Lcom/yelp/android/ui/activities/reviewpage/t;

    const v1, 0x7f03013d

    iget-object v3, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-direct {v0, v1, p0, v3}, Lcom/yelp/android/ui/activities/reviewpage/t;-><init>(ILcom/yelp/android/ui/activities/reviewpage/v;Lcom/yelp/android/serializable/YelpBusiness;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->D:Lcom/yelp/android/ui/activities/reviewpage/t;

    .line 1290
    const v0, 0x7f070537

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->D:Lcom/yelp/android/ui/activities/reviewpage/t;

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/bw;->a(Ljava/lang/CharSequence;Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/bw;

    move-result-object v0

    const v1, 0x7f0c0428

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/bw;->b(I)Lcom/yelp/android/ui/util/bw;

    move-result-object v6

    const v0, 0x7f07039d

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    move-object v0, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Ljava/lang/String;Landroid/view/View$OnClickListener;ZLjava/lang/String;Landroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/yelp/android/ui/util/bw;->a(Landroid/view/View;)Lcom/yelp/android/ui/util/bw;

    move-result-object v0

    .line 1297
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->y:Lcom/yelp/android/ui/util/bs;

    const v2, 0x7f0c000d

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/bw;->a()Lcom/yelp/android/ui/util/bv;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/yelp/android/ui/util/bs;->a(ILcom/yelp/android/ui/util/bv;)V

    .line 1299
    return-void
.end method

.method private J()V
    .locals 11

    .prologue
    const v7, 0x7f07047a

    const v9, 0x7f0703f7

    const v10, 0x7f07009a

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1302
    new-instance v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->x:Landroid/support/v7/widget/RecyclerView;

    .line 1303
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->x:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yelp/android/appdata/AppData;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b00a4

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sget v6, Lcom/yelp/android/appdata/ao;->b:I

    add-int/2addr v5, v6

    invoke-direct {v1, v2, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1306
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->x:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aX:Landroid/support/v7/widget/bt;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/bt;)V

    .line 1308
    new-instance v0, Lcom/yelp/android/ui/util/ax;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->getBizOwnerVideo()Lcom/yelp/android/serializable/Video;

    move-result-object v2

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v0, v1, v2, v5}, Lcom/yelp/android/ui/util/ax;-><init>(Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/serializable/Video;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->C:Lcom/yelp/android/ui/util/ax;

    .line 1309
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->x:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2, v4, v4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/br;)V

    .line 1310
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->x:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->C:Lcom/yelp/android/ui/util/ax;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/bi;)V

    .line 1311
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/16 v1, 0x40f

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const/high16 v5, 0x10000000

    invoke-virtual {v0, v1, v2, v5}, Landroid/support/v4/app/FragmentActivity;->createPendingResult(ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 1313
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->C:Lcom/yelp/android/ui/util/ax;

    new-instance v2, Lcom/yelp/android/ui/util/bd;

    iget-object v5, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->C:Lcom/yelp/android/ui/util/ax;

    invoke-virtual {v5}, Lcom/yelp/android/ui/util/ax;->d()Ljava/util/List;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/yelp/android/ui/util/bd;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v0, v2}, Lcom/yelp/android/ui/util/ax;->a(Landroid/app/PendingIntent;Lcom/yelp/android/ui/util/bc;)V

    .line 1316
    new-instance v5, Lcom/yelp/android/ui/activities/businesspage/ab;

    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BusinessAddPhoto:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v1, "button"

    invoke-direct {v5, p0, v0, v1}, Lcom/yelp/android/ui/activities/businesspage/ab;-><init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Lcom/yelp/android/analytics/iris/EventIri;Ljava/lang/String;)V

    .line 1324
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getPhotosAndVideosCount()I

    move-result v8

    .line 1325
    if-eqz v8, :cond_7

    .line 1326
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getVideoCount()I

    move-result v0

    if-lez v0, :cond_1

    move v0, v3

    .line 1327
    :goto_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->getPhotoCount()I

    move-result v1

    if-lez v1, :cond_2

    move v1, v3

    .line 1328
    :goto_1
    new-instance v2, Lcom/yelp/android/ui/activities/businesspage/ac;

    sget-object v6, Lcom/yelp/android/analytics/iris/EventIri;->BusinessMorePhotos:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-direct {v2, p0, v6, v0, v1}, Lcom/yelp/android/ui/activities/businesspage/ac;-><init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Lcom/yelp/android/analytics/iris/EventIri;ZZ)V

    .line 1350
    new-instance v6, Lcom/yelp/android/ui/util/h;

    new-array v9, v4, [Landroid/view/View;

    invoke-direct {v6, v9}, Lcom/yelp/android/ui/util/h;-><init>([Landroid/view/View;)V

    iput-object v6, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->z:Lcom/yelp/android/ui/util/h;

    .line 1351
    new-instance v6, Lcom/yelp/android/ui/util/h;

    new-array v9, v4, [Landroid/view/View;

    invoke-direct {v6, v9}, Lcom/yelp/android/ui/util/h;-><init>([Landroid/view/View;)V

    iput-object v6, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->A:Lcom/yelp/android/ui/util/h;

    .line 1355
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 1356
    const v0, 0x7f07047b

    move v6, v0

    .line 1368
    :goto_2
    const/4 v1, 0x0

    .line 1369
    const/4 v0, 0x3

    if-le v8, v0, :cond_0

    .line 1370
    const v0, 0x7f070540

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1372
    :cond_0
    if-lez v8, :cond_5

    :goto_3
    sget-object v0, Lcom/yelp/android/appdata/Features;->video_capture:Lcom/yelp/android/appdata/Features;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/Features;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    const v0, 0x7f07009b

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_4
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Ljava/lang/String;Landroid/view/View$OnClickListener;ZLjava/lang/String;Landroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v0

    .line 1381
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->y:Lcom/yelp/android/ui/util/bs;

    invoke-virtual {p0, v6}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->z:Lcom/yelp/android/ui/util/h;

    invoke-static {v2, v3}, Lcom/yelp/android/ui/util/bw;->a(Ljava/lang/CharSequence;Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/bw;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/yelp/android/ui/util/bw;->a(Landroid/view/View;)Lcom/yelp/android/ui/util/bw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/bw;->a()Lcom/yelp/android/ui/util/bv;

    move-result-object v0

    invoke-virtual {v1, v7, v0}, Lcom/yelp/android/ui/util/bs;->a(ILcom/yelp/android/ui/util/bv;)V

    .line 1386
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->y:Lcom/yelp/android/ui/util/bs;

    const v1, 0x7f0c000f

    invoke-virtual {p0, v6}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->A:Lcom/yelp/android/ui/util/h;

    invoke-static {v2, v3}, Lcom/yelp/android/ui/util/bw;->a(Ljava/lang/CharSequence;Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/bw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/ui/util/bw;->a()Lcom/yelp/android/ui/util/bv;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/util/bs;->a(ILcom/yelp/android/ui/util/bv;)V

    .line 1396
    :goto_5
    return-void

    :cond_1
    move v0, v4

    .line 1326
    goto/16 :goto_0

    :cond_2
    move v1, v4

    .line 1327
    goto :goto_1

    .line 1357
    :cond_3
    if-eqz v0, :cond_4

    .line 1358
    const v0, 0x7f07066c

    move v6, v0

    goto :goto_2

    .line 1363
    :cond_4
    iput-boolean v3, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ad:Z

    .line 1364
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ak()V

    move v6, v7

    goto :goto_2

    :cond_5
    move v3, v4

    .line 1372
    goto :goto_3

    :cond_6
    invoke-virtual {p0, v10}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    .line 1389
    :cond_7
    iput-boolean v3, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ad:Z

    .line 1390
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->y:Lcom/yelp/android/ui/util/bs;

    invoke-virtual {p0, v9}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/yelp/android/ui/util/h;

    new-array v3, v3, [Landroid/view/View;

    const v6, 0x7f02015e

    invoke-direct {p0, v10, v6, v5}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v2, v3}, Lcom/yelp/android/ui/util/h;-><init>([Landroid/view/View;)V

    invoke-static {v1, v2}, Lcom/yelp/android/ui/util/bw;->a(Ljava/lang/CharSequence;Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/bw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/ui/util/bw;->a()Lcom/yelp/android/ui/util/bv;

    move-result-object v1

    invoke-virtual {v0, v9, v1}, Lcom/yelp/android/ui/util/bs;->a(ILcom/yelp/android/ui/util/bv;)V

    goto :goto_5
.end method

.method private K()V
    .locals 10

    .prologue
    const v9, 0x7f070402

    const/4 v3, 0x1

    const/4 v8, 0x0

    const v7, 0x7f07053e

    .line 1399
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getTipCount()I

    move-result v6

    .line 1401
    new-instance v2, Lcom/yelp/android/ui/activities/businesspage/ad;

    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BusinessMoreTipsClicked:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-direct {v2, p0, v0}, Lcom/yelp/android/ui/activities/businesspage/ad;-><init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Lcom/yelp/android/analytics/iris/EventIri;)V

    .line 1410
    const v0, 0x7f0703ac

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f07009d

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aN:Lcom/yelp/android/ui/activities/businesspage/cc;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Ljava/lang/String;Landroid/view/View$OnClickListener;ZLjava/lang/String;Landroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v0

    .line 1414
    new-instance v1, Lcom/yelp/android/ui/activities/reviewpage/aw;

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/appdata/webrequests/dc;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/yelp/android/ui/activities/reviewpage/aw;-><init>(Ljava/lang/String;Lcom/yelp/android/ui/activities/reviewpage/bg;)V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->H:Lcom/yelp/android/ui/activities/reviewpage/aw;

    .line 1416
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->y:Lcom/yelp/android/ui/util/bs;

    invoke-virtual {p0, v7}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->H:Lcom/yelp/android/ui/activities/reviewpage/aw;

    invoke-static {v2, v4}, Lcom/yelp/android/ui/util/bw;->a(Ljava/lang/CharSequence;Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/bw;

    move-result-object v2

    const v4, 0x7f0c044d

    invoke-virtual {v2, v4}, Lcom/yelp/android/ui/util/bw;->b(I)Lcom/yelp/android/ui/util/bw;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/yelp/android/ui/util/bw;->a(Landroid/view/View;)Lcom/yelp/android/ui/util/bw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/ui/util/bw;->a()Lcom/yelp/android/ui/util/bv;

    move-result-object v2

    invoke-virtual {v1, v7, v2}, Lcom/yelp/android/ui/util/bs;->a(ILcom/yelp/android/ui/util/bv;)V

    .line 1422
    new-instance v1, Lcom/yelp/android/ui/util/h;

    new-array v2, v8, [Landroid/view/View;

    invoke-direct {v1, v2}, Lcom/yelp/android/ui/util/h;-><init>([Landroid/view/View;)V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->I:Lcom/yelp/android/ui/util/h;

    .line 1423
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->y:Lcom/yelp/android/ui/util/bs;

    const v2, 0x7f0c0011

    invoke-virtual {p0, v7}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->I:Lcom/yelp/android/ui/util/h;

    invoke-static {v4, v5}, Lcom/yelp/android/ui/util/bw;->a(Ljava/lang/CharSequence;Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/bw;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/yelp/android/ui/util/bw;->a(Landroid/view/View;)Lcom/yelp/android/ui/util/bw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/bw;->a()Lcom/yelp/android/ui/util/bv;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/yelp/android/ui/util/bs;->a(ILcom/yelp/android/ui/util/bv;)V

    .line 1432
    new-instance v0, Lcom/yelp/android/ui/util/h;

    new-array v1, v8, [Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/yelp/android/ui/util/h;-><init>([Landroid/view/View;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->J:Lcom/yelp/android/ui/util/h;

    .line 1433
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->y:Lcom/yelp/android/ui/util/bs;

    invoke-virtual {p0, v9}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->J:Lcom/yelp/android/ui/util/h;

    invoke-static {v1, v2}, Lcom/yelp/android/ui/util/bw;->a(Ljava/lang/CharSequence;Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/bw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/ui/util/bw;->a()Lcom/yelp/android/ui/util/bv;

    move-result-object v1

    invoke-virtual {v0, v9, v1}, Lcom/yelp/android/ui/util/bs;->a(ILcom/yelp/android/ui/util/bv;)V

    .line 1437
    new-instance v0, Lcom/yelp/android/ui/util/h;

    new-array v1, v8, [Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/yelp/android/ui/util/h;-><init>([Landroid/view/View;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->K:Lcom/yelp/android/ui/util/h;

    .line 1438
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->y:Lcom/yelp/android/ui/util/bs;

    const v1, 0x7f0c001b

    invoke-virtual {p0, v7}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->K:Lcom/yelp/android/ui/util/h;

    invoke-static {v2, v4}, Lcom/yelp/android/ui/util/bw;->a(Ljava/lang/CharSequence;Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/bw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/ui/util/bw;->a()Lcom/yelp/android/ui/util/bv;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/util/bs;->a(ILcom/yelp/android/ui/util/bv;)V

    .line 1442
    if-nez v6, :cond_0

    .line 1443
    iput-boolean v3, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ag:Z

    .line 1445
    :cond_0
    return-void
.end method

.method private L()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1454
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1455
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aG:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/reviewpage/bi;

    .line 1456
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/bi;->a()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/bi;->b()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1457
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/bi;->c()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1460
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->N:Lcom/yelp/android/ui/activities/reviewpage/bi;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/bi;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->N:Lcom/yelp/android/ui/activities/reviewpage/bi;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/bi;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1462
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->N:Lcom/yelp/android/ui/activities/reviewpage/bi;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/bi;->c()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1464
    :cond_2
    return-object v1
.end method

.method private M()V
    .locals 9

    .prologue
    const v8, 0x7f0c035f

    const/4 v3, 0x1

    const v7, 0x7f0704be

    const/4 v6, 0x0

    .line 1468
    new-instance v2, Lcom/yelp/android/ui/activities/businesspage/ae;

    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BusinessMoreReviewsClicked:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-direct {v2, p0, v0}, Lcom/yelp/android/ui/activities/businesspage/ae;-><init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Lcom/yelp/android/analytics/iris/EventIri;)V

    .line 1477
    const v0, 0x7f0703a6

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getReviewState()Lcom/yelp/android/ui/activities/reviews/ReviewState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviews/ReviewState;->getTextResourceForState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aM:Landroid/view/View$OnClickListener;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Ljava/lang/String;Landroid/view/View$OnClickListener;ZLjava/lang/String;Landroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Landroid/view/View;

    .line 1482
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aq()Z

    move-result v0

    .line 1483
    if-eqz v0, :cond_0

    .line 1484
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->y:Lcom/yelp/android/ui/util/bs;

    const v1, 0x7f070116

    invoke-virtual {p0, v7}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/yelp/android/ui/util/h;

    new-array v5, v6, [Landroid/view/View;

    invoke-direct {v4, v5}, Lcom/yelp/android/ui/util/h;-><init>([Landroid/view/View;)V

    invoke-static {v2, v4}, Lcom/yelp/android/ui/util/bw;->a(Ljava/lang/CharSequence;Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/bw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/ui/util/bw;->a()Lcom/yelp/android/ui/util/bv;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/util/bs;->a(ILcom/yelp/android/ui/util/bv;)V

    .line 1494
    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aG:Ljava/util/LinkedHashMap;

    .line 1496
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    .line 1497
    const v0, 0x7f0c0016

    invoke-virtual {v1, v6, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1498
    const v0, 0x7f0c0017

    invoke-virtual {v1, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1499
    const/4 v0, 0x2

    const v2, 0x7f0c0018

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1500
    const/4 v0, 0x3

    const v2, 0x7f0c0019

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->put(II)V

    move v0, v6

    .line 1504
    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_1

    .line 1505
    new-instance v2, Lcom/yelp/android/ui/activities/reviewpage/bi;

    invoke-direct {v2}, Lcom/yelp/android/ui/activities/reviewpage/bi;-><init>()V

    .line 1506
    invoke-virtual {p0, v7}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/yelp/android/ui/util/bw;->a(Ljava/lang/CharSequence;Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/bw;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/yelp/android/ui/util/bw;->b(I)Lcom/yelp/android/ui/util/bw;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/ui/util/bw;->a()Lcom/yelp/android/ui/util/bv;

    move-result-object v3

    .line 1510
    iget-object v4, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aG:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1511
    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->y:Lcom/yelp/android/ui/util/bs;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    invoke-virtual {v2, v4, v3}, Lcom/yelp/android/ui/util/bs;->a(ILcom/yelp/android/ui/util/bv;)V

    .line 1504
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1516
    :cond_1
    new-instance v0, Lcom/yelp/android/ui/activities/reviewpage/bi;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/reviewpage/bi;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->N:Lcom/yelp/android/ui/activities/reviewpage/bi;

    .line 1517
    invoke-virtual {p0, v7}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->N:Lcom/yelp/android/ui/activities/reviewpage/bi;

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/bw;->a(Ljava/lang/CharSequence;Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/bw;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/yelp/android/ui/util/bw;->b(I)Lcom/yelp/android/ui/util/bw;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/bw;->a(Landroid/view/View;)Lcom/yelp/android/ui/util/bw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/bw;->a()Lcom/yelp/android/ui/util/bv;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aH:Lcom/yelp/android/ui/util/bv;

    .line 1522
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->y:Lcom/yelp/android/ui/util/bs;

    const v1, 0x7f07050d

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aH:Lcom/yelp/android/ui/util/bv;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/util/bs;->a(ILcom/yelp/android/ui/util/bv;)V

    .line 1524
    new-instance v0, Lcom/yelp/android/ui/util/h;

    new-array v1, v6, [Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/yelp/android/ui/util/h;-><init>([Landroid/view/View;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->O:Lcom/yelp/android/ui/util/h;

    .line 1525
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->y:Lcom/yelp/android/ui/util/bs;

    const v1, 0x7f0c0010

    invoke-virtual {p0, v7}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->O:Lcom/yelp/android/ui/util/h;

    invoke-static {v2, v3}, Lcom/yelp/android/ui/util/bw;->a(Ljava/lang/CharSequence;Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/bw;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Landroid/view/View;

    invoke-virtual {v2, v3}, Lcom/yelp/android/ui/util/bw;->a(Landroid/view/View;)Lcom/yelp/android/ui/util/bw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/ui/util/bw;->a()Lcom/yelp/android/ui/util/bv;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/util/bs;->a(ILcom/yelp/android/ui/util/bv;)V

    .line 1530
    new-instance v0, Lcom/yelp/android/ui/util/h;

    new-array v1, v6, [Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/yelp/android/ui/util/h;-><init>([Landroid/view/View;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->P:Lcom/yelp/android/ui/util/h;

    .line 1531
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->y:Lcom/yelp/android/ui/util/bs;

    const v1, 0x7f0703fc

    const v2, 0x7f0703f9

    invoke-virtual {p0, v2}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->P:Lcom/yelp/android/ui/util/h;

    invoke-static {v2, v3}, Lcom/yelp/android/ui/util/bw;->a(Ljava/lang/CharSequence;Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/bw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/ui/util/bw;->a()Lcom/yelp/android/ui/util/bv;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/util/bs;->a(ILcom/yelp/android/ui/util/bv;)V

    .line 1536
    new-instance v0, Lcom/yelp/android/ui/util/h;

    new-array v1, v6, [Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/yelp/android/ui/util/h;-><init>([Landroid/view/View;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->Q:Lcom/yelp/android/ui/util/h;

    .line 1537
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->y:Lcom/yelp/android/ui/util/bs;

    const v1, 0x7f0c001a

    invoke-virtual {p0, v7}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->Q:Lcom/yelp/android/ui/util/h;

    invoke-static {v2, v3}, Lcom/yelp/android/ui/util/bw;->a(Ljava/lang/CharSequence;Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/bw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/ui/util/bw;->a()Lcom/yelp/android/ui/util/bv;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/util/bs;->a(ILcom/yelp/android/ui/util/bv;)V

    .line 1541
    return-void
.end method

.method private N()V
    .locals 13

    .prologue
    const v12, 0x7f0703ea

    const/4 v7, 0x1

    const v11, 0x7f070134

    const/4 v6, 0x0

    .line 1544
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getRegularCount()I

    move-result v8

    .line 1545
    new-instance v2, Lcom/yelp/android/ui/activities/businesspage/af;

    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BusinessMoreRegularsClicked:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v1, "button"

    invoke-direct {v2, p0, v0, v1}, Lcom/yelp/android/ui/activities/businesspage/af;-><init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Lcom/yelp/android/analytics/iris/EventIri;Ljava/lang/String;)V

    .line 1554
    const/4 v0, 0x3

    if-le v8, v0, :cond_1

    add-int/lit8 v0, v8, -0x3

    .line 1555
    :goto_0
    iget-object v9, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->y:Lcom/yelp/android/ui/util/bs;

    invoke-virtual {p0, v11}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->V:Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter;

    invoke-static {v1, v3}, Lcom/yelp/android/ui/util/bw;->a(Ljava/lang/CharSequence;Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/bw;

    move-result-object v1

    const v3, 0x7f0c03ef

    invoke-virtual {v1, v3}, Lcom/yelp/android/ui/util/bw;->b(I)Lcom/yelp/android/ui/util/bw;

    move-result-object v10

    const v1, 0x7f0e0015

    const v3, 0x7f0703a3

    invoke-direct {p0, v1, v3, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(III)Ljava/lang/String;

    move-result-object v1

    if-lez v0, :cond_2

    move v3, v7

    :goto_1
    const v0, 0x7f070075

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aO:Lcom/yelp/android/ui/activities/businesspage/cc;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Ljava/lang/String;Landroid/view/View$OnClickListener;ZLjava/lang/String;Landroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/yelp/android/ui/util/bw;->a(Landroid/view/View;)Lcom/yelp/android/ui/util/bw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/bw;->a()Lcom/yelp/android/ui/util/bv;

    move-result-object v0

    invoke-virtual {v9, v11, v0}, Lcom/yelp/android/ui/util/bs;->a(ILcom/yelp/android/ui/util/bv;)V

    .line 1570
    new-instance v0, Lcom/yelp/android/ui/util/h;

    new-array v1, v6, [Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/yelp/android/ui/util/h;-><init>([Landroid/view/View;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->W:Lcom/yelp/android/ui/util/h;

    .line 1571
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->y:Lcom/yelp/android/ui/util/bs;

    invoke-virtual {p0, v12}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->W:Lcom/yelp/android/ui/util/h;

    invoke-static {v1, v2}, Lcom/yelp/android/ui/util/bw;->a(Ljava/lang/CharSequence;Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/bw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/ui/util/bw;->a()Lcom/yelp/android/ui/util/bv;

    move-result-object v1

    invoke-virtual {v0, v12, v1}, Lcom/yelp/android/ui/util/bs;->a(ILcom/yelp/android/ui/util/bv;)V

    .line 1576
    new-instance v0, Lcom/yelp/android/ui/util/h;

    new-array v1, v6, [Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/yelp/android/ui/util/h;-><init>([Landroid/view/View;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->X:Lcom/yelp/android/ui/util/h;

    .line 1577
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->y:Lcom/yelp/android/ui/util/bs;

    const v1, 0x7f0c0015

    invoke-virtual {p0, v11}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->X:Lcom/yelp/android/ui/util/h;

    invoke-static {v2, v3}, Lcom/yelp/android/ui/util/bw;->a(Ljava/lang/CharSequence;Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/bw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/ui/util/bw;->a()Lcom/yelp/android/ui/util/bv;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/util/bs;->a(ILcom/yelp/android/ui/util/bv;)V

    .line 1582
    if-nez v8, :cond_0

    .line 1583
    iput-boolean v7, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ah:Z

    .line 1585
    :cond_0
    return-void

    :cond_1
    move v0, v6

    .line 1554
    goto :goto_0

    :cond_2
    move v3, v6

    .line 1555
    goto :goto_1
.end method

.method private O()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1588
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aF:Landroid/view/View;

    if-nez v0, :cond_0

    .line 1589
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030129

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aF:Landroid/view/View;

    .line 1592
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aF:Landroid/view/View;

    const v1, 0x7f0c0084

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1593
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0e0028

    iget v3, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->U:I

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v4}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1595
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aF:Landroid/view/View;

    new-instance v1, Lcom/yelp/android/ui/activities/businesspage/ag;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/businesspage/ag;-><init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1619
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->v:Lcom/yelp/android/ui/util/h;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/h;->clear()V

    .line 1620
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->v:Lcom/yelp/android/ui/util/h;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aF:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/h;->b(Landroid/view/View;)V

    .line 1621
    return-void
.end method

.method private P()V
    .locals 5

    .prologue
    .line 1624
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->y:Lcom/yelp/android/ui/util/bs;

    const v1, 0x7f070116

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/bs;->a(I)Lcom/yelp/android/ui/util/bv;

    move-result-object v0

    .line 1626
    if-nez v0, :cond_1

    .line 1657
    :cond_0
    :goto_0
    return-void

    .line 1629
    :cond_1
    iget-object v0, v0, Lcom/yelp/android/ui/util/bv;->a:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/yelp/android/ui/util/h;

    .line 1630
    invoke-virtual {v0}, Lcom/yelp/android/ui/util/h;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1631
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030060

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 1633
    new-instance v2, Lcom/yelp/android/ui/activities/businesspage/ah;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/businesspage/ah;-><init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1643
    const v2, 0x7f0c01eb

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/yelp/android/ui/activities/businesspage/ai;

    invoke-direct {v3, p0, v0, v1}, Lcom/yelp/android/ui/activities/businesspage/ai;-><init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Lcom/yelp/android/ui/util/h;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1655
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/h;->b(Landroid/view/View;)V

    goto :goto_0
.end method

.method private Q()V
    .locals 3

    .prologue
    .line 1673
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->v()V

    .line 1675
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->w:Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;->a(Lcom/yelp/android/serializable/YelpBusiness;)V

    .line 1676
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->g:Lcom/yelp/android/ui/activities/businesspage/cd;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/businesspage/cd;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)V

    .line 1677
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->h:Lcom/yelp/android/ui/activities/businesspage/p;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/businesspage/p;->a(Lcom/yelp/android/serializable/YelpBusiness;)V

    .line 1678
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->i:Lcom/yelp/android/ui/activities/businesspage/p;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/businesspage/p;->a(Lcom/yelp/android/serializable/YelpBusiness;)V

    .line 1681
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->e:Lcom/yelp/android/ui/activities/businesspage/p;

    if-eqz v0, :cond_0

    .line 1682
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->e:Lcom/yelp/android/ui/activities/businesspage/p;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/businesspage/p;->a(Lcom/yelp/android/serializable/YelpBusiness;)V

    .line 1685
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->c:Lcom/yelp/android/ui/panels/businesspage/b;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/businesspage/b;->a(Lcom/yelp/android/serializable/YelpBusiness;)V

    .line 1686
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->c:Lcom/yelp/android/ui/panels/businesspage/b;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->isBookmarked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/businesspage/b;->setBookmarkChecked(Z)V

    .line 1689
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->i()Lcom/yelp/android/database/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/database/q;->f()Lcom/yelp/android/database/d;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0, v1}, Lcom/yelp/android/database/d;->c(Lcom/yelp/android/serializable/YelpBusiness;)Landroid/os/AsyncTask;

    .line 1692
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.contributing"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1693
    if-ltz v0, :cond_1

    invoke-static {}, Lcom/yelp/android/appdata/BusinessContributionType;->values()[Lcom/yelp/android/appdata/BusinessContributionType;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1694
    sget-object v1, Lcom/yelp/android/ui/activities/businesspage/bp;->a:[I

    invoke-static {}, Lcom/yelp/android/appdata/BusinessContributionType;->values()[Lcom/yelp/android/appdata/BusinessContributionType;

    move-result-object v2

    aget-object v0, v2, v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/BusinessContributionType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 1706
    :cond_1
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ap:Z

    .line 1707
    return-void

    .line 1696
    :pswitch_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->i()V

    goto :goto_0

    .line 1699
    :pswitch_1
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ae()V

    goto :goto_0

    .line 1702
    :pswitch_2
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->h()V

    goto :goto_0

    .line 1694
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private R()V
    .locals 3

    .prologue
    .line 1715
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aD:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getDfpParameters()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1716
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aA:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->setVisibility(I)V

    .line 1732
    :goto_0
    return-void

    .line 1720
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aA:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 1721
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aA:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->setVisibility(I)V

    .line 1725
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getDfpParameters()Lorg/json/JSONObject;

    move-result-object v0

    .line 1726
    sget-object v1, Lcom/yelp/android/analytics/iris/AutoIri;->DFPWillRequest:Lcom/yelp/android/analytics/iris/AutoIri;

    invoke-static {v1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;)V

    .line 1727
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aA:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aQ:Lcom/google/android/gms/ads/AdListener;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 1728
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aA:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    invoke-static {v0}, Lcom/yelp/android/ui/util/q;->a(Lorg/json/JSONObject;)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->loadAd(Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1729
    :catch_0
    move-exception v0

    .line 1730
    const-string/jumbo v0, "DFP"

    const-string/jumbo v1, "Problems parsing ad param set"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private S()V
    .locals 2

    .prologue
    .line 1894
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ay:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    instance-of v0, v0, Lcom/yelp/android/appdata/webrequests/eg;

    if-eqz v0, :cond_1

    .line 1895
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ay:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    check-cast v0, Lcom/yelp/android/appdata/webrequests/eg;

    .line 1896
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aW:Lcom/yelp/android/av/i;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/eg;->setCallback(Lcom/yelp/android/appdata/webrequests/m;)V

    .line 1897
    const v0, 0x7f0704ec

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->e(I)V

    .line 1903
    :cond_0
    :goto_0
    return-void

    .line 1898
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ay:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    instance-of v0, v0, Lcom/yelp/android/appdata/webrequests/d;

    if-eqz v0, :cond_0

    .line 1899
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ay:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    check-cast v0, Lcom/yelp/android/appdata/webrequests/d;

    .line 1900
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aS:Lcom/yelp/android/appdata/webrequests/m;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/d;->setCallback(Lcom/yelp/android/appdata/webrequests/m;)V

    .line 1901
    const v0, 0x7f0700a1

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->e(I)V

    goto :goto_0
.end method

.method private T()V
    .locals 3

    .prologue
    .line 1974
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BusinessRedeemCheckInOffer:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Lcom/yelp/android/analytics/iris/EventIri;)V

    .line 1975
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getCheckInOffer()Lcom/yelp/android/serializable/Offer;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-static {v0, v1}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->a(Lcom/yelp/android/serializable/Offer;Lcom/yelp/android/serializable/YelpBusiness;)Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;

    move-result-object v0

    .line 1977
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 1978
    return-void
.end method

.method private U()V
    .locals 3

    .prologue
    .line 1981
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BusinessDealClicked:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Lcom/yelp/android/analytics/iris/EventIri;)V

    .line 1982
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getDeal()Lcom/yelp/android/serializable/YelpDeal;

    move-result-object v0

    .line 1983
    if-nez v0, :cond_0

    .line 1989
    :goto_0
    return-void

    .line 1986
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpDeal;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1988
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private V()V
    .locals 5

    .prologue
    .line 1997
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 1998
    const-string/jumbo v1, "business_id"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1999
    const-string/jumbo v1, "call_to_action_id"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->getCallToAction()Lcom/yelp/android/serializable/CallToAction;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/CallToAction;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2000
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->at:Lcom/yelp/android/av/a;

    sget-object v2, Lcom/yelp/android/analytics/iris/EventIri;->CallToActionBusinessClick:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-virtual {v1, v2, v0}, Lcom/yelp/android/av/a;->a(Lcom/yelp/android/analytics/iris/b;Ljava/util/Map;)V

    .line 2002
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getCallToAction()Lcom/yelp/android/serializable/CallToAction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/CallToAction;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2003
    const-string/jumbo v1, "http"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "https"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2004
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/yelp/android/analytics/iris/ViewIri;->CallToActionWebView:Lcom/yelp/android/analytics/iris/ViewIri;

    const-class v4, Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;

    invoke-static {v4}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v4

    invoke-static {v1, v0, v2, v3, v4}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->getWebIntent(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Lcom/yelp/android/analytics/iris/ViewIri;Ljava/util/EnumSet;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->startActivity(Landroid/content/Intent;)V

    .line 2010
    :cond_1
    :goto_0
    return-void

    .line 2007
    :cond_2
    const-string/jumbo v1, "tel"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2008
    invoke-static {v0}, Lcom/yelp/android/util/r;->a(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private W()V
    .locals 3

    .prologue
    .line 2032
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BusinessAddedToContacts:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v1, "business_id"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2033
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/businesspage/m;->a(Landroid/app/Activity;Lcom/yelp/android/serializable/YelpBusiness;)V

    .line 2034
    return-void
.end method

.method private X()V
    .locals 2

    .prologue
    .line 2037
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->DirectionsToBusiness:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->b(Lcom/yelp/android/analytics/iris/EventIri;)V

    .line 2038
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-static {v0, v1}, Lcom/yelp/android/util/r;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)V

    .line 2039
    return-void
.end method

.method private Y()V
    .locals 2

    .prologue
    .line 2042
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BusinessMessageTheBusinessOpen:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;)V

    .line 2043
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x407

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2045
    return-void
.end method

.method private Z()V
    .locals 5

    .prologue
    .line 2048
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BusinessOpenYelpMenu:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Lcom/yelp/android/analytics/iris/EventIri;)V

    .line 2049
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->getMenu()Lcom/yelp/android/serializable/Menu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Menu;->getActionUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->getMenu()Lcom/yelp/android/serializable/Menu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Menu;->getViewTitle()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/yelp/android/analytics/iris/ViewIri;->BusinessMenu:Lcom/yelp/android/analytics/iris/ViewIri;

    sget-object v4, Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;->EVENTS:Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;

    invoke-static {v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->getWebIntent(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Lcom/yelp/android/analytics/iris/ViewIri;Ljava/util/EnumSet;)Landroid/content/Intent;

    move-result-object v0

    .line 2053
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->startActivity(Landroid/content/Intent;)V

    .line 2054
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;I)I
    .locals 0

    .prologue
    .line 226
    iput p1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->U:I

    return p1
.end method

.method private a(IILandroid/view/View$OnClickListener;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 923
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030068

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 926
    const v0, 0x7f0c0207

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 927
    invoke-virtual {v0, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 929
    const v0, 0x7f0c0208

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 931
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 932
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 934
    return-object v1
.end method

.method private a(Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/view/View;
    .locals 4

    .prologue
    .line 938
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030065

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 941
    const v0, 0x7f0c0201

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 943
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 945
    const v0, 0x7f0c0202

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 946
    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 948
    return-object v1
.end method

.method private a(Ljava/lang/String;Landroid/view/View$OnClickListener;ZLjava/lang/String;Landroid/view/View$OnClickListener;)Landroid/view/View;
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 880
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030066

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 883
    const v0, 0x7f0c0205

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 884
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 885
    invoke-direct {p0, v1, p3, p1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->b(Landroid/view/View;ZLjava/lang/String;)V

    .line 886
    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 887
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 892
    :goto_0
    const v0, 0x7f0c0204

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 893
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 894
    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 895
    invoke-virtual {v0, p5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 896
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 901
    :goto_1
    return-object v1

    .line 889
    :cond_0
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 898
    :cond_1
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public static a(Lcom/yelp/android/serializable/YelpBusiness;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/SearchRequest;)Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;
    .locals 3

    .prologue
    .line 430
    new-instance v0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;-><init>()V

    .line 431
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 432
    const-string/jumbo v2, "extra.business"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 433
    if-eqz p1, :cond_0

    .line 434
    const-string/jumbo v2, "top_highlighted_review_id"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    :cond_0
    if-eqz p2, :cond_1

    .line 438
    const-string/jumbo v2, "search_request"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 440
    :cond_1
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->setArguments(Landroid/os/Bundle;)V

    .line 441
    return-object v0
.end method

.method public static a(Lcom/yelp/android/serializable/YelpBusiness;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/SearchRequest;Lcom/yelp/android/serializable/BusinessSearchResult;)Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;
    .locals 3

    .prologue
    .line 447
    invoke-static {p0, p1, p2}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Lcom/yelp/android/serializable/YelpBusiness;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/SearchRequest;)Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    move-result-object v0

    .line 449
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 450
    if-eqz p3, :cond_0

    .line 451
    const-string/jumbo v2, "business_search_result"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 453
    :cond_0
    return-object v0
.end method

.method public static a(Lcom/yelp/android/serializable/YelpBusiness;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/SearchRequest;Lcom/yelp/android/serializable/BusinessSearchResult;Lcom/yelp/android/serializable/YelpCheckIn;)Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;
    .locals 3

    .prologue
    .line 459
    invoke-static {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Lcom/yelp/android/serializable/YelpBusiness;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/SearchRequest;Lcom/yelp/android/serializable/BusinessSearchResult;)Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    move-result-object v0

    .line 461
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 462
    const-string/jumbo v2, "extra.check_in"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 463
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Lcom/yelp/android/ui/activities/reviews/ReviewSource;)Lcom/yelp/android/ui/activities/reviews/ReviewSource;
    .locals 1

    .prologue
    .line 226
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->b(Lcom/yelp/android/ui/activities/reviews/ReviewSource;)Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    move-result-object v0

    return-object v0
.end method

.method private a(III)Ljava/lang/String;
    .locals 2

    .prologue
    .line 3214
    if-lez p3, :cond_0

    .line 3215
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, p3, v1}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3217
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aj:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->Z:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ai:Ljava/util/Map;

    return-object p1
.end method

.method private a(I)V
    .locals 3

    .prologue
    .line 1886
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->C:Lcom/yelp/android/ui/util/ax;

    invoke-virtual {v2}, Lcom/yelp/android/ui/util/ax;->d()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v1, v2, p1}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Ljava/util/List;I)Landroid/content/Intent;

    move-result-object v0

    .line 1888
    const/16 v1, 0x411

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1889
    return-void
.end method

.method private a(Landroid/content/Context;Lcom/yelp/android/analytics/iris/EventIri;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1836
    invoke-direct {p0, p2, p3}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->c(Lcom/yelp/android/analytics/iris/EventIri;Ljava/lang/String;)Lcom/yelp/android/analytics/h;

    move-result-object v0

    .line 1837
    invoke-static {p1, v0}, Lcom/yelp/android/analytics/i;->a(Landroid/content/Context;Lcom/yelp/android/analytics/h;)V

    .line 1838
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->at:Lcom/yelp/android/av/a;

    invoke-virtual {v0}, Lcom/yelp/android/analytics/h;->a()Lcom/yelp/android/analytics/g;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/av/a;->a(Lcom/yelp/android/analytics/b;)V

    .line 1839
    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 1233
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030064

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 1235
    const v0, 0x7f0c01fb

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/map/MapSpannableLinearLayout;

    .line 1238
    invoke-virtual {v0}, Lcom/yelp/android/ui/map/MapSpannableLinearLayout;->getYelpMap()Lcom/yelp/android/ui/map/YelpMap;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->az:Lcom/yelp/android/ui/map/YelpMap;

    .line 1240
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    new-instance v2, Lcom/yelp/android/ui/map/b;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/yelp/android/ui/map/b;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/YelpBusiness;->getAssetForMap()I

    move-result v3

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/yelp/android/ui/map/MapSpannableLinearLayout;->a(Lcom/yelp/android/serializable/by;Lcom/yelp/android/ui/map/e;ILandroid/os/Bundle;Z)Z

    move-result v1

    .line 1243
    if-nez v1, :cond_0

    .line 1245
    invoke-virtual {v0}, Lcom/yelp/android/ui/map/MapSpannableLinearLayout;->b()V

    .line 1246
    const v1, 0x7f0c0200

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1248
    const v2, 0x7f0c01fd

    invoke-virtual {v6, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 1249
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1250
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1253
    :cond_0
    new-instance v1, Lcom/yelp/android/ui/activities/businesspage/bt;

    sget-object v2, Lcom/yelp/android/analytics/iris/EventIri;->BusinessMap:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-direct {v1, p0, v2}, Lcom/yelp/android/ui/activities/businesspage/bt;-><init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Lcom/yelp/android/analytics/iris/EventIri;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/map/MapSpannableLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1265
    const v1, 0x7f0c01fc

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ao:Landroid/view/View;

    .line 1266
    const v1, 0x7f0700a4

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->getCompleteAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yelp/android/ui/util/k;->a(Landroid/view/View;ILjava/lang/String;)V

    .line 1269
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ao:Landroid/view/View;

    const v1, 0x7f0c01fe

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->l:Landroid/widget/TextView;

    .line 1270
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ao:Landroid/view/View;

    const v1, 0x7f0c01ff

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->m:Landroid/widget/TextView;

    .line 1271
    new-instance v0, Lcom/yelp/android/ui/util/h;

    new-array v1, v5, [Landroid/view/View;

    aput-object v6, v1, v7

    invoke-direct {v0, v1}, Lcom/yelp/android/ui/util/h;-><init>([Landroid/view/View;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->n:Lcom/yelp/android/ui/util/h;

    .line 1273
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->y:Lcom/yelp/android/ui/util/bs;

    const v1, 0x7f0c000e

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->n:Lcom/yelp/android/ui/util/h;

    invoke-static {v2}, Lcom/yelp/android/ui/util/bw;->a(Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/bw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/ui/util/bw;->a()Lcom/yelp/android/ui/util/bv;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/util/bs;->a(ILcom/yelp/android/ui/util/bv;)V

    .line 1275
    return-void
.end method

.method private a(Landroid/view/Menu;)V
    .locals 3

    .prologue
    .line 3186
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->b:Landroid/view/MenuItem;

    invoke-static {v0}, Landroid/support/v4/view/as;->a(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3187
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f040017

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 3189
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->b:Landroid/view/MenuItem;

    const v2, 0x7f030016

    invoke-static {v1, v2}, Landroid/support/v4/view/as;->b(Landroid/view/MenuItem;I)Landroid/view/MenuItem;

    .line 3190
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->b:Landroid/view/MenuItem;

    invoke-static {v1}, Landroid/support/v4/view/as;->a(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3191
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->b:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3193
    :cond_0
    return-void
.end method

.method private a(Landroid/view/View;ZLjava/lang/String;)V
    .locals 1

    .prologue
    .line 905
    const v0, 0x7f0c0204

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 906
    invoke-virtual {v0, p3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 907
    invoke-virtual {v0, p2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 908
    return-void
.end method

.method private a(Lcom/yelp/android/analytics/iris/EventIri;)V
    .locals 1

    .prologue
    .line 1789
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Lcom/yelp/android/analytics/iris/EventIri;Ljava/lang/String;)V

    .line 1790
    return-void
.end method

.method private a(Lcom/yelp/android/analytics/iris/EventIri;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1800
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->at:Lcom/yelp/android/av/a;

    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->c(Lcom/yelp/android/analytics/iris/EventIri;Ljava/lang/String;)Lcom/yelp/android/analytics/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/analytics/h;->a()Lcom/yelp/android/analytics/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/av/a;->a(Lcom/yelp/android/analytics/b;)V

    .line 1801
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V
    .locals 0

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ae()V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Landroid/view/Menu;)V
    .locals 0

    .prologue
    .line 226
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Landroid/view/Menu;)V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Landroid/view/View;ZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 226
    invoke-direct {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Landroid/view/View;ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Lcom/yelp/android/analytics/iris/EventIri;)V
    .locals 0

    .prologue
    .line 226
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Lcom/yelp/android/analytics/iris/EventIri;)V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Lcom/yelp/android/analytics/iris/EventIri;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 226
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Lcom/yelp/android/analytics/iris/EventIri;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 226
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->g(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Ljava/util/List;I)V
    .locals 0

    .prologue
    .line 226
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Ljava/util/List;I)V

    return-void
.end method

.method private a(Lcom/yelp/android/ui/activities/reviewpage/ab;Ljava/util/List;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/ui/activities/reviewpage/ab;",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/LocalAd;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 994
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getFromThisBusiness()Lcom/yelp/android/serializable/FromThisBusiness;

    move-result-object v0

    .line 995
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/yelp/android/serializable/FromThisBusiness;->getShowTeaser()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1001
    invoke-virtual {p1}, Lcom/yelp/android/ui/activities/reviewpage/ab;->clear()V

    .line 1002
    invoke-virtual {p1}, Lcom/yelp/android/ui/activities/reviewpage/ab;->notifyDataSetChanged()V

    .line 1061
    :cond_0
    :goto_0
    return-void

    .line 1007
    :cond_1
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1008
    :cond_2
    if-eqz p3, :cond_3

    .line 1009
    iput-boolean v8, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aD:Z

    .line 1010
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->R()V

    .line 1013
    :cond_3
    invoke-virtual {p1}, Lcom/yelp/android/ui/activities/reviewpage/ab;->clear()V

    .line 1014
    invoke-virtual {p1}, Lcom/yelp/android/ui/activities/reviewpage/ab;->notifyDataSetChanged()V

    goto :goto_0

    .line 1020
    :cond_4
    invoke-virtual {p1}, Lcom/yelp/android/ui/activities/reviewpage/ab;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1024
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getCategoryForBusinessSearchResult()Ljava/lang/String;

    move-result-object v3

    .line 1026
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/LocalAd;

    .line 1028
    iget-object v5, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->at:Lcom/yelp/android/av/a;

    sget-object v6, Lcom/yelp/android/analytics/iris/AutoIri;->AdBusinessImpression:Lcom/yelp/android/analytics/iris/AutoIri;

    iget-object v7, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0, v7, v2}, Lcom/yelp/android/serializable/LocalAd;->getIriParams(Lcom/yelp/android/serializable/YelpBusiness;Z)Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/yelp/android/av/a;->a(Lcom/yelp/android/analytics/iris/b;Ljava/util/Map;)V

    .line 1035
    invoke-virtual {v0}, Lcom/yelp/android/serializable/LocalAd;->getBusiness()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 1036
    invoke-virtual {v0}, Lcom/yelp/android/serializable/LocalAd;->getBusiness()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getCategories()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Category;

    .line 1037
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Category;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1038
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    move v0, v1

    :goto_3
    move v1, v0

    .line 1047
    goto :goto_1

    .line 1042
    :cond_7
    const-string/jumbo v5, "AdsFix"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "LocalAd has a null business. business id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v7}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " ad type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/yelp/android/serializable/LocalAd;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "local ad business id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/yelp/android/serializable/LocalAd;->getBusinessId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/yelp/android/util/YelpLog;->error(Ljava/lang/Object;Ljava/lang/String;)V

    move v0, v1

    goto :goto_3

    .line 1049
    :cond_8
    if-eqz p3, :cond_9

    const v0, 0x7f0c0006

    .line 1050
    :goto_4
    iget-object v4, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->y:Lcom/yelp/android/ui/util/bs;

    invoke-virtual {v4, v0}, Lcom/yelp/android/ui/util/bs;->a(I)Lcom/yelp/android/ui/util/bv;

    move-result-object v0

    .line 1052
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ne v1, v4, :cond_a

    .line 1053
    const v1, 0x7f07044f

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v3, v4, v2

    invoke-virtual {p0, v1, v4}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/bv;->a(Ljava/lang/CharSequence;)V

    .line 1058
    :goto_5
    invoke-virtual {p1, p2}, Lcom/yelp/android/ui/activities/reviewpage/ab;->a(Ljava/util/List;)V

    .line 1059
    invoke-virtual {p1}, Lcom/yelp/android/ui/activities/reviewpage/ab;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 1049
    :cond_9
    const v0, 0x7f0c0005

    goto :goto_4

    .line 1055
    :cond_a
    const v1, 0x7f0706c7

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/bv;->a(Ljava/lang/CharSequence;)V

    goto :goto_5
.end method

.method private a(Lcom/yelp/android/ui/util/bw;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/ui/util/bw",
            "<",
            "Lcom/yelp/android/ui/util/h;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const v6, 0x7f020420

    const/4 v5, 0x0

    .line 1088
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f03005e

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aa:Landroid/view/View;

    .line 1090
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aa:Landroid/view/View;

    const v2, 0x7f0c01e3

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ab:Landroid/widget/TextView;

    .line 1092
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getAttributions()Ljava/util/List;

    move-result-object v0

    .line 1096
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1099
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Attribution;

    .line 1100
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Attribution;->getType()Lcom/yelp/android/serializable/Attribution$Type;

    move-result-object v2

    sget-object v3, Lcom/yelp/android/serializable/Attribution$Type;->FOOTER:Lcom/yelp/android/serializable/Attribution$Type;

    if-ne v2, v3, :cond_0

    .line 1101
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Attribution;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    move-object v0, v1

    move-object v1, v2

    .line 1132
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1133
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ab:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1139
    :goto_1
    return-void

    .line 1102
    :cond_0
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Attribution;->getType()Lcom/yelp/android/serializable/Attribution$Type;

    move-result-object v0

    sget-object v2, Lcom/yelp/android/serializable/Attribution$Type;->YP_ADS:Lcom/yelp/android/serializable/Attribution$Type;

    if-ne v0, v2, :cond_3

    .line 1106
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->G()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1107
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f030067

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 1111
    new-instance v3, Landroid/text/SpannableStringBuilder;

    const v0, 0x7f0704a5

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1113
    const-string/jumbo v0, "%1$s"

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {v3, v0, v4}, Lcom/yelp/android/util/StringUtils;->a(Landroid/text/Spannable;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 1116
    const v0, 0x7f0c0206

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1118
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1120
    invoke-virtual {p1, v2}, Lcom/yelp/android/ui/util/bw;->b(Landroid/view/View;)Lcom/yelp/android/ui/util/bw;

    move-object v0, v1

    .line 1121
    goto :goto_0

    .line 1122
    :cond_1
    new-instance v1, Landroid/text/SpannableStringBuilder;

    const v0, 0x7f070497

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1124
    const-string/jumbo v0, "%1$s"

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/yelp/android/util/StringUtils;->a(Landroid/text/Spannable;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 1126
    const v0, 0x7f07033e

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1135
    :cond_2
    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ab:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1136
    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ab:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1137
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ab:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto/16 :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 2013
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getDialablePhone()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/util/r;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2015
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->CallBusiness:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-direct {p0, v1, p1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->c(Lcom/yelp/android/analytics/iris/EventIri;Ljava/lang/String;)Lcom/yelp/android/analytics/h;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/yelp/android/analytics/h;->a(Ljava/lang/String;)Lcom/yelp/android/analytics/h;

    move-result-object v1

    const-string/jumbo v2, "scheme"

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/yelp/android/analytics/h;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/analytics/h;

    move-result-object v1

    .line 2018
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/yelp/android/analytics/i;->a(Landroid/content/Context;Lcom/yelp/android/analytics/h;)V

    .line 2019
    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->at:Lcom/yelp/android/av/a;

    invoke-virtual {v1}, Lcom/yelp/android/analytics/h;->a()Lcom/yelp/android/analytics/g;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/yelp/android/av/a;->a(Lcom/yelp/android/analytics/b;)V

    .line 2022
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2028
    :goto_0
    return-void

    .line 2023
    :catch_0
    move-exception v0

    .line 2024
    const-string/jumbo v1, "BusinessPageFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error launching dialer intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2025
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;

    const v1, 0x7f07010f

    const v2, 0x7f070247

    invoke-virtual {p0, v2}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->a(ILjava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2651
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getFromThisBusiness()Lcom/yelp/android/serializable/FromThisBusiness;

    move-result-object v0

    .line 2652
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/yelp/android/serializable/FromThisBusiness;->getShowTeaser()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2653
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aT:Lcom/yelp/android/appdata/webrequests/m;

    invoke-interface {v0, v1, v1}, Lcom/yelp/android/appdata/webrequests/m;->onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V

    .line 2663
    :cond_0
    :goto_0
    return-void

    .line 2657
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->o:Lcom/yelp/android/appdata/webrequests/cy;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->o:Lcom/yelp/android/appdata/webrequests/cy;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/cy;->isFetching()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2661
    :cond_2
    new-instance v0, Lcom/yelp/android/appdata/webrequests/cy;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aT:Lcom/yelp/android/appdata/webrequests/m;

    invoke-direct {v0, p1, p2, v1}, Lcom/yelp/android/appdata/webrequests/cy;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->o:Lcom/yelp/android/appdata/webrequests/cy;

    .line 2662
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->o:Lcom/yelp/android/appdata/webrequests/cy;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/cy;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    goto :goto_0
.end method

.method private a(Ljava/util/EnumSet;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$MessageAlertBoxNotification;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1142
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 1150
    new-instance v0, Lcom/yelp/android/ui/activities/businesspage/t;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/businesspage/t;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aq:Lcom/yelp/android/ui/activities/businesspage/t;

    .line 1151
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->c:Lcom/yelp/android/ui/panels/businesspage/b;

    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/businesspage/b;->getAlertsPager()Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aq:Lcom/yelp/android/ui/activities/businesspage/t;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/bo;)V

    .line 1153
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 1154
    const-string/jumbo v0, "com.yelp.android.webview_done"

    invoke-virtual {v5, v0, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 1162
    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->getReservation()Lcom/yelp/android/serializable/Reservation;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1163
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aq:Lcom/yelp/android/ui/activities/businesspage/t;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/businesspage/t;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)V

    .line 1171
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$MessageAlertBoxNotification;

    .line 1172
    iget-object v3, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aq:Lcom/yelp/android/ui/activities/businesspage/t;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$MessageAlertBoxNotification;->getData()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v0, v1, v3, v4}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$MessageAlertBoxNotification;->addNotification(Landroid/content/Context;Lcom/yelp/android/ui/activities/businesspage/t;Landroid/content/Intent;)V

    goto :goto_1

    .line 1164
    :cond_1
    if-eqz v0, :cond_0

    .line 1165
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aq:Lcom/yelp/android/ui/activities/businesspage/t;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    const-string/jumbo v3, "com.yelp.android.webview_title"

    invoke-virtual {v5, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "com.yelp.android.webview_subtitle"

    invoke-virtual {v5, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "com.yelp.android.webview_has_details"

    invoke-virtual {v5, v7, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/yelp/android/ui/activities/businesspage/t;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1175
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getDateReopening()Ljava/util/Date;

    move-result-object v0

    .line 1176
    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->getMovedToBusinessId()Ljava/lang/String;

    move-result-object v2

    .line 1177
    iget-object v3, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/YelpBusiness;->isMovedToNewAddress()Z

    move-result v3

    .line 1178
    iget-object v4, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v4}, Lcom/yelp/android/serializable/YelpBusiness;->isClosed()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1180
    if-eqz v3, :cond_6

    .line 1183
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aq:Lcom/yelp/android/ui/activities/businesspage/t;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/businesspage/t;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 1198
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getCheckedInFriendCount()I

    move-result v0

    if-eqz v0, :cond_4

    .line 1199
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aq:Lcom/yelp/android/ui/activities/businesspage/t;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/businesspage/t;->b(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)V

    .line 1202
    :cond_4
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getSpecialHours()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1203
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1206
    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    .line 1208
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getSpecialHours()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/SpecialHours;

    .line 1209
    invoke-virtual {v0}, Lcom/yelp/android/serializable/SpecialHours;->getDays()[I

    move-result-object v4

    move v0, v6

    .line 1213
    :goto_4
    array-length v5, v4

    if-ge v0, v5, :cond_5

    .line 1214
    aget v5, v4, v0

    if-ne v5, v2, :cond_9

    .line 1215
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aq:Lcom/yelp/android/ui/activities/businesspage/t;

    iget-object v4, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v4}, Lcom/yelp/android/serializable/YelpBusiness;->getDialablePhone()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/yelp/android/ui/activities/businesspage/t;->d(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3

    .line 1184
    :cond_6
    if-eqz v0, :cond_7

    .line 1187
    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aq:Lcom/yelp/android/ui/activities/businesspage/t;

    invoke-static {v1}, Landroid/text/format/DateFormat;->getLongDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/yelp/android/ui/activities/businesspage/t;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 1189
    :cond_7
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1191
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aq:Lcom/yelp/android/ui/activities/businesspage/t;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/businesspage/t;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 1194
    :cond_8
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aq:Lcom/yelp/android/ui/activities/businesspage/t;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/businesspage/t;->b(Landroid/content/Context;)V

    goto :goto_2

    .line 1213
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1223
    :cond_a
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aq:Lcom/yelp/android/ui/activities/businesspage/t;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/businesspage/t;->notifyDataSetChanged()V

    .line 1225
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aq:Lcom/yelp/android/ui/activities/businesspage/t;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/businesspage/t;->getCount()I

    move-result v0

    if-eqz v0, :cond_b

    .line 1226
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->c:Lcom/yelp/android/ui/panels/businesspage/b;

    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/businesspage/b;->getAlertsPager()Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 1230
    :goto_5
    return-void

    .line 1228
    :cond_b
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->c:Lcom/yelp/android/ui/panels/businesspage/b;

    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/businesspage/b;->getAlertsPager()Landroid/support/v4/view/ViewPager;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    goto :goto_5
.end method

.method private a(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/ReviewHighlight;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 2694
    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->G:Ljava/util/List;

    .line 2695
    iput p2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->F:I

    .line 2696
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ae:Z

    .line 2697
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ap()V

    .line 2698
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Z)Z
    .locals 0

    .prologue
    .line 226
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ag:Z

    return p1
.end method

.method private aa()V
    .locals 4

    .prologue
    .line 2057
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 2058
    const/4 v0, 0x0

    .line 2059
    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ar:Lcom/yelp/android/serializable/BusinessSearchResult;

    if-eqz v2, :cond_0

    .line 2060
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ar:Lcom/yelp/android/serializable/BusinessSearchResult;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/BusinessSearchResult;->getBizDimension()Ljava/lang/String;

    move-result-object v0

    .line 2062
    :cond_0
    invoke-static {v0}, Lcom/yelp/android/util/StringUtils;->e(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2063
    const-string/jumbo v2, "biz_dimension"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2065
    :cond_1
    const-string/jumbo v2, "id"

    iget-object v3, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/YelpBusiness;->getBusiness()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2066
    sget-object v2, Lcom/yelp/android/analytics/iris/EventIri;->BusinessReservationOpen:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v2, v1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/util/Map;)V

    .line 2067
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    const-string/jumbo v3, "source_business_page"

    invoke-static {v1, v2, v0, v3}, Lcom/yelp/android/ui/activities/reservations/FindReservation;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2069
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->startActivity(Landroid/content/Intent;)V

    .line 2070
    return-void
.end method

.method private ab()V
    .locals 4

    .prologue
    .line 2102
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->getMovies()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/YelpBusiness;->getTheaterUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/businesspage/ActivityMovies;->a(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->startActivity(Landroid/content/Intent;)V

    .line 2104
    return-void
.end method

.method private ac()V
    .locals 3

    .prologue
    .line 2107
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BusinessMoreInfoClicked:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Lcom/yelp/android/analytics/iris/EventIri;)V

    .line 2108
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/yelp/android/ui/activities/businesspage/ActivityMoreInfoPage;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->startActivity(Landroid/content/Intent;)V

    .line 2109
    return-void
.end method

.method private ad()V
    .locals 2

    .prologue
    .line 2113
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;

    const/16 v1, 0x135

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->showDialog(I)V

    .line 2115
    return-void
.end method

.method private ae()V
    .locals 2

    .prologue
    .line 2118
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 2119
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/webrequests/dc;->e()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2120
    const v1, 0x7f070355

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x3ef

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2127
    :goto_0
    return-void

    .line 2124
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/ActivityCheckIn;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x3ee

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private af()V
    .locals 2

    .prologue
    .line 2131
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v0

    .line 2133
    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ac:Z

    if-nez v1, :cond_0

    .line 2134
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->getYelpRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2136
    :cond_0
    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ad:Z

    if-nez v1, :cond_1

    .line 2137
    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->c(Ljava/lang/String;)V

    .line 2139
    :cond_1
    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ae:Z

    if-nez v1, :cond_2

    .line 2140
    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->d(Ljava/lang/String;)V

    .line 2142
    :cond_2
    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->af:Z

    if-nez v1, :cond_3

    .line 2143
    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->e(Ljava/lang/String;)V

    .line 2145
    :cond_3
    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ag:Z

    if-nez v1, :cond_4

    .line 2146
    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->b(Ljava/lang/String;)V

    .line 2148
    :cond_4
    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ah:Z

    if-nez v1, :cond_5

    .line 2149
    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->f(Ljava/lang/String;)V

    .line 2151
    :cond_5
    return-void
.end method

.method private ag()V
    .locals 2

    .prologue
    .line 2159
    const-string/jumbo v0, "com.yelp.android.reservation.update"

    new-instance v1, Lcom/yelp/android/ui/activities/businesspage/an;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/businesspage/an;-><init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->b(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 2180
    const-string/jumbo v0, "com.yelp.android.tips.add"

    new-instance v1, Lcom/yelp/android/ui/activities/businesspage/ao;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/businesspage/ao;-><init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->b(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 2195
    const-string/jumbo v0, "com.yelp.android.tips.update"

    new-instance v1, Lcom/yelp/android/ui/activities/businesspage/ap;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/businesspage/ap;-><init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->b(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 2206
    const-string/jumbo v0, "com.yelp.android.tips.delete"

    new-instance v1, Lcom/yelp/android/ui/activities/businesspage/aq;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/businesspage/aq;-><init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->b(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 2220
    const-string/jumbo v0, "com.yelp.android.review.update"

    new-instance v1, Lcom/yelp/android/ui/activities/businesspage/ar;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/businesspage/ar;-><init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->b(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 2234
    const-string/jumbo v0, "com.yelp.android.review.state.update"

    new-instance v1, Lcom/yelp/android/ui/activities/businesspage/as;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/businesspage/as;-><init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->b(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 2281
    const-string/jumbo v0, "com.yelp.android.media.add"

    new-instance v1, Lcom/yelp/android/ui/activities/businesspage/at;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/businesspage/at;-><init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->b(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 2292
    const-string/jumbo v0, "com.yelp.android.media.update"

    new-instance v1, Lcom/yelp/android/ui/activities/businesspage/au;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/businesspage/au;-><init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->b(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 2302
    const-string/jumbo v0, "com.yelp.android.media.delete"

    new-instance v1, Lcom/yelp/android/ui/activities/businesspage/av;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/businesspage/av;-><init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->b(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 2311
    const-string/jumbo v0, "com.yelp.android.review.translate"

    new-instance v1, Lcom/yelp/android/ui/activities/businesspage/ax;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/businesspage/ax;-><init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->b(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 2331
    const-string/jumbo v0, "com.yelp.android.offer_redeemed"

    new-instance v1, Lcom/yelp/android/ui/activities/businesspage/ay;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/businesspage/ay;-><init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 2361
    return-void
.end method

.method private ah()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2631
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->G:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2632
    :goto_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->getReviewInsights()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 2634
    if-lez v1, :cond_1

    if-lez v0, :cond_1

    .line 2635
    const v0, 0x7f070537

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2640
    :goto_1
    return-object v0

    .line 2631
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->G:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    .line 2636
    :cond_1
    if-nez v0, :cond_2

    .line 2637
    const v0, 0x7f070538

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 2640
    :cond_2
    const v0, 0x7f070536

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private ai()Ljava/util/Locale;
    .locals 5

    .prologue
    .line 2705
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->T:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 2706
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aI:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    .line 2707
    const/4 v2, 0x0

    .line 2708
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->T:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/YelpBusinessReview;

    .line 2709
    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusinessReview;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2710
    const/4 v1, 0x1

    .line 2714
    :goto_0
    if-nez v1, :cond_0

    .line 2720
    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method private aj()V
    .locals 3

    .prologue
    .line 2762
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->i()Lcom/yelp/android/database/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/database/q;->f()Lcom/yelp/android/database/d;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0, v1}, Lcom/yelp/android/database/d;->a(Lcom/yelp/android/serializable/YelpBusiness;)V

    .line 2764
    new-instance v0, Lcom/yelp/android/util/ObjectDirtyEvent;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    const-string/jumbo v2, "com.yelp.android.business.update"

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/util/ObjectDirtyEvent;-><init>(Landroid/os/Parcelable;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/util/ObjectDirtyEvent;->a(Landroid/content/Context;)V

    .line 2766
    return-void
.end method

.method private ak()V
    .locals 3

    .prologue
    .line 2769
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->an:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2770
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->z:Lcom/yelp/android/ui/util/h;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/h;->clear()V

    .line 2771
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->A:Lcom/yelp/android/ui/util/h;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/h;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2772
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->A:Lcom/yelp/android/ui/util/h;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->an:Ljava/lang/String;

    new-instance v2, Lcom/yelp/android/ui/activities/businesspage/bb;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/businesspage/bb;-><init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V

    invoke-direct {p0, v1, v2}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/h;->b(Landroid/view/View;)V

    .line 2790
    :cond_0
    :goto_0
    return-void

    .line 2781
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getPhotosAndVideosCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2782
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->A:Lcom/yelp/android/ui/util/h;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/h;->clear()V

    .line 2783
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->z:Lcom/yelp/android/ui/util/h;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/h;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2784
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->z:Lcom/yelp/android/ui/util/h;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->x:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/h;->b(Landroid/view/View;)V

    goto :goto_0
.end method

.method private al()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 2793
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->y:Lcom/yelp/android/ui/util/bs;

    const v2, 0x7f0c000d

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/util/bs;->a(I)Lcom/yelp/android/ui/util/bv;

    move-result-object v2

    .line 2794
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ah()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/yelp/android/ui/util/bv;->a(Ljava/lang/CharSequence;)V

    .line 2796
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2798
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getReviewInsights()Ljava/util/List;

    move-result-object v0

    .line 2799
    if-eqz v0, :cond_0

    .line 2800
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2803
    :cond_0
    iget v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->F:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->G:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2804
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->G:Ljava/util/List;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2805
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->G:Ljava/util/List;

    if-nez v0, :cond_3

    move v0, v1

    .line 2806
    :goto_0
    iget v4, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->F:I

    sub-int v0, v4, v0

    .line 2807
    if-lez v0, :cond_2

    .line 2808
    invoke-virtual {v2}, Lcom/yelp/android/ui/util/bv;->a()Landroid/view/View;

    move-result-object v2

    .line 2809
    if-lez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    const v4, 0x7f0e0014

    const v5, 0x7f07039d

    invoke-direct {p0, v4, v5, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v1, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->b(Landroid/view/View;ZLjava/lang/String;)V

    .line 2815
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->D:Lcom/yelp/android/ui/activities/reviewpage/t;

    invoke-virtual {v0, v3}, Lcom/yelp/android/ui/activities/reviewpage/t;->a(Ljava/util/List;)V

    .line 2816
    return-void

    .line 2805
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->G:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method private am()V
    .locals 13

    .prologue
    const v11, 0x7f070539

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2819
    const/4 v0, 0x0

    .line 2820
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ak:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2821
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->N:Lcom/yelp/android/ui/activities/reviewpage/bi;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/bi;->clear()V

    .line 2822
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->P:Lcom/yelp/android/ui/util/h;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/h;->clear()V

    .line 2823
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->O:Lcom/yelp/android/ui/util/h;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/h;->clear()V

    .line 2824
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->Q:Lcom/yelp/android/ui/util/h;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/h;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2825
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->Q:Lcom/yelp/android/ui/util/h;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ak:Ljava/lang/String;

    new-instance v2, Lcom/yelp/android/ui/activities/businesspage/bc;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/businesspage/bc;-><init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V

    invoke-direct {p0, v1, v2}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/h;->b(Landroid/view/View;)V

    .line 2959
    :cond_0
    :goto_0
    return-void

    .line 2834
    :cond_1
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->getReviewCount()I

    move-result v1

    if-eqz v1, :cond_e

    .line 2835
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->P:Lcom/yelp/android/ui/util/h;

    invoke-virtual {v1}, Lcom/yelp/android/ui/util/h;->clear()V

    .line 2836
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->Q:Lcom/yelp/android/ui/util/h;

    invoke-virtual {v1}, Lcom/yelp/android/ui/util/h;->clear()V

    .line 2838
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->T:Ljava/util/List;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->T:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c

    .line 2840
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->g()Lcom/yelp/android/appdata/LocaleSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/LocaleSettings;->h()Ljava/util/Locale;

    move-result-object v2

    .line 2844
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aI:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 2845
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    .line 2849
    const v1, 0x7f0704be

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2850
    invoke-virtual {v0, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 2851
    new-array v1, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, v11, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 2856
    :goto_1
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ai:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ai:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v3, v1

    .line 2860
    :goto_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2861
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->T:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/YelpBusinessReview;

    .line 2862
    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusinessReview;->getLocale()Ljava/util/Locale;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 2863
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    move v3, v4

    .line 2856
    goto :goto_2

    .line 2870
    :cond_4
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aG:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v12, v6

    move-object v6, v2

    move-object v2, v12

    .line 2872
    :goto_4
    const/4 v0, 0x5

    if-ge v3, v0, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2873
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2874
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/ui/util/bv;

    .line 2875
    invoke-virtual {v1, v6}, Lcom/yelp/android/ui/util/bv;->a(Ljava/lang/CharSequence;)V

    .line 2876
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/reviewpage/bi;

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/activities/reviewpage/bi;->a(Ljava/util/List;)V

    .line 2879
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    .line 2880
    new-array v1, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, v11, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 2884
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2886
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->T:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_5
    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/YelpBusinessReview;

    .line 2887
    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusinessReview;->getLocale()Ljava/util/Locale;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 2888
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 2892
    :cond_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v3, v0

    .line 2893
    goto :goto_4

    .line 2896
    :cond_7
    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2897
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2900
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/ui/util/bv;

    const-string/jumbo v3, ""

    invoke-virtual {v1, v3}, Lcom/yelp/android/ui/util/bv;->a(Ljava/lang/CharSequence;)V

    .line 2901
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/reviewpage/bi;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/bi;->clear()V

    goto :goto_6

    .line 2905
    :cond_8
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aH:Lcom/yelp/android/ui/util/bv;

    invoke-virtual {v0, v6}, Lcom/yelp/android/ui/util/bv;->a(Ljava/lang/CharSequence;)V

    .line 2906
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->N:Lcom/yelp/android/ui/activities/reviewpage/bi;

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/activities/reviewpage/bi;->a(Ljava/util/List;)V

    .line 2911
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aq()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2912
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->y:Lcom/yelp/android/ui/util/bs;

    const v1, 0x7f070116

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/bs;->a(I)Lcom/yelp/android/ui/util/bv;

    move-result-object v1

    .line 2914
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aG:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/util/bv;

    .line 2915
    iget-object v2, v0, Lcom/yelp/android/ui/util/bv;->b:Ljava/lang/CharSequence;

    const-string/jumbo v3, ""

    if-ne v2, v3, :cond_9

    .line 2916
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aH:Lcom/yelp/android/ui/util/bv;

    .line 2921
    :cond_9
    iget-object v2, v0, Lcom/yelp/android/ui/util/bv;->b:Ljava/lang/CharSequence;

    const-string/jumbo v3, ""

    if-eq v2, v3, :cond_a

    .line 2922
    iget-object v2, v0, Lcom/yelp/android/ui/util/bv;->b:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/util/bv;->a(Ljava/lang/CharSequence;)V

    .line 2923
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/bv;->a(Ljava/lang/CharSequence;)V

    .line 2927
    :cond_a
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->y:Lcom/yelp/android/ui/util/bs;

    const v1, 0x7f07050d

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/bs;->a(I)Lcom/yelp/android/ui/util/bv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/bv;->a()Landroid/view/View;

    move-result-object v0

    .line 2928
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->O:Lcom/yelp/android/ui/util/h;

    invoke-virtual {v1}, Lcom/yelp/android/ui/util/h;->clear()V

    .line 2929
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->P()V

    move-object v1, v0

    .line 2945
    :goto_7
    if-eqz v1, :cond_0

    .line 2946
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->T:Ljava/util/List;

    if-nez v0, :cond_d

    move v0, v4

    .line 2947
    :goto_8
    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->getReviewCount()I

    move-result v2

    sub-int v0, v2, v0

    .line 2948
    if-lez v0, :cond_b

    move v4, v5

    :cond_b
    const v2, 0x7f0e0016

    const v3, 0x7f0703a6

    invoke-direct {p0, v2, v3, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v4, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->b(Landroid/view/View;ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 2930
    :cond_c
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->O:Lcom/yelp/android/ui/util/h;

    invoke-virtual {v1}, Lcom/yelp/android/ui/util/h;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2931
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->g()Lcom/yelp/android/appdata/LocaleSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/LocaleSettings;->h()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v1

    .line 2933
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f030069

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 2935
    const v2, 0x7f0c0209

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2936
    const v2, 0x7f0703f8

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2938
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->O:Lcom/yelp/android/ui/util/h;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/util/h;->b(Landroid/view/View;)V

    .line 2940
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->y:Lcom/yelp/android/ui/util/bs;

    const v1, 0x7f0c0010

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/bs;->a(I)Lcom/yelp/android/ui/util/bv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/bv;->a()Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    goto :goto_7

    .line 2946
    :cond_d
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->T:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_8

    .line 2952
    :cond_e
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->P:Lcom/yelp/android/ui/util/h;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/h;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2953
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->Q:Lcom/yelp/android/ui/util/h;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/h;->clear()V

    .line 2955
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->P:Lcom/yelp/android/ui/util/h;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->getReviewState()Lcom/yelp/android/ui/activities/reviews/ReviewState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/reviews/ReviewState;->getTextResourceForState()I

    move-result v1

    const v2, 0x7f02015f

    iget-object v3, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aM:Landroid/view/View$OnClickListener;

    invoke-direct {p0, v1, v2, v3}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/h;->b(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_f
    move-object v1, v0

    goto/16 :goto_7

    :cond_10
    move-object v2, v1

    goto/16 :goto_1
.end method

.method private an()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2962
    const/4 v0, 0x0

    .line 2963
    iget-object v3, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->al:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2964
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->H:Lcom/yelp/android/ui/activities/reviewpage/aw;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/aw;->clear()V

    .line 2965
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->J:Lcom/yelp/android/ui/util/h;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/h;->clear()V

    .line 2966
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->I:Lcom/yelp/android/ui/util/h;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/h;->clear()V

    .line 2967
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->K:Lcom/yelp/android/ui/util/h;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/h;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2968
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->K:Lcom/yelp/android/ui/util/h;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->al:Ljava/lang/String;

    new-instance v2, Lcom/yelp/android/ui/activities/businesspage/bd;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/businesspage/bd;-><init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V

    invoke-direct {p0, v1, v2}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/h;->b(Landroid/view/View;)V

    .line 3012
    :cond_0
    :goto_0
    return-void

    .line 2977
    :cond_1
    iget-object v3, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/YelpBusiness;->getTipCount()I

    move-result v3

    if-eqz v3, :cond_5

    .line 2978
    iget-object v3, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->J:Lcom/yelp/android/ui/util/h;

    invoke-virtual {v3}, Lcom/yelp/android/ui/util/h;->clear()V

    .line 2979
    iget-object v3, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->K:Lcom/yelp/android/ui/util/h;

    invoke-virtual {v3}, Lcom/yelp/android/ui/util/h;->clear()V

    .line 2981
    iget-object v3, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->M:Ljava/util/List;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->M:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 2982
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->H:Lcom/yelp/android/ui/activities/reviewpage/aw;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->M:Ljava/util/List;

    invoke-virtual {v0, v3}, Lcom/yelp/android/ui/activities/reviewpage/aw;->a(Ljava/util/List;)V

    .line 2983
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->y:Lcom/yelp/android/ui/util/bs;

    const v3, 0x7f07053e

    invoke-virtual {v0, v3}, Lcom/yelp/android/ui/util/bs;->a(I)Lcom/yelp/android/ui/util/bv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/bv;->a()Landroid/view/View;

    move-result-object v0

    .line 2985
    iget-object v3, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->I:Lcom/yelp/android/ui/util/h;

    invoke-virtual {v3}, Lcom/yelp/android/ui/util/h;->clear()V

    move-object v3, v0

    .line 3000
    :goto_1
    if-eqz v3, :cond_0

    .line 3001
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->M:Ljava/util/List;

    if-nez v0, :cond_4

    move v0, v1

    .line 3002
    :goto_2
    iget-object v4, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v4}, Lcom/yelp/android/serializable/YelpBusiness;->getTipCount()I

    move-result v4

    sub-int v0, v4, v0

    .line 3003
    if-lez v0, :cond_2

    move v1, v2

    :cond_2
    const v2, 0x7f0e0018

    const v4, 0x7f0703ac

    invoke-direct {p0, v2, v4, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v1, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->b(Landroid/view/View;ZLjava/lang/String;)V

    goto :goto_0

    .line 2986
    :cond_3
    iget-object v3, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->I:Lcom/yelp/android/ui/util/h;

    invoke-virtual {v3}, Lcom/yelp/android/ui/util/h;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2987
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->g()Lcom/yelp/android/appdata/LocaleSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/LocaleSettings;->h()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v3

    .line 2989
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v4, 0x7f030069

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v5

    invoke-virtual {v0, v4, v5, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 2991
    const v4, 0x7f0c0209

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2992
    const v4, 0x7f070401

    new-array v5, v2, [Ljava/lang/Object;

    aput-object v3, v5, v1

    invoke-virtual {p0, v4, v5}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2993
    iget-object v3, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->I:Lcom/yelp/android/ui/util/h;

    invoke-virtual {v3, v0}, Lcom/yelp/android/ui/util/h;->b(Landroid/view/View;)V

    .line 2995
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->y:Lcom/yelp/android/ui/util/bs;

    const v3, 0x7f0c0011

    invoke-virtual {v0, v3}, Lcom/yelp/android/ui/util/bs;->a(I)Lcom/yelp/android/ui/util/bv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/bv;->a()Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    goto :goto_1

    .line 3001
    :cond_4
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->M:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_2

    .line 3007
    :cond_5
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->J:Lcom/yelp/android/ui/util/h;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/h;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3008
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->K:Lcom/yelp/android/ui/util/h;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/h;->clear()V

    .line 3009
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->J:Lcom/yelp/android/ui/util/h;

    const v1, 0x7f07009d

    const v2, 0x7f020166

    iget-object v3, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aN:Lcom/yelp/android/ui/activities/businesspage/cc;

    invoke-direct {p0, v1, v2, v3}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/h;->b(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_6
    move-object v3, v0

    goto/16 :goto_1
.end method

.method private ao()V
    .locals 4

    .prologue
    .line 3015
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->am:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3016
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->V:Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter;->clear()V

    .line 3017
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->W:Lcom/yelp/android/ui/util/h;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/h;->clear()V

    .line 3018
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->X:Lcom/yelp/android/ui/util/h;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/h;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3019
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->X:Lcom/yelp/android/ui/util/h;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->am:Ljava/lang/String;

    new-instance v2, Lcom/yelp/android/ui/activities/businesspage/be;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/businesspage/be;-><init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V

    invoke-direct {p0, v1, v2}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/h;->b(Landroid/view/View;)V

    .line 3040
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    .line 3041
    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->g()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3042
    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->f()V

    .line 3043
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aa:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->addFooterView(Landroid/view/View;)V

    .line 3045
    :cond_1
    return-void

    .line 3028
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->Z:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->Z:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3029
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->X:Lcom/yelp/android/ui/util/h;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/h;->clear()V

    .line 3030
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->W:Lcom/yelp/android/ui/util/h;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/h;->clear()V

    .line 3031
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->V:Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->Z:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter;->a(Ljava/util/List;)V

    goto :goto_0

    .line 3032
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->V:Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3033
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->X:Lcom/yelp/android/ui/util/h;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/h;->clear()V

    .line 3034
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->W:Lcom/yelp/android/ui/util/h;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/h;->clear()V

    .line 3035
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->W:Lcom/yelp/android/ui/util/h;

    const v1, 0x7f070075

    const v2, 0x7f02015d

    iget-object v3, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aO:Lcom/yelp/android/ui/activities/businesspage/cc;

    invoke-direct {p0, v1, v2, v3}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/h;->b(Landroid/view/View;)V

    goto :goto_0
.end method

.method private ap()V
    .locals 3

    .prologue
    .line 3055
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ac:Z

    if-eqz v0, :cond_2

    .line 3056
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->p:Lcom/yelp/android/ui/activities/reviewpage/ab;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->r:Ljava/util/List;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Lcom/yelp/android/ui/activities/reviewpage/ab;Ljava/util/List;Z)V

    .line 3057
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ad:Z

    if-eqz v0, :cond_1

    .line 3058
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ak()V

    .line 3059
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ae:Z

    if-eqz v0, :cond_1

    .line 3060
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->al()V

    .line 3061
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->af:Z

    if-eqz v0, :cond_1

    .line 3062
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->am()V

    .line 3063
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ag:Z

    if-eqz v0, :cond_0

    .line 3064
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->an()V

    .line 3065
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ah:Z

    if-eqz v0, :cond_0

    .line 3066
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ao()V

    .line 3067
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->q:Lcom/yelp/android/ui/activities/reviewpage/ab;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->s:Ljava/util/List;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Lcom/yelp/android/ui/activities/reviewpage/ab;Ljava/util/List;Z)V

    .line 3070
    :cond_0
    iget v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->U:I

    if-lez v0, :cond_1

    .line 3071
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->O()V

    .line 3076
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->y:Lcom/yelp/android/ui/util/bs;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/bs;->notifyDataSetChanged()V

    .line 3078
    :cond_2
    return-void
.end method

.method private aq()Z
    .locals 12

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3222
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->f()Lcom/yelp/android/appdata/i;

    move-result-object v3

    .line 3223
    invoke-virtual {v3}, Lcom/yelp/android/appdata/i;->G()Z

    move-result v4

    .line 3225
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v3}, Lcom/yelp/android/appdata/i;->J()J

    move-result-wide v8

    const-wide v10, 0x1cf7c5800L

    add-long/2addr v8, v10

    cmp-long v0, v6, v8

    if-lez v0, :cond_0

    move v0, v1

    .line 3228
    :goto_0
    invoke-virtual {v3}, Lcom/yelp/android/appdata/i;->I()I

    move-result v3

    const/16 v5, 0x3c

    if-le v3, v5, :cond_1

    move v3, v1

    .line 3229
    :goto_1
    if-nez v4, :cond_2

    if-nez v0, :cond_2

    if-nez v3, :cond_2

    :goto_2
    return v1

    :cond_0
    move v0, v2

    .line 3225
    goto :goto_0

    :cond_1
    move v3, v2

    .line 3228
    goto :goto_1

    :cond_2
    move v1, v2

    .line 3229
    goto :goto_2
.end method

.method private b(Lcom/yelp/android/ui/activities/reviews/ReviewSource;)Lcom/yelp/android/ui/activities/reviews/ReviewSource;
    .locals 2

    .prologue
    .line 2391
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getReviewState()Lcom/yelp/android/ui/activities/reviews/ReviewState;

    move-result-object v0

    .line 2392
    sget-object v1, Lcom/yelp/android/ui/activities/reviews/ReviewState;->FINISHED_RECENTLY:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/reviews/ReviewState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2393
    sget-object p1, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->BizPageReviewsListEdit:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    .line 2397
    :cond_0
    :goto_0
    return-object p1

    .line 2394
    :cond_1
    sget-object v1, Lcom/yelp/android/ui/activities/reviews/ReviewState;->FINISHED_NOT_RECENTLY:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/reviews/ReviewState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2395
    sget-object p1, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->BizPageReviewsListUpdate:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    goto :goto_0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->av:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->r:Ljava/util/List;

    return-object p1
.end method

.method private b(Landroid/view/View;ZLjava/lang/String;)V
    .locals 3

    .prologue
    .line 911
    const v0, 0x7f0c0205

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 912
    invoke-virtual {v0, p3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 913
    invoke-virtual {v0, p2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 914
    if-eqz p2, :cond_0

    .line 915
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 919
    :goto_0
    return-void

    .line 917
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0072

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0
.end method

.method private b(Lcom/yelp/android/analytics/iris/EventIri;)V
    .locals 2

    .prologue
    .line 1811
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Landroid/content/Context;Lcom/yelp/android/analytics/iris/EventIri;Ljava/lang/String;)V

    .line 1812
    return-void
.end method

.method private b(Lcom/yelp/android/analytics/iris/EventIri;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1823
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Landroid/content/Context;Lcom/yelp/android/analytics/iris/EventIri;Ljava/lang/String;)V

    .line 1824
    return-void
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Lcom/yelp/android/analytics/iris/EventIri;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 226
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->b(Lcom/yelp/android/analytics/iris/EventIri;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 226
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 2666
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->L:Lcom/yelp/android/appdata/webrequests/cw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->L:Lcom/yelp/android/appdata/webrequests/cw;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/cw;->isFetching()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2673
    :goto_0
    return-void

    .line 2670
    :cond_0
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->g()Lcom/yelp/android/appdata/LocaleSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/LocaleSettings;->h()Ljava/util/Locale;

    move-result-object v4

    .line 2671
    new-instance v0, Lcom/yelp/android/appdata/webrequests/cw;

    const/4 v3, 0x5

    iget-object v6, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aU:Lcom/yelp/android/appdata/webrequests/m;

    move-object v1, p1

    move v5, v2

    invoke-direct/range {v0 .. v6}, Lcom/yelp/android/appdata/webrequests/cw;-><init>(Ljava/lang/String;IILjava/util/Locale;ZLcom/yelp/android/appdata/webrequests/m;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->L:Lcom/yelp/android/appdata/webrequests/cw;

    .line 2672
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->L:Lcom/yelp/android/appdata/webrequests/cw;

    new-array v1, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/cw;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    goto :goto_0
.end method

.method private b(Z)V
    .locals 9

    .prologue
    .line 2077
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getPlatformAction()Lcom/yelp/android/serializable/PlatformAction;

    move-result-object v2

    .line 2078
    if-eqz v2, :cond_3

    .line 2079
    const/4 v7, 0x0

    .line 2080
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ar:Lcom/yelp/android/serializable/BusinessSearchResult;

    if-eqz v0, :cond_0

    .line 2081
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ar:Lcom/yelp/android/serializable/BusinessSearchResult;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/BusinessSearchResult;->getBizDimension()Ljava/lang/String;

    move-result-object v7

    .line 2083
    :cond_0
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 2084
    invoke-static {v7}, Lcom/yelp/android/util/StringUtils;->e(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2085
    const-string/jumbo v1, "biz_dimension"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2087
    :cond_1
    if-eqz p1, :cond_2

    .line 2088
    const-string/jumbo v1, "source"

    const-string/jumbo v3, "promoted"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2090
    :cond_2
    const-string/jumbo v1, "id"

    iget-object v3, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2091
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->BusinessPlatformOpen:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v1, v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/util/Map;)V

    .line 2092
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v2}, Lcom/yelp/android/serializable/PlatformAction;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2}, Lcom/yelp/android/serializable/PlatformAction;->getTitle()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/yelp/android/analytics/iris/ViewIri;->OpenURL:Lcom/yelp/android/analytics/iris/ViewIri;

    sget-object v4, Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;->EVENTS:Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;

    sget-object v5, Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;->FINISH_ON_BACK:Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;

    invoke-static {v4, v5}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v4

    const v5, 0x7f0706c4

    const/4 v6, 0x1

    const-string/jumbo v8, "source_business_page"

    invoke-static/range {v0 .. v8}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->getWebIntent(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Lcom/yelp/android/analytics/iris/ViewIri;Ljava/util/EnumSet;IZLjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2097
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->startActivity(Landroid/content/Intent;)V

    .line 2099
    :cond_3
    return-void
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Z)Z
    .locals 0

    .prologue
    .line 226
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->af:Z

    return p1
.end method

.method private c(Lcom/yelp/android/analytics/iris/EventIri;Ljava/lang/String;)Lcom/yelp/android/analytics/h;
    .locals 3

    .prologue
    .line 1849
    new-instance v0, Lcom/yelp/android/analytics/h;

    invoke-direct {v0}, Lcom/yelp/android/analytics/h;-><init>()V

    invoke-virtual {v0, p1}, Lcom/yelp/android/analytics/h;->a(Lcom/yelp/android/analytics/iris/b;)Lcom/yelp/android/analytics/h;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->getYelpRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/analytics/h;->a(Ljava/lang/String;)Lcom/yelp/android/analytics/h;

    move-result-object v0

    const-string/jumbo v1, "id"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/analytics/h;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/analytics/h;

    move-result-object v0

    .line 1854
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1855
    const-string/jumbo v1, "source"

    invoke-virtual {v0, v1, p2}, Lcom/yelp/android/analytics/h;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/analytics/h;

    .line 1858
    :cond_0
    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Lcom/yelp/android/serializable/YelpBusiness;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->s:Ljava/util/List;

    return-object p1
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 226
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->e(Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2676
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->B:Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->B:Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->isFetching()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2681
    :goto_0
    return-void

    .line 2679
    :cond_0
    new-instance v0, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aR:Lcom/yelp/android/appdata/webrequests/m;

    invoke-direct {v0, p1, v3, v1, v2}, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;-><init>(Ljava/lang/String;IILcom/yelp/android/appdata/webrequests/m;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->B:Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;

    .line 2680
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->B:Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    goto :goto_0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Z)Z
    .locals 0

    .prologue
    .line 226
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ah:Z

    return p1
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->an:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Ljava/util/List;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->G:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->M:Ljava/util/List;

    return-object p1
.end method

.method private d(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 2684
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->E:Lcom/yelp/android/appdata/webrequests/eu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->E:Lcom/yelp/android/appdata/webrequests/eu;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/eu;->isFetching()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2691
    :goto_0
    return-void

    .line 2688
    :cond_0
    new-instance v0, Lcom/yelp/android/appdata/webrequests/eu;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aJ:Lcom/yelp/android/appdata/webrequests/SearchRequest;

    new-instance v5, Lcom/yelp/android/ui/activities/businesspage/cb;

    invoke-direct {v5, p0}, Lcom/yelp/android/ui/activities/businesspage/cb;-><init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/appdata/webrequests/eu;-><init>(Ljava/lang/String;IILcom/yelp/android/appdata/webrequests/SearchRequest;Lcom/yelp/android/appdata/webrequests/m;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->E:Lcom/yelp/android/appdata/webrequests/eu;

    .line 2690
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->E:Lcom/yelp/android/appdata/webrequests/eu;

    new-array v1, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/eu;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    goto :goto_0
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Z)Z
    .locals 0

    .prologue
    .line 226
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ae:Z

    return p1
.end method

.method static synthetic e(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Lcom/yelp/android/appdata/webrequests/SearchRequest;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aJ:Lcom/yelp/android/appdata/webrequests/SearchRequest;

    return-object v0
.end method

.method static synthetic e(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->T:Ljava/util/List;

    return-object p1
.end method

.method private e(I)V
    .locals 2

    .prologue
    .line 3081
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ax:Lcom/yelp/android/ui/dialogs/bn;

    if-nez v0, :cond_0

    .line 3082
    new-instance v0, Lcom/yelp/android/ui/dialogs/bn;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yelp/android/ui/dialogs/bn;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ax:Lcom/yelp/android/ui/dialogs/bn;

    .line 3083
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ax:Lcom/yelp/android/ui/dialogs/bn;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/bn;->setCancelable(Z)V

    .line 3085
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ax:Lcom/yelp/android/ui/dialogs/bn;

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/bn;->setMessage(Ljava/lang/CharSequence;)V

    .line 3086
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ax:Lcom/yelp/android/ui/dialogs/bn;

    invoke-virtual {v0}, Lcom/yelp/android/ui/dialogs/bn;->show()V

    .line 3087
    return-void
.end method

.method static synthetic e(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 226
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->c(Ljava/lang/String;)V

    return-void
.end method

.method private e(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 2724
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->S:Lcom/yelp/android/appdata/webrequests/ey;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->S:Lcom/yelp/android/appdata/webrequests/ey;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/ey;->isFetching()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2745
    :goto_0
    return-void

    .line 2728
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->T:Ljava/util/List;

    if-nez v0, :cond_1

    move v1, v2

    .line 2729
    :goto_1
    const/4 v0, 0x5

    if-lt v1, v0, :cond_2

    .line 2730
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->af:Z

    .line 2731
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ap()V

    goto :goto_0

    .line 2728
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->T:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    goto :goto_1

    .line 2736
    :cond_2
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->g()Lcom/yelp/android/appdata/LocaleSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/LocaleSettings;->h()Ljava/util/Locale;

    move-result-object v0

    .line 2737
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ai()Ljava/util/Locale;

    move-result-object v5

    .line 2738
    if-eqz v5, :cond_3

    .line 2742
    :goto_2
    new-instance v0, Lcom/yelp/android/appdata/webrequests/ey;

    rsub-int/lit8 v3, v1, 0x5

    iget-object v4, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->R:Ljava/lang/String;

    iget-object v6, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aV:Lcom/yelp/android/appdata/webrequests/m;

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/yelp/android/appdata/webrequests/ey;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/util/Locale;Lcom/yelp/android/appdata/webrequests/m;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->S:Lcom/yelp/android/appdata/webrequests/ey;

    .line 2744
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->S:Lcom/yelp/android/appdata/webrequests/ey;

    new-array v1, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/ey;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    goto :goto_0

    :cond_3
    move-object v5, v0

    goto :goto_2
.end method

.method static synthetic e(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Z)Z
    .locals 0

    .prologue
    .line 226
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ad:Z

    return p1
.end method

.method static synthetic f(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ak:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic f(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->L()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private f(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2748
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->Y:Lcom/yelp/android/appdata/webrequests/ab;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->Y:Lcom/yelp/android/appdata/webrequests/ab;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/ab;->isFetching()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2755
    :goto_0
    return-void

    .line 2752
    :cond_0
    new-instance v0, Lcom/yelp/android/appdata/webrequests/ab;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aP:Lcom/yelp/android/appdata/webrequests/m;

    invoke-direct {v0, p1, v3, v1, v2}, Lcom/yelp/android/appdata/webrequests/ab;-><init>(Ljava/lang/String;IILcom/yelp/android/appdata/webrequests/m;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->Y:Lcom/yelp/android/appdata/webrequests/ab;

    .line 2754
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->Y:Lcom/yelp/android/appdata/webrequests/ab;

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/ab;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    goto :goto_0
.end method

.method static synthetic f(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Z)Z
    .locals 0

    .prologue
    .line 226
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ac:Z

    return p1
.end method

.method static synthetic g(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->al:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic g(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Ljava/util/List;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->T:Ljava/util/List;

    return-object v0
.end method

.method private g(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 3233
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 3234
    const-string/jumbo v1, "id"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3235
    const-string/jumbo v1, "source"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3236
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->BusinessReviewWrite:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v1, v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/util/Map;)V

    .line 3237
    return-void
.end method

.method static synthetic h(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Lcom/yelp/android/ui/activities/reviewpage/aw;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->H:Lcom/yelp/android/ui/activities/reviewpage/aw;

    return-object v0
.end method

.method static synthetic h(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->am:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic i(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Lcom/yelp/android/ui/util/h;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->J:Lcom/yelp/android/ui/util/h;

    return-object v0
.end method

.method static synthetic i(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 226
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->f(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic j(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V
    .locals 0

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aj()V

    return-void
.end method

.method static synthetic k(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Ljava/util/LinkedHashMap;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aG:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic l(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Lcom/yelp/android/ui/activities/reviewpage/bi;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->N:Lcom/yelp/android/ui/activities/reviewpage/bi;

    return-object v0
.end method

.method static synthetic m(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Lcom/yelp/android/ui/panels/businesspage/b;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->c:Lcom/yelp/android/ui/panels/businesspage/b;

    return-object v0
.end method

.method static synthetic n(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Landroid/view/View;

    return-object v0
.end method

.method static synthetic o(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Ljava/util/List;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->M:Ljava/util/List;

    return-object v0
.end method

.method static synthetic p(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Lcom/yelp/android/ui/util/ax;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->C:Lcom/yelp/android/ui/util/ax;

    return-object v0
.end method

.method static synthetic q(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V
    .locals 0

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ap()V

    return-void
.end method

.method static synthetic r(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->V:Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter;

    return-object v0
.end method

.method static synthetic s(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Lcom/yelp/android/ui/util/h;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aC:Lcom/yelp/android/ui/util/h;

    return-object v0
.end method

.method static synthetic t(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aB:Landroid/view/View;

    return-object v0
.end method

.method static synthetic u(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Lcom/google/android/gms/ads/doubleclick/PublisherAdView;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aA:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    return-object v0
.end method

.method private u()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x64

    const/4 v3, 0x0

    .line 852
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 855
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->av:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->av:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->av:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 857
    new-instance v1, Lcom/yelp/android/ui/activities/businesspage/br;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/businesspage/br;-><init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 875
    :cond_0
    :goto_0
    return-void

    .line 864
    :cond_1
    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aw:Z

    if-eqz v1, :cond_0

    .line 865
    iput-boolean v3, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aw:Z

    .line 866
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->getCheckInOffer()Lcom/yelp/android/serializable/Offer;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-static {v1, v2, v3}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->a(Lcom/yelp/android/serializable/Offer;Lcom/yelp/android/serializable/YelpBusiness;Z)Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;

    move-result-object v1

    .line 868
    new-instance v2, Lcom/yelp/android/ui/activities/businesspage/bs;

    invoke-direct {v2, p0, v1}, Lcom/yelp/android/ui/activities/businesspage/bs;-><init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;)V

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method static synthetic v(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Lcom/yelp/android/ui/util/s;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->k:Lcom/yelp/android/ui/util/s;

    return-object v0
.end method

.method private v()V
    .locals 3

    .prologue
    .line 955
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->c:Lcom/yelp/android/ui/panels/businesspage/b;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/panels/businesspage/b;->a(Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/ui/util/PullDownListView;)V

    .line 957
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->F()V

    .line 958
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ap:Z

    if-nez v0, :cond_0

    .line 959
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->H()V

    .line 961
    :cond_0
    const-class v0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$MessageAlertBoxNotification;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Ljava/util/EnumSet;)V

    .line 962
    return-void
.end method

.method static synthetic w(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Lcom/yelp/android/ui/activities/reviewpage/t;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->D:Lcom/yelp/android/ui/activities/reviewpage/t;

    return-object v0
.end method

.method static synthetic x(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Lcom/yelp/android/ui/dialogs/bn;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ax:Lcom/yelp/android/ui/dialogs/bn;

    return-object v0
.end method

.method static synthetic y(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Ljava/util/List;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->r:Ljava/util/List;

    return-object v0
.end method

.method static synthetic z(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Ljava/util/List;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->s:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public a(II)V
    .locals 1

    .prologue
    .line 1742
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    .line 1743
    invoke-virtual {p0, v0, p1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1744
    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 1862
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BusinessPhotos:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Lcom/yelp/android/analytics/iris/EventIri;)V

    .line 1863
    const-string/jumbo v0, "extra.media_index"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(I)V

    .line 1864
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/ReviewHighlight;)V
    .locals 2

    .prologue
    .line 2618
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-static {v0, v1, p1}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/serializable/ReviewHighlight;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->startActivity(Landroid/content/Intent;)V

    .line 2620
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/Tip;)V
    .locals 3

    .prologue
    .line 2569
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/yelp/android/ui/activities/tips/WriteTip;->a(Landroid/content/Context;Lcom/yelp/android/serializable/Tip;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2570
    const-string/jumbo v1, "changed entry id"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Tip;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2571
    const/16 v1, 0x421

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2572
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/Tip;Landroid/widget/Checkable;)V
    .locals 4

    .prologue
    .line 2610
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/yelp/android/ui/activities/compliments/SendCompliment;->a(Landroid/content/Context;Lcom/yelp/android/serializable/Complimentable;)Landroid/content/Intent;

    move-result-object v0

    .line 2611
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f070637

    const v3, 0x7f070356

    invoke-static {v1, v2, v3, v0}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/content/Context;IILandroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->startActivity(Landroid/content/Intent;)V

    .line 2614
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/Tip;Lcom/yelp/android/ui/widgets/SpannedImageButton;)V
    .locals 3

    .prologue
    .line 2582
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    .line 2583
    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2584
    new-instance v0, Lcom/yelp/android/appdata/webrequests/fq;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Tip;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/yelp/android/ui/widgets/SpannedImageButton;->isChecked()Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/appdata/webrequests/fq;-><init>(Ljava/lang/String;Z)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/fq;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 2585
    invoke-virtual {p2}, Lcom/yelp/android/ui/widgets/SpannedImageButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2586
    invoke-virtual {p1}, Lcom/yelp/android/serializable/Tip;->getFeedback()Lcom/yelp/android/serializable/Feedback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Feedback;->addPositiveFeedback()V

    .line 2590
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->H:Lcom/yelp/android/ui/activities/reviewpage/aw;

    .line 2591
    if-eqz v0, :cond_0

    .line 2592
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/aw;->notifyDataSetChanged()V

    .line 2606
    :cond_0
    :goto_1
    return-void

    .line 2588
    :cond_1
    invoke-virtual {p1}, Lcom/yelp/android/serializable/Tip;->getFeedback()Lcom/yelp/android/serializable/Feedback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Feedback;->removePositiveFeedback()V

    goto :goto_0

    .line 2595
    :cond_2
    invoke-virtual {p2}, Lcom/yelp/android/ui/widgets/SpannedImageButton;->toggle()V

    .line 2599
    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f070639

    .line 2603
    :goto_2
    invoke-virtual {p2}, Lcom/yelp/android/ui/widgets/SpannedImageButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p2}, Lcom/yelp/android/ui/widgets/SpannedImageButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 2599
    :cond_3
    const v0, 0x7f070361

    goto :goto_2
.end method

.method public a(Lcom/yelp/android/serializable/YelpBusiness;)V
    .locals 2

    .prologue
    .line 1660
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;

    .line 1661
    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    .line 1662
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->updateOptionsMenu()V

    .line 1663
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aj()V

    .line 1664
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->a(Lcom/yelp/android/serializable/YelpBusiness;)V

    .line 1665
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->Q()V

    .line 1666
    return-void
.end method

.method public a(Lcom/yelp/android/ui/activities/reviews/ReviewSource;)V
    .locals 2

    .prologue
    .line 2401
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-static {v0, v1, p1}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/ui/activities/reviews/ReviewSource;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->startActivity(Landroid/content/Intent;)V

    .line 2402
    return-void
.end method

.method public a(Ljava/io/File;)V
    .locals 3

    .prologue
    .line 2561
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;

    .line 2562
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->hideLoadingDialog()V

    .line 2563
    const v1, 0x7f07009a

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const v2, 0x7f07024c

    invoke-virtual {p0, v2}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yelp/android/ui/util/cp;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 2565
    return-void
.end method

.method public a(Landroid/graphics/Bitmap;Ljava/io/File;Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;)Z
    .locals 3

    .prologue
    .line 2542
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/support/YelpActivity;

    .line 2543
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->hideLoadingDialog()V

    .line 2546
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/yelp/android/ui/activities/businesspage/ba;

    invoke-direct {v2, p0, v0}, Lcom/yelp/android/ui/activities/businesspage/ba;-><init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Lcom/yelp/android/ui/activities/support/YelpActivity;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2556
    const/4 v0, 0x1

    return v0
.end method

.method public b(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 1867
    sget-object v0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$MessageAlertBoxNotification;->MESSAGE_THE_BUSINESS_SUCCESS_NOTIFICATION:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$MessageAlertBoxNotification;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$MessageAlertBoxNotification;->setData(Landroid/content/Intent;)Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$MessageAlertBoxNotification;

    move-result-object v0

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Ljava/util/EnumSet;)V

    .line 1870
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->b(Z)V

    .line 1871
    return-void
.end method

.method public b(Lcom/yelp/android/serializable/Tip;)V
    .locals 2

    .prologue
    .line 2576
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Tip;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2577
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->startActivity(Landroid/content/Intent;)V

    .line 2578
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 1875
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BusinessPullOpenPhoto:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Lcom/yelp/android/analytics/iris/EventIri;)V

    .line 1878
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getBizOwnerVideo()Lcom/yelp/android/serializable/Video;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getPhotoCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1879
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(I)V

    .line 1883
    :goto_0
    return-void

    .line 1881
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(I)V

    goto :goto_0
.end method

.method public c(Lcom/yelp/android/serializable/Tip;)V
    .locals 3

    .prologue
    .line 2624
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, p1, v1, v2}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->a(Landroid/content/Context;Lcom/yelp/android/serializable/Tip;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 2626
    const-string/jumbo v1, "changed entry id"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Tip;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2627
    const/16 v1, 0x421

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2628
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 1906
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/addphoto/PhotoTeaser;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x40d

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1908
    return-void
.end method

.method public e()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1913
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->au:Lcom/yelp/android/appdata/webrequests/dc;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1914
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->au:Lcom/yelp/android/appdata/webrequests/dc;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1916
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->isBookmarked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1918
    new-instance v0, Lcom/yelp/android/appdata/webrequests/eg;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aW:Lcom/yelp/android/av/i;

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/appdata/webrequests/eg;-><init>(Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/av/i;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ay:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 1919
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BusinessRemoveBookmark:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Lcom/yelp/android/analytics/iris/EventIri;)V

    .line 1921
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aK:Lcom/yelp/android/ui/activities/businesspage/bv;

    if-eqz v0, :cond_0

    .line 1922
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aK:Lcom/yelp/android/ui/activities/businesspage/bv;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/activities/businesspage/bv;->a(Z)V

    .line 1935
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->S()V

    .line 1936
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ay:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 1955
    :goto_1
    return-void

    .line 1927
    :cond_1
    new-instance v0, Lcom/yelp/android/appdata/webrequests/d;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aS:Lcom/yelp/android/appdata/webrequests/m;

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/appdata/webrequests/d;-><init>(Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/appdata/webrequests/m;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ay:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 1928
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BusinessAddBookmark:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Lcom/yelp/android/analytics/iris/EventIri;)V

    .line 1929
    const-string/jumbo v0, "qqzv6y"

    invoke-static {v0}, Lcom/adjust/sdk/e;->a(Ljava/lang/String;)V

    .line 1931
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aK:Lcom/yelp/android/ui/activities/businesspage/bv;

    if-eqz v0, :cond_0

    .line 1932
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aK:Lcom/yelp/android/ui/activities/businesspage/bv;

    invoke-interface {v0, v3}, Lcom/yelp/android/ui/activities/businesspage/bv;->a(Z)V

    goto :goto_0

    .line 1939
    :cond_2
    const/16 v0, 0x12d

    .line 1940
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->isBookmarked()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1941
    const/16 v0, 0x12e

    move v1, v0

    .line 1943
    :goto_2
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->showDialog(I)V

    .line 1944
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->c:Lcom/yelp/android/ui/panels/businesspage/b;

    invoke-virtual {v0, v3}, Lcom/yelp/android/ui/panels/businesspage/b;->setBookmarkChecked(Z)V

    goto :goto_1

    .line 1948
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->isBookmarked()Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x3ec

    :goto_3
    const v1, 0x7f070354

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(II)V

    .line 1953
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->c:Lcom/yelp/android/ui/panels/businesspage/b;

    invoke-virtual {v0, v3}, Lcom/yelp/android/ui/panels/businesspage/b;->setBookmarkChecked(Z)V

    goto :goto_1

    .line 1948
    :cond_4
    const/16 v0, 0x3eb

    goto :goto_3

    :cond_5
    move v1, v0

    goto :goto_2
.end method

.method public f()V
    .locals 2

    .prologue
    .line 1958
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->startActivity(Landroid/content/Intent;)V

    .line 1959
    return-void
.end method

.method g()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1962
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BusinessRedeemDeal:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Lcom/yelp/android/analytics/iris/EventIri;)V

    .line 1963
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getUserDeals()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpDeal;

    .line 1965
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->j:Lcom/yelp/android/appdata/webrequests/gn;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->j:Lcom/yelp/android/appdata/webrequests/gn;

    invoke-virtual {v1}, Lcom/yelp/android/appdata/webrequests/gn;->isFetching()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1966
    :cond_0
    new-instance v1, Lcom/yelp/android/appdata/webrequests/gn;

    new-instance v2, Lcom/yelp/android/ui/activities/businesspage/ca;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpDeal;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, p0, v0}, Lcom/yelp/android/ui/activities/businesspage/ca;-><init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/yelp/android/appdata/webrequests/gn;-><init>(Lcom/yelp/android/appdata/webrequests/m;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->j:Lcom/yelp/android/appdata/webrequests/gn;

    .line 1968
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->j:Lcom/yelp/android/appdata/webrequests/gn;

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/gn;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 1969
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->j:Lcom/yelp/android/appdata/webrequests/gn;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->showLoadingDialog(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 1971
    :cond_1
    return-void
.end method

.method public h()V
    .locals 2

    .prologue
    .line 2365
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->au:Lcom/yelp/android/appdata/webrequests/dc;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2368
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->au:Lcom/yelp/android/appdata/webrequests/dc;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2369
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/tips/WriteTip;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x41f

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2380
    :goto_0
    return-void

    .line 2372
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;

    const/16 v1, 0x12f

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->showDialog(I)V

    goto :goto_0

    .line 2377
    :cond_1
    const/16 v0, 0x420

    const v1, 0x7f070351

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(II)V

    goto :goto_0
.end method

.method public h_()V
    .locals 1

    .prologue
    .line 2530
    sget-object v0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$MessageAlertBoxNotification;->TIP_NOTIFICATION:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$MessageAlertBoxNotification;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Ljava/util/EnumSet;)V

    .line 2531
    return-void
.end method

.method public i()V
    .locals 2

    .prologue
    .line 2406
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->au:Lcom/yelp/android/appdata/webrequests/dc;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2409
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->au:Lcom/yelp/android/appdata/webrequests/dc;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2410
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->d()V

    .line 2421
    :goto_0
    return-void

    .line 2412
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->showDialog(I)V

    goto :goto_0

    .line 2417
    :cond_1
    const/16 v0, 0x40e

    const v1, 0x7f070352

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(II)V

    goto :goto_0
.end method

.method public k()V
    .locals 2

    .prologue
    .line 2534
    sget-object v0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$MessageAlertBoxNotification;->VIDEO_UPLOAD_NOTIFICATION:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$MessageAlertBoxNotification;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Ljava/util/EnumSet;)V

    .line 2537
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->b(Z)V

    .line 2538
    return-void
.end method

.method public l()V
    .locals 2

    .prologue
    .line 3196
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->b:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->b:Landroid/view/MenuItem;

    invoke-static {v0}, Landroid/support/v4/view/as;->a(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3197
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->b:Landroid/view/MenuItem;

    invoke-static {v0}, Landroid/support/v4/view/as;->a(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 3198
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->b:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v4/view/as;->a(Landroid/view/MenuItem;Landroid/view/View;)Landroid/view/MenuItem;

    .line 3199
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->b:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3201
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 14

    .prologue
    const v13, 0x7f0702b3

    const v12, 0x7f01015e

    const/4 v11, 0x1

    const v10, 0x7f0c001d

    const/4 v9, 0x0

    .line 478
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 479
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/support/YelpActivity;

    .line 480
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 482
    const-string/jumbo v1, "4kMBvIEWPxWkWKFN__8SxQ"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 483
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a:Lcom/yelp/android/ui/widgets/b;

    if-nez v1, :cond_0

    .line 484
    new-instance v1, Lcom/yelp/android/ui/widgets/b;

    invoke-direct {v1}, Lcom/yelp/android/ui/widgets/b;-><init>()V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a:Lcom/yelp/android/ui/widgets/b;

    .line 486
    :cond_0
    const v1, 0x7f0c00c2

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 487
    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a:Lcom/yelp/android/ui/widgets/b;

    invoke-virtual {v2, v0, v1}, Lcom/yelp/android/ui/widgets/b;->a(Landroid/app/Activity;Landroid/widget/RelativeLayout;)V

    .line 490
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v2

    .line 491
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 492
    invoke-virtual {v2, v9}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setFooterDividersEnabled(Z)V

    .line 493
    invoke-virtual {v2, v11}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setItemsCanFocus(Z)V

    .line 495
    new-instance v1, Lcom/yelp/android/ui/util/bs;

    invoke-direct {v1}, Lcom/yelp/android/ui/util/bs;-><init>()V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->y:Lcom/yelp/android/ui/util/bs;

    .line 497
    new-instance v1, Lcom/yelp/android/ui/panels/businesspage/b;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v1, v3, p0, v2}, Lcom/yelp/android/ui/panels/businesspage/b;-><init>(Landroid/content/Context;Lcom/yelp/android/ui/widgets/o;Lcom/yelp/android/ui/util/PullDownListView;)V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->c:Lcom/yelp/android/ui/panels/businesspage/b;

    .line 498
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->c:Lcom/yelp/android/ui/panels/businesspage/b;

    const-string/jumbo v3, "HEADER"

    invoke-virtual {v2, v1, v3, v9}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 502
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->c:Lcom/yelp/android/ui/panels/businesspage/b;

    const v3, 0x7f0c01e7

    invoke-virtual {v1, v3}, Lcom/yelp/android/ui/panels/businesspage/b;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 503
    new-instance v3, Lcom/yelp/android/ui/activities/businesspage/aa;

    sget-object v4, Lcom/yelp/android/analytics/iris/EventIri;->BusinessCheckIn:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v5, "button_bar"

    invoke-direct {v3, p0, v4, v5}, Lcom/yelp/android/ui/activities/businesspage/aa;-><init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Lcom/yelp/android/analytics/iris/EventIri;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 513
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v3, "extra.check_in"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 514
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v3, "extra.check_in"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/YelpCheckIn;

    .line 516
    iget-object v3, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->c:Lcom/yelp/android/ui/panels/businesspage/b;

    invoke-virtual {v3, v11, v1}, Lcom/yelp/android/ui/panels/businesspage/b;->a(ZLcom/yelp/android/serializable/YelpCheckIn;)V

    .line 519
    :cond_2
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->c:Lcom/yelp/android/ui/panels/businesspage/b;

    const v3, 0x7f0c01ea

    invoke-virtual {v1, v3}, Lcom/yelp/android/ui/panels/businesspage/b;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 520
    new-instance v3, Lcom/yelp/android/ui/activities/businesspage/al;

    invoke-direct {v3, p0}, Lcom/yelp/android/ui/activities/businesspage/al;-><init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 529
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->c:Lcom/yelp/android/ui/panels/businesspage/b;

    const v3, 0x7f0c01e5

    invoke-virtual {v1, v3}, Lcom/yelp/android/ui/panels/businesspage/b;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->d:Landroid/view/View;

    .line 530
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->d:Landroid/view/View;

    new-instance v3, Lcom/yelp/android/ui/activities/businesspage/aw;

    sget-object v4, Lcom/yelp/android/analytics/iris/EventIri;->BusinessAddPhoto:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v5, "button_bar"

    invoke-direct {v3, p0, v4, v5}, Lcom/yelp/android/ui/activities/businesspage/aw;-><init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Lcom/yelp/android/analytics/iris/EventIri;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 537
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->d:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->registerForContextMenu(Landroid/view/View;)V

    .line 539
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->c:Lcom/yelp/android/ui/panels/businesspage/b;

    const v3, 0x7f0c01e9

    invoke-virtual {v1, v3}, Lcom/yelp/android/ui/panels/businesspage/b;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 540
    new-instance v3, Lcom/yelp/android/ui/activities/businesspage/bh;

    sget-object v4, Lcom/yelp/android/analytics/iris/EventIri;->BusinessToggleBookmark:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v5, "button_bar"

    invoke-direct {v3, p0, v4, v5}, Lcom/yelp/android/ui/activities/businesspage/bh;-><init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Lcom/yelp/android/analytics/iris/EventIri;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 548
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0b0067

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 549
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ar:Lcom/yelp/android/serializable/BusinessSearchResult;

    if-eqz v1, :cond_5

    .line 551
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 552
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 553
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ar:Lcom/yelp/android/serializable/BusinessSearchResult;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/BusinessSearchResult;->getSearchActions()Ljava/util/ArrayList;

    move-result-object v1

    .line 554
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/SearchAction;

    .line 555
    invoke-interface {v1}, Lcom/yelp/android/serializable/SearchAction;->getSearchActionType()Lcom/yelp/android/serializable/BusinessSearchResult$SearchActionType;

    move-result-object v7

    .line 556
    invoke-interface {v5, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 557
    invoke-interface {v1}, Lcom/yelp/android/serializable/SearchAction;->getBusinessListButton()Lcom/yelp/android/ui/activities/businesspage/o;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 558
    invoke-interface {v5, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 561
    :cond_4
    new-instance v1, Lcom/yelp/android/ui/activities/businesspage/p;

    iget-object v5, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-direct {v1, v4, v5}, Lcom/yelp/android/ui/activities/businesspage/p;-><init>(Ljava/util/Collection;Lcom/yelp/android/serializable/YelpBusiness;)V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->e:Lcom/yelp/android/ui/activities/businesspage/p;

    .line 563
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->y:Lcom/yelp/android/ui/util/bs;

    const v4, 0x7f0c000c

    iget-object v5, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->e:Lcom/yelp/android/ui/activities/businesspage/p;

    invoke-static {v5}, Lcom/yelp/android/ui/util/bw;->a(Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/bw;

    move-result-object v5

    invoke-virtual {v5, v10, v3, v9}, Lcom/yelp/android/ui/util/bw;->a(III)Lcom/yelp/android/ui/util/bw;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yelp/android/ui/util/bw;->a()Lcom/yelp/android/ui/util/bv;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/yelp/android/ui/util/bs;->a(ILcom/yelp/android/ui/util/bv;)V

    .line 569
    :cond_5
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Landroid/os/Bundle;)V

    .line 571
    new-instance v1, Lcom/yelp/android/ui/activities/businesspage/cd;

    const-class v4, Lcom/yelp/android/ui/activities/businesspage/BusinessRedeemButton;

    invoke-static {v4}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v4

    iget-object v5, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-direct {v1, v4, v0, v5}, Lcom/yelp/android/ui/activities/businesspage/cd;-><init>(Ljava/util/Collection;Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->g:Lcom/yelp/android/ui/activities/businesspage/cd;

    .line 574
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->y:Lcom/yelp/android/ui/util/bs;

    const v4, 0x7f0c0009

    iget-object v5, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->g:Lcom/yelp/android/ui/activities/businesspage/cd;

    invoke-static {v5}, Lcom/yelp/android/ui/util/bw;->a(Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/bw;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yelp/android/ui/util/bw;->a()Lcom/yelp/android/ui/util/bv;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/yelp/android/ui/util/bs;->a(ILcom/yelp/android/ui/util/bv;)V

    .line 578
    new-instance v1, Lcom/yelp/android/ui/activities/businesspage/p;

    const-class v4, Lcom/yelp/android/ui/activities/businesspage/BusinessDealsOffers;

    invoke-static {v4}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v4

    iget-object v5, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-direct {v1, v4, v5}, Lcom/yelp/android/ui/activities/businesspage/p;-><init>(Ljava/util/Collection;Lcom/yelp/android/serializable/YelpBusiness;)V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->h:Lcom/yelp/android/ui/activities/businesspage/p;

    .line 580
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->y:Lcom/yelp/android/ui/util/bs;

    const v4, 0x7f0c000a

    iget-object v5, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->h:Lcom/yelp/android/ui/activities/businesspage/p;

    invoke-static {v5}, Lcom/yelp/android/ui/util/bw;->a(Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/bw;

    move-result-object v5

    invoke-virtual {v5, v10, v3, v9}, Lcom/yelp/android/ui/util/bw;->a(III)Lcom/yelp/android/ui/util/bw;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yelp/android/ui/util/bw;->a()Lcom/yelp/android/ui/util/bv;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/yelp/android/ui/util/bs;->a(ILcom/yelp/android/ui/util/bv;)V

    .line 585
    new-instance v1, Lcom/yelp/android/ui/activities/businesspage/p;

    const-class v4, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;

    invoke-static {v4}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v4

    iget-object v5, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-direct {v1, v4, v5}, Lcom/yelp/android/ui/activities/businesspage/p;-><init>(Ljava/util/Collection;Lcom/yelp/android/serializable/YelpBusiness;)V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->i:Lcom/yelp/android/ui/activities/businesspage/p;

    .line 587
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->y:Lcom/yelp/android/ui/util/bs;

    const v4, 0x7f0c0007

    iget-object v5, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->i:Lcom/yelp/android/ui/activities/businesspage/p;

    invoke-static {v5}, Lcom/yelp/android/ui/util/bw;->a(Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/bw;

    move-result-object v5

    invoke-virtual {v5, v10, v3, v9}, Lcom/yelp/android/ui/util/bw;->a(III)Lcom/yelp/android/ui/util/bw;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/ui/util/bw;->a()Lcom/yelp/android/ui/util/bv;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Lcom/yelp/android/ui/util/bs;->a(ILcom/yelp/android/ui/util/bv;)V

    .line 592
    new-instance v1, Lcom/yelp/android/ui/activities/reviewpage/ab;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-direct {v1, v0, v3}, Lcom/yelp/android/ui/activities/reviewpage/ab;-><init>(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->p:Lcom/yelp/android/ui/activities/reviewpage/ab;

    .line 593
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->y:Lcom/yelp/android/ui/util/bs;

    const v3, 0x7f0c0006

    const v4, 0x7f0706c7

    invoke-virtual {p0, v4}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->p:Lcom/yelp/android/ui/activities/reviewpage/ab;

    invoke-static {v4, v5}, Lcom/yelp/android/ui/util/bw;->a(Ljava/lang/CharSequence;Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/bw;

    move-result-object v4

    invoke-virtual {v4, v12}, Lcom/yelp/android/ui/util/bw;->a(I)Lcom/yelp/android/ui/util/bw;

    move-result-object v4

    invoke-virtual {v4, v10}, Lcom/yelp/android/ui/util/bw;->b(I)Lcom/yelp/android/ui/util/bw;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yelp/android/ui/util/bw;->a()Lcom/yelp/android/ui/util/bv;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/yelp/android/ui/util/bs;->a(ILcom/yelp/android/ui/util/bv;)V

    .line 600
    new-instance v1, Lcom/yelp/android/ui/activities/businesspage/FromThisBusinessPanel;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3}, Lcom/yelp/android/ui/activities/businesspage/FromThisBusinessPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->t:Lcom/yelp/android/ui/activities/businesspage/FromThisBusinessPanel;

    .line 601
    new-instance v1, Lcom/yelp/android/ui/util/h;

    new-array v3, v11, [Landroid/view/View;

    iget-object v4, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->t:Lcom/yelp/android/ui/activities/businesspage/FromThisBusinessPanel;

    aput-object v4, v3, v9

    invoke-direct {v1, v3}, Lcom/yelp/android/ui/util/h;-><init>([Landroid/view/View;)V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->u:Lcom/yelp/android/ui/util/h;

    .line 603
    invoke-virtual {p0, v13}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->u:Lcom/yelp/android/ui/util/h;

    invoke-static {v1, v3}, Lcom/yelp/android/ui/util/bw;->a(Ljava/lang/CharSequence;Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/bw;

    move-result-object v1

    invoke-virtual {v1, v12}, Lcom/yelp/android/ui/util/bw;->a(I)Lcom/yelp/android/ui/util/bw;

    move-result-object v1

    .line 609
    invoke-direct {p0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Lcom/yelp/android/ui/util/bw;)V

    .line 610
    iget-object v3, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->y:Lcom/yelp/android/ui/util/bs;

    invoke-virtual {v1}, Lcom/yelp/android/ui/util/bw;->a()Lcom/yelp/android/ui/util/bv;

    move-result-object v1

    invoke-virtual {v3, v13, v1}, Lcom/yelp/android/ui/util/bs;->a(ILcom/yelp/android/ui/util/bv;)V

    .line 613
    new-instance v1, Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->y:Lcom/yelp/android/ui/util/bs;

    iget-object v4, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->at:Lcom/yelp/android/av/a;

    invoke-direct {v1, v0, v3, v2, v4}, Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;-><init>(Landroid/content/Context;Lcom/yelp/android/ui/util/bs;Lcom/yelp/android/ui/util/ScrollToLoadListView;Lcom/yelp/android/av/a;)V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->w:Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;

    .line 620
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->y:Lcom/yelp/android/ui/util/bs;

    invoke-virtual {v1}, Lcom/yelp/android/ui/util/bs;->a()V

    .line 622
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 623
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v4, 0x7f030091

    invoke-virtual {v1, v4, v2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aB:Landroid/view/View;

    .line 625
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aB:Landroid/view/View;

    const v4, 0x7f0c0254

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    iput-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aA:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    .line 627
    new-instance v1, Lcom/google/android/gms/ads/AdSize;

    const v4, 0x7f0d000c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    const v5, 0x7f0d000b

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    invoke-direct {v1, v4, v5}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    .line 629
    new-instance v4, Lcom/google/android/gms/ads/AdSize;

    const v5, 0x7f0d000d

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    const v6, 0x7f0d000b

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-direct {v4, v5, v3}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    .line 631
    iget-object v3, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aA:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    const/4 v5, 0x2

    new-array v5, v5, [Lcom/google/android/gms/ads/AdSize;

    aput-object v1, v5, v9

    aput-object v4, v5, v11

    invoke-virtual {v3, v5}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->setAdSizes([Lcom/google/android/gms/ads/AdSize;)V

    .line 633
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aA:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    invoke-virtual {v1, v9}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->setFocusableInTouchMode(Z)V

    .line 634
    new-instance v1, Lcom/yelp/android/ui/util/h;

    new-array v3, v9, [Landroid/view/View;

    invoke-direct {v1, v3}, Lcom/yelp/android/ui/util/h;-><init>([Landroid/view/View;)V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aC:Lcom/yelp/android/ui/util/h;

    .line 635
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->y:Lcom/yelp/android/ui/util/bs;

    const v3, 0x7f0c000b

    iget-object v4, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aC:Lcom/yelp/android/ui/util/h;

    invoke-static {v4}, Lcom/yelp/android/ui/util/bw;->a(Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/bw;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yelp/android/ui/util/bw;->a()Lcom/yelp/android/ui/util/bv;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/yelp/android/ui/util/bs;->a(ILcom/yelp/android/ui/util/bv;)V

    .line 638
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->J()V

    .line 639
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->I()V

    .line 640
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->M()V

    .line 641
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->K()V

    .line 642
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->N()V

    .line 644
    new-instance v1, Lcom/yelp/android/ui/activities/reviewpage/ab;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-direct {v1, v0, v3}, Lcom/yelp/android/ui/activities/reviewpage/ab;-><init>(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->q:Lcom/yelp/android/ui/activities/reviewpage/ab;

    .line 645
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->y:Lcom/yelp/android/ui/util/bs;

    const v1, 0x7f0c0005

    const v3, 0x7f0706c7

    invoke-virtual {p0, v3}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->q:Lcom/yelp/android/ui/activities/reviewpage/ab;

    invoke-static {v3, v4}, Lcom/yelp/android/ui/util/bw;->a(Ljava/lang/CharSequence;Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/bw;

    move-result-object v3

    invoke-virtual {v3, v12}, Lcom/yelp/android/ui/util/bw;->a(I)Lcom/yelp/android/ui/util/bw;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/yelp/android/ui/util/bw;->b(I)Lcom/yelp/android/ui/util/bw;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/ui/util/bw;->a()Lcom/yelp/android/ui/util/bv;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/yelp/android/ui/util/bs;->a(ILcom/yelp/android/ui/util/bv;)V

    .line 652
    new-instance v0, Lcom/yelp/android/ui/util/h;

    new-array v1, v9, [Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/yelp/android/ui/util/h;-><init>([Landroid/view/View;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->v:Lcom/yelp/android/ui/util/h;

    .line 653
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->y:Lcom/yelp/android/ui/util/bs;

    const v1, 0x7f0c0012

    iget-object v3, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->v:Lcom/yelp/android/ui/util/h;

    invoke-virtual {v0, v1, v3}, Lcom/yelp/android/ui/util/bs;->a(ILandroid/widget/BaseAdapter;)V

    .line 656
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ap()V

    .line 658
    invoke-virtual {v2, p0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 659
    invoke-virtual {v2, p0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 660
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->y:Lcom/yelp/android/ui/util/bs;

    invoke-virtual {v2, v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 662
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->af()V

    .line 663
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ag()V

    .line 665
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/activities/businesspage/bq;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/businesspage/bq;-><init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->a(Landroid/support/v7/app/a;)V

    .line 674
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    const/16 v2, 0x3ee

    const/4 v1, -0x1

    .line 787
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 789
    if-ne p2, v1, :cond_1

    const/16 v0, 0x40e

    if-ne p1, v0, :cond_1

    .line 791
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->au:Lcom/yelp/android/appdata/webrequests/dc;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 792
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->d()V

    .line 849
    :cond_0
    :goto_0
    return-void

    .line 794
    :cond_1
    if-ne p2, v1, :cond_2

    const/16 v0, 0x3eb

    if-ne p1, v0, :cond_2

    .line 796
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->au:Lcom/yelp/android/appdata/webrequests/dc;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 797
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->e()V

    goto :goto_0

    .line 799
    :cond_2
    if-ne p2, v1, :cond_3

    const/16 v0, 0x3ec

    if-ne p1, v0, :cond_3

    .line 801
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->au:Lcom/yelp/android/appdata/webrequests/dc;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 802
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->e()V

    goto :goto_0

    .line 804
    :cond_3
    if-ne p2, v1, :cond_4

    const/16 v0, 0x420

    if-ne p1, v0, :cond_4

    .line 806
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->au:Lcom/yelp/android/appdata/webrequests/dc;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 807
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->h()V

    goto :goto_0

    .line 809
    :cond_4
    if-ne p2, v1, :cond_5

    const/16 v0, 0x3ef

    if-ne p1, v0, :cond_5

    .line 811
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->au:Lcom/yelp/android/appdata/webrequests/dc;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 812
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/ActivityCheckIn;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 816
    :cond_5
    if-ne p2, v1, :cond_6

    const/16 v0, 0x3f5

    if-ne p1, v0, :cond_6

    .line 819
    invoke-static {p3}, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->a(Landroid/content/Intent;)Landroid/util/Pair;

    move-result-object v1

    .line 820
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/yelp/android/serializable/YelpDeal;

    .line 821
    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpDeal;->countUsablePurchases()I

    move-result v0

    if-nez v0, :cond_0

    .line 824
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getUserDeals()Ljava/util/List;

    move-result-object v0

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 825
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Lcom/yelp/android/serializable/YelpBusiness;)V

    goto :goto_0

    .line 827
    :cond_6
    if-ne p2, v1, :cond_7

    if-ne p1, v2, :cond_7

    .line 828
    sget-object v0, Lcom/yelp/android/appdata/BusinessContributionType;->CHECK_IN:Lcom/yelp/android/appdata/BusinessContributionType;

    invoke-virtual {v0, p3}, Lcom/yelp/android/appdata/BusinessContributionType;->getContribution(Landroid/content/Intent;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpCheckIn;

    .line 829
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/YelpCheckIn;->getNotificationsList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->av:Ljava/util/ArrayList;

    .line 830
    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpCheckIn;->isOfferAwarded()Z

    move-result v1

    iput-boolean v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aw:Z

    .line 831
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->u()V

    .line 835
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->c:Lcom/yelp/android/ui/panels/businesspage/b;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/yelp/android/ui/panels/businesspage/b;->a(ZLcom/yelp/android/serializable/YelpCheckIn;)V

    goto/16 :goto_0

    .line 836
    :cond_7
    const/16 v0, 0x3f0

    if-ne p1, v0, :cond_0

    .line 839
    if-eqz p3, :cond_8

    const-string/jumbo v0, "offer"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 840
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    const-string/jumbo v0, "offer"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Offer;

    invoke-virtual {v1, v0}, Lcom/yelp/android/serializable/YelpBusiness;->setCheckInOffer(Lcom/yelp/android/serializable/Offer;)V

    .line 844
    :cond_8
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->av:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->av:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 845
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->av:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 847
    :cond_9
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->u()V

    goto/16 :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 471
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onAttach(Landroid/app/Activity;)V

    move-object v0, p1

    .line 472
    check-cast v0, Lcom/yelp/android/ui/activities/businesspage/bv;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aK:Lcom/yelp/android/ui/activities/businesspage/bv;

    .line 473
    check-cast p1, Lcom/yelp/android/ui/activities/businesspage/bw;

    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aL:Lcom/yelp/android/ui/activities/businesspage/bw;

    .line 474
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 678
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 679
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->f()Lcom/yelp/android/appdata/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/i;->H()V

    .line 680
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 681
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    .line 682
    const-string/jumbo v0, "extra.business"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    .line 684
    const-string/jumbo v0, "top_highlighted_review_id"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->R:Ljava/lang/String;

    .line 686
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    .line 687
    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->k()Lcom/yelp/android/av/a;

    move-result-object v3

    iput-object v3, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->at:Lcom/yelp/android/av/a;

    .line 688
    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->au:Lcom/yelp/android/appdata/webrequests/dc;

    .line 689
    new-instance v0, Lcom/yelp/android/ui/util/s;

    invoke-direct {v0}, Lcom/yelp/android/ui/util/s;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->k:Lcom/yelp/android/ui/util/s;

    .line 691
    new-instance v0, Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter;

    sget-object v3, Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter$RankMode;->BIZ:Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter$RankMode;

    invoke-direct {v0, v1, v3}, Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter;-><init>(Landroid/content/Context;Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter$RankMode;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->V:Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter;

    .line 693
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aI:Ljava/util/LinkedHashSet;

    .line 694
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aI:Ljava/util/LinkedHashSet;

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->g()Lcom/yelp/android/appdata/LocaleSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/LocaleSettings;->h()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 696
    const-string/jumbo v0, "search_request"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/SearchRequest;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aJ:Lcom/yelp/android/appdata/webrequests/SearchRequest;

    .line 697
    const-string/jumbo v0, "business_search_result"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/BusinessSearchResult;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ar:Lcom/yelp/android/serializable/BusinessSearchResult;

    .line 700
    if-eqz p1, :cond_1

    .line 701
    const-string/jumbo v0, "mCheckInNotifications"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->av:Ljava/util/ArrayList;

    .line 703
    const-string/jumbo v0, "deal dialog"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 704
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->k:Lcom/yelp/android/ui/util/s;

    const-string/jumbo v0, "deal dialog"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpDeal;

    invoke-virtual {v1, v0, v4}, Lcom/yelp/android/ui/util/s;->a(Lcom/yelp/android/serializable/YelpDeal;Z)V

    .line 709
    :cond_0
    const-string/jumbo v0, "extra.multiple"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 710
    const-string/jumbo v0, "extra.multiple"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->Z:Ljava/util/List;

    .line 715
    :cond_1
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->u()V

    .line 717
    invoke-virtual {p0, v4}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->setHasOptionsMenu(Z)V

    .line 718
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .prologue
    .line 2425
    const v0, 0x7f100003

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 2426
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 757
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aA:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->destroy()V

    .line 758
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onDestroy()V

    .line 759
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->az:Lcom/yelp/android/ui/map/YelpMap;

    invoke-virtual {v0}, Lcom/yelp/android/ui/map/YelpMap;->d()V

    .line 760
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aA:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 762
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->o:Lcom/yelp/android/appdata/webrequests/cy;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->b(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 763
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->B:Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->b(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 764
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->E:Lcom/yelp/android/appdata/webrequests/eu;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->b(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 765
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->L:Lcom/yelp/android/appdata/webrequests/cw;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->b(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 766
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->S:Lcom/yelp/android/appdata/webrequests/ey;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->b(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 767
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->Y:Lcom/yelp/android/appdata/webrequests/ab;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->b(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 768
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ay:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->b(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 769
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 3105
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    .line 3107
    instance-of v1, v0, Lcom/yelp/android/ui/activities/businesspage/BusinessDealsOffers;

    if-eqz v1, :cond_1

    .line 3108
    check-cast v0, Lcom/yelp/android/ui/activities/businesspage/BusinessDealsOffers;

    .line 3109
    sget-object v1, Lcom/yelp/android/ui/activities/businesspage/bp;->b:[I

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessDealsOffers;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 3183
    :cond_0
    :goto_0
    return-void

    .line 3111
    :pswitch_0
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->U()V

    goto :goto_0

    .line 3114
    :pswitch_1
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BusinessCheckInOffer:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v1, "button"

    invoke-direct {p0, v0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Lcom/yelp/android/analytics/iris/EventIri;Ljava/lang/String;)V

    .line 3115
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ae()V

    goto :goto_0

    .line 3118
    :pswitch_2
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->V()V

    goto :goto_0

    .line 3121
    :cond_1
    instance-of v1, v0, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;

    if-eqz v1, :cond_2

    .line 3122
    check-cast v0, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;

    .line 3123
    sget-object v1, Lcom/yelp/android/ui/activities/businesspage/bp;->c:[I

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 3125
    :pswitch_3
    const-string/jumbo v0, "button"

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 3128
    :pswitch_4
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->X()V

    goto :goto_0

    .line 3131
    :pswitch_5
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->Y()V

    goto :goto_0

    .line 3134
    :pswitch_6
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->Z()V

    goto :goto_0

    .line 3137
    :pswitch_7
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aa()V

    goto :goto_0

    .line 3140
    :pswitch_8
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->b(Z)V

    goto :goto_0

    .line 3143
    :pswitch_9
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ab()V

    goto :goto_0

    .line 3146
    :pswitch_a
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ac()V

    goto :goto_0

    .line 3149
    :cond_2
    instance-of v1, v0, Lcom/yelp/android/ui/activities/businesspage/cf;

    if-eqz v1, :cond_3

    .line 3150
    check-cast v0, Lcom/yelp/android/ui/activities/businesspage/cf;

    .line 3151
    sget-object v1, Lcom/yelp/android/ui/activities/businesspage/bp;->d:[I

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/businesspage/cf;->a()Lcom/yelp/android/serializable/SearchAction;

    move-result-object v0

    invoke-interface {v0}, Lcom/yelp/android/serializable/SearchAction;->getSearchActionType()Lcom/yelp/android/serializable/BusinessSearchResult$SearchActionType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/BusinessSearchResult$SearchActionType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    .line 3153
    :pswitch_b
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aa()V

    goto :goto_0

    .line 3156
    :pswitch_c
    invoke-direct {p0, v8}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->b(Z)V

    goto :goto_0

    .line 3159
    :cond_3
    instance-of v1, v0, Lcom/yelp/android/ui/activities/businesspage/BusinessRedeemButton;

    if-eqz v1, :cond_4

    .line 3160
    check-cast v0, Lcom/yelp/android/ui/activities/businesspage/BusinessRedeemButton;

    .line 3161
    sget-object v1, Lcom/yelp/android/ui/activities/businesspage/bp;->e:[I

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessRedeemButton;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_3

    goto :goto_0

    .line 3163
    :pswitch_d
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->g()V

    goto/16 :goto_0

    .line 3166
    :pswitch_e
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->T()V

    goto/16 :goto_0

    .line 3169
    :cond_4
    instance-of v1, v0, Lcom/yelp/android/serializable/YelpBusinessReview;

    if-eqz v1, :cond_5

    .line 3170
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->N:Lcom/yelp/android/ui/activities/reviewpage/bi;

    instance-of v1, v1, Lcom/yelp/android/ui/activities/reviewpage/bi;

    if-eqz v1, :cond_0

    move-object v5, v0

    .line 3171
    check-cast v5, Lcom/yelp/android/serializable/YelpBusinessReview;

    .line 3172
    new-instance v4, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->T:Ljava/util/List;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3174
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/YelpBusiness;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    iget-object v6, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ai:Ljava/util/Map;

    iget-object v7, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aj:Ljava/util/ArrayList;

    invoke-static/range {v0 .. v8}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/util/Map;Ljava/util/ArrayList;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 3178
    :cond_5
    instance-of v1, v0, Lcom/yelp/android/serializable/DisplayableAsUserBadge;

    if-eqz v1, :cond_0

    .line 3180
    check-cast v0, Lcom/yelp/android/serializable/DisplayableAsUserBadge;

    .line 3181
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0}, Lcom/yelp/android/serializable/DisplayableAsUserBadge;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 3109
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 3123
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 3151
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_b
        :pswitch_c
    .end packed-switch

    .line 3161
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 3091
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    .line 3092
    instance-of v1, v0, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;

    if-eqz v1, :cond_0

    .line 3093
    check-cast v0, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;

    .line 3094
    sget-object v1, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;->CALL:Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;

    if-ne v0, v1, :cond_0

    .line 3095
    const v0, 0x7f07045a

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->getLocalizedPhone()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v0, v1}, Lcom/yelp/android/ui/util/k;->b(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    .line 3097
    const/4 v0, 0x1

    .line 3100
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 729
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onLowMemory()V

    .line 730
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->az:Lcom/yelp/android/ui/map/YelpMap;

    invoke-virtual {v0}, Lcom/yelp/android/ui/map/YelpMap;->e()V

    .line 731
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 2488
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 2525
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 2490
    :sswitch_0
    const-string/jumbo v1, "menu"

    invoke-direct {p0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->g(Ljava/lang/String;)V

    .line 2491
    sget-object v1, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->BizPageMenu:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    invoke-direct {p0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->b(Lcom/yelp/android/ui/activities/reviews/ReviewSource;)Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    move-result-object v1

    .line 2492
    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Lcom/yelp/android/ui/activities/reviews/ReviewSource;)V

    goto :goto_0

    .line 2495
    :sswitch_1
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->BusinessAddPhoto:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v2, "menu"

    invoke-direct {p0, v1, v2}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Lcom/yelp/android/analytics/iris/EventIri;Ljava/lang/String;)V

    .line 2496
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->i()V

    goto :goto_0

    .line 2499
    :sswitch_2
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->BusinessCheckIn:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v2, "menu"

    invoke-direct {p0, v1, v2}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Lcom/yelp/android/analytics/iris/EventIri;Ljava/lang/String;)V

    .line 2500
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ae()V

    goto :goto_0

    .line 2503
    :sswitch_3
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->BusinessAddTip:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v2, "menu"

    invoke-direct {p0, v1, v2}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Lcom/yelp/android/analytics/iris/EventIri;Ljava/lang/String;)V

    .line 2504
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->h()V

    goto :goto_0

    .line 2507
    :sswitch_4
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->BusinessToggleBookmark:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v2, "menu"

    invoke-direct {p0, v1, v2}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Lcom/yelp/android/analytics/iris/EventIri;Ljava/lang/String;)V

    .line 2508
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->e()V

    goto :goto_0

    .line 2511
    :sswitch_5
    const-string/jumbo v1, "menu"

    invoke-direct {p0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 2514
    :sswitch_6
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->BusinessEditClicked:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v2, "menu"

    invoke-direct {p0, v1, v2}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Lcom/yelp/android/analytics/iris/EventIri;Ljava/lang/String;)V

    .line 2515
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->f()V

    goto :goto_0

    .line 2518
    :sswitch_7
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->W()V

    goto :goto_0

    .line 2521
    :sswitch_8
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->BusinessShare:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v2, "menu"

    invoke-direct {p0, v1, v2}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Lcom/yelp/android/analytics/iris/EventIri;Ljava/lang/String;)V

    .line 2522
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ad()V

    goto :goto_0

    .line 2488
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0c01e9 -> :sswitch_4
        0x7f0c04e9 -> :sswitch_0
        0x7f0c04ea -> :sswitch_1
        0x7f0c04eb -> :sswitch_2
        0x7f0c04ec -> :sswitch_3
        0x7f0c04ed -> :sswitch_5
        0x7f0c04ee -> :sswitch_6
        0x7f0c04ef -> :sswitch_7
        0x7f0c04f0 -> :sswitch_8
    .end sparse-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 722
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aA:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->pause()V

    .line 723
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onPause()V

    .line 724
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->az:Lcom/yelp/android/ui/map/YelpMap;

    invoke-virtual {v0}, Lcom/yelp/android/ui/map/YelpMap;->b()V

    .line 725
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 2430
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v2

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_1

    .line 2431
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 2444
    :goto_1
    sget-object v3, Lcom/yelp/android/appdata/Features;->video_capture:Lcom/yelp/android/appdata/Features;

    invoke-virtual {v3}, Lcom/yelp/android/appdata/Features;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2445
    const v3, 0x7f0c04ea

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f07009a

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 2430
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2441
    :sswitch_0
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 2448
    :cond_1
    const v0, 0x7f0c04e8

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->b:Landroid/view/MenuItem;

    .line 2449
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;

    .line 2450
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2453
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/yelp/android/ui/activities/businesspage/az;

    invoke-direct {v2, p0, p1}, Lcom/yelp/android/ui/activities/businesspage/az;-><init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Landroid/view/Menu;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2461
    :cond_2
    const v0, 0x7f0c04eb

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 2462
    const v0, 0x7f0c01e9

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 2463
    if-eqz v2, :cond_3

    if-eqz v3, :cond_3

    .line 2464
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->n()Lcom/yelp/android/appdata/LocationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/LocationService;->c()Landroid/location/Location;

    move-result-object v0

    .line 2466
    iget-object v4, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v4, v0}, Lcom/yelp/android/serializable/YelpBusiness;->getDistance(Landroid/location/Location;)D

    move-result-wide v4

    .line 2467
    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    cmpl-double v0, v6, v4

    if-lez v0, :cond_4

    .line 2468
    invoke-static {v2, v8}, Landroid/support/v4/view/as;->a(Landroid/view/MenuItem;I)V

    .line 2469
    invoke-static {v3, v1}, Landroid/support/v4/view/as;->a(Landroid/view/MenuItem;I)V

    .line 2482
    :cond_3
    :goto_2
    const v0, 0x7f0c04e9

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->getReviewState()Lcom/yelp/android/ui/activities/reviews/ReviewState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/ui/activities/reviews/ReviewState;->getTextResourceForState()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 2484
    return-void

    .line 2471
    :cond_4
    invoke-static {v3, v8}, Landroid/support/v4/view/as;->a(Landroid/view/MenuItem;I)V

    .line 2472
    const v0, 0x7f020039

    .line 2473
    iget-object v4, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v4}, Lcom/yelp/android/serializable/YelpBusiness;->isBookmarked()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2474
    const v0, 0x7f020038

    .line 2476
    :cond_5
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2477
    invoke-static {v2, v1}, Landroid/support/v4/view/as;->a(Landroid/view/MenuItem;I)V

    goto :goto_2

    .line 2431
    :sswitch_data_0
    .sparse-switch
        0x7f0c01e9 -> :sswitch_0
        0x7f0c04e9 -> :sswitch_0
        0x7f0c04ea -> :sswitch_0
        0x7f0c04eb -> :sswitch_0
        0x7f0c04ec -> :sswitch_0
        0x7f0c04ed -> :sswitch_0
        0x7f0c04ee -> :sswitch_0
        0x7f0c04ef -> :sswitch_0
        0x7f0c04f0 -> :sswitch_0
    .end sparse-switch
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 735
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onResume()V

    .line 736
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->c:Lcom/yelp/android/ui/panels/businesspage/b;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/businesspage/b;->b(Lcom/yelp/android/ui/util/PullDownListView;)V

    .line 737
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->az:Lcom/yelp/android/ui/map/YelpMap;

    invoke-virtual {v0}, Lcom/yelp/android/ui/map/YelpMap;->c()V

    .line 738
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aA:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->resume()V

    .line 742
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->R()V

    .line 744
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ap:Z

    if-nez v0, :cond_0

    .line 745
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->Q()V

    .line 748
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aL:Lcom/yelp/android/ui/activities/businesspage/bw;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/businesspage/bw;->c()V

    .line 749
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 773
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 774
    const-string/jumbo v0, "mCheckInNotifications"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->av:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 775
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->az:Lcom/yelp/android/ui/map/YelpMap;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/map/YelpMap;->a(Landroid/os/Bundle;)V

    .line 777
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->Z:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->Z:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 778
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->Z:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    .line 779
    if-eqz v0, :cond_0

    .line 780
    const-string/jumbo v1, "extra.multiple"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 783
    :cond_0
    return-void
.end method
