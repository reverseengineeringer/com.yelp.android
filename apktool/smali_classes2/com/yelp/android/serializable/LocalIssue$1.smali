.class final Lcom/yelp/android/serializable/LocalIssue$1;
.super Lcom/yelp/parcelgen/JsonParser$DualCreator;
.source "LocalIssue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/serializable/LocalIssue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/parcelgen/JsonParser$DualCreator",
        "<",
        "Lcom/yelp/android/serializable/LocalIssue;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/yelp/parcelgen/JsonParser$DualCreator;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/LocalIssue;
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/yelp/android/serializable/LocalIssue;

    invoke-direct {v0}, Lcom/yelp/android/serializable/LocalIssue;-><init>()V

    .line 34
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/LocalIssue;->a(Landroid/os/Parcel;)V

    .line 35
    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/LocalIssue;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 40
    new-instance v3, Lcom/yelp/android/serializable/LocalIssue;

    invoke-direct {v3}, Lcom/yelp/android/serializable/LocalIssue;-><init>()V

    .line 41
    invoke-virtual {v3, p1}, Lcom/yelp/android/serializable/LocalIssue;->a(Lorg/json/JSONObject;)V

    .line 45
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-virtual {v3}, Lcom/yelp/android/serializable/LocalIssue;->k()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 46
    invoke-virtual {v3}, Lcom/yelp/android/serializable/LocalIssue;->k()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/LocalIssue;->j()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/YelpBusinessReview;

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/YelpBusiness;->a(Lcom/yelp/android/serializable/YelpBusinessReview;)V

    .line 45
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 52
    :cond_0
    return-object v3
.end method

.method public a(I)[Lcom/yelp/android/serializable/LocalIssue;
    .locals 1

    .prologue
    .line 29
    new-array v0, p1, [Lcom/yelp/android/serializable/LocalIssue;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/LocalIssue$1;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/LocalIssue;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/LocalIssue$1;->a(I)[Lcom/yelp/android/serializable/LocalIssue;

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
    .line 26
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/LocalIssue$1;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/LocalIssue;

    move-result-object v0

    return-object v0
.end method
