.class public Lcom/yelp/android/serializable/UserTipsViewModel;
.super Lcom/yelp/android/serializable/_UserTipsViewModel;
.source "UserTipsViewModel.java"

# interfaces
.implements Lcom/yelp/android/bx/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/serializable/UserTipsViewModel$ViewType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/yelp/android/serializable/UserTipsViewModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lcom/yelp/android/serializable/UserTipsViewModel$1;

    invoke-direct {v0}, Lcom/yelp/android/serializable/UserTipsViewModel$1;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/UserTipsViewModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/yelp/android/serializable/_UserTipsViewModel;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yelp/android/serializable/UserTipsViewModel$1;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/yelp/android/serializable/UserTipsViewModel;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Lcom/yelp/android/serializable/User;Lcom/yelp/android/serializable/UserTipsViewModel$ViewType;I)V
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
    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/yelp/android/serializable/_UserTipsViewModel;-><init>(Ljava/util/ArrayList;Lcom/yelp/android/serializable/User;Lcom/yelp/android/serializable/UserTipsViewModel$ViewType;I)V

    .line 34
    return-void
.end method

.method public static b(Landroid/os/Bundle;)Lcom/yelp/android/serializable/UserTipsViewModel;
    .locals 1

    .prologue
    .line 38
    const-string/jumbo v0, "UserTipsViewModel"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/UserTipsViewModel;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 43
    const-string/jumbo v0, "UserTipsViewModel"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 44
    return-void
.end method

.method public bridge synthetic a(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 14
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_UserTipsViewModel;->a(Landroid/os/Parcel;)V

    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/yelp/android/serializable/UserTipsViewModel;->e()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Z
    .locals 2

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/yelp/android/serializable/UserTipsViewModel;->e()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/yelp/android/serializable/UserTipsViewModel;->d:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic c()Lcom/yelp/android/serializable/UserTipsViewModel$ViewType;
    .locals 1

    .prologue
    .line 14
    invoke-super {p0}, Lcom/yelp/android/serializable/_UserTipsViewModel;->c()Lcom/yelp/android/serializable/UserTipsViewModel$ViewType;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d()Lcom/yelp/android/serializable/User;
    .locals 1

    .prologue
    .line 14
    invoke-super {p0}, Lcom/yelp/android/serializable/_UserTipsViewModel;->d()Lcom/yelp/android/serializable/User;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 14
    invoke-super {p0}, Lcom/yelp/android/serializable/_UserTipsViewModel;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic e()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 14
    invoke-super {p0}, Lcom/yelp/android/serializable/_UserTipsViewModel;->e()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 14
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_UserTipsViewModel;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .prologue
    .line 14
    invoke-super {p0}, Lcom/yelp/android/serializable/_UserTipsViewModel;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 14
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_UserTipsViewModel;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
