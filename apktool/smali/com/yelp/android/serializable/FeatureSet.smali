.class public Lcom/yelp/android/serializable/FeatureSet;
.super Ljava/lang/Object;
.source "FeatureSet.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "DefaultLocale"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/yelp/android/serializable/FeatureSet;",
            ">;"
        }
    .end annotation
.end field

.field private static final FEATURE_SET_TAG:Ljava/lang/String; = "FeatureSet"


# instance fields
.field private mFeatures:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/yelp/android/serializable/FeatureSet$Feature;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/yelp/android/serializable/ap;

    invoke-direct {v0}, Lcom/yelp/android/serializable/ap;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/FeatureSet;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/serializable/FeatureSet;->mFeatures:Ljava/util/Set;

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/yelp/android/serializable/FeatureSet;-><init>()V

    .line 52
    invoke-direct {p0, p1}, Lcom/yelp/android/serializable/FeatureSet;->readFromParcel(Landroid/os/Parcel;)V

    .line 53
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 3

    .prologue
    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 89
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 90
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 91
    iget-object v2, p0, Lcom/yelp/android/serializable/FeatureSet;->mFeatures:Ljava/util/Set;

    invoke-static {v0}, Lcom/yelp/android/serializable/FeatureSet$Feature;->valueOf(Ljava/lang/String;)Lcom/yelp/android/serializable/FeatureSet$Feature;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 93
    :cond_0
    return-void
.end method

.method private writeFeaturesToParcel(Landroid/os/Parcel;)V
    .locals 3

    .prologue
    .line 80
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 81
    iget-object v0, p0, Lcom/yelp/android/serializable/FeatureSet;->mFeatures:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/FeatureSet$Feature;

    .line 82
    invoke-virtual {v0}, Lcom/yelp/android/serializable/FeatureSet$Feature;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 84
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 85
    return-void
.end method


# virtual methods
.method public contains(Lcom/yelp/android/serializable/FeatureSet$Feature;)Z
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/yelp/android/serializable/FeatureSet;->mFeatures:Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/serializable/FeatureSet;->mFeatures:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public setFeatures(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 60
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 62
    :try_start_0
    iget-object v2, p0, Lcom/yelp/android/serializable/FeatureSet;->mFeatures:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/yelp/android/serializable/FeatureSet$Feature;->valueOf(Ljava/lang/String;)Lcom/yelp/android/serializable/FeatureSet$Feature;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 63
    :catch_0
    move-exception v2

    .line 64
    const-string/jumbo v2, "FeatureSet"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " is not specified as feature in the Feature enum"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 67
    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/yelp/android/serializable/FeatureSet;->writeFeaturesToParcel(Landroid/os/Parcel;)V

    .line 77
    return-void
.end method
