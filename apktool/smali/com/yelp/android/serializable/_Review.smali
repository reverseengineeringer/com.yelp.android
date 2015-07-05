.class abstract Lcom/yelp/android/serializable/_Review;
.super Ljava/lang/Object;
.source "_Review.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mId:Ljava/lang/String;

.field protected mRating:I

.field protected mText:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/yelp/android/serializable/_Review;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/yelp/android/serializable/_Review;->mId:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/yelp/android/serializable/_Review;->mText:Ljava/lang/String;

    .line 23
    iput p3, p0, Lcom/yelp/android/serializable/_Review;->mRating:I

    .line 24
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/yelp/android/serializable/_Review;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getRating()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/yelp/android/serializable/_Review;->mRating:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/yelp/android/serializable/_Review;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public readFromJson(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 58
    const-string/jumbo v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    const-string/jumbo v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Review;->mId:Ljava/lang/String;

    .line 61
    :cond_0
    const-string/jumbo v0, "text"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 62
    const-string/jumbo v0, "text"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Review;->mText:Ljava/lang/String;

    .line 64
    :cond_1
    const-string/jumbo v0, "rating"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_Review;->mRating:I

    .line 65
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Review;->mId:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Review;->mText:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_Review;->mRating:I

    .line 55
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/yelp/android/serializable/_Review;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/yelp/android/serializable/_Review;->mText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    iget v0, p0, Lcom/yelp/android/serializable/_Review;->mRating:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    return-void
.end method
