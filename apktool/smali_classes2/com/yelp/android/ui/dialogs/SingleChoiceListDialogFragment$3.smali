.class Lcom/yelp/android/ui/dialogs/SingleChoiceListDialogFragment$3;
.super Ljava/lang/Object;
.source "SingleChoiceListDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/dialogs/SingleChoiceListDialogFragment;->onStart()V
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
    .line 87
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/SingleChoiceListDialogFragment$3;->a:Lcom/yelp/android/ui/dialogs/SingleChoiceListDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 90
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/SingleChoiceListDialogFragment$3;->a:Lcom/yelp/android/ui/dialogs/SingleChoiceListDialogFragment;

    iget-object v0, v0, Lcom/yelp/android/ui/dialogs/SingleChoiceListDialogFragment;->a:Lcom/yelp/android/ui/dialogs/ListDialogFragment$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/SingleChoiceListDialogFragment$3;->a:Lcom/yelp/android/ui/dialogs/SingleChoiceListDialogFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/dialogs/SingleChoiceListDialogFragment;->a(Lcom/yelp/android/ui/dialogs/SingleChoiceListDialogFragment;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 91
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/SingleChoiceListDialogFragment$3;->a:Lcom/yelp/android/ui/dialogs/SingleChoiceListDialogFragment;

    iget-object v0, v0, Lcom/yelp/android/ui/dialogs/SingleChoiceListDialogFragment;->a:Lcom/yelp/android/ui/dialogs/ListDialogFragment$a;

    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/SingleChoiceListDialogFragment$3;->a:Lcom/yelp/android/ui/dialogs/SingleChoiceListDialogFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/dialogs/SingleChoiceListDialogFragment;->b(Lcom/yelp/android/ui/dialogs/SingleChoiceListDialogFragment;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/dialogs/SingleChoiceListDialogFragment$3;->a:Lcom/yelp/android/ui/dialogs/SingleChoiceListDialogFragment;

    invoke-static {v2}, Lcom/yelp/android/ui/dialogs/SingleChoiceListDialogFragment;->a(Lcom/yelp/android/ui/dialogs/SingleChoiceListDialogFragment;)I

    move-result v2

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/yelp/android/ui/dialogs/SingleChoiceListDialogFragment$3;->a:Lcom/yelp/android/ui/dialogs/SingleChoiceListDialogFragment;

    invoke-static {v2}, Lcom/yelp/android/ui/dialogs/SingleChoiceListDialogFragment;->c(Lcom/yelp/android/ui/dialogs/SingleChoiceListDialogFragment;)[Landroid/os/Parcelable;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/dialogs/SingleChoiceListDialogFragment$3;->a:Lcom/yelp/android/ui/dialogs/SingleChoiceListDialogFragment;

    invoke-static {v3}, Lcom/yelp/android/ui/dialogs/SingleChoiceListDialogFragment;->a(Lcom/yelp/android/ui/dialogs/SingleChoiceListDialogFragment;)I

    move-result v3

    aget-object v2, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/yelp/android/ui/dialogs/ListDialogFragment$a;->a(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 93
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/SingleChoiceListDialogFragment$3;->a:Lcom/yelp/android/ui/dialogs/SingleChoiceListDialogFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/dialogs/SingleChoiceListDialogFragment;->dismiss()V

    .line 98
    :goto_0
    return-void

    .line 95
    :cond_0
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/SingleChoiceListDialogFragment$3;->a:Lcom/yelp/android/ui/dialogs/SingleChoiceListDialogFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/dialogs/SingleChoiceListDialogFragment;->d(Lcom/yelp/android/ui/dialogs/SingleChoiceListDialogFragment;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
