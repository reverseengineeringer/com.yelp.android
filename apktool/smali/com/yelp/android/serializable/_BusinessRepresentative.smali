.class abstract Lcom/yelp/android/serializable/_BusinessRepresentative;
.super Ljava/lang/Object;
.source "_BusinessRepresentative.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mBio:Ljava/lang/String;

.field protected mName:Ljava/lang/String;

.field protected mPhoto:Lcom/yelp/android/serializable/Photo;

.field protected mRoleString:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method protected constructor <init>(Lcom/yelp/android/serializable/Photo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/yelp/android/serializable/_BusinessRepresentative;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/yelp/android/serializable/_BusinessRepresentative;->mPhoto:Lcom/yelp/android/serializable/Photo;

    .line 23
    iput-object p2, p0, Lcom/yelp/android/serializable/_BusinessRepresentative;->mName:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lcom/yelp/android/serializable/_BusinessRepresentative;->mBio:Ljava/lang/String;

    .line 25
    iput-object p4, p0, Lcom/yelp/android/serializable/_BusinessRepresentative;->mRoleString:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public getBio()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/yelp/android/serializable/_BusinessRepresentative;->mBio:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/yelp/android/serializable/_BusinessRepresentative;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoto()Lcom/yelp/android/serializable/Photo;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/yelp/android/serializable/_BusinessRepresentative;->mPhoto:Lcom/yelp/android/serializable/Photo;

    return-object v0
.end method

.method public getRoleString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/yelp/android/serializable/_BusinessRepresentative;->mRoleString:Ljava/lang/String;

    return-object v0
.end method

.method public readFromJson(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 65
    const-string/jumbo v0, "photo"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    sget-object v0, Lcom/yelp/android/serializable/Photo;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    const-string/jumbo v1, "photo"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Photo;

    iput-object v0, p0, Lcom/yelp/android/serializable/_BusinessRepresentative;->mPhoto:Lcom/yelp/android/serializable/Photo;

    .line 68
    :cond_0
    const-string/jumbo v0, "name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 69
    const-string/jumbo v0, "name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_BusinessRepresentative;->mName:Ljava/lang/String;

    .line 71
    :cond_1
    const-string/jumbo v0, "bio"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 72
    const-string/jumbo v0, "bio"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_BusinessRepresentative;->mBio:Ljava/lang/String;

    .line 74
    :cond_2
    const-string/jumbo v0, "role"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 75
    const-string/jumbo v0, "role"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_BusinessRepresentative;->mRoleString:Ljava/lang/String;

    .line 77
    :cond_3
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 58
    const-class v0, Lcom/yelp/android/serializable/Photo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Photo;

    iput-object v0, p0, Lcom/yelp/android/serializable/_BusinessRepresentative;->mPhoto:Lcom/yelp/android/serializable/Photo;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_BusinessRepresentative;->mName:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_BusinessRepresentative;->mBio:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_BusinessRepresentative;->mRoleString:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public writeJSON()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 80
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 81
    iget-object v1, p0, Lcom/yelp/android/serializable/_BusinessRepresentative;->mPhoto:Lcom/yelp/android/serializable/Photo;

    if-eqz v1, :cond_0

    .line 82
    const-string/jumbo v1, "photo"

    iget-object v2, p0, Lcom/yelp/android/serializable/_BusinessRepresentative;->mPhoto:Lcom/yelp/android/serializable/Photo;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Photo;->writeJSON()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 84
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/serializable/_BusinessRepresentative;->mName:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 85
    const-string/jumbo v1, "name"

    iget-object v2, p0, Lcom/yelp/android/serializable/_BusinessRepresentative;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 87
    :cond_1
    iget-object v1, p0, Lcom/yelp/android/serializable/_BusinessRepresentative;->mBio:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 88
    const-string/jumbo v1, "bio"

    iget-object v2, p0, Lcom/yelp/android/serializable/_BusinessRepresentative;->mBio:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 90
    :cond_2
    iget-object v1, p0, Lcom/yelp/android/serializable/_BusinessRepresentative;->mRoleString:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 91
    const-string/jumbo v1, "role"

    iget-object v2, p0, Lcom/yelp/android/serializable/_BusinessRepresentative;->mRoleString:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 93
    :cond_3
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/yelp/android/serializable/_BusinessRepresentative;->mPhoto:Lcom/yelp/android/serializable/Photo;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 52
    iget-object v0, p0, Lcom/yelp/android/serializable/_BusinessRepresentative;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/yelp/android/serializable/_BusinessRepresentative;->mBio:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/yelp/android/serializable/_BusinessRepresentative;->mRoleString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 55
    return-void
.end method
