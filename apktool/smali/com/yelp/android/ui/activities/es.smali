.class Lcom/yelp/android/ui/activities/es;
.super Ljava/lang/Object;
.source "CheckInDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/CheckInDialog;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/CheckInDialog;)V
    .locals 0

    .prologue
    .line 320
    iput-object p1, p0, Lcom/yelp/android/ui/activities/es;->a:Lcom/yelp/android/ui/activities/CheckInDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 323
    iget-object v0, p0, Lcom/yelp/android/ui/activities/es;->a:Lcom/yelp/android/ui/activities/CheckInDialog;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/CheckInDialog;->d(Lcom/yelp/android/ui/activities/CheckInDialog;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 324
    iget-object v0, p0, Lcom/yelp/android/ui/activities/es;->a:Lcom/yelp/android/ui/activities/CheckInDialog;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/CheckInDialog;->d(Lcom/yelp/android/ui/activities/CheckInDialog;)Ljava/util/LinkedList;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/es;->a:Lcom/yelp/android/ui/activities/CheckInDialog;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/CheckInDialog;->e(Lcom/yelp/android/ui/activities/CheckInDialog;)Landroid/widget/CompoundButton;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/es;->a:Lcom/yelp/android/ui/activities/CheckInDialog;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/CheckInDialog;->f(Lcom/yelp/android/ui/activities/CheckInDialog;)Landroid/widget/CompoundButton;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/es;->a:Lcom/yelp/android/ui/activities/CheckInDialog;

    invoke-static {v3}, Lcom/yelp/android/ui/activities/CheckInDialog;->a(Lcom/yelp/android/ui/activities/CheckInDialog;)Landroid/widget/CompoundButton;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/yelp/android/util/z;->a(Landroid/widget/Checkable;Landroid/widget/Checkable;Landroid/widget/Checkable;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 327
    iget-object v0, p0, Lcom/yelp/android/ui/activities/es;->a:Lcom/yelp/android/ui/activities/CheckInDialog;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/CheckInDialog;->a(Lcom/yelp/android/ui/activities/CheckInDialog;)Landroid/widget/CompoundButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/es;->a:Lcom/yelp/android/ui/activities/CheckInDialog;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/CheckInDialog;->c(Lcom/yelp/android/ui/activities/CheckInDialog;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/es;->a:Lcom/yelp/android/ui/activities/CheckInDialog;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/CheckInDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-le v0, v1, :cond_1

    .line 329
    iget-object v0, p0, Lcom/yelp/android/ui/activities/es;->a:Lcom/yelp/android/ui/activities/CheckInDialog;

    const v1, 0x7f070171

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/CheckInDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/es;->a:Lcom/yelp/android/ui/activities/CheckInDialog;

    const v2, 0x7f070172

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/activities/CheckInDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/dialogs/AlertDialogFragment;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/ui/dialogs/AlertDialogFragment;

    move-result-object v0

    .line 332
    iget-object v1, p0, Lcom/yelp/android/ui/activities/es;->a:Lcom/yelp/android/ui/activities/CheckInDialog;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/CheckInDialog;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/dialogs/AlertDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 337
    :cond_0
    :goto_0
    return-void

    .line 333
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/es;->a:Lcom/yelp/android/ui/activities/CheckInDialog;

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/webrequests/dc;->h()Lcom/yelp/android/appdata/RemoteConfigPreferences;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/es;->a:Lcom/yelp/android/ui/activities/CheckInDialog;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/CheckInDialog;->d(Lcom/yelp/android/ui/activities/CheckInDialog;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yelp/android/ui/activities/CheckInDialog;->a(Lcom/yelp/android/ui/activities/CheckInDialog;Lcom/yelp/android/appdata/RemoteConfigPreferences;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/yelp/android/ui/activities/es;->a:Lcom/yelp/android/ui/activities/CheckInDialog;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/CheckInDialog;->b()V

    goto :goto_0
.end method
