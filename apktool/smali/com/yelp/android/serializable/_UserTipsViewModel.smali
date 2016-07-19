.class abstract Lcom/yelp/android/serializable/_UserTipsViewModel;
.super Ljava/lang/Object;
.source "_UserTipsViewModel.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/Tip;",
            ">;"
        }
    .end annotation
.end field

.field protected b:Lcom/yelp/android/serializable/User;

.field protected c:Lcom/yelp/android/serializable/UserTipsViewModel$ViewType;

.field protected d:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method protected constructor <init>(Ljava/util/ArrayList;Lcom/yelp/android/serializable/User;Lcom/yelp/android/serializable/UserTipsViewModel$ViewType;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/Tip;",
            ">;",
            "Lcom/yelp/android/serializable/User;",
            "Lcom/yelp/android/serializable/UserTipsViewModel$ViewType;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/yelp/android/serializable/_UserTipsViewModel;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/yelp/android/serializable/_UserTipsViewModel;->a:Ljava/util/ArrayList;

    .line 25
    iput-object p2, p0, Lcom/yelp/android/serializable/_UserTipsViewModel;->b:Lcom/yelp/android/serializable/User;

    .line 26
    iput-object p3, p0, Lcom/yelp/android/serializable/_UserTipsViewModel;->c:Lcom/yelp/android/serializable/UserTipsViewModel$ViewType;

    .line 27
    iput p4, p0, Lcom/yelp/android/serializable/_UserTipsViewModel;->d:I

    .line 28
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 96
    const-class v0, Lcom/yelp/android/serializable/Tip;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_UserTipsViewModel;->a:Ljava/util/ArrayList;

    .line 97
    const-class v0, Lcom/yelp/android/serializable/User;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/User;

    iput-object v0, p0, Lcom/yelp/android/serializable/_UserTipsViewModel;->b:Lcom/yelp/android/serializable/User;

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/UserTipsViewModel$ViewType;

    iput-object v0, p0, Lcom/yelp/android/serializable/_UserTipsViewModel;->c:Lcom/yelp/android/serializable/UserTipsViewModel$ViewType;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_UserTipsViewModel;->d:I

    .line 100
    return-void
.end method

.method public c()Lcom/yelp/android/serializable/UserTipsViewModel$ViewType;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/yelp/android/serializable/_UserTipsViewModel;->c:Lcom/yelp/android/serializable/UserTipsViewModel$ViewType;

    return-object v0
.end method

.method public d()Lcom/yelp/android/serializable/User;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/yelp/android/serializable/_UserTipsViewModel;->b:Lcom/yelp/android/serializable/User;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/Tip;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lcom/yelp/android/serializable/_UserTipsViewModel;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 36
    if-nez p1, :cond_1

    .line 50
    :cond_0
    :goto_0
    return v0

    .line 40
    :cond_1
    if-ne p1, p0, :cond_2

    .line 41
    const/4 v0, 0x1

    goto :goto_0

    .line 44
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 48
    check-cast p1, Lcom/yelp/android/serializable/_UserTipsViewModel;

    .line 50
    new-instance v0, Lcom/yelp/android/dc/b;

    invoke-direct {v0}, Lcom/yelp/android/dc/b;-><init>()V

    iget-object v1, p0, Lcom/yelp/android/serializable/_UserTipsViewModel;->a:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/yelp/android/serializable/_UserTipsViewModel;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_UserTipsViewModel;->b:Lcom/yelp/android/serializable/User;

    iget-object v2, p1, Lcom/yelp/android/serializable/_UserTipsViewModel;->b:Lcom/yelp/android/serializable/User;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_UserTipsViewModel;->c:Lcom/yelp/android/serializable/UserTipsViewModel$ViewType;

    iget-object v2, p1, Lcom/yelp/android/serializable/_UserTipsViewModel;->c:Lcom/yelp/android/serializable/UserTipsViewModel$ViewType;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget v1, p0, Lcom/yelp/android/serializable/_UserTipsViewModel;->d:I

    iget v2, p1, Lcom/yelp/android/serializable/_UserTipsViewModel;->d:I

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(II)Lcom/yelp/android/dc/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/dc/b;->a()Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 60
    new-instance v0, Lcom/yelp/android/dc/c;

    invoke-direct {v0}, Lcom/yelp/android/dc/c;-><init>()V

    iget-object v1, p0, Lcom/yelp/android/serializable/_UserTipsViewModel;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(Ljava/lang/Object;)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_UserTipsViewModel;->b:Lcom/yelp/android/serializable/User;

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(Ljava/lang/Object;)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_UserTipsViewModel;->c:Lcom/yelp/android/serializable/UserTipsViewModel$ViewType;

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(Ljava/lang/Object;)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget v1, p0, Lcom/yelp/android/serializable/_UserTipsViewModel;->d:I

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(I)Lcom/yelp/android/dc/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/dc/c;->a()I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/yelp/android/serializable/_UserTipsViewModel;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 90
    iget-object v0, p0, Lcom/yelp/android/serializable/_UserTipsViewModel;->b:Lcom/yelp/android/serializable/User;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 91
    iget-object v0, p0, Lcom/yelp/android/serializable/_UserTipsViewModel;->c:Lcom/yelp/android/serializable/UserTipsViewModel$ViewType;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 92
    iget v0, p0, Lcom/yelp/android/serializable/_UserTipsViewModel;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    return-void
.end method
