.class public Lcom/yelp/android/serializable/RecentFriendCheckIns;
.super Lcom/yelp/android/serializable/_RecentFriendCheckIns;
.source "RecentFriendCheckIns.java"


# static fields
.field public static final CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/parcelgen/JsonParser$DualCreator",
            "<",
            "Lcom/yelp/android/serializable/RecentFriendCheckIns;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/yelp/android/serializable/ci;

    invoke-direct {v0}, Lcom/yelp/android/serializable/ci;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/RecentFriendCheckIns;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/yelp/android/serializable/_RecentFriendCheckIns;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_RecentFriendCheckIns;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getCount()I
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_RecentFriendCheckIns;->getCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getInterval()I
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_RecentFriendCheckIns;->getInterval()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getUsers()Ljava/util/List;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_RecentFriendCheckIns;->getUsers()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic readFromJson(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 10
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_RecentFriendCheckIns;->readFromJson(Lorg/json/JSONObject;)V

    return-void
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 10
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_RecentFriendCheckIns;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public bridge synthetic writeJSON()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_RecentFriendCheckIns;->writeJSON()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 10
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_RecentFriendCheckIns;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
