.class abstract Lcom/yelp/android/serializable/_PhotoAdsConfig;
.super Ljava/lang/Object;
.source "_PhotoAdsConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected a:I

.field protected b:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method protected constructor <init>(II)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/yelp/android/serializable/_PhotoAdsConfig;-><init>()V

    .line 21
    iput p1, p0, Lcom/yelp/android/serializable/_PhotoAdsConfig;->a:I

    .line 22
    iput p2, p0, Lcom/yelp/android/serializable/_PhotoAdsConfig;->b:I

    .line 23
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/yelp/android/serializable/_PhotoAdsConfig;->b:I

    return v0
.end method

.method public a(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_PhotoAdsConfig;->a:I

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_PhotoAdsConfig;->b:I

    .line 76
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 79
    const-string/jumbo v0, "start_index"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_PhotoAdsConfig;->a:I

    .line 80
    const-string/jumbo v0, "interval"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_PhotoAdsConfig;->b:I

    .line 81
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/yelp/android/serializable/_PhotoAdsConfig;->a:I

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 31
    if-nez p1, :cond_1

    .line 45
    :cond_0
    :goto_0
    return v0

    .line 35
    :cond_1
    if-ne p1, p0, :cond_2

    .line 36
    const/4 v0, 0x1

    goto :goto_0

    .line 39
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 43
    check-cast p1, Lcom/yelp/android/serializable/_PhotoAdsConfig;

    .line 45
    new-instance v0, Lcom/yelp/android/dc/b;

    invoke-direct {v0}, Lcom/yelp/android/dc/b;-><init>()V

    iget v1, p0, Lcom/yelp/android/serializable/_PhotoAdsConfig;->a:I

    iget v2, p1, Lcom/yelp/android/serializable/_PhotoAdsConfig;->a:I

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(II)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget v1, p0, Lcom/yelp/android/serializable/_PhotoAdsConfig;->b:I

    iget v2, p1, Lcom/yelp/android/serializable/_PhotoAdsConfig;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(II)Lcom/yelp/android/dc/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/dc/b;->a()Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 53
    new-instance v0, Lcom/yelp/android/dc/c;

    invoke-direct {v0}, Lcom/yelp/android/dc/c;-><init>()V

    iget v1, p0, Lcom/yelp/android/serializable/_PhotoAdsConfig;->a:I

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(I)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget v1, p0, Lcom/yelp/android/serializable/_PhotoAdsConfig;->b:I

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(I)Lcom/yelp/android/dc/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/dc/c;->a()I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/yelp/android/serializable/_PhotoAdsConfig;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    iget v0, p0, Lcom/yelp/android/serializable/_PhotoAdsConfig;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    return-void
.end method
