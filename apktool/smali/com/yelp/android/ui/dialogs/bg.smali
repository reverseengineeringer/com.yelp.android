.class Lcom/yelp/android/ui/dialogs/bg;
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
    .line 50
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/bg;->a:Lcom/yelp/android/ui/dialogs/SingleChoiceListDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/bg;->a:Lcom/yelp/android/ui/dialogs/SingleChoiceListDialogFragment;

    invoke-static {v0, p2}, Lcom/yelp/android/ui/dialogs/SingleChoiceListDialogFragment;->a(Lcom/yelp/android/ui/dialogs/SingleChoiceListDialogFragment;I)I

    .line 54
    return-void
.end method
