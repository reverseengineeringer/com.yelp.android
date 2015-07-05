.class Lcom/yelp/android/ui/dialogs/p;
.super Ljava/lang/Object;
.source "CompleteRsvpDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/dialogs/CompleteRsvpDialog;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/dialogs/CompleteRsvpDialog;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/p;->a:Lcom/yelp/android/ui/dialogs/CompleteRsvpDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 72
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/p;->a:Lcom/yelp/android/ui/dialogs/CompleteRsvpDialog;

    invoke-virtual {v0}, Lcom/yelp/android/ui/dialogs/CompleteRsvpDialog;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/events/EventFragment;

    .line 73
    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/p;->a:Lcom/yelp/android/ui/dialogs/CompleteRsvpDialog;

    invoke-static {v1}, Lcom/yelp/android/ui/dialogs/CompleteRsvpDialog;->a(Lcom/yelp/android/ui/dialogs/CompleteRsvpDialog;)Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/p;->a:Lcom/yelp/android/ui/dialogs/CompleteRsvpDialog;

    invoke-static {v1}, Lcom/yelp/android/ui/dialogs/CompleteRsvpDialog;->a(Lcom/yelp/android/ui/dialogs/CompleteRsvpDialog;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 75
    :goto_0
    iget-object v2, p0, Lcom/yelp/android/ui/dialogs/p;->a:Lcom/yelp/android/ui/dialogs/CompleteRsvpDialog;

    invoke-static {v2}, Lcom/yelp/android/ui/dialogs/CompleteRsvpDialog;->b(Lcom/yelp/android/ui/dialogs/CompleteRsvpDialog;)Z

    move-result v2

    iget-object v3, p0, Lcom/yelp/android/ui/dialogs/p;->a:Lcom/yelp/android/ui/dialogs/CompleteRsvpDialog;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/yelp/android/ui/dialogs/CompleteRsvpDialog;->a(Lcom/yelp/android/ui/dialogs/CompleteRsvpDialog;Z)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v2, v1, v3}, Lcom/yelp/android/ui/activities/events/EventFragment;->a(ZLjava/lang/String;Ljava/util/ArrayList;)V

    .line 77
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/p;->a:Lcom/yelp/android/ui/dialogs/CompleteRsvpDialog;

    invoke-virtual {v0}, Lcom/yelp/android/ui/dialogs/CompleteRsvpDialog;->dismiss()V

    .line 78
    return-void

    .line 73
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
