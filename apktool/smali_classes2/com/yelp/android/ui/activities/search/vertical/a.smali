.class public Lcom/yelp/android/ui/activities/search/vertical/a;
.super Lcom/yelp/android/ui/util/w;
.source "UserAddressSelectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/search/vertical/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/util/w",
        "<",
        "Lcom/yelp/android/serializable/PlatformDisambiguatedAddress;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/yelp/android/ui/util/w;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/vertical/a;->a:Landroid/content/Context;

    .line 22
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 26
    .line 27
    if-nez p2, :cond_0

    .line 28
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/a;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03005f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 31
    const v0, 0x7f0f0201

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/search/vertical/UserAddressView;

    .line 32
    new-instance v1, Lcom/yelp/android/ui/activities/search/vertical/a$a;

    invoke-direct {v1, v0}, Lcom/yelp/android/ui/activities/search/vertical/a$a;-><init>(Lcom/yelp/android/ui/activities/search/vertical/UserAddressView;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 34
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/search/vertical/a$a;

    .line 35
    iget-object v1, v0, Lcom/yelp/android/ui/activities/search/vertical/a$a;->a:Lcom/yelp/android/ui/activities/search/vertical/UserAddressView;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/vertical/a;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/PlatformDisambiguatedAddress;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/PlatformDisambiguatedAddress;->d()Lcom/yelp/android/serializable/PlatformDeliveryAddress;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/search/vertical/UserAddressView;->setAddress(Lcom/yelp/android/serializable/PlatformDeliveryAddress;)V

    .line 36
    return-object p2
.end method
