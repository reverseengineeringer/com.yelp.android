.class public Lcom/yelp/android/ui/activities/reservations/ReservationDetails;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "ReservationDetails.java"


# instance fields
.field private a:Lcom/yelp/android/serializable/YelpBusiness;

.field private b:Lcom/yelp/android/ui/widgets/ListOfDetails;

.field private c:Landroid/widget/Button;

.field private d:Lcom/yelp/android/appdata/webrequests/ac;

.field private e:Lcom/yelp/android/av/h;

.field private final f:Lcom/yelp/android/av/i;

.field private final g:Lcom/yelp/android/appdata/webrequests/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/m",
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

    .line 248
    new-instance v0, Lcom/yelp/android/ui/activities/reservations/l;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/reservations/l;-><init>(Lcom/yelp/android/ui/activities/reservations/ReservationDetails;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->f:Lcom/yelp/android/av/i;

    .line 264
    new-instance v0, Lcom/yelp/android/ui/activities/reservations/m;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/reservations/m;-><init>(Lcom/yelp/android/ui/activities/reservations/ReservationDetails;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->g:Lcom/yelp/android/appdata/webrequests/m;

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

.method static synthetic a(Lcom/yelp/android/ui/activities/reservations/ReservationDetails;Lcom/yelp/android/av/h;)Lcom/yelp/android/av/h;
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->e:Lcom/yelp/android/av/h;

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

.method static synthetic c(Lcom/yelp/android/ui/activities/reservations/ReservationDetails;)Lcom/yelp/android/av/i;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->f:Lcom/yelp/android/av/i;

    return-object v0
.end method

.method private c()V
    .locals 5

    .prologue
    .line 154
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getReservation()Lcom/yelp/android/serializable/Reservation;

    move-result-object v1

    .line 156
    invoke-virtual {v1}, Lcom/yelp/android/serializable/Reservation;->getViewTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->setTitle(Ljava/lang/CharSequence;)V

    .line 158
    invoke-virtual {v1}, Lcom/yelp/android/serializable/Reservation;->getHeaderTitle()Ljava/lang/String;

    move-result-object v2

    .line 159
    invoke-virtual {v1}, Lcom/yelp/android/serializable/Reservation;->getAttributes()Ljava/util/List;

    move-result-object v3

    .line 162
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 163
    const v0, 0x7f0c019c

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/ListOfDetails;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->b:Lcom/yelp/android/ui/widgets/ListOfDetails;

    .line 164
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->b:Lcom/yelp/android/ui/widgets/ListOfDetails;

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/widgets/ListOfDetails;->a(Ljava/lang/String;)V

    .line 166
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/AttributedLabelValuePair;

    .line 167
    iget-object v3, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->b:Lcom/yelp/android/ui/widgets/ListOfDetails;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/AttributedLabelValuePair;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/yelp/android/serializable/AttributedLabelValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/yelp/android/ui/widgets/ListOfDetails;->a(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->b:Lcom/yelp/android/ui/widgets/ListOfDetails;

    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/ListOfDetails;->a()V

    .line 172
    :cond_1
    const v0, 0x7f0c019d

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->c:Landroid/widget/Button;

    .line 173
    invoke-virtual {v1}, Lcom/yelp/android/serializable/Reservation;->getCancelString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 174
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->c:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 185
    :goto_1
    return-void

    .line 176
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->c:Landroid/widget/Button;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Reservation;->getCancelString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->c:Landroid/widget/Button;

    new-instance v1, Lcom/yelp/android/ui/activities/reservations/j;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/reservations/j;-><init>(Lcom/yelp/android/ui/activities/reservations/ReservationDetails;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/reservations/ReservationDetails;)Lcom/yelp/android/av/h;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->e:Lcom/yelp/android/av/h;

    return-object v0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 216
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 217
    const-string/jumbo v1, "business_id"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    const-string/jumbo v1, "provider"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->getReservationProviderString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->k()Lcom/yelp/android/av/a;

    move-result-object v1

    sget-object v2, Lcom/yelp/android/analytics/iris/ViewIri;->ReservationCancel:Lcom/yelp/android/analytics/iris/ViewIri;

    invoke-virtual {v1, v2, v0}, Lcom/yelp/android/av/a;->a(Lcom/yelp/android/analytics/iris/b;Ljava/util/Map;)V

    .line 221
    const/16 v0, 0x12c

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->showDialog(I)V

    .line 222
    return-void
.end method

.method private e()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 238
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0, v3}, Lcom/yelp/android/serializable/YelpBusiness;->setReservation(Lcom/yelp/android/serializable/Reservation;)V

    .line 239
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->i()Lcom/yelp/android/database/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/database/q;->f()Lcom/yelp/android/database/d;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0, v1}, Lcom/yelp/android/database/d;->a(Lcom/yelp/android/serializable/YelpBusiness;)V

    .line 244
    new-instance v0, Lcom/yelp/android/util/ObjectDirtyEvent;

    new-instance v1, Lcom/yelp/android/serializable/ReservationChangeEvent;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-direct {v1, v3, v2}, Lcom/yelp/android/serializable/ReservationChangeEvent;-><init>(Lcom/yelp/android/serializable/Reservation;Lcom/yelp/android/serializable/YelpBusiness;)V

    const-string/jumbo v2, "com.yelp.android.reservation.update"

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/util/ObjectDirtyEvent;-><init>(Landroid/os/Parcelable;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/yelp/android/util/ObjectDirtyEvent;->a(Landroid/content/Context;)V

    .line 246
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

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->d:Lcom/yelp/android/appdata/webrequests/ac;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 128
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->e:Lcom/yelp/android/av/h;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 129
    return-object v0
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 226
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->ReservationDetails:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/b;
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

.method public getParametersForIri(Lcom/yelp/android/analytics/iris/b;)Ljava/util/Map;
    .locals 3
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
    .line 231
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 232
    const-string/jumbo v1, "business_id"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    const-string/jumbo v1, "provider"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->getReservationProviderString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 79
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    const v0, 0x7f030044

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

    check-cast v1, Lcom/yelp/android/appdata/webrequests/ac;

    iput-object v1, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->d:Lcom/yelp/android/appdata/webrequests/ac;

    .line 94
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/av/h;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->e:Lcom/yelp/android/av/h;

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getReservation()Lcom/yelp/android/serializable/Reservation;

    move-result-object v0

    .line 98
    if-nez v0, :cond_4

    .line 99
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->d:Lcom/yelp/android/appdata/webrequests/ac;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->d:Lcom/yelp/android/appdata/webrequests/ac;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/ac;->isFetching()Z

    move-result v0

    if-nez v0, :cond_2

    .line 100
    :cond_1
    new-instance v0, Lcom/yelp/android/appdata/webrequests/ac;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->g:Lcom/yelp/android/appdata/webrequests/m;

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/appdata/webrequests/ac;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->d:Lcom/yelp/android/appdata/webrequests/ac;

    .line 101
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->d:Lcom/yelp/android/appdata/webrequests/ac;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->enableLoading(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 102
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->d:Lcom/yelp/android/appdata/webrequests/ac;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/ac;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

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
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->e:Lcom/yelp/android/av/h;

    if-eqz v0, :cond_6

    .line 105
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->e:Lcom/yelp/android/av/h;

    invoke-virtual {v0}, Lcom/yelp/android/av/h;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 108
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->f:Lcom/yelp/android/av/i;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->e:Lcom/yelp/android/av/h;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/yelp/android/av/i;->onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V

    goto :goto_1

    .line 110
    :cond_5
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->e:Lcom/yelp/android/av/h;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->enableLoading(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 111
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->e:Lcom/yelp/android/av/h;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->f:Lcom/yelp/android/av/i;

    invoke-virtual {v0, v1}, Lcom/yelp/android/av/h;->setCallback(Lcom/yelp/android/appdata/webrequests/m;)V

    goto :goto_1

    .line 114
    :cond_6
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->c()V

    goto :goto_1
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 189
    packed-switch p1, :pswitch_data_0

    .line 210
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 191
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f07043a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0706b8

    new-instance v2, Lcom/yelp/android/ui/activities/reservations/k;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/reservations/k;-><init>(Lcom/yelp/android/ui/activities/reservations/ReservationDetails;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0703e9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 189
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
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->d:Lcom/yelp/android/appdata/webrequests/ac;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->d:Lcom/yelp/android/appdata/webrequests/ac;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/ac;->cancel(Z)V

    .line 144
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->d:Lcom/yelp/android/appdata/webrequests/ac;

    invoke-virtual {v0, v2}, Lcom/yelp/android/appdata/webrequests/ac;->setCallback(Lcom/yelp/android/appdata/webrequests/m;)V

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->e:Lcom/yelp/android/av/h;

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->e:Lcom/yelp/android/av/h;

    invoke-virtual {v0, v1}, Lcom/yelp/android/av/h;->cancel(Z)V

    .line 149
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->e:Lcom/yelp/android/av/h;

    invoke-virtual {v0, v2}, Lcom/yelp/android/av/h;->setCallback(Lcom/yelp/android/appdata/webrequests/m;)V

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
