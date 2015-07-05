.class abstract Lcom/yelp/android/serializable/_SearchResultAnnotation;
.super Ljava/lang/Object;
.source "_SearchResultAnnotation.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mBlueVal:I

.field protected mGreenVal:I

.field protected mImagePath:Ljava/lang/String;

.field protected mImageUrl:Ljava/lang/String;

.field protected mRedVal:I

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

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/yelp/android/serializable/_SearchResultAnnotation;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/yelp/android/serializable/_SearchResultAnnotation;->mType:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/yelp/android/serializable/_SearchResultAnnotation;->mTitle:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/yelp/android/serializable/_SearchResultAnnotation;->mImagePath:Ljava/lang/String;

    .line 28
    iput-object p4, p0, Lcom/yelp/android/serializable/_SearchResultAnnotation;->mImageUrl:Ljava/lang/String;

    .line 29
    iput p5, p0, Lcom/yelp/android/serializable/_SearchResultAnnotation;->mRedVal:I

    .line 30
    iput p6, p0, Lcom/yelp/android/serializable/_SearchResultAnnotation;->mBlueVal:I

    .line 31
    iput p7, p0, Lcom/yelp/android/serializable/_SearchResultAnnotation;->mGreenVal:I

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

.method public getBlueVal()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/yelp/android/serializable/_SearchResultAnnotation;->mBlueVal:I

    return v0
.end method

.method public getGreenVal()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/yelp/android/serializable/_SearchResultAnnotation;->mGreenVal:I

    return v0
.end method

.method public getImagePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/yelp/android/serializable/_SearchResultAnnotation;->mImagePath:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/yelp/android/serializable/_SearchResultAnnotation;->mImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRedVal()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/yelp/android/serializable/_SearchResultAnnotation;->mRedVal:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/yelp/android/serializable/_SearchResultAnnotation;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/yelp/android/serializable/_SearchResultAnnotation;->mType:Ljava/lang/String;

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

    iput-object v0, p0, Lcom/yelp/android/serializable/_SearchResultAnnotation;->mType:Ljava/lang/String;

    .line 89
    :cond_0
    const-string/jumbo v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 90
    const-string/jumbo v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_SearchResultAnnotation;->mTitle:Ljava/lang/String;

    .line 92
    :cond_1
    const-string/jumbo v0, "image_path"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 93
    const-string/jumbo v0, "image_path"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_SearchResultAnnotation;->mImagePath:Ljava/lang/String;

    .line 95
    :cond_2
    const-string/jumbo v0, "image_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 96
    const-string/jumbo v0, "image_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_SearchResultAnnotation;->mImageUrl:Ljava/lang/String;

    .line 98
    :cond_3
    const-string/jumbo v0, "red_val"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_SearchResultAnnotation;->mRedVal:I

    .line 99
    const-string/jumbo v0, "blue_val"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_SearchResultAnnotation;->mBlueVal:I

    .line 100
    const-string/jumbo v0, "green_val"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_SearchResultAnnotation;->mGreenVal:I

    .line 101
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_SearchResultAnnotation;->mType:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_SearchResultAnnotation;->mTitle:Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_SearchResultAnnotation;->mImagePath:Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_SearchResultAnnotation;->mImageUrl:Ljava/lang/String;

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_SearchResultAnnotation;->mRedVal:I

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_SearchResultAnnotation;->mBlueVal:I

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_SearchResultAnnotation;->mGreenVal:I

    .line 83
    return-void
.end method

.method public writeJSON()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 104
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 105
    iget-object v1, p0, Lcom/yelp/android/serializable/_SearchResultAnnotation;->mType:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 106
    const-string/jumbo v1, "type"

    iget-object v2, p0, Lcom/yelp/android/serializable/_SearchResultAnnotation;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 108
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/serializable/_SearchResultAnnotation;->mTitle:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 109
    const-string/jumbo v1, "title"

    iget-object v2, p0, Lcom/yelp/android/serializable/_SearchResultAnnotation;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 111
    :cond_1
    iget-object v1, p0, Lcom/yelp/android/serializable/_SearchResultAnnotation;->mImagePath:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 112
    const-string/jumbo v1, "image_path"

    iget-object v2, p0, Lcom/yelp/android/serializable/_SearchResultAnnotation;->mImagePath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 114
    :cond_2
    iget-object v1, p0, Lcom/yelp/android/serializable/_SearchResultAnnotation;->mImageUrl:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 115
    const-string/jumbo v1, "image_url"

    iget-object v2, p0, Lcom/yelp/android/serializable/_SearchResultAnnotation;->mImageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 117
    :cond_3
    const-string/jumbo v1, "red_val"

    iget v2, p0, Lcom/yelp/android/serializable/_SearchResultAnnotation;->mRedVal:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 118
    const-string/jumbo v1, "blue_val"

    iget v2, p0, Lcom/yelp/android/serializable/_SearchResultAnnotation;->mBlueVal:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 119
    const-string/jumbo v1, "green_val"

    iget v2, p0, Lcom/yelp/android/serializable/_SearchResultAnnotation;->mGreenVal:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 120
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/yelp/android/serializable/_SearchResultAnnotation;->mType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/yelp/android/serializable/_SearchResultAnnotation;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/yelp/android/serializable/_SearchResultAnnotation;->mImagePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/yelp/android/serializable/_SearchResultAnnotation;->mImageUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    iget v0, p0, Lcom/yelp/android/serializable/_SearchResultAnnotation;->mRedVal:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    iget v0, p0, Lcom/yelp/android/serializable/_SearchResultAnnotation;->mBlueVal:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    iget v0, p0, Lcom/yelp/android/serializable/_SearchResultAnnotation;->mGreenVal:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    return-void
.end method
