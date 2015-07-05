.class final Lcom/yelp/android/serializable/cy;
.super Lcom/yelp/parcelgen/JsonParser$DualCreator;
.source "SearchResultAnnotation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/parcelgen/JsonParser$DualCreator",
        "<",
        "Lcom/yelp/android/serializable/SearchResultAnnotation;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/yelp/parcelgen/JsonParser$DualCreator;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/SearchResultAnnotation;
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/yelp/android/serializable/SearchResultAnnotation;

    invoke-direct {v0}, Lcom/yelp/android/serializable/SearchResultAnnotation;-><init>()V

    .line 23
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/SearchResultAnnotation;->readFromParcel(Landroid/os/Parcel;)V

    .line 24
    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/SearchResultAnnotation;
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lcom/yelp/android/serializable/SearchResultAnnotation;

    invoke-direct {v0}, Lcom/yelp/android/serializable/SearchResultAnnotation;-><init>()V

    .line 30
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/SearchResultAnnotation;->readFromJson(Lorg/json/JSONObject;)V

    .line 31
    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/serializable/SearchResultAnnotation;
    .locals 1

    .prologue
    .line 17
    new-array v0, p1, [Lcom/yelp/android/serializable/SearchResultAnnotation;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/cy;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/SearchResultAnnotation;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/cy;->a(I)[Lcom/yelp/android/serializable/SearchResultAnnotation;

    move-result-object v0

    return-object v0
.end method

.method public synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/cy;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/SearchResultAnnotation;

    move-result-object v0

    return-object v0
.end method
