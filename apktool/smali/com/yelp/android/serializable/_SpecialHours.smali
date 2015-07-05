.class abstract Lcom/yelp/android/serializable/_SpecialHours;
.super Ljava/lang/Object;
.source "_SpecialHours.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mDays:[I

.field protected mType:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;[I)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/yelp/android/serializable/_SpecialHours;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/yelp/android/serializable/_SpecialHours;->mType:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/yelp/android/serializable/_SpecialHours;->mDays:[I

    .line 22
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public getDays()[I
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/yelp/android/serializable/_SpecialHours;->mDays:[I

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/yelp/android/serializable/_SpecialHours;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public readFromJson(Lorg/json/JSONObject;)V
    .locals 5

    .prologue
    .line 52
    const-string/jumbo v0, "type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    const-string/jumbo v0, "type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_SpecialHours;->mType:Ljava/lang/String;

    .line 55
    :cond_0
    const-string/jumbo v0, "days"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 56
    const-string/jumbo v0, "days"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 57
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 58
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/yelp/android/serializable/_SpecialHours;->mDays:[I

    .line 59
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    .line 60
    iget-object v3, p0, Lcom/yelp/android/serializable/_SpecialHours;->mDays:[I

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    aput v4, v3, v0

    .line 59
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 63
    :cond_1
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_SpecialHours;->mType:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_SpecialHours;->mDays:[I

    .line 49
    return-void
.end method

.method public writeJSON()Lorg/json/JSONObject;
    .locals 6

    .prologue
    .line 66
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 67
    iget-object v0, p0, Lcom/yelp/android/serializable/_SpecialHours;->mType:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 68
    const-string/jumbo v0, "type"

    iget-object v2, p0, Lcom/yelp/android/serializable/_SpecialHours;->mType:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/_SpecialHours;->mDays:[I

    if-eqz v0, :cond_2

    .line 71
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 72
    iget-object v3, p0, Lcom/yelp/android/serializable/_SpecialHours;->mDays:[I

    array-length v4, v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_1

    aget v5, v3, v0

    .line 73
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 75
    :cond_1
    const-string/jumbo v0, "days"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 77
    :cond_2
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/yelp/android/serializable/_SpecialHours;->mType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/yelp/android/serializable/_SpecialHours;->mDays:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 43
    return-void
.end method
