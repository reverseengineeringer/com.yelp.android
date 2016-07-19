.class public final Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;
.super Ljava/lang/Object;
.source "BusinessSearchRequest.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BusinessSearchResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse$a;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/BusinessSearchResult;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/location/Address;

.field private e:Ljava/lang/String;

.field private f:[D

.field private g:Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse$Foldability;

.field private h:I

.field private i:I

.field private j:Ljava/lang/String;

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/SearchResultLocalAd;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/BusinessSearchResult;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/DisplayGenericSearchFilter;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/SearchSeparator;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lcom/yelp/android/serializable/AndroidAppAnnotation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 703
    new-instance v0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse$1;

    invoke-direct {v0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse$1;-><init>()V

    sput-object v0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->CREATOR:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 599
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 600
    const/4 v0, 0x0

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->f:[D

    .line 601
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->c:Ljava/util/List;

    .line 602
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->b:Ljava/util/List;

    .line 603
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;I)I
    .locals 0

    .prologue
    .line 576
    iput p1, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->i:I

    return p1
.end method

.method static synthetic a(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;Landroid/location/Address;)Landroid/location/Address;
    .locals 0

    .prologue
    .line 576
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->d:Landroid/location/Address;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse$Foldability;)Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse$Foldability;
    .locals 0

    .prologue
    .line 576
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->g:Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse$Foldability;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;Lcom/yelp/android/serializable/AndroidAppAnnotation;)Lcom/yelp/android/serializable/AndroidAppAnnotation;
    .locals 0

    .prologue
    .line 576
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->o:Lcom/yelp/android/serializable/AndroidAppAnnotation;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 576
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->e:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 576
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->b:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;)[D
    .locals 1

    .prologue
    .line 576
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->f:[D

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;[D)[D
    .locals 0

    .prologue
    .line 576
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->f:[D

    return-object p1
.end method

.method static synthetic b(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;I)I
    .locals 0

    .prologue
    .line 576
    iput p1, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->h:I

    return p1
.end method

.method static synthetic b(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 576
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->a:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;)Ljava/util/List;
    .locals 1

    .prologue
    .line 576
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->c:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 576
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->c:Ljava/util/List;

    return-object p1
.end method

.method static synthetic c(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 576
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->j:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;)Ljava/util/List;
    .locals 1

    .prologue
    .line 576
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->k:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 576
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->k:Ljava/util/List;

    return-object p1
.end method

.method static synthetic d(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;)Ljava/util/List;
    .locals 1

    .prologue
    .line 576
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->l:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 576
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->l:Ljava/util/List;

    return-object p1
.end method

.method static synthetic e(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 576
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->n:Ljava/util/List;

    return-object p1
.end method

.method static synthetic f(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 576
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->m:Ljava/util/List;

    return-object p1
.end method


# virtual methods
.method public a()Ljava/util/List;
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
    .line 607
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->b:Ljava/util/List;

    return-object v0
.end method

.method public b()Ljava/util/List;
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
    .line 612
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->c:Ljava/util/List;

    return-object v0
.end method

.method public c()Landroid/location/Address;
    .locals 1

    .prologue
    .line 617
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->d:Landroid/location/Address;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 622
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->e:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 642
    const/4 v0, 0x0

    return v0
.end method

.method public e()Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse$Foldability;
    .locals 1

    .prologue
    .line 627
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->g:Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse$Foldability;

    return-object v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 632
    iget v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->h:I

    return v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 647
    iget v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->i:I

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 652
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->j:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 657
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->a:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/util/List;
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
    .line 662
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->k:Ljava/util/List;

    return-object v0
.end method

.method public k()Ljava/util/List;
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
    .line 667
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->l:Ljava/util/List;

    return-object v0
.end method

.method public l()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/DisplayGenericSearchFilter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 672
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->m:Ljava/util/List;

    return-object v0
.end method

.method public m()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/SearchSeparator;",
            ">;"
        }
    .end annotation

    .prologue
    .line 677
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->n:Ljava/util/List;

    return-object v0
.end method

.method public n()Lcom/yelp/android/serializable/AndroidAppAnnotation;
    .locals 1

    .prologue
    .line 681
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->o:Lcom/yelp/android/serializable/AndroidAppAnnotation;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 686
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->b:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 687
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->c:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 688
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->d:Landroid/location/Address;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 689
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 690
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->f:[D

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 691
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->f:[D

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeDoubleArray([D)V

    .line 692
    iget v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->h:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 693
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->g:Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse$Foldability;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 694
    iget v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->i:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 695
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 696
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 697
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->k:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 698
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->l:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 699
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->n:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 700
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->o:Lcom/yelp/android/serializable/AndroidAppAnnotation;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 701
    return-void
.end method
