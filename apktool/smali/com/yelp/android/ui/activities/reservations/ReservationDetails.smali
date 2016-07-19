.class public Lcom/yelp/android/ui/activities/reservations/ReservationDetails;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "ReservationDetails.java"


# instance fields
.field private a:Lcom/yelp/android/serializable/YelpBusiness;

.field private b:Lcom/yelp/android/ui/widgets/ListOfDetails;

.field private c:Landroid/widget/Button;

.field private d:Lcom/yelp/android/appdata/webrequests/af;

.field private e:Lcom/yelp/android/appdata/webrequests/core/c;

.field private final f:Lcom/yelp/android/appdata/webrequests/core/c$a;

.field private final g:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    .line 261
    new-instance v0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails$3;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/reservations/ReservationDetails$3;-><init>(Lcom/yelp/android/ui/activities/reservations/ReservationDetails;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->f:Lcom/yelp/android/appdata/webrequests/core/c$a;

    .line 278
    new-instance v0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails$4;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/reservations/ReservationDetails$4;-><init>(Lcom/yelp/android/ui/activities/reservations/ReservationDetails;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->g:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 72
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 73
    const-string/jumbo v1, "extra.business"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 74
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/reservations/ReservationDetails;Lcom/yelp/android/appdata/webrequests/core/c;)Lcom/yelp/android/appdata/webrequests/core/c;
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->e:Lcom/yelp/android/appdata/webrequests/core/c;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/reservations/ReservationDetails;Lcom/yelp/android/serializable/YelpBusiness;)Lcom/yelp/android/serializable/YelpBusiness;
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->a:Lcom/yelp/android/serializable/YelpBusiness;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/reservations/ReservationDetails;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->d()V

    return-void
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/reservations/ReservationDetails;)Lcom/yelp/android/serializable/YelpBusiness;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->a:Lcom/yelp/android/serializable/YelpBusiness;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/reservations/ReservationDetails;)Lcom/yelp/android/appdata/webrequests/core/c$a;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->f:Lcom/yelp/android/appdata/webrequests/core/c$a;

    return-object v0
.end method

.method private c()V
    .locals 5

    .prologue
    .line 154
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->aF()Lcom/yelp/android/serializable/Reservation;

    move-result-object v1

    .line 156
    invoke-virtual {v1}, Lcom/yelp/android/serializable/Reservation;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->setTitle(Ljava/lang/CharSequence;)V

    .line 158
    invoke-virtual {v1}, Lcom/yelp/android/serializable/Reservation;->h()Ljava/lang/String;

    move-result-object v2

    .line 159
    invoke-virtual {v1}, Lcom/yelp/android/serializable/Reservation;->l()Ljava/util/List;

    move-result-object v3

    .line 162
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 165
    const v0, 0x7f0f01cd

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/ListOfDetails;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->b:Lcom/yelp/android/ui/widgets/ListOfDetails;

    .line 166
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->b:Lcom/yelp/android/ui/widgets/ListOfDetails;

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/widgets/ListOfDetails;->a(Ljava/lang/String;)V

    .line 168
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/AttributedLabelValuePair;

    .line 169
    iget-object v3, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->b:Lcom/yelp/android/ui/widgets/ListOfDetails;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/AttributedLabelValuePair;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/yelp/android/serializable/AttributedLabelValuePair;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/yelp/android/ui/widgets/ListOfDetails;->a(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/view/View;

    goto :goto_0

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->b:Lcom/yelp/android/ui/widgets/ListOfDetails;

    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/ListOfDetails;->a()V

    .line 174
    :cond_1
    const v0, 0x7f0f01ce

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->c:Landroid/widget/Button;

    .line 175
    invoke-virtual {v1}, Lcom/yelp/android/serializable/Reservation;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 176
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->c:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 188
    :goto_1
    return-void

    .line 178
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->c:Landroid/widget/Button;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Reservation;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->c:Landroid/widget/Button;

    new-instance v1, Lcom/yelp/android/ui/activities/reservations/ReservationDetails$1;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/reservations/ReservationDetails$1;-><init>(Lcom/yelp/android/ui/activities/reservations/ReservationDetails;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/reservations/ReservationDetails;)Lcom/yelp/android/appdata/webrequests/core/c;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->e:Lcom/yelp/android/appdata/webrequests/core/c;

    return-object v0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 225
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 226
    const-string/jumbo v1, "business_id"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    const-string/jumbo v1, "provider"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->ae()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->k()Lcom/yelp/android/appdata/webrequests/core/MetricsManager;

    move-result-object v1

    sget-object v2, Lcom/yelp/android/analytics/iris/ViewIri;->ReservationCancel:Lcom/yelp/android/analytics/iris/ViewIri;

    invoke-virtual {v1, v2, v0}, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 230
    const/16 v0, 0x12c

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->showDialog(I)V

    .line 231
    return-void
.end method

.method private e()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 247
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0, v3}, Lcom/yelp/android/serializable/YelpBusiness;->a(Lcom/yelp/android/serializable/Reservation;)V

    .line 248
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->i()Lcom/yelp/android/database/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/database/g;->d()Lcom/yelp/android/database/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0, v1}, Lcom/yelp/android/database/b;->a(Lcom/yelp/android/serializable/YelpBusiness;)V

    .line 255
    new-instance v0, Lcom/yelp/android/util/ObjectDirtyEvent;

    new-instance v1, Lcom/yelp/android/serializable/ReservationChangeEvent;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-direct {v1, v3, v2}, Lcom/yelp/android/serializable/ReservationChangeEvent;-><init>(Lcom/yelp/android/serializable/Reservation;Lcom/yelp/android/serializable/YelpBusiness;)V

    const-string/jumbo v2, "com.yelp.android.reservation.update"

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/util/ObjectDirtyEvent;-><init>(Landroid/os/Parcelable;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/yelp/android/util/ObjectDirtyEvent;->a(Landroid/content/Context;)V

    .line 259
    return-void
.end method

.method static synthetic e(Lcom/yelp/android/ui/activities/reservations/ReservationDetails;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->e()V

    return-void
.end method


# virtual methods
.method public a()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;>;"
        }
    .end annotation

    .prologue
    .line 121
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getLastCustomNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    return-object v0
.end method

.method public b()Landroid/util/SparseArray;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;>;"
        }
    .end annotation

    .prologue
    .line 126
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 127
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->d:Lcom/yelp/android/appdata/webrequests/af;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 128
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->e:Lcom/yelp/android/appdata/webrequests/core/c;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 129
    return-object v0
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 235
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->ReservationDetails:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getLastCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->a()Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method public getParametersForIri(Lcom/yelp/android/analytics/iris/a;)Ljava/util/Map;
    .locals 3
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
    .line 240
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 241
    const-string/jumbo v1, "business_id"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    const-string/jumbo v1, "provider"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->ae()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 79
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    const v0, 0x7f03004f

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->setContentView(I)V

    .line 82
    if-eqz p1, :cond_3

    .line 83
    const-string/jumbo v0, "saved.business"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->a:Lcom/yelp/android/serializable/YelpBusiness;

    .line 89
    :goto_0
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getLastCustomNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 92
    if-eqz v0, :cond_0

    .line 93
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/appdata/webrequests/af;

    iput-object v1, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->d:Lcom/yelp/android/appdata/webrequests/af;

    .line 94
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/core/c;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->e:Lcom/yelp/android/appdata/webrequests/core/c;

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->aF()Lcom/yelp/android/serializable/Reservation;

    move-result-object v0

    .line 98
    if-nez v0, :cond_4

    .line 99
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->d:Lcom/yelp/android/appdata/webrequests/af;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->d:Lcom/yelp/android/appdata/webrequests/af;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/af;->u()Z

    move-result v0

    if-nez v0, :cond_2

    .line 100
    :cond_1
    new-instance v0, Lcom/yelp/android/appdata/webrequests/af;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->g:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/appdata/webrequests/af;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->d:Lcom/yelp/android/appdata/webrequests/af;

    .line 101
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->d:Lcom/yelp/android/appdata/webrequests/af;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->enableLoading(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 102
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->d:Lcom/yelp/android/appdata/webrequests/af;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/af;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 116
    :cond_2
    :goto_1
    return-void

    .line 85
    :cond_3
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.business"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->a:Lcom/yelp/android/serializable/YelpBusiness;

    goto :goto_0

    .line 104
    :cond_4
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->e:Lcom/yelp/android/appdata/webrequests/core/c;

    if-eqz v0, :cond_6

    .line 105
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->e:Lcom/yelp/android/appdata/webrequests/core/c;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/core/c;->v()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 108
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->f:Lcom/yelp/android/appdata/webrequests/core/c$a;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->e:Lcom/yelp/android/appdata/webrequests/core/c;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/yelp/android/appdata/webrequests/core/c$a;->onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V

    goto :goto_1

    .line 110
    :cond_5
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->e:Lcom/yelp/android/appdata/webrequests/core/c;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->enableLoading(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 111
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->e:Lcom/yelp/android/appdata/webrequests/core/c;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->f:Lcom/yelp/android/appdata/webrequests/core/c$a;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/core/c;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    goto :goto_1

    .line 114
    :cond_6
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->c()V

    goto :goto_1
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 192
    packed-switch p1, :pswitch_data_0

    .line 219
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 194
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f07045f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070689

    new-instance v2, Lcom/yelp/android/ui/activities/reservations/ReservationDetails$2;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/reservations/ReservationDetails$2;-><init>(Lcom/yelp/android/ui/activities/reservations/ReservationDetails;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07041b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 192
    nop

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 140
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onDestroy()V

    .line 142
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->d:Lcom/yelp/android/appdata/webrequests/af;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->d:Lcom/yelp/android/appdata/webrequests/af;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/af;->a(Z)V

    .line 144
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->d:Lcom/yelp/android/appdata/webrequests/af;

    invoke-virtual {v0, v2}, Lcom/yelp/android/appdata/webrequests/af;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->e:Lcom/yelp/android/appdata/webrequests/core/c;

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->e:Lcom/yelp/android/appdata/webrequests/core/c;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/core/c;->a(Z)V

    .line 149
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->e:Lcom/yelp/android/appdata/webrequests/core/c;

    invoke-virtual {v0, v2}, Lcom/yelp/android/appdata/webrequests/core/c;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 151
    :cond_1
    return-void
.end method

.method public synthetic onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->b()Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 134
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 135
    const-string/jumbo v0, "saved.business"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 136
    return-void
.end method
