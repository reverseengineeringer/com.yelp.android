.class final Lcom/yelp/android/serializable/FriendRequest$1;
.super Lcom/yelp/android/serializable/a;
.source "FriendRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/serializable/FriendRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/serializable/a",
        "<",
        "Lcom/yelp/android/serializable/FriendRequest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/yelp/android/serializable/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/FriendRequest;
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/yelp/android/serializable/FriendRequest;

    invoke-direct {v0}, Lcom/yelp/android/serializable/FriendRequest;-><init>()V

    .line 51
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/FriendRequest;->a(Landroid/os/Parcel;)V

    .line 52
    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/FriendRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 57
    new-instance v0, Lcom/yelp/android/serializable/FriendRequest;

    invoke-direct {v0}, Lcom/yelp/android/serializable/FriendRequest;-><init>()V

    .line 58
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/FriendRequest;->a(Lorg/json/JSONObject;)V

    .line 59
    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/serializable/FriendRequest;
    .locals 1

    .prologue
    .line 45
    new-array v0, p1, [Lcom/yelp/android/serializable/FriendRequest;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/FriendRequest$1;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/FriendRequest;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/FriendRequest$1;->a(I)[Lcom/yelp/android/serializable/FriendRequest;

    move-result-object v0

    return-object v0
.end method

.method public synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/FriendRequest$1;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/FriendRequest;

    move-result-object v0

    return-object v0
.end method
