.class public Lcom/yelp/android/serializable/MoreInfoAction;
.super Lcom/yelp/android/serializable/_MoreInfoAction;
.source "MoreInfoAction.java"


# static fields
.field public static final CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/parcelgen/JsonParser$DualCreator",
            "<",
            "Lcom/yelp/android/serializable/MoreInfoAction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Lcom/yelp/android/serializable/bh;

    invoke-direct {v0}, Lcom/yelp/android/serializable/bh;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/MoreInfoAction;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/yelp/android/serializable/_MoreInfoAction;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 8
    invoke-super {p0}, Lcom/yelp/android/serializable/_MoreInfoAction;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8
    invoke-super {p0}, Lcom/yelp/android/serializable/_MoreInfoAction;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getOpenUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8
    invoke-super {p0}, Lcom/yelp/android/serializable/_MoreInfoAction;->getOpenUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8
    invoke-super {p0}, Lcom/yelp/android/serializable/_MoreInfoAction;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic readFromJson(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 8
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_MoreInfoAction;->readFromJson(Lorg/json/JSONObject;)V

    return-void
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 8
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_MoreInfoAction;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 8
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_MoreInfoAction;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
