.class public Lcom/yelp/android/serializable/User$EliteYear;
.super Ljava/lang/Object;
.source "User.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/yelp/android/serializable/User$EliteYear;",
        ">;"
    }
.end annotation


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/yelp/android/serializable/User$EliteYear;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public type:Lcom/yelp/android/serializable/User$EliteYear$TYPE;

.field public final year:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 199
    new-instance v0, Lcom/yelp/android/serializable/dm;

    invoke-direct {v0}, Lcom/yelp/android/serializable/dm;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/User$EliteYear;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILcom/yelp/android/serializable/User$EliteYear$TYPE;)V
    .locals 0

    .prologue
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    iput p1, p0, Lcom/yelp/android/serializable/User$EliteYear;->year:I

    .line 175
    iput-object p2, p0, Lcom/yelp/android/serializable/User$EliteYear;->type:Lcom/yelp/android/serializable/User$EliteYear$TYPE;

    .line 176
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/yelp/android/serializable/User$EliteYear;)I
    .locals 2

    .prologue
    .line 181
    iget v0, p0, Lcom/yelp/android/serializable/User$EliteYear;->year:I

    iget v1, p1, Lcom/yelp/android/serializable/User$EliteYear;->year:I

    if-eq v0, v1, :cond_0

    .line 182
    iget v0, p0, Lcom/yelp/android/serializable/User$EliteYear;->year:I

    iget v1, p1, Lcom/yelp/android/serializable/User$EliteYear;->year:I

    sub-int/2addr v0, v1

    .line 185
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/User$EliteYear;->type:Lcom/yelp/android/serializable/User$EliteYear$TYPE;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User$EliteYear$TYPE;->ordinal()I

    move-result v0

    iget-object v1, p1, Lcom/yelp/android/serializable/User$EliteYear;->type:Lcom/yelp/android/serializable/User$EliteYear$TYPE;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/User$EliteYear$TYPE;->ordinal()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 40
    check-cast p1, Lcom/yelp/android/serializable/User$EliteYear;

    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/User$EliteYear;->compareTo(Lcom/yelp/android/serializable/User$EliteYear;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 195
    iget v0, p0, Lcom/yelp/android/serializable/User$EliteYear;->year:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    iget-object v0, p0, Lcom/yelp/android/serializable/User$EliteYear;->type:Lcom/yelp/android/serializable/User$EliteYear$TYPE;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User$EliteYear$TYPE;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    return-void
.end method
