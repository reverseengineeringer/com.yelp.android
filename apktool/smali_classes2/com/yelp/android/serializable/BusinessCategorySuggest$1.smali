.class final Lcom/yelp/android/serializable/BusinessCategorySuggest$1;
.super Lcom/yelp/parcelgen/JsonParser$DualCreator;
.source "BusinessCategorySuggest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/serializable/BusinessCategorySuggest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/parcelgen/JsonParser$DualCreator",
        "<",
        "Lcom/yelp/android/serializable/BusinessCategorySuggest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/yelp/parcelgen/JsonParser$DualCreator;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/BusinessCategorySuggest;
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/yelp/android/serializable/BusinessCategorySuggest;

    invoke-direct {v0}, Lcom/yelp/android/serializable/BusinessCategorySuggest;-><init>()V

    .line 22
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/BusinessCategorySuggest;->a(Landroid/os/Parcel;)V

    .line 23
    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/BusinessCategorySuggest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 28
    new-instance v0, Lcom/yelp/android/serializable/BusinessCategorySuggest;

    invoke-direct {v0}, Lcom/yelp/android/serializable/BusinessCategorySuggest;-><init>()V

    .line 29
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/BusinessCategorySuggest;->a(Lorg/json/JSONObject;)V

    .line 30
    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/serializable/BusinessCategorySuggest;
    .locals 1

    .prologue
    .line 17
    new-array v0, p1, [Lcom/yelp/android/serializable/BusinessCategorySuggest;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/BusinessCategorySuggest$1;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/BusinessCategorySuggest;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/BusinessCategorySuggest$1;->a(I)[Lcom/yelp/android/serializable/BusinessCategorySuggest;

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
    .line 14
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/BusinessCategorySuggest$1;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/BusinessCategorySuggest;

    move-result-object v0

    return-object v0
.end method
