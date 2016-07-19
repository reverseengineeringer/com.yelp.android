.class Lcom/yelp/android/ui/util/ImageInputHelper$SourceIriPair;
.super Ljava/lang/Object;
.source "ImageInputHelper.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/util/ImageInputHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SourceIriPair"
.end annotation


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
.field private a:Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

.field private b:Lcom/yelp/android/analytics/iris/EventIri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 780
    new-instance v0, Lcom/yelp/android/ui/util/ImageInputHelper$SourceIriPair$1;

    invoke-direct {v0}, Lcom/yelp/android/ui/util/ImageInputHelper$SourceIriPair$1;-><init>()V

    sput-object v0, Lcom/yelp/android/ui/util/ImageInputHelper$SourceIriPair;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 764
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 765
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    iput-object v0, p0, Lcom/yelp/android/ui/util/ImageInputHelper$SourceIriPair;->a:Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    .line 766
    const-class v0, Lcom/yelp/android/analytics/iris/EventIri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/analytics/iris/EventIri;

    iput-object v0, p0, Lcom/yelp/android/ui/util/ImageInputHelper$SourceIriPair;->b:Lcom/yelp/android/analytics/iris/EventIri;

    .line 767
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/yelp/android/ui/util/ImageInputHelper$1;)V
    .locals 0

    .prologue
    .line 754
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/util/ImageInputHelper$SourceIriPair;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;Lcom/yelp/android/analytics/iris/EventIri;)V
    .locals 0

    .prologue
    .line 759
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 760
    iput-object p1, p0, Lcom/yelp/android/ui/util/ImageInputHelper$SourceIriPair;->a:Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    .line 761
    iput-object p2, p0, Lcom/yelp/android/ui/util/ImageInputHelper$SourceIriPair;->b:Lcom/yelp/android/analytics/iris/EventIri;

    .line 762
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/util/ImageInputHelper$SourceIriPair;)Lcom/yelp/android/analytics/iris/EventIri;
    .locals 1

    .prologue
    .line 754
    iget-object v0, p0, Lcom/yelp/android/ui/util/ImageInputHelper$SourceIriPair;->b:Lcom/yelp/android/analytics/iris/EventIri;

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/util/ImageInputHelper$SourceIriPair;)Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;
    .locals 1

    .prologue
    .line 754
    iget-object v0, p0, Lcom/yelp/android/ui/util/ImageInputHelper$SourceIriPair;->a:Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 771
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 776
    iget-object v0, p0, Lcom/yelp/android/ui/util/ImageInputHelper$SourceIriPair;->a:Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 777
    iget-object v0, p0, Lcom/yelp/android/ui/util/ImageInputHelper$SourceIriPair;->b:Lcom/yelp/android/analytics/iris/EventIri;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 778
    return-void
.end method
