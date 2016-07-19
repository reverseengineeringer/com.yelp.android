.class public Lcom/yelp/android/serializable/RankTitle;
.super Ljava/lang/Object;
.source "RankTitle.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/serializable/RankTitle$Rank;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/yelp/android/serializable/RankTitle;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 199
    new-instance v0, Lcom/yelp/android/serializable/RankTitle$1;

    invoke-direct {v0}, Lcom/yelp/android/serializable/RankTitle$1;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/RankTitle;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    iput-object p1, p0, Lcom/yelp/android/serializable/RankTitle;->a:Ljava/util/List;

    .line 187
    iput p2, p0, Lcom/yelp/android/serializable/RankTitle;->b:I

    .line 188
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 195
    iget v0, p0, Lcom/yelp/android/serializable/RankTitle;->b:I

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 220
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/yelp/android/serializable/RankTitle;->a:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 215
    iget v0, p0, Lcom/yelp/android/serializable/RankTitle;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 216
    return-void
.end method
