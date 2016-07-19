.class Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment$3;
.super Ljava/lang/Object;
.source "PlatformSearchDialogFragment.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment;)V
    .locals 0

    .prologue
    .line 238
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment$3;->a:Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/serializable/PlatformFilter;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 241
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment$3;->a:Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment;->b(Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment;)Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment$3;->a:Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "search_term_map"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/PlatformRSSTermMap;

    .line 247
    invoke-virtual {p1}, Lcom/yelp/android/serializable/PlatformFilter;->a()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "delivery"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 251
    :goto_0
    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment$3;->a:Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment;->b(Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment;)Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment$a;

    move-result-object v1

    invoke-virtual {p1}, Lcom/yelp/android/serializable/PlatformFilter;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yelp/android/serializable/PlatformRSSTermMap;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, p1, v0, p2}, Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment$a;->a(Lcom/yelp/android/serializable/PlatformFilter;Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment$3;->a:Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment;->dismiss()V

    .line 257
    return-void

    .line 247
    :cond_1
    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment$3;->a:Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment;

    invoke-virtual {v1}, Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "location_term"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method
