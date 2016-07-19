.class Lcom/yelp/android/ui/dialogs/AlertDialogFragment$1;
.super Ljava/lang/Object;
.source "AlertDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/dialogs/AlertDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/dialogs/AlertDialogFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/dialogs/AlertDialogFragment;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/AlertDialogFragment$1;->a:Lcom/yelp/android/ui/dialogs/AlertDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/AlertDialogFragment$1;->a:Lcom/yelp/android/ui/dialogs/AlertDialogFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/dialogs/AlertDialogFragment;->a(Lcom/yelp/android/ui/dialogs/AlertDialogFragment;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/AlertDialogFragment$1;->a:Lcom/yelp/android/ui/dialogs/AlertDialogFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/dialogs/AlertDialogFragment;->a(Lcom/yelp/android/ui/dialogs/AlertDialogFragment;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/AlertDialogFragment$1;->a:Lcom/yelp/android/ui/dialogs/AlertDialogFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/dialogs/AlertDialogFragment;->dismiss()V

    .line 78
    return-void
.end method
