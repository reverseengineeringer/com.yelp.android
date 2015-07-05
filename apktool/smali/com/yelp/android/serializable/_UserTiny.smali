.class abstract Lcom/yelp/android/serializable/_UserTiny;
.super Ljava/lang/Object;
.source "_UserTiny.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mFirstName:Ljava/lang/String;

.field protected mId:Ljava/lang/String;

.field protected mIsBlocked:Z

.field protected mLastInitial:Ljava/lang/String;

.field protected mName:Ljava/lang/String;

.field protected mPhoto:Lcom/yelp/android/serializable/Photo;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method protected constructor <init>(Lcom/yelp/android/serializable/Photo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/yelp/android/serializable/_UserTiny;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/yelp/android/serializable/_UserTiny;->mPhoto:Lcom/yelp/android/serializable/Photo;

    .line 25
    iput-object p2, p0, Lcom/yelp/android/serializable/_UserTiny;->mId:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lcom/yelp/android/serializable/_UserTiny;->mName:Ljava/lang/String;

    .line 27
    iput-object p4, p0, Lcom/yelp/android/serializable/_UserTiny;->mFirstName:Ljava/lang/String;

    .line 28
    iput-object p5, p0, Lcom/yelp/android/serializable/_UserTiny;->mLastInitial:Ljava/lang/String;

    .line 29
    iput-boolean p6, p0, Lcom/yelp/android/serializable/_UserTiny;->mIsBlocked:Z

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

.method public getFirstName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/yelp/android/serializable/_UserTiny;->mFirstName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/yelp/android/serializable/_UserTiny;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getLastInitial()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/yelp/android/serializable/_UserTiny;->mLastInitial:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/yelp/android/serializable/_UserTiny;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoto()Lcom/yelp/android/serializable/Photo;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/yelp/android/serializable/_UserTiny;->mPhoto:Lcom/yelp/android/serializable/Photo;

    return-object v0
.end method

.method public isBlocked()Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/yelp/android/serializable/_UserTiny;->mIsBlocked:Z

    return v0
.end method

.method public readFromJson(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 80
    const-string/jumbo v0, "photo"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    sget-object v0, Lcom/yelp/android/serializable/Photo;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    const-string/jumbo v1, "photo"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Photo;

    iput-object v0, p0, Lcom/yelp/android/serializable/_UserTiny;->mPhoto:Lcom/yelp/android/serializable/Photo;

    .line 83
    :cond_0
    const-string/jumbo v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 84
    const-string/jumbo v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_UserTiny;->mId:Ljava/lang/String;

    .line 86
    :cond_1
    const-string/jumbo v0, "name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 87
    const-string/jumbo v0, "name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_UserTiny;->mName:Ljava/lang/String;

    .line 89
    :cond_2
    const-string/jumbo v0, "first_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 90
    const-string/jumbo v0, "first_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_UserTiny;->mFirstName:Ljava/lang/String;

    .line 92
    :cond_3
    const-string/jumbo v0, "last_initial"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 93
    const-string/jumbo v0, "last_initial"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_UserTiny;->mLastInitial:Ljava/lang/String;

    .line 95
    :cond_4
    const-string/jumbo v0, "is_blocked"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/serializable/_UserTiny;->mIsBlocked:Z

    .line 96
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 70
    const-class v0, Lcom/yelp/android/serializable/Photo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Photo;

    iput-object v0, p0, Lcom/yelp/android/serializable/_UserTiny;->mPhoto:Lcom/yelp/android/serializable/Photo;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_UserTiny;->mId:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_UserTiny;->mName:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_UserTiny;->mFirstName:Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_UserTiny;->mLastInitial:Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v0

    .line 76
    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lcom/yelp/android/serializable/_UserTiny;->mIsBlocked:Z

    .line 77
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 61
    iget-object v0, p0, Lcom/yelp/android/serializable/_UserTiny;->mPhoto:Lcom/yelp/android/serializable/Photo;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 62
    iget-object v0, p0, Lcom/yelp/android/serializable/_UserTiny;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/yelp/android/serializable/_UserTiny;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/yelp/android/serializable/_UserTiny;->mFirstName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/yelp/android/serializable/_UserTiny;->mLastInitial:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 66
    const/4 v0, 0x1

    new-array v0, v0, [Z

    iget-boolean v1, p0, Lcom/yelp/android/serializable/_UserTiny;->mIsBlocked:Z

    aput-boolean v1, v0, v2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 67
    return-void
.end method
