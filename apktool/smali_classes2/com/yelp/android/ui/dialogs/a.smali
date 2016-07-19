.class public Lcom/yelp/android/ui/dialogs/a;
.super Lcom/yelp/android/ui/util/e;
.source "DeliveryReservationFilterAdapter.java"


# static fields
.field public static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;

.field private final d:Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 45
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "PlatformDelivery"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "OnlineReservations"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/yelp/android/ui/dialogs/a;->a:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/Collection;Ljava/util/Set;Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;)V
    .locals 17
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection",
            "<",
            "Lcom/yelp/android/serializable/DisplayGenericSearchFilter;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;",
            "Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;",
            ")V"
        }
    .end annotation

    .prologue
    .line 58
    const/4 v2, 0x0

    new-array v2, v2, [Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/yelp/android/ui/util/e;-><init>([Landroid/view/View;)V

    .line 59
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/yelp/android/ui/dialogs/a;->b:Ljava/util/Set;

    .line 60
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/yelp/android/ui/dialogs/a;->c:Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;

    .line 61
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/yelp/android/ui/dialogs/a;->d:Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;

    .line 63
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03009f

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    .line 66
    const v2, 0x7f0f029b

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .line 67
    const v2, 0x7f0f02fc

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/ToggleButton;

    .line 69
    const v2, 0x7f0f029c

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 70
    const v2, 0x7f0f02fc

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/ToggleButton;

    .line 72
    const/16 v2, 0x8

    invoke-virtual {v15, v2}, Landroid/view/View;->setVisibility(I)V

    .line 73
    const/16 v2, 0x8

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 75
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_0
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;

    .line 76
    invoke-virtual {v4}, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;->c()Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;

    move-result-object v2

    sget-object v5, Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;->Reservation:Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;

    if-ne v2, v5, :cond_1

    .line 77
    const v5, 0x7f0301dd

    sget-object v6, Lcom/yelp/android/analytics/iris/EventIri;->SearchFilterReservationOpen:Lcom/yelp/android/analytics/iris/EventIri;

    sget-object v7, Lcom/yelp/android/analytics/iris/EventIri;->SearchFilterReservationCancel:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v12}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/yelp/android/ui/dialogs/a;->a(Landroid/view/View;Lcom/yelp/android/serializable/DisplayGenericSearchFilter;ILcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/analytics/iris/EventIri;Ljava/util/List;)V

    goto :goto_0

    .line 84
    :cond_1
    invoke-virtual {v4}, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;->c()Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;

    move-result-object v2

    sget-object v5, Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;->Platform:Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;

    if-ne v2, v5, :cond_0

    .line 85
    const v8, 0x7f0300a0

    sget-object v9, Lcom/yelp/android/analytics/iris/EventIri;->SearchFilterDeliveryOpen:Lcom/yelp/android/analytics/iris/EventIri;

    sget-object v10, Lcom/yelp/android/analytics/iris/EventIri;->SearchFilterDeliveryCancel:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v13}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    move-object/from16 v5, p0

    move-object v6, v15

    move-object v7, v4

    invoke-direct/range {v5 .. v11}, Lcom/yelp/android/ui/dialogs/a;->a(Landroid/view/View;Lcom/yelp/android/serializable/DisplayGenericSearchFilter;ILcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/analytics/iris/EventIri;Ljava/util/List;)V

    goto :goto_0

    .line 96
    :cond_2
    const v2, 0x7f0204b4

    invoke-static {v3, v2}, Lcom/yelp/android/ui/util/ar;->a(Landroid/view/View;I)V

    .line 100
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_3

    .line 101
    const v2, 0x7f0204b4

    invoke-static {v15, v2}, Lcom/yelp/android/ui/util/ar;->a(Landroid/view/View;I)V

    .line 105
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/yelp/android/ui/dialogs/a;->b(Landroid/view/View;)V

    .line 106
    return-void
.end method

.method private a(Lcom/yelp/android/serializable/DisplayGenericSearchFilter;Landroid/widget/ToggleButton;Landroid/view/View;Lcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/analytics/iris/EventIri;Ljava/util/List;)Landroid/view/View$OnClickListener;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/serializable/DisplayGenericSearchFilter;",
            "Landroid/widget/ToggleButton;",
            "Landroid/view/View;",
            "Lcom/yelp/android/analytics/iris/EventIri;",
            "Lcom/yelp/android/analytics/iris/EventIri;",
            "Ljava/util/List",
            "<",
            "Landroid/widget/ToggleButton;",
            ">;)",
            "Landroid/view/View$OnClickListener;"
        }
    .end annotation

    .prologue
    .line 194
    new-instance v0, Lcom/yelp/android/ui/dialogs/a$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p5

    move-object v5, p3

    move-object v6, p4

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/yelp/android/ui/dialogs/a$1;-><init>(Lcom/yelp/android/ui/dialogs/a;Lcom/yelp/android/serializable/DisplayGenericSearchFilter;Landroid/widget/ToggleButton;Lcom/yelp/android/analytics/iris/EventIri;Landroid/view/View;Lcom/yelp/android/analytics/iris/EventIri;Ljava/util/List;)V

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/dialogs/a;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/a;->b:Ljava/util/Set;

    return-object v0
.end method

.method private a(Landroid/view/View;Lcom/yelp/android/serializable/DisplayGenericSearchFilter;ILcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/analytics/iris/EventIri;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/yelp/android/serializable/DisplayGenericSearchFilter;",
            "I",
            "Lcom/yelp/android/analytics/iris/EventIri;",
            "Lcom/yelp/android/analytics/iris/EventIri;",
            "Ljava/util/List",
            "<",
            "Landroid/widget/ToggleButton;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 132
    const v0, 0x7f0f02fd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    const v0, 0x7f0f02fc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ToggleButton;

    .line 136
    const v0, 0x7f0f02fe

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 137
    const v1, 0x7f0f02ff

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 140
    if-eqz p3, :cond_0

    if-nez v3, :cond_0

    .line 141
    invoke-virtual {v0, p3}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 142
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v3

    .line 145
    :cond_0
    invoke-virtual {p2}, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;->c()Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;->Reservation:Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;

    if-ne v0, v1, :cond_3

    move-object v0, v3

    .line 146
    check-cast v0, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchView;

    .line 147
    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/a;->c:Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;->a(Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchView;)V

    :cond_1
    :goto_0
    move-object v0, p0

    move-object v1, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 154
    invoke-direct/range {v0 .. v6}, Lcom/yelp/android/ui/dialogs/a;->a(Lcom/yelp/android/serializable/DisplayGenericSearchFilter;Landroid/widget/ToggleButton;Landroid/view/View;Lcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/analytics/iris/EventIri;Ljava/util/List;)Landroid/view/View$OnClickListener;

    move-result-object v0

    .line 162
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    invoke-virtual {v2, v0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/a;->b:Ljava/util/Set;

    invoke-static {p2, v0}, Lcom/yelp/android/ui/dialogs/FiltersDialog;->a(Lcom/yelp/android/serializable/DisplayGenericSearchFilter;Ljava/util/Set;)Z

    move-result v1

    .line 166
    if-eqz v3, :cond_2

    .line 167
    if-eqz v1, :cond_4

    move v0, v7

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 169
    :cond_2
    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 170
    invoke-virtual {v2, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 171
    return-void

    .line 148
    :cond_3
    invoke-virtual {p2}, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;->c()Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;->Platform:Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;

    if-ne v0, v1, :cond_1

    .line 149
    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/a;->d:Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;

    move-object v0, v3

    check-cast v0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;->a(Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView;)V

    goto :goto_0

    .line 167
    :cond_4
    const/16 v0, 0x8

    goto :goto_1
.end method


# virtual methods
.method public a()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/a;->b:Ljava/util/Set;

    return-object v0
.end method
