.class public Lcom/yelp/android/serializable/BadgesViewModel;
.super Lcom/yelp/android/serializable/_BadgesViewModel;
.source "BadgesViewModel.java"

# interfaces
.implements Lcom/yelp/android/bx/c;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/yelp/android/serializable/BadgesViewModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lcom/yelp/android/serializable/BadgesViewModel$1;

    invoke-direct {v0}, Lcom/yelp/android/serializable/BadgesViewModel$1;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/BadgesViewModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/yelp/android/serializable/_BadgesViewModel;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yelp/android/serializable/BadgesViewModel$1;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/yelp/android/serializable/BadgesViewModel;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/yelp/android/serializable/_BadgesViewModel;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static b(Landroid/os/Bundle;)Lcom/yelp/android/serializable/BadgesViewModel;
    .locals 1

    .prologue
    .line 24
    const-string/jumbo v0, "BadgesViewModel"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/BadgesViewModel;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lcom/yelp/android/serializable/_BadgesViewModel;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 28
    const-string/jumbo v0, "BadgesViewModel"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 29
    return-void
.end method

.method public bridge synthetic a(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_BadgesViewModel;->a(Landroid/os/Parcel;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Badge;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    iput-object p1, p0, Lcom/yelp/android/serializable/BadgesViewModel;->a:Ljava/util/List;

    .line 33
    return-void
.end method

.method public bridge synthetic b()Ljava/util/List;
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lcom/yelp/android/serializable/_BadgesViewModel;->b()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lcom/yelp/android/serializable/_BadgesViewModel;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_BadgesViewModel;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lcom/yelp/android/serializable/_BadgesViewModel;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 12
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_BadgesViewModel;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
