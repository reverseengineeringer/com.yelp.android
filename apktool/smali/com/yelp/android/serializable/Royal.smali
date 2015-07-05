.class public Lcom/yelp/android/serializable/Royal;
.super Ljava/lang/Object;
.source "Royal.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/yelp/android/serializable/Royal;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDescription:Ljava/lang/String;

.field private final mDukedoms:I

.field private final mLocationName:Ljava/lang/String;

.field private final mTitle:Ljava/lang/String;

.field private final mUser:Lcom/yelp/android/serializable/User;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    new-instance v0, Lcom/yelp/android/serializable/cw;

    invoke-direct {v0}, Lcom/yelp/android/serializable/cw;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/Royal;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-class v0, Lcom/yelp/android/serializable/User;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/User;

    iput-object v0, p0, Lcom/yelp/android/serializable/Royal;->mUser:Lcom/yelp/android/serializable/User;

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/Royal;->mLocationName:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/Royal;->mDukedoms:I

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/Royal;->mTitle:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/Royal;->mDescription:Ljava/lang/String;

    .line 34
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/yelp/android/serializable/cw;)V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0, p1}, Lcom/yelp/android/serializable/Royal;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/yelp/android/serializable/User;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/yelp/android/serializable/Royal;->mUser:Lcom/yelp/android/serializable/User;

    .line 46
    iput-object p2, p0, Lcom/yelp/android/serializable/Royal;->mLocationName:Ljava/lang/String;

    .line 47
    iput p3, p0, Lcom/yelp/android/serializable/Royal;->mDukedoms:I

    .line 48
    iput-object p4, p0, Lcom/yelp/android/serializable/Royal;->mTitle:Ljava/lang/String;

    .line 49
    iput-object p5, p0, Lcom/yelp/android/serializable/Royal;->mDescription:Ljava/lang/String;

    .line 50
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/yelp/android/serializable/Royal;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getDukedomCount()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/yelp/android/serializable/Royal;->mDukedoms:I

    return v0
.end method

.method public getLocationName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/yelp/android/serializable/Royal;->mLocationName:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/yelp/android/serializable/Royal;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Lcom/yelp/android/serializable/User;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/yelp/android/serializable/Royal;->mUser:Lcom/yelp/android/serializable/User;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/yelp/android/serializable/Royal;->mUser:Lcom/yelp/android/serializable/User;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/yelp/android/serializable/Royal;->mUser:Lcom/yelp/android/serializable/User;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 22
    iget-object v0, p0, Lcom/yelp/android/serializable/Royal;->mLocationName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 23
    iget v0, p0, Lcom/yelp/android/serializable/Royal;->mDukedoms:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    iget-object v0, p0, Lcom/yelp/android/serializable/Royal;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lcom/yelp/android/serializable/Royal;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 26
    return-void
.end method
