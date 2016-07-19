.class public Lcom/yelp/android/ui/activities/reservations/ChooseReservationFragment;
.super Lcom/yelp/android/ui/activities/support/YelpFragment;
.source "ChooseReservationFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/reservations/ChooseReservationFragment$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/GridView;

.field private b:Lcom/yelp/android/serializable/YelpBusiness;

.field private c:Lcom/yelp/android/ui/activities/reservations/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;-><init>()V

    .line 211
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

    .line 172
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Reservation;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Reservation;->m()Ljava/util/Date;

    move-result-object v1

    .line 173
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Reservation;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Reservation;->m()Ljava/util/Date;

    move-result-object v0

    .line 183
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

    .line 187
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

    .line 198
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public static a(Ljava/util/Date;Ljava/util/ArrayList;Lcom/yelp/android/serializable/YelpBusiness;)Lcom/yelp/android/ui/activities/reservations/ChooseReservationFragment;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/Reservation;",
            ">;",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            ")",
            "Lcom/yelp/android/ui/activities/reservations/ChooseReservationFragment;"
        }
    .end annotation

    .prologue
    .line 65
    new-instance v0, Lcom/yelp/android/ui/activities/reservations/ChooseReservationFragment;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/reservations/ChooseReservationFragment;-><init>()V

    .line 66
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 67
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/reservations/ChooseReservationFragment;->setArguments(Landroid/os/Bundle;)V

    .line 68
    const-string/jumbo v2, "reservations"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 69
    const-string/jumbo v2, "desired_time"

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 70
    const-string/jumbo v2, "business"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 71
    return-object v0
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
    .line 145
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reservations/ChooseReservationFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f012d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 146
    new-instance v1, Ljava/text/SimpleDateFormat;

    const v2, 0x7f070468

    invoke-virtual {p0, v2}, Lcom/yelp/android/ui/activities/reservations/ChooseReservationFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 150
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 151
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 153
    const v3, 0x7f07045e

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-direct {p0, p2, v2}, Lcom/yelp/android/ui/activities/reservations/ChooseReservationFragment;->a(Ljava/util/ArrayList;Ljava/util/Calendar;)I

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

    invoke-virtual {p0, v3, v4}, Lcom/yelp/android/ui/activities/reservations/ChooseReservationFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
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
    .line 203
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reservations/ChooseReservationFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f012e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ChooseReservationFragment;->a:Landroid/widget/GridView;

    .line 204
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ChooseReservationFragment;->a:Landroid/widget/GridView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 205
    new-instance v0, Lcom/yelp/android/ui/activities/reservations/ChooseReservationFragment$a;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/reservations/ChooseReservationFragment$a;-><init>()V

    .line 206
    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/reservations/ChooseReservationFragment$a;->a(Ljava/util/List;)V

    .line 207
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reservations/ChooseReservationFragment;->a:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 208
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ChooseReservationFragment;->a:Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 209
    return-void
.end method


# virtual methods
.method public a()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->ReservationMatches:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reservations/ChooseReservationFragment;->a()Lcom/yelp/android/analytics/iris/ViewIri;

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
    .line 126
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reservations/ChooseReservationFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "reservations"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 129
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .line 136
    :goto_0
    return-object v0

    .line 133
    :cond_0
    new-instance v0, Lcom/yelp/android/g/a;

    invoke-direct {v0}, Lcom/yelp/android/g/a;-><init>()V

    .line 134
    const-string/jumbo v1, "business_id"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reservations/ChooseReservationFragment;->b:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    const-string/jumbo v1, "provider"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reservations/ChooseReservationFragment;->b:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->ae()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 76
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onAttach(Landroid/app/Activity;)V

    .line 77
    check-cast p1, Lcom/yelp/android/ui/activities/reservations/b;

    iput-object p1, p0, Lcom/yelp/android/ui/activities/reservations/ChooseReservationFragment;->c:Lcom/yelp/android/ui/activities/reservations/b;

    .line 78
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 83
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 84
    const v1, 0x7f030029

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p1, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
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
    .line 107
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Reservation;

    .line 110
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Reservation;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ChooseReservationFragment;->b:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->ao()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/ui/dialogs/CallNumberDialog;->a(Ljava/lang/String;)Lcom/yelp/android/ui/dialogs/CallNumberDialog;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reservations/ChooseReservationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/dialogs/CallNumberDialog;->show(Landroid/support/v4/app/l;Ljava/lang/String;)V

    .line 117
    :goto_0
    return-void

    .line 115
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reservations/ChooseReservationFragment;->c:Lcom/yelp/android/ui/activities/reservations/b;

    invoke-interface {v1, v0}, Lcom/yelp/android/ui/activities/reservations/b;->a(Lcom/yelp/android/serializable/Reservation;)V

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 90
    invoke-super {p0, p1, p2}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 91
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reservations/ChooseReservationFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "reservations"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 93
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reservations/ChooseReservationFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "desired_time"

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 94
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reservations/ChooseReservationFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v4, "business"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ChooseReservationFragment;->b:Lcom/yelp/android/serializable/YelpBusiness;

    .line 96
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/yelp/android/ui/activities/reservations/ChooseReservationFragment;->a(Ljava/lang/Long;Ljava/util/ArrayList;)V

    .line 97
    invoke-direct {p0, v1}, Lcom/yelp/android/ui/activities/reservations/ChooseReservationFragment;->a(Ljava/util/ArrayList;)V

    .line 100
    const v0, 0x7f0f012f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/ReservationAttribution;

    .line 102
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reservations/ChooseReservationFragment;->b:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->x()Lcom/yelp/android/serializable/Reservation$Provider;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/ReservationAttribution;->setProvider(Lcom/yelp/android/serializable/Reservation$Provider;)V

    .line 103
    return-void
.end method
