.class abstract Lcom/yelp/android/serializable/_FromThisBusiness;
.super Ljava/lang/Object;
.source "_FromThisBusiness.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mHistory:Ljava/lang/String;

.field protected mRepresentative:Lcom/yelp/android/serializable/BusinessRepresentative;

.field protected mShowTeaser:Z

.field protected mSpecialties:Ljava/lang/String;

.field protected mYearEstablished:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method protected constructor <init>(Lcom/yelp/android/serializable/BusinessRepresentative;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/yelp/android/serializable/_FromThisBusiness;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/yelp/android/serializable/_FromThisBusiness;->mRepresentative:Lcom/yelp/android/serializable/BusinessRepresentative;

    .line 24
    iput-object p2, p0, Lcom/yelp/android/serializable/_FromThisBusiness;->mSpecialties:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcom/yelp/android/serializable/_FromThisBusiness;->mHistory:Ljava/lang/String;

    .line 26
    iput-boolean p4, p0, Lcom/yelp/android/serializable/_FromThisBusiness;->mShowTeaser:Z

    .line 27
    iput p5, p0, Lcom/yelp/android/serializable/_FromThisBusiness;->mYearEstablished:I

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

.method public getHistory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/yelp/android/serializable/_FromThisBusiness;->mHistory:Ljava/lang/String;

    return-object v0
.end method

.method public getRepresentative()Lcom/yelp/android/serializable/BusinessRepresentative;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/yelp/android/serializable/_FromThisBusiness;->mRepresentative:Lcom/yelp/android/serializable/BusinessRepresentative;

    return-object v0
.end method

.method public getShowTeaser()Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/yelp/android/serializable/_FromThisBusiness;->mShowTeaser:Z

    return v0
.end method

.method public getSpecialties()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/yelp/android/serializable/_FromThisBusiness;->mSpecialties:Ljava/lang/String;

    return-object v0
.end method

.method public getYearEstablished()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/yelp/android/serializable/_FromThisBusiness;->mYearEstablished:I

    return v0
.end method

.method public readFromJson(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 73
    const-string/jumbo v0, "representative"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    sget-object v0, Lcom/yelp/android/serializable/BusinessRepresentative;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    const-string/jumbo v1, "representative"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/BusinessRepresentative;

    iput-object v0, p0, Lcom/yelp/android/serializable/_FromThisBusiness;->mRepresentative:Lcom/yelp/android/serializable/BusinessRepresentative;

    .line 76
    :cond_0
    const-string/jumbo v0, "specialties"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 77
    const-string/jumbo v0, "specialties"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_FromThisBusiness;->mSpecialties:Ljava/lang/String;

    .line 79
    :cond_1
    const-string/jumbo v0, "history"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 80
    const-string/jumbo v0, "history"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_FromThisBusiness;->mHistory:Ljava/lang/String;

    .line 82
    :cond_2
    const-string/jumbo v0, "show_teaser"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/serializable/_FromThisBusiness;->mShowTeaser:Z

    .line 83
    const-string/jumbo v0, "year_established"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_FromThisBusiness;->mYearEstablished:I

    .line 84
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 64
    const-class v0, Lcom/yelp/android/serializable/BusinessRepresentative;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/BusinessRepresentative;

    iput-object v0, p0, Lcom/yelp/android/serializable/_FromThisBusiness;->mRepresentative:Lcom/yelp/android/serializable/BusinessRepresentative;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_FromThisBusiness;->mSpecialties:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_FromThisBusiness;->mHistory:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v0

    .line 68
    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lcom/yelp/android/serializable/_FromThisBusiness;->mShowTeaser:Z

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_FromThisBusiness;->mYearEstablished:I

    .line 70
    return-void
.end method

.method public writeJSON()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 87
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 88
    iget-object v1, p0, Lcom/yelp/android/serializable/_FromThisBusiness;->mRepresentative:Lcom/yelp/android/serializable/BusinessRepresentative;

    if-eqz v1, :cond_0

    .line 89
    const-string/jumbo v1, "representative"

    iget-object v2, p0, Lcom/yelp/android/serializable/_FromThisBusiness;->mRepresentative:Lcom/yelp/android/serializable/BusinessRepresentative;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/BusinessRepresentative;->writeJSON()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 91
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/serializable/_FromThisBusiness;->mSpecialties:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 92
    const-string/jumbo v1, "specialties"

    iget-object v2, p0, Lcom/yelp/android/serializable/_FromThisBusiness;->mSpecialties:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 94
    :cond_1
    iget-object v1, p0, Lcom/yelp/android/serializable/_FromThisBusiness;->mHistory:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 95
    const-string/jumbo v1, "history"

    iget-object v2, p0, Lcom/yelp/android/serializable/_FromThisBusiness;->mHistory:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 97
    :cond_2
    const-string/jumbo v1, "show_teaser"

    iget-boolean v2, p0, Lcom/yelp/android/serializable/_FromThisBusiness;->mShowTeaser:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 98
    const-string/jumbo v1, "year_established"

    iget v2, p0, Lcom/yelp/android/serializable/_FromThisBusiness;->mYearEstablished:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 99
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 56
    iget-object v0, p0, Lcom/yelp/android/serializable/_FromThisBusiness;->mRepresentative:Lcom/yelp/android/serializable/BusinessRepresentative;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 57
    iget-object v0, p0, Lcom/yelp/android/serializable/_FromThisBusiness;->mSpecialties:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/yelp/android/serializable/_FromThisBusiness;->mHistory:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    const/4 v0, 0x1

    new-array v0, v0, [Z

    iget-boolean v1, p0, Lcom/yelp/android/serializable/_FromThisBusiness;->mShowTeaser:Z

    aput-boolean v1, v0, v2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 60
    iget v0, p0, Lcom/yelp/android/serializable/_FromThisBusiness;->mYearEstablished:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    return-void
.end method
