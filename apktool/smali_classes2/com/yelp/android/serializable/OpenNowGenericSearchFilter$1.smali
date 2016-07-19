.class final Lcom/yelp/android/serializable/OpenNowGenericSearchFilter$1;
.super Lcom/yelp/parcelgen/JsonParser$DualCreator;
.source "OpenNowGenericSearchFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/serializable/OpenNowGenericSearchFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/parcelgen/JsonParser$DualCreator",
        "<",
        "Lcom/yelp/android/serializable/OpenNowGenericSearchFilter;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/yelp/parcelgen/JsonParser$DualCreator;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/OpenNowGenericSearchFilter;
    .locals 2

    .prologue
    .line 136
    new-instance v0, Lcom/yelp/android/serializable/OpenNowGenericSearchFilter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yelp/android/serializable/OpenNowGenericSearchFilter;-><init>(Lcom/yelp/android/serializable/OpenNowGenericSearchFilter$1;)V

    .line 137
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/OpenNowGenericSearchFilter;->a(Landroid/os/Parcel;)V

    .line 138
    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/OpenNowGenericSearchFilter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 143
    new-instance v0, Lcom/yelp/android/serializable/OpenNowGenericSearchFilter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yelp/android/serializable/OpenNowGenericSearchFilter;-><init>(Lcom/yelp/android/serializable/OpenNowGenericSearchFilter$1;)V

    .line 144
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/OpenNowGenericSearchFilter;->a(Lorg/json/JSONObject;)V

    .line 145
    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/serializable/OpenNowGenericSearchFilter;
    .locals 1

    .prologue
    .line 132
    new-array v0, p1, [Lcom/yelp/android/serializable/OpenNowGenericSearchFilter;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 129
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/OpenNowGenericSearchFilter$1;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/OpenNowGenericSearchFilter;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 129
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/OpenNowGenericSearchFilter$1;->a(I)[Lcom/yelp/android/serializable/OpenNowGenericSearchFilter;

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
    .line 129
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/OpenNowGenericSearchFilter$1;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/OpenNowGenericSearchFilter;

    move-result-object v0

    return-object v0
.end method
