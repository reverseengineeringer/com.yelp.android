.class public Lcom/yelp/android/serializable/NearbyRow;
.super Lcom/yelp/android/serializable/_NearbyRow;
.source "NearbyRow.java"


# static fields
.field public static final CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/parcelgen/JsonParser$DualCreator",
            "<",
            "Lcom/yelp/android/serializable/NearbyRow;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/yelp/android/serializable/bl;

    invoke-direct {v0}, Lcom/yelp/android/serializable/bl;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/NearbyRow;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/yelp/android/serializable/_NearbyRow;-><init>()V

    return-void
.end method

.method public static rowsFromJSONArray(Lorg/json/JSONArray;Ljava/util/HashMap;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/NearbyRow;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 31
    const/4 v0, 0x0

    move v3, v0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v3, v0, :cond_1

    .line 32
    sget-object v0, Lcom/yelp/android/serializable/NearbyRow;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/NearbyRow;

    .line 33
    invoke-virtual {v0}, Lcom/yelp/android/serializable/NearbyRow;->getResults()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/NearbyResult;

    .line 34
    invoke-virtual {v1}, Lcom/yelp/android/serializable/NearbyResult;->getBusinessId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yelp/android/serializable/YelpBusiness;

    iput-object v2, v1, Lcom/yelp/android/serializable/NearbyResult;->mBusiness:Lcom/yelp/android/serializable/YelpBusiness;

    goto :goto_1

    .line 36
    :cond_0
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 39
    :cond_1
    return-object v4
.end method

.method public static rowsFromNearbySuggestResponse(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/NearbyRow;",
            ">;"
        }
    .end annotation

    .prologue
    .line 21
    const-string/jumbo v0, "businesses"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;->SHORT:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;

    invoke-static {v0, p1, v1}, Lcom/yelp/android/serializable/YelpBusiness;->jsonBusinessesToMap(Lorg/json/JSONArray;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;)Ljava/util/HashMap;

    move-result-object v0

    .line 23
    const-string/jumbo v1, "suggestions"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 24
    invoke-static {v1, v0, p1}, Lcom/yelp/android/serializable/NearbyRow;->rowsFromJSONArray(Lorg/json/JSONArray;Ljava/util/HashMap;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 16
    invoke-super {p0}, Lcom/yelp/android/serializable/_NearbyRow;->describeContents()I

    move-result v0

    return v0
.end method

.method public getBusinessListForResults()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 44
    iget-object v0, p0, Lcom/yelp/android/serializable/NearbyRow;->mResults:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/NearbyResult;

    .line 45
    invoke-virtual {v0}, Lcom/yelp/android/serializable/NearbyResult;->getBusiness()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 47
    :cond_0
    return-object v1
.end method

.method public bridge synthetic getEndAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    invoke-super {p0}, Lcom/yelp/android/serializable/_NearbyRow;->getEndAction()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getEndActionString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    invoke-super {p0}, Lcom/yelp/android/serializable/_NearbyRow;->getEndActionString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getHeader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    invoke-super {p0}, Lcom/yelp/android/serializable/_NearbyRow;->getHeader()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getResults()Ljava/util/List;
    .locals 1

    .prologue
    .line 16
    invoke-super {p0}, Lcom/yelp/android/serializable/_NearbyRow;->getResults()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRowId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    invoke-super {p0}, Lcom/yelp/android/serializable/_NearbyRow;->getRowId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    invoke-super {p0}, Lcom/yelp/android/serializable/_NearbyRow;->getTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTopResultCount()I
    .locals 1

    .prologue
    .line 16
    invoke-super {p0}, Lcom/yelp/android/serializable/_NearbyRow;->getTopResultCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic readFromJson(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_NearbyRow;->readFromJson(Lorg/json/JSONObject;)V

    return-void
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_NearbyRow;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 16
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_NearbyRow;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
