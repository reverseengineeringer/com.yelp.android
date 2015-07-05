.class Lcom/yelp/android/ui/util/ImageInputHelper$SourceIriPair;
.super Ljava/lang/Object;
.source "ImageInputHelper.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/yelp/android/ui/util/ImageInputHelper$SourceIriPair;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mEventIri:Lcom/yelp/android/analytics/iris/EventIri;

.field private mImageSource:Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 750
    new-instance v0, Lcom/yelp/android/ui/util/ao;

    invoke-direct {v0}, Lcom/yelp/android/ui/util/ao;-><init>()V

    sput-object v0, Lcom/yelp/android/ui/util/ImageInputHelper$SourceIriPair;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 734
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 735
    const-class v0, Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    iput-object v0, p0, Lcom/yelp/android/ui/util/ImageInputHelper$SourceIriPair;->mImageSource:Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    .line 736
    const-class v0, Lcom/yelp/android/analytics/iris/EventIri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/analytics/iris/EventIri;

    iput-object v0, p0, Lcom/yelp/android/ui/util/ImageInputHelper$SourceIriPair;->mEventIri:Lcom/yelp/android/analytics/iris/EventIri;

    .line 737
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/yelp/android/ui/util/ai;)V
    .locals 0

    .prologue
    .line 724
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/util/ImageInputHelper$SourceIriPair;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;Lcom/yelp/android/analytics/iris/EventIri;)V
    .locals 0

    .prologue
    .line 729
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 730
    iput-object p1, p0, Lcom/yelp/android/ui/util/ImageInputHelper$SourceIriPair;->mImageSource:Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    .line 731
    iput-object p2, p0, Lcom/yelp/android/ui/util/ImageInputHelper$SourceIriPair;->mEventIri:Lcom/yelp/android/analytics/iris/EventIri;

    .line 732
    return-void
.end method

.method static synthetic access$200(Lcom/yelp/android/ui/util/ImageInputHelper$SourceIriPair;)Lcom/yelp/android/analytics/iris/EventIri;
    .locals 1

    .prologue
    .line 724
    iget-object v0, p0, Lcom/yelp/android/ui/util/ImageInputHelper$SourceIriPair;->mEventIri:Lcom/yelp/android/analytics/iris/EventIri;

    return-object v0
.end method

.method static synthetic access$300(Lcom/yelp/android/ui/util/ImageInputHelper$SourceIriPair;)Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;
    .locals 1

    .prologue
    .line 724
    iget-object v0, p0, Lcom/yelp/android/ui/util/ImageInputHelper$SourceIriPair;->mImageSource:Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 741
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 746
    iget-object v0, p0, Lcom/yelp/android/ui/util/ImageInputHelper$SourceIriPair;->mImageSource:Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 747
    iget-object v0, p0, Lcom/yelp/android/ui/util/ImageInputHelper$SourceIriPair;->mEventIri:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 748
    return-void
.end method
