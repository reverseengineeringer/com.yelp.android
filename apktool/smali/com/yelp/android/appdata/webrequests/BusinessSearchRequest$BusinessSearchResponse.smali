.class public final Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;
.super Ljava/lang/Object;
.source "BusinessSearchRequest.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;


# static fields
.field public static final CREATOR:Lcom/yelp/android/appdata/webrequests/af;


# instance fields
.field private mAdBusinessSearchResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/BusinessSearchResult;",
            ">;"
        }
    .end annotation
.end field

.field private mAmbiguousLocations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation
.end field

.field private mAttribution:Ljava/lang/String;

.field private mBusinessSearchResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/BusinessSearchResult;",
            ">;"
        }
    .end annotation
.end field

.field private mFolded:Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse$Foldability;

.field private mLocalAds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/SearchResultLocalAd;",
            ">;"
        }
    .end annotation
.end field

.field private mLocation:Landroid/location/Address;

.field private mOffset:I

.field private mPromotedFilter:Lcom/yelp/android/serializable/PromotedFilter;

.field private mRegion:[D

.field private mRequestId:Ljava/lang/String;

.field private mSuggestedFilters:Lcom/yelp/android/serializable/AttributeFilters;

.field private mSuggestedSpelling:Ljava/lang/String;

.field private mTotal:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 671
    new-instance v0, Lcom/yelp/android/appdata/webrequests/ae;

    invoke-direct {v0}, Lcom/yelp/android/appdata/webrequests/ae;-><init>()V

    sput-object v0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->CREATOR:Lcom/yelp/android/appdata/webrequests/af;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 572
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 573
    const/4 v0, 0x0

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->mRegion:[D

    .line 574
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->mBusinessSearchResults:Ljava/util/List;

    .line 575
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->mAmbiguousLocations:Ljava/util/List;

    .line 576
    return-void
.end method

.method static synthetic access$002(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;I)I
    .locals 0

    .prologue
    .line 555
    iput p1, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->mOffset:I

    return p1
.end method

.method static synthetic access$1002(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 555
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->mAttribution:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse$Foldability;)Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse$Foldability;
    .locals 0

    .prologue
    .line 555
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->mFolded:Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse$Foldability;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;)Ljava/util/List;
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->mLocalAds:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 555
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->mLocalAds:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;)Ljava/util/List;
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->mAdBusinessSearchResults:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 555
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->mAdBusinessSearchResults:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;Lcom/yelp/android/serializable/AttributeFilters;)Lcom/yelp/android/serializable/AttributeFilters;
    .locals 0

    .prologue
    .line 555
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->mSuggestedFilters:Lcom/yelp/android/serializable/AttributeFilters;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;Lcom/yelp/android/serializable/PromotedFilter;)Lcom/yelp/android/serializable/PromotedFilter;
    .locals 0

    .prologue
    .line 555
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->mPromotedFilter:Lcom/yelp/android/serializable/PromotedFilter;

    return-object p1
.end method

.method static synthetic access$302(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 555
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->mAmbiguousLocations:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$400(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;)Ljava/util/List;
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->mBusinessSearchResults:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$402(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 555
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->mBusinessSearchResults:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$502(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;Landroid/location/Address;)Landroid/location/Address;
    .locals 0

    .prologue
    .line 555
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->mLocation:Landroid/location/Address;

    return-object p1
.end method

.method static synthetic access$602(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 555
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->mSuggestedSpelling:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;)[D
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->mRegion:[D

    return-object v0
.end method

.method static synthetic access$702(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;[D)[D
    .locals 0

    .prologue
    .line 555
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->mRegion:[D

    return-object p1
.end method

.method static synthetic access$802(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;I)I
    .locals 0

    .prologue
    .line 555
    iput p1, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->mTotal:I

    return p1
.end method

.method static synthetic access$902(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 555
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->mRequestId:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 625
    const/4 v0, 0x0

    return v0
.end method

.method public getAdBusinessSearchResults()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/BusinessSearchResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 650
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->mAdBusinessSearchResults:Ljava/util/List;

    return-object v0
.end method

.method public getAmbiguousLocations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation

    .prologue
    .line 590
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->mAmbiguousLocations:Ljava/util/List;

    return-object v0
.end method

.method public getAttribution()Ljava/lang/String;
    .locals 1

    .prologue
    .line 635
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->mAttribution:Ljava/lang/String;

    return-object v0
.end method

.method public getBusinessSearchResults()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/BusinessSearchResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 595
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->mBusinessSearchResults:Ljava/util/List;

    return-object v0
.end method

.method public getLocalAds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/SearchResultLocalAd;",
            ">;"
        }
    .end annotation

    .prologue
    .line 645
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->mLocalAds:Ljava/util/List;

    return-object v0
.end method

.method public getLocation()Landroid/location/Address;
    .locals 1

    .prologue
    .line 600
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->mLocation:Landroid/location/Address;

    return-object v0
.end method

.method public getOffset()I
    .locals 1

    .prologue
    .line 630
    iget v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->mOffset:I

    return v0
.end method

.method public getPromotedFilter()Lcom/yelp/android/serializable/PromotedFilter;
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->mPromotedFilter:Lcom/yelp/android/serializable/PromotedFilter;

    return-object v0
.end method

.method public getRegion()[D
    .locals 1

    .prologue
    .line 620
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->mRegion:[D

    return-object v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 640
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->mRequestId:Ljava/lang/String;

    return-object v0
.end method

.method public getSpellingSuggestion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 605
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->mSuggestedSpelling:Ljava/lang/String;

    return-object v0
.end method

.method public getSuggestedFilters()Lcom/yelp/android/serializable/AttributeFilters;
    .locals 1

    .prologue
    .line 580
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->mSuggestedFilters:Lcom/yelp/android/serializable/AttributeFilters;

    return-object v0
.end method

.method public getTotal()I
    .locals 1

    .prologue
    .line 615
    iget v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->mTotal:I

    return v0
.end method

.method public isFolded()Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse$Foldability;
    .locals 1

    .prologue
    .line 610
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->mFolded:Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse$Foldability;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 655
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->mAmbiguousLocations:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 656
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->mBusinessSearchResults:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 657
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->mLocation:Landroid/location/Address;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 658
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->mSuggestedSpelling:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 659
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->mRegion:[D

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 660
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->mRegion:[D

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeDoubleArray([D)V

    .line 661
    iget v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->mTotal:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 662
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->mFolded:Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse$Foldability;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 663
    iget v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->mOffset:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 664
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->mRequestId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 665
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->mAttribution:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 666
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->mLocalAds:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 667
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->mAdBusinessSearchResults:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 668
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->mSuggestedFilters:Lcom/yelp/android/serializable/AttributeFilters;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 669
    return-void
.end method
