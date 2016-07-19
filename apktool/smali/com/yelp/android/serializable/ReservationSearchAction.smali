.class public Lcom/yelp/android/serializable/ReservationSearchAction;
.super Lcom/yelp/android/serializable/_ReservationSearchAction;
.source "ReservationSearchAction.java"

# interfaces
.implements Lcom/yelp/android/serializable/SearchAction;


# static fields
.field public static final CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/parcelgen/JsonParser$DualCreator",
            "<",
            "Lcom/yelp/android/serializable/ReservationSearchAction;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private m:Lcom/yelp/android/ui/activities/businesspage/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 137
    new-instance v0, Lcom/yelp/android/serializable/ReservationSearchAction$2;

    invoke-direct {v0}, Lcom/yelp/android/serializable/ReservationSearchAction$2;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/ReservationSearchAction;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/yelp/android/serializable/_ReservationSearchAction;-><init>()V

    return-void
.end method

.method public static a(Lcom/yelp/android/serializable/BusinessSearchResult;Lcom/yelp/android/serializable/YelpBusiness;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/serializable/BusinessSearchResult;",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    new-instance v1, Lcom/yelp/android/g/a;

    invoke-direct {v1}, Lcom/yelp/android/g/a;-><init>()V

    .line 36
    const/4 v0, 0x0

    .line 37
    if-eqz p0, :cond_0

    .line 38
    invoke-virtual {p0}, Lcom/yelp/android/serializable/BusinessSearchResult;->g()Ljava/lang/String;

    move-result-object v0

    .line 40
    :cond_0
    invoke-static {v0}, Lcom/yelp/android/util/StringUtils;->d(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 41
    const-string/jumbo v2, "biz_dimension"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    :cond_1
    const-string/jumbo v0, "id"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    return-object v1
.end method


# virtual methods
.method public a()Lcom/yelp/android/serializable/BusinessSearchResult$SearchActionType;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/yelp/android/serializable/BusinessSearchResult$SearchActionType;->Reservation:Lcom/yelp/android/serializable/BusinessSearchResult$SearchActionType;

    return-object v0
.end method

.method public a(Landroid/app/Activity;Lcom/yelp/android/serializable/BusinessSearchResult;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 50
    invoke-virtual {p2}, Lcom/yelp/android/serializable/BusinessSearchResult;->a()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/yelp/android/serializable/ReservationSearchAction;->a(Lcom/yelp/android/serializable/BusinessSearchResult;Lcom/yelp/android/serializable/YelpBusiness;)Ljava/util/Map;

    move-result-object v1

    .line 53
    const-string/jumbo v2, "is_using_time_slot"

    invoke-virtual {p0}, Lcom/yelp/android/serializable/ReservationSearchAction;->o()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->SearchReservationOpen:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0, v1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 55
    const-string/jumbo v0, "source_search_page"

    .line 56
    invoke-virtual {p0}, Lcom/yelp/android/serializable/ReservationSearchAction;->o()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 57
    const-string/jumbo v0, "source_vertical_search_page"

    .line 59
    :cond_0
    invoke-static {p1, p2, v0, p0}, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->a(Landroid/content/Context;Lcom/yelp/android/serializable/BusinessSearchResult;Ljava/lang/String;Lcom/yelp/android/serializable/ReservationSearchAction;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 62
    return-void

    .line 53
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic a(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_ReservationSearchAction;->a(Landroid/os/Parcel;)V

    return-void
.end method

.method public bridge synthetic a(Lorg/json/JSONObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_ReservationSearchAction;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method public bridge synthetic b()Z
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Lcom/yelp/android/serializable/_ReservationSearchAction;->b()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Lcom/yelp/android/serializable/_ReservationSearchAction;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/yelp/android/ui/activities/businesspage/g;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/yelp/android/serializable/ReservationSearchAction;->m:Lcom/yelp/android/ui/activities/businesspage/g;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lcom/yelp/android/serializable/ReservationSearchAction$1;

    invoke-direct {v0, p0, p0}, Lcom/yelp/android/serializable/ReservationSearchAction$1;-><init>(Lcom/yelp/android/serializable/ReservationSearchAction;Lcom/yelp/android/serializable/ReservationSearchAction;)V

    iput-object v0, p0, Lcom/yelp/android/serializable/ReservationSearchAction;->m:Lcom/yelp/android/ui/activities/businesspage/g;

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/ReservationSearchAction;->m:Lcom/yelp/android/ui/activities/businesspage/g;

    return-object v0
.end method

.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Lcom/yelp/android/serializable/_ReservationSearchAction;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic e()[I
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Lcom/yelp/android/serializable/_ReservationSearchAction;->e()[I

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 91
    if-ne p0, p1, :cond_1

    .line 92
    const/4 v0, 0x1

    .line 134
    :cond_0
    :goto_0
    return v0

    .line 94
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 98
    check-cast p1, Lcom/yelp/android/serializable/ReservationSearchAction;

    .line 100
    invoke-virtual {p0}, Lcom/yelp/android/serializable/ReservationSearchAction;->b()Z

    move-result v1

    invoke-virtual {p1}, Lcom/yelp/android/serializable/ReservationSearchAction;->b()Z

    move-result v2

    if-ne v1, v2, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/yelp/android/serializable/ReservationSearchAction;->k()I

    move-result v1

    invoke-virtual {p1}, Lcom/yelp/android/serializable/ReservationSearchAction;->k()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/yelp/android/serializable/ReservationSearchAction;->o()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/yelp/android/serializable/ReservationSearchAction;->o()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p1}, Lcom/yelp/android/serializable/ReservationSearchAction;->o()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    :cond_2
    invoke-virtual {p0}, Lcom/yelp/android/serializable/ReservationSearchAction;->m()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/yelp/android/serializable/ReservationSearchAction;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/yelp/android/serializable/ReservationSearchAction;->m()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    :cond_3
    invoke-virtual {p0}, Lcom/yelp/android/serializable/ReservationSearchAction;->l()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/yelp/android/serializable/ReservationSearchAction;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/yelp/android/serializable/ReservationSearchAction;->l()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    :cond_4
    invoke-virtual {p0}, Lcom/yelp/android/serializable/ReservationSearchAction;->j()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/yelp/android/serializable/ReservationSearchAction;->j()[I

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/yelp/android/serializable/ReservationSearchAction;->i()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/yelp/android/serializable/ReservationSearchAction;->i()[I

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/yelp/android/serializable/ReservationSearchAction;->h()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/yelp/android/serializable/ReservationSearchAction;->h()[I

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/yelp/android/serializable/ReservationSearchAction;->g()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/yelp/android/serializable/ReservationSearchAction;->g()[I

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/yelp/android/serializable/ReservationSearchAction;->f()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/yelp/android/serializable/ReservationSearchAction;->f()[I

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/yelp/android/serializable/ReservationSearchAction;->e()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/yelp/android/serializable/ReservationSearchAction;->e()[I

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    goto/16 :goto_0

    .line 106
    :cond_5
    invoke-virtual {p1}, Lcom/yelp/android/serializable/ReservationSearchAction;->o()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_2

    goto/16 :goto_0

    .line 109
    :cond_6
    invoke-virtual {p1}, Lcom/yelp/android/serializable/ReservationSearchAction;->m()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    goto/16 :goto_0

    .line 114
    :cond_7
    invoke-virtual {p1}, Lcom/yelp/android/serializable/ReservationSearchAction;->l()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    goto/16 :goto_0
.end method

.method public bridge synthetic f()[I
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Lcom/yelp/android/serializable/_ReservationSearchAction;->f()[I

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic g()[I
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Lcom/yelp/android/serializable/_ReservationSearchAction;->g()[I

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic h()[I
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Lcom/yelp/android/serializable/_ReservationSearchAction;->h()[I

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Lcom/yelp/android/serializable/_ReservationSearchAction;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic i()[I
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Lcom/yelp/android/serializable/_ReservationSearchAction;->i()[I

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic j()[I
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Lcom/yelp/android/serializable/_ReservationSearchAction;->j()[I

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic k()I
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Lcom/yelp/android/serializable/_ReservationSearchAction;->k()I

    move-result v0

    return v0
.end method

.method public bridge synthetic l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Lcom/yelp/android/serializable/_ReservationSearchAction;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Lcom/yelp/android/serializable/_ReservationSearchAction;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic n()Lcom/yelp/android/ui/activities/businesspage/b;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/yelp/android/serializable/ReservationSearchAction;->d()Lcom/yelp/android/ui/activities/businesspage/g;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic o()Ljava/util/Date;
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Lcom/yelp/android/serializable/_ReservationSearchAction;->o()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 28
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_ReservationSearchAction;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
