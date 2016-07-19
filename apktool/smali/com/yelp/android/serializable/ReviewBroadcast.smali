.class public Lcom/yelp/android/serializable/ReviewBroadcast;
.super Lcom/yelp/android/serializable/Review;
.source "ReviewBroadcast.java"


# static fields
.field public static final CREATOR:Lcom/yelp/android/serializable/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/serializable/a",
            "<",
            "Lcom/yelp/android/serializable/ReviewBroadcast;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    new-instance v0, Lcom/yelp/android/serializable/ReviewBroadcast$1;

    invoke-direct {v0}, Lcom/yelp/android/serializable/ReviewBroadcast$1;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/ReviewBroadcast;->CREATOR:Lcom/yelp/android/serializable/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/yelp/android/serializable/Review;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/serializable/ReviewBroadcast;->f:Z

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 52
    iput p1, p0, Lcom/yelp/android/serializable/ReviewBroadcast;->c:I

    .line 53
    return-void
.end method

.method public a(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 65
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/Review;->a(Landroid/os/Parcel;)V

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/serializable/ReviewBroadcast;->d:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/serializable/ReviewBroadcast;->e:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/yelp/android/serializable/ReviewBroadcast;->f:Z

    .line 69
    return-void

    .line 68
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/yelp/android/ui/activities/reviews/ReviewState;)V
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p1}, Lcom/yelp/android/ui/activities/reviews/ReviewState;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/ReviewBroadcast;->e:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/yelp/android/serializable/ReviewBroadcast;->d:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/yelp/android/serializable/ReviewBroadcast;->f:Z

    .line 49
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/yelp/android/serializable/ReviewBroadcast;->b:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/yelp/android/serializable/ReviewBroadcast;->a:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/yelp/android/serializable/ReviewBroadcast;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()Lcom/yelp/android/ui/activities/reviews/ReviewState;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/yelp/android/serializable/ReviewBroadcast;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviews/ReviewState;->fromDescription(Ljava/lang/String;)Lcom/yelp/android/ui/activities/reviews/ReviewState;

    move-result-object v0

    return-object v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/yelp/android/serializable/ReviewBroadcast;->f:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 73
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/Review;->writeToParcel(Landroid/os/Parcel;I)V

    .line 74
    iget-object v0, p0, Lcom/yelp/android/serializable/ReviewBroadcast;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/yelp/android/serializable/ReviewBroadcast;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 76
    iget-boolean v0, p0, Lcom/yelp/android/serializable/ReviewBroadcast;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 77
    return-void

    .line 76
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
