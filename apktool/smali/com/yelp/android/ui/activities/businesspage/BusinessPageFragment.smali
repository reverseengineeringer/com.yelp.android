.class public Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;
.super Lcom/yelp/android/ui/activities/support/YelpListFragment;
.source "BusinessPageFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Lcom/yelp/android/ui/activities/reviewpage/a$a;
.implements Lcom/yelp/android/ui/activities/reviewpage/d$a;
.implements Lcom/yelp/android/ui/util/ImageInputHelper$c;
.implements Lcom/yelp/android/ui/widgets/d$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$59;,
        Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$c;,
        Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$b;,
        Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$a;,
        Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$e;,
        Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$h;,
        Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$g;,
        Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$d;,
        Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$f;,
        Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$MessageAlertBoxNotification;
    }
.end annotation


# instance fields
.field private A:Lcom/yelp/android/ui/util/aj;

.field private B:Lcom/yelp/android/ui/util/e;

.field private C:Lcom/yelp/android/ui/util/e;

.field private D:Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;

.field private E:Lcom/yelp/android/ui/util/z;

.field private F:Lcom/yelp/android/ui/activities/reviewpage/a;

.field private G:Lcom/yelp/android/appdata/webrequests/dw;

.field private H:I

.field private I:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/ReviewHighlight;",
            ">;"
        }
    .end annotation
.end field

.field private J:Lcom/yelp/android/ui/activities/reviewpage/d;

.field private K:Lcom/yelp/android/ui/util/e;

.field private L:Lcom/yelp/android/ui/util/e;

.field private M:Lcom/yelp/android/ui/util/e;

.field private N:Lcom/yelp/android/appdata/webrequests/ck;

.field private O:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Tip;",
            ">;"
        }
    .end annotation
.end field

.field private P:Lcom/yelp/android/ui/activities/reviewpage/e;

.field private Q:Lcom/yelp/android/ui/util/e;

.field private R:Lcom/yelp/android/ui/util/e;

.field private S:Ljava/lang/String;

.field private T:Lcom/yelp/android/appdata/webrequests/dy;

.field private U:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/YelpBusinessReview;",
            ">;"
        }
    .end annotation
.end field

.field private V:I

.field private W:Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter;

.field private X:Lcom/yelp/android/ui/util/e;

.field private Y:Lcom/yelp/android/ui/util/e;

.field private Z:Lcom/yelp/android/appdata/webrequests/ae;

.field private a:Lcom/yelp/android/ui/widgets/a;

.field private aA:Landroid/view/View;

.field private aB:Z

.field private aC:Lcom/yelp/android/ui/activities/businesspage/d;

.field private aD:Lcom/yelp/android/serializable/BusinessSearchResult;

.field private aE:Lcom/yelp/android/serializable/YelpBusiness;

.field private aF:Lcom/yelp/android/appdata/webrequests/core/MetricsManager;

.field private aG:Lcom/yelp/android/appdata/webrequests/co;

.field private aH:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private aI:Ljava/lang/String;

.field private aJ:Z

.field private aK:Z

.field private aL:Lcom/yelp/android/ui/dialogs/e;

.field private aM:Lcom/yelp/android/ui/dialogs/YelpProgressDialogFragment;

.field private aN:Lcom/yelp/android/ui/dialogs/YelpProgressDialogFragment;

.field private aO:Lcom/yelp/android/appdata/webrequests/ApiRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<",
            "Ljava/lang/Void;",
            "**>;"
        }
    .end annotation
.end field

.field private aP:Lcom/yelp/android/ui/map/YelpMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/ui/map/YelpMap",
            "<",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            ">;"
        }
    .end annotation
.end field

.field private aQ:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

.field private aR:Landroid/widget/FrameLayout;

.field private aS:Lcom/yelp/android/ui/util/e;

.field private aT:Z

.field private aU:Landroid/view/View;

.field private aV:Landroid/view/View;

.field private aW:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Lcom/yelp/android/ui/activities/reviewpage/e;",
            "Lcom/yelp/android/ui/util/aj$b",
            "<",
            "Lcom/yelp/android/ui/activities/reviewpage/e;",
            ">;>;"
        }
    .end annotation
.end field

.field private aX:Lcom/yelp/android/ui/util/aj$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/ui/util/aj$b",
            "<",
            "Lcom/yelp/android/ui/activities/reviewpage/e;",
            ">;"
        }
    .end annotation
.end field

.field private aY:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field

.field private aZ:Lcom/yelp/android/appdata/webrequests/SearchRequest;

.field private aa:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/Ranking;",
            ">;"
        }
    .end annotation
.end field

.field private ab:Lcom/yelp/android/ui/util/e;

.field private ac:Ljava/lang/Boolean;

.field private ad:Lcom/yelp/android/appdata/webrequests/z;

.field private ae:Lcom/yelp/android/ui/panels/businesssearch/e;

.field private af:Lcom/yelp/android/appdata/webrequests/dj;

.field private ag:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/YelpBusinessTiny;",
            ">;"
        }
    .end annotation
.end field

.field private ah:Lcom/yelp/android/appdata/webrequests/messaging/g;

.field private ai:Lcom/yelp/android/ui/util/e;

.field private aj:Z

.field private ak:Landroid/view/View;

.field private al:Landroid/widget/TextView;

.field private am:Z

.field private an:Z

.field private ao:Z

.field private ap:Z

.field private aq:Z

.field private ar:Z

.field private as:Z

.field private at:Z

.field private au:Ljava/util/Map;
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

.field private av:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field

.field private aw:Ljava/lang/String;

.field private ax:Ljava/lang/String;

.field private ay:Ljava/lang/String;

.field private az:Ljava/lang/String;

.field private b:Landroid/view/MenuItem;

.field private ba:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$a;

.field private bb:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$b;

.field private bc:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$c;

.field private bd:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private be:Lcom/yelp/android/appdata/webrequests/aw;

.field private bf:Lcom/yelp/android/appdata/webrequests/av;

.field private bg:Z

.field private bh:Z

.field private final bi:Landroid/view/View$OnClickListener;

.field private final bj:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$h;

.field private final bk:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$h;

.field private final bl:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/Ranking;",
            ">;>;"
        }
    .end annotation
.end field

.field private final bm:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Lcom/yelp/android/serializable/BusinessClaimedResult;",
            ">;"
        }
    .end annotation
.end field

.field private final bn:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/YelpBusinessTiny;",
            ">;>;"
        }
    .end annotation
.end field

.field private final bo:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final bp:Lcom/google/android/gms/ads/a;

.field private final bq:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Lcom/yelp/android/serializable/MediaPayload;",
            ">;"
        }
    .end annotation
.end field

.field private final br:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Lcom/yelp/android/serializable/YelpBookmark;",
            ">;"
        }
    .end annotation
.end field

.field private final bs:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/LocalAd;",
            ">;>;"
        }
    .end annotation
.end field

.field private final bt:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Lcom/yelp/android/appdata/webrequests/ck$a;",
            ">;"
        }
    .end annotation
.end field

.field private final bu:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Lcom/yelp/android/appdata/webrequests/dy$a;",
            ">;"
        }
    .end annotation
.end field

.field private final bv:Lcom/yelp/android/appdata/webrequests/core/c$a;

.field private final bw:Landroid/support/v7/widget/RecyclerView$l;

.field private final bx:Lcom/yelp/android/services/push/c$a;

.field private final by:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Lcom/yelp/android/serializable/ContinueLastOrderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final bz:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Lcom/yelp/android/serializable/ContinueLastOrderAvailability;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/yelp/android/ui/panels/businesspage/b;

.field private d:Landroid/view/View;

.field private e:Lcom/yelp/android/ui/activities/reviews/StarsView;

.field private f:Lcom/yelp/android/ui/activities/businesspage/c;

.field private g:Lcom/yelp/android/ui/activities/businesspage/ClaimButtonAdapter;

.field private i:Lcom/yelp/android/ui/activities/businesspage/e;

.field private j:Lcom/yelp/android/ui/activities/businesspage/c;

.field private k:Lcom/yelp/android/ui/activities/businesspage/c;

.field private l:Lcom/yelp/android/appdata/webrequests/fd;

.field private m:Lcom/yelp/android/ui/util/k;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;

.field private p:Lcom/yelp/android/ui/util/e;

.field private q:Lcom/yelp/android/appdata/webrequests/cl;

.field private r:Lcom/yelp/android/ui/activities/reviewpage/b;

.field private s:Lcom/yelp/android/ui/activities/reviewpage/b;

.field private t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/LocalAd;",
            ">;"
        }
    .end annotation
.end field

.field private u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/LocalAd;",
            ">;"
        }
    .end annotation
.end field

.field private v:Lcom/yelp/android/ui/activities/businesspage/FromThisBusinessPanel;

.field private w:Lcom/yelp/android/ui/util/e;

.field private x:Lcom/yelp/android/ui/util/e;

.field private y:Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;

.field private z:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 612
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;-><init>()V

    .line 420
    iput-boolean v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->am:Z

    .line 421
    iput-boolean v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->an:Z

    .line 422
    iput-boolean v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ao:Z

    .line 423
    iput-boolean v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ap:Z

    .line 424
    iput-boolean v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aq:Z

    .line 425
    iput-boolean v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ar:Z

    .line 426
    iput-boolean v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Z

    .line 427
    iput-boolean v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->at:Z

    .line 428
    new-instance v0, Lcom/yelp/android/g/a;

    invoke-direct {v0}, Lcom/yelp/android/g/a;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->au:Ljava/util/Map;

    .line 431
    iput-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aw:Ljava/lang/String;

    .line 432
    iput-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ax:Ljava/lang/String;

    .line 433
    iput-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ay:Ljava/lang/String;

    .line 434
    iput-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->az:Ljava/lang/String;

    .line 468
    iput-boolean v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aT:Z

    .line 2646
    new-instance v0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$19;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$19;-><init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->bi:Landroid/view/View$OnClickListener;

    .line 2661
    new-instance v0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$20;

    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->BusinessAddTip:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v2, "button"

    invoke-direct {v0, p0, v1, v2}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$20;-><init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Lcom/yelp/android/analytics/iris/EventIri;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->bj:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$h;

    .line 2671
    new-instance v0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$21;

    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->BusinessCheckIn:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v2, "button"

    invoke-direct {v0, p0, v1, v2}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$21;-><init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Lcom/yelp/android/analytics/iris/EventIri;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->bk:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$h;

    .line 4513
    new-instance v0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$42;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$42;-><init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->bl:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    .line 4533
    new-instance v0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$43;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$43;-><init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->bm:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    .line 4551
    new-instance v0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$44;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$44;-><init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->bn:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    .line 4568
    new-instance v0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$46;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$46;-><init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->bo:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    .line 4586
    new-instance v0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$47;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$47;-><init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->bp:Lcom/google/android/gms/ads/a;

    .line 4731
    new-instance v0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$48;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$48;-><init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->bq:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    .line 4795
    new-instance v0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$49;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$49;-><init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->br:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    .line 4813
    new-instance v0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$50;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$50;-><init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->bs:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    .line 4843
    new-instance v0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$51;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$51;-><init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->bt:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    .line 4863
    new-instance v0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$52;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$52;-><init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->bu:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    .line 4906
    new-instance v0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$53;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$53;-><init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->bv:Lcom/yelp/android/appdata/webrequests/core/c$a;

    .line 4933
    new-instance v0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$54;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$54;-><init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->bw:Landroid/support/v7/widget/RecyclerView$l;

    .line 4962
    new-instance v0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$55;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$55;-><init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->bx:Lcom/yelp/android/services/push/c$a;

    .line 4980
    new-instance v0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$57;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$57;-><init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->by:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    .line 5000
    new-instance v0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$58;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$58;-><init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->bz:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    .line 612
    return-void
.end method

.method static synthetic A(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Lcom/yelp/android/ui/util/k;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->m:Lcom/yelp/android/ui/util/k;

    return-object v0
.end method

.method static synthetic B(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Lcom/yelp/android/ui/activities/reviewpage/a;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->F:Lcom/yelp/android/ui/activities/reviewpage/a;

    return-object v0
.end method

.method static synthetic C(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Lcom/yelp/android/ui/dialogs/e;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aL:Lcom/yelp/android/ui/dialogs/e;

    return-object v0
.end method

.method static synthetic D(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Ljava/util/List;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->t:Ljava/util/List;

    return-object v0
.end method

.method static synthetic E(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Ljava/util/List;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->u:Ljava/util/List;

    return-object v0
.end method

.method static synthetic F(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Ljava/util/LinkedHashSet;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aY:Ljava/util/LinkedHashSet;

    return-object v0
.end method

.method static synthetic G(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Ljava/util/Locale;
    .locals 1

    .prologue
    .line 275
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method static synthetic H(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Lcom/yelp/android/ui/dialogs/YelpProgressDialogFragment;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aM:Lcom/yelp/android/ui/dialogs/YelpProgressDialogFragment;

    return-object v0
.end method

.method private H()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 1573
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->k()Ljava/lang/String;

    move-result-object v0

    .line 1574
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->l()Ljava/lang/String;

    move-result-object v1

    .line 1576
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1577
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->p:Lcom/yelp/android/ui/util/e;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/e;->clear()V

    .line 1591
    :goto_0
    return-void

    .line 1579
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1580
    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->n:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1585
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1586
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1582
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 1588
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private I()Z
    .locals 1

    .prologue
    .line 1678
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->aY()Lcom/yelp/android/serializable/FromThisBusiness;

    move-result-object v0

    .line 1679
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/FromThisBusiness;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private J()V
    .locals 6

    .prologue
    .line 1683
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->I()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1684
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->w:Lcom/yelp/android/ui/util/e;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/e;->clear()V

    .line 1700
    :goto_0
    return-void

    .line 1688
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->v:Lcom/yelp/android/ui/activities/businesspage/FromThisBusinessPanel;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->al()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v5, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ac:Ljava/lang/Boolean;

    invoke-virtual {v4, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    iget-object v5, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v5}, Lcom/yelp/android/serializable/YelpBusiness;->aY()Lcom/yelp/android/serializable/FromThisBusiness;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/yelp/android/ui/activities/businesspage/FromThisBusinessPanel;->a(Lcom/yelp/android/serializable/YelpBusiness;Ljava/lang/String;Ljava/lang/String;ZLcom/yelp/android/serializable/FromThisBusiness;)V

    .line 1695
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->w:Lcom/yelp/android/ui/util/e;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/e;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 1696
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->w:Lcom/yelp/android/ui/util/e;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->v:Lcom/yelp/android/ui/activities/businesspage/FromThisBusinessPanel;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/e;->b(Landroid/view/View;)V

    .line 1699
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->w:Lcom/yelp/android/ui/util/e;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/e;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method private K()Z
    .locals 1

    .prologue
    .line 1772
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->W()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private L()Z
    .locals 1

    .prologue
    .line 1776
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->W()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->ag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private M()V
    .locals 4

    .prologue
    .line 1999
    new-instance v0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$7;

    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->BusinessOpenMoreHighlights:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-direct {v0, p0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$7;-><init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Lcom/yelp/android/analytics/iris/EventIri;)V

    .line 2013
    new-instance v1, Lcom/yelp/android/ui/activities/reviewpage/a;

    const v2, 0x7f03019f

    invoke-direct {v1, v2, p0}, Lcom/yelp/android/ui/activities/reviewpage/a;-><init>(ILcom/yelp/android/ui/activities/reviewpage/a$a;)V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->F:Lcom/yelp/android/ui/activities/reviewpage/a;

    .line 2015
    const v1, 0x7f070536

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->F:Lcom/yelp/android/ui/activities/reviewpage/a;

    invoke-static {v1, v2}, Lcom/yelp/android/ui/util/aj$c;->a(Ljava/lang/CharSequence;Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v1

    const v2, 0x7f0f050f

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/util/aj$c;->b(I)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v1

    const v2, 0x7f0101cc

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/util/aj$c;->a(I)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v1

    const v2, 0x7f0703dc

    invoke-virtual {p0, v2}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v2, v0, v3}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Ljava/lang/String;Landroid/view/View$OnClickListener;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/util/aj$c;->a(Landroid/view/View;)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v0

    .line 2027
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->A:Lcom/yelp/android/ui/util/aj;

    const v2, 0x7f0f000e

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/aj$c;->b()Lcom/yelp/android/ui/util/aj$b;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/yelp/android/ui/util/aj;->a(ILcom/yelp/android/ui/util/aj$b;)V

    .line 2029
    return-void
.end method

.method private N()V
    .locals 10

    .prologue
    const v4, 0x7f07048d

    const v8, 0x7f07042f

    const v9, 0x7f0101cc

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2032
    new-instance v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->z:Landroid/support/v7/widget/RecyclerView;

    .line 2033
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->z:Landroid/support/v7/widget/RecyclerView;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x1

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/yelp/android/appdata/AppData;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0112

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    sget v7, Lcom/yelp/android/appdata/n;->b:I

    add-int/2addr v6, v7

    invoke-direct {v3, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2040
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->z:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->bw:Landroid/support/v7/widget/RecyclerView$l;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$l;)V

    .line 2042
    new-instance v0, Lcom/yelp/android/ui/util/z;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    iget-object v5, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v5}, Lcom/yelp/android/serializable/YelpBusiness;->aa()Lcom/yelp/android/serializable/Video;

    move-result-object v5

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-direct {v0, v3, v5, v6}, Lcom/yelp/android/ui/util/z;-><init>(Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/serializable/Video;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->E:Lcom/yelp/android/ui/util/z;

    .line 2043
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->z:Landroid/support/v7/widget/RecyclerView;

    new-instance v3, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v3, v5, v2, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$i;)V

    .line 2045
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->z:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->E:Lcom/yelp/android/ui/util/z;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 2047
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2048
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2049
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const/16 v5, 0x414

    const/high16 v6, 0x10000000

    invoke-virtual {v3, v5, v0, v6}, Landroid/support/v4/app/FragmentActivity;->createPendingResult(ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 2055
    iget-object v3, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->E:Lcom/yelp/android/ui/util/z;

    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5}, Lcom/yelp/android/ui/util/z;->a(Landroid/app/PendingIntent;Lcom/yelp/android/ui/util/aa;)V

    .line 2057
    new-instance v0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$8;

    sget-object v3, Lcom/yelp/android/analytics/iris/EventIri;->BusinessAddPhoto:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v5, "button"

    invoke-direct {v0, p0, v3, v5}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$8;-><init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Lcom/yelp/android/analytics/iris/EventIri;Ljava/lang/String;)V

    .line 2065
    iget-object v3, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/YelpBusiness;->A()I

    move-result v5

    .line 2066
    if-eqz v5, :cond_6

    .line 2067
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->F()I

    move-result v0

    if-lez v0, :cond_1

    move v0, v1

    .line 2068
    :goto_0
    iget-object v3, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/YelpBusiness;->I()I

    move-result v3

    if-lez v3, :cond_2

    move v3, v1

    .line 2069
    :goto_1
    new-instance v6, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$9;

    sget-object v7, Lcom/yelp/android/analytics/iris/EventIri;->BusinessMorePhotos:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-direct {v6, p0, v7, v0, v3}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$9;-><init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Lcom/yelp/android/analytics/iris/EventIri;ZZ)V

    .line 2101
    new-instance v7, Lcom/yelp/android/ui/util/e;

    new-array v8, v2, [Landroid/view/View;

    invoke-direct {v7, v8}, Lcom/yelp/android/ui/util/e;-><init>([Landroid/view/View;)V

    iput-object v7, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->B:Lcom/yelp/android/ui/util/e;

    .line 2102
    new-instance v7, Lcom/yelp/android/ui/util/e;

    new-array v8, v2, [Landroid/view/View;

    invoke-direct {v7, v8}, Lcom/yelp/android/ui/util/e;-><init>([Landroid/view/View;)V

    iput-object v7, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->C:Lcom/yelp/android/ui/util/e;

    .line 2106
    if-eqz v0, :cond_3

    if-eqz v3, :cond_3

    .line 2107
    const v0, 0x7f07048e

    move v3, v0

    .line 2119
    :goto_2
    const/4 v0, 0x0

    .line 2120
    const/4 v7, 0x3

    if-le v5, v7, :cond_0

    .line 2121
    const v0, 0x7f07053e

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {v0, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-lez v5, :cond_5

    :goto_3
    invoke-direct {p0, v0, v6, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Ljava/lang/String;Landroid/view/View$OnClickListener;Z)Landroid/view/View;

    move-result-object v0

    .line 2129
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->A:Lcom/yelp/android/ui/util/aj;

    invoke-virtual {p0, v3}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->B:Lcom/yelp/android/ui/util/e;

    invoke-static {v2, v5}, Lcom/yelp/android/ui/util/aj$c;->a(Ljava/lang/CharSequence;Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/yelp/android/ui/util/aj$c;->a(I)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/yelp/android/ui/util/aj$c;->a(Landroid/view/View;)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/aj$c;->b()Lcom/yelp/android/ui/util/aj$b;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Lcom/yelp/android/ui/util/aj;->a(ILcom/yelp/android/ui/util/aj$b;)V

    .line 2136
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->A:Lcom/yelp/android/ui/util/aj;

    const v1, 0x7f0f0010

    invoke-virtual {p0, v3}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->C:Lcom/yelp/android/ui/util/e;

    invoke-static {v2, v3}, Lcom/yelp/android/ui/util/aj$c;->a(Ljava/lang/CharSequence;Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/yelp/android/ui/util/aj$c;->a(I)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/ui/util/aj$c;->b()Lcom/yelp/android/ui/util/aj$b;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/util/aj;->a(ILcom/yelp/android/ui/util/aj$b;)V

    .line 2155
    :goto_4
    return-void

    :cond_1
    move v0, v2

    .line 2067
    goto :goto_0

    :cond_2
    move v3, v2

    .line 2068
    goto :goto_1

    .line 2108
    :cond_3
    if-eqz v0, :cond_4

    .line 2109
    const v0, 0x7f070647

    move v3, v0

    goto :goto_2

    .line 2114
    :cond_4
    iput-boolean v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->an:Z

    .line 2115
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->au()V

    move v3, v4

    goto :goto_2

    :cond_5
    move v1, v2

    .line 2121
    goto :goto_3

    .line 2142
    :cond_6
    iput-boolean v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->an:Z

    .line 2143
    iget-object v3, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->A:Lcom/yelp/android/ui/util/aj;

    invoke-virtual {p0, v8}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/yelp/android/ui/util/e;

    new-array v1, v1, [Landroid/view/View;

    const v6, 0x7f070118

    const v7, 0x7f0201cf

    invoke-direct {p0, v6, v7, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-direct {v5, v1}, Lcom/yelp/android/ui/util/e;-><init>([Landroid/view/View;)V

    invoke-static {v4, v5}, Lcom/yelp/android/ui/util/aj$c;->a(Ljava/lang/CharSequence;Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/yelp/android/ui/util/aj$c;->a(I)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/aj$c;->b()Lcom/yelp/android/ui/util/aj$b;

    move-result-object v0

    invoke-virtual {v3, v8, v0}, Lcom/yelp/android/ui/util/aj;->a(ILcom/yelp/android/ui/util/aj$b;)V

    goto :goto_4
.end method

.method private O()V
    .locals 4

    .prologue
    const v3, 0x7f0704e7

    .line 2158
    new-instance v0, Lcom/yelp/android/ui/panels/businesssearch/e;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yelp/android/ui/panels/businesssearch/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ae:Lcom/yelp/android/ui/panels/businesssearch/e;

    .line 2160
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->A:Lcom/yelp/android/ui/util/aj;

    invoke-virtual {p0, v3}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ae:Lcom/yelp/android/ui/panels/businesssearch/e;

    invoke-static {v1, v2}, Lcom/yelp/android/ui/util/aj$c;->a(Ljava/lang/CharSequence;Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v1

    const v2, 0x7f0f003a

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/util/aj$c;->b(I)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v1

    const v2, 0x7f0101cc

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/util/aj$c;->a(I)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/ui/util/aj$c;->b()Lcom/yelp/android/ui/util/aj$b;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/yelp/android/ui/util/aj;->a(ILcom/yelp/android/ui/util/aj$b;)V

    .line 2168
    return-void
.end method

.method private P()V
    .locals 11

    .prologue
    const v10, 0x7f07043a

    const/4 v9, 0x1

    const/4 v8, 0x0

    const v7, 0x7f07053b

    .line 2171
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->L()I

    move-result v0

    .line 2173
    new-instance v1, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$10;

    sget-object v2, Lcom/yelp/android/analytics/iris/EventIri;->BusinessMoreTipsClicked:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-direct {v1, p0, v2}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$10;-><init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Lcom/yelp/android/analytics/iris/EventIri;)V

    .line 2183
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->w()Landroid/view/View;

    move-result-object v2

    .line 2185
    const v3, 0x7f0703e4

    invoke-virtual {p0, v3}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v1, v9}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Ljava/lang/String;Landroid/view/View$OnClickListener;Z)Landroid/view/View;

    move-result-object v1

    .line 2187
    new-instance v3, Lcom/yelp/android/ui/activities/reviewpage/d;

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yelp/android/appdata/webrequests/co;->a()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, p0}, Lcom/yelp/android/ui/activities/reviewpage/d;-><init>(Ljava/lang/String;Lcom/yelp/android/ui/activities/reviewpage/d$a;)V

    iput-object v3, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->J:Lcom/yelp/android/ui/activities/reviewpage/d;

    .line 2188
    iget-object v3, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->A:Lcom/yelp/android/ui/util/aj;

    invoke-virtual {p0, v7}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->J:Lcom/yelp/android/ui/activities/reviewpage/d;

    invoke-static {v4, v5}, Lcom/yelp/android/ui/util/aj$c;->a(Ljava/lang/CharSequence;Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v4

    const v5, 0x7f0f0537

    invoke-virtual {v4, v5}, Lcom/yelp/android/ui/util/aj$c;->b(I)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/yelp/android/ui/util/aj$c;->b(Landroid/view/View;)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/yelp/android/ui/util/aj$c;->a(Landroid/view/View;)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yelp/android/ui/util/aj$c;->b()Lcom/yelp/android/ui/util/aj$b;

    move-result-object v4

    invoke-virtual {v3, v7, v4}, Lcom/yelp/android/ui/util/aj;->a(ILcom/yelp/android/ui/util/aj$b;)V

    .line 2196
    new-instance v3, Lcom/yelp/android/ui/util/e;

    new-array v4, v8, [Landroid/view/View;

    invoke-direct {v3, v4}, Lcom/yelp/android/ui/util/e;-><init>([Landroid/view/View;)V

    iput-object v3, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->K:Lcom/yelp/android/ui/util/e;

    .line 2197
    iget-object v3, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->A:Lcom/yelp/android/ui/util/aj;

    const v4, 0x7f0f0012

    invoke-virtual {p0, v7}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->K:Lcom/yelp/android/ui/util/e;

    invoke-static {v5, v6}, Lcom/yelp/android/ui/util/aj$c;->a(Ljava/lang/CharSequence;Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/yelp/android/ui/util/aj$c;->b(Landroid/view/View;)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/yelp/android/ui/util/aj$c;->a(Landroid/view/View;)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/ui/util/aj$c;->b()Lcom/yelp/android/ui/util/aj$b;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Lcom/yelp/android/ui/util/aj;->a(ILcom/yelp/android/ui/util/aj$b;)V

    .line 2205
    new-instance v1, Lcom/yelp/android/ui/util/e;

    new-array v3, v8, [Landroid/view/View;

    invoke-direct {v1, v3}, Lcom/yelp/android/ui/util/e;-><init>([Landroid/view/View;)V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->L:Lcom/yelp/android/ui/util/e;

    .line 2206
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->A:Lcom/yelp/android/ui/util/aj;

    invoke-virtual {p0, v10}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->L:Lcom/yelp/android/ui/util/e;

    invoke-static {v3, v4}, Lcom/yelp/android/ui/util/aj$c;->a(Ljava/lang/CharSequence;Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/yelp/android/ui/util/aj$c;->b(Landroid/view/View;)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/ui/util/aj$c;->b()Lcom/yelp/android/ui/util/aj$b;

    move-result-object v3

    invoke-virtual {v1, v10, v3}, Lcom/yelp/android/ui/util/aj;->a(ILcom/yelp/android/ui/util/aj$b;)V

    .line 2212
    new-instance v1, Lcom/yelp/android/ui/util/e;

    new-array v3, v8, [Landroid/view/View;

    invoke-direct {v1, v3}, Lcom/yelp/android/ui/util/e;-><init>([Landroid/view/View;)V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->M:Lcom/yelp/android/ui/util/e;

    .line 2213
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->A:Lcom/yelp/android/ui/util/aj;

    const v3, 0x7f0f001d

    invoke-virtual {p0, v7}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->M:Lcom/yelp/android/ui/util/e;

    invoke-static {v4, v5}, Lcom/yelp/android/ui/util/aj$c;->a(Ljava/lang/CharSequence;Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/yelp/android/ui/util/aj$c;->b(Landroid/view/View;)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/ui/util/aj$c;->b()Lcom/yelp/android/ui/util/aj$b;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/yelp/android/ui/util/aj;->a(ILcom/yelp/android/ui/util/aj$b;)V

    .line 2219
    if-nez v0, :cond_0

    .line 2220
    iput-boolean v9, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aq:Z

    .line 2222
    :cond_0
    return-void
.end method

.method private Q()Ljava/util/ArrayList;
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
    .line 2230
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2231
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aW:Ljava/util/LinkedHashMap;

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

    check-cast v0, Lcom/yelp/android/ui/activities/reviewpage/e;

    .line 2232
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/e;->a()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/e;->b()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2233
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/e;->c()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2236
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->P:Lcom/yelp/android/ui/activities/reviewpage/e;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/e;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->P:Lcom/yelp/android/ui/activities/reviewpage/e;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/e;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2238
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->P:Lcom/yelp/android/ui/activities/reviewpage/e;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/e;->c()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2240
    :cond_2
    return-object v1
.end method

.method private R()V
    .locals 5

    .prologue
    .line 2244
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->aX()Lcom/yelp/android/serializable/HealthData;

    move-result-object v0

    .line 2245
    if-nez v0, :cond_0

    .line 2280
    :goto_0
    return-void

    .line 2250
    :cond_0
    const/4 v1, 0x3

    invoke-virtual {v0}, Lcom/yelp/android/serializable/HealthData;->d()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2252
    invoke-virtual {v0}, Lcom/yelp/android/serializable/HealthData;->d()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    .line 2255
    new-instance v2, Lcom/yelp/android/ui/activities/businesspage/f;

    invoke-direct {v2}, Lcom/yelp/android/ui/activities/businesspage/f;-><init>()V

    .line 2256
    invoke-virtual {v2, v1}, Lcom/yelp/android/ui/activities/businesspage/f;->a(Ljava/util/List;)V

    .line 2259
    new-instance v1, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$11;

    invoke-direct {v1, p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$11;-><init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Lcom/yelp/android/serializable/HealthData;)V

    .line 2268
    invoke-virtual {v0}, Lcom/yelp/android/serializable/HealthData;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v3}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Ljava/lang/String;Landroid/view/View$OnClickListener;Z)Landroid/view/View;

    move-result-object v1

    .line 2269
    const v0, 0x7f0f00a9

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0900ce

    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 2272
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->A:Lcom/yelp/android/ui/util/aj;

    const v3, 0x7f0f000c

    invoke-static {v2}, Lcom/yelp/android/ui/util/aj$c;->a(Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/ui/util/aj$c;->a()Lcom/yelp/android/ui/util/aj$c;

    move-result-object v2

    const v4, 0x7f0101cc

    invoke-virtual {v2, v4}, Lcom/yelp/android/ui/util/aj$c;->a(I)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v2

    const v4, 0x7f070532

    invoke-virtual {p0, v4}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/yelp/android/ui/util/aj$c;->a(Ljava/lang/CharSequence;)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/yelp/android/ui/util/aj$c;->a(Landroid/view/View;)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/ui/util/aj$c;->b()Lcom/yelp/android/ui/util/aj$b;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/yelp/android/ui/util/aj;->a(ILcom/yelp/android/ui/util/aj$b;)V

    goto :goto_0
.end method

.method private S()V
    .locals 9

    .prologue
    const v8, 0x7f0f0437

    const/4 v7, 0x1

    const v6, 0x7f0704d9

    const/4 v1, 0x0

    .line 2283
    new-instance v0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$13;

    sget-object v2, Lcom/yelp/android/analytics/iris/EventIri;->BusinessMoreReviewsClicked:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-direct {v0, p0, v2}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$13;-><init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Lcom/yelp/android/analytics/iris/EventIri;)V

    .line 2294
    const v2, 0x7f0703e2

    invoke-virtual {p0, v2}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v0, v7}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Ljava/lang/String;Landroid/view/View$OnClickListener;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aU:Landroid/view/View;

    .line 2297
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aD()Z

    move-result v0

    .line 2298
    if-eqz v0, :cond_0

    .line 2299
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->A:Lcom/yelp/android/ui/util/aj;

    const v2, 0x7f070195

    invoke-virtual {p0, v6}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/yelp/android/ui/util/e;

    new-array v5, v1, [Landroid/view/View;

    invoke-direct {v4, v5}, Lcom/yelp/android/ui/util/e;-><init>([Landroid/view/View;)V

    invoke-static {v3, v4}, Lcom/yelp/android/ui/util/aj$c;->a(Ljava/lang/CharSequence;Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v3

    const v4, 0x7f0101cc

    invoke-virtual {v3, v4}, Lcom/yelp/android/ui/util/aj$c;->a(I)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/ui/util/aj$c;->b()Lcom/yelp/android/ui/util/aj$b;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/yelp/android/ui/util/aj;->a(ILcom/yelp/android/ui/util/aj$b;)V

    .line 2313
    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aW:Ljava/util/LinkedHashMap;

    .line 2316
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    .line 2317
    const v0, 0x7f0f0018

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 2318
    const v0, 0x7f0f0019

    invoke-virtual {v2, v7, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 2319
    const/4 v0, 0x2

    const v3, 0x7f0f001a

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2320
    const/4 v0, 0x3

    const v3, 0x7f0f001b

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseIntArray;->put(II)V

    move v0, v1

    .line 2324
    :goto_0
    const/4 v3, 0x4

    if-ge v0, v3, :cond_1

    .line 2326
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->T()Landroid/view/View;

    move-result-object v3

    .line 2327
    new-instance v4, Lcom/yelp/android/ui/activities/reviewpage/e;

    invoke-direct {v4}, Lcom/yelp/android/ui/activities/reviewpage/e;-><init>()V

    .line 2328
    invoke-virtual {p0, v6}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/yelp/android/ui/util/aj$c;->a(Ljava/lang/CharSequence;Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/yelp/android/ui/util/aj$c;->b(I)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/yelp/android/ui/util/aj$c;->b(Landroid/view/View;)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/ui/util/aj$c;->b()Lcom/yelp/android/ui/util/aj$b;

    move-result-object v3

    .line 2333
    iget-object v5, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aW:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v4, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2334
    iget-object v4, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->A:Lcom/yelp/android/ui/util/aj;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    invoke-virtual {v4, v5, v3}, Lcom/yelp/android/ui/util/aj;->a(ILcom/yelp/android/ui/util/aj$b;)V

    .line 2324
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2338
    :cond_1
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->T()Landroid/view/View;

    move-result-object v0

    .line 2341
    new-instance v2, Lcom/yelp/android/ui/activities/reviewpage/e;

    invoke-direct {v2}, Lcom/yelp/android/ui/activities/reviewpage/e;-><init>()V

    iput-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->P:Lcom/yelp/android/ui/activities/reviewpage/e;

    .line 2342
    invoke-virtual {p0, v6}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->P:Lcom/yelp/android/ui/activities/reviewpage/e;

    invoke-static {v2, v3}, Lcom/yelp/android/ui/util/aj$c;->a(Ljava/lang/CharSequence;Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/yelp/android/ui/util/aj$c;->b(I)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/yelp/android/ui/util/aj$c;->b(Landroid/view/View;)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aU:Landroid/view/View;

    invoke-virtual {v2, v3}, Lcom/yelp/android/ui/util/aj$c;->a(Landroid/view/View;)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/ui/util/aj$c;->b()Lcom/yelp/android/ui/util/aj$b;

    move-result-object v2

    iput-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aX:Lcom/yelp/android/ui/util/aj$b;

    .line 2349
    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->A:Lcom/yelp/android/ui/util/aj;

    const v3, 0x7f070510

    iget-object v4, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aX:Lcom/yelp/android/ui/util/aj$b;

    invoke-virtual {v2, v3, v4}, Lcom/yelp/android/ui/util/aj;->a(ILcom/yelp/android/ui/util/aj$b;)V

    .line 2351
    new-instance v2, Lcom/yelp/android/ui/util/e;

    new-array v3, v1, [Landroid/view/View;

    invoke-direct {v2, v3}, Lcom/yelp/android/ui/util/e;-><init>([Landroid/view/View;)V

    iput-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->Q:Lcom/yelp/android/ui/util/e;

    .line 2352
    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->A:Lcom/yelp/android/ui/util/aj;

    const v3, 0x7f070434

    const v4, 0x7f070430

    invoke-virtual {p0, v4}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->Q:Lcom/yelp/android/ui/util/e;

    invoke-static {v4, v5}, Lcom/yelp/android/ui/util/aj$c;->a(Ljava/lang/CharSequence;Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/yelp/android/ui/util/aj$c;->b(Landroid/view/View;)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yelp/android/ui/util/aj$c;->b()Lcom/yelp/android/ui/util/aj$b;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/yelp/android/ui/util/aj;->a(ILcom/yelp/android/ui/util/aj$b;)V

    .line 2359
    new-instance v2, Lcom/yelp/android/ui/util/e;

    new-array v1, v1, [Landroid/view/View;

    invoke-direct {v2, v1}, Lcom/yelp/android/ui/util/e;-><init>([Landroid/view/View;)V

    iput-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->R:Lcom/yelp/android/ui/util/e;

    .line 2360
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->A:Lcom/yelp/android/ui/util/aj;

    const v2, 0x7f0f001c

    invoke-virtual {p0, v6}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->R:Lcom/yelp/android/ui/util/e;

    invoke-static {v3, v4}, Lcom/yelp/android/ui/util/aj$c;->a(Ljava/lang/CharSequence;Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/yelp/android/ui/util/aj$c;->b(Landroid/view/View;)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/aj$c;->b()Lcom/yelp/android/ui/util/aj$b;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/yelp/android/ui/util/aj;->a(ILcom/yelp/android/ui/util/aj$b;)V

    .line 2366
    return-void
.end method

.method private T()Landroid/view/View;
    .locals 4

    .prologue
    const v3, 0x7f0705a1

    const/4 v2, 0x0

    .line 2369
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->U()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2371
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->w()Lcom/yelp/android/ui/activities/reviews/ReviewState;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/ui/activities/reviews/ReviewState;->NOT_STARTED:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    if-ne v0, v1, :cond_0

    .line 2372
    invoke-virtual {p0, v3}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Ljava/lang/String;I)Landroid/view/View;

    move-result-object v0

    .line 2380
    :goto_0
    return-object v0

    .line 2373
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->w()Lcom/yelp/android/ui/activities/reviews/ReviewState;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/ui/activities/reviews/ReviewState;->DRAFTED:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    if-ne v0, v1, :cond_1

    .line 2374
    const v0, 0x7f0702d5

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->H()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Ljava/lang/String;I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 2378
    :cond_1
    invoke-virtual {p0, v3}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Ljava/lang/String;I)Landroid/view/View;

    move-result-object v0

    .line 2379
    const v1, 0x7f0f024e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private U()Z
    .locals 2

    .prologue
    .line 2390
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->w()Lcom/yelp/android/ui/activities/reviews/ReviewState;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/ui/activities/reviews/ReviewState;->NOT_STARTED:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->w()Lcom/yelp/android/ui/activities/reviews/ReviewState;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/ui/activities/reviews/ReviewState;->DRAFTED:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private V()V
    .locals 12

    .prologue
    const v11, 0x7f07041d

    const/4 v2, 0x1

    const v10, 0x7f0701b4

    const v9, 0x7f0101cc

    const/4 v1, 0x0

    .line 2395
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->K()I

    move-result v3

    .line 2396
    new-instance v4, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$14;

    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BusinessMoreRegularsClicked:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v5, "button"

    invoke-direct {v4, p0, v0, v5}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$14;-><init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Lcom/yelp/android/analytics/iris/EventIri;Ljava/lang/String;)V

    .line 2406
    const/4 v0, 0x3

    if-le v3, v0, :cond_1

    add-int/lit8 v0, v3, -0x3

    .line 2407
    :goto_0
    iget-object v5, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->A:Lcom/yelp/android/ui/util/aj;

    invoke-virtual {p0, v10}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->W:Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter;

    invoke-static {v6, v7}, Lcom/yelp/android/ui/util/aj$c;->a(Ljava/lang/CharSequence;Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v6

    const v7, 0x7f0f04d4

    invoke-virtual {v6, v7}, Lcom/yelp/android/ui/util/aj$c;->b(I)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/yelp/android/ui/util/aj$c;->a(I)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v6

    const v7, 0x7f080017

    const v8, 0x7f0703e1

    invoke-direct {p0, v7, v8, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(III)Ljava/lang/String;

    move-result-object v7

    if-lez v0, :cond_2

    move v0, v2

    :goto_1
    invoke-direct {p0, v7, v4, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Ljava/lang/String;Landroid/view/View$OnClickListener;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/yelp/android/ui/util/aj$c;->a(Landroid/view/View;)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/aj$c;->b()Lcom/yelp/android/ui/util/aj$b;

    move-result-object v0

    invoke-virtual {v5, v10, v0}, Lcom/yelp/android/ui/util/aj;->a(ILcom/yelp/android/ui/util/aj$b;)V

    .line 2422
    new-instance v0, Lcom/yelp/android/ui/util/e;

    new-array v4, v1, [Landroid/view/View;

    invoke-direct {v0, v4}, Lcom/yelp/android/ui/util/e;-><init>([Landroid/view/View;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->X:Lcom/yelp/android/ui/util/e;

    .line 2423
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->A:Lcom/yelp/android/ui/util/aj;

    invoke-virtual {p0, v11}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->X:Lcom/yelp/android/ui/util/e;

    invoke-static {v4, v5}, Lcom/yelp/android/ui/util/aj$c;->a(Ljava/lang/CharSequence;Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/yelp/android/ui/util/aj$c;->a(I)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yelp/android/ui/util/aj$c;->b()Lcom/yelp/android/ui/util/aj$b;

    move-result-object v4

    invoke-virtual {v0, v11, v4}, Lcom/yelp/android/ui/util/aj;->a(ILcom/yelp/android/ui/util/aj$b;)V

    .line 2430
    new-instance v0, Lcom/yelp/android/ui/util/e;

    new-array v1, v1, [Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/yelp/android/ui/util/e;-><init>([Landroid/view/View;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->Y:Lcom/yelp/android/ui/util/e;

    .line 2431
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->A:Lcom/yelp/android/ui/util/aj;

    const v1, 0x7f0f0017

    invoke-virtual {p0, v10}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->Y:Lcom/yelp/android/ui/util/e;

    invoke-static {v4, v5}, Lcom/yelp/android/ui/util/aj$c;->a(Ljava/lang/CharSequence;Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/yelp/android/ui/util/aj$c;->a(I)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yelp/android/ui/util/aj$c;->b()Lcom/yelp/android/ui/util/aj$b;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/yelp/android/ui/util/aj;->a(ILcom/yelp/android/ui/util/aj$b;)V

    .line 2438
    if-nez v3, :cond_0

    .line 2439
    iput-boolean v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ar:Z

    .line 2441
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 2406
    goto :goto_0

    :cond_2
    move v0, v1

    .line 2407
    goto :goto_1
.end method

.method private W()V
    .locals 4

    .prologue
    .line 2444
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ab:Lcom/yelp/android/ui/util/e;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/e;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 2464
    :goto_0
    return-void

    .line 2448
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030151

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 2452
    const v1, 0x7f0f0478

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2453
    new-instance v2, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$15;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$15;-><init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2462
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ab:Lcom/yelp/android/ui/util/e;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/util/e;->b(Landroid/view/View;)V

    .line 2463
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->g:Lcom/yelp/android/ui/activities/businesspage/ClaimButtonAdapter;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ac:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/businesspage/ClaimButtonAdapter;->a(Lcom/yelp/android/serializable/YelpBusiness;Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method private X()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2467
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aV:Landroid/view/View;

    if-nez v0, :cond_0

    .line 2468
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03018d

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aV:Landroid/view/View;

    .line 2473
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aV:Landroid/view/View;

    const v1, 0x7f0f00a9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2474
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f08002b

    iget v3, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->V:I

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v4}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2479
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aV:Landroid/view/View;

    new-instance v1, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$16;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$16;-><init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2504
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->x:Lcom/yelp/android/ui/util/e;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/e;->clear()V

    .line 2505
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->x:Lcom/yelp/android/ui/util/e;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aV:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/e;->b(Landroid/view/View;)V

    .line 2506
    return-void
.end method

.method private Y()V
    .locals 5

    .prologue
    .line 2509
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->A:Lcom/yelp/android/ui/util/aj;

    const v1, 0x7f070195

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/aj;->a(I)Lcom/yelp/android/ui/util/aj$b;

    move-result-object v0

    .line 2511
    if-nez v0, :cond_1

    .line 2556
    :cond_0
    :goto_0
    return-void

    .line 2514
    :cond_1
    iget-object v0, v0, Lcom/yelp/android/ui/util/aj$b;->a:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/yelp/android/ui/util/e;

    .line 2515
    invoke-virtual {v0}, Lcom/yelp/android/ui/util/e;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2516
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03006e

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 2519
    new-instance v2, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$17;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$17;-><init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2537
    const v2, 0x7f0f022e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$18;

    invoke-direct {v3, p0, v0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$18;-><init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Lcom/yelp/android/ui/util/e;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2554
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/e;->b(Landroid/view/View;)V

    goto :goto_0
.end method

.method private Z()V
    .locals 3

    .prologue
    .line 2572
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->x()V

    .line 2574
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->y:Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;->a(Lcom/yelp/android/serializable/YelpBusiness;)V

    .line 2575
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->i:Lcom/yelp/android/ui/activities/businesspage/e;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/businesspage/e;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)V

    .line 2576
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->j:Lcom/yelp/android/ui/activities/businesspage/c;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/businesspage/c;->a(Lcom/yelp/android/serializable/YelpBusiness;)V

    .line 2577
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->k:Lcom/yelp/android/ui/activities/businesspage/c;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/businesspage/c;->a(Lcom/yelp/android/serializable/YelpBusiness;)V

    .line 2579
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->f:Lcom/yelp/android/ui/activities/businesspage/c;

    if-eqz v0, :cond_0

    .line 2580
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->f:Lcom/yelp/android/ui/activities/businesspage/c;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/businesspage/c;->a(Lcom/yelp/android/serializable/YelpBusiness;)V

    .line 2583
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->c:Lcom/yelp/android/ui/panels/businesspage/b;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/businesspage/b;->b(Lcom/yelp/android/serializable/YelpBusiness;)V

    .line 2584
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->c:Lcom/yelp/android/ui/panels/businesspage/b;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->U()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/businesspage/b;->setBookmarkChecked(Z)V

    .line 2587
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->i()Lcom/yelp/android/database/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/database/g;->d()Lcom/yelp/android/database/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0, v1}, Lcom/yelp/android/database/b;->c(Lcom/yelp/android/serializable/YelpBusiness;)Landroid/os/AsyncTask;

    .line 2592
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.contributing"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 2593
    if-ltz v0, :cond_1

    invoke-static {}, Lcom/yelp/android/appdata/BusinessContributionType;->values()[Lcom/yelp/android/appdata/BusinessContributionType;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 2594
    sget-object v1, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$59;->a:[I

    invoke-static {}, Lcom/yelp/android/appdata/BusinessContributionType;->values()[Lcom/yelp/android/appdata/BusinessContributionType;

    move-result-object v2

    aget-object v0, v2, v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/BusinessContributionType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 2606
    :cond_1
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aB:Z

    .line 2607
    return-void

    .line 2596
    :pswitch_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->h()V

    goto :goto_0

    .line 2599
    :pswitch_1
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ao()V

    goto :goto_0

    .line 2602
    :pswitch_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 2594
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;I)I
    .locals 0

    .prologue
    .line 275
    iput p1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->V:I

    return p1
.end method

.method private a(IILandroid/view/View$OnClickListener;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1527
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030079

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 1532
    const v0, 0x7f0f0254

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1533
    invoke-virtual {v0, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1535
    const v0, 0x7f0f0255

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1537
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1538
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1540
    return-object v1
.end method

.method private a(Ljava/lang/String;I)Landroid/view/View;
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/16 v9, 0x8

    .line 1386
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030076

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 1390
    const v0, 0x7f0f025a

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/WebImageView;

    .line 1392
    const v1, 0x7f0f0251

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1393
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1394
    invoke-virtual {v1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    check-cast v1, Landroid/graphics/drawable/LevelListDrawable;

    .line 1395
    invoke-virtual {v1, p2}, Landroid/graphics/drawable/LevelListDrawable;->setLevel(I)Z

    .line 1397
    const v1, 0x7f0f024e

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$3;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$3;-><init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1408
    const v1, 0x7f0f025c

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1409
    const v2, 0x7f0f0250

    invoke-virtual {v6, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1410
    const v3, 0x7f0f04fa

    invoke-virtual {v6, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1411
    const v4, 0x7f0f04fb

    invoke-virtual {v6, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1412
    const v5, 0x7f0f043c

    invoke-virtual {v6, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 1413
    const v7, 0x7f0f024f

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 1415
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v8

    invoke-virtual {v8}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v8

    invoke-virtual {v8}, Lcom/yelp/android/appdata/webrequests/co;->p()Lcom/yelp/android/serializable/User;

    move-result-object v8

    .line 1416
    if-nez v8, :cond_0

    .line 1418
    invoke-virtual {v0, v9}, Lcom/yelp/android/ui/widgets/WebImageView;->setVisibility(I)V

    .line 1419
    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1420
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1421
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1422
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1423
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1424
    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1442
    :goto_0
    return-object v6

    .line 1426
    :cond_0
    invoke-virtual {v8}, Lcom/yelp/android/serializable/User;->k_()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1427
    invoke-virtual {v8}, Lcom/yelp/android/serializable/User;->j_()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1428
    invoke-virtual {v8}, Lcom/yelp/android/serializable/User;->n_()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1430
    invoke-virtual {v8}, Lcom/yelp/android/serializable/User;->h()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1431
    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1432
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070281

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/yelp/android/serializable/User;->j()Ljava/util/Date;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1439
    :goto_1
    invoke-virtual {v8}, Lcom/yelp/android/serializable/User;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageUrl(Ljava/lang/String;)V

    .line 1440
    invoke-virtual {v8}, Lcom/yelp/android/serializable/User;->ad()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1437
    :cond_1
    const/4 v2, 0x4

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method private a(Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/view/View;
    .locals 4

    .prologue
    .line 1544
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030075

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 1549
    const v0, 0x7f0f024a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1551
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1553
    const v0, 0x7f0f024b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1554
    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1556
    return-object v1
.end method

.method private a(Ljava/lang/String;Landroid/view/View$OnClickListener;Z)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1476
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030077

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 1481
    const v1, 0x7f0f001f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1482
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1483
    invoke-direct {p0, v0, p3, p1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Landroid/view/View;ZLjava/lang/String;)V

    .line 1484
    invoke-virtual {v1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1485
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1490
    :goto_0
    return-object v0

    .line 1487
    :cond_0
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Lcom/yelp/android/appdata/webrequests/av;)Lcom/yelp/android/appdata/webrequests/av;
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->bf:Lcom/yelp/android/appdata/webrequests/av;

    return-object p1
.end method

.method public static a(Lcom/yelp/android/serializable/YelpBusiness;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/SearchRequest;)Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;
    .locals 3

    .prologue
    .line 547
    new-instance v0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;-><init>()V

    .line 548
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 549
    const-string/jumbo v2, "extra.business"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 550
    if-eqz p1, :cond_0

    .line 551
    const-string/jumbo v2, "top_highlighted_review_id"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    :cond_0
    if-eqz p2, :cond_1

    .line 555
    const-string/jumbo v2, "search_request"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 557
    :cond_1
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->setArguments(Landroid/os/Bundle;)V

    .line 558
    return-object v0
.end method

.method public static a(Lcom/yelp/android/serializable/YelpBusiness;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/SearchRequest;Lcom/yelp/android/serializable/BusinessSearchResult;)Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;
    .locals 3

    .prologue
    .line 566
    invoke-static {p0, p1, p2}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Lcom/yelp/android/serializable/YelpBusiness;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/SearchRequest;)Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    move-result-object v0

    .line 568
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 569
    if-eqz p3, :cond_0

    .line 570
    const-string/jumbo v2, "business_search_result"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 572
    :cond_0
    return-object v0
.end method

.method public static a(Lcom/yelp/android/serializable/YelpBusiness;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/SearchRequest;Lcom/yelp/android/serializable/BusinessSearchResult;Lcom/yelp/android/serializable/YelpCheckIn;)Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;
    .locals 3

    .prologue
    .line 581
    invoke-static {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Lcom/yelp/android/serializable/YelpBusiness;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/SearchRequest;Lcom/yelp/android/serializable/BusinessSearchResult;)Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    move-result-object v0

    .line 584
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 585
    const-string/jumbo v2, "extra.check_in"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 586
    return-object v0
.end method

.method public static a(Lcom/yelp/android/serializable/YelpBusiness;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/SearchRequest;Lcom/yelp/android/serializable/BusinessSearchResult;Lcom/yelp/android/serializable/YelpCheckIn;Landroid/content/Intent;)Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;
    .locals 3

    .prologue
    .line 596
    invoke-static {p0, p1, p2, p3, p4}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Lcom/yelp/android/serializable/YelpBusiness;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/SearchRequest;Lcom/yelp/android/serializable/BusinessSearchResult;Lcom/yelp/android/serializable/YelpCheckIn;)Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    move-result-object v0

    .line 604
    if-eqz p5, :cond_0

    .line 605
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "message_the_business_notification"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 609
    :cond_0
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Lcom/yelp/android/ui/activities/reviews/ReviewSource;)Lcom/yelp/android/ui/activities/reviews/ReviewSource;
    .locals 1

    .prologue
    .line 275
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->b(Lcom/yelp/android/ui/activities/reviews/ReviewSource;)Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Lcom/yelp/android/ui/dialogs/YelpProgressDialogFragment;)Lcom/yelp/android/ui/dialogs/YelpProgressDialogFragment;
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aN:Lcom/yelp/android/ui/dialogs/YelpProgressDialogFragment;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ac:Ljava/lang/Boolean;

    return-object p1
.end method

.method private a(III)Ljava/lang/String;
    .locals 2

    .prologue
    .line 4472
    if-lez p3, :cond_0

    .line 4473
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, p3, v1}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 4475
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
    .line 275
    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aa:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ag:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->au:Ljava/util/Map;

    return-object p1
.end method

.method private a(Landroid/content/Context;Lcom/yelp/android/analytics/iris/EventIri;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 2731
    invoke-direct {p0, p2, p3}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->c(Lcom/yelp/android/analytics/iris/EventIri;Ljava/lang/String;)Lcom/yelp/android/analytics/g$a;

    move-result-object v0

    .line 2732
    invoke-static {p1, v0}, Lcom/yelp/android/analytics/h;->a(Landroid/content/Context;Lcom/yelp/android/analytics/g$a;)V

    .line 2733
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aF:Lcom/yelp/android/appdata/webrequests/core/MetricsManager;

    invoke-virtual {v0}, Lcom/yelp/android/analytics/g$a;->a()Lcom/yelp/android/analytics/g;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->a(Lcom/yelp/android/analytics/b;)V

    .line 2734
    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1946
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030074

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 1950
    const v0, 0x7f0f0220

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/map/MapSpannableLinearLayout;

    .line 1954
    invoke-virtual {v0}, Lcom/yelp/android/ui/map/MapSpannableLinearLayout;->getYelpMap()Lcom/yelp/android/ui/map/YelpMap;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aP:Lcom/yelp/android/ui/map/YelpMap;

    .line 1956
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    new-instance v2, Lcom/yelp/android/ui/map/b;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/yelp/android/ui/map/b;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/YelpBusiness;->B()I

    move-result v3

    invoke-static {}, Lcom/yelp/android/util/f;->a()Z

    move-result v5

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/yelp/android/ui/map/MapSpannableLinearLayout;->a(Lcom/yelp/android/serializable/f;Lcom/yelp/android/ui/map/e;ILandroid/os/Bundle;Z)Z

    move-result v1

    .line 1963
    if-nez v1, :cond_0

    .line 1965
    invoke-virtual {v0}, Lcom/yelp/android/ui/map/MapSpannableLinearLayout;->a()V

    .line 1966
    const v1, 0x7f0f0249

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1968
    const v2, 0x7f0f0246

    invoke-virtual {v6, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 1969
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1970
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1973
    :cond_0
    new-instance v1, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$6;

    sget-object v2, Lcom/yelp/android/analytics/iris/EventIri;->BusinessMap:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-direct {v1, p0, v2}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$6;-><init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Lcom/yelp/android/analytics/iris/EventIri;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/map/MapSpannableLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1987
    const v1, 0x7f0f0245

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aA:Landroid/view/View;

    .line 1988
    const v1, 0x7f070120

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->m()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yelp/android/ui/util/h;->a(Landroid/view/View;ILjava/lang/String;)V

    .line 1990
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aA:Landroid/view/View;

    const v1, 0x7f0f0247

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->n:Landroid/widget/TextView;

    .line 1991
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aA:Landroid/view/View;

    const v1, 0x7f0f0248

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->o:Landroid/widget/TextView;

    .line 1992
    new-instance v0, Lcom/yelp/android/ui/util/e;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/view/View;

    aput-object v6, v1, v7

    invoke-direct {v0, v1}, Lcom/yelp/android/ui/util/e;-><init>([Landroid/view/View;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->p:Lcom/yelp/android/ui/util/e;

    .line 1994
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->A:Lcom/yelp/android/ui/util/aj;

    const v1, 0x7f0f000f

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->p:Lcom/yelp/android/ui/util/e;

    invoke-static {v2}, Lcom/yelp/android/ui/util/aj$c;->a(Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/ui/util/aj$c;->b()Lcom/yelp/android/ui/util/aj$b;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/util/aj;->a(ILcom/yelp/android/ui/util/aj$b;)V

    .line 1996
    return-void
.end method

.method private a(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1494
    const v0, 0x7f0f024d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1495
    return-void
.end method

.method private a(Landroid/view/View;ZLjava/lang/String;)V
    .locals 3

    .prologue
    .line 1515
    const v0, 0x7f0f00a9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1516
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1517
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1518
    if-eqz p2, :cond_0

    .line 1519
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e002c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1523
    :goto_0
    return-void

    .line 1521
    :cond_0
    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private a(Lcom/yelp/android/analytics/iris/EventIri;)V
    .locals 1

    .prologue
    .line 2687
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Lcom/yelp/android/analytics/iris/EventIri;Ljava/lang/String;)V

    .line 2688
    return-void
.end method

.method private a(Lcom/yelp/android/analytics/iris/EventIri;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 2698
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aF:Lcom/yelp/android/appdata/webrequests/core/MetricsManager;

    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->c(Lcom/yelp/android/analytics/iris/EventIri;Ljava/lang/String;)Lcom/yelp/android/analytics/g$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/analytics/g$a;->a()Lcom/yelp/android/analytics/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->a(Lcom/yelp/android/analytics/b;)V

    .line 2699
    return-void
.end method

.method private a(Lcom/yelp/android/serializable/PlatformSearchAction;Ljava/lang/String;)V
    .locals 15

    .prologue
    .line 3028
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->aH()Lcom/yelp/android/serializable/PlatformAction;

    move-result-object v8

    .line 3029
    if-eqz v8, :cond_3

    .line 3030
    const/4 v7, 0x0

    .line 3031
    new-instance v14, Lcom/yelp/android/g/a;

    invoke-direct {v14}, Lcom/yelp/android/g/a;-><init>()V

    .line 3032
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aD:Lcom/yelp/android/serializable/BusinessSearchResult;

    if-eqz v0, :cond_0

    .line 3033
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aD:Lcom/yelp/android/serializable/BusinessSearchResult;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/BusinessSearchResult;->g()Ljava/lang/String;

    move-result-object v7

    .line 3035
    :cond_0
    invoke-static {v7}, Lcom/yelp/android/util/StringUtils;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3036
    const-string/jumbo v0, "biz_dimension"

    invoke-interface {v14, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3038
    :cond_1
    const-string/jumbo v0, "supported_vertical_types"

    invoke-virtual {v8}, Lcom/yelp/android/serializable/PlatformAction;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v14, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3039
    const-string/jumbo v0, "id"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v14, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3041
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->al()Ljava/lang/String;

    move-result-object v11

    .line 3042
    invoke-static {v11}, Lcom/yelp/android/util/StringUtils;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3043
    const-string/jumbo v0, "search_request_id"

    invoke-interface {v14, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3046
    :cond_2
    if-eqz p1, :cond_4

    .line 3047
    const-string/jumbo v0, "source"

    const-string/jumbo v1, "promoted"

    invoke-interface {v14, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3048
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/yelp/android/serializable/PlatformSearchAction;->o()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const v2, 0x7f070379

    invoke-virtual {p0, v2}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/yelp/android/analytics/iris/ViewIri;->OpenURL:Lcom/yelp/android/analytics/iris/ViewIri;

    sget-object v4, Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;->EVENTS:Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;

    invoke-static {v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v4

    sget-object v5, Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;->FINISH_ON_UP:Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;

    const v6, 0x7f070693

    invoke-virtual/range {p1 .. p1}, Lcom/yelp/android/serializable/PlatformSearchAction;->m()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "source_business_page"

    iget-object v10, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v10}, Lcom/yelp/android/serializable/YelpBusiness;->z()Ljava/lang/String;

    move-result-object v10

    iget-object v12, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v12}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcom/yelp/android/serializable/PlatformSearchAction;->k()Ljava/util/HashMap;

    move-result-object v13

    invoke-static/range {v0 .. v13}, Lcom/yelp/android/ui/activities/support/PlatformWebViewActivity;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Lcom/yelp/android/analytics/iris/ViewIri;Ljava/util/EnumSet;Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Landroid/content/Intent;

    move-result-object v0

    .line 3082
    :goto_0
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->BusinessPlatformOpen:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v1, v14}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 3083
    const/16 v1, 0x417

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 3085
    :cond_3
    return-void

    .line 3065
    :cond_4
    if-eqz p2, :cond_5

    .line 3066
    :goto_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const v2, 0x7f070379

    invoke-virtual {p0, v2}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/yelp/android/analytics/iris/ViewIri;->OpenURL:Lcom/yelp/android/analytics/iris/ViewIri;

    sget-object v4, Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;->EVENTS:Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;

    invoke-static {v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v4

    sget-object v5, Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;->FINISH_ON_UP:Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;

    const v6, 0x7f070693

    invoke-virtual {v8}, Lcom/yelp/android/serializable/PlatformAction;->b()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "source_business_page"

    iget-object v10, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v10}, Lcom/yelp/android/serializable/YelpBusiness;->z()Ljava/lang/String;

    move-result-object v10

    iget-object v12, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v12}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v12

    invoke-static/range {v0 .. v12}, Lcom/yelp/android/ui/activities/support/PlatformWebViewActivity;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Lcom/yelp/android/analytics/iris/ViewIri;Ljava/util/EnumSet;Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    .line 3065
    :cond_5
    invoke-virtual {v8}, Lcom/yelp/android/serializable/PlatformAction;->f()Ljava/lang/String;

    move-result-object p2

    goto :goto_1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V
    .locals 0

    .prologue
    .line 275
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ao()V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Lcom/yelp/android/analytics/iris/EventIri;)V
    .locals 0

    .prologue
    .line 275
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Lcom/yelp/android/analytics/iris/EventIri;)V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Lcom/yelp/android/analytics/iris/EventIri;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 275
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Lcom/yelp/android/analytics/iris/EventIri;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Lcom/yelp/android/serializable/PlatformSearchAction;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 275
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Lcom/yelp/android/serializable/PlatformSearchAction;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 275
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->k(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Ljava/util/EnumSet;)V
    .locals 0

    .prologue
    .line 275
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Ljava/util/EnumSet;)V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Ljava/util/List;I)V
    .locals 0

    .prologue
    .line 275
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Ljava/util/List;I)V

    return-void
.end method

.method private a(Lcom/yelp/android/ui/activities/reviewpage/b;Ljava/util/List;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/ui/activities/reviewpage/b;",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/LocalAd;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 1601
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->aY()Lcom/yelp/android/serializable/FromThisBusiness;

    move-result-object v0

    .line 1602
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/yelp/android/serializable/FromThisBusiness;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1609
    invoke-virtual {p1}, Lcom/yelp/android/ui/activities/reviewpage/b;->clear()V

    .line 1610
    invoke-virtual {p1}, Lcom/yelp/android/ui/activities/reviewpage/b;->notifyDataSetChanged()V

    .line 1675
    :cond_0
    :goto_0
    return-void

    .line 1615
    :cond_1
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1616
    :cond_2
    if-eqz p3, :cond_3

    .line 1617
    iput-boolean v8, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aT:Z

    .line 1618
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aa()V

    .line 1621
    :cond_3
    invoke-virtual {p1}, Lcom/yelp/android/ui/activities/reviewpage/b;->clear()V

    .line 1622
    invoke-virtual {p1}, Lcom/yelp/android/ui/activities/reviewpage/b;->notifyDataSetChanged()V

    goto :goto_0

    .line 1628
    :cond_4
    invoke-virtual {p1}, Lcom/yelp/android/ui/activities/reviewpage/b;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1632
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->e()Ljava/lang/String;

    move-result-object v4

    .line 1634
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/LocalAd;

    .line 1636
    iget-object v3, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aF:Lcom/yelp/android/appdata/webrequests/core/MetricsManager;

    sget-object v6, Lcom/yelp/android/analytics/iris/EventIri;->AdBusinessImpression:Lcom/yelp/android/analytics/iris/EventIri;

    iget-object v7, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0, v7, v2}, Lcom/yelp/android/serializable/LocalAd;->a(Lcom/yelp/android/serializable/YelpBusiness;Z)Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 1643
    invoke-virtual {v0}, Lcom/yelp/android/serializable/LocalAd;->a()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 1644
    invoke-virtual {v0}, Lcom/yelp/android/serializable/LocalAd;->a()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/serializable/YelpBusiness;->aV()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v3, v1

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/Category;

    .line 1645
    invoke-virtual {v1}, Lcom/yelp/android/serializable/Category;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1646
    add-int/lit8 v1, v3, 0x1

    :goto_3
    move v3, v1

    .line 1648
    goto :goto_2

    .line 1649
    :cond_5
    invoke-virtual {v0}, Lcom/yelp/android/serializable/LocalAd;->a()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/appdata/webrequests/TrackOfflineAttributionRequest$OfflineAttributionEventType;->AD_IMPRESSION:Lcom/yelp/android/appdata/webrequests/TrackOfflineAttributionRequest$OfflineAttributionEventType;

    invoke-static {v0, v1}, Lcom/yelp/android/appdata/webrequests/TrackOfflineAttributionRequest;->a(Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/appdata/webrequests/TrackOfflineAttributionRequest$OfflineAttributionEventType;)Z

    move v0, v3

    :goto_4
    move v1, v0

    .line 1661
    goto :goto_1

    .line 1652
    :cond_6
    const-string/jumbo v3, "AdsFix"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "LocalAd has a null business. business id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v7}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " ad type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/yelp/android/serializable/LocalAd;->k()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "local ad business id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/yelp/android/serializable/LocalAd;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/yelp/android/util/YelpLog;->remoteError(Ljava/lang/Object;Ljava/lang/String;)V

    move v0, v1

    goto :goto_4

    .line 1663
    :cond_7
    if-eqz p3, :cond_8

    const v0, 0x7f0f0006

    .line 1664
    :goto_5
    iget-object v3, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->A:Lcom/yelp/android/ui/util/aj;

    invoke-virtual {v3, v0}, Lcom/yelp/android/ui/util/aj;->a(I)Lcom/yelp/android/ui/util/aj$b;

    move-result-object v0

    .line 1666
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ne v1, v3, :cond_9

    .line 1667
    const v1, 0x7f070474

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v4, v3, v2

    invoke-virtual {p0, v1, v3}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/aj$b;->a(Ljava/lang/CharSequence;)V

    .line 1672
    :goto_6
    invoke-virtual {p1, p2}, Lcom/yelp/android/ui/activities/reviewpage/b;->a(Ljava/util/List;)V

    .line 1673
    invoke-virtual {p1}, Lcom/yelp/android/ui/activities/reviewpage/b;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 1663
    :cond_8
    const v0, 0x7f0f0005

    goto :goto_5

    .line 1669
    :cond_9
    const v1, 0x7f070696

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/aj$b;->a(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_a
    move v1, v3

    goto/16 :goto_3
.end method

.method private a(Lcom/yelp/android/ui/util/aj$b;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/ui/util/aj$b",
            "<",
            "Lcom/yelp/android/ui/activities/reviewpage/e;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 4109
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->U()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/yelp/android/ui/util/aj$b;->e:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 4110
    iget-object v0, p1, Lcom/yelp/android/ui/util/aj$b;->e:Landroid/view/View;

    const v1, 0x7f0f024d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4114
    :goto_0
    return-void

    .line 4112
    :cond_0
    invoke-virtual {p1, p2}, Lcom/yelp/android/ui/util/aj$b;->a(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private a(Lcom/yelp/android/ui/util/aj$c;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/ui/util/aj$c",
            "<",
            "Lcom/yelp/android/ui/util/e;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const v6, 0x7f0205d1

    const/4 v5, 0x0

    .line 1707
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f03006c

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ak:Landroid/view/View;

    .line 1711
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ak:Landroid/view/View;

    const v2, 0x7f0f0222

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->al:Landroid/widget/TextView;

    .line 1714
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->aW()Ljava/util/List;

    move-result-object v0

    .line 1718
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1721
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Attribution;

    .line 1722
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Attribution;->a()Lcom/yelp/android/serializable/Attribution$Type;

    move-result-object v2

    sget-object v3, Lcom/yelp/android/serializable/Attribution$Type;->FOOTER:Lcom/yelp/android/serializable/Attribution$Type;

    if-ne v2, v3, :cond_0

    .line 1723
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Attribution;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    move-object v0, v1

    move-object v1, v2

    .line 1762
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1763
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->al:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1769
    :goto_1
    return-void

    .line 1724
    :cond_0
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Attribution;->a()Lcom/yelp/android/serializable/Attribution$Type;

    move-result-object v0

    sget-object v2, Lcom/yelp/android/serializable/Attribution$Type;->YP_ADS:Lcom/yelp/android/serializable/Attribution$Type;

    if-ne v0, v2, :cond_3

    .line 1728
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->I()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1729
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f030078

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 1737
    new-instance v3, Landroid/text/SpannableStringBuilder;

    const v0, 0x7f0704be

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1739
    const-string/jumbo v0, "%1$s"

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {v3, v0, v4}, Lcom/yelp/android/util/StringUtils;->a(Landroid/text/Spannable;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 1744
    const v0, 0x7f0f0253

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1746
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1748
    invoke-virtual {p1, v2}, Lcom/yelp/android/ui/util/aj$c;->b(Landroid/view/View;)Lcom/yelp/android/ui/util/aj$c;

    move-object v0, v1

    .line 1749
    goto :goto_0

    .line 1750
    :cond_1
    new-instance v1, Landroid/text/SpannableStringBuilder;

    const v0, 0x7f0704ae

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1752
    const-string/jumbo v0, "%1$s"

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/yelp/android/util/StringUtils;->a(Landroid/text/Spannable;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 1756
    const v0, 0x7f070378

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1765
    :cond_2
    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->al:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1766
    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->al:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1767
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->al:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto/16 :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3712
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->aY()Lcom/yelp/android/serializable/FromThisBusiness;

    move-result-object v0

    .line 3713
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/yelp/android/serializable/FromThisBusiness;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3714
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->bs:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-interface {v0, v1, v1}, Lcom/yelp/android/appdata/webrequests/ApiRequest$b;->onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V

    .line 3724
    :cond_0
    :goto_0
    return-void

    .line 3718
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->q:Lcom/yelp/android/appdata/webrequests/cl;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->q:Lcom/yelp/android/appdata/webrequests/cl;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/cl;->u()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3722
    :cond_2
    new-instance v0, Lcom/yelp/android/appdata/webrequests/cl;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->bs:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-direct {v0, p1, p2, v1}, Lcom/yelp/android/appdata/webrequests/cl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->q:Lcom/yelp/android/appdata/webrequests/cl;

    .line 3723
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->q:Lcom/yelp/android/appdata/webrequests/cl;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/cl;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    goto :goto_0
.end method

.method private a(Ljava/util/EnumSet;)V
    .locals 9
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

    .line 1790
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 1798
    new-instance v0, Lcom/yelp/android/ui/activities/businesspage/d;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/businesspage/d;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aC:Lcom/yelp/android/ui/activities/businesspage/d;

    .line 1799
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->c:Lcom/yelp/android/ui/panels/businesspage/b;

    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/businesspage/b;->getAlertsPager()Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aC:Lcom/yelp/android/ui/activities/businesspage/d;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/ac;)V

    .line 1801
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 1802
    const-string/jumbo v0, "com.yelp.android.webview_done"

    invoke-virtual {v5, v0, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 1810
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->aF()Lcom/yelp/android/serializable/Reservation;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1811
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aC:Lcom/yelp/android/ui/activities/businesspage/d;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/businesspage/d;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)V

    .line 1825
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->ba()Lcom/yelp/android/serializable/ContinueLastOrderInfo;

    move-result-object v0

    .line 1826
    if-eqz v0, :cond_1

    if-nez v7, :cond_1

    invoke-virtual {v0}, Lcom/yelp/android/serializable/ContinueLastOrderInfo;->a()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/yelp/android/appdata/Features;->continue_last_order:Lcom/yelp/android/appdata/Features;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/Features;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1830
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aC:Lcom/yelp/android/ui/activities/businesspage/d;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->ba()Lcom/yelp/android/serializable/ContinueLastOrderInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/businesspage/d;->a(Landroid/content/Context;Lcom/yelp/android/serializable/ContinueLastOrderInfo;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$5;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$5;-><init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1867
    :cond_1
    invoke-virtual {p1}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$MessageAlertBoxNotification;

    .line 1868
    iget-object v3, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aC:Lcom/yelp/android/ui/activities/businesspage/d;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$MessageAlertBoxNotification;->getData()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v0, v1, v3, v4}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$MessageAlertBoxNotification;->addNotification(Landroid/content/Context;Lcom/yelp/android/ui/activities/businesspage/d;Landroid/content/Intent;)V

    goto :goto_1

    .line 1812
    :cond_2
    const-string/jumbo v0, "extra.show_logged_out_user_reservation_notification"

    invoke-virtual {v5, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1814
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aC:Lcom/yelp/android/ui/activities/businesspage/d;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/businesspage/d;->b(Landroid/content/Context;)V

    goto :goto_0

    .line 1815
    :cond_3
    if-eqz v7, :cond_0

    .line 1816
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aC:Lcom/yelp/android/ui/activities/businesspage/d;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    const-string/jumbo v3, "com.yelp.android.webview_title"

    invoke-virtual {v5, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "com.yelp.android.webview_subtitle"

    invoke-virtual {v5, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v8, "com.yelp.android.webview_has_details"

    invoke-virtual {v5, v8, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/yelp/android/ui/activities/businesspage/d;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1871
    :cond_4
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->q()Ljava/util/Date;

    move-result-object v0

    .line 1872
    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->ag()Ljava/lang/String;

    move-result-object v2

    .line 1873
    iget-object v3, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/YelpBusiness;->af()Ljava/lang/String;

    move-result-object v3

    .line 1875
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->K()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1878
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aC:Lcom/yelp/android/ui/activities/businesspage/d;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/businesspage/d;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 1902
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->J()I

    move-result v0

    if-eqz v0, :cond_6

    .line 1903
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aC:Lcom/yelp/android/ui/activities/businesspage/d;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/businesspage/d;->b(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)V

    .line 1906
    :cond_6
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->aS()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 1907
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1910
    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    .line 1912
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->aM()Ljava/util/List;

    move-result-object v0

    .line 1913
    iget-object v3, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/YelpBusiness;->d()Ljava/util/TimeZone;

    move-result-object v3

    .line 1914
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lcom/yelp/android/serializable/YelpHoursPair;

    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/serializable/YelpHoursPair;

    .line 1915
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0, v3}, Lcom/yelp/android/services/f;->a(Landroid/content/Context;[Lcom/yelp/android/serializable/YelpHoursPair;Ljava/util/TimeZone;)Lcom/yelp/android/services/f$a;

    move-result-object v0

    .line 1919
    invoke-virtual {v0}, Lcom/yelp/android/services/f$a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 1920
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->aS()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/SpecialHours;

    .line 1921
    invoke-virtual {v0}, Lcom/yelp/android/serializable/SpecialHours;->b()[I

    move-result-object v4

    move v0, v6

    .line 1925
    :goto_4
    array-length v5, v4

    if-ge v0, v5, :cond_7

    .line 1926
    aget v5, v4, v0

    if-ne v5, v2, :cond_d

    .line 1927
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aC:Lcom/yelp/android/ui/activities/businesspage/d;

    iget-object v4, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v4}, Lcom/yelp/android/serializable/YelpBusiness;->ao()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/yelp/android/ui/activities/businesspage/d;->d(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3

    .line 1879
    :cond_8
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->L()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1881
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aC:Lcom/yelp/android/ui/activities/businesspage/d;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/businesspage/d;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1882
    :cond_9
    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->r()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1883
    if-eqz v0, :cond_a

    .line 1886
    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aC:Lcom/yelp/android/ui/activities/businesspage/d;

    invoke-static {v1}, Landroid/text/format/DateFormat;->getLongDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/yelp/android/ui/activities/businesspage/d;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1890
    :cond_a
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aC:Lcom/yelp/android/ui/activities/businesspage/d;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/businesspage/d;->c(Landroid/content/Context;)V

    goto/16 :goto_2

    .line 1892
    :cond_b
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1893
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->V()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1894
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aC:Lcom/yelp/android/ui/activities/businesspage/d;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->aq()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Lcom/yelp/android/ui/activities/businesspage/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1897
    :cond_c
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aC:Lcom/yelp/android/ui/activities/businesspage/d;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->aq()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Lcom/yelp/android/ui/activities/businesspage/d;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1925
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1936
    :cond_e
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aC:Lcom/yelp/android/ui/activities/businesspage/d;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/businesspage/d;->c()V

    .line 1938
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aC:Lcom/yelp/android/ui/activities/businesspage/d;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/businesspage/d;->b()I

    move-result v0

    if-eqz v0, :cond_f

    .line 1939
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->c:Lcom/yelp/android/ui/panels/businesspage/b;

    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/businesspage/b;->getAlertsPager()Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 1943
    :goto_5
    return-void

    .line 1941
    :cond_f
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->c:Lcom/yelp/android/ui/panels/businesspage/b;

    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/businesspage/b;->getAlertsPager()Landroid/support/v4/view/ViewPager;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    goto :goto_5
.end method

.method private a(Ljava/util/EnumSet;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$MessageAlertBoxNotification;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1783
    invoke-virtual {p1}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$MessageAlertBoxNotification;

    .line 1784
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "extra.multiple_media"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$MessageAlertBoxNotification;->setData(Landroid/content/Intent;)Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$MessageAlertBoxNotification;

    goto :goto_0

    .line 1786
    :cond_0
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Ljava/util/EnumSet;)V

    .line 1787
    return-void
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
    .line 3769
    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->I:Ljava/util/List;

    .line 3770
    iput p2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->H:I

    .line 3771
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ao:Z

    .line 3772
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aA()V

    .line 3773
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Z)Z
    .locals 0

    .prologue
    .line 275
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aq:Z

    return p1
.end method

.method private aA()V
    .locals 3

    .prologue
    .line 4260
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->at:Z

    if-eqz v0, :cond_2

    .line 4261
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aB()V

    .line 4262
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->am:Z

    if-eqz v0, :cond_2

    .line 4263
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->r:Lcom/yelp/android/ui/activities/reviewpage/b;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->t:Ljava/util/List;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Lcom/yelp/android/ui/activities/reviewpage/b;Ljava/util/List;Z)V

    .line 4264
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->an:Z

    if-eqz v0, :cond_2

    .line 4265
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->au()V

    .line 4266
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ao:Z

    if-eqz v0, :cond_2

    .line 4267
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->av()V

    .line 4268
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ap:Z

    if-eqz v0, :cond_2

    .line 4269
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aw()V

    .line 4270
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aq:Z

    if-eqz v0, :cond_0

    .line 4271
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ax()V

    .line 4272
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ar:Z

    if-eqz v0, :cond_0

    .line 4273
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ay()V

    .line 4274
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->az()V

    .line 4275
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->s:Lcom/yelp/android/ui/activities/reviewpage/b;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->u:Ljava/util/List;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Lcom/yelp/android/ui/activities/reviewpage/b;Ljava/util/List;Z)V

    .line 4276
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->bc:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$c;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$c;->e()V

    .line 4279
    :cond_0
    iget v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->V:I

    if-lez v0, :cond_1

    .line 4280
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->X()V

    .line 4282
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ac:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ac:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4283
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->W()V

    .line 4290
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->A:Lcom/yelp/android/ui/util/aj;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/aj;->notifyDataSetChanged()V

    .line 4291
    return-void
.end method

.method private aB()V
    .locals 4

    .prologue
    .line 4294
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aj:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ai:Lcom/yelp/android/ui/util/e;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/e;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 4323
    :cond_0
    :goto_0
    return-void

    .line 4298
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300f3

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 4302
    const v1, 0x7f0f0378

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 4303
    new-instance v2, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$41;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$41;-><init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4318
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ai:Lcom/yelp/android/ui/util/e;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/util/e;->b(Landroid/view/View;)V

    .line 4320
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BusinessMessageTheBusinessShown:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v1, "source"

    const-string/jumbo v2, "unclaimed_widget"

    invoke-static {v1, v2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    goto :goto_0
.end method

.method private aC()V
    .locals 3

    .prologue
    .line 4444
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->b:Landroid/view/MenuItem;

    invoke-static {v0}, Landroid/support/v4/view/q;->a(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4445
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f04001d

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 4447
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->b:Landroid/view/MenuItem;

    const v2, 0x7f03001a

    invoke-static {v1, v2}, Landroid/support/v4/view/q;->b(Landroid/view/MenuItem;I)Landroid/view/MenuItem;

    .line 4448
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->b:Landroid/view/MenuItem;

    invoke-static {v1}, Landroid/support/v4/view/q;->a(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 4449
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->b:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 4451
    :cond_0
    return-void
.end method

.method private aD()Z
    .locals 12

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4480
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->f()Lcom/yelp/android/appdata/c;

    move-result-object v3

    .line 4481
    invoke-virtual {v3}, Lcom/yelp/android/appdata/c;->I()Z

    move-result v4

    .line 4483
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v3}, Lcom/yelp/android/appdata/c;->L()J

    move-result-wide v8

    const-wide v10, 0x1cf7c5800L

    add-long/2addr v8, v10

    cmp-long v0, v6, v8

    if-lez v0, :cond_0

    move v0, v1

    .line 4487
    :goto_0
    invoke-virtual {v3}, Lcom/yelp/android/appdata/c;->K()I

    move-result v3

    const/16 v5, 0x3c

    if-le v3, v5, :cond_1

    move v3, v1

    .line 4488
    :goto_1
    if-nez v4, :cond_2

    if-nez v0, :cond_2

    if-nez v3, :cond_2

    :goto_2
    return v1

    :cond_0
    move v0, v2

    .line 4483
    goto :goto_0

    :cond_1
    move v3, v2

    .line 4487
    goto :goto_1

    :cond_2
    move v1, v2

    .line 4488
    goto :goto_2
.end method

.method private aE()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4507
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aD:Lcom/yelp/android/serializable/BusinessSearchResult;

    if-eqz v0, :cond_0

    .line 4508
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aD:Lcom/yelp/android/serializable/BusinessSearchResult;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/BusinessSearchResult;->g()Ljava/lang/String;

    move-result-object v0

    .line 4510
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private aa()V
    .locals 3

    .prologue
    .line 2615
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aT:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->v()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2616
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aQ:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->setVisibility(I)V

    .line 2632
    :goto_0
    return-void

    .line 2620
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aQ:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 2621
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aQ:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->setVisibility(I)V

    .line 2625
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->v()Lorg/json/JSONObject;

    move-result-object v0

    .line 2626
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->DFPWillRequest:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 2627
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aQ:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->bp:Lcom/google/android/gms/ads/a;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->setAdListener(Lcom/google/android/gms/ads/a;)V

    .line 2628
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aQ:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/appdata/AppData;->n()Lcom/yelp/android/ui/util/a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/yelp/android/ui/util/a;->a(Lorg/json/JSONObject;)Lcom/google/android/gms/ads/doubleclick/d;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->a(Lcom/google/android/gms/ads/doubleclick/d;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2629
    :catch_0
    move-exception v0

    .line 2630
    const-string/jumbo v0, "DFP"

    const-string/jumbo v1, "Problems parsing ad param set"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private ab()V
    .locals 2

    .prologue
    .line 2814
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aO:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    instance-of v0, v0, Lcom/yelp/android/appdata/webrequests/dk;

    if-eqz v0, :cond_1

    .line 2815
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aO:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    check-cast v0, Lcom/yelp/android/appdata/webrequests/dk;

    .line 2816
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->bv:Lcom/yelp/android/appdata/webrequests/core/c$a;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/dk;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 2817
    const v0, 0x7f0704ee

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->f(I)V

    .line 2823
    :cond_0
    :goto_0
    return-void

    .line 2818
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aO:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    instance-of v0, v0, Lcom/yelp/android/appdata/webrequests/h;

    if-eqz v0, :cond_0

    .line 2819
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aO:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    check-cast v0, Lcom/yelp/android/appdata/webrequests/h;

    .line 2820
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->br:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/h;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 2821
    const v0, 0x7f07011e

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->f(I)V

    goto :goto_0
.end method

.method private ac()V
    .locals 3

    .prologue
    .line 2903
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BusinessRedeemCheckInOffer:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Lcom/yelp/android/analytics/iris/EventIri;)V

    .line 2904
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->aJ()Lcom/yelp/android/serializable/Offer;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-static {v0, v1}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->a(Lcom/yelp/android/serializable/Offer;Lcom/yelp/android/serializable/YelpBusiness;)Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;

    move-result-object v0

    .line 2906
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->show(Landroid/support/v4/app/l;Ljava/lang/String;)V

    .line 2907
    return-void
.end method

.method private ad()V
    .locals 3

    .prologue
    .line 2910
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BusinessDealClicked:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Lcom/yelp/android/analytics/iris/EventIri;)V

    .line 2911
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->X()Lcom/yelp/android/serializable/YelpDeal;

    move-result-object v0

    .line 2912
    if-nez v0, :cond_0

    .line 2918
    :goto_0
    return-void

    .line 2915
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpDeal;->x()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2917
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private ae()V
    .locals 6

    .prologue
    .line 2926
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 2927
    const-string/jumbo v1, "business_id"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2928
    const-string/jumbo v1, "call_to_action_id"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->bb()Lcom/yelp/android/serializable/CallToAction;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/CallToAction;->e()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2929
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aF:Lcom/yelp/android/appdata/webrequests/core/MetricsManager;

    sget-object v2, Lcom/yelp/android/analytics/iris/EventIri;->CallToActionBusinessClick:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-virtual {v1, v2, v0}, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 2931
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->bb()Lcom/yelp/android/serializable/CallToAction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/CallToAction;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2932
    const-string/jumbo v0, "http"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "https"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2933
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->z()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/yelp/android/analytics/iris/ViewIri;->CallToActionWebView:Lcom/yelp/android/analytics/iris/ViewIri;

    const-class v4, Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;

    invoke-static {v4}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v4

    sget-object v5, Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;->NONE:Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;

    invoke-static/range {v0 .. v5}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->getWebIntent(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Lcom/yelp/android/analytics/iris/ViewIri;Ljava/util/EnumSet;Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->startActivity(Landroid/content/Intent;)V

    .line 2944
    :cond_1
    :goto_0
    return-void

    .line 2941
    :cond_2
    const-string/jumbo v0, "tel"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2942
    invoke-static {v1}, Lcom/yelp/android/util/k;->a(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private af()V
    .locals 3

    .prologue
    .line 2967
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BusinessAddedToContacts:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v1, "business_id"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2968
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/businesspage/a;->a(Landroid/app/Activity;Lcom/yelp/android/serializable/YelpBusiness;)V

    .line 2969
    return-void
.end method

.method private ag()V
    .locals 2

    .prologue
    .line 2972
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->DirectionsToBusiness:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->b(Lcom/yelp/android/analytics/iris/EventIri;)V

    .line 2973
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-static {v0, v1}, Lcom/yelp/android/util/k;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)V

    .line 2974
    return-void
.end method

.method private ah()V
    .locals 2

    .prologue
    .line 2977
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BusinessMessageTheBusinessOpen:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 2978
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x40a

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2981
    return-void
.end method

.method private ai()V
    .locals 4

    .prologue
    .line 2984
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BusinessOpenYelpMenu:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Lcom/yelp/android/analytics/iris/EventIri;)V

    .line 2985
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aD:Lcom/yelp/android/serializable/BusinessSearchResult;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aD:Lcom/yelp/android/serializable/BusinessSearchResult;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/BusinessSearchResult;->g()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->al()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v0, v3}, Lcom/yelp/android/ui/activities/businesspage/ActivityMenuWebView;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->startActivity(Landroid/content/Intent;)V

    .line 2993
    return-void

    .line 2985
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private aj()V
    .locals 4

    .prologue
    .line 2996
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aD:Lcom/yelp/android/serializable/BusinessSearchResult;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-static {v0, v1}, Lcom/yelp/android/serializable/ReservationSearchAction;->a(Lcom/yelp/android/serializable/BusinessSearchResult;Lcom/yelp/android/serializable/YelpBusiness;)Ljava/util/Map;

    move-result-object v0

    .line 2999
    const-string/jumbo v1, "source"

    const-string/jumbo v2, "promoted"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3000
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->BusinessReservationOpen:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v1, v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 3002
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aD:Lcom/yelp/android/serializable/BusinessSearchResult;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    const-string/jumbo v3, "source_business_page"

    invoke-static {v1, v2, v0, v3}, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->startActivity(Landroid/content/Intent;)V

    .line 3010
    return-void

    .line 3002
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aD:Lcom/yelp/android/serializable/BusinessSearchResult;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/BusinessSearchResult;->g()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private ak()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3016
    invoke-direct {p0, v0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Lcom/yelp/android/serializable/PlatformSearchAction;Ljava/lang/String;)V

    .line 3017
    return-void
.end method

.method private al()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3089
    const/4 v0, 0x0

    .line 3090
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aZ:Lcom/yelp/android/appdata/webrequests/SearchRequest;

    if-eqz v1, :cond_0

    .line 3091
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aZ:Lcom/yelp/android/appdata/webrequests/SearchRequest;

    invoke-interface {v0}, Lcom/yelp/android/appdata/webrequests/SearchRequest;->i_()Ljava/lang/String;

    move-result-object v0

    .line 3093
    :cond_0
    return-object v0
.end method

.method private am()V
    .locals 4

    .prologue
    .line 3097
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->bc()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/YelpBusiness;->ad()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/businesspage/movies/a$b;->a(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->startActivity(Landroid/content/Intent;)V

    .line 3103
    return-void
.end method

.method private an()V
    .locals 7

    .prologue
    .line 3106
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BusinessMoreInfoClicked:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Lcom/yelp/android/analytics/iris/EventIri;)V

    .line 3107
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->al()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v5, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ac:Ljava/lang/Boolean;

    invoke-virtual {v4, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    iget-boolean v6, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->bh:Z

    invoke-static/range {v0 .. v6}, Lcom/yelp/android/ui/activities/businesspage/ActivityMoreInfoPage;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Ljava/lang/String;Ljava/lang/String;ZZZ)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->startActivity(Landroid/content/Intent;)V

    .line 3116
    return-void
.end method

.method private ao()V
    .locals 3

    .prologue
    .line 3119
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 3120
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aG:Lcom/yelp/android/appdata/webrequests/co;

    invoke-virtual {v1}, Lcom/yelp/android/appdata/webrequests/co;->b()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3121
    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->startActivity(Landroid/content/Intent;)V

    .line 3135
    :goto_0
    return-void

    .line 3122
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aG:Lcom/yelp/android/appdata/webrequests/co;

    invoke-virtual {v1}, Lcom/yelp/android/appdata/webrequests/co;->d()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3123
    const v1, 0x7f070202

    const v2, 0x7f070391

    invoke-static {v0, v1, v2}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/app/Activity;II)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x3f5

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 3130
    :cond_1
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aI:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/yelp/android/ui/activities/ActivityCheckIn;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x3f4

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private ap()V
    .locals 2

    .prologue
    .line 3141
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v0

    .line 3143
    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->at:Z

    if-nez v1, :cond_0

    .line 3144
    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->j(Ljava/lang/String;)V

    .line 3146
    :cond_0
    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->am:Z

    if-nez v1, :cond_1

    .line 3147
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->n()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3149
    :cond_1
    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->an:Z

    if-nez v1, :cond_2

    .line 3150
    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->d(Ljava/lang/String;)V

    .line 3152
    :cond_2
    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ao:Z

    if-nez v1, :cond_3

    .line 3153
    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->f(Ljava/lang/String;)V

    .line 3155
    :cond_3
    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ap:Z

    if-nez v1, :cond_4

    .line 3156
    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->g(Ljava/lang/String;)V

    .line 3158
    :cond_4
    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aq:Z

    if-nez v1, :cond_5

    .line 3159
    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->c(Ljava/lang/String;)V

    .line 3161
    :cond_5
    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ar:Z

    if-nez v1, :cond_6

    .line 3162
    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->h(Ljava/lang/String;)V

    .line 3164
    :cond_6
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ac:Ljava/lang/Boolean;

    if-nez v1, :cond_7

    .line 3165
    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->e(Ljava/lang/String;)V

    .line 3167
    :cond_7
    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Z

    if-nez v1, :cond_8

    .line 3168
    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->i(Ljava/lang/String;)V

    .line 3170
    :cond_8
    return-void
.end method

.method private aq()V
    .locals 2

    .prologue
    .line 3177
    const-string/jumbo v0, "com.yelp.android.reservation.update"

    new-instance v1, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$22;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$22;-><init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->b(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 3198
    const-string/jumbo v0, "com.yelp.android.tips.add"

    new-instance v1, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$24;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$24;-><init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->b(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 3213
    const-string/jumbo v0, "com.yelp.android.tips.update"

    new-instance v1, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$25;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$25;-><init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->b(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 3224
    const-string/jumbo v0, "com.yelp.android.tips.delete"

    new-instance v1, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$26;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$26;-><init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->b(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 3238
    const-string/jumbo v0, "com.yelp.android.review.update"

    new-instance v1, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$27;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$27;-><init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->b(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 3252
    const-string/jumbo v0, "com.yelp.android.review.state.update"

    new-instance v1, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$28;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$28;-><init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->b(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 3298
    const-string/jumbo v0, "com.yelp.android.media.add"

    new-instance v1, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$29;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$29;-><init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->b(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 3309
    const-string/jumbo v0, "com.yelp.android.media.update"

    new-instance v1, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$30;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$30;-><init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->b(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 3319
    const-string/jumbo v0, "com.yelp.android.media.delete"

    new-instance v1, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$31;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$31;-><init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->b(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 3328
    const-string/jumbo v0, "com.yelp.android.review.translate"

    new-instance v1, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$32;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$32;-><init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->b(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 3348
    const-string/jumbo v0, "com.yelp.android.offer_redeemed"

    new-instance v1, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$33;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$33;-><init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 3379
    return-void
.end method

.method private ar()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3693
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->I:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 3694
    :goto_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->aO()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 3696
    if-lez v1, :cond_1

    if-lez v0, :cond_1

    .line 3697
    const v0, 0x7f070536

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3702
    :goto_1
    return-object v0

    .line 3693
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->I:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    .line 3698
    :cond_1
    if-nez v0, :cond_2

    .line 3699
    const v0, 0x7f070537

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 3702
    :cond_2
    const v0, 0x7f070535

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private as()Ljava/util/Locale;
    .locals 5

    .prologue
    .line 3780
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->U:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 3781
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aY:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    .line 3782
    const/4 v2, 0x0

    .line 3783
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->U:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/YelpBusinessReview;

    .line 3784
    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusinessReview;->o()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3785
    const/4 v1, 0x1

    .line 3789
    :goto_0
    if-nez v1, :cond_0

    .line 3795
    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method private at()V
    .locals 3

    .prologue
    .line 3867
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->i()Lcom/yelp/android/database/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/database/g;->d()Lcom/yelp/android/database/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0, v1}, Lcom/yelp/android/database/b;->a(Lcom/yelp/android/serializable/YelpBusiness;)V

    .line 3871
    new-instance v0, Lcom/yelp/android/util/ObjectDirtyEvent;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    const-string/jumbo v2, "com.yelp.android.business.update"

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/util/ObjectDirtyEvent;-><init>(Landroid/os/Parcelable;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/util/ObjectDirtyEvent;->a(Landroid/content/Context;)V

    .line 3874
    return-void
.end method

.method private au()V
    .locals 3

    .prologue
    .line 3877
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->az:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3878
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->B:Lcom/yelp/android/ui/util/e;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/e;->clear()V

    .line 3879
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->C:Lcom/yelp/android/ui/util/e;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/e;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3880
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->C:Lcom/yelp/android/ui/util/e;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->az:Ljava/lang/String;

    new-instance v2, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$37;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$37;-><init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V

    invoke-direct {p0, v1, v2}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/e;->b(Landroid/view/View;)V

    .line 3900
    :cond_0
    :goto_0
    return-void

    .line 3891
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->A()I

    move-result v0

    if-eqz v0, :cond_0

    .line 3892
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->C:Lcom/yelp/android/ui/util/e;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/e;->clear()V

    .line 3893
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->B:Lcom/yelp/android/ui/util/e;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/e;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3894
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->B:Lcom/yelp/android/ui/util/e;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->z:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/e;->b(Landroid/view/View;)V

    goto :goto_0
.end method

.method private av()V
    .locals 6

    .prologue
    .line 3903
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->A:Lcom/yelp/android/ui/util/aj;

    const v1, 0x7f0f000e

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/aj;->a(I)Lcom/yelp/android/ui/util/aj$b;

    move-result-object v0

    .line 3904
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ar()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/aj$b;->a(Ljava/lang/CharSequence;)V

    .line 3906
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3908
    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->aO()Ljava/util/List;

    move-result-object v2

    .line 3909
    if-eqz v2, :cond_0

    .line 3910
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3913
    :cond_0
    iget v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->H:I

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->I:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->I:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3914
    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->I:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3915
    iget v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->H:I

    iget-object v3, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->I:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v2, v3

    .line 3916
    if-lez v2, :cond_1

    .line 3917
    invoke-virtual {v0}, Lcom/yelp/android/ui/util/aj$b;->b()Landroid/view/View;

    move-result-object v3

    .line 3918
    if-lez v2, :cond_2

    const/4 v0, 0x1

    :goto_0
    const v4, 0x7f080016

    const v5, 0x7f0703dc

    invoke-direct {p0, v4, v5, v2}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v3, v0, v2}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Landroid/view/View;ZLjava/lang/String;)V

    .line 3928
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->F:Lcom/yelp/android/ui/activities/reviewpage/a;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/reviewpage/a;->a(Ljava/util/List;)V

    .line 3929
    return-void

    .line 3918
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private aw()V
    .locals 11

    .prologue
    .line 3932
    const/4 v0, 0x0

    .line 3933
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aw:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3934
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->P:Lcom/yelp/android/ui/activities/reviewpage/e;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/e;->clear()V

    .line 3935
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->Q:Lcom/yelp/android/ui/util/e;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/e;->clear()V

    .line 3936
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->R:Lcom/yelp/android/ui/util/e;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/e;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3937
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->R:Lcom/yelp/android/ui/util/e;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aw:Ljava/lang/String;

    new-instance v2, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$38;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$38;-><init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V

    invoke-direct {p0, v1, v2}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/e;->b(Landroid/view/View;)V

    .line 4106
    :cond_0
    :goto_0
    return-void

    .line 3948
    :cond_1
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->N()I

    move-result v1

    if-eqz v1, :cond_f

    .line 3949
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->Q:Lcom/yelp/android/ui/util/e;

    invoke-virtual {v1}, Lcom/yelp/android/ui/util/e;->clear()V

    .line 3950
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->R:Lcom/yelp/android/ui/util/e;

    invoke-virtual {v1}, Lcom/yelp/android/ui/util/e;->clear()V

    .line 3952
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->A:Lcom/yelp/android/ui/util/aj;

    const v2, 0x7f070510

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/util/aj;->a(I)Lcom/yelp/android/ui/util/aj$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/ui/util/aj$b;->a()Landroid/view/View;

    move-result-object v1

    .line 3953
    const v2, 0x7f070510

    invoke-virtual {p0, v2}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->b(Landroid/view/View;Ljava/lang/String;)V

    .line 3955
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->U:Ljava/util/List;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->U:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_12

    .line 3957
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->g()Lcom/yelp/android/appdata/LocaleSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/LocaleSettings;->h()Ljava/util/Locale;

    move-result-object v2

    .line 3961
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aY:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 3962
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    .line 3966
    const v1, 0x7f0704d9

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3967
    invoke-virtual {v0, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 3968
    const v1, 0x7f070538

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 3974
    :goto_1
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->au:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->au:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v3, v1

    .line 3976
    :goto_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3977
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->U:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/YelpBusinessReview;

    .line 3978
    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusinessReview;->o()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3979
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 3974
    :cond_3
    const/4 v1, 0x0

    move v3, v1

    goto :goto_2

    .line 3987
    :cond_4
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aW:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 3989
    const/4 v0, 0x0

    move-object v5, v2

    move v2, v0

    move v10, v3

    move-object v3, v4

    move v4, v10

    .line 3991
    :goto_4
    const/4 v0, 0x5

    if-ge v4, v0, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3992
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3994
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/ui/util/aj$b;

    .line 3995
    invoke-direct {p0, v1, v5}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Lcom/yelp/android/ui/util/aj$b;Ljava/lang/String;)V

    .line 4000
    if-eqz v2, :cond_6

    .line 4001
    iget-object v1, v1, Lcom/yelp/android/ui/util/aj$b;->e:Landroid/view/View;

    const v5, 0x7f0f024e

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 4007
    :goto_5
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/reviewpage/e;

    invoke-virtual {v0, v3}, Lcom/yelp/android/ui/activities/reviewpage/e;->a(Ljava/util/List;)V

    .line 4010
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    .line 4011
    const v1, 0x7f070538

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v5

    invoke-virtual {p0, v1, v3}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 4016
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 4018
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->U:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_5
    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/YelpBusinessReview;

    .line 4019
    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusinessReview;->o()Ljava/util/Locale;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 4020
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 4005
    :cond_6
    const/4 v1, 0x1

    move v2, v1

    goto :goto_5

    .line 4024
    :cond_7
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, v4

    move v4, v0

    .line 4025
    goto :goto_4

    .line 4028
    :cond_8
    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4029
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 4033
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/ui/util/aj$b;

    const-string/jumbo v4, ""

    invoke-virtual {v1, v4}, Lcom/yelp/android/ui/util/aj$b;->a(Ljava/lang/CharSequence;)V

    .line 4034
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/reviewpage/e;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/e;->clear()V

    goto :goto_7

    .line 4038
    :cond_9
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aX:Lcom/yelp/android/ui/util/aj$b;

    invoke-direct {p0, v0, v5}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Lcom/yelp/android/ui/util/aj$b;Ljava/lang/String;)V

    .line 4039
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->P:Lcom/yelp/android/ui/activities/reviewpage/e;

    invoke-virtual {v0, v3}, Lcom/yelp/android/ui/activities/reviewpage/e;->a(Ljava/util/List;)V

    .line 4040
    if-eqz v2, :cond_a

    .line 4041
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aX:Lcom/yelp/android/ui/util/aj$b;

    iget-object v0, v0, Lcom/yelp/android/ui/util/aj$b;->e:Landroid/view/View;

    const v1, 0x7f0f024e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4049
    :cond_a
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aD()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 4050
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->A:Lcom/yelp/android/ui/util/aj;

    const v1, 0x7f070195

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/aj;->a(I)Lcom/yelp/android/ui/util/aj$b;

    move-result-object v1

    .line 4053
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aW:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/util/aj$b;

    .line 4055
    iget-object v2, v0, Lcom/yelp/android/ui/util/aj$b;->b:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 4056
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aX:Lcom/yelp/android/ui/util/aj$b;

    .line 4061
    :cond_b
    iget-object v2, v0, Lcom/yelp/android/ui/util/aj$b;->b:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 4062
    iget-object v2, v0, Lcom/yelp/android/ui/util/aj$b;->b:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/util/aj$b;->a(Ljava/lang/CharSequence;)V

    .line 4063
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/aj$b;->a(Ljava/lang/CharSequence;)V

    .line 4065
    invoke-virtual {v0}, Lcom/yelp/android/ui/util/aj$b;->a()Landroid/view/View;

    move-result-object v0

    .line 4066
    const v1, 0x7f0f024d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4070
    :cond_c
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->A:Lcom/yelp/android/ui/util/aj;

    const v1, 0x7f070510

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/aj;->a(I)Lcom/yelp/android/ui/util/aj$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/aj$b;->b()Landroid/view/View;

    move-result-object v0

    .line 4071
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->Y()V

    move-object v1, v0

    .line 4075
    :goto_8
    if-eqz v1, :cond_0

    .line 4076
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->U:Ljava/util/List;

    if-nez v0, :cond_d

    const/4 v0, 0x0

    .line 4077
    :goto_9
    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->N()I

    move-result v2

    sub-int/2addr v2, v0

    .line 4078
    if-lez v2, :cond_e

    const/4 v0, 0x1

    :goto_a
    const v3, 0x7f080018

    const v4, 0x7f0703e2

    invoke-direct {p0, v3, v4, v2}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v0, v2}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Landroid/view/View;ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 4076
    :cond_d
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->U:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_9

    .line 4078
    :cond_e
    const/4 v0, 0x0

    goto :goto_a

    .line 4086
    :cond_f
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->Q:Lcom/yelp/android/ui/util/e;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/e;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4087
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->P:Lcom/yelp/android/ui/activities/reviewpage/e;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/e;->clear()V

    .line 4088
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->R:Lcom/yelp/android/ui/util/e;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/e;->clear()V

    .line 4090
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->U()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 4094
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->Q:Lcom/yelp/android/ui/util/e;

    new-instance v1, Landroid/view/View;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/e;->b(Landroid/view/View;)V

    .line 4103
    :goto_b
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->A:Lcom/yelp/android/ui/util/aj;

    const v1, 0x7f0f001c

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/aj;->a(I)Lcom/yelp/android/ui/util/aj$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/aj$b;->a()Landroid/view/View;

    move-result-object v0

    .line 4104
    const v1, 0x7f070430

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->b(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4097
    :cond_10
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->Q:Lcom/yelp/android/ui/util/e;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->w()Lcom/yelp/android/ui/activities/reviews/ReviewState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/reviews/ReviewState;->getTextResourceForState()I

    move-result v1

    const v2, 0x7f0201d3

    iget-object v3, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->bi:Landroid/view/View$OnClickListener;

    invoke-direct {p0, v1, v2, v3}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/e;->b(Landroid/view/View;)V

    goto :goto_b

    :cond_11
    move-object v2, v1

    goto/16 :goto_1

    :cond_12
    move-object v1, v0

    goto/16 :goto_8
.end method

.method private ax()V
    .locals 8

    .prologue
    const v7, 0x7f0f0012

    const v6, 0x7f070439

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 4117
    const/4 v0, 0x0

    .line 4118
    iget-object v3, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ax:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 4119
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->J:Lcom/yelp/android/ui/activities/reviewpage/d;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/d;->clear()V

    .line 4120
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->L:Lcom/yelp/android/ui/util/e;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/e;->clear()V

    .line 4121
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->K:Lcom/yelp/android/ui/util/e;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/e;->clear()V

    .line 4122
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->M:Lcom/yelp/android/ui/util/e;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/e;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4123
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->M:Lcom/yelp/android/ui/util/e;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ax:Ljava/lang/String;

    new-instance v2, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$39;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$39;-><init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V

    invoke-direct {p0, v1, v2}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/e;->b(Landroid/view/View;)V

    .line 4207
    :cond_0
    :goto_0
    return-void

    .line 4134
    :cond_1
    iget-object v3, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/YelpBusiness;->L()I

    move-result v3

    if-eqz v3, :cond_6

    .line 4135
    iget-object v3, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->L:Lcom/yelp/android/ui/util/e;

    invoke-virtual {v3}, Lcom/yelp/android/ui/util/e;->clear()V

    .line 4136
    iget-object v3, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->M:Lcom/yelp/android/ui/util/e;

    invoke-virtual {v3}, Lcom/yelp/android/ui/util/e;->clear()V

    .line 4138
    iget-object v3, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->O:Ljava/util/List;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->O:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 4139
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->J:Lcom/yelp/android/ui/activities/reviewpage/d;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->O:Ljava/util/List;

    invoke-virtual {v0, v3}, Lcom/yelp/android/ui/activities/reviewpage/d;->a(Ljava/util/List;)V

    .line 4140
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->A:Lcom/yelp/android/ui/util/aj;

    const v3, 0x7f07053b

    invoke-virtual {v0, v3}, Lcom/yelp/android/ui/util/aj;->a(I)Lcom/yelp/android/ui/util/aj$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/aj$b;->b()Landroid/view/View;

    move-result-object v0

    .line 4141
    iget-object v3, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->K:Lcom/yelp/android/ui/util/e;

    invoke-virtual {v3}, Lcom/yelp/android/ui/util/e;->clear()V

    move-object v3, v0

    .line 4178
    :goto_1
    if-eqz v3, :cond_0

    .line 4179
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->O:Ljava/util/List;

    if-nez v0, :cond_5

    move v0, v1

    .line 4180
    :goto_2
    iget-object v4, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v4}, Lcom/yelp/android/serializable/YelpBusiness;->L()I

    move-result v4

    sub-int v0, v4, v0

    .line 4181
    if-lez v0, :cond_2

    move v1, v2

    :cond_2
    const v2, 0x7f08001a

    const v4, 0x7f0703e4

    invoke-direct {p0, v2, v4, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v1, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Landroid/view/View;ZLjava/lang/String;)V

    goto :goto_0

    .line 4142
    :cond_3
    iget-object v3, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->K:Lcom/yelp/android/ui/util/e;

    invoke-virtual {v3}, Lcom/yelp/android/ui/util/e;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 4143
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->g()Lcom/yelp/android/appdata/LocaleSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/LocaleSettings;->h()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v3

    .line 4146
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->U()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4150
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->K:Lcom/yelp/android/ui/util/e;

    new-instance v4, Landroid/view/View;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Lcom/yelp/android/ui/util/e;->b(Landroid/view/View;)V

    .line 4151
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->A:Lcom/yelp/android/ui/util/aj;

    invoke-virtual {v0, v7}, Lcom/yelp/android/ui/util/aj;->a(I)Lcom/yelp/android/ui/util/aj$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/aj$b;->a()Landroid/view/View;

    move-result-object v0

    .line 4155
    new-array v4, v2, [Ljava/lang/Object;

    aput-object v3, v4, v1

    invoke-virtual {p0, v6, v4}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Landroid/view/View;Ljava/lang/String;)V

    .line 4171
    :goto_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->A:Lcom/yelp/android/ui/util/aj;

    invoke-virtual {v0, v7}, Lcom/yelp/android/ui/util/aj;->a(I)Lcom/yelp/android/ui/util/aj$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/aj$b;->b()Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    goto :goto_1

    .line 4159
    :cond_4
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v4, 0x7f03007a

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v5

    invoke-virtual {v0, v4, v5, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 4166
    const v4, 0x7f0f0256

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 4167
    new-array v4, v2, [Ljava/lang/Object;

    aput-object v3, v4, v1

    invoke-virtual {p0, v6, v4}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4168
    iget-object v3, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->K:Lcom/yelp/android/ui/util/e;

    invoke-virtual {v3, v0}, Lcom/yelp/android/ui/util/e;->b(Landroid/view/View;)V

    goto :goto_3

    .line 4179
    :cond_5
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->O:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto/16 :goto_2

    .line 4187
    :cond_6
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->L:Lcom/yelp/android/ui/util/e;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/e;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4188
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->M:Lcom/yelp/android/ui/util/e;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/e;->clear()V

    .line 4190
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->U()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4194
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->L:Lcom/yelp/android/ui/util/e;

    new-instance v1, Landroid/view/View;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/e;->b(Landroid/view/View;)V

    .line 4195
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->A:Lcom/yelp/android/ui/util/aj;

    const v1, 0x7f0f001d

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/aj;->a(I)Lcom/yelp/android/ui/util/aj$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/aj$b;->a()Landroid/view/View;

    move-result-object v0

    .line 4197
    const v1, 0x7f07043a

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4200
    :cond_7
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->L:Lcom/yelp/android/ui/util/e;

    const v1, 0x7f07011b

    const v2, 0x7f0201db

    iget-object v3, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->bj:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$h;

    invoke-direct {p0, v1, v2, v3}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/e;->b(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_8
    move-object v3, v0

    goto/16 :goto_1
.end method

.method private ay()V
    .locals 4

    .prologue
    .line 4210
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ay:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4211
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->W:Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter;->clear()V

    .line 4212
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->X:Lcom/yelp/android/ui/util/e;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/e;->clear()V

    .line 4213
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->Y:Lcom/yelp/android/ui/util/e;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/e;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4214
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->Y:Lcom/yelp/android/ui/util/e;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ay:Ljava/lang/String;

    new-instance v2, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$40;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$40;-><init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V

    invoke-direct {p0, v1, v2}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/e;->b(Landroid/view/View;)V

    .line 4240
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    .line 4241
    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->g()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4242
    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->f()V

    .line 4243
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ak:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->addFooterView(Landroid/view/View;)V

    .line 4245
    :cond_1
    return-void

    .line 4225
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aa:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aa:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4226
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->Y:Lcom/yelp/android/ui/util/e;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/e;->clear()V

    .line 4227
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->X:Lcom/yelp/android/ui/util/e;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/e;->clear()V

    .line 4228
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->W:Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aa:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter;->a(Ljava/util/List;)V

    goto :goto_0

    .line 4229
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->W:Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4230
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->Y:Lcom/yelp/android/ui/util/e;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/e;->clear()V

    .line 4231
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->X:Lcom/yelp/android/ui/util/e;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/e;->clear()V

    .line 4232
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->X:Lcom/yelp/android/ui/util/e;

    const v1, 0x7f0700ef

    const v2, 0x7f0201cd

    iget-object v3, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->bk:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$h;

    invoke-direct {p0, v1, v2, v3}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/e;->b(Landroid/view/View;)V

    goto :goto_0
.end method

.method private az()V
    .locals 2

    .prologue
    .line 4248
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ag:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4249
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ae:Lcom/yelp/android/ui/panels/businesssearch/e;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ag:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/businesssearch/e;->a(Ljava/util/List;)V

    .line 4251
    :cond_0
    return-void
.end method

.method private b(Lcom/yelp/android/ui/activities/reviews/ReviewSource;)Lcom/yelp/android/ui/activities/reviews/ReviewSource;
    .locals 2

    .prologue
    .line 3410
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->w()Lcom/yelp/android/ui/activities/reviews/ReviewState;

    move-result-object v0

    .line 3411
    sget-object v1, Lcom/yelp/android/ui/activities/reviews/ReviewState;->FINISHED_RECENTLY:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/reviews/ReviewState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3412
    sget-object p1, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->BizPageReviewsListEdit:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    .line 3416
    :cond_0
    :goto_0
    return-object p1

    .line 3413
    :cond_1
    sget-object v1, Lcom/yelp/android/ui/activities/reviews/ReviewState;->FINISHED_NOT_RECENTLY:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/reviews/ReviewState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3414
    sget-object p1, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->BizPageReviewsListUpdate:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    goto :goto_0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Lcom/yelp/android/ui/panels/businesspage/b;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->c:Lcom/yelp/android/ui/panels/businesspage/b;

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->av:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->t:Ljava/util/List;

    return-object p1
.end method

.method private b(Landroid/view/View;Ljava/lang/String;)V
    .locals 3

    .prologue
    const v1, 0x7f0f024e

    .line 1498
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->U()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1499
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Landroid/view/View;Ljava/lang/String;)V

    .line 1500
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1501
    const v0, 0x7f0f0251

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1502
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->w()Lcom/yelp/android/ui/activities/reviews/ReviewState;

    move-result-object v1

    sget-object v2, Lcom/yelp/android/ui/activities/reviews/ReviewState;->DRAFTED:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    if-ne v1, v2, :cond_0

    const v1, 0x7f0702d5

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1506
    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    check-cast v0, Landroid/graphics/drawable/LevelListDrawable;

    .line 1508
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->H()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LevelListDrawable;->setLevel(I)Z

    .line 1512
    :goto_1
    return-void

    .line 1502
    :cond_0
    const v1, 0x7f0705a1

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1510
    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private b(Lcom/yelp/android/analytics/iris/EventIri;)V
    .locals 2

    .prologue
    .line 2708
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Landroid/content/Context;Lcom/yelp/android/analytics/iris/EventIri;Ljava/lang/String;)V

    .line 2709
    return-void
.end method

.method private b(Lcom/yelp/android/analytics/iris/EventIri;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 2719
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Landroid/content/Context;Lcom/yelp/android/analytics/iris/EventIri;Ljava/lang/String;)V

    .line 2720
    return-void
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Lcom/yelp/android/analytics/iris/EventIri;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 275
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->b(Lcom/yelp/android/analytics/iris/EventIri;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 275
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->c(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 2947
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->ao()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/util/k;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2949
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->CallBusiness:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-direct {p0, v1, p1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->c(Lcom/yelp/android/analytics/iris/EventIri;Ljava/lang/String;)Lcom/yelp/android/analytics/g$a;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/yelp/android/analytics/g$a;->a(Ljava/lang/String;)Lcom/yelp/android/analytics/g$a;

    move-result-object v1

    const-string/jumbo v2, "scheme"

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/yelp/android/analytics/g$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/analytics/g$a;

    move-result-object v1

    .line 2953
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/yelp/android/analytics/h;->a(Landroid/content/Context;Lcom/yelp/android/analytics/g$a;)V

    .line 2954
    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aF:Lcom/yelp/android/appdata/webrequests/core/MetricsManager;

    invoke-virtual {v1}, Lcom/yelp/android/analytics/g$a;->a()Lcom/yelp/android/analytics/g;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->a(Lcom/yelp/android/analytics/b;)V

    .line 2957
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2963
    :goto_0
    return-void

    .line 2958
    :catch_0
    move-exception v0

    .line 2959
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

    .line 2960
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;

    const v1, 0x7f07018d

    const v2, 0x7f07029d

    invoke-virtual {p0, v2}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->a(ILjava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Z)Z
    .locals 0

    .prologue
    .line 275
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ap:Z

    return p1
.end method

.method private c(Lcom/yelp/android/analytics/iris/EventIri;Ljava/lang/String;)Lcom/yelp/android/analytics/g$a;
    .locals 3

    .prologue
    .line 2744
    new-instance v0, Lcom/yelp/android/analytics/g$a;

    invoke-direct {v0}, Lcom/yelp/android/analytics/g$a;-><init>()V

    invoke-virtual {v0, p1}, Lcom/yelp/android/analytics/g$a;->a(Lcom/yelp/android/analytics/iris/a;)Lcom/yelp/android/analytics/g$a;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/analytics/g$a;->a(Ljava/lang/String;)Lcom/yelp/android/analytics/g$a;

    move-result-object v0

    const-string/jumbo v1, "id"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/analytics/g$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/analytics/g$a;

    move-result-object v0

    .line 2750
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2751
    const-string/jumbo v1, "source"

    invoke-virtual {v0, v1, p2}, Lcom/yelp/android/analytics/g$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/analytics/g$a;

    .line 2754
    :cond_0
    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aH:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->u:Ljava/util/List;

    return-object p1
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 275
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->g(Ljava/lang/String;)V

    return-void
.end method

.method private c(Lcom/yelp/android/ui/activities/reviews/ReviewSource;)V
    .locals 3

    .prologue
    .line 4492
    new-instance v0, Lcom/yelp/android/g/a;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/yelp/android/g/a;-><init>(I)V

    .line 4493
    const-string/jumbo v1, "id"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4494
    const-string/jumbo v1, "source"

    invoke-virtual {p1}, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->getIriSourceParameter()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4495
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->BusinessReviewWrite:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v1, v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 4496
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 3727
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->N:Lcom/yelp/android/appdata/webrequests/ck;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->N:Lcom/yelp/android/appdata/webrequests/ck;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/ck;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3735
    :goto_0
    return-void

    .line 3731
    :cond_0
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->g()Lcom/yelp/android/appdata/LocaleSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/LocaleSettings;->h()Ljava/util/Locale;

    move-result-object v4

    .line 3732
    new-instance v0, Lcom/yelp/android/appdata/webrequests/ck;

    const/4 v3, 0x5

    iget-object v6, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->bt:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    move-object v1, p1

    move v5, v2

    invoke-direct/range {v0 .. v6}, Lcom/yelp/android/appdata/webrequests/ck;-><init>(Ljava/lang/String;IILjava/util/Locale;ZLcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->N:Lcom/yelp/android/appdata/webrequests/ck;

    .line 3734
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->N:Lcom/yelp/android/appdata/webrequests/ck;

    new-array v1, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/ck;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    goto :goto_0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Z)Z
    .locals 0

    .prologue
    .line 275
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ar:Z

    return p1
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Lcom/yelp/android/appdata/webrequests/av;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->bf:Lcom/yelp/android/appdata/webrequests/av;

    return-object v0
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->az:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->O:Ljava/util/List;

    return-object p1
.end method

.method private d(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 3738
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->D:Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->D:Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3743
    :goto_0
    return-void

    .line 3741
    :cond_0
    new-instance v0, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->bq:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-direct {v0, p1, v1, v2}, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;-><init>(Ljava/lang/String;ILcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->D:Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;

    .line 3742
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->D:Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    goto :goto_0
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Z)Z
    .locals 0

    .prologue
    .line 275
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as:Z

    return p1
.end method

.method static synthetic e(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Lcom/yelp/android/serializable/YelpBusiness;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    return-object v0
.end method

.method static synthetic e(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->U:Ljava/util/List;

    return-object p1
.end method

.method private e(I)V
    .locals 7

    .prologue
    .line 2796
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->E:Lcom/yelp/android/ui/util/z;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/z;->d()Ljava/util/List;

    move-result-object v4

    .line 2797
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->E:Lcom/yelp/android/ui/util/z;

    invoke-virtual {v2}, Lcom/yelp/android/ui/util/z;->d()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;

    iget-object v5, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v5}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/16 v6, 0x2a

    invoke-direct {v3, v5, v4, v6}, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;-><init>(Ljava/lang/String;II)V

    iget-object v4, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v4}, Lcom/yelp/android/serializable/YelpBusiness;->A()I

    move-result v5

    move v4, p1

    invoke-static/range {v0 .. v5}, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Ljava/util/List;Lcom/yelp/android/appdata/webrequests/MediaRequest;II)Landroid/content/Intent;

    move-result-object v0

    .line 2808
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->startActivity(Landroid/content/Intent;)V

    .line 2809
    return-void
.end method

.method static synthetic e(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 275
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->d(Ljava/lang/String;)V

    return-void
.end method

.method private e(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 3746
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ad:Lcom/yelp/android/appdata/webrequests/z;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ad:Lcom/yelp/android/appdata/webrequests/z;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/z;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3751
    :goto_0
    return-void

    .line 3749
    :cond_0
    new-instance v0, Lcom/yelp/android/appdata/webrequests/z;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->bm:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-direct {v0, p1, v1}, Lcom/yelp/android/appdata/webrequests/z;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ad:Lcom/yelp/android/appdata/webrequests/z;

    .line 3750
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ad:Lcom/yelp/android/appdata/webrequests/z;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/z;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    goto :goto_0
.end method

.method static synthetic e(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Z)Z
    .locals 0

    .prologue
    .line 275
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->at:Z

    return p1
.end method

.method static synthetic f(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->bz:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    return-object v0
.end method

.method static synthetic f(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aw:Ljava/lang/String;

    return-object p1
.end method

.method private f(I)V
    .locals 2

    .prologue
    .line 4326
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aL:Lcom/yelp/android/ui/dialogs/e;

    if-nez v0, :cond_0

    .line 4327
    new-instance v0, Lcom/yelp/android/ui/dialogs/e;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yelp/android/ui/dialogs/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aL:Lcom/yelp/android/ui/dialogs/e;

    .line 4328
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aL:Lcom/yelp/android/ui/dialogs/e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/e;->setCancelable(Z)V

    .line 4330
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aL:Lcom/yelp/android/ui/dialogs/e;

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/e;->setMessage(Ljava/lang/CharSequence;)V

    .line 4331
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aL:Lcom/yelp/android/ui/dialogs/e;

    invoke-virtual {v0}, Lcom/yelp/android/ui/dialogs/e;->show()V

    .line 4332
    return-void
.end method

.method private f(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 3754
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->G:Lcom/yelp/android/appdata/webrequests/dw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->G:Lcom/yelp/android/appdata/webrequests/dw;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dw;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3766
    :goto_0
    return-void

    .line 3758
    :cond_0
    new-instance v0, Lcom/yelp/android/appdata/webrequests/dw;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aZ:Lcom/yelp/android/appdata/webrequests/SearchRequest;

    new-instance v5, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$g;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->bc:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$c;

    invoke-direct {v5, p0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$g;-><init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$c;)V

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/appdata/webrequests/dw;-><init>(Ljava/lang/String;IILcom/yelp/android/appdata/webrequests/SearchRequest;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->G:Lcom/yelp/android/appdata/webrequests/dw;

    .line 3765
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->G:Lcom/yelp/android/appdata/webrequests/dw;

    new-array v1, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/dw;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    goto :goto_0
.end method

.method static synthetic f(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Z)Z
    .locals 0

    .prologue
    .line 275
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aj:Z

    return p1
.end method

.method static synthetic g(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Lcom/yelp/android/ui/dialogs/YelpProgressDialogFragment;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aN:Lcom/yelp/android/ui/dialogs/YelpProgressDialogFragment;

    return-object v0
.end method

.method static synthetic g(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ax:Ljava/lang/String;

    return-object p1
.end method

.method private g(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 3799
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->T:Lcom/yelp/android/appdata/webrequests/dy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->T:Lcom/yelp/android/appdata/webrequests/dy;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dy;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3826
    :goto_0
    return-void

    .line 3803
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->U:Ljava/util/List;

    if-nez v0, :cond_1

    move v1, v2

    .line 3804
    :goto_1
    const/4 v0, 0x5

    if-lt v1, v0, :cond_2

    .line 3805
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ap:Z

    .line 3806
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aA()V

    goto :goto_0

    .line 3803
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->U:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    goto :goto_1

    .line 3811
    :cond_2
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->g()Lcom/yelp/android/appdata/LocaleSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/LocaleSettings;->h()Ljava/util/Locale;

    move-result-object v0

    .line 3812
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->as()Ljava/util/Locale;

    move-result-object v5

    .line 3813
    if-eqz v5, :cond_3

    .line 3817
    :goto_2
    new-instance v0, Lcom/yelp/android/appdata/webrequests/dy;

    rsub-int/lit8 v3, v1, 0x5

    iget-object v4, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->S:Ljava/lang/String;

    iget-object v6, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->bu:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/yelp/android/appdata/webrequests/dy;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/util/Locale;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->T:Lcom/yelp/android/appdata/webrequests/dy;

    .line 3825
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->T:Lcom/yelp/android/appdata/webrequests/dy;

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/dy;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    goto :goto_0

    :cond_3
    move-object v5, v0

    goto :goto_2
.end method

.method static synthetic g(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Z)Z
    .locals 0

    .prologue
    .line 275
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ao:Z

    return p1
.end method

.method static synthetic h(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Lcom/yelp/android/serializable/BusinessSearchResult;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aD:Lcom/yelp/android/serializable/BusinessSearchResult;

    return-object v0
.end method

.method static synthetic h(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ay:Ljava/lang/String;

    return-object p1
.end method

.method private h(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3829
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->Z:Lcom/yelp/android/appdata/webrequests/ae;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->Z:Lcom/yelp/android/appdata/webrequests/ae;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/ae;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3836
    :goto_0
    return-void

    .line 3833
    :cond_0
    new-instance v0, Lcom/yelp/android/appdata/webrequests/ae;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->bl:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-direct {v0, p1, v3, v1, v2}, Lcom/yelp/android/appdata/webrequests/ae;-><init>(Ljava/lang/String;IILcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->Z:Lcom/yelp/android/appdata/webrequests/ae;

    .line 3835
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->Z:Lcom/yelp/android/appdata/webrequests/ae;

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/ae;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    goto :goto_0
.end method

.method static synthetic h(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Z)Z
    .locals 0

    .prologue
    .line 275
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->an:Z

    return p1
.end method

.method static synthetic i(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Ljava/util/List;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->I:Ljava/util/List;

    return-object v0
.end method

.method static synthetic i(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 275
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->h(Ljava/lang/String;)V

    return-void
.end method

.method private i(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 3839
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->af:Lcom/yelp/android/appdata/webrequests/dj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->af:Lcom/yelp/android/appdata/webrequests/dj;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dj;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3846
    :goto_0
    return-void

    .line 3843
    :cond_0
    new-instance v0, Lcom/yelp/android/appdata/webrequests/dj;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->bn:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-direct {v0, p1, v1}, Lcom/yelp/android/appdata/webrequests/dj;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->af:Lcom/yelp/android/appdata/webrequests/dj;

    .line 3845
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->af:Lcom/yelp/android/appdata/webrequests/dj;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/dj;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    goto :goto_0
.end method

.method static synthetic i(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Z)Z
    .locals 0

    .prologue
    .line 275
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->am:Z

    return p1
.end method

.method static synthetic j(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Lcom/yelp/android/appdata/webrequests/SearchRequest;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aZ:Lcom/yelp/android/appdata/webrequests/SearchRequest;

    return-object v0
.end method

.method private j(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3849
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ah:Lcom/yelp/android/appdata/webrequests/messaging/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ah:Lcom/yelp/android/appdata/webrequests/messaging/g;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/messaging/g;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3861
    :goto_0
    return-void

    .line 3853
    :cond_0
    sget-object v0, Lcom/yelp/android/appdata/Features;->message_other_biz:Lcom/yelp/android/appdata/Features;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/Features;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3854
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->at:Z

    .line 3855
    iput-boolean v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aj:Z

    goto :goto_0

    .line 3859
    :cond_1
    new-instance v0, Lcom/yelp/android/appdata/webrequests/messaging/g;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->bo:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-direct {v0, p1, v1}, Lcom/yelp/android/appdata/webrequests/messaging/g;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ah:Lcom/yelp/android/appdata/webrequests/messaging/g;

    .line 3860
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ah:Lcom/yelp/android/appdata/webrequests/messaging/g;

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/messaging/g;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    goto :goto_0
.end method

.method static synthetic k(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Lcom/yelp/android/ui/util/z;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->E:Lcom/yelp/android/ui/util/z;

    return-object v0
.end method

.method private k(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 4499
    new-instance v0, Lcom/yelp/android/g/a;

    invoke-direct {v0}, Lcom/yelp/android/g/a;-><init>()V

    .line 4500
    const-string/jumbo v1, "id"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4501
    const-string/jumbo v1, "source"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4502
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->BusinessAddTip:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v1, v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 4503
    return-void
.end method

.method static synthetic l(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 275
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->Q()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic m(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Ljava/util/List;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->U:Ljava/util/List;

    return-object v0
.end method

.method static synthetic n(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Lcom/yelp/android/ui/activities/reviewpage/d;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->J:Lcom/yelp/android/ui/activities/reviewpage/d;

    return-object v0
.end method

.method static synthetic o(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Lcom/yelp/android/ui/util/e;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->L:Lcom/yelp/android/ui/util/e;

    return-object v0
.end method

.method static synthetic p(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V
    .locals 0

    .prologue
    .line 275
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->at()V

    return-void
.end method

.method static synthetic q(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Ljava/util/LinkedHashMap;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aW:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic r(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Lcom/yelp/android/ui/activities/reviewpage/e;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->P:Lcom/yelp/android/ui/activities/reviewpage/e;

    return-object v0
.end method

.method static synthetic s(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Ljava/util/List;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->O:Ljava/util/List;

    return-object v0
.end method

.method static synthetic t(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V
    .locals 0

    .prologue
    .line 275
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aC()V

    return-void
.end method

.method private t()Z
    .locals 1

    .prologue
    .line 623
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->K()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->L()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic u(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$c;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->bc:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$c;

    return-object v0
.end method

.method private u()V
    .locals 11

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1305
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1306
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aD:Lcom/yelp/android/serializable/BusinessSearchResult;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/BusinessSearchResult;->c()Ljava/util/ArrayList;

    move-result-object v0

    .line 1307
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1309
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 1314
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v4, v3

    move-object v0, v2

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/SearchAction;

    .line 1315
    invoke-interface {v1}, Lcom/yelp/android/serializable/SearchAction;->a()Lcom/yelp/android/serializable/BusinessSearchResult$SearchActionType;

    move-result-object v10

    .line 1316
    invoke-interface {v8, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1317
    sget-object v5, Lcom/yelp/android/serializable/BusinessSearchResult$SearchActionType;->Platform:Lcom/yelp/android/serializable/BusinessSearchResult$SearchActionType;

    invoke-virtual {v10, v5}, Lcom/yelp/android/serializable/BusinessSearchResult$SearchActionType;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    if-nez v0, :cond_0

    invoke-interface {v1}, Lcom/yelp/android/serializable/SearchAction;->b()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1320
    invoke-interface {v1}, Lcom/yelp/android/serializable/SearchAction;->n()Lcom/yelp/android/ui/activities/businesspage/b;

    move-result-object v0

    .line 1321
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    move-object v5, v0

    .line 1323
    sget-object v0, Lcom/yelp/android/serializable/BusinessSearchResult$SearchActionType;->Reservation:Lcom/yelp/android/serializable/BusinessSearchResult$SearchActionType;

    invoke-virtual {v10, v0}, Lcom/yelp/android/serializable/BusinessSearchResult$SearchActionType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1324
    if-nez v2, :cond_1

    invoke-interface {v1}, Lcom/yelp/android/serializable/SearchAction;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1325
    invoke-interface {v1}, Lcom/yelp/android/serializable/SearchAction;->n()Lcom/yelp/android/ui/activities/businesspage/b;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/businesspage/h;

    move-object v2, v0

    :cond_1
    move-object v0, v1

    .line 1328
    check-cast v0, Lcom/yelp/android/serializable/ReservationSearchAction;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1329
    if-nez v4, :cond_2

    invoke-interface {v1}, Lcom/yelp/android/serializable/SearchAction;->b()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_1
    move v4, v0

    move-object v0, v5

    .line 1331
    goto :goto_0

    :cond_3
    move v0, v3

    .line 1329
    goto :goto_1

    .line 1333
    :cond_4
    if-eqz v4, :cond_6

    .line 1334
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/ReservationSearchAction;

    .line 1335
    invoke-virtual {v2, v0}, Lcom/yelp/android/ui/activities/businesspage/h;->a(Lcom/yelp/android/serializable/ReservationSearchAction;)V

    goto :goto_2

    .line 1337
    :cond_5
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aD:Lcom/yelp/android/serializable/BusinessSearchResult;

    invoke-virtual {v2, v0}, Lcom/yelp/android/ui/activities/businesspage/h;->a(Lcom/yelp/android/serializable/BusinessSearchResult;)V

    .line 1338
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1343
    :cond_6
    sget-object v0, Lcom/yelp/android/serializable/BusinessSearchResult$SearchActionType;->Reservation:Lcom/yelp/android/serializable/BusinessSearchResult$SearchActionType;

    invoke-interface {v8, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1344
    sget-object v0, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;->MAKE_RESERVATION:Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1346
    :cond_7
    sget-object v0, Lcom/yelp/android/serializable/BusinessSearchResult$SearchActionType;->Platform:Lcom/yelp/android/serializable/BusinessSearchResult$SearchActionType;

    invoke-interface {v8, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1347
    sget-object v0, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;->ORDER:Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1350
    :cond_8
    new-instance v0, Lcom/yelp/android/ui/activities/businesspage/c;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-direct {v0, v6, v1}, Lcom/yelp/android/ui/activities/businesspage/c;-><init>(Ljava/util/Collection;Lcom/yelp/android/serializable/YelpBusiness;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->f:Lcom/yelp/android/ui/activities/businesspage/c;

    .line 1352
    return-void

    :cond_9
    move v0, v4

    goto :goto_1
.end method

.method private v()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x64

    const/4 v3, 0x0

    .line 1355
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 1358
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aH:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aH:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aH:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1361
    new-instance v1, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$62;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$62;-><init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1383
    :cond_0
    :goto_0
    return-void

    .line 1370
    :cond_1
    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aJ:Z

    if-eqz v1, :cond_0

    .line 1371
    iput-boolean v3, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aJ:Z

    .line 1372
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->aJ()Lcom/yelp/android/serializable/Offer;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-static {v1, v2, v3}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->a(Lcom/yelp/android/serializable/Offer;Lcom/yelp/android/serializable/YelpBusiness;Z)Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;

    move-result-object v1

    .line 1374
    new-instance v2, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$2;

    invoke-direct {v2, p0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$2;-><init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;)V

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method static synthetic v(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V
    .locals 0

    .prologue
    .line 275
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aA()V

    return-void
.end method

.method private w()Landroid/view/View;
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 1446
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03007b

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 1450
    const v0, 0x7f0f025a

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/WebImageView;

    .line 1451
    const v1, 0x7f0f025c

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1453
    const v3, 0x7f0f0258

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$4;

    invoke-direct {v4, p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$4;-><init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1462
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/appdata/webrequests/co;->p()Lcom/yelp/android/serializable/User;

    move-result-object v3

    .line 1463
    if-nez v3, :cond_0

    .line 1465
    invoke-virtual {v0, v6}, Lcom/yelp/android/ui/widgets/WebImageView;->setVisibility(I)V

    .line 1466
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1467
    const v0, 0x7f0f025b

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1472
    :goto_0
    return-object v2

    .line 1469
    :cond_0
    invoke-virtual {v3}, Lcom/yelp/android/serializable/User;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageUrl(Ljava/lang/String;)V

    .line 1470
    invoke-virtual {v3}, Lcom/yelp/android/serializable/User;->ad()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic w(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->W:Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter;

    return-object v0
.end method

.method static synthetic x(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Lcom/yelp/android/ui/util/e;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aS:Lcom/yelp/android/ui/util/e;

    return-object v0
.end method

.method private x()V
    .locals 3

    .prologue
    .line 1563
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->c:Lcom/yelp/android/ui/panels/businesspage/b;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/panels/businesspage/b;->a(Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/ui/util/PullDownListView;)V

    .line 1565
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->H()V

    .line 1566
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aB:Z

    if-nez v0, :cond_0

    .line 1567
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->J()V

    .line 1569
    :cond_0
    const-class v0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$MessageAlertBoxNotification;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Ljava/util/EnumSet;)V

    .line 1570
    return-void
.end method

.method static synthetic y(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aR:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic z(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Lcom/google/android/gms/ads/doubleclick/PublisherAdView;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aQ:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .prologue
    .line 3584
    sget-object v0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$MessageAlertBoxNotification;->MEDIA_NOTIFICATION:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$MessageAlertBoxNotification;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Ljava/util/EnumSet;I)V

    .line 3588
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->b(Z)V

    .line 3589
    return-void
.end method

.method public a(II)V
    .locals 1

    .prologue
    .line 2642
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    .line 2643
    invoke-virtual {p0, v0, p1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2644
    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 2758
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BusinessPhotos:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Lcom/yelp/android/analytics/iris/EventIri;)V

    .line 2759
    const-string/jumbo v0, "extra.media_index"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->e(I)V

    .line 2760
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/ReviewHighlight;)V
    .locals 2

    .prologue
    .line 3679
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-static {v0, v1, p1}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/serializable/ReviewHighlight;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->startActivity(Landroid/content/Intent;)V

    .line 3682
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/Tip;)V
    .locals 2

    .prologue
    .line 3630
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/yelp/android/ui/activities/tips/WriteTip;->a(Landroid/content/Context;Lcom/yelp/android/serializable/Tip;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x42b

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 3633
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/Tip;Landroid/widget/Checkable;)V
    .locals 4

    .prologue
    .line 3668
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/yelp/android/ui/activities/compliments/SendCompliment;->a(Landroid/content/Context;Lcom/yelp/android/serializable/Complimentable;)Landroid/content/Intent;

    move-result-object v0

    .line 3669
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f07020b

    const v3, 0x7f070392

    invoke-static {v1, v2, v3, v0}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/content/Context;IILandroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->startActivity(Landroid/content/Intent;)V

    .line 3675
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/Tip;Lcom/yelp/android/ui/widgets/SpannedImageButton;)V
    .locals 4

    .prologue
    .line 3643
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    .line 3644
    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3645
    new-instance v0, Lcom/yelp/android/appdata/webrequests/em;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Tip;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/yelp/android/ui/widgets/SpannedImageButton;->isChecked()Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/appdata/webrequests/em;-><init>(Ljava/lang/String;Z)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/em;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 3646
    invoke-virtual {p2}, Lcom/yelp/android/ui/widgets/SpannedImageButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3647
    invoke-virtual {p1}, Lcom/yelp/android/serializable/Tip;->g()Lcom/yelp/android/serializable/Feedback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Feedback;->a()V

    .line 3651
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->J:Lcom/yelp/android/ui/activities/reviewpage/d;

    .line 3652
    if-eqz v0, :cond_0

    .line 3653
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/d;->notifyDataSetChanged()V

    .line 3664
    :cond_0
    :goto_1
    return-void

    .line 3649
    :cond_1
    invoke-virtual {p1}, Lcom/yelp/android/serializable/Tip;->g()Lcom/yelp/android/serializable/Feedback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Feedback;->b()V

    goto :goto_0

    .line 3656
    :cond_2
    invoke-virtual {p2}, Lcom/yelp/android/ui/widgets/SpannedImageButton;->toggle()V

    .line 3657
    invoke-virtual {p2}, Lcom/yelp/android/ui/widgets/SpannedImageButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f070201

    const v3, 0x7f07039c

    invoke-static {v1, v2, v3}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/app/Activity;II)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method public a(Lcom/yelp/android/serializable/YelpBusiness;)V
    .locals 2

    .prologue
    .line 2559
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;

    .line 2560
    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    .line 2561
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->updateOptionsMenu()V

    .line 2562
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->at()V

    .line 2563
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->a(Lcom/yelp/android/serializable/YelpBusiness;)V

    .line 2564
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->Z()V

    .line 2565
    return-void
.end method

.method public a(Lcom/yelp/android/ui/activities/reviews/ReviewSource;)V
    .locals 3

    .prologue
    .line 3420
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->c(Lcom/yelp/android/ui/activities/reviews/ReviewSource;)V

    .line 3426
    sget-object v0, Lcom/yelp/android/appdata/experiment/e;->o:Lcom/yelp/android/appdata/experiment/WriteReviewExperiment;

    sget-object v1, Lcom/yelp/android/appdata/experiment/WriteReviewExperiment$Cohort;->status_quo:Lcom/yelp/android/appdata/experiment/WriteReviewExperiment$Cohort;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/experiment/WriteReviewExperiment;->a(Ljava/lang/Enum;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->e:Lcom/yelp/android/ui/activities/reviews/StarsView;

    if-eqz v0, :cond_0

    .line 3428
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->e:Lcom/yelp/android/ui/activities/reviews/StarsView;

    invoke-virtual {v2}, Lcom/yelp/android/ui/activities/reviews/StarsView;->getNumStars()I

    move-result v2

    invoke-static {v0, v1, v2, p1}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;ILcom/yelp/android/ui/activities/reviews/ReviewSource;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->startActivity(Landroid/content/Intent;)V

    .line 3435
    :goto_0
    return-void

    .line 3432
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-static {v0, v1, p1}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/ui/activities/reviews/ReviewSource;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public a(Ljava/io/File;)V
    .locals 3

    .prologue
    .line 3622
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;

    .line 3623
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->hideLoadingDialog()V

    .line 3624
    const v1, 0x7f070118

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const v2, 0x7f0702a2

    invoke-virtual {p0, v2}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yelp/android/ui/util/ar;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 3626
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 3383
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aG:Lcom/yelp/android/appdata/webrequests/co;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3386
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aG:Lcom/yelp/android/appdata/webrequests/co;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3387
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/yelp/android/ui/activities/tips/WriteTip;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x428

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 3402
    :goto_0
    return-void

    .line 3392
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f070200

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->a(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x42a

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 3399
    :cond_1
    const/16 v0, 0x429

    const v1, 0x7f07038d

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(II)V

    goto :goto_0
.end method

.method public a(Landroid/graphics/Bitmap;Ljava/io/File;Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;)Z
    .locals 3

    .prologue
    .line 3601
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/support/YelpActivity;

    .line 3602
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->hideLoadingDialog()V

    .line 3605
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$36;

    invoke-direct {v2, p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$36;-><init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Lcom/yelp/android/ui/activities/support/YelpActivity;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3617
    const/4 v0, 0x1

    return v0
.end method

.method public b(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 2763
    if-eqz p1, :cond_0

    .line 2764
    sget-object v0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$MessageAlertBoxNotification;->MESSAGE_THE_BUSINESS_SUCCESS_NOTIFICATION:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$MessageAlertBoxNotification;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$MessageAlertBoxNotification;->setData(Landroid/content/Intent;)Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$MessageAlertBoxNotification;

    move-result-object v0

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Ljava/util/EnumSet;)V

    .line 2769
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->b(Z)V

    .line 2770
    return-void
.end method

.method public b(Lcom/yelp/android/serializable/Tip;)V
    .locals 2

    .prologue
    .line 3637
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Tip;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 3638
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->startActivity(Landroid/content/Intent;)V

    .line 3639
    return-void
.end method

.method public c()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 2774
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BusinessPullOpenPhoto:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Lcom/yelp/android/analytics/iris/EventIri;)V

    .line 2778
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->E:Lcom/yelp/android/ui/util/z;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/z;->d()Ljava/util/List;

    move-result-object v2

    .line 2779
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->aT()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Photo;

    .line 2780
    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2781
    invoke-interface {v2, v4, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2782
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    new-instance v3, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;

    iget-object v5, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v5}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    const/16 v7, 0x2a

    invoke-direct {v3, v5, v6, v7}, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;-><init>(Ljava/lang/String;II)V

    iget-object v5, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v5}, Lcom/yelp/android/serializable/YelpBusiness;->A()I

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Ljava/util/List;Lcom/yelp/android/appdata/webrequests/MediaRequest;II)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->startActivity(Landroid/content/Intent;)V

    .line 2793
    return-void
.end method

.method public c(Lcom/yelp/android/serializable/Tip;)V
    .locals 3

    .prologue
    .line 3686
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->z()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, p1, v1, v2}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->a(Landroid/content/Context;Lcom/yelp/android/serializable/Tip;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x42b

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 3690
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 2826
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/addphoto/PhotoTeaser;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x411

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2831
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 2832
    return-void
.end method

.method public f()V
    .locals 4

    .prologue
    .line 2885
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ac:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->startActivity(Landroid/content/Intent;)V

    .line 2888
    return-void
.end method

.method g()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2891
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BusinessRedeemDeal:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Lcom/yelp/android/analytics/iris/EventIri;)V

    .line 2892
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->aN()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpDeal;

    .line 2894
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->l:Lcom/yelp/android/appdata/webrequests/fd;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->l:Lcom/yelp/android/appdata/webrequests/fd;

    invoke-virtual {v1}, Lcom/yelp/android/appdata/webrequests/fd;->u()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2895
    :cond_0
    new-instance v1, Lcom/yelp/android/appdata/webrequests/fd;

    new-instance v2, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$f;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpDeal;->x()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$f;-><init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/yelp/android/appdata/webrequests/fd;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->l:Lcom/yelp/android/appdata/webrequests/fd;

    .line 2897
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->l:Lcom/yelp/android/appdata/webrequests/fd;

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/fd;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 2898
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->l:Lcom/yelp/android/appdata/webrequests/fd;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->showLoadingDialog(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 2900
    :cond_1
    return-void
.end method

.method public h()V
    .locals 2

    .prologue
    .line 3439
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aG:Lcom/yelp/android/appdata/webrequests/co;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3442
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aG:Lcom/yelp/android/appdata/webrequests/co;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3443
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->d()V

    .line 3454
    :goto_0
    return-void

    .line 3445
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0701ff

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->a(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x413

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 3452
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public i()V
    .locals 2

    .prologue
    .line 3577
    sget-object v0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$MessageAlertBoxNotification;->TIP_NOTIFICATION:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$MessageAlertBoxNotification;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Ljava/util/EnumSet;)V

    .line 3580
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->b(Z)V

    .line 3581
    return-void
.end method

.method public j()V
    .locals 3

    .prologue
    .line 3592
    sget-object v0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$MessageAlertBoxNotification;->ACCOUNT_UNCONFIRMED:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$MessageAlertBoxNotification;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Ljava/util/EnumSet;)V

    .line 3596
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->ConfirmEmailBanner:Lcom/yelp/android/analytics/iris/ViewIri;

    const-string/jumbo v1, "source"

    const-string/jumbo v2, "biz_page"

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3597
    return-void
.end method

.method public k()V
    .locals 2

    .prologue
    .line 4454
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->b:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->b:Landroid/view/MenuItem;

    invoke-static {v0}, Landroid/support/v4/view/q;->a(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4455
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->b:Landroid/view/MenuItem;

    invoke-static {v0}, Landroid/support/v4/view/q;->a(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 4456
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->b:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v4/view/q;->a(Landroid/view/MenuItem;Landroid/view/View;)Landroid/view/MenuItem;

    .line 4457
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->b:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 4459
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 13

    .prologue
    const/4 v12, -0x2

    const v11, 0x7f0101cc

    const v10, 0x7f0f001f

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 628
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 629
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/support/YelpActivity;

    .line 630
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->z()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 633
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->t()Z

    move-result v1

    iput-boolean v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->bg:Z

    .line 635
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->g()Z

    move-result v1

    iput-boolean v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->bh:Z

    .line 637
    const-string/jumbo v1, "4kMBvIEWPxWkWKFN__8SxQ"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 638
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a:Lcom/yelp/android/ui/widgets/a;

    if-nez v1, :cond_0

    .line 639
    new-instance v1, Lcom/yelp/android/ui/widgets/a;

    invoke-direct {v1}, Lcom/yelp/android/ui/widgets/a;-><init>()V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a:Lcom/yelp/android/ui/widgets/a;

    .line 641
    :cond_0
    const v1, 0x7f0f010e

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 642
    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a:Lcom/yelp/android/ui/widgets/a;

    invoke-virtual {v2, v0, v1}, Lcom/yelp/android/ui/widgets/a;->a(Landroid/app/Activity;Landroid/widget/RelativeLayout;)V

    .line 645
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v3

    .line 646
    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 647
    invoke-virtual {v3, v8}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setFooterDividersEnabled(Z)V

    .line 648
    invoke-virtual {v3, v9}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setItemsCanFocus(Z)V

    .line 652
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x106000d

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 655
    new-instance v1, Lcom/yelp/android/ui/util/aj;

    invoke-direct {v1}, Lcom/yelp/android/ui/util/aj;-><init>()V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->A:Lcom/yelp/android/ui/util/aj;

    .line 657
    new-instance v1, Lcom/yelp/android/ui/panels/businesspage/b;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2, p0, v3}, Lcom/yelp/android/ui/panels/businesspage/b;-><init>(Landroid/content/Context;Lcom/yelp/android/ui/widgets/d$a;Lcom/yelp/android/ui/util/PullDownListView;)V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->c:Lcom/yelp/android/ui/panels/businesspage/b;

    .line 659
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->c:Lcom/yelp/android/ui/panels/businesspage/b;

    const-string/jumbo v2, "HEADER"

    invoke-virtual {v3, v1, v2, v9}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 661
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->c:Lcom/yelp/android/ui/panels/businesspage/b;

    const v2, 0x7f0f0226

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/panels/businesspage/b;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 662
    new-instance v1, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$1;

    sget-object v2, Lcom/yelp/android/analytics/iris/EventIri;->BusinessCheckIn:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v5, "button_bar"

    invoke-direct {v1, p0, v2, v5}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$1;-><init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Lcom/yelp/android/analytics/iris/EventIri;Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 672
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "extra.check_in"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 673
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "extra.check_in"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/YelpCheckIn;

    .line 674
    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->c:Lcom/yelp/android/ui/panels/businesspage/b;

    invoke-virtual {v2, v9, v1}, Lcom/yelp/android/ui/panels/businesspage/b;->a(ZLcom/yelp/android/serializable/YelpCheckIn;)V

    .line 677
    :cond_2
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->c:Lcom/yelp/android/ui/panels/businesspage/b;

    const v2, 0x7f0f022a

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/panels/businesspage/b;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/ui/widgets/LeftDrawableButton;

    .line 679
    new-instance v2, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$12;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$12;-><init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/widgets/LeftDrawableButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 690
    sget-object v2, Lcom/yelp/android/appdata/experiment/e;->o:Lcom/yelp/android/appdata/experiment/WriteReviewExperiment;

    sget-object v5, Lcom/yelp/android/appdata/experiment/WriteReviewExperiment$Cohort;->status_quo:Lcom/yelp/android/appdata/experiment/WriteReviewExperiment$Cohort;

    invoke-virtual {v2, v5}, Lcom/yelp/android/appdata/experiment/WriteReviewExperiment;->a(Ljava/lang/Enum;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->bg:Z

    if-nez v2, :cond_3

    .line 692
    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->c:Lcom/yelp/android/ui/panels/businesspage/b;

    const v5, 0x7f0f022b

    invoke-virtual {v2, v5}, Lcom/yelp/android/ui/panels/businesspage/b;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 694
    new-instance v5, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$23;

    invoke-direct {v5, p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$23;-><init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 704
    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->c:Lcom/yelp/android/ui/panels/businesspage/b;

    const v5, 0x7f0f022c

    invoke-virtual {v2, v5}, Lcom/yelp/android/ui/panels/businesspage/b;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/yelp/android/ui/activities/reviews/StarsView;

    iput-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->e:Lcom/yelp/android/ui/activities/reviews/StarsView;

    .line 705
    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->e:Lcom/yelp/android/ui/activities/reviews/StarsView;

    new-instance v5, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$34;

    invoke-direct {v5, p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$34;-><init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V

    invoke-virtual {v2, v5}, Lcom/yelp/android/ui/activities/reviews/StarsView;->setOnStarsClicked(Ljava/lang/Runnable;)V

    .line 716
    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->e:Lcom/yelp/android/ui/activities/reviews/StarsView;

    new-instance v5, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$45;

    invoke-direct {v5, p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$45;-><init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V

    invoke-virtual {v2, v5}, Lcom/yelp/android/ui/activities/reviews/StarsView;->setOnActionDown(Ljava/lang/Runnable;)V

    .line 725
    :cond_3
    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->c:Lcom/yelp/android/ui/panels/businesspage/b;

    const v5, 0x7f0f0224

    invoke-virtual {v2, v5}, Lcom/yelp/android/ui/panels/businesspage/b;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->d:Landroid/view/View;

    .line 726
    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->d:Landroid/view/View;

    new-instance v5, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$56;

    sget-object v6, Lcom/yelp/android/analytics/iris/EventIri;->BusinessAddPhoto:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v7, "button_bar"

    invoke-direct {v5, p0, v6, v7}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$56;-><init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Lcom/yelp/android/analytics/iris/EventIri;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 733
    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->d:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->registerForContextMenu(Landroid/view/View;)V

    .line 735
    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->c:Lcom/yelp/android/ui/panels/businesspage/b;

    const v5, 0x7f0f0228

    invoke-virtual {v2, v5}, Lcom/yelp/android/ui/panels/businesspage/b;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 736
    new-instance v5, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$60;

    sget-object v6, Lcom/yelp/android/analytics/iris/EventIri;->BusinessToggleBookmark:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v7, "button_bar"

    invoke-direct {v5, p0, v6, v7}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$60;-><init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Lcom/yelp/android/analytics/iris/EventIri;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 744
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0a00a6

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 745
    iget-object v5, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aD:Lcom/yelp/android/serializable/BusinessSearchResult;

    if-eqz v5, :cond_5

    .line 746
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->u()V

    .line 754
    :goto_0
    iget-object v5, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->A:Lcom/yelp/android/ui/util/aj;

    const v6, 0x7f0f000d

    iget-object v7, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->f:Lcom/yelp/android/ui/activities/businesspage/c;

    invoke-static {v7}, Lcom/yelp/android/ui/util/aj$c;->a(Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v7

    invoke-virtual {v7, v10, v2, v8}, Lcom/yelp/android/ui/util/aj$c;->a(III)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v7

    invoke-virtual {v7}, Lcom/yelp/android/ui/util/aj$c;->b()Lcom/yelp/android/ui/util/aj$b;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/yelp/android/ui/util/aj;->a(ILcom/yelp/android/ui/util/aj$b;)V

    .line 760
    iget-boolean v5, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->bg:Z

    if-eqz v5, :cond_4

    .line 761
    invoke-virtual {v1, v8}, Lcom/yelp/android/ui/widgets/LeftDrawableButton;->setEnabled(Z)V

    .line 762
    invoke-virtual {v4, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 763
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->d:Landroid/view/View;

    invoke-virtual {v1, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 766
    :cond_4
    new-instance v1, Lcom/yelp/android/ui/activities/businesspage/ClaimButtonAdapter;

    iget-object v4, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-direct {v1, v4}, Lcom/yelp/android/ui/activities/businesspage/ClaimButtonAdapter;-><init>(Lcom/yelp/android/serializable/YelpBusiness;)V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->g:Lcom/yelp/android/ui/activities/businesspage/ClaimButtonAdapter;

    .line 767
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->A:Lcom/yelp/android/ui/util/aj;

    const v4, 0x7f0f0016

    iget-object v5, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->g:Lcom/yelp/android/ui/activities/businesspage/ClaimButtonAdapter;

    invoke-static {v5}, Lcom/yelp/android/ui/util/aj$c;->a(Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v5

    invoke-virtual {v5, v10, v2, v8}, Lcom/yelp/android/ui/util/aj$c;->a(III)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yelp/android/ui/util/aj$c;->b()Lcom/yelp/android/ui/util/aj$b;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/yelp/android/ui/util/aj;->a(ILcom/yelp/android/ui/util/aj$b;)V

    .line 773
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Landroid/os/Bundle;)V

    .line 775
    new-instance v1, Lcom/yelp/android/ui/activities/businesspage/e;

    const-class v4, Lcom/yelp/android/ui/activities/businesspage/BusinessRedeemButton;

    invoke-static {v4}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v4

    iget-object v5, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-direct {v1, v4, v0, v5}, Lcom/yelp/android/ui/activities/businesspage/e;-><init>(Ljava/util/Collection;Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->i:Lcom/yelp/android/ui/activities/businesspage/e;

    .line 778
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->A:Lcom/yelp/android/ui/util/aj;

    const v4, 0x7f0f0009

    iget-object v5, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->i:Lcom/yelp/android/ui/activities/businesspage/e;

    invoke-static {v5}, Lcom/yelp/android/ui/util/aj$c;->a(Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yelp/android/ui/util/aj$c;->b()Lcom/yelp/android/ui/util/aj$b;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/yelp/android/ui/util/aj;->a(ILcom/yelp/android/ui/util/aj$b;)V

    .line 782
    new-instance v1, Lcom/yelp/android/ui/activities/businesspage/c;

    const-class v4, Lcom/yelp/android/ui/activities/businesspage/BusinessDealsOffers;

    invoke-static {v4}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v4

    iget-object v5, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-direct {v1, v4, v5}, Lcom/yelp/android/ui/activities/businesspage/c;-><init>(Ljava/util/Collection;Lcom/yelp/android/serializable/YelpBusiness;)V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->j:Lcom/yelp/android/ui/activities/businesspage/c;

    .line 784
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->A:Lcom/yelp/android/ui/util/aj;

    const v4, 0x7f0f000a

    iget-object v5, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->j:Lcom/yelp/android/ui/activities/businesspage/c;

    invoke-static {v5}, Lcom/yelp/android/ui/util/aj$c;->a(Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v5

    invoke-virtual {v5, v10, v2, v8}, Lcom/yelp/android/ui/util/aj$c;->a(III)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yelp/android/ui/util/aj$c;->b()Lcom/yelp/android/ui/util/aj$b;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/yelp/android/ui/util/aj;->a(ILcom/yelp/android/ui/util/aj$b;)V

    .line 790
    new-instance v1, Lcom/yelp/android/ui/activities/businesspage/c;

    sget-object v4, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;->DIRECTIONS:Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;

    const/4 v5, 0x5

    new-array v5, v5, [Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;

    sget-object v6, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;->CALL:Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;

    aput-object v6, v5, v8

    sget-object v6, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;->MENU:Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;

    aput-object v6, v5, v9

    const/4 v6, 0x2

    sget-object v7, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;->MESSAGE_THE_BUSINESS:Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    sget-object v7, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;->MOVIES:Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;

    aput-object v7, v5, v6

    const/4 v6, 0x4

    sget-object v7, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;->MORE_INFO:Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v4

    iget-object v5, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-direct {v1, v4, v5}, Lcom/yelp/android/ui/activities/businesspage/c;-><init>(Ljava/util/Collection;Lcom/yelp/android/serializable/YelpBusiness;)V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->k:Lcom/yelp/android/ui/activities/businesspage/c;

    .line 800
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->A:Lcom/yelp/android/ui/util/aj;

    const v4, 0x7f0f0007

    iget-object v5, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->k:Lcom/yelp/android/ui/activities/businesspage/c;

    invoke-static {v5}, Lcom/yelp/android/ui/util/aj$c;->a(Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v5

    invoke-virtual {v5, v10, v2, v8}, Lcom/yelp/android/ui/util/aj$c;->a(III)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/ui/util/aj$c;->b()Lcom/yelp/android/ui/util/aj$b;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lcom/yelp/android/ui/util/aj;->a(ILcom/yelp/android/ui/util/aj$b;)V

    .line 806
    new-instance v1, Lcom/yelp/android/ui/util/e;

    new-array v2, v8, [Landroid/view/View;

    invoke-direct {v1, v2}, Lcom/yelp/android/ui/util/e;-><init>([Landroid/view/View;)V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ai:Lcom/yelp/android/ui/util/e;

    .line 807
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->A:Lcom/yelp/android/ui/util/aj;

    const v2, 0x7f0f0377

    const v4, 0x7f0704fa

    invoke-virtual {p0, v4}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ai:Lcom/yelp/android/ui/util/e;

    invoke-static {v4, v5}, Lcom/yelp/android/ui/util/aj$c;->a(Ljava/lang/CharSequence;Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v4

    invoke-virtual {v4, v11}, Lcom/yelp/android/ui/util/aj$c;->a(I)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yelp/android/ui/util/aj$c;->b()Lcom/yelp/android/ui/util/aj$b;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/yelp/android/ui/util/aj;->a(ILcom/yelp/android/ui/util/aj$b;)V

    .line 814
    new-instance v1, Lcom/yelp/android/ui/activities/reviewpage/b;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Lcom/yelp/android/ui/activities/reviewpage/b;-><init>(Lcom/yelp/android/serializable/YelpBusiness;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->r:Lcom/yelp/android/ui/activities/reviewpage/b;

    .line 815
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->A:Lcom/yelp/android/ui/util/aj;

    const v2, 0x7f0f0006

    const v4, 0x7f070696

    invoke-virtual {p0, v4}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->r:Lcom/yelp/android/ui/activities/reviewpage/b;

    invoke-static {v4, v5}, Lcom/yelp/android/ui/util/aj$c;->a(Ljava/lang/CharSequence;Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v4

    invoke-virtual {v4, v11}, Lcom/yelp/android/ui/util/aj$c;->a(I)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v4

    invoke-virtual {v4, v10}, Lcom/yelp/android/ui/util/aj$c;->b(I)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yelp/android/ui/util/aj$c;->b()Lcom/yelp/android/ui/util/aj$b;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/yelp/android/ui/util/aj;->a(ILcom/yelp/android/ui/util/aj$b;)V

    .line 823
    new-instance v1, Lcom/yelp/android/ui/activities/businesspage/FromThisBusinessPanel;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/yelp/android/ui/activities/businesspage/FromThisBusinessPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->v:Lcom/yelp/android/ui/activities/businesspage/FromThisBusinessPanel;

    .line 824
    new-instance v1, Lcom/yelp/android/ui/util/e;

    new-array v2, v9, [Landroid/view/View;

    iget-object v4, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->v:Lcom/yelp/android/ui/activities/businesspage/FromThisBusinessPanel;

    aput-object v4, v2, v8

    invoke-direct {v1, v2}, Lcom/yelp/android/ui/util/e;-><init>([Landroid/view/View;)V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->w:Lcom/yelp/android/ui/util/e;

    .line 826
    const v1, 0x7f070300

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->w:Lcom/yelp/android/ui/util/e;

    invoke-static {v1, v2}, Lcom/yelp/android/ui/util/aj$c;->a(Ljava/lang/CharSequence;Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/yelp/android/ui/util/aj$c;->a(I)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v1

    .line 832
    invoke-direct {p0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Lcom/yelp/android/ui/util/aj$c;)V

    .line 833
    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->A:Lcom/yelp/android/ui/util/aj;

    const v4, 0x7f070300

    invoke-virtual {v1}, Lcom/yelp/android/ui/util/aj$c;->b()Lcom/yelp/android/ui/util/aj$b;

    move-result-object v1

    invoke-virtual {v2, v4, v1}, Lcom/yelp/android/ui/util/aj;->a(ILcom/yelp/android/ui/util/aj$b;)V

    .line 836
    new-instance v1, Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->A:Lcom/yelp/android/ui/util/aj;

    iget-object v4, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aF:Lcom/yelp/android/appdata/webrequests/core/MetricsManager;

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;-><init>(Landroid/content/Context;Lcom/yelp/android/ui/util/aj;Lcom/yelp/android/ui/util/ScrollToLoadListView;Lcom/yelp/android/appdata/webrequests/core/MetricsManager;)V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->y:Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;

    .line 843
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->A:Lcom/yelp/android/ui/util/aj;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/aj;->a()V

    .line 845
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 851
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aR:Landroid/widget/FrameLayout;

    .line 852
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aR:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v2, v4, v12}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 855
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 857
    const v2, 0x7f0a00a6

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 858
    new-instance v2, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aQ:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    .line 859
    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aQ:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 860
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aQ:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    invoke-virtual {v1, v8}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->setFocusableInTouchMode(Z)V

    .line 862
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aR:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aQ:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 864
    new-instance v1, Lcom/google/android/gms/ads/d;

    const v2, 0x7f0c0013

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const v4, 0x7f0c0012

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-direct {v1, v2, v4}, Lcom/google/android/gms/ads/d;-><init>(II)V

    .line 868
    new-instance v2, Lcom/google/android/gms/ads/d;

    const v4, 0x7f0c0014

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    const v5, 0x7f0c0012

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-direct {v2, v4, v0}, Lcom/google/android/gms/ads/d;-><init>(II)V

    .line 872
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aQ:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/google/android/gms/ads/d;

    aput-object v1, v4, v8

    aput-object v2, v4, v9

    invoke-virtual {v0, v4}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->setAdSizes([Lcom/google/android/gms/ads/d;)V

    .line 874
    const v0, 0x7f0706db

    new-array v1, v9, [Ljava/lang/Object;

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/appdata/AppData;->f()Lcom/yelp/android/appdata/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/appdata/c;->ae()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 878
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aQ:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->setAdUnitId(Ljava/lang/String;)V

    .line 880
    new-instance v0, Lcom/yelp/android/ui/util/e;

    new-array v1, v8, [Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/yelp/android/ui/util/e;-><init>([Landroid/view/View;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aS:Lcom/yelp/android/ui/util/e;

    .line 881
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->A:Lcom/yelp/android/ui/util/aj;

    const v1, 0x7f0f000b

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aS:Lcom/yelp/android/ui/util/e;

    invoke-static {v2}, Lcom/yelp/android/ui/util/aj$c;->a(Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/ui/util/aj$c;->b()Lcom/yelp/android/ui/util/aj$b;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/util/aj;->a(ILcom/yelp/android/ui/util/aj$b;)V

    .line 884
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->N()V

    .line 885
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->M()V

    .line 886
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->R()V

    .line 887
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->S()V

    .line 888
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->P()V

    .line 889
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->V()V

    .line 890
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->O()V

    .line 892
    new-instance v0, Lcom/yelp/android/ui/activities/reviewpage/b;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/ui/activities/reviewpage/b;-><init>(Lcom/yelp/android/serializable/YelpBusiness;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->s:Lcom/yelp/android/ui/activities/reviewpage/b;

    .line 893
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->A:Lcom/yelp/android/ui/util/aj;

    const v1, 0x7f0f0005

    const v2, 0x7f070696

    invoke-virtual {p0, v2}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->s:Lcom/yelp/android/ui/activities/reviewpage/b;

    invoke-static {v2, v4}, Lcom/yelp/android/ui/util/aj$c;->a(Ljava/lang/CharSequence;Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v2

    invoke-virtual {v2, v11}, Lcom/yelp/android/ui/util/aj$c;->a(I)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/yelp/android/ui/util/aj$c;->b(I)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/ui/util/aj$c;->b()Lcom/yelp/android/ui/util/aj$b;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/util/aj;->a(ILcom/yelp/android/ui/util/aj$b;)V

    .line 901
    new-instance v0, Lcom/yelp/android/ui/util/e;

    new-array v1, v8, [Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/yelp/android/ui/util/e;-><init>([Landroid/view/View;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ab:Lcom/yelp/android/ui/util/e;

    .line 902
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->A:Lcom/yelp/android/ui/util/aj;

    const v1, 0x7f070344

    const-string/jumbo v2, ""

    iget-object v4, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ab:Lcom/yelp/android/ui/util/e;

    invoke-static {v2, v4}, Lcom/yelp/android/ui/util/aj$c;->a(Ljava/lang/CharSequence;Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v2

    invoke-virtual {v2, v11}, Lcom/yelp/android/ui/util/aj$c;->a(I)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/ui/util/aj$c;->b()Lcom/yelp/android/ui/util/aj$b;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/util/aj;->a(ILcom/yelp/android/ui/util/aj$b;)V

    .line 908
    new-instance v0, Lcom/yelp/android/ui/util/e;

    new-array v1, v8, [Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/yelp/android/ui/util/e;-><init>([Landroid/view/View;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->x:Lcom/yelp/android/ui/util/e;

    .line 909
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->A:Lcom/yelp/android/ui/util/aj;

    const v1, 0x7f0f0013

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->x:Lcom/yelp/android/ui/util/e;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/util/aj;->a(ILandroid/widget/BaseAdapter;)V

    .line 912
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aA()V

    .line 914
    invoke-virtual {v3, p0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 915
    invoke-virtual {v3, p0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 916
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->A:Lcom/yelp/android/ui/util/aj;

    invoke-virtual {v3, v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 918
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ap()V

    .line 919
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aq()V

    .line 921
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$61;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$61;-><init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->a(Landroid/support/v7/app/ActionBar$a;)V

    .line 933
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/support/YelpActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v4, 0x7f0f0029

    invoke-virtual {v1, v4}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/ui/widgets/InAppNotificationView;

    iget-object v4, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->bx:Lcom/yelp/android/services/push/c$a;

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/yelp/android/ui/activities/support/YelpActivity;->setupInAppNotification(Ljava/lang/Class;Landroid/content/Context;Lcom/yelp/android/ui/widgets/InAppNotificationView;Lcom/yelp/android/services/push/c$a;)V

    .line 940
    return-void

    .line 748
    :cond_5
    new-instance v5, Lcom/yelp/android/ui/activities/businesspage/c;

    sget-object v6, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;->MAKE_RESERVATION:Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;

    sget-object v7, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;->ORDER:Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;

    invoke-static {v6, v7}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v6

    iget-object v7, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-direct {v5, v6, v7}, Lcom/yelp/android/ui/activities/businesspage/c;-><init>(Ljava/util/Collection;Lcom/yelp/android/serializable/YelpBusiness;)V

    iput-object v5, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->f:Lcom/yelp/android/ui/activities/businesspage/c;

    goto/16 :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    const/4 v6, 0x0

    .line 1152
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 1154
    sparse-switch p1, :sswitch_data_0

    .line 1296
    :cond_0
    :goto_0
    return-void

    .line 1157
    :sswitch_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aG:Lcom/yelp/android/appdata/webrequests/co;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1158
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->d()V

    goto :goto_0

    .line 1164
    :sswitch_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aG:Lcom/yelp/android/appdata/webrequests/co;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1165
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->x_()V

    goto :goto_0

    .line 1171
    :sswitch_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aG:Lcom/yelp/android/appdata/webrequests/co;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1172
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->x_()V

    goto :goto_0

    .line 1178
    :sswitch_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aG:Lcom/yelp/android/appdata/webrequests/co;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1179
    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 1184
    :sswitch_4
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aG:Lcom/yelp/android/appdata/webrequests/co;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1185
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/ActivityCheckIn;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x3f4

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1192
    :sswitch_5
    if-ne p2, v0, :cond_0

    .line 1194
    invoke-static {p3}, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->a(Landroid/content/Intent;)Landroid/util/Pair;

    move-result-object v1

    .line 1196
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/yelp/android/serializable/YelpDeal;

    .line 1197
    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpDeal;->c()I

    move-result v0

    if-nez v0, :cond_0

    .line 1200
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->aN()Ljava/util/List;

    move-result-object v0

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1201
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Lcom/yelp/android/serializable/YelpBusiness;)V

    goto :goto_0

    .line 1207
    :sswitch_6
    if-ne p2, v0, :cond_2

    .line 1208
    iput-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aI:Ljava/lang/String;

    .line 1209
    sget-object v0, Lcom/yelp/android/appdata/BusinessContributionType;->CHECK_IN:Lcom/yelp/android/appdata/BusinessContributionType;

    invoke-virtual {v0, p3}, Lcom/yelp/android/appdata/BusinessContributionType;->getContribution(Landroid/content/Intent;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpCheckIn;

    .line 1210
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/YelpCheckIn;->a(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aH:Ljava/util/ArrayList;

    .line 1211
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aH:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpCheckIn;->o()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpCheckIn;->o()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1214
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget-object v3, Lcom/yelp/android/services/ShareService$ShareObjectType;->CHECKIN:Lcom/yelp/android/services/ShareService$ShareObjectType;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpCheckIn;->z()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpCheckIn;->o()Ljava/util/List;

    move-result-object v5

    invoke-static {v2, v3, v4, v5, v6}, Lcom/yelp/android/services/ShareService;->a(Landroid/content/Context;Lcom/yelp/android/services/ShareService$ShareObjectType;Ljava/lang/String;Ljava/util/Collection;Z)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1223
    :cond_1
    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpCheckIn;->q()Z

    move-result v1

    iput-boolean v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aJ:Z

    .line 1224
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->v()V

    .line 1228
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->c:Lcom/yelp/android/ui/panels/businesspage/b;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/yelp/android/ui/panels/businesspage/b;->a(ZLcom/yelp/android/serializable/YelpCheckIn;)V

    goto/16 :goto_0

    .line 1230
    :cond_2
    invoke-static {p3}, Lcom/yelp/android/ui/activities/ActivityCheckIn;->a(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aI:Ljava/lang/String;

    goto/16 :goto_0

    .line 1237
    :sswitch_7
    if-eqz p3, :cond_3

    const-string/jumbo v0, "offer"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1238
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    const-string/jumbo v0, "offer"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Offer;

    invoke-virtual {v1, v0}, Lcom/yelp/android/serializable/YelpBusiness;->a(Lcom/yelp/android/serializable/Offer;)V

    .line 1242
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aH:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1243
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aH:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1245
    :cond_4
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->v()V

    goto/16 :goto_0

    .line 1248
    :sswitch_8
    const/16 v0, 0x41c

    if-ne p2, v0, :cond_0

    .line 1249
    invoke-static {p3}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->a(Landroid/content/Intent;)Lcom/yelp/android/serializable/YelpBusinessReview;

    move-result-object v0

    .line 1250
    invoke-static {p3}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->b(Landroid/content/Intent;)Lcom/yelp/android/serializable/YelpBusinessReview;

    move-result-object v1

    .line 1252
    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->P:Lcom/yelp/android/ui/activities/reviewpage/e;

    invoke-virtual {v2, v0}, Lcom/yelp/android/ui/activities/reviewpage/e;->c(Ljava/lang/Object;)V

    .line 1253
    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->U:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1255
    if-eqz v1, :cond_5

    .line 1256
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->P:Lcom/yelp/android/ui/activities/reviewpage/e;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/reviewpage/e;->b(Lcom/yelp/android/serializable/YelpBusinessReview;)V

    .line 1257
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->U:Ljava/util/List;

    invoke-interface {v0, v6, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1258
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aY:Ljava/util/LinkedHashSet;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusinessReview;->o()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 1259
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    sget-object v2, Lcom/yelp/android/ui/activities/reviews/ReviewState;->FINISHED_NOT_RECENTLY:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    invoke-virtual {v0, v2}, Lcom/yelp/android/serializable/YelpBusiness;->a(Lcom/yelp/android/ui/activities/reviews/ReviewState;)V

    .line 1260
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusinessReview;->C()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/YelpBusiness;->a(I)V

    .line 1266
    :goto_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->P:Lcom/yelp/android/ui/activities/reviewpage/e;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/e;->notifyDataSetChanged()V

    .line 1267
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->c:Lcom/yelp/android/ui/panels/businesspage/b;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/businesspage/b;->b(Lcom/yelp/android/serializable/YelpBusiness;)V

    .line 1268
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->at()V

    .line 1269
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aA()V

    goto/16 :goto_0

    .line 1262
    :cond_5
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->u()V

    .line 1263
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    sget-object v1, Lcom/yelp/android/ui/activities/reviews/ReviewState;->NOT_STARTED:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/YelpBusiness;->a(Lcom/yelp/android/ui/activities/reviews/ReviewState;)V

    .line 1264
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0, v6}, Lcom/yelp/android/serializable/YelpBusiness;->a(I)V

    goto :goto_1

    .line 1273
    :sswitch_9
    if-eq p2, v0, :cond_0

    if-eqz p3, :cond_0

    const-string/jumbo v0, "extra.has_reached_menu"

    invoke-virtual {p3, v0, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1279
    new-instance v0, Lcom/yelp/android/appdata/webrequests/aw;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->by:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/appdata/webrequests/aw;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->be:Lcom/yelp/android/appdata/webrequests/aw;

    .line 1282
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->be:Lcom/yelp/android/appdata/webrequests/aw;

    new-array v1, v6, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/aw;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 1283
    const v0, 0x7f07051d

    invoke-static {v0}, Lcom/yelp/android/ui/dialogs/YelpProgressDialogFragment;->a(I)Lcom/yelp/android/ui/dialogs/YelpProgressDialogFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aM:Lcom/yelp/android/ui/dialogs/YelpProgressDialogFragment;

    .line 1285
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aM:Lcom/yelp/android/ui/dialogs/YelpProgressDialogFragment;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v1

    const-string/jumbo v2, "continue_last_order_info_fragment"

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/dialogs/YelpProgressDialogFragment;->show(Landroid/support/v4/app/l;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1291
    :sswitch_a
    if-ne p2, v0, :cond_0

    .line 1292
    invoke-virtual {p0, p3}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->b(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1154
    :sswitch_data_0
    .sparse-switch
        0x3ee -> :sswitch_1
        0x3ef -> :sswitch_1
        0x3f0 -> :sswitch_2
        0x3f1 -> :sswitch_2
        0x3f4 -> :sswitch_6
        0x3f5 -> :sswitch_4
        0x3f6 -> :sswitch_7
        0x3f9 -> :sswitch_5
        0x40a -> :sswitch_a
        0x412 -> :sswitch_0
        0x413 -> :sswitch_0
        0x417 -> :sswitch_9
        0x41d -> :sswitch_8
        0x429 -> :sswitch_3
        0x42a -> :sswitch_3
    .end sparse-switch
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 616
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onAttach(Landroid/content/Context;)V

    .line 617
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$a;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ba:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$a;

    .line 618
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$b;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->bb:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$b;

    .line 619
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$c;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->bc:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$c;

    .line 620
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 944
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 945
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->f()Lcom/yelp/android/appdata/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/c;->J()V

    .line 946
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 947
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    .line 948
    const-string/jumbo v0, "extra.business"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    .line 950
    const-string/jumbo v0, "top_highlighted_review_id"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->S:Ljava/lang/String;

    .line 952
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    .line 953
    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->k()Lcom/yelp/android/appdata/webrequests/core/MetricsManager;

    move-result-object v3

    iput-object v3, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aF:Lcom/yelp/android/appdata/webrequests/core/MetricsManager;

    .line 954
    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aG:Lcom/yelp/android/appdata/webrequests/co;

    .line 955
    new-instance v0, Lcom/yelp/android/ui/util/k;

    invoke-direct {v0}, Lcom/yelp/android/ui/util/k;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->m:Lcom/yelp/android/ui/util/k;

    .line 957
    new-instance v0, Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter;

    sget-object v3, Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter$RankMode;->BIZ:Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter$RankMode;

    invoke-direct {v0, v1, v3}, Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter;-><init>(Landroid/content/Context;Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter$RankMode;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->W:Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter;

    .line 959
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aY:Ljava/util/LinkedHashSet;

    .line 960
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aY:Ljava/util/LinkedHashSet;

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/appdata/AppData;->g()Lcom/yelp/android/appdata/LocaleSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/appdata/LocaleSettings;->h()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 962
    const-string/jumbo v0, "search_request"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/SearchRequest;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aZ:Lcom/yelp/android/appdata/webrequests/SearchRequest;

    .line 963
    const-string/jumbo v0, "business_search_result"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/BusinessSearchResult;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aD:Lcom/yelp/android/serializable/BusinessSearchResult;

    .line 965
    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/yelp/android/bh/b;->b:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->bd:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 968
    if-eqz p1, :cond_2

    .line 969
    const-string/jumbo v0, "mCheckInNotifications"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aH:Ljava/util/ArrayList;

    .line 971
    const-string/jumbo v0, "deal dialog"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 972
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->m:Lcom/yelp/android/ui/util/k;

    const-string/jumbo v0, "deal dialog"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpDeal;

    invoke-virtual {v1, v0, v4}, Lcom/yelp/android/ui/util/k;->a(Lcom/yelp/android/serializable/YelpDeal;Z)V

    .line 976
    :cond_0
    const-string/jumbo v0, "extra.multiple"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 977
    const-string/jumbo v0, "extra.multiple"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aa:Ljava/util/ArrayList;

    .line 980
    :cond_1
    const-string/jumbo v0, "comment_text"

    const-string/jumbo v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aI:Ljava/lang/String;

    .line 981
    const-string/jumbo v0, "has_tracked_offline_attribution"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aK:Z

    .line 983
    const-string/jumbo v0, "show_message_other_biz"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aj:Z

    .line 986
    :cond_2
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->v()V

    .line 988
    invoke-virtual {p0, v4}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->setHasOptionsMenu(Z)V

    .line 989
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .prologue
    .line 3458
    const v0, 0x7f100005

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 3459
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 1119
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aQ:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->a()V

    .line 1120
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onDestroy()V

    .line 1121
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aP:Lcom/yelp/android/ui/map/YelpMap;

    invoke-virtual {v0}, Lcom/yelp/android/ui/map/YelpMap;->d()V

    .line 1122
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aQ:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->setAdListener(Lcom/google/android/gms/ads/a;)V

    .line 1124
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->q:Lcom/yelp/android/appdata/webrequests/cl;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->c(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 1125
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->D:Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->c(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 1126
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->G:Lcom/yelp/android/appdata/webrequests/dw;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->c(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 1127
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->N:Lcom/yelp/android/appdata/webrequests/ck;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->c(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 1128
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->T:Lcom/yelp/android/appdata/webrequests/dy;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->c(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 1129
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->Z:Lcom/yelp/android/appdata/webrequests/ae;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->c(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 1130
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aO:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->c(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 1131
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ad:Lcom/yelp/android/appdata/webrequests/z;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->c(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 1132
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->af:Lcom/yelp/android/appdata/webrequests/dj;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->c(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 1133
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ah:Lcom/yelp/android/appdata/webrequests/messaging/g;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->c(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 1134
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
    .line 4350
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    .line 4352
    instance-of v1, v0, Lcom/yelp/android/ui/activities/businesspage/BusinessDealsOffers;

    if-eqz v1, :cond_1

    .line 4353
    check-cast v0, Lcom/yelp/android/ui/activities/businesspage/BusinessDealsOffers;

    .line 4354
    sget-object v1, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$59;->b:[I

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessDealsOffers;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 4441
    :cond_0
    :goto_0
    return-void

    .line 4356
    :pswitch_0
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ad()V

    goto :goto_0

    .line 4359
    :pswitch_1
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BusinessCheckInOffer:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v1, "button"

    invoke-direct {p0, v0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Lcom/yelp/android/analytics/iris/EventIri;Ljava/lang/String;)V

    .line 4360
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ao()V

    goto :goto_0

    .line 4363
    :pswitch_2
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ae()V

    goto :goto_0

    .line 4366
    :cond_1
    instance-of v1, v0, Lcom/yelp/android/ui/activities/businesspage/ClaimButtonAdapter$ClaimButton;

    if-eqz v1, :cond_2

    .line 4367
    check-cast v0, Lcom/yelp/android/ui/activities/businesspage/ClaimButtonAdapter$ClaimButton;

    .line 4368
    sget-object v1, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$59;->c:[I

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/businesspage/ClaimButtonAdapter$ClaimButton;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 4370
    :pswitch_3
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    sget-object v2, Lcom/yelp/android/util/BizClaimUtil$SourceButton;->BIZPAGE_TOP_TEASER:Lcom/yelp/android/util/BizClaimUtil$SourceButton;

    invoke-static {v0, v1, v2}, Lcom/yelp/android/util/BizClaimUtil;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/util/BizClaimUtil$SourceButton;)V

    goto :goto_0

    .line 4373
    :cond_2
    instance-of v1, v0, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;

    if-eqz v1, :cond_3

    .line 4374
    check-cast v0, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;

    .line 4375
    sget-object v1, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$59;->d:[I

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    .line 4377
    :pswitch_4
    const-string/jumbo v0, "button"

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 4380
    :pswitch_5
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ag()V

    goto :goto_0

    .line 4383
    :pswitch_6
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ah()V

    goto :goto_0

    .line 4386
    :pswitch_7
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ai()V

    goto :goto_0

    .line 4389
    :pswitch_8
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aj()V

    goto :goto_0

    .line 4392
    :pswitch_9
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ak()V

    goto :goto_0

    .line 4395
    :pswitch_a
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->am()V

    goto :goto_0

    .line 4398
    :pswitch_b
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->an()V

    goto :goto_0

    .line 4401
    :cond_3
    instance-of v1, v0, Lcom/yelp/android/ui/activities/businesspage/g;

    if-eqz v1, :cond_4

    .line 4402
    check-cast v0, Lcom/yelp/android/ui/activities/businesspage/g;

    .line 4403
    sget-object v1, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$59;->e:[I

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/businesspage/g;->a()Lcom/yelp/android/serializable/SearchAction;

    move-result-object v2

    invoke-interface {v2}, Lcom/yelp/android/serializable/SearchAction;->a()Lcom/yelp/android/serializable/BusinessSearchResult$SearchActionType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/BusinessSearchResult$SearchActionType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_3

    goto/16 :goto_0

    .line 4405
    :pswitch_c
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aj()V

    goto/16 :goto_0

    .line 4408
    :pswitch_d
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/businesspage/g;->a()Lcom/yelp/android/serializable/SearchAction;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/PlatformSearchAction;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Lcom/yelp/android/serializable/PlatformSearchAction;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4411
    :cond_4
    instance-of v1, v0, Lcom/yelp/android/ui/activities/businesspage/BusinessRedeemButton;

    if-eqz v1, :cond_5

    .line 4412
    check-cast v0, Lcom/yelp/android/ui/activities/businesspage/BusinessRedeemButton;

    .line 4413
    sget-object v1, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$59;->f:[I

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessRedeemButton;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_4

    goto/16 :goto_0

    .line 4415
    :pswitch_e
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->g()V

    goto/16 :goto_0

    .line 4418
    :pswitch_f
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ac()V

    goto/16 :goto_0

    .line 4421
    :cond_5
    instance-of v1, v0, Lcom/yelp/android/serializable/YelpBusinessReview;

    if-eqz v1, :cond_6

    move-object v5, v0

    .line 4422
    check-cast v5, Lcom/yelp/android/serializable/YelpBusinessReview;

    .line 4423
    new-instance v4, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->U:Ljava/util/List;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4424
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->z()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/YelpBusiness;->aw()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    iget-object v6, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->au:Ljava/util/Map;

    iget-object v7, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->av:Ljava/util/ArrayList;

    const/4 v8, 0x1

    invoke-static/range {v0 .. v8}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/util/Map;Ljava/util/ArrayList;Z)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x41d

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 4436
    :cond_6
    instance-of v1, v0, Lcom/yelp/android/serializable/DisplayableAsUserBadge;

    if-eqz v1, :cond_0

    .line 4438
    check-cast v0, Lcom/yelp/android/serializable/DisplayableAsUserBadge;

    .line 4439
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0}, Lcom/yelp/android/serializable/DisplayableAsUserBadge;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 4354
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 4368
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch

    .line 4375
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch

    .line 4403
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_c
        :pswitch_d
    .end packed-switch

    .line 4413
    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_e
        :pswitch_f
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
    .line 4336
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    .line 4337
    instance-of v1, v0, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;

    if-eqz v1, :cond_0

    .line 4338
    check-cast v0, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;

    .line 4339
    sget-object v1, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;->CALL:Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;

    if-ne v0, v1, :cond_0

    .line 4340
    const v0, 0x7f07047e

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->as()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4342
    const/4 v0, 0x1

    .line 4345
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 1005
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onLowMemory()V

    .line 1006
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aP:Lcom/yelp/android/ui/map/YelpMap;

    invoke-virtual {v0}, Lcom/yelp/android/ui/map/YelpMap;->e()V

    .line 1007
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 3536
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 3572
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 3538
    :sswitch_0
    sget-object v1, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->BizPageMenu:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    invoke-direct {p0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->b(Lcom/yelp/android/ui/activities/reviews/ReviewSource;)Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    move-result-object v1

    .line 3539
    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Lcom/yelp/android/ui/activities/reviews/ReviewSource;)V

    goto :goto_0

    .line 3542
    :sswitch_1
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->BusinessAddPhoto:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v2, "menu"

    invoke-direct {p0, v1, v2}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Lcom/yelp/android/analytics/iris/EventIri;Ljava/lang/String;)V

    .line 3543
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->h()V

    goto :goto_0

    .line 3546
    :sswitch_2
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->BusinessCheckIn:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v2, "menu"

    invoke-direct {p0, v1, v2}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Lcom/yelp/android/analytics/iris/EventIri;Ljava/lang/String;)V

    .line 3547
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ao()V

    goto :goto_0

    .line 3550
    :sswitch_3
    const-string/jumbo v1, "menu"

    invoke-direct {p0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->k(Ljava/lang/String;)V

    .line 3551
    const-string/jumbo v1, "menu"

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 3554
    :sswitch_4
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->BusinessToggleBookmark:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v2, "menu"

    invoke-direct {p0, v1, v2}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Lcom/yelp/android/analytics/iris/EventIri;Ljava/lang/String;)V

    .line 3555
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->x_()V

    goto :goto_0

    .line 3558
    :sswitch_5
    const-string/jumbo v1, "menu"

    invoke-direct {p0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 3561
    :sswitch_6
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->BusinessEditClicked:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v2, "menu"

    invoke-direct {p0, v1, v2}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Lcom/yelp/android/analytics/iris/EventIri;Ljava/lang/String;)V

    .line 3562
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->f()V

    goto :goto_0

    .line 3565
    :sswitch_7
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->af()V

    goto :goto_0

    .line 3568
    :sswitch_8
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->BusinessShare:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v2, "menu"

    invoke-direct {p0, v1, v2}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Lcom/yelp/android/analytics/iris/EventIri;Ljava/lang/String;)V

    .line 3569
    new-instance v1, Lcom/yelp/android/services/BusinessShareFormatter;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-direct {v1, v2}, Lcom/yelp/android/services/BusinessShareFormatter;-><init>(Lcom/yelp/android/serializable/YelpBusiness;)V

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Lcom/yelp/android/services/ShareFormatter;)V

    goto :goto_0

    .line 3536
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0f0228 -> :sswitch_4
        0x7f0f05f3 -> :sswitch_0
        0x7f0f05f4 -> :sswitch_1
        0x7f0f05f5 -> :sswitch_2
        0x7f0f05f6 -> :sswitch_3
        0x7f0f05f7 -> :sswitch_5
        0x7f0f05f8 -> :sswitch_6
        0x7f0f05f9 -> :sswitch_7
        0x7f0f05fa -> :sswitch_8
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 993
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aQ:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->b()V

    .line 994
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onPause()V

    .line 995
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aP:Lcom/yelp/android/ui/map/YelpMap;

    invoke-virtual {v0}, Lcom/yelp/android/ui/map/YelpMap;->b()V

    .line 997
    const-string/jumbo v0, "continue_last_order_info_request"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->be:Lcom/yelp/android/appdata/webrequests/aw;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 998
    const-string/jumbo v0, "continue_last_order_check_availability_request"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->bf:Lcom/yelp/android/appdata/webrequests/av;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 1001
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 3463
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v4

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_3

    .line 3464
    invoke-interface {p1, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 3483
    :goto_1
    sget-object v0, Lcom/yelp/android/appdata/Features;->video_capture:Lcom/yelp/android/appdata/Features;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/Features;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3484
    const v0, 0x7f0f05f4

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v5, 0x7f070118

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 3463
    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 3471
    :sswitch_0
    invoke-interface {p1, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->bg:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_2
    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_2

    .line 3474
    :sswitch_1
    invoke-interface {p1, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->bh:Z

    if-nez v0, :cond_2

    move v0, v1

    :goto_3
    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_3

    .line 3480
    :sswitch_2
    invoke-interface {p1, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 3487
    :cond_3
    const v0, 0x7f0f05f2

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->b:Landroid/view/MenuItem;

    .line 3488
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;

    .line 3489
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->a()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3492
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v3, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$35;

    invoke-direct {v3, p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$35;-><init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3503
    :cond_4
    sget-object v0, Lcom/yelp/android/appdata/experiment/e;->f:Lcom/yelp/android/appdata/experiment/ShareToolbarExperiment;

    sget-object v3, Lcom/yelp/android/appdata/experiment/ShareToolbarExperiment$Cohort;->share_toolbar_enabled:Lcom/yelp/android/appdata/experiment/ShareToolbarExperiment$Cohort;

    invoke-virtual {v0, v3}, Lcom/yelp/android/appdata/experiment/ShareToolbarExperiment;->a(Ljava/lang/Enum;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3504
    const v0, 0x7f0f05fa

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/support/v4/view/q;->a(Landroid/view/MenuItem;I)V

    .line 3527
    :cond_5
    :goto_4
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 3529
    const v0, 0x7f0f05f3

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->w()Lcom/yelp/android/ui/activities/reviews/ReviewState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/reviews/ReviewState;->getTextResourceForState()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 3532
    :cond_6
    return-void

    .line 3507
    :cond_7
    const v0, 0x7f0f05f5

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 3508
    const v0, 0x7f0f0228

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 3509
    if-eqz v3, :cond_5

    if-eqz v4, :cond_5

    .line 3510
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->r()Lcom/yelp/android/appdata/LocationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/LocationService;->c()Landroid/location/Location;

    move-result-object v0

    .line 3511
    iget-object v5, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v5, v0}, Lcom/yelp/android/serializable/YelpBusiness;->a(Landroid/location/Location;)D

    move-result-wide v6

    .line 3512
    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    cmpl-double v0, v8, v6

    if-lez v0, :cond_8

    .line 3513
    invoke-static {v3, v1}, Landroid/support/v4/view/q;->a(Landroid/view/MenuItem;I)V

    .line 3514
    invoke-static {v4, v2}, Landroid/support/v4/view/q;->a(Landroid/view/MenuItem;I)V

    goto :goto_4

    .line 3516
    :cond_8
    invoke-static {v4, v1}, Landroid/support/v4/view/q;->a(Landroid/view/MenuItem;I)V

    .line 3517
    const v0, 0x7f020040

    .line 3518
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->U()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 3519
    const v0, 0x7f02003f

    .line 3521
    :cond_9
    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3522
    invoke-static {v3, v2}, Landroid/support/v4/view/q;->a(Landroid/view/MenuItem;I)V

    goto :goto_4

    .line 3464
    :sswitch_data_0
    .sparse-switch
        0x7f0f0228 -> :sswitch_2
        0x7f0f05f3 -> :sswitch_0
        0x7f0f05f4 -> :sswitch_0
        0x7f0f05f5 -> :sswitch_0
        0x7f0f05f6 -> :sswitch_0
        0x7f0f05f7 -> :sswitch_2
        0x7f0f05f8 -> :sswitch_1
        0x7f0f05f9 -> :sswitch_2
        0x7f0f05fa -> :sswitch_2
    .end sparse-switch
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 1011
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onResume()V

    .line 1012
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->c:Lcom/yelp/android/ui/panels/businesspage/b;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/businesspage/b;->b(Lcom/yelp/android/ui/util/PullDownListView;)V

    .line 1013
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aP:Lcom/yelp/android/ui/map/YelpMap;

    invoke-virtual {v0}, Lcom/yelp/android/ui/map/YelpMap;->c()V

    .line 1014
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aQ:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->c()V

    .line 1018
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aa()V

    .line 1020
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aB:Z

    if-eqz v0, :cond_4

    .line 1021
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->c:Lcom/yelp/android/ui/panels/businesspage/b;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/businesspage/b;->b(Lcom/yelp/android/serializable/YelpBusiness;)V

    .line 1028
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->c:Lcom/yelp/android/ui/panels/businesspage/b;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/businesspage/b;->a(Lcom/yelp/android/serializable/YelpBusiness;)V

    .line 1030
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->bb:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$b;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$b;->b()V

    .line 1032
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aM:Lcom/yelp/android/ui/dialogs/YelpProgressDialogFragment;

    if-nez v0, :cond_0

    .line 1033
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    const-string/jumbo v1, "continue_last_order_info_fragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/l;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/dialogs/YelpProgressDialogFragment;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aM:Lcom/yelp/android/ui/dialogs/YelpProgressDialogFragment;

    .line 1039
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aN:Lcom/yelp/android/ui/dialogs/YelpProgressDialogFragment;

    if-nez v0, :cond_1

    .line 1040
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    const-string/jumbo v1, "continue_last_order_check_availability_fragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/l;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/dialogs/YelpProgressDialogFragment;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aN:Lcom/yelp/android/ui/dialogs/YelpProgressDialogFragment;

    .line 1047
    :cond_1
    const-string/jumbo v0, "continue_last_order_info_request"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->be:Lcom/yelp/android/appdata/webrequests/aw;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->by:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/aw;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->be:Lcom/yelp/android/appdata/webrequests/aw;

    .line 1052
    const-string/jumbo v0, "continue_last_order_check_availability_request"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->bf:Lcom/yelp/android/appdata/webrequests/av;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->bz:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/av;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->bf:Lcom/yelp/android/appdata/webrequests/av;

    .line 1059
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->d()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/yelp/android/appdata/experiment/e;->t:Lcom/yelp/android/appdata/experiment/TwoBucketExperiment;

    sget-object v1, Lcom/yelp/android/appdata/experiment/TwoBucketExperiment$Cohort;->enabled:Lcom/yelp/android/appdata/experiment/TwoBucketExperiment$Cohort;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/experiment/TwoBucketExperiment;->a(Ljava/lang/Enum;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1062
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->j()V

    .line 1066
    :cond_2
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "message_the_business_notification"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 1068
    if-eqz v0, :cond_3

    .line 1069
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->b(Landroid/content/Intent;)V

    .line 1071
    :cond_3
    return-void

    .line 1023
    :cond_4
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->Z()V

    goto/16 :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 1138
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1139
    const-string/jumbo v0, "mCheckInNotifications"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aH:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1140
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aP:Lcom/yelp/android/ui/map/YelpMap;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/map/YelpMap;->a(Landroid/os/Bundle;)V

    .line 1142
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aa:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aa:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1143
    const-string/jumbo v0, "extra.multiple"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aa:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1145
    :cond_0
    const-string/jumbo v0, "comment_text"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aI:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1146
    const-string/jumbo v0, "has_tracked_offline_attribution"

    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aK:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1147
    const-string/jumbo v0, "show_message_other_biz"

    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aj:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1148
    return-void
.end method

.method public onStart()V
    .locals 7

    .prologue
    .line 1075
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onStart()V

    .line 1077
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->T()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1078
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BusinessMessageTheBusinessShown:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 1081
    :cond_0
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aK:Z

    if-nez v0, :cond_1

    .line 1082
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    sget-object v1, Lcom/yelp/android/appdata/webrequests/TrackOfflineAttributionRequest$OfflineAttributionEventType;->PAGE_VIEW:Lcom/yelp/android/appdata/webrequests/TrackOfflineAttributionRequest$OfflineAttributionEventType;

    invoke-static {v0, v1}, Lcom/yelp/android/appdata/webrequests/TrackOfflineAttributionRequest;->a(Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/appdata/webrequests/TrackOfflineAttributionRequest$OfflineAttributionEventType;)Z

    .line 1083
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aK:Z

    .line 1086
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->bd()Lcom/yelp/android/serializable/AndroidAppAnnotation;

    move-result-object v5

    .line 1087
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/yelp/android/serializable/AndroidAppAnnotation;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1099
    :cond_2
    :goto_0
    return-void

    .line 1091
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->bd:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 1092
    sget-object v0, Lcom/yelp/android/bh/b;->c:Lcom/yelp/android/bh/c;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->bd:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v5}, Lcom/yelp/android/serializable/AndroidAppAnnotation;->b()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v5}, Lcom/yelp/android/serializable/AndroidAppAnnotation;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, Lcom/yelp/android/serializable/AndroidAppAnnotation;->c()Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/yelp/android/bh/c;->a(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;Ljava/util/List;)Lcom/google/android/gms/common/api/PendingResult;

    goto :goto_0
.end method

.method public onStop()V
    .locals 4

    .prologue
    .line 1102
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onStop()V

    .line 1104
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->bd()Lcom/yelp/android/serializable/AndroidAppAnnotation;

    move-result-object v0

    .line 1105
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/AndroidAppAnnotation;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1111
    :cond_0
    :goto_0
    return-void

    .line 1109
    :cond_1
    sget-object v1, Lcom/yelp/android/bh/b;->c:Lcom/yelp/android/bh/c;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->bd:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v0}, Lcom/yelp/android/serializable/AndroidAppAnnotation;->b()Landroid/net/Uri;

    move-result-object v0

    invoke-interface {v1, v2, v3, v0}, Lcom/yelp/android/bh/c;->a(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/app/Activity;Landroid/net/Uri;)Lcom/google/android/gms/common/api/PendingResult;

    .line 1110
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->bd:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    goto :goto_0
.end method

.method public x_()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2837
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aG:Lcom/yelp/android/appdata/webrequests/co;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2838
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aG:Lcom/yelp/android/appdata/webrequests/co;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2840
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->U()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2842
    new-instance v0, Lcom/yelp/android/appdata/webrequests/dk;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->bv:Lcom/yelp/android/appdata/webrequests/core/c$a;

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/appdata/webrequests/dk;-><init>(Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/appdata/webrequests/core/c$a;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aO:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 2844
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BusinessRemoveBookmark:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Lcom/yelp/android/analytics/iris/EventIri;)V

    .line 2846
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ba:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$a;

    if-eqz v0, :cond_0

    .line 2847
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ba:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$a;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$a;->a(Z)V

    .line 2860
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ab()V

    .line 2861
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aO:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 2882
    :goto_1
    return-void

    .line 2852
    :cond_1
    new-instance v0, Lcom/yelp/android/appdata/webrequests/h;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->br:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/appdata/webrequests/h;-><init>(Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aO:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 2853
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BusinessAddBookmark:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Lcom/yelp/android/analytics/iris/EventIri;)V

    .line 2854
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->l()Lcom/yelp/android/analytics/adjust/AdjustManager;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/analytics/adjust/AdjustManager$YelpAdjustEvent;->ADD_BOOKMARK:Lcom/yelp/android/analytics/adjust/AdjustManager$YelpAdjustEvent;

    invoke-virtual {v0, v1}, Lcom/yelp/android/analytics/adjust/AdjustManager;->a(Lcom/yelp/android/analytics/adjust/AdjustManager$YelpAdjustEvent;)V

    .line 2856
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ba:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$a;

    if-eqz v0, :cond_0

    .line 2857
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->ba:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$a;

    invoke-interface {v0, v3}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$a;->a(Z)V

    goto :goto_0

    .line 2864
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->U()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2865
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f070203

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->a(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x3f1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2875
    :goto_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->c:Lcom/yelp/android/ui/panels/businesspage/b;

    invoke-virtual {v0, v3}, Lcom/yelp/android/ui/panels/businesspage/b;->setBookmarkChecked(Z)V

    goto :goto_1

    .line 2870
    :cond_3
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0701fd

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->a(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x3ef

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2

    .line 2879
    :cond_4
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aE:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->aq()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method
