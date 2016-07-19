.class Lcom/yelp/android/ui/dialogs/WhatsNewDialogFragment$1;
.super Ljava/lang/Object;
.source "WhatsNewDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/dialogs/WhatsNewDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/dialogs/WhatsNewDialogFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/dialogs/WhatsNewDialogFragment;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/WhatsNewDialogFragment$1;->a:Lcom/yelp/android/ui/dialogs/WhatsNewDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/WhatsNewDialogFragment$1;->a:Lcom/yelp/android/ui/dialogs/WhatsNewDialogFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/dialogs/WhatsNewDialogFragment;->dismiss()V

    .line 91
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->WhatsNewPromptAcknowledge:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 92
    return-void
.end method
