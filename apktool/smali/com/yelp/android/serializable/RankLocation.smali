.class public Lcom/yelp/android/serializable/RankLocation;
.super Ljava/lang/Object;
.source "RankLocation.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/yelp/android/serializable/RankLocation;",
            ">;"
        }
    .end annotation
.end field

.field public static final a:Lcom/yelp/android/serializable/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/serializable/c",
            "<",
            "Lcom/yelp/android/serializable/RankLocation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:I

.field private final e:Lcom/yelp/android/serializable/RankTitle$Rank;

.field private final f:Lcom/yelp/android/serializable/YelpBusiness;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/yelp/android/serializable/RankLocation$1;

    invoke-direct {v0}, Lcom/yelp/android/serializable/RankLocation$1;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/RankLocation;->a:Lcom/yelp/android/serializable/c;

    .line 53
    new-instance v0, Lcom/yelp/android/serializable/RankLocation$2;

    invoke-direct {v0}, Lcom/yelp/android/serializable/RankLocation$2;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/RankLocation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILcom/yelp/android/serializable/RankTitle$Rank;Lcom/yelp/android/serializable/YelpBusiness;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/yelp/android/serializable/RankLocation;->b:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/yelp/android/serializable/RankLocation;->c:Ljava/lang/String;

    .line 22
    iput-object p4, p0, Lcom/yelp/android/serializable/RankLocation;->e:Lcom/yelp/android/serializable/RankTitle$Rank;

    .line 23
    iput p3, p0, Lcom/yelp/android/serializable/RankLocation;->d:I

    .line 24
    iput-object p5, p0, Lcom/yelp/android/serializable/RankLocation;->f:Lcom/yelp/android/serializable/YelpBusiness;

    .line 25
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/yelp/android/serializable/RankLocation;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/yelp/android/serializable/RankLocation;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/yelp/android/serializable/RankLocation;->d:I

    return v0
.end method

.method public d()Lcom/yelp/android/serializable/YelpBusiness;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/yelp/android/serializable/RankLocation;->f:Lcom/yelp/android/serializable/YelpBusiness;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/yelp/android/serializable/RankLocation;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/yelp/android/serializable/RankLocation;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    iget v0, p0, Lcom/yelp/android/serializable/RankLocation;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    iget-object v0, p0, Lcom/yelp/android/serializable/RankLocation;->e:Lcom/yelp/android/serializable/RankTitle$Rank;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/yelp/android/serializable/RankLocation;->f:Lcom/yelp/android/serializable/YelpBusiness;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 80
    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/RankLocation;->e:Lcom/yelp/android/serializable/RankTitle$Rank;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/RankTitle$Rank;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
