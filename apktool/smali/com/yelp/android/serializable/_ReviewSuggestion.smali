.class abstract Lcom/yelp/android/serializable/_ReviewSuggestion;
.super Ljava/lang/Object;
.source "_ReviewSuggestion.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mBusiness:Lcom/yelp/android/serializable/YelpBusiness;

.field protected mImageUrl:Ljava/lang/String;

.field protected mLatestReviewRating:I

.field protected mReasonText:Ljava/lang/String;

.field protected mReviewActivity:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/serializable/YelpBusiness;I)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/yelp/android/serializable/_ReviewSuggestion;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/yelp/android/serializable/_ReviewSuggestion;->mReasonText:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/yelp/android/serializable/_ReviewSuggestion;->mImageUrl:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcom/yelp/android/serializable/_ReviewSuggestion;->mReviewActivity:Ljava/lang/String;

    .line 26
    iput-object p4, p0, Lcom/yelp/android/serializable/_ReviewSuggestion;->mBusiness:Lcom/yelp/android/serializable/YelpBusiness;

    .line 27
    iput p5, p0, Lcom/yelp/android/serializable/_ReviewSuggestion;->mLatestReviewRating:I

    .line 28
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public getBusiness()Lcom/yelp/android/serializable/YelpBusiness;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/yelp/android/serializable/_ReviewSuggestion;->mBusiness:Lcom/yelp/android/serializable/YelpBusiness;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/yelp/android/serializable/_ReviewSuggestion;->mImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLatestReviewRating()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/yelp/android/serializable/_ReviewSuggestion;->mLatestReviewRating:I

    return v0
.end method

.method public getReasonText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/yelp/android/serializable/_ReviewSuggestion;->mReasonText:Ljava/lang/String;

    return-object v0
.end method

.method public getReviewActivity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/yelp/android/serializable/_ReviewSuggestion;->mReviewActivity:Ljava/lang/String;

    return-object v0
.end method

.method public readFromJson(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 72
    const-string/jumbo v0, "reason_text"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    const-string/jumbo v0, "reason_text"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_ReviewSuggestion;->mReasonText:Ljava/lang/String;

    .line 75
    :cond_0
    const-string/jumbo v0, "image_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 76
    const-string/jumbo v0, "image_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_ReviewSuggestion;->mImageUrl:Ljava/lang/String;

    .line 78
    :cond_1
    const-string/jumbo v0, "review_activity"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 79
    const-string/jumbo v0, "review_activity"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_ReviewSuggestion;->mReviewActivity:Ljava/lang/String;

    .line 81
    :cond_2
    const-string/jumbo v0, "business"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 82
    sget-object v0, Lcom/yelp/android/serializable/YelpBusiness;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    const-string/jumbo v1, "business"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    iput-object v0, p0, Lcom/yelp/android/serializable/_ReviewSuggestion;->mBusiness:Lcom/yelp/android/serializable/YelpBusiness;

    .line 84
    :cond_3
    const-string/jumbo v0, "latest_review_rating"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_ReviewSuggestion;->mLatestReviewRating:I

    .line 85
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_ReviewSuggestion;->mReasonText:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_ReviewSuggestion;->mImageUrl:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_ReviewSuggestion;->mReviewActivity:Ljava/lang/String;

    .line 67
    const-class v0, Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    iput-object v0, p0, Lcom/yelp/android/serializable/_ReviewSuggestion;->mBusiness:Lcom/yelp/android/serializable/YelpBusiness;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_ReviewSuggestion;->mLatestReviewRating:I

    .line 69
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/yelp/android/serializable/_ReviewSuggestion;->mReasonText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/yelp/android/serializable/_ReviewSuggestion;->mImageUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/yelp/android/serializable/_ReviewSuggestion;->mReviewActivity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/yelp/android/serializable/_ReviewSuggestion;->mBusiness:Lcom/yelp/android/serializable/YelpBusiness;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 60
    iget v0, p0, Lcom/yelp/android/serializable/_ReviewSuggestion;->mLatestReviewRating:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    return-void
.end method
