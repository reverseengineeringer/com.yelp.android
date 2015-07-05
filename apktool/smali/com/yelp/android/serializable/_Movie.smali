.class abstract Lcom/yelp/android/serializable/_Movie;
.super Ljava/lang/Object;
.source "_Movie.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mImageUrl:Ljava/lang/String;

.field protected mRating:Ljava/lang/String;

.field protected mRuntime:I

.field protected mShowtimes:[I

.field protected mTicketingUrl:Ljava/lang/String;

.field protected mTitle:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[I)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/yelp/android/serializable/_Movie;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/yelp/android/serializable/_Movie;->mTitle:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/yelp/android/serializable/_Movie;->mRating:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lcom/yelp/android/serializable/_Movie;->mImageUrl:Ljava/lang/String;

    .line 27
    iput-object p4, p0, Lcom/yelp/android/serializable/_Movie;->mTicketingUrl:Ljava/lang/String;

    .line 28
    iput p5, p0, Lcom/yelp/android/serializable/_Movie;->mRuntime:I

    .line 29
    iput-object p6, p0, Lcom/yelp/android/serializable/_Movie;->mShowtimes:[I

    .line 30
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/yelp/android/serializable/_Movie;->mImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRating()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/yelp/android/serializable/_Movie;->mRating:Ljava/lang/String;

    return-object v0
.end method

.method public getRuntime()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/yelp/android/serializable/_Movie;->mRuntime:I

    return v0
.end method

.method public getShowtimes()[I
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/yelp/android/serializable/_Movie;->mShowtimes:[I

    return-object v0
.end method

.method public getTicketingUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/yelp/android/serializable/_Movie;->mTicketingUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/yelp/android/serializable/_Movie;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public readFromJson(Lorg/json/JSONObject;)V
    .locals 5

    .prologue
    .line 80
    const-string/jumbo v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    const-string/jumbo v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Movie;->mTitle:Ljava/lang/String;

    .line 83
    :cond_0
    const-string/jumbo v0, "rating"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 84
    const-string/jumbo v0, "rating"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Movie;->mRating:Ljava/lang/String;

    .line 86
    :cond_1
    const-string/jumbo v0, "image_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 87
    const-string/jumbo v0, "image_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Movie;->mImageUrl:Ljava/lang/String;

    .line 89
    :cond_2
    const-string/jumbo v0, "ticketing_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 90
    const-string/jumbo v0, "ticketing_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Movie;->mTicketingUrl:Ljava/lang/String;

    .line 92
    :cond_3
    const-string/jumbo v0, "runtime"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_Movie;->mRuntime:I

    .line 93
    const-string/jumbo v0, "showtime"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 94
    const-string/jumbo v0, "showtime"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 95
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 96
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/yelp/android/serializable/_Movie;->mShowtimes:[I

    .line 97
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_4

    .line 98
    iget-object v3, p0, Lcom/yelp/android/serializable/_Movie;->mShowtimes:[I

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    aput v4, v3, v0

    .line 97
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 101
    :cond_4
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Movie;->mTitle:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Movie;->mRating:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Movie;->mImageUrl:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Movie;->mTicketingUrl:Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_Movie;->mRuntime:I

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Movie;->mShowtimes:[I

    .line 77
    return-void
.end method

.method public writeJSON()Lorg/json/JSONObject;
    .locals 6

    .prologue
    .line 104
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 105
    iget-object v0, p0, Lcom/yelp/android/serializable/_Movie;->mTitle:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 106
    const-string/jumbo v0, "title"

    iget-object v2, p0, Lcom/yelp/android/serializable/_Movie;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/_Movie;->mRating:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 109
    const-string/jumbo v0, "rating"

    iget-object v2, p0, Lcom/yelp/android/serializable/_Movie;->mRating:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/serializable/_Movie;->mImageUrl:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 112
    const-string/jumbo v0, "image_url"

    iget-object v2, p0, Lcom/yelp/android/serializable/_Movie;->mImageUrl:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 114
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/serializable/_Movie;->mTicketingUrl:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 115
    const-string/jumbo v0, "ticketing_url"

    iget-object v2, p0, Lcom/yelp/android/serializable/_Movie;->mTicketingUrl:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 117
    :cond_3
    const-string/jumbo v0, "runtime"

    iget v2, p0, Lcom/yelp/android/serializable/_Movie;->mRuntime:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 118
    iget-object v0, p0, Lcom/yelp/android/serializable/_Movie;->mShowtimes:[I

    if-eqz v0, :cond_5

    .line 119
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 120
    iget-object v3, p0, Lcom/yelp/android/serializable/_Movie;->mShowtimes:[I

    array-length v4, v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_4

    aget v5, v3, v0

    .line 121
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 120
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 123
    :cond_4
    const-string/jumbo v0, "showtime"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 125
    :cond_5
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/yelp/android/serializable/_Movie;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/yelp/android/serializable/_Movie;->mRating:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/yelp/android/serializable/_Movie;->mImageUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/yelp/android/serializable/_Movie;->mTicketingUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    iget v0, p0, Lcom/yelp/android/serializable/_Movie;->mRuntime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    iget-object v0, p0, Lcom/yelp/android/serializable/_Movie;->mShowtimes:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 67
    return-void
.end method
