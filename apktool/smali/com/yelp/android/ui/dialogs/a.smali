.class Lcom/yelp/android/ui/dialogs/a;
.super Ljava/lang/Object;
.source "AlertDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/dialogs/AlertDialogFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/dialogs/AlertDialogFragment;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/a;->a:Lcom/yelp/android/ui/dialogs/AlertDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/a;->a:Lcom/yelp/android/ui/dialogs/AlertDialogFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/dialogs/AlertDialogFragment;->a(Lcom/yelp/android/ui/dialogs/AlertDialogFragment;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/a;->a:Lcom/yelp/android/ui/dialogs/AlertDialogFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/dialogs/AlertDialogFragment;->a(Lcom/yelp/android/ui/dialogs/AlertDialogFragment;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/a;->a:Lcom/yelp/android/ui/dialogs/AlertDialogFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/dialogs/AlertDialogFragment;->dismiss()V

    .line 74
    return-void
.end method
