.class public abstract Lcom/yelp/android/serializable/BusinessInfoProviderFeedEntry;
.super Lcom/yelp/android/serializable/FeedEntry;
.source "BusinessInfoProviderFeedEntry.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/yelp/android/serializable/FeedEntry;-><init>()V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/yelp/android/serializable/FeedEntry;-><init>(Landroid/os/Parcel;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;)V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/serializable/FeedEntry;-><init>(Lorg/json/JSONObject;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 28
    return-void
.end method


# virtual methods
.method public getBusinessCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/yelp/android/serializable/BusinessInfoProviderFeedEntry;->mBusiness:Lcom/yelp/android/serializable/YelpBusiness;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/yelp/android/serializable/BusinessInfoProviderFeedEntry;->mBusiness:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 78
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBusinessId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/yelp/android/serializable/BusinessInfoProviderFeedEntry;->mBusiness:Lcom/yelp/android/serializable/YelpBusiness;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/yelp/android/serializable/BusinessInfoProviderFeedEntry;->mBusiness:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v0

    .line 44
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/serializable/BusinessInfoProviderFeedEntry;->getInfoProvider()Lcom/yelp/android/serializable/m;

    move-result-object v0

    invoke-interface {v0}, Lcom/yelp/android/serializable/m;->getBusinessId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getBusinessName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/yelp/android/serializable/BusinessInfoProviderFeedEntry;->mBusiness:Lcom/yelp/android/serializable/YelpBusiness;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/yelp/android/serializable/BusinessInfoProviderFeedEntry;->mBusiness:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 70
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/serializable/BusinessInfoProviderFeedEntry;->getInfoProvider()Lcom/yelp/android/serializable/m;

    move-result-object v0

    invoke-interface {v0}, Lcom/yelp/android/serializable/m;->getBusinessName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public abstract getInfoProvider()Lcom/yelp/android/serializable/m;
.end method

.method public getLocation()Lcom/google/android/gms/maps/model/LatLng;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/yelp/android/serializable/BusinessInfoProviderFeedEntry;->mBusiness:Lcom/yelp/android/serializable/YelpBusiness;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/yelp/android/serializable/BusinessInfoProviderFeedEntry;->mBusiness:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    .line 62
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPhotoURL(Lcom/yelp/android/ui/activities/feed/FeedType;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/yelp/android/serializable/BusinessInfoProviderFeedEntry;->mBusiness:Lcom/yelp/android/serializable/YelpBusiness;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/yelp/android/serializable/BusinessInfoProviderFeedEntry;->mBusiness:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getPhotoUrl()Ljava/lang/String;

    move-result-object v0

    .line 53
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/serializable/BusinessInfoProviderFeedEntry;->getInfoProvider()Lcom/yelp/android/serializable/m;

    move-result-object v0

    invoke-interface {v0}, Lcom/yelp/android/serializable/m;->getBusinessPhotoUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/yelp/android/serializable/BusinessInfoProviderFeedEntry;->getBusinessName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
