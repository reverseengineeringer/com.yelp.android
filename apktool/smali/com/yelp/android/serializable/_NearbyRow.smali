.class abstract Lcom/yelp/android/serializable/_NearbyRow;
.super Ljava/lang/Object;
.source "_NearbyRow.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mEndAction:Ljava/lang/String;

.field protected mEndActionString:Ljava/lang/String;

.field protected mHeader:Ljava/lang/String;

.field protected mResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/NearbyResult;",
            ">;"
        }
    .end annotation
.end field

.field protected mRowId:Ljava/lang/String;

.field protected mTag:Ljava/lang/String;

.field protected mTopResultCount:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method protected constructor <init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/NearbyResult;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/yelp/android/serializable/_NearbyRow;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/yelp/android/serializable/_NearbyRow;->mResults:Ljava/util/List;

    .line 28
    iput-object p2, p0, Lcom/yelp/android/serializable/_NearbyRow;->mHeader:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lcom/yelp/android/serializable/_NearbyRow;->mEndAction:Ljava/lang/String;

    .line 30
    iput-object p4, p0, Lcom/yelp/android/serializable/_NearbyRow;->mEndActionString:Ljava/lang/String;

    .line 31
    iput-object p5, p0, Lcom/yelp/android/serializable/_NearbyRow;->mRowId:Ljava/lang/String;

    .line 32
    iput-object p6, p0, Lcom/yelp/android/serializable/_NearbyRow;->mTag:Ljava/lang/String;

    .line 33
    iput p7, p0, Lcom/yelp/android/serializable/_NearbyRow;->mTopResultCount:I

    .line 34
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public getEndAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/yelp/android/serializable/_NearbyRow;->mEndAction:Ljava/lang/String;

    return-object v0
.end method

.method public getEndActionString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/yelp/android/serializable/_NearbyRow;->mEndActionString:Ljava/lang/String;

    return-object v0
.end method

.method public getHeader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/yelp/android/serializable/_NearbyRow;->mHeader:Ljava/lang/String;

    return-object v0
.end method

.method public getResults()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/NearbyResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/yelp/android/serializable/_NearbyRow;->mResults:Ljava/util/List;

    return-object v0
.end method

.method public getRowId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/yelp/android/serializable/_NearbyRow;->mRowId:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/yelp/android/serializable/_NearbyRow;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public getTopResultCount()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/yelp/android/serializable/_NearbyRow;->mTopResultCount:I

    return v0
.end method

.method public readFromJson(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 88
    const-string/jumbo v0, "results"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 89
    const-string/jumbo v0, "results"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/NearbyResult;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-static {v0, v1}, Lcom/yelp/parcelgen/JsonUtil;->parseJsonList(Lorg/json/JSONArray;Lcom/yelp/parcelgen/JsonParser;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_NearbyRow;->mResults:Ljava/util/List;

    .line 93
    :goto_0
    const-string/jumbo v0, "header"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    const-string/jumbo v0, "header"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_NearbyRow;->mHeader:Ljava/lang/String;

    .line 96
    :cond_0
    const-string/jumbo v0, "end_action"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 97
    const-string/jumbo v0, "end_action"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_NearbyRow;->mEndAction:Ljava/lang/String;

    .line 99
    :cond_1
    const-string/jumbo v0, "end_action_string"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 100
    const-string/jumbo v0, "end_action_string"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_NearbyRow;->mEndActionString:Ljava/lang/String;

    .line 102
    :cond_2
    const-string/jumbo v0, "row_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 103
    const-string/jumbo v0, "row_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_NearbyRow;->mRowId:Ljava/lang/String;

    .line 105
    :cond_3
    const-string/jumbo v0, "tag"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 106
    const-string/jumbo v0, "tag"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_NearbyRow;->mTag:Ljava/lang/String;

    .line 108
    :cond_4
    const-string/jumbo v0, "top_result_count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_NearbyRow;->mTopResultCount:I

    .line 109
    return-void

    .line 91
    :cond_5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_NearbyRow;->mResults:Ljava/util/List;

    goto :goto_0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/yelp/android/serializable/NearbyResult;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_NearbyRow;->mResults:Ljava/util/List;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_NearbyRow;->mHeader:Ljava/lang/String;

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_NearbyRow;->mEndAction:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_NearbyRow;->mEndActionString:Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_NearbyRow;->mRowId:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_NearbyRow;->mTag:Ljava/lang/String;

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_NearbyRow;->mTopResultCount:I

    .line 85
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/yelp/android/serializable/_NearbyRow;->mResults:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 69
    iget-object v0, p0, Lcom/yelp/android/serializable/_NearbyRow;->mHeader:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/yelp/android/serializable/_NearbyRow;->mEndAction:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/yelp/android/serializable/_NearbyRow;->mEndActionString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/yelp/android/serializable/_NearbyRow;->mRowId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/yelp/android/serializable/_NearbyRow;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    iget v0, p0, Lcom/yelp/android/serializable/_NearbyRow;->mTopResultCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    return-void
.end method
