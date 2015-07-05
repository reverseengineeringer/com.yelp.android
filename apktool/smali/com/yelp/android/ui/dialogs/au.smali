.class Lcom/yelp/android/ui/dialogs/au;
.super Ljava/lang/Object;
.source "LocationSettingsDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/dialogs/LocationSettingsDialog;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/dialogs/LocationSettingsDialog;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/au;->a:Lcom/yelp/android/ui/dialogs/LocationSettingsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/au;->a:Lcom/yelp/android/ui/dialogs/LocationSettingsDialog;

    invoke-static {v0}, Lcom/yelp/android/ui/dialogs/LocationSettingsDialog;->b(Lcom/yelp/android/ui/dialogs/LocationSettingsDialog;)Lcom/yelp/android/ui/activities/support/o;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/au;->a:Lcom/yelp/android/ui/dialogs/LocationSettingsDialog;

    invoke-static {v0}, Lcom/yelp/android/ui/dialogs/LocationSettingsDialog;->b(Lcom/yelp/android/ui/dialogs/LocationSettingsDialog;)Lcom/yelp/android/ui/activities/support/o;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/au;->a:Lcom/yelp/android/ui/dialogs/LocationSettingsDialog;

    invoke-static {v1}, Lcom/yelp/android/ui/dialogs/LocationSettingsDialog;->c(Lcom/yelp/android/ui/dialogs/LocationSettingsDialog;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/activities/support/o;->a(Z)V

    .line 116
    :cond_0
    return-void
.end method
