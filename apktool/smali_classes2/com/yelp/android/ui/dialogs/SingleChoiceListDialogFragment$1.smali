.class Lcom/yelp/android/ui/dialogs/SingleChoiceListDialogFragment$1;
.super Ljava/lang/Object;
.source "SingleChoiceListDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/dialogs/SingleChoiceListDialogFragment;->a(Landroid/os/Bundle;Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/dialogs/SingleChoiceListDialogFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/dialogs/SingleChoiceListDialogFragment;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/SingleChoiceListDialogFragment$1;->a:Lcom/yelp/android/ui/dialogs/SingleChoiceListDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/SingleChoiceListDialogFragment$1;->a:Lcom/yelp/android/ui/dialogs/SingleChoiceListDialogFragment;

    invoke-static {v0, p2}, Lcom/yelp/android/ui/dialogs/SingleChoiceListDialogFragment;->a(Lcom/yelp/android/ui/dialogs/SingleChoiceListDialogFragment;I)I

    .line 57
    return-void
.end method
