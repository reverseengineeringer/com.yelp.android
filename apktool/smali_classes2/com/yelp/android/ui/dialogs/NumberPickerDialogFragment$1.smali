.class Lcom/yelp/android/ui/dialogs/NumberPickerDialogFragment$1;
.super Ljava/lang/Object;
.source "NumberPickerDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/dialogs/NumberPickerDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/NumberPicker;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/yelp/android/ui/dialogs/NumberPickerDialogFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/dialogs/NumberPickerDialogFragment;Landroid/widget/NumberPicker;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/NumberPickerDialogFragment$1;->c:Lcom/yelp/android/ui/dialogs/NumberPickerDialogFragment;

    iput-object p2, p0, Lcom/yelp/android/ui/dialogs/NumberPickerDialogFragment$1;->a:Landroid/widget/NumberPicker;

    iput-object p3, p0, Lcom/yelp/android/ui/dialogs/NumberPickerDialogFragment$1;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 98
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/NumberPickerDialogFragment$1;->c:Lcom/yelp/android/ui/dialogs/NumberPickerDialogFragment;

    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/NumberPickerDialogFragment$1;->a:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/dialogs/NumberPickerDialogFragment;->a(Lcom/yelp/android/ui/dialogs/NumberPickerDialogFragment;I)I

    .line 99
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/NumberPickerDialogFragment$1;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/NumberPickerDialogFragment$1;->c:Lcom/yelp/android/ui/dialogs/NumberPickerDialogFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/dialogs/NumberPickerDialogFragment;->a(Lcom/yelp/android/ui/dialogs/NumberPickerDialogFragment;)I

    move-result v1

    iget-object v2, p0, Lcom/yelp/android/ui/dialogs/NumberPickerDialogFragment$1;->c:Lcom/yelp/android/ui/dialogs/NumberPickerDialogFragment;

    invoke-static {v2}, Lcom/yelp/android/ui/dialogs/NumberPickerDialogFragment;->b(Lcom/yelp/android/ui/dialogs/NumberPickerDialogFragment;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 100
    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/NumberPickerDialogFragment$1;->c:Lcom/yelp/android/ui/dialogs/NumberPickerDialogFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/dialogs/NumberPickerDialogFragment;->c(Lcom/yelp/android/ui/dialogs/NumberPickerDialogFragment;)Lcom/yelp/android/ui/dialogs/NumberPickerDialogFragment$NumberPickerChangedListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/NumberPickerDialogFragment$1;->c:Lcom/yelp/android/ui/dialogs/NumberPickerDialogFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/dialogs/NumberPickerDialogFragment;->c(Lcom/yelp/android/ui/dialogs/NumberPickerDialogFragment;)Lcom/yelp/android/ui/dialogs/NumberPickerDialogFragment$NumberPickerChangedListener;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/dialogs/NumberPickerDialogFragment$1;->c:Lcom/yelp/android/ui/dialogs/NumberPickerDialogFragment;

    invoke-static {v2}, Lcom/yelp/android/ui/dialogs/NumberPickerDialogFragment;->a(Lcom/yelp/android/ui/dialogs/NumberPickerDialogFragment;)I

    move-result v2

    invoke-interface {v1, v0, v2}, Lcom/yelp/android/ui/dialogs/NumberPickerDialogFragment$NumberPickerChangedListener;->onNumberPickerChanged(Ljava/lang/String;I)V

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/NumberPickerDialogFragment$1;->c:Lcom/yelp/android/ui/dialogs/NumberPickerDialogFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/dialogs/NumberPickerDialogFragment;->dismiss()V

    .line 105
    return-void
.end method
