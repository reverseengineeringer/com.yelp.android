.class public Lcom/yelp/android/appdata/webrequests/SaveTipRequest;
.super Lcom/yelp/android/appdata/webrequests/PhotoUploadRequestBase;
.source "SaveTipRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/appdata/webrequests/PhotoUploadRequestBase",
        "<",
        "Lcom/yelp/android/serializable/Tip;",
        ">;"
    }
.end annotation


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/yelp/android/appdata/webrequests/SaveTipRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mBusinessId:Ljava/lang/String;

.field protected mEntity:Lorg/apache/http/HttpEntity;

.field private final mTipText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lcom/yelp/android/appdata/webrequests/fr;

    invoke-direct {v0}, Lcom/yelp/android/appdata/webrequests/fr;-><init>()V

    sput-object v0, Lcom/yelp/android/appdata/webrequests/SaveTipRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .locals 2

    .prologue
    .line 24
    const-string/jumbo v0, "quicktips/save"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p3}, Lcom/yelp/android/appdata/webrequests/PhotoUploadRequestBase;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ep;Ljava/io/File;)V

    .line 25
    const-string/jumbo v0, "text"

    invoke-super {p0, v0, p2}, Lcom/yelp/android/appdata/webrequests/PhotoUploadRequestBase;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    const-string/jumbo v0, "business_id"

    invoke-super {p0, v0, p1}, Lcom/yelp/android/appdata/webrequests/PhotoUploadRequestBase;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    const-string/jumbo v0, "image"

    invoke-virtual {p0, v0}, Lcom/yelp/android/appdata/webrequests/SaveTipRequest;->setImageParamName(Ljava/lang/String;)V

    .line 29
    iput-object p2, p0, Lcom/yelp/android/appdata/webrequests/SaveTipRequest;->mTipText:Ljava/lang/String;

    .line 30
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/SaveTipRequest;->mBusinessId:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public process(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/Tip;
    .locals 3

    .prologue
    .line 35
    sget-object v0, Lcom/yelp/android/serializable/Tip;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    const-string/jumbo v1, "quicktip"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Tip;

    .line 36
    sget-object v1, Lcom/yelp/android/serializable/YelpBusiness;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    const-string/jumbo v2, "business"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/YelpBusiness;

    .line 37
    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/Tip;->setBusinessName(Ljava/lang/String;)V

    .line 38
    return-object v0
.end method

.method public bridge synthetic process(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/SaveTipRequest;->process(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/Tip;

    move-result-object v0

    return-object v0
.end method

.method public writeMoreToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/SaveTipRequest;->mBusinessId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/SaveTipRequest;->mTipText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    return-void
.end method
