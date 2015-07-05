.class abstract Lcom/yelp/android/serializable/_AttributeFilters;
.super Ljava/lang/Object;
.source "_AttributeFilters.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mSuggestedFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/AttributeFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method protected constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/AttributeFilter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/yelp/android/serializable/_AttributeFilters;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/yelp/android/serializable/_AttributeFilters;->mSuggestedFilters:Ljava/util/List;

    .line 22
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public getSuggestedFilters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/AttributeFilter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lcom/yelp/android/serializable/_AttributeFilters;->mSuggestedFilters:Ljava/util/List;

    return-object v0
.end method

.method public readFromJson(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 46
    const-string/jumbo v0, "suggested_filters"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    const-string/jumbo v0, "suggested_filters"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/AttributeFilter;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-static {v0, v1}, Lcom/yelp/parcelgen/JsonUtil;->parseJsonList(Lorg/json/JSONArray;Lcom/yelp/parcelgen/JsonParser;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_AttributeFilters;->mSuggestedFilters:Ljava/util/List;

    .line 51
    :goto_0
    return-void

    .line 49
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_AttributeFilters;->mSuggestedFilters:Ljava/util/List;

    goto :goto_0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/yelp/android/serializable/AttributeFilter;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_AttributeFilters;->mSuggestedFilters:Ljava/util/List;

    .line 43
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/yelp/android/serializable/_AttributeFilters;->mSuggestedFilters:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 39
    return-void
.end method
