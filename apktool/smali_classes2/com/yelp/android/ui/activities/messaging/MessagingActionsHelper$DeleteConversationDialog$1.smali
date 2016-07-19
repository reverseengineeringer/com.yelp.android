.class Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper$DeleteConversationDialog$1;
.super Ljava/lang/Object;
.source "MessagingActionsHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper$DeleteConversationDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper$DeleteConversationDialog;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper$DeleteConversationDialog;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper$DeleteConversationDialog$1;->a:Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper$DeleteConversationDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper$DeleteConversationDialog$1;->a:Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper$DeleteConversationDialog;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper$DeleteConversationDialog;->a(Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper$DeleteConversationDialog;)Lcom/yelp/android/ui/dialogs/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/dialogs/b;->a(Ljava/lang/String;)V

    .line 191
    return-void
.end method
