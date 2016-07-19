.class Lcom/yelp/android/ui/activities/search/vertical/DidYouMeanAddressDialogFragment$1;
.super Ljava/lang/Object;
.source "DidYouMeanAddressDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/search/vertical/DidYouMeanAddressDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/yelp/android/ui/activities/search/vertical/DidYouMeanAddressDialogFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/search/vertical/DidYouMeanAddressDialogFragment;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/vertical/DidYouMeanAddressDialogFragment$1;->b:Lcom/yelp/android/ui/activities/search/vertical/DidYouMeanAddressDialogFragment;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/search/vertical/DidYouMeanAddressDialogFragment$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/DidYouMeanAddressDialogFragment$1;->b:Lcom/yelp/android/ui/activities/search/vertical/DidYouMeanAddressDialogFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/vertical/DidYouMeanAddressDialogFragment;->a(Lcom/yelp/android/ui/activities/search/vertical/DidYouMeanAddressDialogFragment;)Lcom/yelp/android/ui/activities/search/vertical/DidYouMeanAddressDialogFragment$a;

    move-result-object v1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/DidYouMeanAddressDialogFragment$1;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/PlatformDisambiguatedAddress;

    invoke-interface {v1, v0}, Lcom/yelp/android/ui/activities/search/vertical/DidYouMeanAddressDialogFragment$a;->a(Lcom/yelp/android/serializable/PlatformDisambiguatedAddress;)V

    .line 59
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/DidYouMeanAddressDialogFragment$1;->b:Lcom/yelp/android/ui/activities/search/vertical/DidYouMeanAddressDialogFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/search/vertical/DidYouMeanAddressDialogFragment;->dismiss()V

    .line 60
    return-void
.end method
