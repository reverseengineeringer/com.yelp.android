.class abstract Lcom/yelp/android/serializable/_FacebookUser;
.super Ljava/lang/Object;
.source "_FacebookUser.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mBirthday:Ljava/lang/String;

.field protected mEmail:Ljava/lang/String;

.field protected mFirstName:Ljava/lang/String;

.field protected mGender:Ljava/lang/String;

.field protected mId:Ljava/lang/String;

.field protected mLastName:Ljava/lang/String;

.field protected mVerified:Z


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/yelp/android/serializable/_FacebookUser;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/yelp/android/serializable/_FacebookUser;->mFirstName:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/yelp/android/serializable/_FacebookUser;->mLastName:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/yelp/android/serializable/_FacebookUser;->mBirthday:Ljava/lang/String;

    .line 28
    iput-object p4, p0, Lcom/yelp/android/serializable/_FacebookUser;->mGender:Ljava/lang/String;

    .line 29
    iput-object p5, p0, Lcom/yelp/android/serializable/_FacebookUser;->mId:Ljava/lang/String;

    .line 30
    iput-object p6, p0, Lcom/yelp/android/serializable/_FacebookUser;->mEmail:Ljava/lang/String;

    .line 31
    iput-boolean p7, p0, Lcom/yelp/android/serializable/_FacebookUser;->mVerified:Z

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

.method public getBirthday()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/yelp/android/serializable/_FacebookUser;->mBirthday:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/yelp/android/serializable/_FacebookUser;->mEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/yelp/android/serializable/_FacebookUser;->mFirstName:Ljava/lang/String;

    return-object v0
.end method

.method public getGender()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/yelp/android/serializable/_FacebookUser;->mGender:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/yelp/android/serializable/_FacebookUser;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getLastName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/yelp/android/serializable/_FacebookUser;->mLastName:Ljava/lang/String;

    return-object v0
.end method

.method public getVerified()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/yelp/android/serializable/_FacebookUser;->mVerified:Z

    return v0
.end method

.method public readFromJson(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 87
    const-string/jumbo v0, "first_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    const-string/jumbo v0, "first_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_FacebookUser;->mFirstName:Ljava/lang/String;

    .line 90
    :cond_0
    const-string/jumbo v0, "last_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 91
    const-string/jumbo v0, "last_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_FacebookUser;->mLastName:Ljava/lang/String;

    .line 93
    :cond_1
    const-string/jumbo v0, "birthday"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 94
    const-string/jumbo v0, "birthday"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_FacebookUser;->mBirthday:Ljava/lang/String;

    .line 96
    :cond_2
    const-string/jumbo v0, "gender"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 97
    const-string/jumbo v0, "gender"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_FacebookUser;->mGender:Ljava/lang/String;

    .line 99
    :cond_3
    const-string/jumbo v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 100
    const-string/jumbo v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_FacebookUser;->mId:Ljava/lang/String;

    .line 102
    :cond_4
    const-string/jumbo v0, "email"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 103
    const-string/jumbo v0, "email"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_FacebookUser;->mEmail:Ljava/lang/String;

    .line 105
    :cond_5
    const-string/jumbo v0, "verified"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/serializable/_FacebookUser;->mVerified:Z

    .line 106
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_FacebookUser;->mFirstName:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_FacebookUser;->mLastName:Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_FacebookUser;->mBirthday:Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_FacebookUser;->mGender:Ljava/lang/String;

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_FacebookUser;->mId:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_FacebookUser;->mEmail:Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v0

    .line 83
    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lcom/yelp/android/serializable/_FacebookUser;->mVerified:Z

    .line 84
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    .line 66
    iget-object v0, p0, Lcom/yelp/android/serializable/_FacebookUser;->mFirstName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/yelp/android/serializable/_FacebookUser;->mLastName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/yelp/android/serializable/_FacebookUser;->mBirthday:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/yelp/android/serializable/_FacebookUser;->mGender:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/yelp/android/serializable/_FacebookUser;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/yelp/android/serializable/_FacebookUser;->mEmail:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 72
    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/yelp/android/serializable/_FacebookUser;->mVerified:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 73
    return-void
.end method
