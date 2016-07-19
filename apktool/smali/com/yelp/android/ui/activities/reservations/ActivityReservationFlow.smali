.class public Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "ActivityReservationFlow.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/reservations/b;


# instance fields
.field private a:Lcom/yelp/android/ui/activities/reservations/a;

.field private b:Landroid/content/DialogInterface$OnClickListener;

.field private c:Lcom/yelp/android/serializable/YelpBusiness;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcom/yelp/android/appdata/webrequests/by;

.field private g:Lcom/yelp/android/appdata/webrequests/dp;

.field private h:Lcom/yelp/android/analytics/iris/ViewIri;

.field private i:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Lcom/yelp/android/appdata/webrequests/by$a;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Lcom/yelp/android/serializable/ReservationLeaseResponse;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Landroid/content/DialogInterface$OnClickListener;

.field private l:Landroid/content/DialogInterface$OnDismissListener;

.field private m:Lcom/yelp/android/ui/activities/support/b$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    .line 433
    new-instance v0, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow$1;-><init>(Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->i:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    .line 474
    new-instance v0, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow$2;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow$2;-><init>(Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->j:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    .line 514
    new-instance v0, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow$3;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow$3;-><init>(Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->k:Landroid/content/DialogInterface$OnClickListener;

    .line 523
    new-instance v0, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow$4;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow$4;-><init>(Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->l:Landroid/content/DialogInterface$OnDismissListener;

    .line 533
    new-instance v0, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow$5;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow$5;-><init>(Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->m:Lcom/yelp/android/ui/activities/support/b$b;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/BusinessSearchResult;Ljava/lang/String;Lcom/yelp/android/serializable/ReservationSearchAction;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 111
    invoke-virtual {p1}, Lcom/yelp/android/serializable/BusinessSearchResult;->a()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yelp/android/serializable/BusinessSearchResult;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1, p2}, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.search_action"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 100
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "extra.business.key"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.biz_dimension"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.source"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private a()Landroid/support/v4/app/Fragment;
    .locals 2

    .prologue
    .line 382
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    const v1, 0x7f0f020d

    invoke-virtual {v0, v1}, Landroid/support/v4/app/l;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;Lcom/yelp/android/analytics/iris/ViewIri;)Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->h:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;)Lcom/yelp/android/serializable/YelpBusiness;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->c:Lcom/yelp/android/serializable/YelpBusiness;

    return-object v0
.end method

.method static synthetic a(Ljava/util/ArrayList;)Z
    .locals 1

    .prologue
    .line 50
    invoke-static {p0}, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->b(Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;)Landroid/content/DialogInterface$OnDismissListener;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->l:Landroid/content/DialogInterface$OnDismissListener;

    return-object v0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 390
    new-instance v0, Lcom/yelp/android/g/a;

    invoke-direct {v0}, Lcom/yelp/android/g/a;-><init>()V

    .line 391
    const-string/jumbo v1, "source"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->h:Lcom/yelp/android/analytics/iris/ViewIri;

    invoke-virtual {v2}, Lcom/yelp/android/analytics/iris/ViewIri;->getIriName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/yelp/android/util/StringUtils;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 393
    const-string/jumbo v1, "biz_dimension"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    :goto_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->e:Ljava/lang/String;

    const-string/jumbo v2, "source_business_page"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->e:Ljava/lang/String;

    const-string/jumbo v2, "source_vertical_business_page"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 399
    :cond_0
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->BusinessReservationCancel:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v1, v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 408
    :cond_1
    :goto_1
    return-void

    .line 395
    :cond_2
    const-string/jumbo v1, "biz_dimension"

    const-string/jumbo v2, "none"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 400
    :cond_3
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->e:Ljava/lang/String;

    const-string/jumbo v2, "source_search_page"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->e:Ljava/lang/String;

    const-string/jumbo v2, "source_vertical_search_page"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 402
    :cond_4
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->SearchReservationCancel:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v1, v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    goto :goto_1

    .line 403
    :cond_5
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->e:Ljava/lang/String;

    const-string/jumbo v2, "source_feed"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 404
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->FeedNearbyReservationCancel:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v1, v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    goto :goto_1

    .line 405
    :cond_6
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->e:Ljava/lang/String;

    const-string/jumbo v2, "source_more_info_page"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 406
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->MoreInfoPageReservationCancel:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v1, v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    goto :goto_1
.end method

.method private static b(Ljava/util/ArrayList;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/Reservation;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 122
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    .line 130
    :goto_0
    return v0

    .line 125
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Reservation;

    .line 126
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Reservation;->b()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 127
    goto :goto_0

    .line 130
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->k:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 414
    new-instance v0, Lcom/yelp/android/g/a;

    invoke-direct {v0}, Lcom/yelp/android/g/a;-><init>()V

    .line 415
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/yelp/android/util/StringUtils;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 416
    const-string/jumbo v1, "biz_dimension"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    :goto_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->e:Ljava/lang/String;

    const-string/jumbo v2, "source_business_page"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->e:Ljava/lang/String;

    const-string/jumbo v2, "source_vertical_business_page"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 422
    :cond_0
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->BusinessReservationConfirmed:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v1, v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 431
    :cond_1
    :goto_1
    return-void

    .line 418
    :cond_2
    const-string/jumbo v1, "biz_dimension"

    const-string/jumbo v2, "none"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 423
    :cond_3
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->e:Ljava/lang/String;

    const-string/jumbo v2, "source_search_page"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->e:Ljava/lang/String;

    const-string/jumbo v2, "source_vertical_search_page"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 425
    :cond_4
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->SearchReservationConfirmed:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v1, v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    goto :goto_1

    .line 426
    :cond_5
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->e:Ljava/lang/String;

    const-string/jumbo v2, "source_feed"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 427
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->FeedNearbyReservationConfirmed:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v1, v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    goto :goto_1

    .line 428
    :cond_6
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->e:Ljava/lang/String;

    const-string/jumbo v2, "source_more_info_page"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 429
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->MoreInfoPageReservationConfirmed:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v1, v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    goto :goto_1
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;)Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->a()Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(ILjava/util/Date;)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .prologue
    .line 265
    new-instance v0, Lcom/yelp/android/appdata/webrequests/by;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->i:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->c:Lcom/yelp/android/serializable/YelpBusiness;

    iget-object v5, p0, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->e:Ljava/lang/String;

    move-object v3, p2

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/appdata/webrequests/by;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;Lcom/yelp/android/serializable/YelpBusiness;Ljava/util/Date;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->f:Lcom/yelp/android/appdata/webrequests/by;

    .line 268
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->f:Lcom/yelp/android/appdata/webrequests/by;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/by;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 269
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->f:Lcom/yelp/android/appdata/webrequests/by;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->m:Lcom/yelp/android/ui/activities/support/b$b;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->showLoadingDialog(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/ui/activities/support/b$b;)V

    .line 270
    return-void
.end method

.method public a(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .prologue
    .line 349
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->b:Landroid/content/DialogInterface$OnClickListener;

    .line 350
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/Reservation;)V
    .locals 3

    .prologue
    .line 274
    new-instance v0, Lcom/yelp/android/appdata/webrequests/dp;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->c:Lcom/yelp/android/serializable/YelpBusiness;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->j:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-direct {v0, p1, v1, v2}, Lcom/yelp/android/appdata/webrequests/dp;-><init>(Lcom/yelp/android/serializable/Reservation;Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->g:Lcom/yelp/android/appdata/webrequests/dp;

    .line 277
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->g:Lcom/yelp/android/appdata/webrequests/dp;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/dp;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 278
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->g:Lcom/yelp/android/appdata/webrequests/dp;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->m:Lcom/yelp/android/ui/activities/support/b$b;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->showLoadingDialog(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/ui/activities/support/b$b;)V

    .line 279
    return-void
.end method

.method public a(Lcom/yelp/android/appdata/webrequests/YelpException;)Z
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->a:Lcom/yelp/android/ui/activities/reservations/a;

    invoke-virtual {v0, p0, p1}, Lcom/yelp/android/ui/activities/reservations/a;->a(Landroid/app/Activity;Lcom/yelp/android/appdata/webrequests/YelpException;)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/util/Date;Lcom/yelp/android/appdata/webrequests/by$a;)Z
    .locals 6

    .prologue
    .line 313
    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/by$a;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Reservation;

    .line 314
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Reservation;->m()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 317
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Reservation;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 318
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->c:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->ao()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/ui/dialogs/CallNumberDialog;->a(Ljava/lang/String;)Lcom/yelp/android/ui/dialogs/CallNumberDialog;

    move-result-object v0

    .line 320
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->l:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/CallNumberDialog;->a(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 321
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v1

    const-string/jumbo v2, "call_number_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/dialogs/CallNumberDialog;->show(Landroid/support/v4/app/l;Ljava/lang/String;)V

    .line 323
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->hideLoadingDialog()V

    .line 328
    :goto_0
    const/4 v0, 0x1

    .line 341
    :goto_1
    return v0

    .line 325
    :cond_1
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->a(Lcom/yelp/android/serializable/Reservation;)V

    goto :goto_0

    .line 332
    :cond_2
    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/by$a;->a()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/by$a;->b()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->c:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-static {v0, v1, v2}, Lcom/yelp/android/ui/activities/reservations/ChooseReservationFragment;->a(Ljava/util/Date;Ljava/util/ArrayList;Lcom/yelp/android/serializable/YelpBusiness;)Lcom/yelp/android/ui/activities/reservations/ChooseReservationFragment;

    move-result-object v0

    .line 335
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/l;->a()Landroid/support/v4/app/o;

    move-result-object v1

    const v2, 0x7f0f020d

    const-string/jumbo v3, "choose_reservation_fragment"

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/o;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/o;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/o;->a(Ljava/lang/String;)Landroid/support/v4/app/o;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/o;->a()I

    .line 340
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->ReservationMatches:Lcom/yelp/android/analytics/iris/ViewIri;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->h:Lcom/yelp/android/analytics/iris/ViewIri;

    .line 341
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public b(Lcom/yelp/android/serializable/Reservation;)V
    .locals 3

    .prologue
    .line 283
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->c()V

    .line 289
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 290
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->c:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 298
    :goto_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->e:Ljava/lang/String;

    const-string/jumbo v2, "source_business_page"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->e:Ljava/lang/String;

    const-string/jumbo v2, "source_vertical_business_page"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 299
    :cond_0
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 301
    :cond_1
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->startActivity(Landroid/content/Intent;)V

    .line 302
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->finish()V

    .line 303
    return-void

    .line 292
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->c:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 257
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/l;->e()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->a()Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_1

    .line 230
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/l;->c()V

    .line 231
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->b()V

    .line 233
    :cond_1
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onBackPressed()V

    .line 234
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const v4, 0x7f0f020d

    .line 135
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 136
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 137
    const-string/jumbo v0, "extra.biz_dimension"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->d:Ljava/lang/String;

    .line 138
    const-string/jumbo v0, "extra.business.key"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->c:Lcom/yelp/android/serializable/YelpBusiness;

    .line 140
    const-string/jumbo v0, "extra.source"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->e:Ljava/lang/String;

    .line 142
    new-instance v0, Lcom/yelp/android/ui/activities/reservations/a;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lcom/yelp/android/ui/activities/reservations/a;-><init>(I)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->a:Lcom/yelp/android/ui/activities/reservations/a;

    .line 143
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->ReservationFind:Lcom/yelp/android/analytics/iris/ViewIri;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->h:Lcom/yelp/android/analytics/iris/ViewIri;

    .line 145
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v4/app/l;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 148
    if-nez v0, :cond_1

    if-nez p1, :cond_1

    .line 149
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->f()Lcom/yelp/android/appdata/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/c;->Q()Lcom/yelp/android/serializable/ReservationFilter;

    move-result-object v0

    .line 154
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "extra.search_action"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "source_vertical_search_page"

    iget-object v3, p0, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "source_vertical_business_page"

    iget-object v3, p0, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "source_feed"

    iget-object v3, p0, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 158
    :cond_0
    const-string/jumbo v0, "extra.search_action"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/ReservationSearchAction;

    .line 160
    invoke-virtual {v0}, Lcom/yelp/android/serializable/ReservationSearchAction;->k()I

    move-result v1

    invoke-virtual {v0}, Lcom/yelp/android/serializable/ReservationSearchAction;->o()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->a(ILjava/util/Date;)V

    .line 178
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    const-string/jumbo v1, "call_number_dialog"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/l;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/dialogs/CallNumberDialog;

    .line 182
    if-eqz v0, :cond_2

    .line 183
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->l:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/CallNumberDialog;->a(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 185
    :cond_2
    return-void

    .line 161
    :cond_3
    const-string/jumbo v1, "source_vertical_business_page"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    .line 165
    invoke-virtual {v0}, Lcom/yelp/android/serializable/ReservationFilter;->d()I

    move-result v1

    invoke-virtual {v0}, Lcom/yelp/android/serializable/ReservationFilter;->e()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->a(ILjava/util/Date;)V

    goto :goto_0

    .line 169
    :cond_4
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->c:Lcom/yelp/android/serializable/YelpBusiness;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;->a(Lcom/yelp/android/serializable/YelpBusiness;Ljava/lang/String;)Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;

    move-result-object v0

    .line 170
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/l;->a()Landroid/support/v4/app/o;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Landroid/support/v4/app/o;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/o;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/o;->a(Ljava/lang/String;)Landroid/support/v4/app/o;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/o;->a()I

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 238
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->a:Lcom/yelp/android/ui/activities/reservations/a;

    invoke-virtual {v0, p0}, Lcom/yelp/android/ui/activities/reservations/a;->a(Landroid/app/Activity;)Landroid/app/AlertDialog;

    move-result-object v0

    .line 241
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 216
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 217
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->onBackPressed()V

    .line 218
    const/4 v0, 0x1

    .line 220
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 209
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onPause()V

    .line 210
    const-string/jumbo v0, "find_reservation"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->f:Lcom/yelp/android/appdata/webrequests/by;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->freezeRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 211
    const-string/jumbo v0, "lease_reservation"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->g:Lcom/yelp/android/appdata/webrequests/dp;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->freezeRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 212
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 2

    .prologue
    .line 246
    packed-switch p1, :pswitch_data_0

    .line 251
    invoke-super {p0, p1, p2}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 253
    :goto_0
    return-void

    .line 248
    :pswitch_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->a:Lcom/yelp/android/ui/activities/reservations/a;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->b:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, p0, p2, v1}, Lcom/yelp/android/ui/activities/reservations/a;->a(Landroid/app/Activity;Landroid/app/Dialog;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 246
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 189
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onResume()V

    .line 190
    const-string/jumbo v0, "find_reservation"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->f:Lcom/yelp/android/appdata/webrequests/by;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->i:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->thawRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/by;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->f:Lcom/yelp/android/appdata/webrequests/by;

    .line 195
    const-string/jumbo v0, "lease_reservation"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->g:Lcom/yelp/android/appdata/webrequests/dp;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->j:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->thawRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/dp;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->g:Lcom/yelp/android/appdata/webrequests/dp;

    .line 200
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->f:Lcom/yelp/android/appdata/webrequests/by;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->f:Lcom/yelp/android/appdata/webrequests/by;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/by;->v()Z

    move-result v0

    if-nez v0, :cond_1

    .line 201
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->f:Lcom/yelp/android/appdata/webrequests/by;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->m:Lcom/yelp/android/ui/activities/support/b$b;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->showLoadingDialog(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/ui/activities/support/b$b;)V

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->g:Lcom/yelp/android/appdata/webrequests/dp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->g:Lcom/yelp/android/appdata/webrequests/dp;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dp;->v()Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->g:Lcom/yelp/android/appdata/webrequests/dp;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->m:Lcom/yelp/android/ui/activities/support/b$b;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->showLoadingDialog(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/ui/activities/support/b$b;)V

    goto :goto_0
.end method
