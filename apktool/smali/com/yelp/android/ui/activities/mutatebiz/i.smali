.class Lcom/yelp/android/ui/activities/mutatebiz/i;
.super Ljava/lang/Object;
.source "ChangeBusinessAttributes.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcom/yelp/android/ui/activities/mutatebiz/i;->a:Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 202
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/i;->a:Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->g:Lcom/yelp/android/ui/activities/mutatebiz/ah;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/mutatebiz/ah;->getParcelableArrayData()[Landroid/os/Parcelable;

    move-result-object v3

    .line 205
    if-eqz v3, :cond_1

    .line 206
    aget-object v0, v3, v2

    check-cast v0, Landroid/location/Address;

    .line 207
    const/4 v1, 0x2

    aget-object v1, v3, v1

    check-cast v1, Lcom/yelp/android/serializable/YelpBusinessAddresses;

    .line 209
    :goto_0
    iget-object v3, p0, Lcom/yelp/android/ui/activities/mutatebiz/i;->a:Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;

    iget-object v4, p0, Lcom/yelp/android/ui/activities/mutatebiz/i;->a:Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;

    iget-object v5, p0, Lcom/yelp/android/ui/activities/mutatebiz/i;->a:Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;

    iget-object v5, v5, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->c:Ljava/lang/String;

    iget-object v6, p0, Lcom/yelp/android/ui/activities/mutatebiz/i;->a:Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;

    iget-object v6, v6, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->n:Lcom/yelp/android/serializable/YelpBusiness;

    if-eqz v6, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-static {v4, v5, v0, v1, v2}, Lcom/yelp/android/ui/activities/mutatebiz/EditExistingAddress;->a(Landroid/content/Context;Ljava/lang/String;Landroid/location/Address;Lcom/yelp/android/serializable/YelpBusinessAddresses;Z)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x3f6

    invoke-virtual {v3, v0, v1}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->startActivityForResult(Landroid/content/Intent;I)V

    .line 213
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method
