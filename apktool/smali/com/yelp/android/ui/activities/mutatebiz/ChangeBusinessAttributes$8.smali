.class Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes$8;
.super Ljava/lang/Object;
.source "ChangeBusinessAttributes.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->onCreateDialog(I)Landroid/app/Dialog;
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
    .line 610
    iput-object p1, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes$8;->a:Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 614
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes$8;->a:Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes$8;->a:Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->n:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->a(Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;

    move-result-object v0

    .line 615
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes$8;->a:Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->startActivity(Landroid/content/Intent;)V

    .line 616
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes$8;->a:Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->finish()V

    .line 617
    return-void
.end method
