.class Lcom/yelp/android/ui/dialogs/bh;
.super Ljava/lang/Object;
.source "SingleChoiceListDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/dialogs/SingleChoiceListDialogFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/dialogs/SingleChoiceListDialogFragment;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/bh;->a:Lcom/yelp/android/ui/dialogs/SingleChoiceListDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 61
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 62
    return-void
.end method
