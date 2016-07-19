.class public Lcom/yelp/android/ui/activities/search/vertical/DidYouMeanAddressDialogFragment;
.super Lcom/yelp/android/ui/dialogs/YelpBaseDialogFragment;
.source "DidYouMeanAddressDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/search/vertical/DidYouMeanAddressDialogFragment$a;
    }
.end annotation


# instance fields
.field private a:Lcom/yelp/android/ui/activities/search/vertical/DidYouMeanAddressDialogFragment$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/yelp/android/ui/dialogs/YelpBaseDialogFragment;-><init>()V

    .line 74
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/search/vertical/DidYouMeanAddressDialogFragment;)Lcom/yelp/android/ui/activities/search/vertical/DidYouMeanAddressDialogFragment$a;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/DidYouMeanAddressDialogFragment;->a:Lcom/yelp/android/ui/activities/search/vertical/DidYouMeanAddressDialogFragment$a;

    return-object v0
.end method

.method public static a(Ljava/util/ArrayList;)Lcom/yelp/android/ui/activities/search/vertical/DidYouMeanAddressDialogFragment;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/PlatformDisambiguatedAddress;",
            ">;)",
            "Lcom/yelp/android/ui/activities/search/vertical/DidYouMeanAddressDialogFragment;"
        }
    .end annotation

    .prologue
    .line 34
    new-instance v0, Lcom/yelp/android/ui/activities/search/vertical/DidYouMeanAddressDialogFragment;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/search/vertical/DidYouMeanAddressDialogFragment;-><init>()V

    .line 35
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 36
    const-string/jumbo v2, "addresses"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 37
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/search/vertical/DidYouMeanAddressDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 38
    return-object v0
.end method


# virtual methods
.method public a(Lcom/yelp/android/ui/activities/search/vertical/DidYouMeanAddressDialogFragment$a;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/vertical/DidYouMeanAddressDialogFragment;->a:Lcom/yelp/android/ui/activities/search/vertical/DidYouMeanAddressDialogFragment$a;

    .line 72
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/vertical/DidYouMeanAddressDialogFragment;->e()Landroid/support/v7/app/d$a;

    move-result-object v0

    .line 45
    new-instance v1, Lcom/yelp/android/ui/activities/search/vertical/a;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/vertical/DidYouMeanAddressDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/yelp/android/ui/activities/search/vertical/a;-><init>(Landroid/content/Context;)V

    .line 46
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/vertical/DidYouMeanAddressDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "addresses"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 48
    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/activities/search/vertical/a;->a(Ljava/util/List;)V

    .line 50
    const v3, 0x7f070251

    invoke-virtual {v0, v3}, Landroid/support/v7/app/d$a;->a(I)Landroid/support/v7/app/d$a;

    move-result-object v0

    new-instance v3, Lcom/yelp/android/ui/activities/search/vertical/DidYouMeanAddressDialogFragment$1;

    invoke-direct {v3, p0, v2}, Lcom/yelp/android/ui/activities/search/vertical/DidYouMeanAddressDialogFragment$1;-><init>(Lcom/yelp/android/ui/activities/search/vertical/DidYouMeanAddressDialogFragment;Ljava/util/List;)V

    invoke-virtual {v0, v1, v3}, Landroid/support/v7/app/d$a;->a(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/d$a;

    move-result-object v0

    const v1, 0x7f0706cd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/d$a;->b(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/d$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/d$a;->b()Landroid/support/v7/app/d;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Landroid/support/v7/app/d;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x7f0205bc

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 67
    return-object v0
.end method
