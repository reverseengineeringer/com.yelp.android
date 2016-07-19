.class Lcom/yelp/android/ui/activities/CheckInDialog$7;
.super Ljava/lang/Object;
.source "CheckInDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/CheckInDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/CheckInDialog;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/CheckInDialog;)V
    .locals 0

    .prologue
    .line 331
    iput-object p1, p0, Lcom/yelp/android/ui/activities/CheckInDialog$7;->a:Lcom/yelp/android/ui/activities/CheckInDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 334
    iget-object v0, p0, Lcom/yelp/android/ui/activities/CheckInDialog$7;->a:Lcom/yelp/android/ui/activities/CheckInDialog;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/CheckInDialog;->f(Lcom/yelp/android/ui/activities/CheckInDialog;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 335
    iget-object v0, p0, Lcom/yelp/android/ui/activities/CheckInDialog$7;->a:Lcom/yelp/android/ui/activities/CheckInDialog;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/CheckInDialog;->f(Lcom/yelp/android/ui/activities/CheckInDialog;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/CheckInDialog$7;->a:Lcom/yelp/android/ui/activities/CheckInDialog;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/CheckInDialog;->g(Lcom/yelp/android/ui/activities/CheckInDialog;)Landroid/widget/CompoundButton;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/CheckInDialog$7;->a:Lcom/yelp/android/ui/activities/CheckInDialog;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/CheckInDialog;->h(Lcom/yelp/android/ui/activities/CheckInDialog;)Landroid/widget/CompoundButton;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/CheckInDialog$7;->a:Lcom/yelp/android/ui/activities/CheckInDialog;

    invoke-static {v3}, Lcom/yelp/android/ui/activities/CheckInDialog;->a(Lcom/yelp/android/ui/activities/CheckInDialog;)Landroid/widget/CompoundButton;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/yelp/android/util/p;->a(Landroid/widget/Checkable;Landroid/widget/Checkable;Landroid/widget/Checkable;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 339
    iget-object v0, p0, Lcom/yelp/android/ui/activities/CheckInDialog$7;->a:Lcom/yelp/android/ui/activities/CheckInDialog;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/CheckInDialog;->a(Lcom/yelp/android/ui/activities/CheckInDialog;)Landroid/widget/CompoundButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/CheckInDialog$7;->a:Lcom/yelp/android/ui/activities/CheckInDialog;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/CheckInDialog;->e(Lcom/yelp/android/ui/activities/CheckInDialog;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/CheckInDialog$7;->a:Lcom/yelp/android/ui/activities/CheckInDialog;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/CheckInDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-le v0, v1, :cond_1

    .line 343
    iget-object v0, p0, Lcom/yelp/android/ui/activities/CheckInDialog$7;->a:Lcom/yelp/android/ui/activities/CheckInDialog;

    const v1, 0x7f0701d8

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/CheckInDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/CheckInDialog$7;->a:Lcom/yelp/android/ui/activities/CheckInDialog;

    const v2, 0x7f0701d9

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/activities/CheckInDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/dialogs/AlertDialogFragment;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/ui/dialogs/AlertDialogFragment;

    move-result-object v0

    .line 347
    iget-object v1, p0, Lcom/yelp/android/ui/activities/CheckInDialog$7;->a:Lcom/yelp/android/ui/activities/CheckInDialog;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/CheckInDialog;->getChildFragmentManager()Landroid/support/v4/app/l;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/dialogs/AlertDialogFragment;->show(Landroid/support/v4/app/l;Ljava/lang/String;)V

    .line 354
    :cond_0
    :goto_0
    return-void

    .line 348
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/CheckInDialog$7;->a:Lcom/yelp/android/ui/activities/CheckInDialog;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/CheckInDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/webrequests/co;->p()Lcom/yelp/android/serializable/User;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/CheckInDialog$7;->a:Lcom/yelp/android/ui/activities/CheckInDialog;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/CheckInDialog;->f(Lcom/yelp/android/ui/activities/CheckInDialog;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yelp/android/util/p;->a(Landroid/app/Activity;Lcom/yelp/android/serializable/User;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/yelp/android/ui/activities/CheckInDialog$7;->a:Lcom/yelp/android/ui/activities/CheckInDialog;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/CheckInDialog;->c()V

    goto :goto_0
.end method
