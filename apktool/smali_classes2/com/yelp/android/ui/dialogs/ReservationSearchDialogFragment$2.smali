.class Lcom/yelp/android/ui/dialogs/ReservationSearchDialogFragment$2;
.super Ljava/lang/Object;
.source "ReservationSearchDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/dialogs/ReservationSearchDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/dialogs/ReservationSearchDialogFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/dialogs/ReservationSearchDialogFragment;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/ReservationSearchDialogFragment$2;->a:Lcom/yelp/android/ui/dialogs/ReservationSearchDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 83
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/ReservationSearchDialogFragment$2;->a:Lcom/yelp/android/ui/dialogs/ReservationSearchDialogFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/dialogs/ReservationSearchDialogFragment;->a(Lcom/yelp/android/ui/dialogs/ReservationSearchDialogFragment;)V

    .line 84
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/ReservationSearchDialogFragment$2;->a:Lcom/yelp/android/ui/dialogs/ReservationSearchDialogFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/dialogs/ReservationSearchDialogFragment;->b(Lcom/yelp/android/ui/dialogs/ReservationSearchDialogFragment;)Lcom/yelp/android/ui/dialogs/ReservationSearchDialogFragment$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/ReservationSearchDialogFragment$2;->a:Lcom/yelp/android/ui/dialogs/ReservationSearchDialogFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/dialogs/ReservationSearchDialogFragment;->c(Lcom/yelp/android/ui/dialogs/ReservationSearchDialogFragment;)Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;->f()Lcom/yelp/android/serializable/ReservationFilter;

    move-result-object v0

    .line 87
    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/ReservationSearchDialogFragment$2;->a:Lcom/yelp/android/ui/dialogs/ReservationSearchDialogFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/dialogs/ReservationSearchDialogFragment;->c(Lcom/yelp/android/ui/dialogs/ReservationSearchDialogFragment;)Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;->c()V

    .line 88
    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/ReservationSearchDialogFragment$2;->a:Lcom/yelp/android/ui/dialogs/ReservationSearchDialogFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/dialogs/ReservationSearchDialogFragment;->b(Lcom/yelp/android/ui/dialogs/ReservationSearchDialogFragment;)Lcom/yelp/android/ui/dialogs/ReservationSearchDialogFragment$a;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/dialogs/ReservationSearchDialogFragment$2;->a:Lcom/yelp/android/ui/dialogs/ReservationSearchDialogFragment;

    invoke-static {v2}, Lcom/yelp/android/ui/dialogs/ReservationSearchDialogFragment;->d(Lcom/yelp/android/ui/dialogs/ReservationSearchDialogFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/yelp/android/ui/dialogs/ReservationSearchDialogFragment$a;->a(Lcom/yelp/android/serializable/ReservationFilter;Ljava/lang/String;)V

    .line 91
    :cond_0
    return-void
.end method
