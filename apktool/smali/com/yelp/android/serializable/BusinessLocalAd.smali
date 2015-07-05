.class public Lcom/yelp/android/serializable/BusinessLocalAd;
.super Lcom/yelp/android/serializable/LocalAd;
.source "BusinessLocalAd.java"

# interfaces
.implements Lcom/yelp/android/ui/panels/businesssearch/f;


# static fields
.field public static final CREATOR:Lcom/yelp/android/serializable/ah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/serializable/ah",
            "<",
            "Lcom/yelp/android/serializable/BusinessLocalAd;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBusiness:Lcom/yelp/android/serializable/YelpBusiness;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lcom/yelp/android/serializable/n;

    invoke-direct {v0}, Lcom/yelp/android/serializable/n;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/BusinessLocalAd;->CREATOR:Lcom/yelp/android/serializable/ah;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/yelp/android/serializable/LocalAd;-><init>()V

    return-void
.end method

.method public static initializeBusinessLocalAds(Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/BusinessLocalAd;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 41
    :cond_0
    :goto_0
    return-void

    .line 31
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/BusinessLocalAd;

    .line 32
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/YelpBusiness;

    .line 33
    invoke-virtual {v0}, Lcom/yelp/android/serializable/BusinessLocalAd;->getBusinessId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 34
    iput-object v1, v0, Lcom/yelp/android/serializable/BusinessLocalAd;->mBusiness:Lcom/yelp/android/serializable/YelpBusiness;

    goto :goto_1

    .line 40
    :cond_4
    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto :goto_0
.end method


# virtual methods
.method public getBusiness()Lcom/yelp/android/serializable/YelpBusiness;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/yelp/android/serializable/BusinessLocalAd;->mBusiness:Lcom/yelp/android/serializable/YelpBusiness;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/LocalAd;->readFromParcel(Landroid/os/Parcel;)V

    .line 57
    const-class v0, Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    iput-object v0, p0, Lcom/yelp/android/serializable/BusinessLocalAd;->mBusiness:Lcom/yelp/android/serializable/YelpBusiness;

    .line 58
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 50
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/LocalAd;->writeToParcel(Landroid/os/Parcel;I)V

    .line 51
    iget-object v0, p0, Lcom/yelp/android/serializable/BusinessLocalAd;->mBusiness:Lcom/yelp/android/serializable/YelpBusiness;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 52
    return-void
.end method
