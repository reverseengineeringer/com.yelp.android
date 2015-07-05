.class public Lcom/yelp/android/ui/activities/reservations/ChooseReservation;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "ChooseReservation.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/yelp/android/appdata/webrequests/m;
.implements Lcom/yelp/android/ui/activities/support/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/activities/support/YelpActivity;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Lcom/yelp/android/appdata/webrequests/m",
        "<",
        "Lcom/yelp/android/appdata/webrequests/en;",
        ">;",
        "Lcom/yelp/android/ui/activities/support/l;"
    }
.end annotation


# instance fields
.field private a:Landroid/widget/GridView;

.field private b:Lcom/yelp/android/ui/activities/reservations/h;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    .line 290
    return-void
.end method

.method private a(Ljava/util/ArrayList;Ljava/util/Calendar;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/Reservation;",
            ">;",
            "Ljava/util/Calendar;",
            ")I"
        }
    .end annotation

    .prologue
    const-wide v6, 0x414b774000000000L    # 3600000.0

    .line 192
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Reservation;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Reservation;->getDatestamp()Ljava/util/Date;

    move-result-object v1

    .line 193
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Reservation;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Reservation;->getDatestamp()Ljava/util/Date;

    move-result-object v0

    .line 203
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    .line 206
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    sub-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    long-to-double v0, v0

    div-double/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    .line 216
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public static a(Landroid/content/Context;Ljava/util/Date;Ljava/util/ArrayList;Lcom/yelp/android/serializable/YelpBusiness;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Date;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/Reservation;",
            ">;",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 84
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/reservations/ChooseReservation;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 85
    const-string/jumbo v1, "extra.reservations"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 86
    const-string/jumbo v1, "extra.desired_time"

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 87
    const-string/jumbo v1, "extra.business"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 88
    const-string/jumbo v1, "extra.biz_dimension"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    const-string/jumbo v1, "extra.source"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    return-object v0
.end method

.method private a(Lcom/yelp/android/serializable/Reservation;)V
    .locals 3

    .prologue
    .line 231
    const v0, 0x7f0c00e3

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reservations/ChooseReservation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/ReservationAttribution;

    .line 232
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reservations/ChooseReservation;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "extra.business"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/YelpBusiness;

    .line 233
    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->getReservationProvider()Lcom/yelp/android/serializable/Reservation$Provider;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/ReservationAttribution;->setProvider(Lcom/yelp/android/serializable/Reservation$Provider;)V

    .line 234
    return-void
.end method

.method private a(Ljava/lang/Long;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/Reservation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 169
    const v0, 0x7f0c00e1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reservations/ChooseReservation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 170
    const v1, 0x7f070445

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/reservations/ChooseReservation;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yelp/android/serializable/Reservation;->getDatestampForDisplay(Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object v1

    .line 172
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 173
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 175
    const v3, 0x7f070439

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-direct {p0, p2, v2}, Lcom/yelp/android/ui/activities/reservations/ChooseReservation;->a(Ljava/util/ArrayList;Ljava/util/Calendar;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/yelp/android/ui/activities/reservations/ChooseReservation;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    return-void
.end method

.method private a(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/Reservation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 222
    const v0, 0x7f0c00e2

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reservations/ChooseReservation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ChooseReservation;->a:Landroid/widget/GridView;

    .line 223
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ChooseReservation;->a:Landroid/widget/GridView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 224
    new-instance v0, Lcom/yelp/android/ui/activities/reservations/b;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/reservations/b;-><init>(Landroid/content/Context;)V

    .line 225
    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/reservations/b;->a(Ljava/util/List;)V

    .line 226
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reservations/ChooseReservation;->a:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 227
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ChooseReservation;->a:Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 228
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/reservations/ChooseReservation;)Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/reservations/ChooseReservation;->c:Z

    return v0
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;)V"
        }
    .end annotation

    .prologue
    .line 279
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ChooseReservation;->a:Landroid/widget/GridView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ChooseReservation;->a:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 280
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reservations/ChooseReservation;->finish()V

    .line 282
    :cond_1
    return-void
.end method

.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/en;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/en;",
            ")V"
        }
    .end annotation

    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reservations/ChooseReservation;->hideLoadingDialog()V

    .line 261
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reservations/ChooseReservation;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.business"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/yelp/android/serializable/YelpBusiness;

    .line 262
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reservations/ChooseReservation;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.biz_dimension"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 263
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reservations/ChooseReservation;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.source"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 264
    const v8, 0x7f07035f

    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/en;->a()Lcom/yelp/android/serializable/Reservation;

    move-result-object v1

    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/en;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/en;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/en;->d()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/yelp/android/ui/activities/reservations/ConfirmReservation;->a(Landroid/content/Context;Lcom/yelp/android/serializable/Reservation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/serializable/YelpBusiness;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v8, v0}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/content/Context;ILandroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 271
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reservations/ChooseReservation;->startActivity(Landroid/content/Intent;)V

    .line 272
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/reservations/ChooseReservation;->c:Z

    if-eqz v0, :cond_0

    .line 273
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reservations/ChooseReservation;->finish()V

    .line 275
    :cond_0
    return-void
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 326
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reservations/ChooseReservation;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public getParametersForIri(Lcom/yelp/android/analytics/iris/b;)Ljava/util/Map;
    .locals 4
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
    .line 331
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reservations/ChooseReservation;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.reservations"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 334
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .line 342
    :goto_0
    return-object v0

    .line 338
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reservations/ChooseReservation;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.business"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    .line 339
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 340
    const-string/jumbo v2, "business_id"

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    const-string/jumbo v2, "provider"

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getReservationProviderString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    .line 342
    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 95
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 97
    new-instance v0, Lcom/yelp/android/ui/activities/reservations/a;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/reservations/a;-><init>(Lcom/yelp/android/ui/activities/reservations/ChooseReservation;)V

    .line 107
    new-instance v1, Lcom/yelp/android/ui/activities/reservations/h;

    invoke-direct {v1, v9, v0}, Lcom/yelp/android/ui/activities/reservations/h;-><init>(ILandroid/content/DialogInterface$OnClickListener;)V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/reservations/ChooseReservation;->b:Lcom/yelp/android/ui/activities/reservations/h;

    .line 109
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reservations/ChooseReservation;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.reservations"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 111
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reservations/ChooseReservation;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.desired_time"

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v1, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 112
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reservations/ChooseReservation;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.business"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    .line 114
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/Reservation;

    .line 115
    invoke-virtual {v1}, Lcom/yelp/android/serializable/Reservation;->getDatestamp()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    cmp-long v6, v6, v4

    if-nez v6, :cond_0

    .line 118
    invoke-virtual {v1}, Lcom/yelp/android/serializable/Reservation;->hasCreditCardHold()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 119
    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getDialablePhone()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/ui/dialogs/CallNumberDialog;->a(Ljava/lang/String;)Lcom/yelp/android/ui/dialogs/CallNumberDialog;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reservations/ChooseReservation;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/yelp/android/ui/dialogs/CallNumberDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 134
    :cond_1
    iput-boolean v8, p0, Lcom/yelp/android/ui/activities/reservations/ChooseReservation;->c:Z

    .line 135
    const v0, 0x7f030021

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reservations/ChooseReservation;->setContentView(I)V

    .line 138
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->ReservationMatches:Lcom/yelp/android/analytics/iris/ViewIri;

    sget-object v1, Lcom/yelp/android/analytics/iris/ViewIri;->ReservationMatches:Lcom/yelp/android/analytics/iris/ViewIri;

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/reservations/ChooseReservation;->getParametersForIri(Lcom/yelp/android/analytics/iris/b;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/util/Map;)V

    .line 141
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/yelp/android/ui/activities/reservations/ChooseReservation;->a(Ljava/lang/Long;Ljava/util/ArrayList;)V

    .line 142
    invoke-direct {p0, v2}, Lcom/yelp/android/ui/activities/reservations/ChooseReservation;->a(Ljava/util/ArrayList;)V

    .line 145
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Reservation;

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/reservations/ChooseReservation;->a(Lcom/yelp/android/serializable/Reservation;)V

    .line 146
    :goto_0
    return-void

    .line 124
    :cond_2
    new-instance v2, Lcom/yelp/android/appdata/webrequests/em;

    invoke-direct {v2, v1, v0, p0}, Lcom/yelp/android/appdata/webrequests/em;-><init>(Lcom/yelp/android/serializable/Reservation;Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 126
    invoke-virtual {p0, v2, p0}, Lcom/yelp/android/ui/activities/reservations/ChooseReservation;->showLoadingDialog(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/ui/activities/support/l;)V

    .line 127
    new-array v0, v8, [Ljava/lang/Void;

    invoke-virtual {v2, v0}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 128
    iput-boolean v9, p0, Lcom/yelp/android/ui/activities/reservations/ChooseReservation;->c:Z

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ChooseReservation;->b:Lcom/yelp/android/ui/activities/reservations/h;

    invoke-virtual {v0, p0}, Lcom/yelp/android/ui/activities/reservations/h;->a(Landroid/app/Activity;)Landroid/app/AlertDialog;

    move-result-object v0

    .line 153
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
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
    .line 286
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ChooseReservation;->b:Lcom/yelp/android/ui/activities/reservations/h;

    invoke-virtual {v0, p0, p2}, Lcom/yelp/android/ui/activities/reservations/h;->a(Landroid/app/Activity;Lcom/yelp/android/appdata/webrequests/YelpException;)Z

    .line 287
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reservations/ChooseReservation;->hideLoadingDialog()V

    .line 288
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 239
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Reservation;

    .line 240
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reservations/ChooseReservation;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "extra.business"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/YelpBusiness;

    .line 243
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Reservation;->hasCreditCardHold()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 244
    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->getDialablePhone()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/ui/dialogs/CallNumberDialog;->a(Ljava/lang/String;)Lcom/yelp/android/ui/dialogs/CallNumberDialog;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reservations/ChooseReservation;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/dialogs/CallNumberDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 256
    :goto_0
    return-void

    .line 251
    :cond_0
    new-instance v2, Lcom/yelp/android/appdata/webrequests/em;

    invoke-direct {v2, v0, v1, p0}, Lcom/yelp/android/appdata/webrequests/em;-><init>(Lcom/yelp/android/serializable/Reservation;Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 253
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v2, v0}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 254
    invoke-virtual {p0, v2, p0}, Lcom/yelp/android/ui/activities/reservations/ChooseReservation;->showLoadingDialog(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/ui/activities/support/l;)V

    goto :goto_0
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 1

    .prologue
    .line 158
    packed-switch p1, :pswitch_data_0

    .line 163
    invoke-super {p0, p1, p2}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 165
    :goto_0
    return-void

    .line 160
    :pswitch_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ChooseReservation;->b:Lcom/yelp/android/ui/activities/reservations/h;

    invoke-virtual {v0, p0, p2}, Lcom/yelp/android/ui/activities/reservations/h;->a(Landroid/app/Activity;Landroid/app/Dialog;)V

    goto :goto_0

    .line 158
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 59
    check-cast p2, Lcom/yelp/android/appdata/webrequests/en;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/reservations/ChooseReservation;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/en;)V

    return-void
.end method
