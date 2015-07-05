.class final Lcom/yelp/android/serializable/f;
.super Lcom/yelp/parcelgen/JsonParser$DualCreator;
.source "AttributeFilters.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/parcelgen/JsonParser$DualCreator",
        "<",
        "Lcom/yelp/android/serializable/AttributeFilters;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/yelp/parcelgen/JsonParser$DualCreator;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/AttributeFilters;
    .locals 1

    .prologue
    .line 92
    new-instance v0, Lcom/yelp/android/serializable/AttributeFilters;

    invoke-direct {v0}, Lcom/yelp/android/serializable/AttributeFilters;-><init>()V

    .line 93
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/AttributeFilters;->readFromParcel(Landroid/os/Parcel;)V

    .line 94
    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/AttributeFilters;
    .locals 1

    .prologue
    .line 99
    new-instance v0, Lcom/yelp/android/serializable/AttributeFilters;

    invoke-direct {v0}, Lcom/yelp/android/serializable/AttributeFilters;-><init>()V

    .line 100
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/AttributeFilters;->readFromJson(Lorg/json/JSONObject;)V

    .line 101
    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/serializable/AttributeFilters;
    .locals 1

    .prologue
    .line 88
    new-array v0, p1, [Lcom/yelp/android/serializable/AttributeFilters;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 86
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/f;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/AttributeFilters;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 86
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/f;->a(I)[Lcom/yelp/android/serializable/AttributeFilters;

    move-result-object v0

    return-object v0
.end method

.method public synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 86
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/f;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/AttributeFilters;

    move-result-object v0

    return-object v0
.end method
