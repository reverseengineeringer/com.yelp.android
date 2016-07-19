.class public Lcom/yelp/android/serializable/PhotoAdsResponse;
.super Lcom/yelp/android/serializable/_PhotoAdsResponse;
.source "PhotoAdsResponse.java"

# interfaces
.implements Lcom/yelp/android/serializable/Media;


# static fields
.field public static final CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/parcelgen/JsonParser$DualCreator",
            "<",
            "Lcom/yelp/android/serializable/PhotoAdsResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/yelp/android/serializable/PhotoAdsResponse$1;

    invoke-direct {v0}, Lcom/yelp/android/serializable/PhotoAdsResponse$1;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/PhotoAdsResponse;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/yelp/android/serializable/_PhotoAdsResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 19
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_PhotoAdsResponse;->a(Landroid/os/Parcel;)V

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
    .line 19
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_PhotoAdsResponse;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method public a(Lcom/yelp/android/serializable/Media$MediaType;)Z
    .locals 1

    .prologue
    .line 131
    sget-object v0, Lcom/yelp/android/serializable/Media$MediaType;->AD:Lcom/yelp/android/serializable/Media$MediaType;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    return-object v0
.end method

.method public c()Lcom/yelp/android/serializable/BusinessLocalAd;
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/yelp/android/serializable/PhotoAdsResponse;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/serializable/PhotoAdsResponse;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/BusinessLocalAd;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 19
    invoke-super {p0}, Lcom/yelp/android/serializable/_PhotoAdsResponse;->describeContents()I

    move-result v0

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 19
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_PhotoAdsResponse;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    return-object v0
.end method

.method public h()Ljava/util/Date;
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .prologue
    .line 19
    invoke-super {p0}, Lcom/yelp/android/serializable/_PhotoAdsResponse;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()Lcom/yelp/android/serializable/Passport;
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    return-object v0
.end method

.method public j()Lcom/yelp/android/serializable/Feedback;
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/yelp/android/serializable/PhotoAdsResponse;->m()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    return-object v0
.end method

.method public m()Lcom/yelp/android/serializable/YelpBusiness;
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/yelp/android/serializable/PhotoAdsResponse;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/serializable/PhotoAdsResponse;->b:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 19
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_PhotoAdsResponse;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
