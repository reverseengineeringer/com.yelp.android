.class public abstract Lcom/yelp/android/serializable/LocalAd;
.super Lcom/yelp/android/serializable/_LocalAd;
.source "LocalAd.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/yelp/android/ui/panels/businesssearch/a;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/serializable/_LocalAd;",
        "Landroid/os/Parcelable;",
        "Lcom/yelp/android/ui/panels/businesssearch/a;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/yelp/android/serializable/LocalAd;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/yelp/android/serializable/_LocalAd;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/serializable/LocalAd;)I
    .locals 2

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/yelp/android/serializable/LocalAd;->d()I

    move-result v0

    invoke-virtual {p1}, Lcom/yelp/android/serializable/LocalAd;->d()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public a(Lcom/yelp/android/serializable/YelpBusiness;Z)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            "Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 28
    const-string/jumbo v1, "ad_request_id"

    invoke-virtual {p0}, Lcom/yelp/android/serializable/LocalAd;->l()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    const-string/jumbo v1, "ad_business_id"

    invoke-virtual {p0}, Lcom/yelp/android/serializable/LocalAd;->m()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    const-string/jumbo v1, "placement"

    invoke-virtual {p0}, Lcom/yelp/android/serializable/LocalAd;->h()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    const-string/jumbo v1, "slot"

    invoke-virtual {p0}, Lcom/yelp/android/serializable/LocalAd;->d()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    if-eqz p1, :cond_0

    .line 34
    const-string/jumbo v1, "business_id"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    :cond_0
    return-object v0
.end method

.method public a(Z)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/yelp/android/serializable/LocalAd;->a(Lcom/yelp/android/serializable/YelpBusiness;Z)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 14
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_LocalAd;->a(Landroid/os/Parcel;)V

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
    .line 14
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_LocalAd;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method public b()Lcom/yelp/android/serializable/LocalAdType;
    .locals 2

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/yelp/android/serializable/LocalAd;->k()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/serializable/LocalAdType;->valueOf(Ljava/lang/String;)Lcom/yelp/android/serializable/LocalAdType;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/yelp/android/serializable/LocalAdPlacement;
    .locals 2

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/yelp/android/serializable/LocalAd;->h()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/serializable/LocalAdPlacement;->valueOf(Ljava/lang/String;)Lcom/yelp/android/serializable/LocalAdPlacement;

    move-result-object v0

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 14
    check-cast p1, Lcom/yelp/android/serializable/LocalAd;

    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/LocalAd;->a(Lcom/yelp/android/serializable/LocalAd;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic d()I
    .locals 1

    .prologue
    .line 14
    invoke-super {p0}, Lcom/yelp/android/serializable/_LocalAd;->d()I

    move-result v0

    return v0
.end method

.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 14
    invoke-super {p0}, Lcom/yelp/android/serializable/_LocalAd;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 14
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_LocalAd;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic f()Z
    .locals 1

    .prologue
    .line 14
    invoke-super {p0}, Lcom/yelp/android/serializable/_LocalAd;->f()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic g()Lcom/yelp/android/serializable/YelpBusinessReview;
    .locals 1

    .prologue
    .line 14
    invoke-super {p0}, Lcom/yelp/android/serializable/_LocalAd;->g()Lcom/yelp/android/serializable/YelpBusinessReview;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    invoke-super {p0}, Lcom/yelp/android/serializable/_LocalAd;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .prologue
    .line 14
    invoke-super {p0}, Lcom/yelp/android/serializable/_LocalAd;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    invoke-super {p0}, Lcom/yelp/android/serializable/_LocalAd;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    invoke-super {p0}, Lcom/yelp/android/serializable/_LocalAd;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    invoke-super {p0}, Lcom/yelp/android/serializable/_LocalAd;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    invoke-super {p0}, Lcom/yelp/android/serializable/_LocalAd;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    invoke-super {p0}, Lcom/yelp/android/serializable/_LocalAd;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic n()Lcom/yelp/android/serializable/Photo;
    .locals 1

    .prologue
    .line 14
    invoke-super {p0}, Lcom/yelp/android/serializable/_LocalAd;->n()Lcom/yelp/android/serializable/Photo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 14
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_LocalAd;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
