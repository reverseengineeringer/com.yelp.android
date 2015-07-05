.class public Lcom/yelp/android/appdata/webrequests/EditTipRequest;
.super Lcom/yelp/android/appdata/webrequests/PhotoUploadRequestBase;
.source "EditTipRequest.java"


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
            "Lcom/yelp/android/appdata/webrequests/EditTipRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mTipId:Ljava/lang/String;

.field private final mTipText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lcom/yelp/android/appdata/webrequests/bo;

    invoke-direct {v0}, Lcom/yelp/android/appdata/webrequests/bo;-><init>()V

    sput-object v0, Lcom/yelp/android/appdata/webrequests/EditTipRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .locals 2

    .prologue
    .line 21
    const-string/jumbo v0, "quicktips/update"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p3}, Lcom/yelp/android/appdata/webrequests/PhotoUploadRequestBase;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ep;Ljava/io/File;)V

    .line 22
    const-string/jumbo v0, "quicktip_id"

    invoke-super {p0, v0, p1}, Lcom/yelp/android/appdata/webrequests/PhotoUploadRequestBase;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    const-string/jumbo v0, "text"

    invoke-super {p0, v0, p2}, Lcom/yelp/android/appdata/webrequests/PhotoUploadRequestBase;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    const-string/jumbo v0, "image"

    invoke-virtual {p0, v0}, Lcom/yelp/android/appdata/webrequests/EditTipRequest;->setImageParamName(Ljava/lang/String;)V

    .line 26
    iput-object p2, p0, Lcom/yelp/android/appdata/webrequests/EditTipRequest;->mTipText:Ljava/lang/String;

    .line 27
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/EditTipRequest;->mTipId:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public process(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/Tip;
    .locals 2

    .prologue
    .line 32
    sget-object v0, Lcom/yelp/android/serializable/Tip;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    const-string/jumbo v1, "quicktip"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Tip;

    return-object v0
.end method

.method public bridge synthetic process(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/EditTipRequest;->process(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/Tip;

    move-result-object v0

    return-object v0
.end method

.method public writeMoreToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/EditTipRequest;->mTipId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/EditTipRequest;->mTipText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    return-void
.end method
