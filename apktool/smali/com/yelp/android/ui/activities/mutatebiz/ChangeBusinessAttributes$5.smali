.class Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes$5;
.super Ljava/lang/Object;
.source "ChangeBusinessAttributes.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;)V
    .locals 0

    .prologue
    .line 350
    iput-object p1, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes$5;->a:Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 353
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes$5;->a:Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->g:Lcom/yelp/android/ui/activities/mutatebiz/d;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/mutatebiz/d;->getParcelableArrayData()[Landroid/os/Parcelable;

    move-result-object v1

    .line 356
    if-eqz v1, :cond_0

    .line 357
    const/4 v0, 0x0

    aget-object v0, v1, v0

    check-cast v0, Landroid/location/Address;

    .line 358
    const/4 v2, 0x1

    aget-object v1, v1, v2

    check-cast v1, Lcom/yelp/android/serializable/YelpBusinessAddresses;

    move-object v3, v1

    move-object v2, v0

    .line 360
    :goto_0
    iget-object v7, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes$5;->a:Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;

    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes$5;->a:Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes$5;->a:Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes$5;->a:Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;

    iget-object v4, v4, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->q:Lcom/yelp/android/serializable/BusinessAttributes;

    iget-object v5, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes$5;->a:Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;

    iget-object v5, v5, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->p:Ljava/lang/String;

    iget-object v6, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes$5;->a:Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;

    iget-boolean v6, v6, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->x:Z

    invoke-static/range {v0 .. v6}, Lcom/yelp/android/ui/activities/mutatebiz/EditExistingAddress;->a(Landroid/content/Context;Ljava/lang/String;Landroid/location/Address;Lcom/yelp/android/serializable/YelpBusinessAddresses;Lcom/yelp/android/serializable/BusinessAttributes;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x3fa

    invoke-virtual {v7, v0, v1}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->startActivityForResult(Landroid/content/Intent;I)V

    .line 370
    return-void

    :cond_0
    move-object v2, v3

    goto :goto_0
.end method
