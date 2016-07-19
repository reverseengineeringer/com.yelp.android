.class public Lcom/yelp/android/ui/widgets/PieProgress$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "PieProgress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/widgets/PieProgress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedState"
.end annotation


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
.field private a:I

.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 125
    new-instance v0, Lcom/yelp/android/ui/widgets/PieProgress$SavedState$1;

    invoke-direct {v0}, Lcom/yelp/android/ui/widgets/PieProgress$SavedState$1;-><init>()V

    sput-object v0, Lcom/yelp/android/ui/widgets/PieProgress$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 113
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/widgets/PieProgress$SavedState;->a:I

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/widgets/PieProgress$SavedState;->b:I

    .line 116
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/yelp/android/ui/widgets/PieProgress$1;)V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/widgets/PieProgress$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 110
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/widgets/PieProgress$SavedState;)I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/yelp/android/ui/widgets/PieProgress$SavedState;->b:I

    return v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/widgets/PieProgress$SavedState;I)I
    .locals 0

    .prologue
    .line 103
    iput p1, p0, Lcom/yelp/android/ui/widgets/PieProgress$SavedState;->b:I

    return p1
.end method

.method static synthetic b(Lcom/yelp/android/ui/widgets/PieProgress$SavedState;)I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/yelp/android/ui/widgets/PieProgress$SavedState;->a:I

    return v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/widgets/PieProgress$SavedState;I)I
    .locals 0

    .prologue
    .line 103
    iput p1, p0, Lcom/yelp/android/ui/widgets/PieProgress$SavedState;->a:I

    return p1
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 120
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 121
    iget v0, p0, Lcom/yelp/android/ui/widgets/PieProgress$SavedState;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    iget v0, p0, Lcom/yelp/android/ui/widgets/PieProgress$SavedState;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    return-void
.end method
