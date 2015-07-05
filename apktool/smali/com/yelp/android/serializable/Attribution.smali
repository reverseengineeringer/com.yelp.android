.class public Lcom/yelp/android/serializable/Attribution;
.super Lcom/yelp/android/serializable/_Attribution;
.source "Attribution.java"


# static fields
.field public static final CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/parcelgen/JsonParser$DualCreator",
            "<",
            "Lcom/yelp/android/serializable/Attribution;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/yelp/android/serializable/h;

    invoke-direct {v0}, Lcom/yelp/android/serializable/h;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/Attribution;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/yelp/android/serializable/_Attribution;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_Attribution;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_Attribution;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/yelp/android/serializable/Attribution$Type;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/yelp/android/serializable/Attribution;->getTypeString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/serializable/Attribution$Type;->getType(Ljava/lang/String;)Lcom/yelp/android/serializable/Attribution$Type;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTypeString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_Attribution;->getTypeString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic readFromJson(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 10
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_Attribution;->readFromJson(Lorg/json/JSONObject;)V

    return-void
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 10
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_Attribution;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public bridge synthetic writeJSON()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_Attribution;->writeJSON()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 10
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_Attribution;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
