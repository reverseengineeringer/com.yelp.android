.class final Lcom/yelp/android/serializable/z;
.super Lcom/yelp/parcelgen/JsonParser$DualCreator;
.source "Comment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/parcelgen/JsonParser$DualCreator",
        "<",
        "Lcom/yelp/android/serializable/Comment;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/yelp/parcelgen/JsonParser$DualCreator;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/Comment;
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lcom/yelp/android/serializable/Comment;

    invoke-direct {v0}, Lcom/yelp/android/serializable/Comment;-><init>()V

    .line 30
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/Comment;->readFromParcel(Landroid/os/Parcel;)V

    .line 31
    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/Comment;
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/yelp/android/serializable/Comment;

    invoke-direct {v0}, Lcom/yelp/android/serializable/Comment;-><init>()V

    .line 37
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/Comment;->readFromJson(Lorg/json/JSONObject;)V

    .line 38
    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/serializable/Comment;
    .locals 1

    .prologue
    .line 25
    new-array v0, p1, [Lcom/yelp/android/serializable/Comment;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/z;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/Comment;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/z;->a(I)[Lcom/yelp/android/serializable/Comment;

    move-result-object v0

    return-object v0
.end method

.method public synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/z;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/Comment;

    move-result-object v0

    return-object v0
.end method
