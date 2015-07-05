.class abstract Lcom/yelp/android/serializable/_ReviewHighlight;
.super Ljava/lang/Object;
.source "_ReviewHighlight.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mIdentifier:Ljava/lang/String;

.field protected mPhotoUrl:Ljava/lang/String;

.field protected mReviewCount:I

.field protected mReviewId:Ljava/lang/String;

.field protected mSentence:Ljava/lang/String;

.field protected mTitle:Ljava/lang/String;

.field protected mType:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/yelp/android/serializable/_ReviewHighlight;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/yelp/android/serializable/_ReviewHighlight;->mType:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/yelp/android/serializable/_ReviewHighlight;->mIdentifier:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/yelp/android/serializable/_ReviewHighlight;->mSentence:Ljava/lang/String;

    .line 28
    iput-object p4, p0, Lcom/yelp/android/serializable/_ReviewHighlight;->mReviewId:Ljava/lang/String;

    .line 29
    iput-object p5, p0, Lcom/yelp/android/serializable/_ReviewHighlight;->mPhotoUrl:Ljava/lang/String;

    .line 30
    iput-object p6, p0, Lcom/yelp/android/serializable/_ReviewHighlight;->mTitle:Ljava/lang/String;

    .line 31
    iput p7, p0, Lcom/yelp/android/serializable/_ReviewHighlight;->mReviewCount:I

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

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/yelp/android/serializable/_ReviewHighlight;->mIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/yelp/android/serializable/_ReviewHighlight;->mPhotoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getReviewCount()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/yelp/android/serializable/_ReviewHighlight;->mReviewCount:I

    return v0
.end method

.method public getReviewId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/yelp/android/serializable/_ReviewHighlight;->mReviewId:Ljava/lang/String;

    return-object v0
.end method

.method public getSentence()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/yelp/android/serializable/_ReviewHighlight;->mSentence:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/yelp/android/serializable/_ReviewHighlight;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/yelp/android/serializable/_ReviewHighlight;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public readFromJson(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 86
    const-string/jumbo v0, "type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    const-string/jumbo v0, "type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_ReviewHighlight;->mType:Ljava/lang/String;

    .line 89
    :cond_0
    const-string/jumbo v0, "identifier"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 90
    const-string/jumbo v0, "identifier"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_ReviewHighlight;->mIdentifier:Ljava/lang/String;

    .line 92
    :cond_1
    const-string/jumbo v0, "sentence"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 93
    const-string/jumbo v0, "sentence"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_ReviewHighlight;->mSentence:Ljava/lang/String;

    .line 95
    :cond_2
    const-string/jumbo v0, "review_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 96
    const-string/jumbo v0, "review_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_ReviewHighlight;->mReviewId:Ljava/lang/String;

    .line 98
    :cond_3
    const-string/jumbo v0, "photo_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 99
    const-string/jumbo v0, "photo_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_ReviewHighlight;->mPhotoUrl:Ljava/lang/String;

    .line 101
    :cond_4
    const-string/jumbo v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 102
    const-string/jumbo v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_ReviewHighlight;->mTitle:Ljava/lang/String;

    .line 104
    :cond_5
    const-string/jumbo v0, "review_count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_ReviewHighlight;->mReviewCount:I

    .line 105
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_ReviewHighlight;->mType:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_ReviewHighlight;->mIdentifier:Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_ReviewHighlight;->mSentence:Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_ReviewHighlight;->mReviewId:Ljava/lang/String;

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_ReviewHighlight;->mPhotoUrl:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_ReviewHighlight;->mTitle:Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_ReviewHighlight;->mReviewCount:I

    .line 83
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/yelp/android/serializable/_ReviewHighlight;->mType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/yelp/android/serializable/_ReviewHighlight;->mIdentifier:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/yelp/android/serializable/_ReviewHighlight;->mSentence:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/yelp/android/serializable/_ReviewHighlight;->mReviewId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/yelp/android/serializable/_ReviewHighlight;->mPhotoUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/yelp/android/serializable/_ReviewHighlight;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 72
    iget v0, p0, Lcom/yelp/android/serializable/_ReviewHighlight;->mReviewCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    return-void
.end method
