.class Lcom/yelp/android/ui/dialogs/FiltersDialog$1;
.super Ljava/lang/Object;
.source "FiltersDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/dialogs/FiltersDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/dialogs/FiltersDialog;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/dialogs/FiltersDialog;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog$1;->a:Lcom/yelp/android/ui/dialogs/FiltersDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog$1;->a:Lcom/yelp/android/ui/dialogs/FiltersDialog;

    invoke-virtual {v0}, Lcom/yelp/android/ui/dialogs/FiltersDialog;->dismiss()V

    .line 238
    return-void
.end method
