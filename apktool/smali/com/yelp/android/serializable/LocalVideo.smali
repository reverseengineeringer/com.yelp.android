.class public Lcom/yelp/android/serializable/LocalVideo;
.super Lcom/yelp/android/serializable/_LocalVideo;
.source "LocalVideo.java"


# static fields
.field public static final CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/parcelgen/JsonParser$DualCreator",
            "<",
            "Lcom/yelp/android/serializable/LocalVideo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/yelp/android/serializable/bb;

    invoke-direct {v0}, Lcom/yelp/android/serializable/bb;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/LocalVideo;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/yelp/android/serializable/_LocalVideo;-><init>()V

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;III)V
    .locals 0

    .prologue
    .line 25
    invoke-direct/range {p0 .. p5}, Lcom/yelp/android/serializable/_LocalVideo;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    .line 26
    return-void
.end method

.method public static fromFile(Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/serializable/LocalVideo;
    .locals 6

    .prologue
    .line 29
    new-instance v0, Lcom/yelp/android/util/aj;

    invoke-direct {v0, p0}, Lcom/yelp/android/util/aj;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v0}, Lcom/yelp/android/util/aj;->a()I

    move-result v3

    .line 31
    const/16 v1, 0xbb8

    if-ge v3, v1, :cond_0

    .line 32
    const v1, 0x7f070667

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/yelp/android/ui/util/cr;->a(II)V

    .line 33
    invoke-virtual {v0}, Lcom/yelp/android/util/aj;->release()V

    .line 34
    const/4 v0, 0x0

    .line 46
    :goto_0
    return-object v0

    .line 38
    :cond_0
    invoke-virtual {v0}, Lcom/yelp/android/util/aj;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 39
    invoke-virtual {v0}, Lcom/yelp/android/util/aj;->d()I

    move-result v4

    .line 40
    invoke-virtual {v0}, Lcom/yelp/android/util/aj;->c()I

    move-result v5

    .line 45
    :goto_1
    invoke-virtual {v0}, Lcom/yelp/android/util/aj;->release()V

    .line 46
    new-instance v0, Lcom/yelp/android/serializable/LocalVideo;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/serializable/LocalVideo;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    goto :goto_0

    .line 42
    :cond_1
    invoke-virtual {v0}, Lcom/yelp/android/util/aj;->c()I

    move-result v4

    .line 43
    invoke-virtual {v0}, Lcom/yelp/android/util/aj;->d()I

    move-result v5

    goto :goto_1
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 19
    invoke-super {p0}, Lcom/yelp/android/serializable/_LocalVideo;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getBusinessId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    invoke-super {p0}, Lcom/yelp/android/serializable/_LocalVideo;->getBusinessId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDuration()I
    .locals 1

    .prologue
    .line 19
    invoke-super {p0}, Lcom/yelp/android/serializable/_LocalVideo;->getDuration()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    invoke-super {p0}, Lcom/yelp/android/serializable/_LocalVideo;->getFilePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getHeight()I
    .locals 1

    .prologue
    .line 19
    invoke-super {p0}, Lcom/yelp/android/serializable/_LocalVideo;->getHeight()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getWidth()I
    .locals 1

    .prologue
    .line 19
    invoke-super {p0}, Lcom/yelp/android/serializable/_LocalVideo;->getWidth()I

    move-result v0

    return v0
.end method

.method public bridge synthetic readFromJson(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 19
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_LocalVideo;->readFromJson(Lorg/json/JSONObject;)V

    return-void
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 19
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_LocalVideo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 19
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_LocalVideo;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
