.class final Lcom/yelp/android/serializable/Filter$1;
.super Lcom/yelp/android/serializable/a;
.source "Filter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/serializable/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/serializable/a",
        "<",
        "Lcom/yelp/android/serializable/Filter;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/yelp/android/serializable/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/Filter;
    .locals 1

    .prologue
    .line 93
    new-instance v0, Lcom/yelp/android/serializable/Filter;

    invoke-direct {v0}, Lcom/yelp/android/serializable/Filter;-><init>()V

    .line 94
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/Filter;->a(Landroid/os/Parcel;)V

    .line 95
    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/Filter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 86
    new-instance v0, Lcom/yelp/android/serializable/Filter;

    invoke-direct {v0}, Lcom/yelp/android/serializable/Filter;-><init>()V

    .line 87
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/Filter;->a(Lorg/json/JSONObject;)V

    .line 88
    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/serializable/Filter;
    .locals 1

    .prologue
    .line 100
    new-array v0, p1, [Lcom/yelp/android/serializable/Filter;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/Filter$1;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/Filter;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/Filter$1;->a(I)[Lcom/yelp/android/serializable/Filter;

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
    .line 83
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/Filter$1;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/Filter;

    move-result-object v0

    return-object v0
.end method
