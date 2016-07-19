.class public Lcom/yelp/android/serializable/MapSpan;
.super Ljava/lang/Object;
.source "MapSpan.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/parcelgen/JsonParser$DualCreator",
            "<",
            "Lcom/yelp/android/serializable/MapSpan;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:D

.field private b:D

.field private c:D

.field private d:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/yelp/android/serializable/MapSpan$1;

    invoke-direct {v0}, Lcom/yelp/android/serializable/MapSpan$1;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/MapSpan;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yelp/android/serializable/MapSpan$1;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/yelp/android/serializable/MapSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public a()D
    .locals 2

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/yelp/android/serializable/MapSpan;->a:D

    return-wide v0
.end method

.method public a(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/serializable/MapSpan;->a:D

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/serializable/MapSpan;->b:D

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/serializable/MapSpan;->c:D

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/serializable/MapSpan;->d:D

    .line 80
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 83
    const-string/jumbo v0, "center"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 84
    const-string/jumbo v1, "span"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 85
    const-string/jumbo v2, "latitude"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/yelp/android/serializable/MapSpan;->a:D

    .line 86
    const-string/jumbo v2, "longitude"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/yelp/android/serializable/MapSpan;->b:D

    .line 87
    const-string/jumbo v0, "longitude_delta"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/yelp/android/serializable/MapSpan;->c:D

    .line 88
    const-string/jumbo v0, "latitude_delta"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/serializable/MapSpan;->d:D

    .line 89
    return-void
.end method

.method public b()D
    .locals 2

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/yelp/android/serializable/MapSpan;->b:D

    return-wide v0
.end method

.method public c()D
    .locals 2

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/yelp/android/serializable/MapSpan;->c:D

    return-wide v0
.end method

.method public d()D
    .locals 2

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/yelp/android/serializable/MapSpan;->d:D

    return-wide v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/yelp/android/serializable/MapSpan;->a:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 70
    iget-wide v0, p0, Lcom/yelp/android/serializable/MapSpan;->b:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 71
    iget-wide v0, p0, Lcom/yelp/android/serializable/MapSpan;->c:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 72
    iget-wide v0, p0, Lcom/yelp/android/serializable/MapSpan;->d:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 73
    return-void
.end method
