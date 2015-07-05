.class final Lcom/yelp/android/serializable/au;
.super Lcom/yelp/android/serializable/ah;
.source "FriendRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/serializable/ah",
        "<",
        "Lcom/yelp/android/serializable/FriendRequest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/yelp/android/serializable/ah;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/FriendRequest;
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lcom/yelp/android/serializable/FriendRequest;

    invoke-direct {v0}, Lcom/yelp/android/serializable/FriendRequest;-><init>()V

    .line 45
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/FriendRequest;->readFromParcel(Landroid/os/Parcel;)V

    .line 46
    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/FriendRequest;
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lcom/yelp/android/serializable/FriendRequest;

    invoke-direct {v0}, Lcom/yelp/android/serializable/FriendRequest;-><init>()V

    .line 52
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/FriendRequest;->readFromJson(Lorg/json/JSONObject;)V

    .line 53
    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/serializable/FriendRequest;
    .locals 1

    .prologue
    .line 39
    new-array v0, p1, [Lcom/yelp/android/serializable/FriendRequest;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/au;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/FriendRequest;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/au;->a(I)[Lcom/yelp/android/serializable/FriendRequest;

    move-result-object v0

    return-object v0
.end method

.method public synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/au;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/FriendRequest;

    move-result-object v0

    return-object v0
.end method
