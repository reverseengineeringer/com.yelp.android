.class public Lcom/yelp/android/ui/widgets/PieProgress$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "PieProgress.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/yelp/android/ui/widgets/PieProgress$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mMax:I

.field private mProgress:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 124
    new-instance v0, Lcom/yelp/android/ui/widgets/q;

    invoke-direct {v0}, Lcom/yelp/android/ui/widgets/q;-><init>()V

    sput-object v0, Lcom/yelp/android/ui/widgets/PieProgress$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 112
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/widgets/PieProgress$SavedState;->mProgress:I

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/widgets/PieProgress$SavedState;->mMax:I

    .line 115
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/yelp/android/ui/widgets/p;)V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/widgets/PieProgress$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 109
    return-void
.end method

.method static synthetic access$100(Lcom/yelp/android/ui/widgets/PieProgress$SavedState;)I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/yelp/android/ui/widgets/PieProgress$SavedState;->mMax:I

    return v0
.end method

.method static synthetic access$102(Lcom/yelp/android/ui/widgets/PieProgress$SavedState;I)I
    .locals 0

    .prologue
    .line 103
    iput p1, p0, Lcom/yelp/android/ui/widgets/PieProgress$SavedState;->mMax:I

    return p1
.end method

.method static synthetic access$200(Lcom/yelp/android/ui/widgets/PieProgress$SavedState;)I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/yelp/android/ui/widgets/PieProgress$SavedState;->mProgress:I

    return v0
.end method

.method static synthetic access$202(Lcom/yelp/android/ui/widgets/PieProgress$SavedState;I)I
    .locals 0

    .prologue
    .line 103
    iput p1, p0, Lcom/yelp/android/ui/widgets/PieProgress$SavedState;->mProgress:I

    return p1
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 119
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 120
    iget v0, p0, Lcom/yelp/android/ui/widgets/PieProgress$SavedState;->mProgress:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    iget v0, p0, Lcom/yelp/android/ui/widgets/PieProgress$SavedState;->mMax:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    return-void
.end method
