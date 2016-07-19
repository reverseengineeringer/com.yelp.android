.class abstract Lcom/yelp/android/serializable/_FeedReservationSearchActivity;
.super Ljava/lang/Object;
.source "_FeedReservationSearchActivity.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected a:Lcom/yelp/android/serializable/BusinessSearchResult;

.field protected b:Lcom/yelp/android/serializable/YelpBusiness;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 75
    const-class v0, Lcom/yelp/android/serializable/BusinessSearchResult;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/BusinessSearchResult;

    iput-object v0, p0, Lcom/yelp/android/serializable/_FeedReservationSearchActivity;->a:Lcom/yelp/android/serializable/BusinessSearchResult;

    .line 76
    const-class v0, Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    iput-object v0, p0, Lcom/yelp/android/serializable/_FeedReservationSearchActivity;->b:Lcom/yelp/android/serializable/YelpBusiness;

    .line 77
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 80
    const-string/jumbo v0, "transaction_search_suggestion"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    sget-object v0, Lcom/yelp/android/serializable/BusinessSearchResult;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    const-string/jumbo v1, "transaction_search_suggestion"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/BusinessSearchResult;

    iput-object v0, p0, Lcom/yelp/android/serializable/_FeedReservationSearchActivity;->a:Lcom/yelp/android/serializable/BusinessSearchResult;

    .line 85
    :cond_0
    const-string/jumbo v0, "business"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 86
    sget-object v0, Lcom/yelp/android/serializable/YelpBusiness;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    const-string/jumbo v1, "business"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    iput-object v0, p0, Lcom/yelp/android/serializable/_FeedReservationSearchActivity;->b:Lcom/yelp/android/serializable/YelpBusiness;

    .line 88
    :cond_1
    return-void
.end method

.method public b()Lcom/yelp/android/serializable/YelpBusiness;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/yelp/android/serializable/_FeedReservationSearchActivity;->b:Lcom/yelp/android/serializable/YelpBusiness;

    return-object v0
.end method

.method public d()Lcom/yelp/android/serializable/BusinessSearchResult;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/yelp/android/serializable/_FeedReservationSearchActivity;->a:Lcom/yelp/android/serializable/BusinessSearchResult;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 32
    if-nez p1, :cond_1

    .line 46
    :cond_0
    :goto_0
    return v0

    .line 36
    :cond_1
    if-ne p1, p0, :cond_2

    .line 37
    const/4 v0, 0x1

    goto :goto_0

    .line 40
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 44
    check-cast p1, Lcom/yelp/android/serializable/_FeedReservationSearchActivity;

    .line 46
    new-instance v0, Lcom/yelp/android/dc/b;

    invoke-direct {v0}, Lcom/yelp/android/dc/b;-><init>()V

    iget-object v1, p0, Lcom/yelp/android/serializable/_FeedReservationSearchActivity;->a:Lcom/yelp/android/serializable/BusinessSearchResult;

    iget-object v2, p1, Lcom/yelp/android/serializable/_FeedReservationSearchActivity;->a:Lcom/yelp/android/serializable/BusinessSearchResult;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_FeedReservationSearchActivity;->b:Lcom/yelp/android/serializable/YelpBusiness;

    iget-object v2, p1, Lcom/yelp/android/serializable/_FeedReservationSearchActivity;->b:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/yelp/android/dc/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/dc/b;->a()Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 54
    new-instance v0, Lcom/yelp/android/dc/c;

    invoke-direct {v0}, Lcom/yelp/android/dc/c;-><init>()V

    iget-object v1, p0, Lcom/yelp/android/serializable/_FeedReservationSearchActivity;->a:Lcom/yelp/android/serializable/BusinessSearchResult;

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(Ljava/lang/Object;)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_FeedReservationSearchActivity;->b:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(Ljava/lang/Object;)Lcom/yelp/android/dc/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/dc/c;->a()I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 70
    iget-object v0, p0, Lcom/yelp/android/serializable/_FeedReservationSearchActivity;->a:Lcom/yelp/android/serializable/BusinessSearchResult;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 71
    iget-object v0, p0, Lcom/yelp/android/serializable/_FeedReservationSearchActivity;->b:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 72
    return-void
.end method
