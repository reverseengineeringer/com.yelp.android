.class public Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper$DeleteConversationDialog;
.super Lcom/yelp/android/ui/dialogs/UserFeedbackDialog;
.source "MessagingActionsHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/yelp/android/ui/dialogs/UserFeedbackDialog;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper$DeleteConversationDialog;)Lcom/yelp/android/ui/dialogs/r;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper$DeleteConversationDialog;->a:Lcom/yelp/android/ui/dialogs/r;

    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 165
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper$DeleteConversationDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0701f8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0700be

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0701f6

    new-instance v2, Lcom/yelp/android/ui/activities/messaging/af;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/messaging/af;-><init>(Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper$DeleteConversationDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070219

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
