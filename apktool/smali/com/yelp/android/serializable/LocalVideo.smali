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
    .line 48
    new-instance v0, Lcom/yelp/android/serializable/LocalVideo$1;

    invoke-direct {v0}, Lcom/yelp/android/serializable/LocalVideo$1;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/LocalVideo;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/yelp/android/serializable/_LocalVideo;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;III)V
    .locals 0

    .prologue
    .line 23
    invoke-direct/range {p0 .. p5}, Lcom/yelp/android/serializable/_LocalVideo;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    .line 24
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/serializable/LocalVideo;
    .locals 6

    .prologue
    .line 27
    new-instance v0, Lcom/yelp/android/util/t;

    invoke-direct {v0, p0}, Lcom/yelp/android/util/t;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v0}, Lcom/yelp/android/util/t;->a()I

    move-result v3

    .line 29
    const/16 v1, 0xbb8

    if-ge v3, v1, :cond_0

    .line 30
    const v1, 0x7f070642

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/yelp/android/ui/util/as;->a(II)V

    .line 31
    invoke-virtual {v0}, Lcom/yelp/android/util/t;->release()V

    .line 32
    const/4 v0, 0x0

    .line 44
    :goto_0
    return-object v0

    .line 36
    :cond_0
    invoke-virtual {v0}, Lcom/yelp/android/util/t;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 37
    invoke-virtual {v0}, Lcom/yelp/android/util/t;->d()I

    move-result v4

    .line 38
    invoke-virtual {v0}, Lcom/yelp/android/util/t;->c()I

    move-result v5

    .line 43
    :goto_1
    invoke-virtual {v0}, Lcom/yelp/android/util/t;->release()V

    .line 44
    new-instance v0, Lcom/yelp/android/serializable/LocalVideo;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/serializable/LocalVideo;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {v0}, Lcom/yelp/android/util/t;->c()I

    move-result v4

    .line 41
    invoke-virtual {v0}, Lcom/yelp/android/util/t;->d()I

    move-result v5

    goto :goto_1
.end method


# virtual methods
.method public bridge synthetic a()I
    .locals 1

    .prologue
    .line 18
    invoke-super {p0}, Lcom/yelp/android/serializable/_LocalVideo;->a()I

    move-result v0

    return v0
.end method

.method public bridge synthetic a(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_LocalVideo;->a(Landroid/os/Parcel;)V

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
    .line 18
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_LocalVideo;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method public bridge synthetic b()I
    .locals 1

    .prologue
    .line 18
    invoke-super {p0}, Lcom/yelp/android/serializable/_LocalVideo;->b()I

    move-result v0

    return v0
.end method

.method public bridge synthetic c()I
    .locals 1

    .prologue
    .line 18
    invoke-super {p0}, Lcom/yelp/android/serializable/_LocalVideo;->c()I

    move-result v0

    return v0
.end method

.method public bridge synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    invoke-super {p0}, Lcom/yelp/android/serializable/_LocalVideo;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 18
    invoke-super {p0}, Lcom/yelp/android/serializable/_LocalVideo;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    invoke-super {p0}, Lcom/yelp/android/serializable/_LocalVideo;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_LocalVideo;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .prologue
    .line 18
    invoke-super {p0}, Lcom/yelp/android/serializable/_LocalVideo;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 18
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_LocalVideo;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
