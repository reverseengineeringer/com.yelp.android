.class abstract Lcom/yelp/android/serializable/_YelpDealOption;
.super Ljava/lang/Object;
.source "_YelpDealOption.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mAvailableCount:I

.field protected mDescription:Ljava/lang/String;

.field protected mId:Ljava/lang/String;

.field protected mOriginalPrice:Ljava/lang/String;

.field protected mPrice:Ljava/lang/String;

.field protected mPurchasedCount:I

.field protected mTitle:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/yelp/android/serializable/_YelpDealOption;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/yelp/android/serializable/_YelpDealOption;->mTitle:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/yelp/android/serializable/_YelpDealOption;->mDescription:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/yelp/android/serializable/_YelpDealOption;->mId:Ljava/lang/String;

    .line 28
    iput-object p4, p0, Lcom/yelp/android/serializable/_YelpDealOption;->mPrice:Ljava/lang/String;

    .line 29
    iput-object p5, p0, Lcom/yelp/android/serializable/_YelpDealOption;->mOriginalPrice:Ljava/lang/String;

    .line 30
    iput p6, p0, Lcom/yelp/android/serializable/_YelpDealOption;->mAvailableCount:I

    .line 31
    iput p7, p0, Lcom/yelp/android/serializable/_YelpDealOption;->mPurchasedCount:I

    .line 32
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public getAvailableCount()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/yelp/android/serializable/_YelpDealOption;->mAvailableCount:I

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpDealOption;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpDealOption;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpDealOption;->mOriginalPrice:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpDealOption;->mPrice:Ljava/lang/String;

    return-object v0
.end method

.method public getPurchasedCount()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/yelp/android/serializable/_YelpDealOption;->mPurchasedCount:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpDealOption;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public readFromJson(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 86
    const-string/jumbo v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    const-string/jumbo v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpDealOption;->mTitle:Ljava/lang/String;

    .line 89
    :cond_0
    const-string/jumbo v0, "description"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 90
    const-string/jumbo v0, "description"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpDealOption;->mDescription:Ljava/lang/String;

    .line 92
    :cond_1
    const-string/jumbo v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 93
    const-string/jumbo v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpDealOption;->mId:Ljava/lang/String;

    .line 95
    :cond_2
    const-string/jumbo v0, "price"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 96
    const-string/jumbo v0, "price"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpDealOption;->mPrice:Ljava/lang/String;

    .line 98
    :cond_3
    const-string/jumbo v0, "original_price"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 99
    const-string/jumbo v0, "original_price"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpDealOption;->mOriginalPrice:Ljava/lang/String;

    .line 101
    :cond_4
    const-string/jumbo v0, "available_count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 102
    const-string/jumbo v0, "available_count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_YelpDealOption;->mAvailableCount:I

    .line 106
    :goto_0
    const-string/jumbo v0, "purchased_count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 107
    const-string/jumbo v0, "purchased_count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_YelpDealOption;->mPurchasedCount:I

    .line 111
    :goto_1
    return-void

    .line 104
    :cond_5
    iput v1, p0, Lcom/yelp/android/serializable/_YelpDealOption;->mAvailableCount:I

    goto :goto_0

    .line 109
    :cond_6
    iput v1, p0, Lcom/yelp/android/serializable/_YelpDealOption;->mPurchasedCount:I

    goto :goto_1
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpDealOption;->mTitle:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpDealOption;->mDescription:Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpDealOption;->mId:Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpDealOption;->mPrice:Ljava/lang/String;

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpDealOption;->mOriginalPrice:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_YelpDealOption;->mAvailableCount:I

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_YelpDealOption;->mPurchasedCount:I

    .line 83
    return-void
.end method

.method public writeJSON()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 114
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 115
    iget-object v1, p0, Lcom/yelp/android/serializable/_YelpDealOption;->mTitle:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 116
    const-string/jumbo v1, "title"

    iget-object v2, p0, Lcom/yelp/android/serializable/_YelpDealOption;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 118
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/serializable/_YelpDealOption;->mDescription:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 119
    const-string/jumbo v1, "description"

    iget-object v2, p0, Lcom/yelp/android/serializable/_YelpDealOption;->mDescription:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 121
    :cond_1
    iget-object v1, p0, Lcom/yelp/android/serializable/_YelpDealOption;->mId:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 122
    const-string/jumbo v1, "id"

    iget-object v2, p0, Lcom/yelp/android/serializable/_YelpDealOption;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 124
    :cond_2
    iget-object v1, p0, Lcom/yelp/android/serializable/_YelpDealOption;->mPrice:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 125
    const-string/jumbo v1, "price"

    iget-object v2, p0, Lcom/yelp/android/serializable/_YelpDealOption;->mPrice:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 127
    :cond_3
    iget-object v1, p0, Lcom/yelp/android/serializable/_YelpDealOption;->mOriginalPrice:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 128
    const-string/jumbo v1, "original_price"

    iget-object v2, p0, Lcom/yelp/android/serializable/_YelpDealOption;->mOriginalPrice:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 130
    :cond_4
    const-string/jumbo v1, "available_count"

    iget v2, p0, Lcom/yelp/android/serializable/_YelpDealOption;->mAvailableCount:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 131
    const-string/jumbo v1, "purchased_count"

    iget v2, p0, Lcom/yelp/android/serializable/_YelpDealOption;->mPurchasedCount:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 132
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpDealOption;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpDealOption;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpDealOption;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpDealOption;->mPrice:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpDealOption;->mOriginalPrice:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    iget v0, p0, Lcom/yelp/android/serializable/_YelpDealOption;->mAvailableCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    iget v0, p0, Lcom/yelp/android/serializable/_YelpDealOption;->mPurchasedCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    return-void
.end method
