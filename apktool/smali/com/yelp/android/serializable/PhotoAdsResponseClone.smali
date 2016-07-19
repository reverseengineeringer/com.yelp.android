.class public Lcom/yelp/android/serializable/PhotoAdsResponseClone;
.super Lcom/yelp/android/serializable/PhotoAdsResponse;
.source "PhotoAdsResponseClone.java"


# static fields
.field public static final CREATOR:Lcom/yelp/android/serializable/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/serializable/a",
            "<",
            "Lcom/yelp/android/serializable/PhotoAdsResponseClone;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/yelp/android/serializable/PhotoAdsResponseClone$1;

    invoke-direct {v0}, Lcom/yelp/android/serializable/PhotoAdsResponseClone$1;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/PhotoAdsResponseClone;->CREATOR:Lcom/yelp/android/serializable/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/yelp/android/serializable/PhotoAdsResponse;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/yelp/android/serializable/PhotoAdsResponse;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/yelp/android/serializable/PhotoAdsResponse;-><init>()V

    .line 24
    iget-object v0, p1, Lcom/yelp/android/serializable/PhotoAdsResponse;->b:Ljava/util/List;

    iput-object v0, p0, Lcom/yelp/android/serializable/PhotoAdsResponseClone;->b:Ljava/util/List;

    .line 25
    iget-object v0, p1, Lcom/yelp/android/serializable/PhotoAdsResponse;->a:Ljava/util/List;

    iput-object v0, p0, Lcom/yelp/android/serializable/PhotoAdsResponseClone;->a:Ljava/util/List;

    .line 26
    return-void
.end method
