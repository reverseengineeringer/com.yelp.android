.class Lcom/yelp/android/ui/dialogs/LocationSettingsDialog$2;
.super Ljava/lang/Object;
.source "LocationSettingsDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/dialogs/LocationSettingsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/dialogs/LocationSettingsDialog;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/dialogs/LocationSettingsDialog;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/LocationSettingsDialog$2;->a:Lcom/yelp/android/ui/dialogs/LocationSettingsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/LocationSettingsDialog$2;->a:Lcom/yelp/android/ui/dialogs/LocationSettingsDialog;

    invoke-static {v0}, Lcom/yelp/android/ui/dialogs/LocationSettingsDialog;->b(Lcom/yelp/android/ui/dialogs/LocationSettingsDialog;)Lcom/yelp/android/ui/activities/support/b$e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/LocationSettingsDialog$2;->a:Lcom/yelp/android/ui/dialogs/LocationSettingsDialog;

    invoke-static {v0}, Lcom/yelp/android/ui/dialogs/LocationSettingsDialog;->b(Lcom/yelp/android/ui/dialogs/LocationSettingsDialog;)Lcom/yelp/android/ui/activities/support/b$e;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/LocationSettingsDialog$2;->a:Lcom/yelp/android/ui/dialogs/LocationSettingsDialog;

    invoke-static {v1}, Lcom/yelp/android/ui/dialogs/LocationSettingsDialog;->c(Lcom/yelp/android/ui/dialogs/LocationSettingsDialog;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/activities/support/b$e;->a(Z)V

    .line 112
    :cond_0
    return-void
.end method
