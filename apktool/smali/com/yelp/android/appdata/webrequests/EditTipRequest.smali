.class public Lcom/yelp/android/appdata/webrequests/EditTipRequest;
.super Lcom/yelp/android/appdata/webrequests/TipUploadRequestBase;
.source "EditTipRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/appdata/webrequests/TipUploadRequestBase",
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
.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lcom/yelp/android/appdata/webrequests/EditTipRequest$1;

    invoke-direct {v0}, Lcom/yelp/android/appdata/webrequests/EditTipRequest$1;-><init>()V

    sput-object v0, Lcom/yelp/android/appdata/webrequests/EditTipRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 19
    const-string/jumbo v0, "quicktips/update"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p3}, Lcom/yelp/android/appdata/webrequests/TipUploadRequestBase;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/dq$a;Ljava/io/File;)V

    .line 20
    const-string/jumbo v0, "quicktip_id"

    invoke-super {p0, v0, p1}, Lcom/yelp/android/appdata/webrequests/TipUploadRequestBase;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    const-string/jumbo v0, "text"

    invoke-super {p0, v0, p2}, Lcom/yelp/android/appdata/webrequests/TipUploadRequestBase;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    const-string/jumbo v0, "image"

    invoke-virtual {p0, v0}, Lcom/yelp/android/appdata/webrequests/EditTipRequest;->e(Ljava/lang/String;)V

    .line 24
    iput-object p2, p0, Lcom/yelp/android/appdata/webrequests/EditTipRequest;->i:Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/EditTipRequest;->j:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/Tip;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yelp/android/appdata/webrequests/YelpException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 30
    sget-object v0, Lcom/yelp/android/serializable/Tip;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    const-string/jumbo v1, "quicktip"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Tip;

    return-object v0
.end method

.method public a(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/EditTipRequest;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/EditTipRequest;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public synthetic b(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yelp/android/appdata/webrequests/YelpException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/EditTipRequest;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/Tip;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    return v0
.end method
