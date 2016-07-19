.class Lcom/yelp/android/ui/dialogs/ReservationSearchDialogFragment$1;
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
.field final synthetic a:Lcom/yelp/android/analytics/iris/EventIri;

.field final synthetic b:Lcom/yelp/android/ui/dialogs/ReservationSearchDialogFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/dialogs/ReservationSearchDialogFragment;Lcom/yelp/android/analytics/iris/EventIri;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/ReservationSearchDialogFragment$1;->b:Lcom/yelp/android/ui/dialogs/ReservationSearchDialogFragment;

    iput-object p2, p0, Lcom/yelp/android/ui/dialogs/ReservationSearchDialogFragment$1;->a:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/ReservationSearchDialogFragment$1;->b:Lcom/yelp/android/ui/dialogs/ReservationSearchDialogFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/dialogs/ReservationSearchDialogFragment;->a(Lcom/yelp/android/ui/dialogs/ReservationSearchDialogFragment;)V

    .line 99
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/ReservationSearchDialogFragment$1;->a:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 100
    return-void
.end method
