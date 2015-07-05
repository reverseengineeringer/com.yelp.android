.class abstract Lcom/yelp/android/serializable/_PreviousReview;
.super Ljava/lang/Object;
.source "_PreviousReview.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mDateModified:Ljava/util/Date;

.field protected mId:Ljava/lang/String;

.field protected mRating:I

.field protected mText:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method protected constructor <init>(Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/yelp/android/serializable/_PreviousReview;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/yelp/android/serializable/_PreviousReview;->mDateModified:Ljava/util/Date;

    .line 25
    iput-object p2, p0, Lcom/yelp/android/serializable/_PreviousReview;->mId:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lcom/yelp/android/serializable/_PreviousReview;->mText:Ljava/lang/String;

    .line 27
    iput p4, p0, Lcom/yelp/android/serializable/_PreviousReview;->mRating:I

    .line 28
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public getDateModified()Ljava/util/Date;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/yelp/android/serializable/_PreviousReview;->mDateModified:Ljava/util/Date;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/yelp/android/serializable/_PreviousReview;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getRating()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/yelp/android/serializable/_PreviousReview;->mRating:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/yelp/android/serializable/_PreviousReview;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public readFromJson(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 70
    const-string/jumbo v0, "time_modified"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    const-string/jumbo v0, "time_modified"

    invoke-static {p1, v0}, Lcom/yelp/parcelgen/JsonUtil;->parseTimestamp(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_PreviousReview;->mDateModified:Ljava/util/Date;

    .line 73
    :cond_0
    const-string/jumbo v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 74
    const-string/jumbo v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_PreviousReview;->mId:Ljava/lang/String;

    .line 76
    :cond_1
    const-string/jumbo v0, "text"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 77
    const-string/jumbo v0, "text"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_PreviousReview;->mText:Ljava/lang/String;

    .line 79
    :cond_2
    const-string/jumbo v0, "rating"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_PreviousReview;->mRating:I

    .line 80
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 61
    const-wide/32 v2, -0x80000000

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 62
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    iput-object v2, p0, Lcom/yelp/android/serializable/_PreviousReview;->mDateModified:Ljava/util/Date;

    .line 64
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_PreviousReview;->mId:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_PreviousReview;->mText:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_PreviousReview;->mRating:I

    .line 67
    return-void
.end method

.method public writeJSON()Lorg/json/JSONObject;
    .locals 6

    .prologue
    .line 83
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 84
    iget-object v1, p0, Lcom/yelp/android/serializable/_PreviousReview;->mDateModified:Ljava/util/Date;

    if-eqz v1, :cond_0

    .line 85
    const-string/jumbo v1, "time_modified"

    iget-object v2, p0, Lcom/yelp/android/serializable/_PreviousReview;->mDateModified:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/serializable/_PreviousReview;->mId:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 88
    const-string/jumbo v1, "id"

    iget-object v2, p0, Lcom/yelp/android/serializable/_PreviousReview;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 90
    :cond_1
    iget-object v1, p0, Lcom/yelp/android/serializable/_PreviousReview;->mText:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 91
    const-string/jumbo v1, "text"

    iget-object v2, p0, Lcom/yelp/android/serializable/_PreviousReview;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 93
    :cond_2
    const-string/jumbo v1, "rating"

    iget v2, p0, Lcom/yelp/android/serializable/_PreviousReview;->mRating:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 94
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/yelp/android/serializable/_PreviousReview;->mDateModified:Ljava/util/Date;

    if-nez v0, :cond_0

    const-wide/32 v0, -0x80000000

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 54
    iget-object v0, p0, Lcom/yelp/android/serializable/_PreviousReview;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/yelp/android/serializable/_PreviousReview;->mText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    iget v0, p0, Lcom/yelp/android/serializable/_PreviousReview;->mRating:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    return-void

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/_PreviousReview;->mDateModified:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    goto :goto_0
.end method
