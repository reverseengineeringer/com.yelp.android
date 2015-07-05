.class abstract Lcom/yelp/android/serializable/_BusinessSearchResult;
.super Ljava/lang/Object;
.source "_BusinessSearchResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mAnnotations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/SearchResultAnnotation;",
            ">;"
        }
    .end annotation
.end field

.field protected mBizDimension:Ljava/lang/String;

.field protected mBusiness:Lcom/yelp/android/serializable/YelpBusiness;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method protected constructor <init>(Ljava/util/List;Ljava/lang/String;Lcom/yelp/android/serializable/YelpBusiness;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/SearchResultAnnotation;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            ")V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/yelp/android/serializable/_BusinessSearchResult;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/yelp/android/serializable/_BusinessSearchResult;->mAnnotations:Ljava/util/List;

    .line 24
    iput-object p2, p0, Lcom/yelp/android/serializable/_BusinessSearchResult;->mBizDimension:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcom/yelp/android/serializable/_BusinessSearchResult;->mBusiness:Lcom/yelp/android/serializable/YelpBusiness;

    .line 26
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public getAnnotations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/SearchResultAnnotation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lcom/yelp/android/serializable/_BusinessSearchResult;->mAnnotations:Ljava/util/List;

    return-object v0
.end method

.method public getBizDimension()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/yelp/android/serializable/_BusinessSearchResult;->mBizDimension:Ljava/lang/String;

    return-object v0
.end method

.method public getBusiness()Lcom/yelp/android/serializable/YelpBusiness;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/yelp/android/serializable/_BusinessSearchResult;->mBusiness:Lcom/yelp/android/serializable/YelpBusiness;

    return-object v0
.end method

.method public readFromJson(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 60
    const-string/jumbo v0, "annotations"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 61
    const-string/jumbo v0, "annotations"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/SearchResultAnnotation;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-static {v0, v1}, Lcom/yelp/parcelgen/JsonUtil;->parseJsonList(Lorg/json/JSONArray;Lcom/yelp/parcelgen/JsonParser;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_BusinessSearchResult;->mAnnotations:Ljava/util/List;

    .line 65
    :goto_0
    const-string/jumbo v0, "biz_dimension"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    const-string/jumbo v0, "biz_dimension"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_BusinessSearchResult;->mBizDimension:Ljava/lang/String;

    .line 68
    :cond_0
    const-string/jumbo v0, "business"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 69
    sget-object v0, Lcom/yelp/android/serializable/YelpBusiness;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    const-string/jumbo v1, "business"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    iput-object v0, p0, Lcom/yelp/android/serializable/_BusinessSearchResult;->mBusiness:Lcom/yelp/android/serializable/YelpBusiness;

    .line 71
    :cond_1
    return-void

    .line 63
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_BusinessSearchResult;->mAnnotations:Ljava/util/List;

    goto :goto_0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/yelp/android/serializable/SearchResultAnnotation;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_BusinessSearchResult;->mAnnotations:Ljava/util/List;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_BusinessSearchResult;->mBizDimension:Ljava/lang/String;

    .line 56
    const-class v0, Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    iput-object v0, p0, Lcom/yelp/android/serializable/_BusinessSearchResult;->mBusiness:Lcom/yelp/android/serializable/YelpBusiness;

    .line 57
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/yelp/android/serializable/_BusinessSearchResult;->mAnnotations:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 49
    iget-object v0, p0, Lcom/yelp/android/serializable/_BusinessSearchResult;->mBizDimension:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/yelp/android/serializable/_BusinessSearchResult;->mBusiness:Lcom/yelp/android/serializable/YelpBusiness;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 51
    return-void
.end method
