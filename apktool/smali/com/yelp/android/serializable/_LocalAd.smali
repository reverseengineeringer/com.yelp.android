.class abstract Lcom/yelp/android/serializable/_LocalAd;
.super Ljava/lang/Object;
.source "_LocalAd.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mBusinessId:Ljava/lang/String;

.field protected mCustomCreativeText:Ljava/lang/String;

.field protected mIsRatingDisabled:Z

.field protected mPhoto:Lcom/yelp/android/serializable/Photo;

.field protected mPlacement:Ljava/lang/String;

.field protected mRequestId:Ljava/lang/String;

.field protected mReview:Lcom/yelp/android/serializable/YelpBusinessReview;

.field protected mSlot:I

.field protected mSpecialty:Ljava/lang/String;

.field protected mType:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method protected constructor <init>(Lcom/yelp/android/serializable/Photo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/serializable/YelpBusinessReview;ZI)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/yelp/android/serializable/_LocalAd;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/yelp/android/serializable/_LocalAd;->mPhoto:Lcom/yelp/android/serializable/Photo;

    .line 29
    iput-object p2, p0, Lcom/yelp/android/serializable/_LocalAd;->mBusinessId:Ljava/lang/String;

    .line 30
    iput-object p3, p0, Lcom/yelp/android/serializable/_LocalAd;->mRequestId:Ljava/lang/String;

    .line 31
    iput-object p4, p0, Lcom/yelp/android/serializable/_LocalAd;->mType:Ljava/lang/String;

    .line 32
    iput-object p5, p0, Lcom/yelp/android/serializable/_LocalAd;->mSpecialty:Ljava/lang/String;

    .line 33
    iput-object p6, p0, Lcom/yelp/android/serializable/_LocalAd;->mCustomCreativeText:Ljava/lang/String;

    .line 34
    iput-object p7, p0, Lcom/yelp/android/serializable/_LocalAd;->mPlacement:Ljava/lang/String;

    .line 35
    iput-object p8, p0, Lcom/yelp/android/serializable/_LocalAd;->mReview:Lcom/yelp/android/serializable/YelpBusinessReview;

    .line 36
    iput-boolean p9, p0, Lcom/yelp/android/serializable/_LocalAd;->mIsRatingDisabled:Z

    .line 37
    iput p10, p0, Lcom/yelp/android/serializable/_LocalAd;->mSlot:I

    .line 38
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public getBusinessId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/yelp/android/serializable/_LocalAd;->mBusinessId:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomCreativeText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/yelp/android/serializable/_LocalAd;->mCustomCreativeText:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoto()Lcom/yelp/android/serializable/Photo;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/yelp/android/serializable/_LocalAd;->mPhoto:Lcom/yelp/android/serializable/Photo;

    return-object v0
.end method

.method public getPlacement()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/yelp/android/serializable/_LocalAd;->mPlacement:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/yelp/android/serializable/_LocalAd;->mRequestId:Ljava/lang/String;

    return-object v0
.end method

.method public getReview()Lcom/yelp/android/serializable/YelpBusinessReview;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/yelp/android/serializable/_LocalAd;->mReview:Lcom/yelp/android/serializable/YelpBusinessReview;

    return-object v0
.end method

.method public getSlot()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/yelp/android/serializable/_LocalAd;->mSlot:I

    return v0
.end method

.method public getSpecialty()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/yelp/android/serializable/_LocalAd;->mSpecialty:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/yelp/android/serializable/_LocalAd;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public isRatingDisabled()Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/yelp/android/serializable/_LocalAd;->mIsRatingDisabled:Z

    return v0
.end method

.method public readFromJson(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 108
    const-string/jumbo v0, "photo"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    sget-object v0, Lcom/yelp/android/serializable/Photo;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    const-string/jumbo v1, "photo"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Photo;

    iput-object v0, p0, Lcom/yelp/android/serializable/_LocalAd;->mPhoto:Lcom/yelp/android/serializable/Photo;

    .line 111
    :cond_0
    const-string/jumbo v0, "business_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 112
    const-string/jumbo v0, "business_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_LocalAd;->mBusinessId:Ljava/lang/String;

    .line 114
    :cond_1
    const-string/jumbo v0, "request_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 115
    const-string/jumbo v0, "request_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_LocalAd;->mRequestId:Ljava/lang/String;

    .line 117
    :cond_2
    const-string/jumbo v0, "type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 118
    const-string/jumbo v0, "type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_LocalAd;->mType:Ljava/lang/String;

    .line 120
    :cond_3
    const-string/jumbo v0, "specialty"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 121
    const-string/jumbo v0, "specialty"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_LocalAd;->mSpecialty:Ljava/lang/String;

    .line 123
    :cond_4
    const-string/jumbo v0, "custom_creative_text"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 124
    const-string/jumbo v0, "custom_creative_text"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_LocalAd;->mCustomCreativeText:Ljava/lang/String;

    .line 126
    :cond_5
    const-string/jumbo v0, "placement"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 127
    const-string/jumbo v0, "placement"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_LocalAd;->mPlacement:Ljava/lang/String;

    .line 129
    :cond_6
    const-string/jumbo v0, "review"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 130
    sget-object v0, Lcom/yelp/android/serializable/YelpBusinessReview;->CREATOR:Lcom/yelp/android/serializable/ah;

    const-string/jumbo v1, "review"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/ah;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusinessReview;

    iput-object v0, p0, Lcom/yelp/android/serializable/_LocalAd;->mReview:Lcom/yelp/android/serializable/YelpBusinessReview;

    .line 132
    :cond_7
    const-string/jumbo v0, "is_rating_disabled"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/serializable/_LocalAd;->mIsRatingDisabled:Z

    .line 133
    const-string/jumbo v0, "slot"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_LocalAd;->mSlot:I

    .line 134
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 94
    const-class v0, Lcom/yelp/android/serializable/Photo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Photo;

    iput-object v0, p0, Lcom/yelp/android/serializable/_LocalAd;->mPhoto:Lcom/yelp/android/serializable/Photo;

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_LocalAd;->mBusinessId:Ljava/lang/String;

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_LocalAd;->mRequestId:Ljava/lang/String;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_LocalAd;->mType:Ljava/lang/String;

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_LocalAd;->mSpecialty:Ljava/lang/String;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_LocalAd;->mCustomCreativeText:Ljava/lang/String;

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_LocalAd;->mPlacement:Ljava/lang/String;

    .line 101
    const-class v0, Lcom/yelp/android/serializable/YelpBusinessReview;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusinessReview;

    iput-object v0, p0, Lcom/yelp/android/serializable/_LocalAd;->mReview:Lcom/yelp/android/serializable/YelpBusinessReview;

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v0

    .line 103
    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lcom/yelp/android/serializable/_LocalAd;->mIsRatingDisabled:Z

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_LocalAd;->mSlot:I

    .line 105
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 81
    iget-object v0, p0, Lcom/yelp/android/serializable/_LocalAd;->mPhoto:Lcom/yelp/android/serializable/Photo;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 82
    iget-object v0, p0, Lcom/yelp/android/serializable/_LocalAd;->mBusinessId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/yelp/android/serializable/_LocalAd;->mRequestId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/yelp/android/serializable/_LocalAd;->mType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/yelp/android/serializable/_LocalAd;->mSpecialty:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/yelp/android/serializable/_LocalAd;->mCustomCreativeText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/yelp/android/serializable/_LocalAd;->mPlacement:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/yelp/android/serializable/_LocalAd;->mReview:Lcom/yelp/android/serializable/YelpBusinessReview;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 89
    const/4 v0, 0x1

    new-array v0, v0, [Z

    iget-boolean v1, p0, Lcom/yelp/android/serializable/_LocalAd;->mIsRatingDisabled:Z

    aput-boolean v1, v0, v2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 90
    iget v0, p0, Lcom/yelp/android/serializable/_LocalAd;->mSlot:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    return-void
.end method
