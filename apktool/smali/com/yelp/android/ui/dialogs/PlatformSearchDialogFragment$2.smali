.class Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment$2;
.super Ljava/lang/Object;
.source "PlatformSearchDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment;->onStart()V
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
    .line 181
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment$2;->a:Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment$2;->a:Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment;->a(Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment;)Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;->a()V

    .line 187
    return-void
.end method
