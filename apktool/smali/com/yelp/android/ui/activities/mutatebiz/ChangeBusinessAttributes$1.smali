.class Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes$1;
.super Ljava/lang/Object;
.source "ChangeBusinessAttributes.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->f()V
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
    .line 148
    iput-object p1, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes$1;->a:Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .prologue
    .line 152
    iget-object v7, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes$1;->a:Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;

    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes$1;->a:Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes$1;->a:Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->n:Lcom/yelp/android/serializable/YelpBusiness;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes$1;->a:Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;

    iget-object v2, v2, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes$1;->a:Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;

    iget-object v3, v3, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes$1;->a:Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;

    iget-object v4, v4, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes$1;->a:Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;

    iget-object v5, v5, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->f:Ljava/lang/String;

    iget-object v6, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes$1;->a:Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;

    iget-object v6, v6, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->q:Lcom/yelp/android/serializable/BusinessAttributes;

    invoke-static/range {v0 .. v6}, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/serializable/BusinessAttributes;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x3fd

    invoke-virtual {v7, v0, v1}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->startActivityForResult(Landroid/content/Intent;I)V

    .line 162
    return-void
.end method
