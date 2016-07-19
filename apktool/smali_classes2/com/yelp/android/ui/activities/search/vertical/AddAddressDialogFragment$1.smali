.class Lcom/yelp/android/ui/activities/search/vertical/AddAddressDialogFragment$1;
.super Ljava/lang/Object;
.source "AddAddressDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/search/vertical/AddAddressDialogFragment;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/search/vertical/AddAddressDialogFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/search/vertical/AddAddressDialogFragment;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/vertical/AddAddressDialogFragment$1;->a:Lcom/yelp/android/ui/activities/search/vertical/AddAddressDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/AddAddressDialogFragment$1;->a:Lcom/yelp/android/ui/activities/search/vertical/AddAddressDialogFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/vertical/AddAddressDialogFragment;->b(Lcom/yelp/android/ui/activities/search/vertical/AddAddressDialogFragment;)Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/vertical/AddAddressDialogFragment$1;->a:Lcom/yelp/android/ui/activities/search/vertical/AddAddressDialogFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/search/vertical/AddAddressDialogFragment;->a(Lcom/yelp/android/ui/activities/search/vertical/AddAddressDialogFragment;)Lcom/yelp/android/ui/activities/search/vertical/UserEnterAddressView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/search/vertical/UserEnterAddressView;->getAddress()Lcom/yelp/android/serializable/PlatformDeliveryAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;->b(Lcom/yelp/android/serializable/PlatformDeliveryAddress;)V
    :try_end_0
    .catch Lcom/yelp/android/ui/activities/search/vertical/UserEnterAddressView$ValidationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v0

    .line 101
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/vertical/AddAddressDialogFragment$1;->a:Lcom/yelp/android/ui/activities/search/vertical/AddAddressDialogFragment;

    const v2, 0x7f070297

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/activities/search/vertical/AddAddressDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/search/vertical/UserEnterAddressView$ValidationException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yelp/android/ui/dialogs/AlertDialogFragment;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/ui/dialogs/AlertDialogFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/vertical/AddAddressDialogFragment$1;->a:Lcom/yelp/android/ui/activities/search/vertical/AddAddressDialogFragment;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/search/vertical/AddAddressDialogFragment;->getFragmentManager()Landroid/support/v4/app/l;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/dialogs/AlertDialogFragment;->show(Landroid/support/v4/app/l;Ljava/lang/String;)V

    goto :goto_0
.end method
