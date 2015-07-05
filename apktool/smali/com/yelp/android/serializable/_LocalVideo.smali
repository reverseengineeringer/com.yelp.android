.class abstract Lcom/yelp/android/serializable/_LocalVideo;
.super Ljava/lang/Object;
.source "_LocalVideo.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mBusinessId:Ljava/lang/String;

.field protected mDuration:I

.field protected mFilePath:Ljava/lang/String;

.field protected mHeight:I

.field protected mWidth:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;III)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/yelp/android/serializable/_LocalVideo;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/yelp/android/serializable/_LocalVideo;->mFilePath:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/yelp/android/serializable/_LocalVideo;->mBusinessId:Ljava/lang/String;

    .line 25
    iput p3, p0, Lcom/yelp/android/serializable/_LocalVideo;->mDuration:I

    .line 26
    iput p4, p0, Lcom/yelp/android/serializable/_LocalVideo;->mWidth:I

    .line 27
    iput p5, p0, Lcom/yelp/android/serializable/_LocalVideo;->mHeight:I

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

.method public getBusinessId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/yelp/android/serializable/_LocalVideo;->mBusinessId:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/yelp/android/serializable/_LocalVideo;->mDuration:I

    return v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/yelp/android/serializable/_LocalVideo;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/yelp/android/serializable/_LocalVideo;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/yelp/android/serializable/_LocalVideo;->mWidth:I

    return v0
.end method

.method public readFromJson(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 72
    const-string/jumbo v0, "file_path"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    const-string/jumbo v0, "file_path"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_LocalVideo;->mFilePath:Ljava/lang/String;

    .line 75
    :cond_0
    const-string/jumbo v0, "business_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 76
    const-string/jumbo v0, "business_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_LocalVideo;->mBusinessId:Ljava/lang/String;

    .line 78
    :cond_1
    const-string/jumbo v0, "duration"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_LocalVideo;->mDuration:I

    .line 79
    const-string/jumbo v0, "width"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_LocalVideo;->mWidth:I

    .line 80
    const-string/jumbo v0, "height"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_LocalVideo;->mHeight:I

    .line 81
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_LocalVideo;->mFilePath:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_LocalVideo;->mBusinessId:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_LocalVideo;->mDuration:I

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_LocalVideo;->mWidth:I

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_LocalVideo;->mHeight:I

    .line 69
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/yelp/android/serializable/_LocalVideo;->mFilePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/yelp/android/serializable/_LocalVideo;->mBusinessId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    iget v0, p0, Lcom/yelp/android/serializable/_LocalVideo;->mDuration:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    iget v0, p0, Lcom/yelp/android/serializable/_LocalVideo;->mWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    iget v0, p0, Lcom/yelp/android/serializable/_LocalVideo;->mHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    return-void
.end method
