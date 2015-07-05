.class Lcom/yelp/android/ui/activities/mutatebiz/j;
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
    .line 219
    iput-object p1, p0, Lcom/yelp/android/ui/activities/mutatebiz/j;->a:Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .prologue
    .line 223
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/j;->a:Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->g:Lcom/yelp/android/ui/activities/mutatebiz/ah;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/mutatebiz/ah;->getParcelableArrayData()[Landroid/os/Parcelable;

    move-result-object v0

    .line 224
    const/4 v6, 0x0

    .line 225
    if-eqz v0, :cond_0

    .line 226
    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Landroid/location/Address;

    invoke-virtual {v0}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v6

    .line 228
    :cond_0
    iget-object v7, p0, Lcom/yelp/android/ui/activities/mutatebiz/j;->a:Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;

    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/j;->a:Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/j;->a:Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->n:Lcom/yelp/android/serializable/YelpBusiness;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/mutatebiz/j;->a:Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;

    iget-object v2, v2, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/mutatebiz/j;->a:Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;

    iget-object v3, v3, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/yelp/android/ui/activities/mutatebiz/j;->a:Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;

    iget-object v4, v4, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/yelp/android/ui/activities/mutatebiz/j;->a:Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;

    iget-object v5, v5, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->f:Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x3f9

    invoke-virtual {v7, v0, v1}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->startActivityForResult(Landroid/content/Intent;I)V

    .line 233
    return-void
.end method
