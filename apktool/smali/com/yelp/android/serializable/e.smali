.class final Lcom/yelp/android/serializable/e;
.super Lcom/yelp/parcelgen/JsonParser$DualCreator;
.source "AttributeFilter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/parcelgen/JsonParser$DualCreator",
        "<",
        "Lcom/yelp/android/serializable/AttributeFilter;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/yelp/parcelgen/JsonParser$DualCreator;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/AttributeFilter;
    .locals 1

    .prologue
    .line 61
    new-instance v0, Lcom/yelp/android/serializable/AttributeFilter;

    invoke-direct {v0}, Lcom/yelp/android/serializable/AttributeFilter;-><init>()V

    .line 62
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/AttributeFilter;->readFromParcel(Landroid/os/Parcel;)V

    .line 63
    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/AttributeFilter;
    .locals 1

    .prologue
    .line 68
    new-instance v0, Lcom/yelp/android/serializable/AttributeFilter;

    invoke-direct {v0}, Lcom/yelp/android/serializable/AttributeFilter;-><init>()V

    .line 69
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/AttributeFilter;->readFromJson(Lorg/json/JSONObject;)V

    .line 70
    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/serializable/AttributeFilter;
    .locals 1

    .prologue
    .line 57
    new-array v0, p1, [Lcom/yelp/android/serializable/AttributeFilter;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/e;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/AttributeFilter;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/e;->a(I)[Lcom/yelp/android/serializable/AttributeFilter;

    move-result-object v0

    return-object v0
.end method

.method public synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/e;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/AttributeFilter;

    move-result-object v0

    return-object v0
.end method
