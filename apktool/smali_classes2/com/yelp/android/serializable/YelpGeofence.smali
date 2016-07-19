.class public Lcom/yelp/android/serializable/YelpGeofence;
.super Lcom/yelp/android/serializable/_YelpGeofence;
.source "YelpGeofence.java"


# static fields
.field public static final CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/parcelgen/JsonParser$DualCreator",
            "<",
            "Lcom/yelp/android/serializable/YelpGeofence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/yelp/android/serializable/YelpGeofence$1;

    invoke-direct {v0}, Lcom/yelp/android/serializable/YelpGeofence$1;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/YelpGeofence;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/yelp/android/serializable/_YelpGeofence;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()D
    .locals 2

    .prologue
    .line 13
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpGeofence;->a()D

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic a(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 13
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_YelpGeofence;->a(Landroid/os/Parcel;)V

    return-void
.end method

.method public bridge synthetic a(Lorg/json/JSONObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 13
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_YelpGeofence;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method public bridge synthetic b()D
    .locals 2

    .prologue
    .line 13
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpGeofence;->b()D

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic c()D
    .locals 2

    .prologue
    .line 13
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpGeofence;->c()D

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 13
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpGeofence;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 13
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_YelpGeofence;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .prologue
    .line 13
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpGeofence;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 13
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_YelpGeofence;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
