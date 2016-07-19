.class public Lcom/yelp/android/serializable/User$EliteYear;
.super Ljava/lang/Object;
.source "User.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/serializable/User;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EliteYear"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/serializable/User$EliteYear$TYPE;
    }
.end annotation

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
.field public final a:I

.field public b:Lcom/yelp/android/serializable/User$EliteYear$TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 233
    new-instance v0, Lcom/yelp/android/serializable/User$EliteYear$1;

    invoke-direct {v0}, Lcom/yelp/android/serializable/User$EliteYear$1;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/User$EliteYear;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILcom/yelp/android/serializable/User$EliteYear$TYPE;)V
    .locals 0

    .prologue
    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    iput p1, p0, Lcom/yelp/android/serializable/User$EliteYear;->a:I

    .line 209
    iput-object p2, p0, Lcom/yelp/android/serializable/User$EliteYear;->b:Lcom/yelp/android/serializable/User$EliteYear$TYPE;

    .line 210
    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/serializable/User$EliteYear;)I
    .locals 2

    .prologue
    .line 215
    iget v0, p0, Lcom/yelp/android/serializable/User$EliteYear;->a:I

    iget v1, p1, Lcom/yelp/android/serializable/User$EliteYear;->a:I

    if-eq v0, v1, :cond_0

    .line 216
    iget v0, p0, Lcom/yelp/android/serializable/User$EliteYear;->a:I

    iget v1, p1, Lcom/yelp/android/serializable/User$EliteYear;->a:I

    sub-int/2addr v0, v1

    .line 219
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/User$EliteYear;->b:Lcom/yelp/android/serializable/User$EliteYear$TYPE;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User$EliteYear$TYPE;->ordinal()I

    move-result v0

    iget-object v1, p1, Lcom/yelp/android/serializable/User$EliteYear;->b:Lcom/yelp/android/serializable/User$EliteYear$TYPE;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/User$EliteYear$TYPE;->ordinal()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 67
    check-cast p1, Lcom/yelp/android/serializable/User$EliteYear;

    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/User$EliteYear;->a(Lcom/yelp/android/serializable/User$EliteYear;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 224
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 229
    iget v0, p0, Lcom/yelp/android/serializable/User$EliteYear;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 230
    iget-object v0, p0, Lcom/yelp/android/serializable/User$EliteYear;->b:Lcom/yelp/android/serializable/User$EliteYear$TYPE;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User$EliteYear$TYPE;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 231
    return-void
.end method
