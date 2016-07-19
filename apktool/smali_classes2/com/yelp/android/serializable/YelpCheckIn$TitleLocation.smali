.class public Lcom/yelp/android/serializable/YelpCheckIn$TitleLocation;
.super Ljava/lang/Object;
.source "YelpCheckIn.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/serializable/YelpCheckIn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TitleLocation"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/yelp/android/serializable/YelpCheckIn$TitleLocation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/yelp/android/serializable/RankTitle$Rank;

.field private final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    new-instance v0, Lcom/yelp/android/serializable/YelpCheckIn$TitleLocation$1;

    invoke-direct {v0}, Lcom/yelp/android/serializable/YelpCheckIn$TitleLocation$1;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/YelpCheckIn$TitleLocation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/serializable/RankTitle$Rank;->rankForString(Ljava/lang/String;)Lcom/yelp/android/serializable/RankTitle$Rank;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/yelp/android/serializable/YelpCheckIn$TitleLocation;-><init>(Lcom/yelp/android/serializable/RankTitle$Rank;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Lcom/yelp/android/serializable/RankTitle$Rank;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/yelp/android/serializable/YelpCheckIn$TitleLocation;->a:Lcom/yelp/android/serializable/RankTitle$Rank;

    .line 54
    iput-object p2, p0, Lcom/yelp/android/serializable/YelpCheckIn$TitleLocation;->b:Ljava/lang/String;

    .line 55
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/serializable/YelpCheckIn$TitleLocation;)Lcom/yelp/android/serializable/RankTitle$Rank;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpCheckIn$TitleLocation;->a:Lcom/yelp/android/serializable/RankTitle$Rank;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpCheckIn$TitleLocation;->b:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpCheckIn$TitleLocation;->a:Lcom/yelp/android/serializable/RankTitle$Rank;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/RankTitle$Rank;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpCheckIn$TitleLocation;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    return-void
.end method
