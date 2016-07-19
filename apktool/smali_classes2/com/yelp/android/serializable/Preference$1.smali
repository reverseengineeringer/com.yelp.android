.class final Lcom/yelp/android/serializable/Preference$1;
.super Lcom/yelp/parcelgen/JsonParser$DualCreator;
.source "Preference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/serializable/Preference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/parcelgen/JsonParser$DualCreator",
        "<",
        "Lcom/yelp/android/serializable/Preference;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/yelp/parcelgen/JsonParser$DualCreator;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/Preference;
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/yelp/android/serializable/Preference;

    invoke-direct {v0}, Lcom/yelp/android/serializable/Preference;-><init>()V

    .line 42
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/Preference;->a(Landroid/os/Parcel;)V

    .line 43
    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/Preference;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 48
    new-instance v0, Lcom/yelp/android/serializable/Preference;

    invoke-direct {v0}, Lcom/yelp/android/serializable/Preference;-><init>()V

    .line 49
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/Preference;->a(Lorg/json/JSONObject;)V

    .line 50
    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/serializable/Preference;
    .locals 1

    .prologue
    .line 37
    new-array v0, p1, [Lcom/yelp/android/serializable/Preference;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/Preference$1;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/Preference;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/Preference$1;->a(I)[Lcom/yelp/android/serializable/Preference;

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
    .line 34
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/Preference$1;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/Preference;

    move-result-object v0

    return-object v0
.end method
