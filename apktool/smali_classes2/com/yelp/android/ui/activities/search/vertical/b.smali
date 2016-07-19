.class public Lcom/yelp/android/ui/activities/search/vertical/b;
.super Lcom/yelp/android/ui/util/w;
.source "UserDeliveryAddressAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/search/vertical/b$a;
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
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/yelp/android/ui/util/w;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/vertical/b;->a:Landroid/content/Context;

    .line 35
    iput-object p3, p0, Lcom/yelp/android/ui/activities/search/vertical/b;->b:Ljava/lang/String;

    .line 37
    if-eqz p2, :cond_0

    .line 38
    const-string/jumbo v0, "address_items"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 40
    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/search/vertical/b;->a(Ljava/util/List;)V

    .line 44
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 69
    const-string/jumbo v0, "address_items"

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/vertical/b;->a()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 71
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/vertical/b;->b:Ljava/lang/String;

    .line 75
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/vertical/b;->notifyDataSetChanged()V

    .line 76
    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 50
    if-nez p2, :cond_0

    .line 51
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/b;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030204

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 55
    new-instance v1, Lcom/yelp/android/ui/activities/search/vertical/b$a;

    invoke-direct {v1, v0}, Lcom/yelp/android/ui/activities/search/vertical/b$a;-><init>(Landroid/view/View;)V

    .line 56
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    move-object p2, v0

    .line 62
    :goto_0
    iget-object v2, v1, Lcom/yelp/android/ui/activities/search/vertical/b$a;->b:Lcom/yelp/android/ui/activities/search/vertical/UserAddressView;

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/search/vertical/b;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/PlatformDisambiguatedAddress;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/PlatformDisambiguatedAddress;->d()Lcom/yelp/android/serializable/PlatformDeliveryAddress;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/yelp/android/ui/activities/search/vertical/UserAddressView;->setAddress(Lcom/yelp/android/serializable/PlatformDeliveryAddress;)V

    .line 63
    iget-object v1, v1, Lcom/yelp/android/ui/activities/search/vertical/b$a;->a:Landroid/widget/CheckBox;

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/search/vertical/b;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/PlatformDisambiguatedAddress;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/PlatformDisambiguatedAddress;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/yelp/android/ui/activities/search/vertical/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 65
    return-object p2

    .line 58
    :cond_0
    check-cast p2, Landroid/widget/RelativeLayout;

    .line 59
    invoke-virtual {p2}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/search/vertical/b$a;

    move-object v1, v0

    goto :goto_0
.end method
