.class abstract Lcom/yelp/android/serializable/_RecentFriendCheckIns;
.super Ljava/lang/Object;
.source "_RecentFriendCheckIns.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mCount:I

.field protected mInterval:I

.field protected mUsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/RecentCheckIn;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method protected constructor <init>(Ljava/util/List;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/RecentCheckIn;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/yelp/android/serializable/_RecentFriendCheckIns;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/yelp/android/serializable/_RecentFriendCheckIns;->mUsers:Ljava/util/List;

    .line 24
    iput p2, p0, Lcom/yelp/android/serializable/_RecentFriendCheckIns;->mCount:I

    .line 25
    iput p3, p0, Lcom/yelp/android/serializable/_RecentFriendCheckIns;->mInterval:I

    .line 26
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/yelp/android/serializable/_RecentFriendCheckIns;->mCount:I

    return v0
.end method

.method public getInterval()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/yelp/android/serializable/_RecentFriendCheckIns;->mInterval:I

    return v0
.end method

.method public getUsers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/RecentCheckIn;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lcom/yelp/android/serializable/_RecentFriendCheckIns;->mUsers:Ljava/util/List;

    return-object v0
.end method

.method public readFromJson(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 60
    const-string/jumbo v0, "users"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    const-string/jumbo v0, "users"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/RecentCheckIn;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-static {v0, v1}, Lcom/yelp/parcelgen/JsonUtil;->parseJsonList(Lorg/json/JSONArray;Lcom/yelp/parcelgen/JsonParser;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_RecentFriendCheckIns;->mUsers:Ljava/util/List;

    .line 65
    :goto_0
    const-string/jumbo v0, "count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_RecentFriendCheckIns;->mCount:I

    .line 66
    const-string/jumbo v0, "interval"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_RecentFriendCheckIns;->mInterval:I

    .line 67
    return-void

    .line 63
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_RecentFriendCheckIns;->mUsers:Ljava/util/List;

    goto :goto_0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/yelp/android/serializable/RecentCheckIn;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_RecentFriendCheckIns;->mUsers:Ljava/util/List;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_RecentFriendCheckIns;->mCount:I

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_RecentFriendCheckIns;->mInterval:I

    .line 57
    return-void
.end method

.method public writeJSON()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 70
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 71
    iget-object v0, p0, Lcom/yelp/android/serializable/_RecentFriendCheckIns;->mUsers:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 72
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 73
    iget-object v0, p0, Lcom/yelp/android/serializable/_RecentFriendCheckIns;->mUsers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/RecentCheckIn;

    .line 74
    invoke-virtual {v0}, Lcom/yelp/android/serializable/RecentCheckIn;->writeJSON()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 76
    :cond_0
    const-string/jumbo v0, "users"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 78
    :cond_1
    const-string/jumbo v0, "count"

    iget v2, p0, Lcom/yelp/android/serializable/_RecentFriendCheckIns;->mCount:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 79
    const-string/jumbo v0, "interval"

    iget v2, p0, Lcom/yelp/android/serializable/_RecentFriendCheckIns;->mInterval:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 80
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/yelp/android/serializable/_RecentFriendCheckIns;->mUsers:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 49
    iget v0, p0, Lcom/yelp/android/serializable/_RecentFriendCheckIns;->mCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    iget v0, p0, Lcom/yelp/android/serializable/_RecentFriendCheckIns;->mInterval:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    return-void
.end method
