.class final Lcom/yelp/android/serializable/GenericSearchFilter$1;
.super Lcom/yelp/parcelgen/JsonParser$DualCreator;
.source "GenericSearchFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/serializable/GenericSearchFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/parcelgen/JsonParser$DualCreator",
        "<",
        "Lcom/yelp/android/serializable/GenericSearchFilter;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/yelp/parcelgen/JsonParser$DualCreator;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/GenericSearchFilter;
    .locals 1

    .prologue
    .line 144
    new-instance v0, Lcom/yelp/android/serializable/GenericSearchFilter;

    invoke-direct {v0}, Lcom/yelp/android/serializable/GenericSearchFilter;-><init>()V

    .line 145
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/GenericSearchFilter;->a(Landroid/os/Parcel;)V

    .line 146
    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/GenericSearchFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 151
    invoke-static {p1}, Lcom/yelp/android/serializable/GenericSearchFilter;->b(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/GenericSearchFilter;

    move-result-object v0

    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/serializable/GenericSearchFilter;
    .locals 1

    .prologue
    .line 140
    new-array v0, p1, [Lcom/yelp/android/serializable/GenericSearchFilter;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 137
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/GenericSearchFilter$1;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/GenericSearchFilter;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 137
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/GenericSearchFilter$1;->a(I)[Lcom/yelp/android/serializable/GenericSearchFilter;

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
    .line 137
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/GenericSearchFilter$1;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/GenericSearchFilter;

    move-result-object v0

    return-object v0
.end method
