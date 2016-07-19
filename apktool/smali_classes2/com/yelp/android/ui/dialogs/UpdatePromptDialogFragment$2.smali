.class Lcom/yelp/android/ui/dialogs/UpdatePromptDialogFragment$2;
.super Ljava/lang/Object;
.source "UpdatePromptDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/dialogs/UpdatePromptDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/dialogs/UpdatePromptDialogFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/dialogs/UpdatePromptDialogFragment;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/UpdatePromptDialogFragment$2;->a:Lcom/yelp/android/ui/dialogs/UpdatePromptDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/UpdatePromptDialogFragment$2;->a:Lcom/yelp/android/ui/dialogs/UpdatePromptDialogFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/dialogs/UpdatePromptDialogFragment;->dismiss()V

    .line 89
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->UpdatePromptRemindLater:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 90
    return-void
.end method
