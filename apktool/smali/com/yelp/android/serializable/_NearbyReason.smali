.class abstract Lcom/yelp/android/serializable/_NearbyReason;
.super Ljava/lang/Object;
.source "_NearbyReason.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mMenuItem:Lcom/yelp/android/serializable/MenuItem;

.field protected mText:Ljava/lang/String;

.field protected mUser:Lcom/yelp/android/serializable/User;

.field protected mUserReason:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method protected constructor <init>(Lcom/yelp/android/serializable/MenuItem;Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/serializable/User;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/yelp/android/serializable/_NearbyReason;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/yelp/android/serializable/_NearbyReason;->mMenuItem:Lcom/yelp/android/serializable/MenuItem;

    .line 23
    iput-object p2, p0, Lcom/yelp/android/serializable/_NearbyReason;->mText:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lcom/yelp/android/serializable/_NearbyReason;->mUserReason:Ljava/lang/String;

    .line 25
    iput-object p4, p0, Lcom/yelp/android/serializable/_NearbyReason;->mUser:Lcom/yelp/android/serializable/User;

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

.method public getMenuItem()Lcom/yelp/android/serializable/MenuItem;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/yelp/android/serializable/_NearbyReason;->mMenuItem:Lcom/yelp/android/serializable/MenuItem;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/yelp/android/serializable/_NearbyReason;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Lcom/yelp/android/serializable/User;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/yelp/android/serializable/_NearbyReason;->mUser:Lcom/yelp/android/serializable/User;

    return-object v0
.end method

.method public getUserReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/yelp/android/serializable/_NearbyReason;->mUserReason:Ljava/lang/String;

    return-object v0
.end method

.method public readFromJson(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 65
    const-string/jumbo v0, "menu_item"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    sget-object v0, Lcom/yelp/android/serializable/MenuItem;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    const-string/jumbo v1, "menu_item"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/MenuItem;

    iput-object v0, p0, Lcom/yelp/android/serializable/_NearbyReason;->mMenuItem:Lcom/yelp/android/serializable/MenuItem;

    .line 68
    :cond_0
    const-string/jumbo v0, "text"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 69
    const-string/jumbo v0, "text"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_NearbyReason;->mText:Ljava/lang/String;

    .line 71
    :cond_1
    const-string/jumbo v0, "user_reason"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 72
    const-string/jumbo v0, "user_reason"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_NearbyReason;->mUserReason:Ljava/lang/String;

    .line 74
    :cond_2
    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 75
    sget-object v0, Lcom/yelp/android/serializable/User;->CREATOR:Lcom/yelp/android/serializable/ah;

    const-string/jumbo v1, "user"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/ah;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/User;

    iput-object v0, p0, Lcom/yelp/android/serializable/_NearbyReason;->mUser:Lcom/yelp/android/serializable/User;

    .line 77
    :cond_3
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 58
    const-class v0, Lcom/yelp/android/serializable/MenuItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/MenuItem;

    iput-object v0, p0, Lcom/yelp/android/serializable/_NearbyReason;->mMenuItem:Lcom/yelp/android/serializable/MenuItem;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_NearbyReason;->mText:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_NearbyReason;->mUserReason:Ljava/lang/String;

    .line 61
    const-class v0, Lcom/yelp/android/serializable/User;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/User;

    iput-object v0, p0, Lcom/yelp/android/serializable/_NearbyReason;->mUser:Lcom/yelp/android/serializable/User;

    .line 62
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 51
    iget-object v0, p0, Lcom/yelp/android/serializable/_NearbyReason;->mMenuItem:Lcom/yelp/android/serializable/MenuItem;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 52
    iget-object v0, p0, Lcom/yelp/android/serializable/_NearbyReason;->mText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/yelp/android/serializable/_NearbyReason;->mUserReason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/yelp/android/serializable/_NearbyReason;->mUser:Lcom/yelp/android/serializable/User;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 55
    return-void
.end method
